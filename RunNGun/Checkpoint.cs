using Godot;
using System;

public partial class Checkpoint : Node2D
{
	[Export] PackedScene playerScene;
	[Signal]
	public delegate void playerDiedEventHandler();
	[Signal]
	public delegate void savePointEventHandler();
	public CharacterBody2D player;

    public override void _Ready()
    {

    }
    public void onPlayerDied()
	{
		GetTree().ReloadCurrentScene();  
	}

    public override void _Process(double delta)
    {
	}


	}
