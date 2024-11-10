using Godot;
using System;

public partial class Hud : Control
{
	// Called when the node enters the scene tree for the first time.
	
	private ProgressBar healthBar;
	private Label levelLabel;
	private Label weaponLabel;

	private int maxHealth = 100;
	private int currentHealth;
	private int numLevel = 1;
	private string currentWeapon = "Gun";
	
	public override void _Ready()
	{
		// Get a reference to a child node
		healthBar = GetNode<ProgressBar>("HealthBar");
		levelLabel = GetNode<Label>("LevelLabel");
		weaponLabel = GetNode<Label>("WeaponLabel");

		// Get a reference to a child node
		currentHealth = maxHealth;
		UpdateHUD();
	}
	
	// Update health, level and weapon information
	private void UpdateHUD()
	{
		healthBar.Value = currentHealth;
		levelLabel.Text = $"Level: {numLevel}";
		weaponLabel.Text = $"Weapon: {currentWeapon}";
	}

	// Update health volume
	public void UpdateHealth(int health)
	{
		currentHealth = Mathf.Clamp(health, 0, maxHealth);
		UpdateHUD();
	}

	// Update Level
	public void UpdateLevel(int level)
	{
		numLevel = level;
		UpdateHUD();
	}

	// Update Weapon
	public void UpdateWeapon(string weapon)
	{
		currentWeapon = weapon;
		UpdateHUD();
	}
}