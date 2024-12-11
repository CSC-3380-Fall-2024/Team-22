using Godot;
using System;
using System.Collections.Generic;
using System.Linq;

public partial class DialogueManager : Control
{
    public List<NpcDialogue> npcDialogue;
    [Export]
    public PackedScene InterfaceSelectableObject;
    public List<InterfaceSelection> Selections = new List<InterfaceSelection>();
    public string DialogueHeader;
    private bool isDialogueUp;
    private int currentSelectionIndex = 0;
    
    public  override void _Process(double delta)
    {
        if(isDialogueUp)
        {
            if(Input.IsActionJustPressed("DialogueLeft"))
            {
                foreach (InterfaceSelection item in Selections)
                {
                    item.SetSelected(false);
                }
                
                currentSelectionIndex -= 1;
                
                if(currentSelectionIndex < 0)
                {
                    currentSelectionIndex = 0;
                }
                
                Selections[currentSelectionIndex].SetSelected(true);
            }

            else if (Input.IsActionJustPressed("DialogueRight"))
            {
                foreach (InterfaceSelection item in Selections)
                {
                    item.SetSelected(false);
                }
                
                currentSelectionIndex += 1;
                
                if(currentSelectionIndex > Selections.Count - 1)
                {
                    currentSelectionIndex = Selections.Count - 1;
                }
                
                Selections[currentSelectionIndex].SetSelected(true);
            }

            else if(Input.IsActionJustPressed("DialogueAccept"))
            {
                // await ToSignal(GetTree(), "idle_frame");
                displayNextDialogueElement(Selections[currentSelectionIndex].interfaceSelectionObject.SelectionIndex);
            }
        }
    }
    public void ShowDialogueElement()
    {
        GetNode<Panel>("Panel").Show();
        GetNode<RichTextLabel>("Panel/RichTextLabel").Text = npcDialogue[0].DisplayText;
        GetNode<Label>("Panel/Label").Text = DialogueHeader;
        WriteDialouge(npcDialogue[0]);
    }

    public void WriteDialouge(NpcDialogue dialogue)
    {
        foreach (Node item in GetNode<Node>("Panel/HBoxContainer").GetChildren())
        {
            item.QueueFree();
        }

        Selections = new List<InterfaceSelection>();
        GetNode<RichTextLabel>("Panel/RichTextLabel").Text = dialogue.DisplayText;
        foreach(InterfaceSelectionObject item in dialogue.InterfaceSelectionObjects)
        
        {
           
            PackedScene packedScene = GD.Load<PackedScene>("res://Levels/Tutorial/InterfaceSelection.tscn");
            InterfaceSelection interfaceSelection = packedScene?.Instantiate<InterfaceSelection>();
            interfaceSelection.interfaceSelectionObject = item;
            GetNode<HBoxContainer>("Panel/HBoxContainer").AddChild(interfaceSelection);
            Selections.Add(interfaceSelection);
            interfaceSelection.SetSelected(false);
        }

        Selections[0].SetSelected(true);
        currentSelectionIndex = 0;
        isDialogueUp = true;
    }

    private void shutdownDialogue()
    {
        GetNode<Panel>("Panel").Hide();
        isDialogueUp = false;
    }
    
    private void displayNextDialogueElement(int index)
    {
        if(npcDialogue.ElementAtOrDefault(index) == null || index == -1)
        {
            shutdownDialogue();
        }

        else
        {
            WriteDialouge(npcDialogue[index]);
        }
    }
}
