using Godot;
using System;

public partial class Bullet : RigidBody2D
{
	public override void _Ready()
	{
		Timer timer = (Timer)GetNode("Timer");
		timer.Timeout += () => QueueFree();
	}
}
