using Godot;
using System;

public partial class Restart : Button
{
	// Called when the node enters the scene tree for the first time.
    
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

