using Godot;
using System;

public partial class InterfaceSelection : Control
{
	public bool Selected = false;
	public InterfaceSelectionObject interfaceSelectionObject;
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		this.GetNode<Label>("Label").Text = interfaceSelectionObject.SelectionText;
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	public void SetSelected(bool selected)
	{
		Selected = selected;
		if(selected)
		{
			GetNode<TextureRect>("TextureRect").Visible = true;
		}
		else
			{
				GetNode<TextureRect>("TextureRect").Visible = false;
			}
	}
}