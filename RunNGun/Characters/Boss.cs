using Godot;
using System;

public partial class Boss : CharacterBody2D
{
	// Marks node as being damaging to player
	[Signal]
	public delegate void damagingEventHandler();
	private const float SPEED = 0f;
	private int health = 1000;
	private int moveDir = -1;
	private KinematicCollision2D hit;
	private Vector2 velocity;


	// Used for spawning enemies
	private RayCast2D frontCast;

    public override void _Ready()
    {
		frontCast = (RayCast2D)GetNode("Front");
  	}

    public override void _Process(double delta)
    {
		if (isDead()) 
		{
			QueueFree();
			GetTree().ChangeSceneToFile("res://EatOrNotToEat.tscn");
		}
    }

    public override void _PhysicsProcess(double delta)
    {	
		velocity = Velocity;
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

			if (hit.GetCollider().HasSignal("leafBullet"))
			{
				health -= 10;
			}
		}		
    }

	private bool isDead()
	{
		if (health <= 0) return true;

		else return false;
	}
}
