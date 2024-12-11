using Godot;
using System;

public partial class GunEnemy : CharacterBody2D
{
    [Export] public PackedScene bulletScene;
	[Export] public float bulletSpeed = 200f;
	[Export] public float bps = 1f;
	// Marks node as being damaging to player
	[Signal]
	public delegate void damagingEventHandler();
	private const float SPEED = 100f;
    private float fireRate;
	private float bulletDelay = .4f;
	private int health = 20;
	private int moveDir = -1;
	private KinematicCollision2D hit;
	private Vector2 velocity;


	// Used for detecting collisions with environment
	private RayCast2D[] downCasts = new RayCast2D[2];
	private RayCast2D frontCast;

    public override void _Ready()
    {
        fireRate = 1/bps;
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
		// Flips collision detection direction
		frontCast.TargetPosition = new Vector2(19*moveDir, 0);

        if (bulletDelay > fireRate)
		{
			RigidBody2D bullet = (RigidBody2D)bulletScene.Instantiate();
			bullet.GlobalPosition = GlobalPosition;

			if (moveDir == -1)
			{
				bulletSpeed = -200f;
			}
			else if (moveDir == 1)
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

    public override void _PhysicsProcess(double delta)
    {	
		velocity = Velocity;

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

			if (hit.GetCollider().HasSignal("leafBullet"))
			{
				health -= 10;
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
