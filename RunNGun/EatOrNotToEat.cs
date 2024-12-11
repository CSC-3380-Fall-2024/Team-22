using Godot;
using System;

public partial class EatOrNotToEat : Control
{	
	public void onForgetPressed(){
		GetTree().ChangeSceneToFile("res://DefeatBossTC.tscn");
	}
	public void onEatPressed(){
		GetTree().ChangeSceneToFile("res://EatAppleTC.tscn");
	}
}
