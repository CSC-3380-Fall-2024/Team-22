using Godot;
using System;

public partial class Enemy : CharacterBody2D
{
	[Signal]
	public delegate void damagingEventHandler();
	const float SPEED = 100f;
	private int health = 20;
	private int moveDir = -1;
	private RayCast2D[] downCasts = new RayCast2D[2];
	private RayCast2D frontCast;

    public override void _Ready()
    {
		downCasts[0] = (RayCast2D)GetNode("DownLeft");
		downCasts[1] = (RayCast2D)GetNode("DownRight");
		frontCast = (RayCast2D)GetNode("Front");
  	}

    public override void _Process(double delta)
    {
		if (isDead()) QueueFree();
		
		if (shouldTurn()) 
		{
			moveDir *= -1;	
		}
		frontCast.TargetPosition = new Vector2(19*moveDir, 0);
    }

    public override void _PhysicsProcess(double delta)
    {	
		Vector2 velocity = Velocity;
		KinematicCollision2D hit;

		if (!IsOnFloor())
		{
			velocity += GetGravity() * (float)delta;
		}

		velocity.X = SPEED*moveDir;
		Velocity = velocity;
		MoveAndSlide();

		hit = GetLastSlideCollision();
		if (hit != null)
		{
			if (hit.GetCollider().HasSignal("projectile"))
			{
				health -= 20;
			}
		}
    }

	private bool shouldTurn()
	{
		if (frontCast.IsColliding()) return true; 

		if (moveDir == -1)
		{
			return (!downCasts[0].IsColliding());
		}

		else if (moveDir == 1)
		{
			return (!downCasts[1].IsColliding());
		}

		return false;
	}

	private bool isDead()
	{
		if (health <= 0) return true;

		else return false;
	}

}
