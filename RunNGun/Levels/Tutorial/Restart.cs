using Godot;
using System;

public partial class Restart : Button
{
	public override void _Ready()
    {
        // Connect the button's pressed signal to the QuitGame function
        this.Pressed += RestartGame;
    }
 
    private void RestartGame()
    {
        GetTree().Paused = false;
        GetTree().ReloadCurrentScene();   
    }
}

