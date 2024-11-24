using Godot;
using System;

public partial class InterfaceSelectionObject
{
public string SelectionText;
public int SelectionIndex;
public InterfaceSelectionObject(int index, string selectionText)
{
    SelectionText = selectionText;
    SelectionIndex = index;
}
}