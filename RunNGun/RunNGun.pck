GDPC                 �                                                                      $   X   res://.godot/exported/133200997/export-2af0f938ce4d969ffc364f0aadf1ec5c-Checkpoint.scn  P�      �      ��cf��JE��c�=�    T   res://.godot/exported/133200997/export-363df94dca8e8ac4310ed8baaf3606e4-Bullet.scn         �      uAƚ�ۆ���۾P��    P   res://.godot/exported/133200997/export-4ea2ef009dbdbc7c385f403c6036b470-Main.scn '      �2      ۶[�	�׭rB�_�%C    T   res://.godot/exported/133200997/export-7d258761b256db2f5105b26543f1bdba-Enemy.scn   �       	      ��b
����Ɯ�v�"    T   res://.godot/exported/133200997/export-90e1ff3baa03524a506ff0f7a9d78dcf-Player.scn  ��      	      +�՚�9�S�;=��d    ,   res://.godot/global_script_class_cache.cfg  Ю             ��Р�8���8~$}P�    D   res://.godot/imported/coin.png-54d5e156d7891d9603a51f76f85b4fd9.ctex�Y      L      c#��e�[6�fK�S=    H   res://.godot/imported/fruit.png-33b325b6fecf0ae3ad310b50fcb64d04.ctex   �[      f      �,i�)5�s�Xs��    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex@�      &      A]/�no.^La_L�;    H   res://.godot/imported/knight.png-c78c026709c2736971ffc0a39338542e.ctex  _      �
      &�-��K�'�#Չ�)    L   res://.godot/imported/platforms.png-fdcd4bebb7ecd5fd1592abe643f480f5.ctex   �j      �      ҕF�d��"@cȹO    L   res://.godot/imported/slime_green.png-d23936e8ad50c1f02045d1fdaace456b.ctex pn      �      VC5�Qf�)�������    L   res://.godot/imported/slime_purple.png-3d9e552c3e3aeb2a7f3441f746b4c24b.ctex�q      �      �h��/ӃЀ�n����;    P   res://.godot/imported/world_tileset.png-8b3dc0eb27b141bfe097cdfc0d6186a3.ctex   pu      P      
/0ц]���}�@m�       res://.godot/uid_cache.bin  �      �      j�A�Bw�#�a�\       res://Characters/Enemy.cs   P      �      ���H_dx��ޖlAc    $   res://Characters/Enemy.tscn.remap   �      b       $�aRЋߞ���>��f`    ,   res://Characters/Player_Character/Bullet.cs         �       3��g�5���}�l0i    4   res://Characters/Player_Character/Bullet.tscn.remap ��      c       ��p�z�!|@	`�!"    0   res://Characters/Player_Character/Character.cs  �      Z      &��LV�r���q/    (   res://Characters/Player_Character/Gun.csP      �      Q� �y�Ϊ�/6}       res://Checkpoint.cs ��      �      ��%�<�l�X`�%p       res://Checkpoint.tscn.remap �      g       �o���<���M�l�|    (   res://Levels/Tutorial/Main.tscn.remap   ��      a       �"����yb�ЂO�ު       res://Map.cs@�      2      �$i�.t���Mh�{"�       res://Player.tscn.remap `�      c       ^����[���:c��&       res://icon.svg  �      �      �W|��/�\�pF[       res://icon.svg.import   p�      �       �r+R̯͞�$�I5`:       res://project.binary�      �      J���l����X��6s        res://sprites/coin.png.import    [      �       �����:=?�Z�	(�        res://sprites/fruit.png.import  @^      �       ��,@t8�y͞E[4        res://sprites/knight.png.import �i      �       ���놑�[72���*    $   res://sprites/platforms.png.import  �m      �       OO&B�.�P@��"�OS    $   res://sprites/slime_green.png.importq      �       ���Q�7s���,Ba�    (   res://sprites/slime_purple.png.import   �t      �       L8)G�GSd�^�� ;a    (   res://sprites/world_tileset.png.import  ��      �       �K�!}p{��ㄮ                using Godot;
using System;

public partial class Bullet : RigidBody2D
{
	[Signal]
	public delegate void projectileEventHandler();
	public override void _Ready()
	{
		Timer timer = (Timer)GetNode("Timer");
		timer.Timeout += () => QueueFree();
	}
}
        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    atlas    region    margin    filter_clip    script    animations    custom_solver_bias    radius 	   _bundled       Script ,   res://Characters/Player_Character/Bullet.cs ��������
   Texture2D    res://sprites/coin.png ��Ay��n}      local://AtlasTexture_jaq0l �         local://AtlasTexture_886lq          local://AtlasTexture_77hu3 b         local://AtlasTexture_pdcl0 �         local://AtlasTexture_s1xpx �         local://AtlasTexture_74dye 1         local://AtlasTexture_djkp8 v         local://AtlasTexture_gr8ib �         local://AtlasTexture_5d7hl           local://AtlasTexture_npcbw E         local://AtlasTexture_dbpip �         local://AtlasTexture_7r8ba �         local://SpriteFrames_cafbb          local://CircleShape2D_ldgv7 �
         local://PackedScene_1levq �
         AtlasTexture                                �A  �A         AtlasTexture                        �A      �A  �A         AtlasTexture                         B      �A  �A         AtlasTexture                        @B      �A  �A         AtlasTexture                        �B      �A  �A         AtlasTexture                        �B      �A  �A         AtlasTexture                        �B      �A  �A         AtlasTexture                        �B      �A  �A         AtlasTexture                         C      �A  �A         AtlasTexture                        C      �A  �A         AtlasTexture                         C      �A  �A         AtlasTexture                        0C      �A  �A         SpriteFrames                         name ,      default       speed      �@      loop             frames                   texture              	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture       	      	   duration      �?            texture       
      	   duration      �?            texture             	   duration      �?         CircleShape2D    	        �@         PackedScene    
      	         names "         Bullet 	   position    collision_layer    collision_mask    gravity_scale    contact_monitor    max_contacts_reported    script    RigidBody2D    AnimatedSprite2D    sprite_frames    CollisionShape2D    shape    Timer 	   one_shot 
   autostart    	   variants    	   
     yC  ZC                                                                 node_count             nodes     2   ��������       ����                                                          	   	   ����   
                        ����                           ����                         conn_count              conns               node_paths              editable_instances              version             RSRC              using Godot;
using System;

public partial class Character : CharacterBody2D
{
	[Signal]
	public delegate void playerDiedEventHandler();
	public const float Speed = 300.0f;
	public const float JumpVelocity = -400.0f;
	private int health = 20;

    public override void _Process(double delta)
    {
        if(isDead())
		{ 
			EmitSignal(SignalName.playerDied);
			QueueFree();
		}
    }

    public override void _PhysicsProcess(double delta)
	{
		Vector2 velocity = Velocity;
		// Get the input direction and handle the movement/deceleration.
		// As good practice, you should replace UI actions with custom gameplay actions.
		Vector2 direction = Input.GetVector("ui_left", "ui_right", "ui_up", "ui_down");
		KinematicCollision2D hit;

		// Add the gravity.
		if (!IsOnFloor())
		{
			velocity += GetGravity() * (float)delta;
		}

		// Handle Jump.
		if (Input.IsActionJustPressed("ui_accept") && IsOnFloor())
		{
			velocity.Y = JumpVelocity;
		}

		if (direction != Vector2.Zero)
		{
			velocity.X = direction.X * Speed;
		}
		else
		{
			velocity.X = Mathf.MoveToward(Velocity.X, 0, Speed);
		}

		Velocity = velocity;
		MoveAndSlide();

		hit = GetLastSlideCollision();
		if (hit != null)
		{
			if (hit.GetCollider().HasSignal("damaging"))
			{
				health -= 20;
			}
		}
	}
	
	private bool isDead()
	{
		if (health <= 0) return true;

		else return false;
	}
}
      using Godot;
using System;

public partial class Gun : Node2D
{
	[Export] PackedScene bulletScene;
	[Export] float bulletSpeed = 200f;
	[Export] float bps = 10f;

	float fireRate;
	float bulletDelay = .4f;
	int direction = 1;
	public override void _Ready()
	{
		fireRate = 1/bps;
	}

	public override void _Process(double delta)
	{
		gunDirection();
		
		if (Input.IsPhysicalKeyPressed(Key.Z) && bulletDelay > fireRate)
		{
			RigidBody2D bullet = (RigidBody2D)bulletScene.Instantiate();
			bullet.GlobalPosition = GlobalPosition;

			if (direction == -1)
			{
				bulletSpeed = -200f;
			}
			else if (direction == 1)
			{
				bulletSpeed = 200f;
			}

			bullet.LinearVelocity = bullet.Transform.X * bulletSpeed;

			GetTree().Root.AddChild(bullet);

			bulletDelay = 0f;
		}
		else
		{
			bulletDelay += (float)delta;
		}
	}

	public void gunDirection()
	{
		if(Input.IsPhysicalKeyPressed(Key.Right))
		{
			direction = 1;
		}
		else if (Input.IsPhysicalKeyPressed(Key.Left))
		{
			direction = -1;
		}
	}
}
             using Godot;
using System;

public partial class Enemy : CharacterBody2D
{
	[Signal]
	public delegate void damagingEventHandler();
	const float SPEED = 100f;
	private int health = 20;
	private int moveDir = -1;
	private RayCast2D[] downCasts = new RayCast2D[2];
	private RayCast2D frontCast;

    public override void _Ready()
    {
		downCasts[0] = (RayCast2D)GetNode("DownLeft");
		downCasts[1] = (RayCast2D)GetNode("DownRight");
		frontCast = (RayCast2D)GetNode("Front");
  	}

    public override void _Process(double delta)
    {
		if (isDead()) QueueFree();
		
		if (shouldTurn()) 
		{
			moveDir *= -1;	
		}
		frontCast.TargetPosition = new Vector2(19*moveDir, 0);
    }

    public override void _PhysicsProcess(double delta)
    {	
		Vector2 velocity = Velocity;
		KinematicCollision2D hit;

		if (!IsOnFloor())
		{
			velocity += GetGravity() * (float)delta;
		}

		velocity.X = SPEED*moveDir;
		Velocity = velocity;
		MoveAndSlide();

		hit = GetLastSlideCollision();
		if (hit != null)
		{
			if (hit.GetCollider().HasSignal("projectile"))
			{
				health -= 20;
			}
		}
    }

	private bool shouldTurn()
	{
		if (frontCast.IsColliding()) return true; 

		if (moveDir == -1)
		{
			return (!downCasts[0].IsColliding());
		}

		else if (moveDir == 1)
		{
			return (!downCasts[1].IsColliding());
		}

		return false;
	}

	private bool isDead()
	{
		if (health <= 0) return true;

		else return false;
	}

}
     RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    atlas    region    margin    filter_clip    script    animations    custom_solver_bias    size 	   _bundled       Script    res://Characters/Enemy.cs ��������
   Texture2D    res://sprites/knight.png '��D���|      local://AtlasTexture_hwh7u �         local://AtlasTexture_8mtin �         local://AtlasTexture_j77oi          local://AtlasTexture_q40fa `         local://SpriteFrames_hqq0b �         local://RectangleShape2D_soysy )         local://PackedScene_3rwxw Z         AtlasTexture                                 B   B         AtlasTexture                         B       B   B         AtlasTexture                        �B       B   B         AtlasTexture                        �B       B   B         SpriteFrames                         name ,      default       speed      �@      loop             frames                   texture              	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?         RectangleShape2D    	   
     PA  �A         PackedScene    
      	         names "         CharacterBody2D 	   position    collision_layer    collision_mask    script    AnimatedSprite2D    sprite_frames    CollisionShape2D    shape 	   DownLeft    target_position 
   RayCast2D 
   DownRight    Front    collide_with_areas    	   variants       
     �C  "C   	                            
         @@         
      �  �@
         �A      
      A  �@
     ��                node_count             nodes     L   ��������        ����                                              ����                           ����                              	   ����         
         	                     ����      
   
         	                     ����         
         	                   conn_count              conns               node_paths              editable_instances              version             RSRCRSRC                    PackedScene            ��������                                            D     resource_local_to_scene    resource_name    texture    margins    separation    texture_region_size    use_texture_padding    0:0/0 '   0:0/0/physics_layer_0/polygon_0/points    0:0/0/script    1:0/0 '   1:0/0/physics_layer_0/polygon_0/points    1:0/0/script    2:0/0 '   2:0/0/physics_layer_0/polygon_0/points    2:0/0/script    3:0/0 '   3:0/0/physics_layer_0/polygon_0/points    3:0/0/script    4:0/0 '   4:0/0/physics_layer_0/polygon_0/points    4:0/0/script    5:0/0 '   5:0/0/physics_layer_0/polygon_0/points    5:0/0/script    6:0/0 '   6:0/0/physics_layer_0/polygon_0/points    6:0/0/script    7:0/0 '   7:0/0/physics_layer_0/polygon_0/points    7:0/0/script    8:0/0 '   8:0/0/physics_layer_0/polygon_0/points    8:0/0/script    9:0/0 '   9:0/0/physics_layer_0/polygon_0/points    9:0/0/script    10:0/0 (   10:0/0/physics_layer_0/polygon_0/points    10:0/0/script    11:0/0 (   11:0/0/physics_layer_0/polygon_0/points    11:0/0/script    0:1/0 '   0:1/0/physics_layer_0/polygon_0/points    0:1/0/script    1:1/0 '   1:1/0/physics_layer_0/polygon_0/points    1:1/0/script    2:1/0 '   2:1/0/physics_layer_0/polygon_0/points    2:1/0/script    3:1/0 '   3:1/0/physics_layer_0/polygon_0/points    3:1/0/script    4:1/0 '   4:1/0/physics_layer_0/polygon_0/points    4:1/0/script    5:1/0 '   5:1/0/physics_layer_0/polygon_0/points    5:1/0/script    6:1/0 '   6:1/0/physics_layer_0/polygon_0/points    6:1/0/script    7:1/0 '   7:1/0/physics_layer_0/polygon_0/points    7:1/0/script    8:1/0 '   8:1/0/physics_layer_0/polygon_0/points    8:1/0/script    9:1/0 '   9:1/0/physics_layer_0/polygon_0/points    9:1/0/script    10:1/0 (   10:1/0/physics_layer_0/polygon_0/points    10:1/0/script    11:1/0 (   11:1/0/physics_layer_0/polygon_0/points    11:1/0/script    0:2/0 '   0:2/0/physics_layer_0/polygon_0/points    0:2/0/script    1:2/0 '   1:2/0/physics_layer_0/polygon_0/points    1:2/0/script    2:2/0 '   2:2/0/physics_layer_0/polygon_0/points    2:2/0/script    3:2/0 '   3:2/0/physics_layer_0/polygon_0/points    3:2/0/script    4:2/0 '   4:2/0/physics_layer_0/polygon_0/points    4:2/0/script    5:2/0 '   5:2/0/physics_layer_0/polygon_0/points    5:2/0/script    6:2/0 '   6:2/0/physics_layer_0/polygon_0/points    6:2/0/script    7:2/0 '   7:2/0/physics_layer_0/polygon_0/points    7:2/0/script    8:2/0 '   8:2/0/physics_layer_0/polygon_0/points    8:2/0/script    9:2/0 '   9:2/0/physics_layer_0/polygon_0/points    9:2/0/script    10:2/0 (   10:2/0/physics_layer_0/polygon_0/points    10:2/0/script    11:2/0 (   11:2/0/physics_layer_0/polygon_0/points    11:2/0/script    0:3/0 '   0:3/0/physics_layer_0/polygon_0/points    0:3/0/script    1:3/0 '   1:3/0/physics_layer_0/polygon_0/points    1:3/0/script    2:3/0 '   2:3/0/physics_layer_0/polygon_0/points    2:3/0/script    5:3/0 '   5:3/0/physics_layer_0/polygon_0/points    5:3/0/script    6:3/0 '   6:3/0/physics_layer_0/polygon_0/points    6:3/0/script    7:3/0 '   7:3/0/physics_layer_0/polygon_0/points    7:3/0/script    8:3/0 '   8:3/0/physics_layer_0/polygon_0/points    8:3/0/script    9:3/0    9:3/0/script    0:4/0 '   0:4/0/physics_layer_0/polygon_0/points    0:4/0/script    1:4/0 '   1:4/0/physics_layer_0/polygon_0/points    1:4/0/script    2:4/0    2:4/0/script    3:4/0    3:4/0/script    4:4/0    4:4/0/script    5:4/0 '   5:4/0/physics_layer_0/polygon_0/points    5:4/0/script    6:4/0 '   6:4/0/physics_layer_0/polygon_0/points    6:4/0/script    7:4/0 '   7:4/0/physics_layer_0/polygon_0/points    7:4/0/script    8:4/0 '   8:4/0/physics_layer_0/polygon_0/points    8:4/0/script    9:4/0    9:4/0/script    0:5/0 '   0:5/0/physics_layer_0/polygon_0/points    0:5/0/script    1:5/0 '   1:5/0/physics_layer_0/polygon_0/points    1:5/0/script    2:5/0    2:5/0/script    3:5/0    3:5/0/script    4:5/0    4:5/0/script    5:5/0    5:5/0/script    6:5/0    6:5/0/script    7:5/0    7:5/0/script    8:5/0    8:5/0/script    1:6/0    1:6/0/script    2:6/0    2:6/0/script    3:6/0    3:6/0/script    4:6/0    4:6/0/script    5:6/0    5:6/0/script    6:6/0    6:6/0/script    7:6/0    7:6/0/script    8:6/0    8:6/0/script    0:7/0    0:7/0/script    1:7/0    1:7/0/script    3:7/0    3:7/0/script    5:7/0    5:7/0/script    6:7/0    6:7/0/script    7:7/0    7:7/0/script    8:7/0    8:7/0/script    0:8/0    0:8/0/script    1:8/0    1:8/0/script    2:8/0    2:8/0/script    3:8/0    3:8/0/script    4:8/0    4:8/0/script    5:8/0    5:8/0/script    6:8/0    6:8/0/script    7:8/0    7:8/0/script    8:8/0    8:8/0/script    0:9/0    0:9/0/script    1:9/0    1:9/0/script    2:9/0    2:9/0/script    3:9/0    3:9/0/script    4:9/0    4:9/0/script    5:9/0    5:9/0/script    6:9/0    6:9/0/script    7:9/0    7:9/0/script    0:10/0    0:10/0/script    1:10/0    1:10/0/script    2:10/0    2:10/0/script    3:10/0    3:10/0/script    4:10/0    4:10/0/script    6:10/0    6:10/0/script    0:11/0    0:11/0/script    1:11/0    1:11/0/script    2:11/0    2:11/0/script    3:11/0    3:11/0/script    4:11/0    4:11/0/script    5:11/0    5:11/0/script    0:12/0    0:12/0/script    1:12/0    1:12/0/script    2:12/0    2:12/0/script    3:12/0    3:12/0/script    4:12/0    4:12/0/script    0:13/0    0:13/0/script    1:13/0    1:13/0/script    2:13/0    2:13/0/script    3:13/0    3:13/0/script    4:13/0    4:13/0/script    5:13/0    5:13/0/script    0:14/0    0:14/0/script    1:14/0    1:14/0/script    2:14/0    2:14/0/script    3:14/0    3:14/0/script    4:14/0    4:14/0/script    0:15/0    0:15/0/script    1:15/0    1:15/0/script    2:15/0    2:15/0/script    3:15/0    3:15/0/script    script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer 
   sources/0    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level 	   _bundled    
   Texture2D     res://sprites/world_tileset.png N��m���   PackedScene    res://Characters/Enemy.tscn �j�%ح�]   PackedScene    res://Player.tscn �f|p6W[!   PackedScene    res://Checkpoint.tscn ��7��   !   local://TileSetAtlasSource_awer6 �         local://TileSet_v4i1c f,         local://PackedScene_sjudx �,         TileSetAtlasSource 3                            %         �   �   A   �   A   A   �   A	      
             %         �   �   A   �   A   A   �   A                   %         �   �   A   �   A   A   �   A                   %         �   �   A   �   A   A   �   A                   %         �   �   A   �   A   A   �   A                   %         �   �   A   �   A   A   �   A                   %         �   �   A   �   A   A   �   A                   %         �   �   A   �   A   A   �   A                    %         �   �   A   �   A   A   �   A!      "          #   %         �   �   A   �   A   A   �   A$      %          &   %         �   �   A   �   A   A   �   A'      (          )   %         �   �   A   �   A   A   �   A*      +          ,   %         �   �   A   �   A   A   �   A-      .          /   %         �   �   A   �   A   A   �   A0      1          2   %         �   �   A   �   A   A   �   A3      4          5   %         �   �   A   �   A   A   �   A6      7          8   %         �   �   A   �   A   A   �   A9      :          ;   %         �   �   A   �   A   A   �   A<      =          >   %         �   �   A   �   A   A   �   A?      @          A   %         �   �   A   �   A   A   �   AB      C          D   %         �   �   A   �   A   A   �   AE      F          G   %         �   �   A   �   A   A   �   AH      I          J   %         �   �   A   �   A   A   �   AK      L          M   %         �   �   A   �   A   A   �   AN      O          P   %         �   �   A   �   A   A   �   AQ      R          S   %         �   �   A   �   A   A   �   AT      U          V   %         �   �   A   �   A   A   �   AW      X          Y   %         �   �   A   �   A   A   �   AZ      [          \   %         �   �   A   �   A   A   �   A]      ^          _   %         �   �   A   �   A   A   �   A`      a          b   %         �   �   A   �   A   A   �   Ac      d          e   %         �   �   A   �   A   A   �   Af      g          h   %         �   �   A   �   A   A   �   Ai      j          k   %         �   �   A   �   A   A   �   Al      m          n   %         �   �   A   �   A   A   �   Ao      p          q   %         �   �   A   �   A   A   �   Ar      s          t   %         �   �   A   �   A   A   �   Au      v          w   %         �   �   A   �   A   A   �   Ax      y          z   %         �   �   A   �   A   A   �   A{      |          }   %         �   �   A   �   A   A   �   A~                �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �      �          �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �      �          �      �          �      �          �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �      �          �   %         �   �   A   �   A   A   �   A�      �          �   %         �   �   A   �   A   A   �   A�      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �      �          �                                                                        	     
                                                                                                                                                                    !     "         #     $         %     &         '     (         )     *         +     ,         -     .         /     0         1     2         3     4         5     6         7     8        TileSet    >        ?            8        PackedScene    C     	         names "         Main    Node2D    TileMapLayer    tile_map_data 	   tile_set    collision_visibility_mode    Enemy 	   position 
   Character    Checkpoint    onPlayerDied    playerDied    	   variants                                                                                              	          
                                                                                                                                                                                                                                       !          "          #          $          %          &          '          (          )                                                                                                                                                                                                                                                                                    
    ��C  �C         
     �C  )C               node_count             nodes     /   ��������       ����                      ����                                  ���                           ���                           ���	                         conn_count             conns                 
                    node_paths              editable_instances              version       8     RSRC             GST2   �         ����               �           RIFF  WEBPVP8L   /��/@`2����@
ڶaJ����]�@�����-��C��kۍ�xJ�I�� P�>�-�?���;pI��Sv��[��L�;����y\g��}�s]�N�e+.����yP�gk#e���8h�ꞇt��~�R�̓� #e ���J����}\�(�2�	0Q!�D*�@�:K��D�2�ʢ{n�q���1ح�'�(1� �!�j��c����{�H��������~��{O���    [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d11jvo85ekqm5"
path="res://.godot/imported/coin.png-54d5e156d7891d9603a51f76f85b4fd9.ctex"
metadata={
"vram_texture": false
}
                GST2   @   @      ����               @ @        .  RIFF&  WEBPVP8L  /?���& ����� ҿ������P H�� ����[�J d��H��&���^������ Zslc��+�Ouk�P*��y%�gM�' I�[�	�E�����k ���.��ܶ#5=4�
�ۮ�(@��_4��
jE�#M�\�ǁ0G�0��q�,��@���#�#�c�q�x%v [� �������1�����c�R��91UO�]����꒺ Q�婳V]Pj�x-/�Z�$A*��0�/n��P���s.�Lʳqf 4R��,�����%r���o��ƶ뼮�����9O��'�.�S���\UNqI]�(����)���kyYD�$A��%�/n��P��Ga_]��J�������ν�͓�f`}������}�]9#�>|TO�]����M�>x-��Y�tAY�㵼����xs���41*�Q�W�ү}����#�O
a�n�N��m�D-Hc6���I�K�`b<�@��iR���Z��z��w���r�L$�\���6MJ�}���j��Kn�㹓�          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cxcf8oynccs0w"
path="res://.godot/imported/fruit.png-33b325b6fecf0ae3ad310b50fcb64d04.ctex"
metadata={
"vram_texture": false
}
               GST2            ����                        �
  RIFF�
  WEBPVP8Lu
  /��?Ǡ(��hp���Дg,(d#	��9��G�f#ɸG��'Z1��$�ˎp��>ϟ(g��P�mo�P�m5n,	'N�Wl�)�����Ȳ�Խ"�/A�$�m�I���3� ?a�GPSN����6�K�K�r��ܘ3�1Q�p_���qI����3e��D`��R�,�%�����2�^�J����e�����'j]OB�>�D�j���ex�җ��b�q"}U�o��	R }�}��}�}�4m��+ǭ��><�����unx�$�OHf��S�/�o�nD?�W��
��������[��qcv-����}��/�C�ܩ���ax��wcR�� �˔��' �%~��,˲
��˔�[ط��%I\wU��v� �e��-���v���u���2�����L����������aϒ��i����5�|)m��}��!�;l�+�I�w��Д���d���(��Ŝ�\u�O.�/	�K� u��+��H��[2�'��Kz�<Q�5�s-Q�	��`��$|i1�3b}硧5c���h�Q@�q��
���������$�~�<����W9��S@}��8#�3gD^~�i�Z{��rr�W�i���	�I~.��>�~��qz��:qO�;w"j�f���'�y~z9���3�A��G6{14����c��;�N�����ڔ�kk�3g���O�(���FkG3AJ�+�7��Z������r�3Y���V֭����T�7��/g�[[7�K�\�T=S	��t�p�|��.�����b_�2��[�Ĭg�}E��]i�yfY9����V�w]uHcP�`_�\�}�Ww��׶m� Y_x.|WW7 �On
_xn�+�[�'8߽��}�����n��RA��[��՝gJ���x.�|WUw!N�Wy���}�����n-�R�/<sߵ֭��Z�eҖ����f��ƺU,K �͜�e�������?^;��e������V";����X��ս�G�"- ��ig-�7���UeUZ����)���i2Ua�y.V��Q�����g���4M
��b���2��[�Ĭg�}E��]i�yfY9����V�w]uHcP�`_�\�}�Ww��׶m� Y_x.|WW7 �On
_xn�+�[�'8߽��}�����n��RA��[��՝gJ���x.�|WUw!N�Wy���}�����n-�R�/<sߵ֭��Z�eҖ����f��ƺU,K �͜�U*�w}ux��F��P.����V";��w�5�Ş��]���`������X`L�Һ�$6�	c�Y@�	�z_�ԝ�r������>/�q�o!�Z���+1�� s5����I���􏆚�[j#/D���C���M��ˤ�Ӣ��/���Q��<�Ӧs�=����=�n�n:��'�p#��9�/�x�Dz���?�u9?~]������D�Sp#z])�(|ҽI���D��T��t�eG��������B��HOt.�$��qN��������]!��E����Jܟ&bKg�Bn�I�G�t��?��R��<��%
f�0��\��+��yVf���S|��o��	�F��\�ނ�NW���\~.9��sT��M�'l�^yl撣�,��i��0�+47��RAѹԷaY���s�0f�b?�H0����X`��uù�s���iV�K0Kk�0���s�J�`>���g���%��0�{�hn����RO���7a*`��X�eR�f��K�5������aN/��� �uꬡ�ˢn��Q#���ys/��� �7��Υ�KF��k��+O�;���s�'��`.Dnup��m󰒍��
0\7����8��E �rRⷥ|yp.��&`v�b�E�t�Ǭ�Y\V�������Ȇ�.V_���3~�DJ���z����q���zY�8C��>g�_JƬ��n�k��{��Y藖�M�5�����p[RC}����3Gm�3�}�}#�D��%ꥇ�"��,8<��1#mQ�-�����ٶ���l�4���>1X{vP�Š/�oC�:���'D�{eQ��u�^�}ܺ����~�G��\Q� R52��0�9��	�}��8<�%�.1߉^����f��N)O�-&��ϋeYV!�3�yq��>5��|[��X�>5�������3 g"����`�����y�����m�n������q���b��]Bǧ2�D����f��'~�qŸ��$�i�nX����}��z�w��r`6�Kyzz�)�
��h�t���KO-Q��0[�x_�\&�W�����D�m��	Rg��%���4m��+p뼾?bk��'��DsY�ֹ�It�cu��ꤡc�	��^y}��(�Q���^�~�w�ăy;����|_ไ����E�ݓT��x��,R�`��q�/��ON��>��`��K�Y��@�&�s#�o���*
�+��]�����oG<t9���B}AONJb��~H�?�gY�UHk�/@�[�<@�Jyh��;��
Pǚ�K���S''5��\��w�ѣ�!�!חrs�FD�y�����*7��Ӈ�s�y��r.��<7�u����]��|h˪f��'�"��=s��X���t,���RY��eQ@���x��               [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d077472vdgpfb"
path="res://.godot/imported/knight.png-c78c026709c2736971ffc0a39338542e.ctex"
metadata={
"vram_texture": false
}
              GST2   @   @      ����               @ @        �  RIFF�  WEBPVP8L�  /?�/��ֶ��Ԏ�	�i�;*U�T�o��m%�R�R�J�ul���ȶZ�EC� E�4����  (�������&�G�.@10@J�H>	X�	H��wހ�ўoJ�7Q��q���?;gv)��O�f�J+��pU�H�l�N۸�!�́������S�7��I��d���N��DU��
�AVZ����� K�\��J�C.2�Ր�K+C�c�!:�V*�,&��C��QѬp]�bRS��C�T�,a���є�.ͱ�������!'լ����=�A�l"� 7��t�=l��4M������OԣekcL���w�]�e{�aT�?����(@f�G�8�0\d��!X�V��"Ctzt*9,&֡[0�:\ϳ�4��zH��y�p6��c�<�� ���{o�k�"�i5<�A�l"�3|>ɫSq�*�j����d���.�!��j�֥��������w��l�b֡[Ъh�G1��i�!]*�ư�cޡ96�c<A�x;����"w���������>���(��"H����'�B2oxt����p5d�R��P�Xd�N����.&�C���z���"&]��zH����
/Ex����r)�P�ގ����"w�������w1               [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dpjuvffrwm7xr"
path="res://.godot/imported/platforms.png-fdcd4bebb7ecd5fd1592abe643f480f5.ctex"
metadata={
"vram_texture": false
}
           GST2   `   H      ����               ` H        \  RIFFT  WEBPVP8LH  /_�W���$�aFpLGb�}i�i����p#X�]f�m��\�_��E������J�X� �rlۮ���Ҭ��7�Ti�@@K�[�G�)����8����(P�v���F�"�y�1���h���]��w}�/ٰ	�T�0h���ȇ}J����b<��m9��m؀m��j���<zm��qC���cu���ZV�ЋQ�f���"ܠ��`8�~,�A�i�E��A�e	%�A�I����L}�+4��4�]XqMS�伿�����<:m�7�m�����Qq,�.���� js�����A�����A5m�b�ܐCXl�E�{�G�37��r���o�c!Y˲����cQUu{�Z�"�U4��h/�X�� ��H2�����L}�������$�2�x�5nύt���!8B�>�SZ�.���L���a�F!_>�ԓo_��\8=׉1:f�=�#ژ�wz�����9����2O����PQ�99�y��y�v�=|��9']�)+�� �O�v�鈦Ky�^8=H�n p��GU�~,���2M��������H2܀�s�\8=������n@�p{�            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://xiv3jecbbcjc"
path="res://.godot/imported/slime_green.png-d23936e8ad50c1f02045d1fdaace456b.ctex"
metadata={
"vram_texture": false
}
          GST2   `   H      ����               ` H        �  RIFFz  WEBPVP8Lm  /_�o�&���wT�8�;�" G���lP'��j	a��+�$E�'	�!	BG��N@P��h ���U &Q�$��U���yJ�����m�^�k�zހ��kf���p�R��vm��e̪������-���HR$9�/^Q�����4m���~Ɇ����5���lPi��W��;���V55T��v0�6nXq�eV��=lŊ���$mQ�DE���$�A�h�����H�E��6�!�ݠVC�@�@qXV� x�"U��&ܽ�*07�wo����;�Ѷ{-�V���]]m��X�1~m�@m汰�D�{���b�{PI�j�xn�΍6��fp?�p�����j����xI�f���ED��a�I^Ah�"AM2ABڐ�7�<P�@��7 ޟ���~���;���2{v����9�s��������և�!]^b���D%?6WW�|�������N���#�X�|D�ktl�еk�jz�@Ϣx����K?h�Tu"*�������g����<�srvv&,�˸�}��LΤA����41z��E͸�Ѕ?6z@�	�h�!�������OVNOC���/����!y�X^�=D`7���=3       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://djrefgdarhc24"
path="res://.godot/imported/slime_purple.png-3d9e552c3e3aeb2a7f3441f746b4c24b.ctex"
metadata={
"vram_texture": false
}
        GST2            ����                          RIFF  WEBPVP8L  /��?��6�mU���2w�5��B)����2w�6�ض�&'�	���f,*�KOmSp���ƶ�*��+�BH�^)1���* (�� ���N��z�!�07�Ӎ�X��V�Wܛ��G�: �? >ź�v0��pn�.怚����J��٭���5�w������٭���A �^<�|��5 \}����h� <.ky@��r
P]��M�*�=`�T�VR/���X���$)�""bo˶�mm�Zh�ۉdH�2H ��&��{���(�Q�xT�����*�GJg|��Cɶ��\���E�>��kms�FV)~���k��2� ����/�5hV��������K��D�D�ߡd+us.��U���'��m;n3Z�"��XM�����߀�'�N"���m$Er�,�zy��4aդ��Ck��jK��o����M)�mg��nk������!3�٭���ZE�ą�ྦ��U���Jp���k��}7V���o���w�;�X���&xӔ�A���2��7���%.Ð�lG�%��J�v��]S����N��O(�[���Ը���{��w�����{��;�;��f��$��k�K$�_���o�Ԕ�d����`�'@''�f�N�����7rz���N��@�)�<��񘅘&��i
>mb����-��p�B�#�nni��s����l�c���$x���{���e��7ʑ�O�j�KJ���N)� �~V��~W�]wf��.�|T���T�^���2��[.%1�"����[.%�.��7<�r)ٌ)w��x˥�B�RH���H.��</�|g4-�hN�hC�V�J�3ݛ��yCy�twg#�A�( �<mZ���^�|���(�od��m��-�>�B�xPֹC�I�B�(l�7�Y1LV����ʧ亳���z��.�G����#�p��ճT U�+�S`|�n�`*�O���`*�O���`*�O���P�o��wՙ:�i�o�k���v��g�
����8�P]���=>�t���	<�YL3���h��|��hˌ����2��2g�N$0���Dh�����w�6��λGB�Se��GB�;�[�r��º��M��z
�C뛴��BO���~�l�77������3MxXK��m��p 8��e�uwղ���Zv�ݥew�l���7��x��<,���u���h$�zTެ̾�_o�ܬ̾�_�h��7V�����'� ���ˡ�U��w ��pO������|3�D�y��$����'z��S=U�;�d\)�[�)y^"����`P�&fW�J��镞����$��wX{�-�^����``ȁ�<�]�����A�.�bȁ�<�]�Ő㛚}�DpQk��{���e��L�& 6��v ��ݖq(6�6�����}�FM���cQ�]/�|s|YT*H@��Be�T*H@��7�}
���_</�|g4����1�r������.a���3SO'9�-D!��;XrӢF��z�廮�`"�!��d�xI�M>�m�rrW�HH�q�)'w�<���꺴G�*Φ��R��7߹1'Dr!�W�"I7�p8�(��ZXt"7�4�"��a2W0�\ޥ�.�a���+� Fs���ɻt��h�<9�,V�U��d���Bs��0���Fsp�0��p�98:�4{��<\�w�Ԥ����w��d�&yOq3;��{�����	Жy4�Wѹ�������� .C� ޮ�� ��,ޭ�<HY�1N�y-a�A∈�}�o[��p�fS��P��v�ﻛf�}����;4%V�^���;��@�OV9��f��nV�C9�m��~g�X��Q'�7Q^���ˢ�\�����^�gG��ˏd ��}�v\[�z��kN���s�9���08�;�)�s�Q�I�ޓKG��?$�K$�_�W��Q� � W�%��T��(��yWޙg�jY 6� ���z	�������C����K��r���9���cqG�&�^�|c|�Cԃ�.HM�;���ھ]�(�=w��	�׵�%�o�� ('kS��}��h�����7O˃!`��Q{MQ �w�0G��q>�����1��K,�u��Wj�}��G��E���8Gέ֏GߦQݙ��gλ�\�w�7�Y��2\��� +��
K�Ut�
��};Ϫ�߮ ��J�yV ��ϳ��m�;�upq��^W9�8�`���q�ξC�wm��9���a��h�)Jq�\\� 4�X��b�<�<̏�8���پ���vߡ&�Ѫ&�mw�*�;��q;����[wIS2�*��P=$nh������ϜϽ?�</F�g	^���A�'#|�g��,��KO\��Ҁ�q�3���?����!k�	%��s�)H ��Pr��d��m�CYNCd�i��O���>�:���~!U�/���8�g0>�;�&/A%ϕ��nK�<�-�j�X(um��an�$�s�gƑ	*�Ǉ�^����̈۰X�85E�B��DC��2ώ#x��\�R�#��1*..fQ�"Ǐ�p�v������b	��ҀDdWw�ߍ��)�Q\g�U9�f�=��<{�4���qX2�˒89`����}F���kX���!�!�|<���F��td�|/�Xw�}�?�5编�%���E ��<鵀�+j.��δ��Zv�s���A��k����h޹�at�_�c����$J����bpy1�pM2���G8����lU�ﰌ�0�O�iR�4U�6#����Δ�����vs�yǶ��9���c��ȑ��*�ժ�-]�L֝Г�<�g��L���?N���$Yw�n7�����,��wkP�;l�[�q�Sc��װp^�:ܭ��TXw+}#�� �>�Ʒ|�-����j^��k�¡�?��˒���ϞfF�����)��[���:���&^H�>���`8w9g���H`*����ξ������$ �}2e���4��pA�_�EI-&*+���wF��E�t�]s��,x$���0JG����>�����b fG�H�j��鈩5�/�V\�r&���5�
���Ȍ�p�,��w)s��Rb�*e�}�IQ��=��]3�DԔ���77�T����L)��,�x"ghE|���6�I5P�p=lAn�h.�A�`kB�c�8�9U�;li@��ӿ�#��g�I�ug�݉��^�݋��:�Ԯ���s�T>P�"(����� ��2�:�{��dݝЙ�sQ���9j���2K|2g�*V���H�Տ:d;���"!/?j�3���<���{\Rlޕ�dT\殼@
@R,�UWJEDV�>��Gj�w�͟)p�@sC��� o5(�l�Vy��}t�~�KK�Q�|Y�T
33�IT=-�b*�f����W�Ѿ�/��w�����*�&f#c�t�1���1� 8�b1�!���T��M�_@M��bV�M��g��:��@m�����ϱ�2v��Ү,F0�oC#5L�!50c<�㝐.����1�#�,/R���d.C��D!uy���\*����u�ͥ�;�5W�VU�e���'�REm1.Z�[:L�;4qM�"�ʐ�XCl�+��F��=�*�T�h�e�*C�^���5K�r�e���QIW�y�$��C���]�I�o��0-Y�wQeG�|��{\U�GNd��O
� �8���?��ύ������*6��Oռz,c-�ɜї��^��)�jhF�*�+�lH�U=��椑&?K��'2���9ȉ�{�+�m���L��&�ɱi�9�6���>#�É�.�y���A,?�QatF������<!�Ɉ���8T�c�R^w�O��)(���NT`OI�������r��zP�%aHʡ2�{�R�Ɯ(��}�A*���a�j`;�t�=� 8�e�a��Ji�N'g@t�����E�����(V\y⟋Q���Vρ)��d��m�Qf%%�W��l'|
C�R\Ha�*WN�5���a<�h�D9��N�3%>e9���S�3�"El�&�F0�;(�x��|\tȳ�����3W��}`��4�7\�ӗ���6L��iR�ts^K�ԺmվCO��w����,O�0-&��
��:|:b�oZ��XS���S={�=�8�b�A����.;
y�w��;T`�:�X!`ۊ}���}�X_�'��4U\�x�E2K���bf�UT݉(�J�������8� �F�y�GAg'E|u��YM<�g!�X�Ty�n�l�!NMq�EP�m�
�b���c�Re���������}����9^����V��Alɘ|����%��}���N�� ���� �-���fs"Q!�������,�V���9�bŕjǒ�p���HUܬ��΄��T��d��m�Q���e6�my@!
*�C5��U���H����XV;�·c�C=��c"��.0�)F0dw@�yG4��k/�k&���^5�i��J�4��.����mݾÖZ��1����Ѩ�I����uw�\w+����l��i1�/$�IQ�dO tn2�[ž�8�}X��}��P UMaߡ,�Hw�#��T�;H��}� ��O����(RWu�]�w�]�mS�����;��n1x��PMC��;`J����8�/a�����8_�Ǹ1�_�~��>C4Xi���=C�^�.����R�ȴ�A&u��Ar�(ù���{��E�44�lG{�!�"�L!B�G�t$�w`�3�����2��v8�eɂ%	3�]_��H�8���Y�pvyIg��4��I�Ϋn�[nS��HP�@�k��w*V���+�R{��k�Ma4�(��e�ܰ�ȝX��H'��wr�w�u2�.��F�%�Z��G��8��c��Y,K�á3�;�^��V0���Ғ�HJ��H5e�RԴhօ�0S-�a��v��V�*u+AZߩ�4���@�e�1H����q �,�l��F���+��XuJ�	�tx����7ޯ�^��;�?�rv]�q�zހ6`��~��u����e��|�t�+�i�{'&�w�X�!�d�S\�"f_�M%i_��O_����X����ȕ!�~e��>�j�9�n8v�)*}���*��
y&�(y&�(y�X�@��Ţi��l$Y�!g�A�
�t�IƤ�t�}��WW]����c-j1��8z-����t����-OXOI��!�<����hզY��@�����t0
"���4��5�������+t 6ݥ"�GL0=�d���|�Eo޼�����f� ��Z�l\�����X�L5(3�����Nk�bfN�yiIq^;�2���#y���
�5]՝<�gNZS1^�ɴSLK�78u� F!�q�� ^>>�=������.��u�O��7X>�:d�}��Eg5�U Ϯ@4b��<�nƮ6�<�6�3��<�5��#��D�__$/��� ��yղ�q&0�d��L�0.��N9�(|�lT6*U��^���f��xm��`�܇�����y�h�oX��#	�h[�pp.�h:�DWQx��L�!` �g@��z�޿�p7��w3�=%l`��G�ӬN�qJ�l@�raA���8��bl_wp i>99y��8�53�V	�<>�n�'���@5.�s_''��n�?a�򹃅�v�ڲ��ƅ����Ϣ#G3���Qds��K��0�;�3m��\��k�;Y9����iR�	�`�	������y�4�áM$�갩�;\�Jߤ�g��<��3x��Fc6�~f��g��8���<�q��;4T6*���6����6���k���h��;,n \���� \� \6F�&nX�g�'#���	��*x��C�&����M��z�����'��p7���mu4p�u�i�lgp�z��#z��� k�dA�cq�P�bX�a#��B���ŋϟ��������_�x�����/���V/؁�������g���L����b+�J�ɀ�sR	�L�;���i�k|>�<����iR�	�`�	�����çuZ��6���)��p��W8Ϡ�y{�gp��l6��W:�/&{gr�MȾÕ��k���5	��6���k���hS��p��gtu����1��0q�"O�<�Y��	��*x��C�&����M��z�����'��p7���mu4p�u �N�8��$L�G�h�@��hA�cq�P�bX�a#��¿Ϟ^�N?w������#W��OQ�wr [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://g2cd5cw0c0te"
path="res://.godot/imported/world_tileset.png-8b3dc0eb27b141bfe097cdfc0d6186a3.ctex"
metadata={
"vram_texture": false
}
        using Godot;
using System;

public partial class Checkpoint : Node2D
{
	[Export] PackedScene playerScene;
	[Signal]
	public delegate void playerDiedEventHandler();
 
	public void onPlayerDied()
	{
		CharacterBody2D player = (CharacterBody2D)playerScene.Instantiate();
		player.GlobalPosition = GlobalPosition;
		GetTree().Root.AddChild(player);
		player.Connect(SignalName.playerDied, new Callable(this, MethodName.onPlayerDied));
	}
}
            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Checkpoint.cs ��������   PackedScene    res://Player.tscn �f|p6W[!      local://PackedScene_7ku8l 9         PackedScene          	         names "         Checkpoint 	   position    script    playerScene    Node2D    	   variants       
     �B   B                         node_count             nodes        ��������       ����                                conn_count              conns               node_paths              editable_instances              version             RSRC          GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�Hrm�n�Ts�#��� ��Ԁ������g��f�#I����2���w5 z���1��H�#Y���úW���9ȵm-k�|P�C	�<��m�Rܭ d�o���m$EJ�vw��ԶmO�f���23ØyIG��23s�����̐�-�?�#�om�VR����ĥၝ`!m<�  mcm@��Jb�M�t���6�$z��uS�70��`U$&�&g�]����xa{���c���~�*�~�
�� ��B���H��~�~�V�)�J�:̠Ʉ	rYlrs6E�M5�hB�C?Q��x0sT��IGK��پl9��]�Cڗ-�-����1ᇕ��HŦ�Mv�.�i�q�4N[���i������RRy�:[�q�q�Ti��B]x���M�kP�tY�&sڶt	u��݁z���Lф��P�PA���w���>�ʎ
0�ȹ�v�6���:������^�iL.cB؍1�I�w� ���c�Yy��Na�y�2+�9:���͏}����:�i���eX���s=S�ZL�<oJ��M�Z�JU�T�27�E��4����"k���&:�-��zK�ڭ:���Yn����EU�Tq�Sm�Jav"2Q܉�[ ��
}RP#����s,��}��g��lh�jcGJy��в�6�N�"�����+��Ģ�7n�a�j;|pW�f��E}�%�XA�N
�䑭���j��t���+���\��EH)�n��!:��^Pk�]�|��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T��(}�_�w�}���r�L|� |v�՘�e��yw�S|�� U�${1J'��[�ڞ�x��2����:��Ggjxؗ�m3�ivF��`�ߢe��a��G��V�t��is��J�����'�Q_5W���?�l�{1g���kԶ�zk�T�-|�V*��ޜZ�CW�,��(۝��Ǘ��� T{?�^��{���(9�(��u�5�͚����y~)J�&������}	@���74���&���N-�L_���o��������ݵ=�����y�VK��&�����������G�xߠ�]������ev%�{��eycc�{s�\�RАk{�|��P���eu�~]���2?0�F���1�V&x���:c������/�g{�.F)PDwGf�M�����(�0}��ag��e�'���6l�"s�L�H�c�"��̊ #Yf���:8������
�Eذ�3u�k5�Bt�m���!�#*Eǚa�ܰ_��Tq�.�0}�a@�^G��N�a��\��A�N�0���I���lq�5�+(��Џ�����Yq�wz_���*;<-w�;tX�"��n�'����Mۭy`0��kOԙ������,�����x�'��S�ݚa�텷�u��h����\��~�d.;����q5f-���������|�������ͪQl�9���~�\����7��^�?��������e�u$?`�߇u��*��yT����������A�6�E~`\�����n��1l�7t�;G�I��c��,VJ�Q[;�	Y|�kj��*�na����U�/�o��u�	?�闯7��׏w�m��.�|�~�}���r��RΎ��o.���o֜��~�_���.��ǿ�χ���q�˹���7�|�����~��[O5����2�%>�K�C�T׿�Y�L�%-	F�E�H,��v�t�f����i�V�N�'g��/)� ^.7��T��f��y�(����R��~f��p®��O���V�\���k���lڮ2aW��jc�{%�Y\m�šN�+����Y��׹H���y?��ۋG�~��b�l�9��dϻĸ��
��l�X��ɎZ�YDVD%*�P&��m�����]r�&��C����-2G-�-���d�gcgH��!�#�s^���s�l#/��l�r��#���8%Ӭ�L��1㬤ӖIYIa��0�qw���M�>�� � �����c��-$��D&����i�|L�n;�YˡR�����.�mK�P9_T� �c�����F*� ����+�\��|�Mt��nS�#��^+�l���2���|��9�Ç��9��X2mZPnߺ0P��������l�C�t'�^�A\�Q6�?Ɯ�_�EDVDDv�������vCcʁ&rw`w@�'c�%��6�_>0�m��i�}ܢ���            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bvbrcexlj71kc"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                using Godot;
using System;

public partial class Map : TileMapLayer
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script    atlas    region    margin    filter_clip    animations 	   _bundled       Script /   res://Characters/Player_Character/Character.cs ��������
   Texture2D    res://sprites/slime_green.png ��`ت��   Script )   res://Characters/Player_Character/Gun.cs ��������   PackedScene .   res://Characters/Player_Character/Bullet.tscn Bmj��S      local://RectangleShape2D_lrsgd 5         local://AtlasTexture_e5mk2 V         local://AtlasTexture_6pqy8 �         local://AtlasTexture_i0w50 �         local://AtlasTexture_07kc4 %         local://SpriteFrames_7ujpp j         local://PackedScene_mjwnj �         RectangleShape2D             AtlasTexture                                �A  �A         AtlasTexture                        �A      �A  �A         AtlasTexture                        @B      �A  �A         AtlasTexture                        �B      �A  �A         SpriteFrames    	                     name ,      default       speed      �@      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?         PackedScene    
      	         names "      
   Character    collision_mask    script    CharacterBody2D    CollisionShape2D    shape    one_way_collision    AnimatedSprite2D    scale    sprite_frames    Gun    bulletScene    Node2D 	   Camera2D    zoom    	   variants    	                                   
   aUU?PUU?                           
      @   @      node_count             nodes     5   ��������       ����                                  ����                                 ����         	                     
   ����                                 ����                   conn_count              conns               node_paths              editable_instances              version             RSRC        [remap]

path="res://.godot/exported/133200997/export-363df94dca8e8ac4310ed8baaf3606e4-Bullet.scn"
             [remap]

path="res://.godot/exported/133200997/export-7d258761b256db2f5105b26543f1bdba-Enemy.scn"
              [remap]

path="res://.godot/exported/133200997/export-4ea2ef009dbdbc7c385f403c6036b470-Main.scn"
               [remap]

path="res://.godot/exported/133200997/export-2af0f938ce4d969ffc364f0aadf1ec5c-Checkpoint.scn"
         [remap]

path="res://.godot/exported/133200997/export-90e1ff3baa03524a506ff0f7a9d78dcf-Player.scn"
             list=Array[Dictionary]([])
     <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128"><rect width="124" height="124" x="2" y="2" fill="#363d52" stroke="#212532" stroke-width="4" rx="14"/><g fill="#fff" transform="translate(12.322 12.322)scale(.101)"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042" transform="translate(12.322 12.322)scale(.101)"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></svg>                 Bmj��S-   res://Characters/Player_Character/Bullet.tscn�j�%ح�]   res://Characters/Enemy.tscn:�oL.�1   res://Levels/Tutorial/Main.tscn��Ay��n}   res://sprites/coin.png��3̳X   res://sprites/fruit.png'��D���|   res://sprites/knight.png?(z�G�=r   res://sprites/platforms.png��`ت��   res://sprites/slime_green.pngC�j�ӡ�l   res://sprites/slime_purple.pngN��m���   res://sprites/world_tileset.png��7��   res://Checkpoint.tscnn�k��ܝ5   res://icon.svg�f|p6W[!   res://Player.tscn           ECFG      _custom_features         dotnet     application/config/name         RunNGun    application/run/main_scene(         res://Levels/Tutorial/Main.tscn    application/config/features(   "         4.3    GL Compatibility       application/config/icon         res://icon.svg     dotnet/project/assembly_name         New Game Project#   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility            