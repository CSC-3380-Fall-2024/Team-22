using Godot;
using System;
using System.Collections.Generic;

public partial class NPC5 : CharacterBody2D
{
	private Vector2 velocity;
	// Called when the node enters the scene tree for the first time.
	private List<NpcDialogue> npcDialogue;
	private string npcName;
	public override void _Ready()
	{
		
		InterfaceSelectionObject obj = new InterfaceSelectionObject(1, "You talk?");
		InterfaceSelectionObject obj2 = new InterfaceSelectionObject(2, "Treasure?");
		InterfaceSelectionObject obj3 = new InterfaceSelectionObject(-1, "BRB");
		npcDialogue = new List<NpcDialogue>
		{
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj,obj2},"DON'T EAT ME!", 0),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"I was cursed by that monster over there. My dad and I were looking for the treasure and it got me. If you beat it we can get out of here!", 1),
			new NpcDialogue(new List<InterfaceSelectionObject>(){obj3},"I couldn't find it. That monster cursed me when I came here. If you beat it, you can get out of here!", 2)

		};
		npcName = "The Apple";
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
