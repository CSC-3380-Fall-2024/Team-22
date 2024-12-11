using Godot;
using System;
using System.Collections.Generic;

public partial class DialogueBox : Control
{
	private Label dialogueLabel;
	private Button nextButton;
	private int currentLineIndex = 0;
	private List<string> dialogueLines = new List<string>
	{
		"Welcome to our world!",
		"Here is your first step.",
		"You may face challenge, do not give up",
		"Good Luck!"
	};

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		dialogueLabel = GetNode<Label>("DialogueLabel");
		nextButton = GetNode<Button>("NextButton");

		nextButton.Pressed += OnNextButtonPressed;

		UpdateDialogue();
	}

	private void OnNextButtonPressed()
	{
		currentLineIndex++;
		if (currentLineIndex < dialogueLines.Count)
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
		dialogueLabel.Text = dialogueLines[currentLineIndex];
	}

	private void HideDialogue()
	{
		currentLineIndex = 0;
		dialogueLabel.Text = "";
		Visible = false; 
	}

	public void ShowDialogue()
	{
		Visible = true;
		UpdateDialogue();
	}
}
