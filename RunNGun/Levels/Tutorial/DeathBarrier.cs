using Godot;
using System;

public partial class DeathBarrier : Area2D
{

	[Export] public string NextLevelScenePath = "res://Levels/Tutorial/Main.tscn";

    public override void _Ready()
    {
       
        BodyEntered += OnBodyEntered;
    }

    private void OnBodyEntered(Node2D body)
    {
      
        if (body is Character)  
        {
            // Load the next level scene.
            GetTree().ReloadCurrentScene();
        }
    }
}