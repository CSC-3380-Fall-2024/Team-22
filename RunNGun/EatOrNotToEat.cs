using Godot;
using System;

public partial class EatOrNotToEat : Control
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	
	public void _on_forget_pressed(){
		GetTree().ChangeSceneToFile("res://DefeatBossTC.tscn");
	}
	public void _on_eat_pressed(){
		GetTree().ChangeSceneToFile("res://EatAppleTC.tscn");
	}
}
