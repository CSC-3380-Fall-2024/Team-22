using Godot;
using System;

public partial class TitleScreen : Control
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	public void _on_s_e_pressed(){
		GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
	}
	
	public void _on_s_c_pressed(){
		GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
	}
	public void _on_exit_pressed(){
		GetTree().Quit();
	}
}
