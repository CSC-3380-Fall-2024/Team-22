using Godot;
using System;

public partial class NextLevelPortal1 : Area2D
{
    // Name or path of the next level scene.
    [Export] public string NextLevelScenePath = "res://Levels/Tutorial/Main.tscn";

    public override void _Ready()
    {
        // Connect the signal for detecting body entry into the area using the new syntax.
        BodyEntered += OnBodyEntered;
    }

    private void OnBodyEntered(Node2D body)
    {
        // Check if the body that entered is the player (adjust as per your player's node name or script)
        if (body is Character)  // Replace 'Player' with your player's script class name if different
        {
            // Load the next level scene.
            var nextLevel = (PackedScene)ResourceLoader.Load(NextLevelScenePath);
            GetTree().ChangeSceneToFile(NextLevelScenePath);
        }
    }
}
