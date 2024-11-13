using Godot;
using System;

public partial class Checkpoint : Node2D
{
	[Export] PackedScene playerScene;
	[Signal]
	public delegate void playerDiedEventHandler();
 
	public void onPlayerDied()
	{
		CharacterBody2D player = (CharacterBody2D)playerScene.Instantiate();
		player.GlobalPosition = GlobalPosition;
		GetTree().Root.AddChild(player);
		player.Connect(SignalName.playerDied, new Callable(this, MethodName.onPlayerDied));
	}
}
