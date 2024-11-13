using Godot;
using System;

public partial class Bullet : RigidBody2D
{
	[Signal]
	public delegate void projectileEventHandler();
	public override void _Ready()
	{
		Timer timer = (Timer)GetNode("Timer");
		timer.Timeout += () => QueueFree();


	}
}
