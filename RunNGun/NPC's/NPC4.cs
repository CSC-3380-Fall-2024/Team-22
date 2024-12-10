using Godot;
using System;
using System.Collections.Generic;

public partial class NPC4 : CharacterBody2D
{
	private Vector2 velocity;
	// Called when the node enters the scene tree for the first time.
	private List<NpcDialogue> npc4Dialogue;
	private string npc4Name;
	public override void _Ready()
	{
		
		InterfaceSelectionObject obj = new InterfaceSelectionObject(1, "Advice?");
		InterfaceSelectionObject obj2 = new InterfaceSelectionObject(2, "Trident?");
		InterfaceSelectionObject obj3 = new InterfaceSelectionObject(-1, "Cool");
		npc4Dialogue = new List<NpcDialogue>
		{
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj,obj2},"HEY THERE! There aren't many fish in this area, but I'll CATCH THEM ANYWAY! You want the treasure huh? Well you might want some advice.", 0),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"Don't get in the water. It's pretty acidy. You see those floating islands? If you jump off the farthest one, you'll find a magic ? block.", 1),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"I like fishing with this thing, it kinda burns in the water though.", 2)

		};
		npc4Name = "The Fisherman";
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
		InterfaceManager.dialogueManager.npcDialogue = npc4Dialogue;
		InterfaceManager.dialogueManager.DialogueHeader = npc4Name;
	}
}
