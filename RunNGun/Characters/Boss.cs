using Godot;
using System;

public partial class Boss : CharacterBody2D
{
	// Marks node as being damaging to player
	[Signal]
	public delegate void damagingEventHandler();
	private const float SPEED = 0f;
	private int health = 100;
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
		GetTree().ChangeSceneToFile("res://Levels/Level 1 Forest/Forest1.tscn");	
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

	public Godot.Collections.Dictionary<string, Variant> Save()
	{
		return new Godot.Collections.Dictionary<string, Variant>()
		{
			{ "Filename", SceneFilePath },
			{ "Parent", GetParent().GetPath() },
			{ "PosX", Position.X }, 
			{ "PosY", Position.Y },
			{ "MoveDir", moveDir},
			{ "Health", health},
			{ "FrontCast", frontCast},
		};
	}

	private bool isDead()
	{
		if (health <= 0) return true;
		

		else return false;
	}
}
