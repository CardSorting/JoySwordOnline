-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- nasod_minerfata.lua





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.1,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		"Smoke_Machine03.tga",
	},
	
	READY_SOUND = 
	{
		"Nasod_Miner_Fat_Attack.ogg",
		"Nasod_Miner_Fat_Attack2.ogg",
		"Nasod_Miner_Fat_Walk.ogg",
		"Nasod_Miner_Fat_Dash.ogg",
		"Nasod_Miner_Fat_GroundHit.ogg",
		"Nasod_Miner_Fat_GroundHit2.ogg",
        "Nasod_Miner_Fat_WaitHabit.ogg",
        "Nasod_Miner_Fat_DamageStandUpFront.ogg",
        "Nasod_Miner_Fat_StepLanding.ogg",
        "Nasod_Miner_Fat_Down.ogg",
		"Nasod_Miner_Fat_DashEnd.ogg",
		"Nasod_Miner_Fat_Down2.ogg",
        "Nasod_Miner_Fat_DamageStandUpBack1.ogg",
        "Nasod_Miner_Fat_DamageStandUpBack2.ogg",


	},
	
	
		
	READY_XMESH = 
	{
		"Thief_Fat_JumpAttackA_Stone01",
	},
	
	
	READY_XSKIN_MESH = 
	{
	},
	
	
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_MinerFat_A.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 500,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	MAX_HP				= 7000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_MINER_FAT_A_START",						},
	
	{ STATE_NAME = "NASOD_MINER_FAT_A_WAIT",						},
	{ STATE_NAME = "NASOD_MINER_FAT_A_WAIT_START",					},
	{ STATE_NAME = "NASOD_MINER_FAT_A_WAIT_HABIT",					LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_WAIT_HABIT_FRAME_MOVE",
																	LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_WAIT_HABIT_STATE_END",			},
																	
																	
	{ STATE_NAME = "NASOD_MINER_FAT_A_WALK",						LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_WALK_FRAME_MOVE",	
																	LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_WALK_STATE_END"						},
	
	{ STATE_NAME = "NASOD_MINER_FAT_A_DASH",						LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_DASH_FRAME_MOVE",			},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DASH_END",					LUA_STATE_START_FUNC = "NASOD_MINER_FAT_A_DASH_END_STATE_START"				},
	
	{ STATE_NAME = "NASOD_MINER_FAT_A_JUMP_UP",						},
	{ STATE_NAME = "NASOD_MINER_FAT_A_JUMP_DOWN",					LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "NASOD_MINER_FAT_A_JUMP_UP_DIR",					},
	{ STATE_NAME = "NASOD_MINER_FAT_A_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_JUMP_LANDING",				},


	{ STATE_NAME = "NASOD_MINER_FAT_A_ATTACK",						LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_ATTACK_FRAME_MOVE",	
																	LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_ATTACK_STATE_END",			STATE_COOL_TIME = 8, },
		
	{ STATE_NAME = "NASOD_MINER_FAT_A_COMBOA",						LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_COMBOA_FRAME_MOVE",
																	LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_COMBOA_STATE_END",			STATE_COOL_TIME = 8, },
	
	
	--리액션 관련
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_SMALL",				LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_DAMAGE_SMALL_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_BIG",					LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_DAMAGE_BIG_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_AIR",					},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_AIR_FALL",				},	
	{ STATE_NAME = "NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "NASOD_MINER_FAT_A_STAND_UP_FRONT",				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_STAND_UP_BACK",				},
	{ STATE_NAME = "NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT_FRAME_MOVE",
																	LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT_STATE_END",			},
	{ STATE_NAME = "NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK_FRAME_MOVE",
																	--LUA_STATE_END_FUNC = "NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK_STATE_END",			
																	},
	
	{ STATE_NAME = "NASOD_MINER_FAT_A_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "NASOD_MINER_FAT_A_DYING_LAND_STATE_START",},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "NASOD_MINER_FAT_A_DYING_LAND_STATE_START",},
	{ STATE_NAME = "NASOD_MINER_FAT_A_DYING_SKY",					LUA_STATE_START_FUNC = "NASOD_MINER_FAT_A_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "NASOD_MINER_FAT_A_START",
	WAIT_STATE					= "NASOD_MINER_FAT_A_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_MINER_FAT_A_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_MINER_FAT_A_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_MINER_FAT_A_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "NASOD_MINER_FAT_A_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_MINER_FAT_A_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_MINER_FAT_A_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "NASOD_MINER_FAT_A_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "NASOD_MINER_FAT_A_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "NASOD_MINER_FAT_A_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "NASOD_MINER_FAT_A_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "NASOD_MINER_FAT_A_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "NASOD_MINER_FAT_A_DAMAGE_SMALL",
	DAMAGE_EXTRA_STATES         = {"NASOD_MINER_FAT_A_DAMAGE_AIR_FALL","NASOD_MINER_FAT_A_STAND_UP_FRONT","NASOD_MINER_FAT_A_STAND_UP_BACK",
	"NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT","NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK",
	"NASOD_MINER_FAT_A_JUMP_DOWN","NASOD_MINER_FAT_A_JUMP_LANDING",},	
	
	
	DYING_LAND_FRONT			= "NASOD_MINER_FAT_A_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "NASOD_MINER_FAT_A_DYING_LAND_BACK",
	DYING_SKY					= "NASOD_MINER_FAT_A_DYING_SKY",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
		
		LINE_END_RANGE		= 80,	-- cm
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
		
		LINE_END_RANGE		= 80,	-- cm
	},

}


NASOD_MINER_FAT_A_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"NASOD_MINER_FAT_A_WAIT",		"CT_NASOD_MINER_FAT_A_WAIT"				},
	},
	
	CT_NASOD_MINER_FAT_A_WAIT = 
	{
		STATE_TIME_OVER			= 3,
	},
}



NASOD_MINER_FAT_A_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_ATTACK",					"CT_NASOD_MINER_FAT_A_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_COMBOA",					"CT_NASOD_MINER_FAT_A_COMBOA",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_WAIT_HABIT",				"CT_NASOD_MINER_FAT_A_WAIT_HABIT",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_WAIT_START",				"CT_NASOD_MINER_FAT_A_WAIT_START",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"NASOD_MINER_FAT_A_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"NASOD_MINER_FAT_A_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_MINER_FAT_A_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_MINER_FAT_A_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_MINER_FAT_A_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",			},
	},
	
	CT_NASOD_MINER_FAT_A_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_NASOD_MINER_FAT_A_COMBOA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},

	CT_NASOD_MINER_FAT_A_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
	CT_NASOD_MINER_FAT_A_WAIT_START = 
	{
		ANIM_PLAY_COUNT				= 2,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
	
    -- TALK_BOX =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
 		-- { RATE = 10,		MESSAGE = STR_ID_4956 },
 	-- },
		
}


NASOD_MINER_FAT_A_WAIT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_MINER_FAT_A_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MINER_FAT_A_WAIT",					},
	},
	
	-- TALK_BOX =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
 		-- { RATE = 10, MESSAGE = STR_ID_4956 },
 	-- },

}


NASOD_MINER_FAT_A_WAIT_HABIT = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

--    SOUND_PLAY0			= { 0.708, "Nasod_Miner_Fat_WaitHabit.ogg" },

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",						},
	},
	
	-- TALK_BOX =
 	-- {
		-- { RATE = 20, MESSAGE = STR_ID_4956 },
	-- },
}


NASOD_MINER_FAT_A_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "Nasod_Miner_Fat_Walk.ogg" },

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_ATTACK",					"CT_NASOD_MINER_FAT_A_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_COMBOA",					"CT_NASOD_MINER_FAT_A_COMBOA",			},
		
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"NASOD_MINER_FAT_A_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"NASOD_MINER_FAT_A_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_MINER_FAT_A_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_MINER_FAT_A_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_MINER_FAT_A_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",			},
	},
	
	CT_NASOD_MINER_FAT_A_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_NASOD_MINER_FAT_A_COMBOA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},

		
	-- TALK_BOX =
 	-- {
 		-- EVENT_INTERVAL_ID		= 1,
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
}




NASOD_MINER_FAT_A_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

 --   SOUND_PLAY0			= { 0.01, "Nasod_Miner_Fat_Dash.ogg" },

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	EVENT_INTERVAL_TIME2		= 0.2,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_ATTACK",					"CT_NASOD_MINER_FAT_A_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_COMBOA",					"CT_NASOD_MINER_FAT_A_COMBOA",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_DASH_END",				"CT_NASOD_MINER_FAT_A_DASH_END",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"NASOD_MINER_FAT_A_DASH_END",				},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"NASOD_MINER_FAT_A_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_MINER_FAT_A_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_MINER_FAT_A_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_MINER_FAT_A_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",			},
	},
	
	
	CT_NASOD_MINER_FAT_A_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
		
	CT_NASOD_MINER_FAT_A_COMBOA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
		
	CT_NASOD_MINER_FAT_A_DASH_END =
	{
		EVENT_INTERVAL_ID			= 2,
		STATE_TIME_OVER				= 1.0,
	},
	
	ATTACK_TIME0				= { 0.01, 100 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,	
	},
	
	
			
	-- TALK_BOX =
 	-- {
 		-- EVENT_INTERVAL_ID		= 1,
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
	
	
}




NASOD_MINER_FAT_A_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "Nasod_Miner_Fat_DashEnd.ogg" },

	PASSIVE_SPEED_X				= -1,
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",					},
	},
}



NASOD_MINER_FAT_A_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y					= 45, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_MINER_FAT_A_JUMP_DOWN",			},
	},
	
}

NASOD_MINER_FAT_A_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_MINER_FAT_A_JUMP_LANDING",				},
	},
}

NASOD_MINER_FAT_A_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y					= 45, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_MINER_FAT_A_JUMP_DOWN_DIR",				},
	},
	
}

NASOD_MINER_FAT_A_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_MINER_FAT_A_JUMP_LANDING",				},
	},
}

NASOD_MINER_FAT_A_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.129, "Nasod_Miner_Fat_StepLanding.ogg" },
	

	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",						},
	},
}


NASOD_MINER_FAT_A_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.538, "Nasod_Miner_Fat_Attack.ogg" },
    SOUND_PLAY1			= { 0.617, "Nasod_Miner_Fat_GroundHit.ogg" },

    

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",												},	
	},
	
	ATTACK_TIME0				= { 0.55, 0.61, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"] * 1.5,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}



NASOD_MINER_FAT_A_COMBOA =
{
	ANIM_NAME					= "ComboA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.525, "Nasod_Miner_Fat_Attack.ogg" },
    SOUND_PLAY1			= { 0.632, "Nasod_Miner_Fat_GroundHit2.ogg" },
    SOUND_PLAY2			= { 1.492, "Nasod_Miner_Fat_Attack.ogg" },
    SOUND_PLAY3			= { 1.576, "Nasod_Miner_Fat_GroundHit2.ogg" },
    SOUND_PLAY4			= { 2.459, "Nasod_Miner_Fat_Attack.ogg" },
    SOUND_PLAY5			= { 2.548, "Nasod_Miner_Fat_GroundHit2.ogg" },


	SPEED_X						= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",					},
	},
	
	
	
	ATTACK_TIME0				= { 0.56, 0.73, },
	ATTACK_TIME1				= { 1.53, 1.6, },
	ATTACK_TIME2				= { 2.5, 2.56, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.2,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.6,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 0.5,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}





NASOD_MINER_FAT_A_DAMAGE_SMALL = 
{
	ANIM_NAME					= "DamageBig",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MINER_FAT_A_WAIT",												},
	},
}

NASOD_MINER_FAT_A_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MINER_FAT_A_WAIT",												},
	},
}

NASOD_MINER_FAT_A_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.483, "Nasod_Miner_Fat_Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_4956 },
	-- },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_MINER_FAT_A_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MINER_FAT_A_STAND_UP_FRONT",			},
	},
	
}

NASOD_MINER_FAT_A_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.807, "Nasod_Miner_Fat_Down2.ogg" },

	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_2568 },
		-- { RATE = 10, MESSAGE = STR_ID_2569 },
	-- },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_MINER_FAT_A_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK",	"CT_NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MINER_FAT_A_STAND_UP_BACK",			},
	},
	
	CT_NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 20,
	},
}

NASOD_MINER_FAT_A_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

NASOD_MINER_FAT_A_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_MINER_FAT_A_DAMAGE_DOWN_BACK",		},
	},
}

NASOD_MINER_FAT_A_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_MINER_FAT_A_WAIT",					},
	},
}

NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_MINER_FAT_A_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	--SPEED_Y						= 1800.0,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_MINER_FAT_A_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
	-- TALK_BOX =
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_2568 },
		-- { RATE = 10, MESSAGE = STR_ID_2569 },
	-- },
}

NASOD_MINER_FAT_A_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"NASOD_MINER_FAT_A_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.096, "Nasod_Miner_Fat_Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_STAND_UP_FRONT",			},
	},
	
}

NASOD_MINER_FAT_A_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.100, "Nasod_Miner_Fat_DamageStandUpFront.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT",		"CT_NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",				},
	},
	
	CT_NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_EVENT_TIMER	= 1.4,
		RATE				= 20,
	},

}

NASOD_MINER_FAT_A_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "Nasod_Miner_Fat_DamageStandUpBack1.ogg" },
    SOUND_PLAY1			= { 1.387, "Nasod_Miner_Fat_DamageStandUpBack2.ogg" },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK",		"CT_NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT", },
	},	
	
	CT_NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK = 
	{
		ANIM_EVENT_TIMER	= 1.55,
		RATE				= 20,
	},	
}


NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.538, "Nasod_Miner_Fat_Attack.ogg" },
    SOUND_PLAY1			= { 0.636, "Nasod_Miner_Fat_GroundHit.ogg" },
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT",				},
	},
		
	ATTACK_TIME0				= { 0.55, 0.61, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
			FIRE		= 0.0,
			ICE			= 0.0,
			EARTH		= 0.0,
			LIGHTNING	= 0.0,
			DARK		= 0.0,
			LIGHT		= 0.0,
			UNIVERSAL	= 0.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
}

NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
			
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.538, "Nasod_Miner_Fat_Attack.ogg" },
    SOUND_PLAY1			= { 0.636, "Nasod_Miner_Fat_GroundHit.ogg" },
		
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	--FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_MINER_FAT_A_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_MINER_FAT_A_WAIT", },
	},	
	
		
	ATTACK_TIME0				= { 0.55, 0.61, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
			FIRE		= 0.0,
			ICE			= 0.0,
			EARTH		= 0.0,
			LIGHTNING	= 0.0,
			DARK		= 0.0,
			LIGHT		= 0.0,
			UNIVERSAL	= 0.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
}



NASOD_MINER_FAT_A_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.483, "Nasod_Miner_Fat_Down.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
NASOD_MINER_FAT_A_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.807, "Nasod_Miner_Fat_Down2.ogg" },

	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

NASOD_MINER_FAT_A_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.096, "Nasod_Miner_Fat_Down.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------


------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_WAIT_HABIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 
	if nil ~= pParticle0 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle0 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
			pParticle0:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	
	end

	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 
	if nil ~= pParticle1 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle1 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger2" )
			pParticle1:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 1 )
		end
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()

		vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger2" )
		pParticle1 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Flare_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle1 ~= nil then 
			pParticle1:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )		
			pNPCUnit:SetMinorParticle_LUA( 1, pParticle1:GetHandle() ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle1:SetAddRotate( rotDegree )
			pParticle1:SetAxisAngle( rotDegree )
		end
	end
		
		
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		
		vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
	    pNPCUnit:PlaySound_LUA( "Nasod_Engine_Mid.ogg" )
		pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle0 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 0, pParticle0:GetHandle() ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle0:SetAddRotate( rotDegree )
			pParticle0:SetAxisAngle( rotDegree )
		end
		
	end

end


------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_WAIT_HABIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMinorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
	
	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
	if pParticle1 ~= nil then
		pMinorParticle:DestroyInstance( pParticle1 )
		pNPCUnit:ClearMinorParticle_LUA( 1 )
	end
		

end





function NASOD_MINER_FAT_A_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	for i = 0, 5 do
	
		fTime = 0.15 * i 
		if pNPCUnit:AnimEventTimer_LUA( fTime ) then

			pMinorParticle = pX2Game:GetMinorParticle()
			
			vPos = pNPCUnit:GetLandPosition_LUA()
			--pNPCUnit:PlaySound_LUA( "Nasod_Miner_Fat_Walk.ogg" )
		
			vDirVector = pNPCUnit:GetDirVector()
			bIsRight = pNPCUnit:GetIsRight()
			
			if bIsRight == true then 
				vPos.x = vPos.x - 150.0		* vDirVector.x
				vPos.z = vPos.z - 150.0		* vDirVector.z
			else
				vPos.x = vPos.x + 150.0		* vDirVector.x
				vPos.z = vPos.z + 150.0		* vDirVector.z
			end
			
			pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
			
			pNPCUnit:ClearEventCheck( fTime )
		
		end
	
	end

end




function NASOD_MINER_FAT_A_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


function NASOD_MINER_FAT_A_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	for i = 0, 7 do
	
		fTime = 0.1 * i 
		if pNPCUnit:AnimEventTimer_LUA( fTime ) then

			pMinorParticle = pX2Game:GetMinorParticle()
			
			vPos = pNPCUnit:GetLandPosition_LUA()
			pNPCUnit:PlaySound_LUA( "Nasod_Miner_Fat_Dash.ogg" )
			vDirVector = pNPCUnit:GetDirVector()
			bIsRight = pNPCUnit:GetIsRight()
			
			if bIsRight == true then 
				vPos.x = vPos.x - 150.0		* vDirVector.x
				vPos.z = vPos.z - 150.0		* vDirVector.z
			else
				vPos.x = vPos.x + 150.0		* vDirVector.x
				vPos.z = vPos.z + 150.0		* vDirVector.z
			end
			
			pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
			
			pNPCUnit:ClearEventCheck( fTime )
		
		end
	
	end

end

function NASOD_MINER_FAT_A_DASH_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


function NASOD_MINER_FAT_A_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function NASOD_MINER_FAT_A_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 
	if nil ~= pParticle0 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle0 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
			pParticle0:SetPosition( vPos )	
		else 
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	
	end

	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 
	if nil ~= pParticle1 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle1 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" )			
			pParticle1:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 1 )
		end
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()

		vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
	    pNPCUnit:PlaySound_LUA( "Nasod_Engine_Mid.ogg" )
		pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle0 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 0, pParticle0:GetHandle()  ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle0:SetAddRotate( rotDegree )
			pParticle0:SetAxisAngle( rotDegree )	
		end
		
		vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" )
		pParticle1 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Flare_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle1 ~= nil then 
			pParticle1:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )		
			pNPCUnit:SetMinorParticle_LUA( 1, pParticle1:GetHandle() ) 
					
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle1:SetAddRotate( rotDegree )
			pParticle1:SetAxisAngle( rotDegree )
		end

		
	end
		
		
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		
	
		pMinorParticle = pX2Game:GetMinorParticle()
		

		vPos = pNPCUnit:GetPos()
		vDirVector = pNPCUnit:GetDirVector()
		bIsRight = pNPCUnit:GetIsRight()
		
		vZVector = pNPCUnit:GetZVector()
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 310 )
		else
			vPos = MovePos( vPos, vDirVector, -310 )
		end
		vPos = MovePos( vPos, vZVector, -100 )
	

		
		
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_Nasod_MinerFat_Attack", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		end



		vPos = pNPCUnit:GetPos()
		vDirVector = pNPCUnit:GetDirVector()
		bIsRight = pNPCUnit:GetIsRight()
		
		vZVector = pNPCUnit:GetZVector()
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 320 )
		else
			vPos = MovePos( vPos, vDirVector, -320 )
		end
		vPos = MovePos( vPos, vZVector, -50 )
	
				
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_MinerFat_Attack_MeshParticle01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		end
		
		
	end

end


------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMinorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
	
	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
	if pParticle1 ~= nil then
		pMinorParticle:DestroyInstance( pParticle1 )
		pNPCUnit:ClearMinorParticle_LUA( 1 )
	end
		

end






------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_COMBOA_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetSpeedX( INIT_PHYSIC["RUN_SPEED"] )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.9 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
		pNPCUnit:SetSpeedX( INIT_PHYSIC["RUN_SPEED"] )
	end
	
	
	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 
	if nil ~= pParticle0 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle0 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger2" )
			pParticle0:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	
	end

	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 
	if nil ~= pParticle1 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle1 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Nasod_MinerFat_LHand" )
			pParticle1:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 1 )
		end
	
	end
	
	pParticle2 = pNPCUnit:GetMinorParticle_LUA( 2 ) 
	if nil ~= pParticle2 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle2 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
			pParticle2:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 2 )
		end
	
	end
	
	
	
	
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()

		vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger2" )
		pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Flare_Nasod_DR_Combo01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle0 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 0, pParticle0:GetHandle()  ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle0:SetAddRotate( rotDegree )
			pParticle0:SetAxisAngle( rotDegree )
		
		end 
		
		vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
	    pNPCUnit:PlaySound_LUA( "Nasod_Engine_Mid.ogg" )
		pParticle2 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Nasod_DR_Combo01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			
		if pParticle2 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 2, pParticle2:GetHandle() ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle2:SetAddRotate( rotDegree )
			pParticle2:SetAxisAngle( rotDegree )
		end
		
	end
	

	if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()
			
		vPos = pNPCUnit:GetBonePos_LUA( "Nasod_MinerFat_LHand" )
		pParticle1 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Flare_Nasod_DR_Combo01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle1 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 1, pParticle1:GetHandle() ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle1:SetAddRotate( rotDegree )
			pParticle1:SetAxisAngle( rotDegree )
		end
		
		
	end

	

end



------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_COMBOA_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	
	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMajorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end

	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
	if pParticle1 ~= nil then
		pMajorParticle:DestroyInstance( pParticle1 )
		pNPCUnit:ClearMinorParticle_LUA( 1 )
	end

	pParticle2 = pNPCUnit:GetMinorParticle_LUA( 2 ) 	
	if pParticle2 ~= nil then
		pMajorParticle:DestroyInstance( pParticle2 )
		pNPCUnit:ClearMinorParticle_LUA( 2 )
	end

end


function NASOD_MINER_FAT_A_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function NASOD_MINER_FAT_A_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function NASOD_MINER_FAT_A_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function NASOD_MINER_FAT_A_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function NASOD_MINER_FAT_A_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end




------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end


	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 
	if nil ~= pParticle0 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle0 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
			pParticle0:SetPosition( vPos )	
		else 
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	
	end

	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 
	if nil ~= pParticle1 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle1 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" )			
			pParticle1:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 1 )
		end
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()

		vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
	    pNPCUnit:PlaySound_LUA( "Nasod_Engine_Mid.ogg" )
		pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle0 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 0, pParticle0:GetHandle()  ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle0:SetAddRotate( rotDegree )
			pParticle0:SetAxisAngle( rotDegree )	
		end
		
		
		vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" )
		pParticle1 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Flare_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle1 ~= nil then 
			pParticle1:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )		
			pNPCUnit:SetMinorParticle_LUA( 1, pParticle1:GetHandle() ) 
					
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle1:SetAddRotate( rotDegree )
			pParticle1:SetAxisAngle( rotDegree )
		end
		
	end
		
		
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		
	
		
		
		pMinorParticle = pX2Game:GetMinorParticle()
		

		vPos = pNPCUnit:GetPos()
		vDirVector = pNPCUnit:GetDirVector()
		bIsRight = pNPCUnit:GetIsRight()
		vZVector = pNPCUnit:GetZVector()
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 310 )
		else
			vPos = MovePos( vPos, vDirVector, -310 )
		end
		vPos = MovePos( vPos, vZVector, -100 )
	
		
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_Nasod_MinerFat_Attack", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		end



		vPos = pNPCUnit:GetPos()
		vDirVector = pNPCUnit:GetDirVector()
		bIsRight = pNPCUnit:GetIsRight()
		
		vZVector = pNPCUnit:GetZVector()
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 320 )
		else
			vPos = MovePos( vPos, vDirVector, -320 )
		end
		vPos = MovePos( vPos, vZVector, -50 )
	
				
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_MinerFat_Attack_MeshParticle01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		end
		
		
	end

end


------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_STAND_UP_ATTACK_FRONT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMinorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
	
	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
	if pParticle1 ~= nil then
		pMinorParticle:DestroyInstance( pParticle1 )
		pNPCUnit:ClearMinorParticle_LUA( 1 )
	end
		

end


------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 
	if nil ~= pParticle0 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle0 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
			pParticle0:SetPosition( vPos )	
		else 
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	
	end

	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 
	if nil ~= pParticle1 then 

		pMinorParticle = pX2Game:GetMinorParticle()
		
		if pMinorParticle:IsLiveInstance( pParticle1 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" )			
			pParticle1:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 1 )
		end
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()

		vPos = pNPCUnit:GetBonePos_LUA( "Dummy01" )
	    pNPCUnit:PlaySound_LUA( "Nasod_Engine_Mid.ogg" )
		pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle0 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 0, pParticle0:GetHandle()  ) 
			
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle0:SetAddRotate( rotDegree )
			pParticle0:SetAxisAngle( rotDegree )
		end	
			
		vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" )
		pParticle1 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Flare_Nasod_DR_Attack01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pParticle1:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )		
		if pParticle1 ~= nil then 
			pNPCUnit:SetMinorParticle_LUA( 1, pParticle1:GetHandle() ) 
					
			rotDegree = pNPCUnit:GetRotateDegree()			
			pParticle1:SetAddRotate( rotDegree )
			pParticle1:SetAxisAngle( rotDegree )
		end
		
	end
		
		
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		
	
		
		pMinorParticle = pX2Game:GetMinorParticle()
		

		vPos = pNPCUnit:GetPos()
		vDirVector = pNPCUnit:GetDirVector()
		bIsRight = pNPCUnit:GetIsRight()
		vZVector = pNPCUnit:GetZVector()
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 310 )
		else
			vPos = MovePos( vPos, vDirVector, -310 )
		end
		vPos = MovePos( vPos, vZVector, -100 )
	
		
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_Nasod_MinerFat_Attack", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		end



		vPos = pNPCUnit:GetPos()
		vDirVector = pNPCUnit:GetDirVector()
		bIsRight = pNPCUnit:GetIsRight()
		
		vZVector = pNPCUnit:GetZVector()
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 320 )
		else
			vPos = MovePos( vPos, vDirVector, -320 )
		end
		vPos = MovePos( vPos, vZVector, -50 )
	
				
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_MinerFat_Attack_MeshParticle01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		end
		
		
		
	end

end


------------------------------------------------------------------------------
function NASOD_MINER_FAT_A_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMinorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
	
	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
	if pParticle1 ~= nil then
		pMinorParticle:DestroyInstance( pParticle1 )
		pNPCUnit:ClearMinorParticle_LUA( 1 )
	end
		

end






function NASOD_MINER_FAT_A_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end







