using Godot;
using System;

public partial class Front : RayCast2D
{
	[Export] public PackedScene enemyScene;
	private float spawnRate;
	private float delay = .4f;

	public override void _Ready()
	{
		spawnRate = 1;
	}
	public override void _Process(double delta)
	{
		if (delay > spawnRate)
		{
			CharacterBody2D enemy = (CharacterBody2D)enemyScene.Instantiate();
			enemy.GlobalPosition = GlobalPosition;

			GetTree().Root.AddChild(enemy);

			delay = 0f;
		}
		else
		{
			delay += (float)delta;
		}
	}
}
