using Godot;
using System;
using System.Collections.Generic;

public partial class NPC : CharacterBody2D
{
	private Vector2 velocity;
	// Called when the node enters the scene tree for the first time.
	private List<NpcDialogue> npcDialogue;
	private string npcName;
	public override void _Ready()
	{
		
		InterfaceSelectionObject obj = new InterfaceSelectionObject(1, "I'm Exploring.");
		InterfaceSelectionObject obj2 = new InterfaceSelectionObject(2, "I'm Treasure Hunting.");
		InterfaceSelectionObject obj3 = new InterfaceSelectionObject(-1, "Thanks");
		npcDialogue = new List<NpcDialogue>
		{
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj,obj2},"Hello young one. Tell me, what are you doing in these woods?", 0),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"You must be cautious of the monsters in this place.", 1),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"You may not like what you find...", 2)

		};
		npcName = "Old Man";
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		if (!IsOnFloor())
		{
			velocity += GetGravity() * (float)delta;
		}
	}
	public void setNPCDialogue()
	{
		InterfaceManager.dialogueManager.npcDialogue = npcDialogue;
		InterfaceManager.dialogueManager.DialogueHeader = npcName;
	}
}
