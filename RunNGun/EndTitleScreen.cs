using Godot;
using System;


public partial class EndTitleScreen : Control
{
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	public void _on_restart_button_pressed(){
		GetTree().ChangeSceneToFile("res://title_screen.tscn");
	}
	public void _on_exit_pressed(){
		GetTree().Quit();
	}
}
