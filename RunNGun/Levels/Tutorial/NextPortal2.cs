using Godot;
using System;

public partial class NextPortal2 : Area2D
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
            GetTree().ChangeSceneToFile("res://Levels/Tutorial/Tutorial3.tscn");
        }
    }
}
