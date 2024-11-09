using Godot;
using System;

public partial class Hud : Control
{
	// Called when the node enters the scene tree for the first time.
	
	private ProgressBar _healthBar;
	private Label _levelLabel;
	private Label _weaponLabel;

	private int _maxHealth = 100;
	private int _currentHealth;
	private int _level = 1;
	private string _currentWeapon = "Gun";
	
	public override void _Ready()
	{
		// Get a reference to a child node
		_healthBar = GetNode<ProgressBar>("HealthBar");
		_levelLabel = GetNode<Label>("LevelLabel");
		_weaponLabel = GetNode<Label>("WeaponLabel");

		// Get a reference to a child node
		_currentHealth = _maxHealth;
		UpdateHUD();
	}
	
	// Update health, level and weapon information
	private void UpdateHUD()
	{
		_healthBar.Value = _currentHealth;
		_levelLabel.Text = $"Level: {_level}";
		_weaponLabel.Text = $"Weapon: {_currentWeapon}";
	}

	// Update health volume
	public void UpdateHealth(int health)
	{
		_currentHealth = Mathf.Clamp(health, 0, _maxHealth);
		UpdateHUD();
	}

	// Update Level
	public void UpdateLevel(int level)
	{
		_level = level;
		UpdateHUD();
	}

	// Update Weapon
	public void UpdateWeapon(string weapon)
	{
		_currentWeapon = weapon;
		UpdateHUD();
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}

//Assuming your main script controls the player's state, you can call methods in the HUD script when the player takes damage, upgrades, or changes weapons.
//private HUD _hud;
//
	//public override void _Ready()
	//{
		//_hud = GetNode<HUD>("/root/HUD");
	//}
//
	//public void TakeDamage(int damage)
	//{
		//_hud.UpdateHealth(_hud.GetHealth() - damage);
	//}
//
	//public void LevelUp()
	//{
		//_hud.UpdateLevel(_hud.GetLevel() + 1);
	//}
//
	//public void ChangeWeapon(string weapon)
	//{
		//_hud.UpdateWeapon(weapon);
	//}
