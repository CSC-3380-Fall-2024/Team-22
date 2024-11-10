using Godot;
using System;

public partial class Platforms : TileMapLayer
{
	[Signal]
	public delegate void isWallEventHandler();
}
