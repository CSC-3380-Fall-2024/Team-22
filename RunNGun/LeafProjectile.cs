using Godot;
using System;

public partial class LeafProjectile : RigidBody2D
{
	[Signal]
	public delegate void leafBulletEventHandler();
	public override void _Ready()
	{
		Timer timer = (Timer)GetNode("Timer");
		timer.Timeout += () => QueueFree();
	}
}
