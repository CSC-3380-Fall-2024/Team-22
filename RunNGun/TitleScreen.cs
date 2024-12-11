using Godot;
using System;

public partial class TitleScreen : Control
{
	public void _on_exploring_pressed(){
		GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
	}
	public void _on_exit_pressed(){
		GetTree().Quit();
	}
}
