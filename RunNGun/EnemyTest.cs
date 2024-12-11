using Godot;
using System;

public partial class EnemyTest : CharacterBody2D
{
	// Marks node as being damaging to player
	[Signal]
	public delegate void damagingEventHandler();
	private const float SPEED = 100f;
	private int health = 20;
	private int moveDir = -1;
	private KinematicCollision2D hit;
	private Vector2 velocity;


	// Used for detecting collisions with environment
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
		
    }

    public override void _PhysicsProcess(double delta)
    {	

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
}
