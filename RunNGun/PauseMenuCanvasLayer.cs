using Godot;
using System;

public partial class PauseMenuCanvasLayer : CanvasLayer
{
	// Called when the node enters the scene tree for the first time.
	private bool isPaused = false;
	public override void _Ready()
	{
		// Hide the pause menu initially
        Visible = false;

        // Connect button signals
        Button resumeButton = GetNode<Button>("VBoxContainer/Resume");
        Button restartButton = GetNode<Button>("VBoxContainer/Restart");
        Button exitButton = GetNode<Button>("VBoxContainer/Exit");

        resumeButton.Pressed += OnResumePressed;
        restartButton.Pressed += OnRestartPressed;
        exitButton.Pressed += OnExitPressed;
	}

    public override void _Input(InputEvent @event)
    {
        // Check for pause input
        if (@event.IsActionPressed("ui_cancel"))
        {
            TogglePause();
        }
    }

	private void TogglePause()
    {
        isPaused = !isPaused;
        GetTree().Paused = isPaused;
        Visible = isPaused;
    }

	private void OnResumePressed()
    {
        TogglePause();
    }

	private void OnRestartPressed()
    {
        TogglePause();
        GetTree().ReloadCurrentScene();
    }
    
	private void OnExitPressed()
    {
        GetTree().Quit();
    }
	// Called every frame. 'delta' is the elapsed time since the previous frame.

}
