using Godot;
using System;

public partial class TitleScreen : Control
{
	// When the button 'start exploring' is pressed
	public void onSEPressed(){
		GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
	}
	
	// When the button 'start conquering' is pressed
	public void onSCPressed(){
		GetTree().ChangeSceneToFile("res://Levels/Tutorial/Test Level.tscn");
	}
	public void onExitPressed(){
		GetTree().Quit();
	}
}
