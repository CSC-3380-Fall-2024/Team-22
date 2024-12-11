using Godot;
using System;

public partial class Exploring : Button
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
    {
        // Connect the button's pressed signal to the QuitGame function
        this.Pressed += StartGame;
    }

    private void StartGame()
    {
        GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
    }
}
