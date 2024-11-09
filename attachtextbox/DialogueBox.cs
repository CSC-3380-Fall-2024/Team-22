using Godot;
using System;
using System.Collections.Generic;

public partial class DialogueBox : Control
{
	private Label _dialogueLabel;
	private Button _nextButton;

	private List<string> _dialogueLines = new List<string>
	{
		"Welcome to our world!",
		"Here is your first step.",
		"You may face challenge, do not give up",
		"Good Luck!"
	};

	private int _currentLineIndex = 0;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		_dialogueLabel = GetNode<Label>("DialogueLabel");
		_nextButton = GetNode<Button>("NextButton");

		_nextButton.Pressed += OnNextButtonPressed;

		UpdateDialogue();
	}

	private void OnNextButtonPressed()
	{
		_currentLineIndex++;
		if (_currentLineIndex < _dialogueLines.Count)
		{
			UpdateDialogue();
		}
		else
		{
			HideDialogue();
		}
	}

	private void UpdateDialogue()
	{
		_dialogueLabel.Text = _dialogueLines[_currentLineIndex];
	}

	private void HideDialogue()
	{
		_currentLineIndex = 0;
		_dialogueLabel.Text = "";
		Visible = false; 
	}

	public void ShowDialogue()
	{
		Visible = true;
		UpdateDialogue();
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
