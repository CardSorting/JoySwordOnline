-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 0.45,
	-- UNIT_SCALE		= 0.625,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"Sander_Aelo_Feather.tga",	
	"Colorballgray.dds",
	"acce_armItem_Feather.dds",
	"Arme_Ring2.dds",
	"Lire_02_CrescentKick02.dds",
	},
	
	READY_SOUND = 
	{
	"Pet_Fly01.ogg",
	"Pet_Fly02.ogg",
	"Bat_Fly.ogg",
	"JumpLand2.ogg",
	"Wing_Harpy_Voice_AttackA01.ogg",
	"Wing_Harpy_Voice_AttackB01.ogg",
	"Wing_Harpy_Voice_DamageA01.ogg",
	"Wing_Harpy_Voice_DamageB01.ogg",
	"Wing_Harpy_Voice_Dying01.ogg",
	"Wing_Harpy_Voice_Wait01.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
	"Wing_Harpy_MA_A_Attack_Dummy.X",
	"Wing_Harpy_MA_A_wing_A.X",
	"Wing_Harpy_MA_A_wing_B.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Wing_Harpy.x",	
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
	
	DEFAULT_ANIM_SPEED 		= 2.0,
	
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
	SKY_DIE             = TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "WING_HARPY_FLY_WAIT_START",					},
	{ STATE_NAME = "WING_HARPY_FLY_WAIT",						},
	
	{ STATE_NAME = "WING_HARPY_FLY_FRONT",						},
	{ STATE_NAME = "WING_HARPY_FLY_FRONT_UP",					},
	{ STATE_NAME = "WING_HARPY_FLY_FRONT_DOWN",					},
	{ STATE_NAME = "WING_HARPY_FLY_BACK",						},
	{ STATE_NAME = "WING_HARPY_FLY_BACK_UP",					},
	{ STATE_NAME = "WING_HARPY_FLY_BACK_DOWN",					},
    { STATE_NAME = "WING_HARPY_FLY_UP",					        },
    { STATE_NAME = "WING_HARPY_FLY_DOWN",					    },	
	{ STATE_NAME = "WING_HARPY_FLY_ACROSS",						},
		
	-- 공중 돌진 공격
    { STATE_NAME = "WING_HARPY_FLY_ATTACK_READY",				STATE_COOL_TIME	= 3, 												},		
	{ STATE_NAME = "WING_HARPY_FLY_ATTACK",						},
	{ STATE_NAME = "WING_HARPY_FLY_ATTACK_END",					LUA_FRAME_MOVE_FUNC = "WING_HARPY_FLY_ATTACK_END_FRAME_MOVE", 		},
		
	-- 원거리 바람 공격
	{ STATE_NAME = "WING_HARPY_FLY_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "WING_HARPY_FLY_MAGIC_ATTACK_A_FRAME_MOVE", 
																STATE_COOL_TIME	= 5, 												},
		
	--리액션 관련		
	{ STATE_NAME = "WING_HARPY_DAMAGE_FRONT",				    LUA_STATE_START_FUNC = "WING_HARPY_DAMAGE_STATE_START" 				},
	{ STATE_NAME = "WING_HARPY_DAMAGE_BACK",					LUA_STATE_START_FUNC = "WING_HARPY_DAMAGE_STATE_START" 				},	
	
	{ STATE_NAME = "WING_HARPY_DYING_SKY",						LUA_STATE_START_FUNC = "WING_HARPY_DYING_SKY_STATE_START", 			},
	{ STATE_NAME = "WING_HARPY_DYING_SKY_FALL",					},
	{ STATE_NAME = "WING_HARPY_DYING_LANDING",					},
			
    START_STATE					= "WING_HARPY_FLY_WAIT_START",	
	WAIT_STATE					= "WING_HARPY_FLY_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "WING_HARPY_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "WING_HARPY_DAMAGE_BACK",
	SMALL_DAMAGE_AIR_FRONT		= "WING_HARPY_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR_BACK		= "WING_HARPY_DAMAGE_BACK",
	
	BIG_DAMAGE_LAND_FRONT		= "WING_HARPY_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "WING_HARPY_DAMAGE_BACK",
	BIG_DAMAGE_AIR_FRONT		= "WING_HARPY_DAMAGE_FRONT",
	BIG_DAMAGE_AIR_BACK			= "WING_HARPY_DAMAGE_BACK",
	
	DOWN_DAMAGE_LAND_FRONT		= "WING_HARPY_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "WING_HARPY_DAMAGE_BACK",
	DOWN_DAMAGE_AIR				= "WING_HARPY_DAMAGE_FRONT",
	UP_DAMAGE					= "WING_HARPY_DAMAGE_FRONT",
	FLY_DAMAGE_FRONT			= "WING_HARPY_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "WING_HARPY_DAMAGE_BACK",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "WING_HARPY_DAMAGE_FRONT",
	DAMAGE_FLUSH_LAND_BACK		= "WING_HARPY_DAMAGE_BACK",
	DAMAGE_FLUSH_AIR			= "WING_HARPY_DAMAGE_FRONT",
	--DAMAGE_REVENGE				= "WING_HARPY_DAMAGE_AIR",
	
	DYING_LAND_FRONT			= "WING_HARPY_DYING_LANDING",
	DYING_LAND_BACK				= "WING_HARPY_DYING_LANDING",
	DYING_SKY					= "WING_HARPY_DYING_LANDING",
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
		NEAR_WALK_RATE		= 100,		-- 70,
		FAR_WALK_RATE		= 100,		-- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 		-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,		-- 30,
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
	    DEST_HEIGHT_GAP    	 = 200,  -- 타겟과 유지할 높이
	    DEST_LAND_GAP      	 = 250,  -- 지면상에서의 타겟과 거리기준
	    DEST_AREA      		 = 250,  -- 타겟과의 지면거리를 기준으로 이 범위안에 있으면 도착했다고 판단
	    
	    FLY_MOVE_INTERVAL		= 1.0,
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

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_WAIT_START = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

--	SOUND_PLAY0					= { 0.136, "WING_HARPY_WaitFly.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
		
    FLY_AI                      = TRUE,
    SHOW_NAME                   = TRUE,
    PASSIVE_SPEED_Y				= 0,
    ENABLE_HEIGHT_FIX           = TRUE,
    
    SPEED_X						= 0,
	SPEED_Y						= 0,		
	NEVER_MOVE					= TRUE,
    ADD_POS_Y					= 400,
    		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_WAIT",	},
		
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_WAIT = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.1, "Wing_Harpy_Voice_Wait01.ogg", 30 },

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
    FLY_AI                      = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	EVENT_PROCESS = 
	{	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",			},
	    	 
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",				},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",				},
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",				},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",		},		
			    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ATTACK_READY",		"CT_WING_HARPY_FLY_ATTACK_READY",	},	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_MAGIC_ATTACK_A",	"CT_WING_HARPY_FLY_MAGIC_ATTACK_A",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ACROSS",	"CT_WING_HARPY_FLY_ACROSS",	},
	},
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		--DISTANCE_OVER_TARGET_NEAR	= 300,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 40,
	},
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
		--DISTANCE_OVER_TARGET_NEAR	= 500,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 30,
	},		
	
	CT_WING_HARPY_FLY_ACROSS =
	{
	    EVENT_INTERVAL_ID           = 0,
		RATE                    	= 40,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_FRONT = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
--	SOUND_PLAY0					= { 0.5, "Pet_Fly01.ogg" },
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 0,
    FLY_AI                      = TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ATTACK_READY",		"CT_WING_HARPY_FLY_ATTACK_READY",	},	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_MAGIC_ATTACK_A",	"CT_WING_HARPY_FLY_MAGIC_ATTACK_A",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ACROSS",	"CT_WING_HARPY_FLY_ACROSS",	},
	    
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",	},
				
	},
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 40,
	},	
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 30,
	},
	
	CT_WING_HARPY_FLY_ACROSS =
	{
	    EVENT_INTERVAL_ID           = 0,
		RATE                    	= 40,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_FRONT_UP = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 3,
    FLY_AI                      = TRUE,

--	SOUND_PLAY0					= { 0.073, "WING_HARPY_WalkFlyFront.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",		},	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ATTACK_READY",		"CT_WING_HARPY_FLY_ATTACK_READY",	},	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_MAGIC_ATTACK_A",	"CT_WING_HARPY_FLY_MAGIC_ATTACK_A",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ACROSS",	"CT_WING_HARPY_FLY_ACROSS",	},
			
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",	},
		
		
	},
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 40,
	},	
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 30,
	},
	
	CT_WING_HARPY_FLY_ACROSS =
	{
	    EVENT_INTERVAL_ID           = 0,
		RATE                    	= 40,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_FRONT_DOWN = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= -3,
    FLY_AI                      = TRUE,

--	SOUND_PLAY0					= { 0.073, "WING_HARPY_WalkFlyFront.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ATTACK_READY",		"CT_WING_HARPY_FLY_ATTACK_READY",	},	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_MAGIC_ATTACK_A",	"CT_WING_HARPY_FLY_MAGIC_ATTACK_A",	},
	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",		},			
	},
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 25,
	},	
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 15,
	},
	
	CT_WING_HARPY_FLY_ACROSS =
	{
	    EVENT_INTERVAL_ID           = 0,
		RATE                    	= 40,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_BACK = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
    FLY_AI                      = TRUE,
	
--	SOUND_PLAY0					= { 0.085, "WING_HARPY_WalkFlyBack.ogg" },
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			},   
		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_ACROSS",	"CT_WING_HARPY_FLY_ACROSS",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",	},				
		
		
	},	
	
	CT_WING_HARPY_FLY_ACROSS =
	{
	    EVENT_INTERVAL_ID           = 0,
		RATE                    	= 100,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_BACK_UP = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 3,
    FLY_AI                      = TRUE,

	--SOUND_PLAY0					= { 0.085, "WING_HARPY_WalkFlyBack.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",	},
	},	
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 100,
	},
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 40,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_BACK_DOWN = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= -3,
    FLY_AI                      = TRUE,

	--SOUND_PLAY0					= { 0.085, "WING_HARPY_WalkFlyBack.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"WING_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",	},
	},	
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 100,
	},
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 40,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_UP = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
    FLY_AI                      = TRUE,

	--SOUND_PLAY0					= { 0.136, "WING_HARPY_WaitFly.ogg" },
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= 3,
		
		
	EVENT_PROCESS = 
	{	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WING_HARPY_FLY_WAIT",			"CT_WING_HARPY_FLY_WAIT",	},	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				"WING_HARPY_FLY_DOWN",			},    	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"WING_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],				"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],			"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],		"WING_HARPY_FLY_BACK_DOWN",		},
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],			"WING_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],			"WING_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],		"WING_HARPY_FLY_FRONT_DOWN",	},				
	},
	
	CT_WING_HARPY_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
	
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE                    	= 50,
	},	
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID           = 0,
	    DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE                    	= 40,
	},
	
	
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_DOWN = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

    FLY_AI                      = TRUE,
	--SOUND_PLAY0					= { 0.136, "WING_HARPY_WaitFly.ogg" },
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= -3,
	
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"WING_HARPY_FLY_WAIT",			"CT_WING_HARPY_FLY_WAIT",	},	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"WING_HARPY_FLY_UP",			},	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"WING_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"WING_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"WING_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"WING_HARPY_FLY_BACK_DOWN",		},    	 
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"WING_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"WING_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"WING_HARPY_FLY_FRONT_DOWN",	},		
		
	},
	
	CT_WING_HARPY_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
	
		
	CT_WING_HARPY_FLY_ATTACK_READY =
	{
	    EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR	= 800,
		RATE                    = 50,
	},	
	CT_WING_HARPY_FLY_MAGIC_ATTACK_A =
	{
	    EVENT_INTERVAL_ID       = 0,
	    DISTANCE_TO_TARGET_NEAR	= 1100,
		RATE                    = 40,
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_ATTACK_READY = 
{
	ANIM_NAME					= "Dash_Attack_B_Start_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
    FLY_AI                      = TRUE,
	    
	EVENT_INTERVAL_TIME0		= 2,
			
	SOUND_PLAY0 = { 0.5, "Pet_Fly01.ogg"},
	SOUND_PLAY1 = { 1.1, "Pet_Fly02.ogg"},
	SOUND_PLAY2 = { 1.85, "Bat_Fly.ogg"},

	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_ATTACK", },
	},	
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_WING_HARPY_FLY_ATTACK_A", 1.5,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_ATTACK = 
{
	ANIM_NAME					= "Dash_Attack_B_Loop_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
    
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,	
	SPEED_X                     = INIT_PHYSIC["RUN_SPEED"] *  1.2,
	SPEED_Y                     = INIT_PHYSIC["RUN_SPEED"] * -3.7,
    G_ACCEL                     = 0,
    DOWN_ACCEL                  = 0,
    
	EVENT_INTERVAL_TIME0		= 1,	
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"WING_HARPY_FLY_ATTACK_END",	"CT_WING_HARPY_FLY_ATTACK_END"	},		
	},
	
	CT_WING_HARPY_FLY_ATTACK_END = 
	{
		STATE_TIME_OVER			= 0.4,
	},
	
	ATTACK_TIME0				= { 0, 100, },
	
	DISABLE_ATTACK_BOX = 
	{
		"LowBody01",
		"Upbody01",
		"R_UpperArm02",
		"L_UpperArm01",
		"R_Hand01",
		"L_Hand01",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		--ATTACK_ALL_TEAM	= TRUE,
	
		CAN_REVENGE		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC				= 1,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 1200,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_ACROSS = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
    
	IMMADIATE_PACKET_SEND		= TRUE,
	
	-- FLY_AI                      = FALSE,	
	SPEED_X                     = INIT_PHYSIC["RUN_SPEED"] * 1.3,
	PASSIVE_SPEED_Y                     = 1,
	
    G_ACCEL                     = 0,
    DOWN_ACCEL                  = 0,
    
	EVENT_INTERVAL_TIME0		= 1,	
	
	EVENT_PROCESS = 
	{								
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_WAIT", },		
	},
	
	CT_WING_HARPY_FLY_ATTACK_END = 
	{
		FOOT_ON_LINE				= TRUE,
	},	
}
----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_ATTACK_END = 
{
	ANIM_NAME					= "Dash_Attack_B_End_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	FLY_AI                      = FALSE,	
	--G_ACCEL                     = 0,
    --DOWN_ACCEL                  = 0,
    
	SOUND_PLAY0 = { 0.8, "Pet_Fly01.ogg"},	
	
	IMMADIATE_PACKET_SEND		= TRUE,
    
	EVENT_INTERVAL_TIME0		= 1,
	
	ATTACK_TIME0				= { 0, 0.3, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		--ATTACK_ALL_TEAM	= TRUE,
	
		CAN_REVENGE		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC				= 1,
		},
		
		BACK_SPEED_X			= 900,
		BACK_SPEED_Y			= 1200,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_WAIT", }	
	},	
}

function WING_HARPY_FLY_ATTACK_END_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.824 ) then
		pNPCUnit:SetSpeedY( 1700 )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_FLY_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "Magic_Attack_A_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    --ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	    
	EVENT_INTERVAL_TIME0		= 2,
		
	--FLY_AI                      = FALSE,
	SUPER_ARMOR                 = TRUE,
	
		SOUND_PLAY0 = { 0.2, "Pet_Fly01.ogg"},
		SOUND_PLAY1 = { 1.3, "Swing_Medium01.ogg"},
		SOUND_PLAY2 = { 1.6, "Swing_Medium02.ogg"},
		SOUND_PLAY3 = { 2.5, "Pet_Fly02.ogg"},
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_WAIT", },
	},	
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_WING_HARPY_MAGIC_ATTACK_A", 0.6,
	},
}

function WING_HARPY_FLY_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= -700,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	G_ACCEL                     = 0,
    DOWN_ACCEL                  = 0,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	SOUND_PLAY0					= { 0.5, "Pet_Fly01.ogg" },
	SOUND_PLAY1 = { 0.01, "Wing_Harpy_Voice_DamageB01.ogg",30},

    FLY_AI                      = TRUE,
	
	--FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 700,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	G_ACCEL                     = 0,
    DOWN_ACCEL                  = 0,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
    FLY_AI                      = TRUE,
	--FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.3, "Pet_Fly01.ogg"},
	SOUND_PLAY1 = { 0.7, "Pet_Fly02.ogg"},
	SOUND_PLAY2 = { 0.01, "Wing_Harpy_Voice_DamageA01.ogg",30},

	

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_FLY_WAIT", },
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_DYING_SKY = 
{
	ANIM_NAME					= "Dying_Air_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	--LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	-- SPEED_X						= 0,
	-- SPEED_Y						= 0,	
	-- PASSIVE_SPEED_Y				= 10000,
	-- G_ACCEL                     = 0,
    -- DOWN_ACCEL                  = 0,
	
	FLY_AI                      = FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.8, "Pet_Fly02.ogg" },
		SOUND_PLAY1 = { 0.01, "Wing_Harpy_Voice_Dying01.ogg",30 },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WING_HARPY_DYING_SKY_FALL",	},
	},
}

function WING_HARPY_DYING_SKY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	--pNPCUnit:SetPosition( pNPCUnit:GetPos() )

end

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_DYING_SKY_FALL = 
{
	ANIM_NAME					= "Dying_Fall_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	--LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_Y						= -500,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--FLY_AI                      = FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"WING_HARPY_DYING_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WING_HARPY_DYING_LANDING = 
{
	ANIM_NAME					= "Dying_Landing_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "JumpLand2.ogg" },	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

function WING_HARPY_DAMAGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )		-- 하피 데미지 공통 함수

	if pNPCUnit:GetNowHP() <= 0 then	    
	    pNPCUnit:StateChange_LUA("WING_HARPY_DYING_SKY", true)
	    return
	end

end