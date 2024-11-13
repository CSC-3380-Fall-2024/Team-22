using Godot;
using System;

public partial class ToggleVisibilityonPause : CanvasLayer
{
	[Export] bool visibleOnPause = true;
	public override void _Ready()
	{
		PauseManager.Instance.GamePauseToggle += ToogleVisibility;
		if(!visibleOnPause) return;
		Hide();
	}
private void ToogleVisibility(bool isPaused)
{
	if(visibleOnPause == isPaused)
	{
		Show();
	}
	else
	{
		Hide();
	}

	
}
	// Called every frame. 'delta' is the elapsed time since the previous frame.
	
}
