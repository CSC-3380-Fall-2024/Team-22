using Godot;
using System;

public partial class DefeatBossTc : Control
{
	public void onButtonPressed(){
		GetTree().ChangeSceneToFile("res://End_Title_Screen.tscn");
	}
}
