using Godot;
using System;

public partial class Character : CharacterBody2D
{
	[Signal]
	public delegate void playerDiedEventHandler();
	[Signal]
	public delegate void saveGameEventHandler();
	public const float Speed = 300.0f;
	public const float JumpVelocity = -400.0f;
	private Vector2 velocity;
	private Vector2 direction;
	private AnimatedSprite2D _animatedSprite;
 	public override void _Ready()
    {
        // Get reference to AnimatedSprite2D
        _animatedSprite = GetNode<AnimatedSprite2D>("AnimatedSprite2D");
        // Set a default animation
        _animatedSprite.Play("Idle");
		if (direction != Vector2.Zero)
		{
			_animatedSprite.Play("walking");

		}
    }


	// Used to see what object player collides with
	private KinematicCollision2D hit;

	// Current direction player is facing
	private int faceDirection = 1;
	private int health = 20;
	private bool hasJumpedTwice = false;

  public override void _Process(double delta)
  {
    if(isDead())
	  { 
			EmitSignal(SignalName.playerDied);
			QueueFree();
			GetTree().ReloadCurrentScene();
		}
		updateDirection();
	if(Input.IsActionJustPressed("ui_focus_next"))
	{
		if(GetNode<RayCast2D>("RayCastMid").IsColliding())
		{
			Node obj = (Node)GetNode<RayCast2D>("RayCastMid").GetCollider();
			showNPCDialogue(obj);
			
		}
		else if(GetNode<RayCast2D>("RayCastMid2").IsColliding())
		{
			Node obj = (Node)GetNode<RayCast2D>("RayCastMid2").GetCollider();
			showNPCDialogue(obj);
		}
	}
  }

  public override void _PhysicsProcess(double delta)
	{
		velocity = Velocity;
		// Get the input direction and handle the movement/deceleration.
		// As good practice, you should replace UI actions with custom gameplay actions.
		direction = Input.GetVector("ui_left", "ui_right", "ui_up", "ui_down");

		// Add the gravity.
		if (!IsOnFloor())
		{
			velocity += GetGravity() * (float)delta;
		}

		// Handle Jump.
		if (Input.IsActionJustPressed("ui_accept") && IsOnFloor())
		{
			velocity.Y = JumpVelocity;
			hasJumpedTwice = false;
		}

		if (direction != Vector2.Zero)
		{
			velocity.X = direction.X * Speed;
			_animatedSprite.Play("walking");

		}
		else
		{
			velocity.X = Mathf.MoveToward(Velocity.X, 0, Speed);
		}
    
		if (Input.IsActionJustPressed("ui_dash") && direction != Vector2.Zero)
		{
			velocity.X = Speed * 15 * faceDirection;
		}

		// Handle double jump
		if (Input.IsActionJustPressed("ui_accept") && !IsOnFloor() && hasJumpedTwice == false)
		{
			hasJumpedTwice = true;
			velocity.Y = JumpVelocity;
		}

		// Handle wall jump
		if (IsOnWall() && hasJumpedTwice == true)
		{
			hasJumpedTwice = false;
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
			
			if (hit.GetCollider().HasSignal("savePoint"))
			{
				EmitSignal(SignalName.saveGame);
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
			{ "FaceDirection", faceDirection},
			{ "Health", health},
		};
	}

	public void updateDirection()
	{
		if(Input.IsPhysicalKeyPressed(Key.Right))
		{
			faceDirection = 1;
		}
		else if (Input.IsPhysicalKeyPressed(Key.Left))
		{
			faceDirection = -1;
		}
	}
  
	private bool isDead()
	{
		if (health <= 0) return true;

		else return false;
	}  
	private void showNPCDialogue(Node obj)
	{
	if(obj is NPC)
			{
			NPC npc = obj as NPC;
			npc.setNPCDialogue();
			InterfaceManager.dialogueManager.ShowDialogueElement();
			}	
	else if (obj is NPC2)
	{
		NPC2 npc = obj as NPC2;
		npc.setNPCDialogue();
		InterfaceManager.dialogueManager.ShowDialogueElement();
	}
	else if (obj is NPC3)
	{
		NPC3 npc = obj as NPC3;
		npc.setNPCDialogue();
		InterfaceManager.dialogueManager.ShowDialogueElement();
	}
	else if (obj is NPC4)
	{
		NPC4 npc = obj as NPC4;
		npc.setNPCDialogue();
		InterfaceManager.dialogueManager.ShowDialogueElement();
	}
	else if (obj is NPC5)
	{
		NPC5 npc = obj as NPC5;
		npc.setNPCDialogue();
		InterfaceManager.dialogueManager.ShowDialogueElement();
	}
	}
}
