using Godot;
using System;

public partial class TitleScreen : Control
{
	public void onExploringpressed(){
		GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
	}
	public void onExitPressed(){
		GetTree().Quit();
	}
}
