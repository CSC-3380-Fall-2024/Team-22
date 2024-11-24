using Godot;
using System;
using System.Collections.Generic;

public partial class NpcDialogue
{
public int Index;
public List<InterfaceSelectionObject> InterfaceSelectionObjects;
public List<NpcDialogue> NpcDialogues;
public string DisplayText;
public NpcDialogue(List<InterfaceSelectionObject> interfaceSelectionObjects, string displayText, int index, List<NpcDialogue> dialogues = null)
{
    InterfaceSelectionObjects = interfaceSelectionObjects;
    DisplayText = displayText;
    Index = index;
    if(dialogues != null)
    {
        NpcDialogues = dialogues;
    }
}
}