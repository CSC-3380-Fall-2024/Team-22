using Godot;
using System;


public partial class EndTitleScreen : Control
{	
	public void onRestartPressed(){
		GetTree().ChangeSceneToFile("res://title_screen.tscn");
	}
	public void onExitPressed(){
		GetTree().Quit();
	}
}
