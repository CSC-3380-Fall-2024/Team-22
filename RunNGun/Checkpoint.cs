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

    public void onPlayerDied()
	{
		GetTree().ReloadCurrentScene();  
	}
}
