-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{	
	 "smoke02.dds",
	 "Darksmoke01.dds",
	},
	
	READY_SOUND = 
	{

	 "Gargoyle_Stone_WaitFly.ogg",
	 "Gargoyle_Stone_WaitStart1.ogg",
	 "Gargoyle_Stone_WaitStart2.ogg",
	 "Gargoyle_Stone_WalkFlyBack.ogg",
	 "Gargoyle_Stone_WalkFlyFront.ogg",

	 "Wyvern_WaitFly.ogg",
	 "Wyvern_Attack.ogg",
	 "Wyvern_MagicAttack1.ogg",
	 "Wyvern_MagicAttack2.ogg",
	 "Wyvern_WalkFlyFront.ogg",
	 "Wyvern_WalkFlyBack.ogg",
	 "Wyvern_DamageFront.ogg",
	 "Wyvern_DamageBack.ogg",
	 "Wyvern_DyingAir.ogg",
	 "Wyvern_DyingLanding.ogg",
	
	},

	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	 "DummyAttackBox_50x50x50.X",
	},
	

}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "NUI_WYVERN.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
		
	WALK_SPEED			= 400,
	RUN_SPEED			= 1000,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 1500,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	
	DAMAGE_DOWN         = FALSE,	
	--SKY_DIE             = TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "WYVERN_START_TRAPMODE",					},
	{ STATE_NAME = "WYVERN_START",						    LUA_STATE_START_FUNC = "WYVERN_START_STATE_START" },
	{ STATE_NAME = "WYVERN_FLY_WAIT_START",					},
	{ STATE_NAME = "WYVERN_FLY_WAIT",						},
	{ STATE_NAME = "WYVERN_FLY_FRONT",						},
	{ STATE_NAME = "WYVERN_FLY_FRONT_UP",					},
	{ STATE_NAME = "WYVERN_FLY_FRONT_DOWN",					},
	{ STATE_NAME = "WYVERN_FLY_BACK",						},
	{ STATE_NAME = "WYVERN_FLY_BACK_UP",					},
	{ STATE_NAME = "WYVERN_FLY_BACK_DOWN",					},
    { STATE_NAME = "WYVERN_FLY_UP",					        },
    { STATE_NAME = "WYVERN_FLY_DOWN",					    },
		
    { STATE_NAME = "WYVERN_FLY_ATTACK_READY",				STATE_COOL_TIME	= 4, },		
	{ STATE_NAME = "WYVERN_FLY_ATTACK",						},
	{ STATE_NAME = "WYVERN_FLY_ATTACK_END",					},
		
	{ STATE_NAME = "WYVERN_FLY_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "WYVERN_FLY_MAGIC_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME	= 6, },
		
	--리액션 관련		
	{ STATE_NAME = "WYVERN_DAMAGE_FRONT",				    LUA_STATE_START_FUNC = "WYVERN_DAMAGE_STATE_START" },
	{ STATE_NAME = "WYVERN_DAMAGE_BACK",					LUA_STATE_START_FUNC = "WYVERN_DAMAGE_STATE_START" },	
	
	{ STATE_NAME = "WYVERN_DAMAGE_AIR_FALL_READY",          },	
	{ STATE_NAME = "WYVERN_DAMAGE_AIR_FALL",     		    },
	{ STATE_NAME = "WYVERN_DAMAGE_AIR_FALL_LANDING",		},
	
	{ STATE_NAME = "WYVERN_DYING_LAND",					},
	{ STATE_NAME = "WYVERN_DYING_SKY",					},
		
    SIEGE_STATE					= "WYVERN_START_TRAPMODE",		
    START_STATE					= "WYVERN_FLY_WAIT_START",	
    --START_STATE					= "WYVERN_START_TRAPMODE",	
	WAIT_STATE					= "WYVERN_FLY_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "WYVERN_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "WYVERN_DAMAGE_BACK",
	--SMALL_DAMAGE_AIR			= "WYVERN_DAMAGE_AIR",
	SMALL_DAMAGE_AIR_FRONT		= "WYVERN_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR_BACK		= "WYVERN_DAMAGE_BACK",
	
	BIG_DAMAGE_LAND_FRONT		= "WYVERN_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "WYVERN_DAMAGE_BACK",
	--BIG_DAMAGE_AIR			= "WYVERN_DAMAGE_AIR",
	BIG_DAMAGE_AIR_FRONT		= "WYVERN_DAMAGE_FRONT",
	BIG_DAMAGE_AIR_BACK			= "WYVERN_DAMAGE_BACK",
	
	DOWN_DAMAGE_LAND_FRONT		= "WYVERN_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "WYVERN_DAMAGE_BACK",
	DOWN_DAMAGE_AIR				= "WYVERN_DAMAGE_FRONT",
	UP_DAMAGE					= "WYVERN_DAMAGE_FRONT",
	FLY_DAMAGE_FRONT			= "WYVERN_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "WYVERN_DAMAGE_BACK",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "WYVERN_DAMAGE_FRONT",
	DAMAGE_FLUSH_LAND_BACK		= "WYVERN_DAMAGE_BACK",
	DAMAGE_FLUSH_AIR			= "WYVERN_DAMAGE_FRONT",
	--DAMAGE_REVENGE				= "WYVERN_DAMAGE_AIR",
	
	DAMAGE_EXTRA_STATES         = { "WYVERN_DAMAGE_AIR_FALL_READY","WYVERN_DAMAGE_AIR_FALL","WYVERN_DAMAGE_AIR_FALL_LANDING", },	
	
	DYING_LAND_FRONT			= "WYVERN_DYING_LAND",
	DYING_LAND_BACK				= "WYVERN_DYING_LAND",
	DYING_SKY					= "WYVERN_DYING_SKY",		
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1600,		-- cm
		TARGET_LOST_RANGE			= 2400,		-- cm
		TARGET_SUCCESS_RATE			= 50,		-- %
		ATTACK_TARGET_RATE			= 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 700,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 400,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	FLY_CHASE_MOVE = 
	{
	    DEST_HEIGHT_GAP     = 250,  -- 타겟과 유지할 높이
	    DEST_LAND_GAP       = 400,  -- 지면상에서의 타겟과 거리기준
	    DEST_AREA       = 100,  -- 타겟과의 지면거리를 기준으로 이 범위안에 있으면 도착했다고 판단
	    
	    FLY_MOVE_INTERVAL		= 1.5,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		ESCAPE_GAP			= 1500,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		--RATE	= 0,
		--MY_HP	= 0,
	}	
}

WYVERN_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.01 , "Gargoyle_Stone_WaitStart1.ogg" },
	SOUND_PLAY1					= { 1.50 , "Gargoyle_Stone_WaitStart2.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
		
    RIGHT                       = TRUE,		
		
    --FLY_AI                      = FALSE,
    PASSIVE_SPEED_Y				= 0,
    ENABLE_HEIGHT_FIX           = TRUE,
    SHOW_NAME                   = TRUE,
    
    SPEED_X						= 0,
	SPEED_Y						= 0,		
	NEVER_MOVE					= TRUE,
    --ADD_POS_Y					= 400,
    		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"WYVERN_FLY_WAIT",							},
		
	},
}

WYVERN_START_TRAPMODE = 
{
	ANIM_NAME					= "TrapMode",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
    RIGHT                       = TRUE,		
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	ADD_POS_Y					= 400,
	
	--FLY_AI                      = FALSE,
	PASSIVE_SPEED_Y				= 0,
    ENABLE_HEIGHT_FIX           = TRUE,
    SHOW_NAME                   = FALSE, 
    
	INVINCIBLE					= { 0, 100, }, 		
	
	NEVER_MOVE					= TRUE,
	--ALLOW_DIR_CHANGE			= FALSE,
	--VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.3,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_START",				"CT_WYVERN_START",	},
	},
	
	CT_WYVERN_START = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
}

WYVERN_FLY_WAIT_START = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
		
    --FLY_AI                      = FALSE,
    SHOW_NAME                   = TRUE,
    PASSIVE_SPEED_Y				= 0,
    ENABLE_HEIGHT_FIX           = TRUE,
    
    SPEED_X						= 0,
	SPEED_Y						= 0,		
	NEVER_MOVE					= TRUE,
    ADD_POS_Y					= 400,
    		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"WYVERN_FLY_WAIT",							},
		
	},
}

WYVERN_FLY_WAIT = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.136, "Wyvern_WaitFly.ogg", 30 },

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	EVENT_PROCESS = 
	{	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},
	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		            "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},
	    	 
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "WYVERN_FLY_FRONT_DOWN",						},		
		
	},
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 30,
	},
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},	
}

WYVERN_FLY_FRONT = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.073, "Gargoyle_Stone_WalkFlyFront.ogg" },
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},
	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},
	    
	    
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],				"WYVERN_FLY_FRONT_DOWN",						},
				
	},
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},	
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
}
WYVERN_FLY_FRONT_UP = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 3,

	SOUND_PLAY0					= { 0.073, "Gargoyle_Stone_WalkFlyFront.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},	
			
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],					"WYVERN_FLY_FRONT",						    },
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],				"WYVERN_FLY_FRONT_DOWN",						},
		
		
	},
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},	
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
}
WYVERN_FLY_FRONT_DOWN = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= -3,

	SOUND_PLAY0					= { 0.078, "Wyvern_WalkFlyFront.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},
	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},			
	},
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},	
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
}

WYVERN_FLY_BACK = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.052, "Wyvern_WalkFlyBack.ogg" },
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "WYVERN_FLY_FRONT_DOWN",						},				
		
		
	},	
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
}
WYVERN_FLY_BACK_UP = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 3,

	SOUND_PLAY0					= { 0.052, "Wyvern_WalkFlyBack.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},			    
		
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "WYVERN_FLY_FRONT_DOWN",						},		
		
	},	
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
}
WYVERN_FLY_BACK_DOWN = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= -3,

	SOUND_PLAY0					= { 0.052, "Wyvern_WalkFlyBack.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    "WYVERN_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
		
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "WYVERN_FLY_FRONT_DOWN",						},		
			
	},	
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
}


WYVERN_FLY_UP = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.364, "Gargoyle_Stone_WaitFly.ogg" },
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= 3,
		
		
	EVENT_PROCESS = 
	{	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			        "WYVERN_FLY_WAIT",		                    "CT_WYVERN_FLY_WAIT",	},	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				        "WYVERN_FLY_DOWN",						    },    	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},
		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "WYVERN_FLY_FRONT_DOWN",					},				
	},
	
	CT_WYVERN_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
	
	
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},	
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},
	
	
}
WYVERN_FLY_DOWN = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.134, "Wyvern_WaitFly.ogg" },
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= -3,
	
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			        "WYVERN_FLY_WAIT",		                    "CT_WYVERN_FLY_WAIT",	},	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    "WYVERN_FLY_UP",						        },	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "WYVERN_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "WYVERN_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"WYVERN_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"WYVERN_FLY_BACK_DOWN",						},    	 
		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_ATTACK_READY",		    "CT_WYVERN_FLY_ATTACK_READY",	},	    
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WYVERN_FLY_MAGIC_ATTACK_A",		    "CT_WYVERN_FLY_MAGIC_ATTACK_A",	},	    
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "WYVERN_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"WYVERN_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "WYVERN_FLY_FRONT_DOWN",						},		
		
	},
	
	CT_WYVERN_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
	
		
	CT_WYVERN_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 20,
	},	
	CT_WYVERN_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},	
}

WYVERN_FLY_ATTACK_READY = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.246, "Gargoyle_Stone_WaitFly.ogg" },

    --VIEW_TARGET					= TRUE,
    --ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	    
	EVENT_INTERVAL_TIME0		= 2,
			
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WYVERN_FLY_ATTACK", },
	},
	
	
}

WYVERN_FLY_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_Attack.ogg" },

    
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	FLY_AI                      = FALSE,	
	SPEED_X                     = INIT_PHYSIC["RUN_SPEED"] * 3.0,
	SPEED_Y                     = INIT_PHYSIC["RUN_SPEED"] * -0.7,
    G_ACCEL                       = 0,
    DOWN_ACCEL                    = 0,
    
	EVENT_INTERVAL_TIME0		= 2,	
	
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"WYVERN_FLY_ATTACK_END",  },
	},
		
	
	
	ATTACK_TIME0				= { 0, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		--ATTACK_ALL_TEAM	= TRUE,
	
		CAN_REVENGE		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 1200,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

WYVERN_FLY_ATTACK_END = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
    
	IMMADIATE_PACKET_SEND		= TRUE,
    
    --PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 5,
    SPEED_X                     = INIT_PHYSIC["RUN_SPEED"] * 1.2,    
    --ENABLE_HEIGHT_FIX           = TRUE,
   
    
	EVENT_INTERVAL_TIME0		= 1,
		
	--FLY_AI                      = FALSE,
	--SHOW_NAME                   = TRUE,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	            "WYVERN_FLY_WAIT", }	
	},	
}

WYVERN_FLY_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "MagicAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    --ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 1.043, "Wyvern_MagicAttack1.ogg" },
	SOUND_PLAY1					= { 1.248, "Wyvern_MagicAttack2.ogg" },
	
	ENABLE_HEIGHT_FIX           = TRUE,
	    
	EVENT_INTERVAL_TIME0		= 2,
		
	--FLY_AI                      = FALSE,
	SUPER_ARMOR                 = TRUE,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WYVERN_FLY_WAIT", },
	},	

	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 1.333, "Flare_Cuttysark_FireBall03_Mouth", FALSE, "Dummy1_Mouse", TRUE, TRUE, 0, -20, 0, TRUE, },
		{ TRUE, 1.333, "Flare_Cuttysark_FireBall04_Mouth", FALSE, "Dummy1_Mouse", TRUE, TRUE, 0, -20, 0, TRUE, },
	},

}


WYVERN_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.159, "Wyvern_DamageFront.ogg", 20 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	--FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WYVERN_FLY_WAIT", },
	},
	
}

WYVERN_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.369, "Wyvern_DamageBack.ogg", 20 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	--FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WYVERN_FLY_WAIT", },
	},
	
}

WYVERN_DAMAGE_AIR_FALL_READY =
{
    ANIM_NAME					= "Dying_Air",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	--ANIM_SPEED                  = 1.5,
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.174, "Wyvern_DyingAir.ogg" },
	
	SUPER_ARMOR                 = TRUE,
    SUPER_ARMOR_NOT_RED         = TRUE, 
    
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WYVERN_DAMAGE_AIR_FALL", },
	},
}


WYVERN_DAMAGE_AIR_FALL =
{
    ANIM_NAME					= "Dying_Fall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	SUPER_ARMOR                 = TRUE,
    SUPER_ARMOR_NOT_RED         = TRUE, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"WYVERN_DAMAGE_AIR_FALL_LANDING",				},
	},
}

WYVERN_DAMAGE_AIR_FALL_LANDING = 
{
    ANIM_NAME					= "Dying_Landing",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.094, "Wyvern_DyingLanding.ogg" },
	
	SUPER_ARMOR                 = TRUE,
    SUPER_ARMOR_NOT_RED         = TRUE, 
    
	FLY_AI                      = FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"WYVERN_FLY_WAIT",				},
	},
}

WYVERN_DYING_LAND = 
{
	ANIM_NAME					= "Dying_Landing",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0					= { 0.094, "Wyvern_DyingLanding.ogg" },

	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

WYVERN_DYING_SKY = 
{
	ANIM_NAME					= "Dying_Landing",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	--LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.094, "Wyvern_DyingLanding.ogg" },
	SOUND_PLAY1					= { 0.12, "Down.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

------------------------------------------------------------------------------------------------------------------


function WYVERN_DAMAGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
--[[
    for i=0, 6 do
	    pEffect = pNPCUnit:GetDamageEffect_LUA(i)
	    if pEffect ~= nil then
	        pDamageEffect = pX2Game:GetDamageEffect()
			if pDamageEffect:IsLiveInstance( pEffect ) == true then				    
		        pDamageEffect:DestroyInstance( pEffect )
		    end
	    end
        
	    pNPCUnit:ClearDamageEffect_LUA( i )
	end
--]]	
    if pNPCUnit:GetNowHP() <= 0 then	    
	     pNPCUnit:StateChange_LUA("WYVERN_DAMAGE_AIR_FALL_READY", true)
	     return
	end
end


function WYVERN_FLY_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    unitLandPos = pNPCUnit:GetLandPosition_LUA()	
	pDamageEffect = pX2Game:GetDamageEffect()			
    
	if pNPCUnit:AnimEventTimer_LUA( 1.33 ) then					
        
        vRot = pNPCUnit:GetRotateDegree()        
        vRot.z = -42        
        pDamageEffect:CreateInstance_LUA2( pNPCUnit, "WYVERN_FIREBALL", pNPCUnit:GetBonePos_LUA( "Dummy1_Mouse" ), unitLandPos.y, vRot)        
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.555 ) then					
        
        vRot = pNPCUnit:GetRotateDegree()        
        vRot.z = -62        
        pDamageEffect:CreateInstance_LUA2( pNPCUnit, "WYVERN_FIREBALL", pNPCUnit:GetBonePos_LUA( "Dummy1_Mouse" ), unitLandPos.y, vRot)        
	end

end

function WYVERN_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
    if pMajorXMeshPlayer ~= nil then
        vPos = pNPCUnit:GetPos()
		rotDegree 	= pNPCUnit:GetRotateDegree()
		
	    pMajorXMeshPlayer:CreateInstance_LUA( "Gargoyle_Broken_Rock", vPos, rotDegree, rotDegree, 14 )
    end	    
end

