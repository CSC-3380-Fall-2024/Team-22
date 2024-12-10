using Godot;
using System;

public partial class NextPortal4 : Area2D
{
        public override void _Ready()
    {
       
        BodyEntered += OnBodyEntered;
    }

    private void OnBodyEntered(Node2D body)
    {
      
        if (body is Character)  
        {
            // Load the next level scene.
            GetTree().ChangeSceneToFile("res://Levels/Level 2 Forest Night/Forest2.tscn");
        }
    }
}
