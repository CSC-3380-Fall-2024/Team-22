using Godot;
using System;

public partial class EnemyBullet : RigidBody2D
{
	[Signal]
	public delegate void damagingEventHandler();
	public override void _Ready()
	{
		Timer timer = (Timer)GetNode("Timer");
		timer.Timeout += () => QueueFree();
	}
}
