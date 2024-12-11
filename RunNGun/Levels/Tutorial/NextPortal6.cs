using Godot;
using System;

public partial class NextPortal6 : Area2D
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
            GetTree().ChangeSceneToFile("res://AncientCity.tscn");
        }
    }
}
