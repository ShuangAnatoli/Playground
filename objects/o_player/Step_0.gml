/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 49385126
/// @DnDArgument : "key" "vk_right"
var l49385126_0;
l49385126_0 = keyboard_check(vk_right);
if (l49385126_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AD77909
	/// @DnDParent : 49385126
	/// @DnDArgument : "expr" "walk_spd"
	/// @DnDArgument : "var" "hsp"
	hsp = walk_spd;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 127E6803
/// @DnDArgument : "key" "vk_left"
var l127E6803_0;
l127E6803_0 = keyboard_check(vk_left);
if (l127E6803_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 631EC805
	/// @DnDParent : 127E6803
	/// @DnDArgument : "expr" "-walk_spd"
	/// @DnDArgument : "var" "hsp"
	hsp = -walk_spd;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04FB7CEB
/// @DnDArgument : "expr" "global.grav"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "vsp"
vsp += global.grav;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E4558BB
/// @DnDArgument : "expr" "hsp * drag"
/// @DnDArgument : "var" "hsp"
hsp = hsp * drag;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6042DC71
/// @DnDArgument : "var" "abs(hsp)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.2"
if(abs(hsp) < 0.2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BBF0A3E
	/// @DnDParent : 6042DC71
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 365328DC
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_block"
/// @DnDSaveInfo : "object" "o_block"
var l365328DC_0 = instance_place(x + hsp, y + 0, o_block);
if ((l365328DC_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 196E4939
	/// @DnDParent : 365328DC
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	var collide = false;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 0987E8AA
	/// @DnDParent : 365328DC
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	while ((collide == false)) {
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 315D88D3
		/// @DnDParent : 0987E8AA
		/// @DnDArgument : "x" "sign(hsp)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_block"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_block"
		var l315D88D3_0 = instance_place(x + sign(hsp), y + 0, o_block);
		if (!(l315D88D3_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 08C4B620
			/// @DnDParent : 315D88D3
			/// @DnDArgument : "expr" "sign(hsp)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(hsp);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 264D6173
		/// @DnDParent : 0987E8AA
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5026A16C
			/// @DnDParent : 264D6173
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "collide"
			collide = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0751B032
			/// @DnDParent : 264D6173
			/// @DnDArgument : "var" "hsp"
			hsp = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3FD3B493
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += hsp;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1A242E88
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vsp"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_block"
/// @DnDSaveInfo : "object" "o_block"
var l1A242E88_0 = instance_place(x + 0, y + vsp, o_block);
if ((l1A242E88_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AF83052
	/// @DnDParent : 1A242E88
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	var collide = false;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 398C5616
	/// @DnDParent : 1A242E88
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	while ((collide == false)) {
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 5C17DDE1
		/// @DnDParent : 398C5616
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(vsp)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_block"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_block"
		var l5C17DDE1_0 = instance_place(x + 0, y + sign(vsp), o_block);
		if (!(l5C17DDE1_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 394BC2CC
			/// @DnDParent : 5C17DDE1
			/// @DnDArgument : "expr" "sign(vsp)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(vsp);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6C157D3A
		/// @DnDParent : 398C5616
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14D494B5
			/// @DnDParent : 6C157D3A
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "collide"
			collide = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F30C21E
			/// @DnDParent : 6C157D3A
			/// @DnDArgument : "var" "vsp"
			vsp = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46A4278D
/// @DnDArgument : "expr" "vsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += vsp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EBE02C0
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "not" "1"
if(!(hsp == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BA0F7BB
	/// @DnDParent : 0EBE02C0
	/// @DnDArgument : "expr" "spr_run"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_run;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B826ED4
	/// @DnDParent : 0EBE02C0
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "op" "2"
	if(hsp > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33FF57E8
		/// @DnDParent : 7B826ED4
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2A6C590D
	/// @DnDParent : 0EBE02C0
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3486AADE
		/// @DnDParent : 2A6C590D
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1399D397
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46BADAAB
	/// @DnDParent : 1399D397
	/// @DnDArgument : "expr" "spr_idle"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_idle;
}