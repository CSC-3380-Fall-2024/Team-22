using Godot;
using System;

public partial class NextLevelPortal3 : Area2D
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
            GetTree().ChangeSceneToFile("res://End_Title_Screen.tscn");
        }
    }
}
