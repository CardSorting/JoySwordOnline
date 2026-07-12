-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 270.0,
	UNIT_HEIGHT		= 270.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.05,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    	      
	},
	
	READY_SOUND = 
	{          
		"Amethyst_Dying_Land_Front_hand.ogg",
		"Amethyst_WaitStartHands.ogg",
		"Amethyst_Slash.ogg",
		
	},
	
		
	READY_XMESH = 
	{	    
	   
	},
	
	READY_XSKIN_MESH = 
	{	    
	    
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "AMETHYST_Hand.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 750,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 20000,
	MP_CHANGE_RATE		= 3,
	MP_CHARGE_RATE		= 1200,
	
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--DRAW_SMALL_MP_BAR	= TRUE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Bip01_Head",
	
	--RAGE_COUNT_MAX		= 30,
	--RAGE_TIME_MAX		= 3,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DIE_FLY             = 0,
	ATTRIBUTE_EMOTION_FLAG  = FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "AMETHYST_ARM_WAIT",						    },
	{ STATE_NAME = "AMETHYST_ARM_WAIT_START",				    LUA_STATE_START_FUNC = "AMETHYST_ARM_WAIT_START_STATE_START",},
		
	{ STATE_NAME = "AMETHYST_ARM_WALK_START",					LUA_STATE_START_FUNC = "AMETHYST_ARM_WALK_START_STATE_START",
	                                                            STATE_COOL_TIME = 20, },
    { STATE_NAME = "AMETHYST_ARM_WALK_END",					    LUA_STATE_START_FUNC = "AMETHYST_ARM_WALK_END_STATE_START",},

    { STATE_NAME = "AMETHYST_ARM_SPECIAL_WALK_START",			LUA_STATE_START_FUNC = "AMETHYST_ARM_SPECIAL_WALK_START_STATE_START",
	                                                            STATE_COOL_TIME = 5, },
    { STATE_NAME = "AMETHYST_ARM_SPECIAL_WALK_END",				LUA_STATE_START_FUNC = "AMETHYST_ARM_SPECIAL_WALK_END_STATE_START",},   
    

    { STATE_NAME = "AMETHYST_ARM_FORCE_ATTACK",					},
    	                                                                    
	--{ STATE_NAME = "AMETHYST_ARM_ATTACK",					    LUA_STATE_START_FUNC = "AMETHYST_ARM_ATTACK_STATE_START", STATE_COOL_TIME = 10, },
	{ STATE_NAME = "AMETHYST_ARM_MAGIC_ATTACK_A",			    LUA_STATE_START_FUNC = "AMETHYST_ARM_MAGIC_ATTACK_A_STATE_START", 
	                                                            LUA_FRAME_MOVE_FUNC  = "AMETHYST_ARM_MAGIC_ATTACK_A_FRAME_MOVE",  STATE_COOL_TIME = 10, },
	{ STATE_NAME = "AMETHYST_ARM_MAGIC_ATTACK_B1",			    LUA_STATE_START_FUNC = "AMETHYST_ARM_MAGIC_ATTACK_B1_STATE_START",
	                                                            LUA_FRAME_MOVE_FUNC  = "AMETHYST_ARM_MAGIC_ATTACK_B1_FRAME_MOVE", STATE_COOL_TIME = 16, },
	{ STATE_NAME = "AMETHYST_ARM_MAGIC_ATTACK_B2",			    LUA_STATE_START_FUNC = "AMETHYST_ARM_MAGIC_ATTACK_B2_STATE_START", 
	                                                            LUA_FRAME_MOVE_FUNC  = "AMETHYST_ARM_MAGIC_ATTACK_B2_FRAME_MOVE", STATE_COOL_TIME = 20, },
	{ STATE_NAME = "AMETHYST_ARM_MAGIC_ATTACK_C",			    LUA_STATE_START_FUNC = "AMETHYST_ARM_MAGIC_ATTACK_C_STATE_START", 
	                                                            LUA_FRAME_MOVE_FUNC  = "AMETHYST_ARM_MAGIC_ATTACK_C_FRAME_MOVE",	STATE_COOL_TIME = 15, },
	{ STATE_NAME = "AMETHYST_ARM_MAGIC_ATTACK_SPECIAL",			LUA_STATE_START_FUNC = "AMETHYST_ARM_MAGIC_ATTACK_SPECIAL_STATE_START", 
	                                                            LUA_FRAME_MOVE_FUNC  = "AMETHYST_ARM_MAGIC_ATTACK_SPECIAL_FRAME_MOVE",},
	
	--리액션 관련
	{ STATE_NAME = "AMETHYST_ARM_DAMAGE",				        },
    		
	{ STATE_NAME = "AMETHYST_ARM_DYING_LAND_FRONT",			    LUA_STATE_START_FUNC = "AMETHYST_ARM_DYING_LAND_STATE_START",},
	{ STATE_NAME = "AMETHYST_ARM_DYING_LAND_BACK",			    LUA_STATE_START_FUNC = "AMETHYST_ARM_DYING_LAND_STATE_START",},
	{ STATE_NAME = "AMETHYST_ARM_DYING_SKY",					LUA_STATE_START_FUNC = "AMETHYST_ARM_DYING_LAND_STATE_START",},
	
	START_STATE					= "AMETHYST_ARM_WAIT_START",
	WAIT_STATE					= "AMETHYST_ARM_WAIT",	
	
	SMALL_DAMAGE_LAND_FRONT		= "AMETHYST_ARM_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "AMETHYST_ARM_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "AMETHYST_ARM_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "AMETHYST_ARM_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "AMETHYST_ARM_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "AMETHYST_ARM_DAMAGE",
	FLY_DAMAGE_FRONT			= "AMETHYST_ARM_DAMAGE",
	FLY_DAMAGE_BACK				= "AMETHYST_ARM_DAMAGE",
	SMALL_DAMAGE_AIR			= "AMETHYST_ARM_DAMAGE",	
	BIG_DAMAGE_AIR				= "AMETHYST_ARM_DAMAGE",
	DOWN_DAMAGE_AIR				= "AMETHYST_ARM_DAMAGE",
	UP_DAMAGE					= "AMETHYST_ARM_DAMAGE",
	DAMAGE_REVENGE				= "AMETHYST_ARM_DAMAGE",
	
	DYING_LAND_FRONT			= "AMETHYST_ARM_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "AMETHYST_ARM_DYING_LAND_BACK",
	DYING_SKY					= "AMETHYST_ARM_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "AMETHYST_ARM_COMMON_FRAME_MOVE",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 8000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2000,		-- cm
		TARGET_LOST_RANGE			= 3000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  600,
		FAR_WALK_RATE		= 100,   -- 800,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,
		PATROL_RANGE			= 0,
		PATROL_COOL_TIME		= 0,
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
		
		LINE_END_RANGE		= 80,	-- cm
	},

}


AMETHYST_ARM_WALK_START = 
{
	ANIM_NAME					= "WalkStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WALK_END",					},
	},	

	

}

AMETHYST_ARM_WALK_END = 
{
	ANIM_NAME					= "WalkEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	--NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_FORCE_ATTACK",					},
	},	
		
	
	
}

AMETHYST_ARM_SPECIAL_WALK_START = 
{
	ANIM_NAME					= "WalkStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_SPECIAL_WALK_END",					},
	},	
	
}

AMETHYST_ARM_SPECIAL_WALK_END = 
{
	ANIM_NAME					= "WalkEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	--NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_MAGIC_ATTACK_SPECIAL",					},
	},	
		
	
	
}


AMETHYST_ARM_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		    "AMETHYST_ARM_WALK_START",						"CT_AMETHYST_ARM_WALK_START1",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		    "AMETHYST_ARM_WALK_START",						"CT_AMETHYST_ARM_WALK_START2",	},
	    --{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			        "AMETHYST_ARM_WALK_START",				},
	    --{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"AMETHYST_ARM_WALK_START",				},
	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		    "AMETHYST_ARM_SPECIAL_WALK_START",	"CT_AMETHYST_ARM_MAGIC_ATTACK_SPECIAL",	},	    
	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_ATTACK",				"CT_AMETHYST_ARM_ATTACK",		        },
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_C",		"CT_AMETHYST_ARM_MAGIC_ATTACK_C",		},	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_B1",		"CT_AMETHYST_ARM_MAGIC_ATTACK_B1",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_B2",		"CT_AMETHYST_ARM_MAGIC_ATTACK_B2",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_A",		"CT_AMETHYST_ARM_MAGIC_ATTACK_A",		},
	    
	},
	
	CT_AMETHYST_ARM_WALK_START1 = 
	{	
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_OVER_TARGET_NEAR   = 400,
	    RATE                        = 30,
	},
	CT_AMETHYST_ARM_WALK_START2 = 
	{	
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR     = 600,
	    RATE                        = 30,
	},
	
	CT_AMETHYST_ARM_MAGIC_ATTACK_SPECIAL =
	{
	    EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 99999,
		MY_MP_MORE_THAN_PERCENT		= 100,
		RATE	                    = 100,
	},
	
	-- CT_AMETHYST_ARM_ATTACK = 
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 400,
		-- RATE						= 30,
	-- },
	CT_AMETHYST_ARM_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1600,
		RATE						= 50,
	},
	CT_AMETHYST_ARM_MAGIC_ATTACK_B1 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 30,
	},
	CT_AMETHYST_ARM_MAGIC_ATTACK_B2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 30,
	},
	CT_AMETHYST_ARM_MAGIC_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
}

AMETHYST_ARM_FORCE_ATTACK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	   -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_ATTACK",		        "CT_AMETHYST_ARM_ATTACK",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_C",		"CT_AMETHYST_ARM_MAGIC_ATTACK_C",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_B1",		"CT_AMETHYST_ARM_MAGIC_ATTACK_B1",		},	    	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_B2",		"CT_AMETHYST_ARM_MAGIC_ATTACK_B2",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"AMETHYST_ARM_MAGIC_ATTACK_A",		"CT_AMETHYST_ARM_MAGIC_ATTACK_A",		},
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"AMETHYST_ARM_WAIT",		},
	},

    -- CT_AMETHYST_ARM_ATTACK = 
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 400,
		-- RATE						= 30,
	-- },		
	CT_AMETHYST_ARM_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1600,
		RATE						= 60,
	},
	CT_AMETHYST_ARM_MAGIC_ATTACK_B1 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 30,
	},
	CT_AMETHYST_ARM_MAGIC_ATTACK_B2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 30,
	},
	CT_AMETHYST_ARM_MAGIC_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	
	

}

AMETHYST_ARM_WAIT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	

    SOUND_PLAY0			= { 1.297, "Amethyst_WaitStartHands.ogg" },

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.01, "Flare_Amethyst_Hand01", FALSE, "LHand_Dummy02", FALSE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.01, "Flare_Amethyst_Hand01", FALSE, "RHand_Dummy01", FALSE, TRUE, 0, 0, 0, TRUE, },
	},
	
	

}


-- AMETHYST_ARM_ATTACK = 
-- {
	-- ANIM_NAME					= "Attack",
	-- PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION					= FALSE,
	
	-- CAN_PUSH_UNIT				= FALSE,
	-- CAN_PASS_UNIT				= FALSE,	
	
	-- INVINCIBLE					= { 0, 100, },
	
	-- SPEED_X						= 0,
	-- SPEED_Y						= 0,
	
	-- SOUND_PLAY0			= { 0.671, "Amethyst_Slash.ogg" },
	 
	-- PASSIVE_SPEED_X				= 0,
	-- PASSIVE_SPEED_Y				= 0,
	-- NEVER_MOVE					= TRUE,
	
	-- ALLOW_DIR_CHANGE			= FALSE,
	-- VIEW_TARGET					= FALSE,
	
	-- IMMADIATE_PACKET_SEND		= TRUE,
	-- EVENT_INTERVAL_TIME0		= 1,
	
	-- EVENT_PROCESS = 
	-- {
	    -- { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	-- },	
		
	
	-- ATTACK_TIME0				= { 0.913, 0.988, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.0,
		-- },		
		
		-- BACK_SPEED_X			= 1800,
		-- BACK_SPEED_Y			= 1500,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	-- },
	
-- }

AMETHYST_ARM_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "AttackReadyA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	},	
	
		
	ATTACK_TIME0				= { 1.466, 1.553, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X			= 1800,
		BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.2, "GhostAttack03_Smoke_Amethyst_AttackReadyA01", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.2, "GhostAttack03_Smoke_Amethyst_AttackReadyA02", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
	
}

AMETHYST_ARM_MAGIC_ATTACK_B1 = 
{
	ANIM_NAME					= "AttackReadyB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	},	
	
		
	ATTACK_TIME0				= { 1.464, 1.776, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.0,
		-- },		
		
		-- BACK_SPEED_X			= 500,
		-- BACK_SPEED_Y			= 1700,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	-- },
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.3, "Flare_Amethyst_AttackReadyB", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.15, "Ring_Amethyst_AttackReadyB01", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
	
    
}

AMETHYST_ARM_MAGIC_ATTACK_B2 = 
{
	ANIM_NAME					= "AttackReadyB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	},	
	
		
	-- ATTACK_TIME0				= { 1.464, 1.776, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.0,
		-- },		
		
		-- BACK_SPEED_X			= 500,
		-- BACK_SPEED_Y			= 1700,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	-- },
	
	TALK_BOX =
	{
 		{ RATE = 100,		MESSAGE = STR_ID_2645 },
 	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.3, "Flare_Amethyst_AttackReadyB", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.3, "GhostAttack04_Smoke_Amethyst_AttackReadyB2_01", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.3, "GhostAttack04_Smoke_Amethyst_AttackReadyB2_02", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
	    	
}

AMETHYST_ARM_MAGIC_ATTACK_C = 
{
	ANIM_NAME					= "MagicAttackC",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15129,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	},	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.4, "Flare_Amethyst_MagicAttack_Hand01", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.4, "Flare_Amethyst_MagicAttack_Hand01", FALSE, "RHand_Dummy01", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 0.3, "GhostAttack04_Smoke_Amethyst_AttackReadyB2_02", FALSE, "LHand_Dummy02", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
	

    
}

AMETHYST_ARM_MAGIC_ATTACK_SPECIAL = 
{
	ANIM_NAME					= "Special",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },

  --  SOUND_PLAY0			= { 0.058, "NASOD_SPRAY_Walk.ogg" },
  --  SOUND_PLAY1			= { 0.488, "NASOD_SPRAY_Walk.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	RIGHT                       = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15130,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",					},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 1.0, "Flare_Amethyst_Special_Hand01", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 1.0, "Flare_Amethyst_Special_Hand02", FALSE, "Bip01_L_Hand", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 1.0, "Flare_Amethyst_Special_Hand01", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, 0, 0, TRUE, },
		{ TRUE, 1.0, "Flare_Amethyst_Special_Hand02", FALSE, "Bip01_R_Hand", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
	
    
}


AMETHYST_ARM_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_ARM_WAIT",		},
	},
}



AMETHYST_ARM_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Dying_Land_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 3.540, "Amethyst_Dying_Land_Front_hand.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
AMETHYST_ARM_DYING_LAND_BACK = 
{
	ANIM_NAME					= "Dying_Land_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

--    SOUND_PLAY0			= { 0.1, "AirShip_SwordMan_Scream.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

AMETHYST_ARM_DYING_SKY = 
{
	ANIM_NAME					= "Dying_Land_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

--    SOUND_PLAY0			= { 0.1, "AirShip_SwordMan_Scream.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}






--------------------------------------------------------------------
--------------------------------------------------------------------


function CF_AMETHYST_ARM_WIN( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end
end

function AMETHYST_ARM_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    
end

function AMETHYST_ARM_WALK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_WALK_START", true)
    end
end


function AMETHYST_ARM_WALK_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_WALK_END", true)
    end
    
    pUser = pNPCUnit:GetTargetUser()    
    if pUser ~= nil then
        unitPos = pUser:GetPos() 
        if pNPCUnit:GetRandVal() % 2 == 0 then
            -- 유저기준 오른쪽            
            WalkPos = pX2Game:GetLineMap():GetRandomPositionDir( unitPos, 800, true, true )
            bIsRight = false                
        else
            -- 유저기준 왼쪽
            WalkPos = pX2Game:GetLineMap():GetRandomPositionDir( unitPos, 800, true, false )
            bIsRight = true                
        end
        WalkLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( WalkPos )
        pNPCUnit:SetPosition( WalkLandPos , bIsRight)
    end
      
end

function AMETHYST_ARM_SPECIAL_WALK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_WALK_START", true)
    end
end


function AMETHYST_ARM_SPECIAL_WALK_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_WALK_END", true)
    end
    
    -- 1번 스타트 포지션으로 이동
    vStartPos = pX2Game:GetLineMap():GetStartPosition( 1 )
    vPos = pX2Game:GetLineMap():GetLandPosition_LUA( vStartPos )
    pNPCUnit:SetPosition( vPos , false)
           
end




function AMETHYST_ARM_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_ATTACK", true)
    end
end

function AMETHYST_ARM_MAGIC_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_MAGIC_ATTACK_A", true)
    end
end

function AMETHYST_ARM_MAGIC_ATTACK_B1_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_MAGIC_ATTACK_B1", true)
    end
end

function AMETHYST_ARM_MAGIC_ATTACK_B2_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_MAGIC_ATTACK_B2", true)
    end
end

function AMETHYST_ARM_MAGIC_ATTACK_C_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_MAGIC_ATTACK_C", true)
    end
end

function AMETHYST_ARM_MAGIC_ATTACK_SPECIAL_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pUnit:StateChange_LUA("AMETHYST_BODY_MAGIC_ATTACK_SPECIAL", true)
        pUnit:SetNowMP(0)
    end    
end

function AMETHYST_ARM_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	
		vLandPos = pNPCUnit:GetLandPosition_LUA()
		
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AMETHYST_MAGICATTACK_A", vLandPos, vLandPos.y )
		end	
	end	
end

function AMETHYST_ARM_MAGIC_ATTACK_B1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	
		vLandPos = pNPCUnit:GetLandPosition_LUA()
		vDirVector = pNPCUnit:GetDirVector()	
		bIsRight = pNPCUnit:GetIsRight()
		
		if bIsRight == true then
			vBonePos = MovePos( vLandPos, vDirVector, 10 )	
		else
			vBonePos = MovePos( vLandPos, vDirVector, -10 )	
		end			
		
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    vBonePos.y = vBonePos.y - 50
		    pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AMETHYST_MAGICATTACK_B1", vBonePos, vBonePos.y )
		end	
	end	
	
	if pNPCUnit:AnimEventTimer_LUA( 1.67 ) then
	    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 1.3 )
	end
end

function AMETHYST_ARM_MAGIC_ATTACK_B2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	
		vLandPos = pNPCUnit:GetLandPosition_LUA()
		
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    vLandPos.y = vLandPos.y - 150
		    pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AMETHYST_MAGICATTACK_B2", vLandPos, vLandPos.y )
		end	
	end	
	
	if pNPCUnit:AnimEventTimer_LUA( 1.73 ) then
	    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 1.3 )
	end
end

function AMETHYST_ARM_MAGIC_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	
		vLandPos = pNPCUnit:GetLandPosition_LUA()
		
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AMETHYST_MAGICATTACK_C", vLandPos, vLandPos.y )
		end	
	end	
end

function AMETHYST_ARM_MAGIC_ATTACK_SPECIAL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
	
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	
		vLandPos = pNPCUnit:GetLandPosition_LUA()
				
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then		
		    pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AMETHYST_SPECIAL_ATTACK", vLandPos, vLandPos.y )
		end	
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
	    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 7.0, 1.9 )
	end

	if pNPCUnit:AnimEventTimer_LUA( 2.3 ) then
	    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 18.0, 0.8 )
	end

	if pNPCUnit:AnimEventTimer_LUA( 3.91 ) then
	    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 1 )
	end
end


function AMETHYST_ARM_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
    if pUnit ~= nil then
        pNPCUnit:SetExtraDamagePack( pUnit:GetExtraDamagePack() )
    end       
    
end


function AMETHYST_ARM_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	
end

------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
