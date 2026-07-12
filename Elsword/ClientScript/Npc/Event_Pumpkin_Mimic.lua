-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	LUA_SHAREABLE   = TRUE,
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
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_ChestMonster.x",
	--MOTION_ANI_TEX_XET		= "Motion_ChestMonster.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 120,
	RUN_SPEED			= 120,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 6000,
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
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_WOOD"],
	
	FALL_DOWN			= TRUE,
		

	

}

INIT_STATE = 
{
	{ STATE_NAME = "CHEST_MONSTER_START",					LUA_STATE_START_FUNC = "CHEST_MONSTER_START_STATE_START",
															LUA_STATE_END_FUNC = "CHEST_MONSTER_START_STATE_END",			},
	{ STATE_NAME = "CHEST_MONSTER_WAIT",					},
	{ STATE_NAME = "CHEST_MONSTER_WAIT2",					},
	{ STATE_NAME = "CHEST_MONSTER_WAIT3",					},
	{ STATE_NAME = "CHEST_MONSTER_WALK",					LUA_STATE_END_FUNC = "CHEST_MONSTER_WALK_STATE_END"						},
	{ STATE_NAME = "CHEST_MONSTER_JUMP_UP",					},
	{ STATE_NAME = "CHEST_MONSTER_JUMP_DOWN",				LUA_STATE_END_FUNC = "CHEST_MONSTER_JUMP_DOWN_STATE_END"				},
	{ STATE_NAME = "CHEST_MONSTER_JUMP_UP_DIR",				},
	{ STATE_NAME = "CHEST_MONSTER_JUMP_DOWN_DIR",			LUA_STATE_END_FUNC = "CHEST_MONSTER_JUMP_DOWN_DIR_STATE_END"			},
	
	{ STATE_NAME = "CHEST_MONSTER_ATTACK",					STATE_COOL_TIME = 2, },
	{ STATE_NAME = "CHEST_MONSTER_REVENGE_ATTACK",			},
	{ STATE_NAME = "CHEST_MONSTER_RUNAWAY_END",		},	
	
	
	--리액션 관련
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE",					LUA_FRAME_MOVE_FUNC = "CHEST_MONSTER_DAMAGE_FRAME_MOVE"					},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_DOWN_FRONT",		LUA_FRAME_MOVE_FUNC = "CHEST_MONSTER_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_DOWN_BACK",		LUA_FRAME_MOVE_FUNC = "CHEST_MONSTER_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_FLY_FRONT",		},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_AIR",				},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_AIR_UP",			},
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_AIR_FALL",			},	
	{ STATE_NAME = "CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "CHEST_MONSTER_STAND_UP_FRONT",			},
	{ STATE_NAME = "CHEST_MONSTER_STAND_UP_BACK",			},
	
	
	{ STATE_NAME = "CHEST_MONSTER_DYING_LAND_FRONT",		LUA_STATE_START_FUNC = "CHEST_MONSTER_DYING_LAND_STATE_START",		},
	{ STATE_NAME = "CHEST_MONSTER_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "CHEST_MONSTER_DYING_LAND_STATE_START",		},
	{ STATE_NAME = "CHEST_MONSTER_DYING_SKY",				LUA_STATE_START_FUNC = "CHEST_MONSTER_DYING_LAND_STATE_START",		},
	
	
	
	START_STATE					= "CHEST_MONSTER_START",
	WAIT_STATE					= "CHEST_MONSTER_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "CHEST_MONSTER_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "CHEST_MONSTER_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "CHEST_MONSTER_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "CHEST_MONSTER_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "CHEST_MONSTER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CHEST_MONSTER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CHEST_MONSTER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CHEST_MONSTER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CHEST_MONSTER_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "CHEST_MONSTER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CHEST_MONSTER_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CHEST_MONSTER_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "CHEST_MONSTER_DAMAGE",
	
	DAMAGE_EXTRA_STATES         = {"CHEST_MONSTER_DAMAGE_AIR_FALL","CHEST_MONSTER_STAND_UP_FRONT","CHEST_MONSTER_STAND_UP_BACK","CHEST_MONSTER_JUMP_DOWN",},	
	
	DYING_LAND_FRONT			= "CHEST_MONSTER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CHEST_MONSTER_DYING_LAND_BACK",
	DYING_SKY					= "CHEST_MONSTER_DYING_SKY",

	REVENGE_ATTACK				= "CHEST_MONSTER_REVENGE_ATTACK",	

    COMMON_FRAME_FUNC			= "CHEST_MONSTER_COMMON_FRAMEMOVE",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
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


CHEST_MONSTER_START = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	RIGHT						= TRUE,

	SPEED_X						= 1500,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHEST_MONSTER_JUMP_DOWN",				},
	},
}

CHEST_MONSTER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHEST_MONSTER_ATTACK",						"CT_CHEST_MONSTER_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CHEST_MONSTER_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CHEST_MONSTER_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CHEST_MONSTER_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CHEST_MONSTER_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CHEST_MONSTER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CHEST_MONSTER_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHEST_MONSTER_WAIT2",						"CT_CHEST_MONSTER_WAIT2",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHEST_MONSTER_WAIT3",						"CT_CHEST_MONSTER_WAIT3",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHEST_MONSTER_WAIT2",						"CT_CHEST_MONSTER_WAIT2_B",		},
	},
	
	CT_CHEST_MONSTER_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 150,
		RATE						= 60,
	},
	CT_CHEST_MONSTER_WAIT2 = 
	{
		ANIM_PLAY_COUNT		= 8,
		RATE				= 50,
	},
	CT_CHEST_MONSTER_WAIT3 = 
	{
		ANIM_PLAY_COUNT		= 15,
		RATE				= 50,
	},
	
	CT_CHEST_MONSTER_WAIT2_B = 
	{
		ANIM_PLAY_COUNT		= 20,
		RATE				= 100,
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 4, MESSAGE = STR_ID_1590 },
		{ RATE = 4, MESSAGE = STR_ID_1591 },
 	},
	
	
}

CHEST_MONSTER_WAIT2 = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT",						},
	},
}

CHEST_MONSTER_WAIT3 = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT",						},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1592 },
 	},

}

CHEST_MONSTER_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHEST_MONSTER_ATTACK",						"CT_CHEST_MONSTER_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CHEST_MONSTER_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CHEST_MONSTER_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CHEST_MONSTER_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CHEST_MONSTER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CHEST_MONSTER_JUMP_DOWN_DIR",				},
	},
	
	CT_CHEST_MONSTER_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 150,
		RATE						= 60,
	},
	
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 8, MESSAGE = STR_ID_1590 },
		{ RATE = 8, MESSAGE = STR_ID_1591 },
 	},
}

CHEST_MONSTER_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHEST_MONSTER_JUMP_DOWN",				},
	},
}

CHEST_MONSTER_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHEST_MONSTER_WAIT",				},
	},
}

CHEST_MONSTER_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHEST_MONSTER_JUMP_DOWN_DIR",				},
	},
	
}

CHEST_MONSTER_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHEST_MONSTER_WAIT",				},
	},
}

CHEST_MONSTER_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1593 },
		{ RATE = 10, MESSAGE = STR_ID_1594 },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT",					},
	},
	
	ATTACK_TIME0				= { 0.25, 0.38, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

CHEST_MONSTER_REVENGE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	INVINCIBLE					= {0,100,},
	STOP_MY_UNIT0				= { 0.15, 0.3 },
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1593 },
		{ RATE = 10, MESSAGE = STR_ID_1594 },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT",					},
	},
	
	ATTACK_TIME0				= { 0.25, 0.38, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"] * 3.0,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

CHEST_MONSTER_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1595 },
		{ RATE = 10, MESSAGE = STR_ID_1596 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHEST_MONSTER_WAIT",							},
	},
}


CHEST_MONSTER_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1595 },
		{ RATE = 10, MESSAGE = STR_ID_1596 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CHEST_MONSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHEST_MONSTER_STAND_UP_FRONT",			},
	},

}

CHEST_MONSTER_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1595 },
		{ RATE = 10, MESSAGE = STR_ID_1596 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CHEST_MONSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHEST_MONSTER_STAND_UP_BACK",			},
	},
}

CHEST_MONSTER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHEST_MONSTER_DAMAGE_DOWN_FRONT",		},
	},
}

CHEST_MONSTER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHEST_MONSTER_DAMAGE_DOWN_BACK",		},
	},
}

CHEST_MONSTER_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHEST_MONSTER_WAIT",					},
	},
}

CHEST_MONSTER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

CHEST_MONSTER_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHEST_MONSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
	TALK_BOX =
	{
 		{ RATE = 10, MESSAGE = STR_ID_1595 },
		{ RATE = 10, MESSAGE = STR_ID_1597 },
	},
}

CHEST_MONSTER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"CHEST_MONSTER_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT",				},
	},	
}

CHEST_MONSTER_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT",				},
	},
}

CHEST_MONSTER_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHEST_MONSTER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHEST_MONSTER_WAIT", },
	},		
}


CHEST_MONSTER_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
CHEST_MONSTER_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

CHEST_MONSTER_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

CHEST_MONSTER_RUNAWAY_END =
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	ESCAPE_END		= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_Halloween_Poison", 0,
	},
}








--------------------------------------------------------------------
--------------------------------------------------------------------





function CHEST_MONSTER_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EVENT_HOVALANCHE"], 999999 )
	pNPCUnit:SetFlag_LUA( 9, false )	
	if pUID ~= 0 then
	
	        nUnitListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nUnitListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil then
				if pUnit:GetUID() == pUID then
					if pUnit:GetInt_LUA( 0 ) >= 1 then
						pNPCUnit:SetFlag_LUA( 9, true )
						pNPCUnit:SetInt_LUA( 9, 15 )
						pNPCUnit:SetNumber_LUA(9, pX2Game:GetGameTime())
					end
					return
				end
			end	            
		end	             
	end

end




function CHEST_MONSTER_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetShowGage( true )

end


--function CHEST_MONSTER_REVENGE_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
--	pNPCUnit:SetShowGage( true )
--end


function CHEST_MONSTER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function CHEST_MONSTER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function CHEST_MONSTER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function CHEST_MONSTER_DAMAGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function CHEST_MONSTER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.07 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function CHEST_MONSTER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function CHEST_MONSTER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.44 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end


function CHEST_MONSTER_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

    bBomb = SelfBomb_Ready_Event_Mimic(pKTDXApp, pX2Game, pNPCUnit)	
    if bBomb == true then
        SelfBomb_Event_Mimic(pX2Game, pNPCUnit)
    end     

end

function SelfBomb_Ready_Event_Mimic(pKTDXApp, pX2Game, pNPCUnit)

    pMajorParticle = pX2Game:GetMajorParticle()
    pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
    
	if nil ~= pParticle and pMajorParticle ~= nil then 
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			vPos = pNPCUnit:GetPos()
			vPos.y = vPos.y + 300.0
			pParticle:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMajorParticle_LUA( 9 )
		end
	end
	
    IsBomb = pNPCUnit:GetFlag_LUA(9)
    nCount = pNPCUnit:GetInt_LUA(9)
    nPreTime = pNPCUnit:GetNumber_LUA(9)
    nCurrTime = pX2Game:GetGameTime()
       
	-- 스테이지2 검사
	if IsBomb == false then
		return false
	end
    
    if nCount <= 0 then
        -- 자폭상태
        return true
    end
        
	-- 이미 자폭진행상태
	nStep = math.floor(nCurrTime - nPreTime)
	
	pNPCUnit:SetUseWorldColor( false )
	color = pNPCUnit:GetColor()
	color.g = color.g - (0.3 * pKTDXApp:GetElapsedTime())
	color.b = color.g - (0.3 * pKTDXApp:GetElapsedTime())
	pNPCUnit:SetColor( color )	
	
	if nStep >= 1.0 then
		-- 자폭 카운트 증가
		nNewCount = nCount - nStep
		if nNewCount <= 0 then
			nNewCount = 0
		end
		
		pNPCUnit:SetInt_LUA(9, nNewCount)
		pNPCUnit:SetNumber_LUA(9, nCurrTime)
	else
		-- 현재 상태 유지
		return false
	end                        

    vPos = pNPCUnit:GetPos()
	vPos.y = vPos.y + 300.0
	       		    
		    		    
    if nNewCount == 9 then    	
		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Mine_Countdown", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pNPCUnit:SetMajorParticle_LUA( 9, pParticle:GetHandle() ) 
		pParticle:ChangeTexForce_LUA( "PC_9.dds" )

    elseif nNewCount == 8 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_8.dds" )
            end
        end                
		
    elseif nNewCount == 7 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_7.dds" )
            end
        end                
		
    elseif nNewCount == 6 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_6.dds" )
            end
        end                
		
    elseif nNewCount == 5 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_5.dds" )
            end
        end                
		
    elseif nNewCount == 4 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_4.dds" )
            end
        end                
		
    elseif nNewCount == 3 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_3.dds" )
            end
        end                
		
    elseif nNewCount == 2 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_2.dds" )
            end
        end                
        
    elseif nNewCount == 1 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 ) 
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_1.dds" )
            end
        end     
        
    elseif nNewCount == 0 then
        -- 자폭상태
        pMajorParticle = pX2Game:GetMajorParticle()
	    pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
	    if pParticle ~= nil then
		    pMajorParticle:DestroyInstance( pParticle )
		    pNPCUnit:ClearMajorParticle_LUA( 9 )
	    end
        return true
    end
    
    return false

end

function SelfBomb_Event_Mimic(pX2Game, pNPCUnit)

	pNPCUnit:SetFlag_LUA( 9, false )
	pNPCUnit:StateChange_LUA( "CHEST_MONSTER_RUNAWAY_END", true )
	
end

function CHEST_MONSTER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pMajorParticle = pX2Game:GetMajorParticle()
	pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
	if pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 9 )
	end

end
