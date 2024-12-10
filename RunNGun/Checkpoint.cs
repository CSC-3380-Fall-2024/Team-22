using Godot;
using System;

public partial class Checkpoint : Node2D
{
	[Export] PackedScene playerScene;
	[Signal]
	public delegate void playerDiedEventHandler();
	[Signal]
	public delegate void savePointEventHandler();
	public CharacterBody2D player;

    public override void _Ready()
    {
        SaveGame();
    }
    public void onPlayerDied()
	{
		GetTree().ReloadCurrentScene();  
	}

    public override void _Process(double delta)
    {
        if (Input.IsPhysicalKeyPressed(Key.B))
		{
			SaveGame();
		}

		if (Input.IsPhysicalKeyPressed(Key.A))
		{
			LoadGame();
		}
	}

	public void SaveGame()
	{
		using FileAccess saveFile = FileAccess.Open("user://savegame.save", FileAccess.ModeFlags.Write);

		Godot.Collections.Array<Node> saveNodes = GetTree().GetNodesInGroup("Persist");
		foreach (Node saveNode in saveNodes)
		{
			// Check the node is an instanced scene so it can be instanced again during load.
			if (string.IsNullOrEmpty(saveNode.SceneFilePath))
			{
				GD.Print($"persistent node '{saveNode.Name}' is not an instanced scene, skipped");
				continue;
			}

			// Check the node has a save function.
			if (!saveNode.HasMethod("Save"))
			{
				GD.Print($"persistent node '{saveNode.Name}' is missing a Save() function, skipped");
				continue;
			}

			// Json provides a static method to serialized JSON string.
			string jsonString = Json.Stringify(saveNode.Call("Save"));

			// Store the save dictionary as a new line in the save file.
			saveFile.StoreLine(jsonString);
		}
	}

	public void LoadGame()
	{
		if (!FileAccess.FileExists("user://savegame.save"))
		{
			return; // No save to load
		}

		Godot.Collections.Array<Node> saveNodes = GetTree().GetNodesInGroup("Persist");
		foreach (Node saveNode in saveNodes)
		{
			saveNode.QueueFree();
		}

		// Load the file line by line and process that dictionary to restore the object
		// it represents.
		using var saveFile = FileAccess.Open("user://savegame.save", FileAccess.ModeFlags.Read);

		while (saveFile.GetPosition() < saveFile.GetLength())
		{
			var jsonString = saveFile.GetLine();

			// Creates the helper class to interact with JSON.
			Json json = new Json();
			Error parseResult = json.Parse(jsonString);
			if (parseResult != Error.Ok)
			{
				GD.Print($"JSON Parse Error: {json.GetErrorMessage()} in {jsonString} at line {json.GetErrorLine()}");
				continue;
			}

			// Get the data from the JSON object.
			Godot.Collections.Dictionary<string, Variant> nodeData = new Godot.Collections.Dictionary<string, Variant>((Godot.Collections.Dictionary)json.Data);

			// Firstly, we need to create the object and add it to the tree and set its position.
			PackedScene newObjectScene = GD.Load<PackedScene>(nodeData["Filename"].ToString());
			Node newObject = newObjectScene.Instantiate<Node>();
			GetNode(nodeData["Parent"].ToString()).AddChild(newObject);
			newObject.Set(Node2D.PropertyName.Position, new Vector2((float)nodeData["PosX"], (float)nodeData["PosY"]));

			// Now we set the remaining variables.
			foreach (var (key, value) in nodeData)
			{
				if (key == "Filename" || key == "Parent" || key == "PosX" || key == "PosY")
				{
					continue;
				}
				newObject.Set(key, value);
			}
		}
	}
}
