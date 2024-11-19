using Godot;
using System;

public partial class Quit : Button
{
	public override void _Ready()
    {
        // Connect the button's pressed signal to the QuitGame function
        this.Pressed += QuitGame;
    }

    private void QuitGame()
    {
        GetTree().Quit();
    }
}
