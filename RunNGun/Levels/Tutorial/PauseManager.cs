using Godot;
using System;
using System.Runtime.CompilerServices;

public partial class PauseManager : Node
{
	public static PauseManager Instance { get; private set;}
	[Signal]
	public delegate void GamePauseToggleEventHandler(bool isPaused);
	private bool isPaused = false;
	public override void _Ready()
	{
		Instance = this;
	}

	public override void _Input(InputEvent @event)
	{
		if(@event is InputEventKey inputEventKey && inputEventKey.Pressed)
		{
			if(inputEventKey.Keycode != Key.Escape) return;
			isPaused = !isPaused;
			EmitSignal(SignalName.GamePauseToggle, isPaused);
			GetTree().Paused = isPaused;
		}
	}
}
