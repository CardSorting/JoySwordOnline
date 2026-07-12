-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"WoodPostTrap.ogg",
		"WoodPostTrap_Down.ogg",
		"WoodPostTrap_Ready.ogg",		
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_WoodPostTrap.X",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Spike_Leaf1",
		
	SHOW_ON_MINIMAP		= FALSE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "WOOD_POST_TRAP_WAIT",						},
	--{ STATE_NAME = "WOOD_POST_TRAP_ATTACK",					LUA_FRAME_MOVE_FUNC = "WOOD_POST_TRAP_ATTACK_FRAME_MOVE"	},
	{ STATE_NAME = "WOOD_POST_TRAP_ATTACK",					STATE_COOL_TIME = 3, },

	START_STATE					= "WOOD_POST_TRAP_WAIT",
	WAIT_STATE					= "WOOD_POST_TRAP_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "WOOD_POST_TRAP_WAIT",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "WOOD_POST_TRAP_WAIT",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}


WOOD_POST_TRAP_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WOOD_POST_TRAP_ATTACK",				"CT_WOOD_POST_TRAP_ATTACK",	},
	},
	
	CT_WOOD_POST_TRAP_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,
		RATE						= 90,
	},
}

WOOD_POST_TRAP_ATTACK = 
{
	ANIM_NAME					= "AttackUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,


    SOUND_PLAY0			= { 0.081, "WoodPostTrap_Ready.ogg" },
    SOUND_PLAY1			= { 0.442, "WoodPostTrap.ogg" },
    SOUND_PLAY2			= { 0.473, "WoodPostTrap.ogg" },
    SOUND_PLAY3			= { 0.503, "WoodPostTrap.ogg" },
    SOUND_PLAY4			= { 1.480, "WoodPostTrap_Down.ogg" },
    SOUND_PLAY5			= { 1.531, "WoodPostTrap_Down.ogg" },
    SOUND_PLAY6			= { 1.551, "WoodPostTrap_Down.ogg" },

	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WOOD_POST_TRAP_WAIT",					},
	},
	
	ATTACK_TIME0				= { 1.3, 1.623 },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 800,
		--BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
--[[	
		DAMAGE_DATA_LAST =
		{
			DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
			HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
			REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
			
			DAMAGE = 
			{
				PHYSIC		= 200.0,
			},
			
			BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
			BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],
			
			CAMERA_CRASH_GAP		= 5.0,	
			CAMERA_CRASH_TIME		= 0.2,		
		},
--]]

}



--[[
	function WOOD_POST_TRAP_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
		
		if pNPCUnit:AnimEventTimer_LUA( 0.57 ) then
			pNPCUnit:ClearHitUnitList_LUA()
			pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
		end

	end
--]]
