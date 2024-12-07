using Godot;
using System;

public partial class Gun : Node2D
{
	[Export] public PackedScene bulletScene;
	[Export] public PackedScene leafScene;
	[Export] public float bulletSpeed = 200f;
	[Export] public float bps = 10f;
	
	// speed of bullet when going right
	public float rightSpeed;

	//speed of bullet when going left
	public float leftSpeed;
	private float fireRate;
	private float bulletDelay = .4f;
	private int direction;
	public override void _Ready()
	{
		direction = 1;
		fireRate = 1/bps;
		rightSpeed = bulletSpeed;
		leftSpeed = bulletSpeed * -1;
	}

	public override void _Process(double delta)
	{
		gunDirection();

		if (Input.IsPhysicalKeyPressed(Key.Z) && bulletDelay > fireRate)
		{
			bps = 6f;
			fireGun(bulletScene);
		}

		else if (Input.IsPhysicalKeyPressed(Key.X) && bulletDelay > fireRate)
		{
			bps = 3f;
			fireGun(leafScene);
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

	private void fireGun(PackedScene bulletType)
	{	
		fireRate = 1/bps;
		RigidBody2D bullet = (RigidBody2D)bulletType.Instantiate();
		bullet.GlobalPosition = GlobalPosition;

		if (direction == -1)
		{
			bulletSpeed = leftSpeed;
		}
		else if (direction == 1)
		{
			bulletSpeed = rightSpeed;
		}

		bullet.LinearVelocity = bullet.Transform.X * bulletSpeed;

		GetTree().Root.AddChild(bullet);

		bulletDelay = 0f;
	}
}
