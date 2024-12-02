using Godot;
using System;
using System.Collections.Generic;

public partial class NPC2 : CharacterBody2D
{
	private Vector2 velocity;
	// Called when the node enters the scene tree for the first time.
	private List<NpcDialogue> npc2Dialogue;
	private string npc2Name;
	public override void _Ready()
	{
		
		InterfaceSelectionObject obj = new InterfaceSelectionObject(1, "Yes");
		InterfaceSelectionObject obj2 = new InterfaceSelectionObject(2, "No");
		InterfaceSelectionObject obj3 = new InterfaceSelectionObject(-1, "Thanks");
		npc2Dialogue = new List<NpcDialogue>
		{
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj,obj2},"Hello there, little one. Aren't you cold out here?", 0),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"Me neither.", 1),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"Good luck with the cold.", 2)

		};
		npc2Name = "Ice Lady";
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		
	}
	public void setNPCDialogue()
	{
		InterfaceManager.dialogueManager.npcDialogue = npc2Dialogue;
		InterfaceManager.dialogueManager.DialogueHeader = npc2Name;
	}
}
