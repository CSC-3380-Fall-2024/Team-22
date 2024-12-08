using Godot;
using System;
using System.Collections.Generic;

public partial class NPC3 : CharacterBody2D
{
	private Vector2 velocity;
	// Called when the node enters the scene tree for the first time.
	private List<NpcDialogue> npc3Dialogue;
	private string npc3Name;
	public override void _Ready()
	{
		
		InterfaceSelectionObject obj = new InterfaceSelectionObject(1, "Directions?");
		InterfaceSelectionObject obj2 = new InterfaceSelectionObject(2, "Evil Tree?");
		InterfaceSelectionObject obj3 = new InterfaceSelectionObject(-1, "Gee Thanks");
		npc3Dialogue = new List<NpcDialogue>
		{
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj,obj2},"Hmmm...", 0),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"Turn back, this is no place for tourists.", 1),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"*The Man points you to the path above...*", 2)

		};
		npc3Name = "The Hunter";
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
		InterfaceManager.dialogueManager.npcDialogue = npc3Dialogue;
		InterfaceManager.dialogueManager.DialogueHeader = npc3Name;
	}
}
