using Godot;
using System;

public partial class Gun : Node2D
{
	[Export] PackedScene bulletScene;
	[Export] float bulletSpeed = 200f;
	[Export] float bps = 10f;

	float fireRate;
	float bulletDelay = .4f;
	int direction = 1;
	public override void _Ready()
	{
		fireRate = 1/bps;
	}

	public override void _Process(double delta)
	{
		gunDirection();
		
		if (Input.IsPhysicalKeyPressed(Key.Z) && bulletDelay > fireRate)
		{
			RigidBody2D bullet = (RigidBody2D)bulletScene.Instantiate();
			bullet.GlobalPosition = GlobalPosition;

			if (direction == -1)
			{
				bulletSpeed = -200f;
			}
			else if (direction == 1)
			{
				bulletSpeed = 200f;
			}

			bullet.LinearVelocity = bullet.Transform.X * bulletSpeed;

			GetTree().Root.AddChild(bullet);

			bulletDelay = 0f;
		}
		else
		{
			bulletDelay += (float)delta;
		}
	}

	public void gunDirection()
	{
		if(Input.IsPhysicalKeyPressed(Key.Right))
		{
			direction = 1;
		}
		else if (Input.IsPhysicalKeyPressed(Key.Left))
		{
			direction = -1;
		}
	}
}
