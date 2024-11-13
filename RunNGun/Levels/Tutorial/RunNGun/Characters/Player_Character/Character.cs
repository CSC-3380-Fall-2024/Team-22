using Godot;
using System;

public partial class Character : CharacterBody2D
{
	[Signal]
	public delegate void playerDiedEventHandler();
	public const float Speed = 300.0f;
	public const float JumpVelocity = -400.0f;
	private int health = 20;

    public override void _Process(double delta)
    {
        if(isDead())
		{ 
			EmitSignal(SignalName.playerDied);
			QueueFree();
		}
    }

    public override void _PhysicsProcess(double delta)
	{
		Vector2 velocity = Velocity;
		// Get the input direction and handle the movement/deceleration.
		// As good practice, you should replace UI actions with custom gameplay actions.
		Vector2 direction = Input.GetVector("ui_left", "ui_right", "ui_up", "ui_down");
		KinematicCollision2D hit;

		// Add the gravity.
		if (!IsOnFloor())
		{
			velocity += GetGravity() * (float)delta;
		}

		// Handle Jump.
		if (Input.IsActionJustPressed("ui_accept") && IsOnFloor())
		{
			velocity.Y = JumpVelocity;
		}

		if (direction != Vector2.Zero)
		{
			velocity.X = direction.X * Speed;
		}
		else
		{
			velocity.X = Mathf.MoveToward(Velocity.X, 0, Speed);
		}

		Velocity = velocity;
		MoveAndSlide();

		hit = GetLastSlideCollision();
		if (hit != null)
		{
			if (hit.GetCollider().HasSignal("damaging"))
			{
				health -= 20;
			}
		}
	}
	
	private bool isDead()
	{
		if (health <= 0) return true;

		else return false;
	}
}
