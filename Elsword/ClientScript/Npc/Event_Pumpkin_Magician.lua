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
		"flame.ogg",
		"StickSlash3.ogg",
		"StickSlash4.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
		"FireBall01_GhostMagician.X",	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME			= "Motion_GHOST_MAGICIAN_EVENT1.X",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 600,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
		
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "Weapon_GhostMagician.X",
		WEAPON_BONE_NAME	= "Dummy1_Rhand",
			
		USE_SLASH_TRACE		= FALSE,
	},
	
}

INIT_STATE = 
{
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_WAIT",							},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_WAIT2",							LUA_STATE_START_FUNC = "GHOST_MAGICIAN_EVENT1_WAIT2_STATE_START",
													LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_WAIT2_FRAME_MOVE",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_WAIT3",							LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_WAIT3_FRAME_MOVE"					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_WALK",							LUA_STATE_END_FUNC = "GHOST_MAGICIAN_EVENT1_WALK_STATE_END"						},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_JUMP_UP",							},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_JUMP_DOWN",						LUA_STATE_END_FUNC = "GHOST_MAGICIAN_EVENT1_JUMP_DOWN_STATE_END" },
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_JUMP_UP_DIR",						},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR_STATE_END" },
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_JUMP_LANDING",					},
	
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_ATTACK",							LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_ATTACK_FRAME_MOVE"		},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_FIRE_BALL",						LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_FIRE_BALL_FRAME_MOVE", 
																			STATE_COOL_TIME = 2,		},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_RUNAWAY_END",		},
	
	--리액션 관련
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_SMALL",					LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_DAMAGE_SMALL_FRAME_MOVE"			},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_BIG",						LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_DAMAGE_BIG_FRAME_MOVE"				},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_FLY_BACK",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR",						},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_STAND_UP_FRONT",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_STAND_UP_BACK",					},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DAMAGE_REVENGE",					},
	
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_ESCAPE",							LUA_STATE_START_FUNC = "GHOST_MAGICIAN_EVENT1_DYING_LAND_STATE_START", },
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "GHOST_MAGICIAN_EVENT1_DYING_LAND_STATE_START", },
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DYING_LAND_BACK",					LUA_STATE_START_FUNC = "GHOST_MAGICIAN_EVENT1_DYING_LAND_STATE_START", },
	{ STATE_NAME = "GHOST_MAGICIAN_EVENT1_DYING_SKY",						LUA_STATE_START_FUNC = "GHOST_MAGICIAN_EVENT1_DYING_LAND_STATE_START", },
	
	
	START_STATE					= "GHOST_MAGICIAN_EVENT1_WAIT2",
	WAIT_STATE					= "GHOST_MAGICIAN_EVENT1_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "GHOST_MAGICIAN_EVENT1_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "GHOST_MAGICIAN_EVENT1_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "GHOST_MAGICIAN_EVENT1_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "GHOST_MAGICIAN_EVENT1_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "GHOST_MAGICIAN_EVENT1_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "GHOST_MAGICIAN_EVENT1_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "GHOST_MAGICIAN_EVENT1_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL","GHOST_MAGICIAN_EVENT1_STAND_UP_FRONT","GHOST_MAGICIAN_EVENT1_STAND_UP_BACK",
	"GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT","GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK","GHOST_MAGICIAN_EVENT1_JUMP_DOWN","GHOST_MAGICIAN_EVENT1_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "GHOST_MAGICIAN_EVENT1_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "GHOST_MAGICIAN_EVENT1_DYING_LAND_BACK",
	DYING_SKY					= "GHOST_MAGICIAN_EVENT1_DYING_SKY",

	REVENGE_ATTACK				= "",	

	COMMON_FRAME_FUNC			= "GHOST_MAGICIAN_EVENT1_COMMON_FRAMEMOVE",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 600,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1100,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 70,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 189,
		DEST_GAP			= 200,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 600,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  80,
		FAR_WALK_RATE		= 100,   -- 20,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 20,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 20,
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
		
		WALK_INTERVAL		= 5,	-- 초
		NEAR_WALK_RATE		= 100,   --  30,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}


GHOST_MAGICIAN_EVENT1_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GHOST_MAGICIAN_EVENT1_ATTACK",					"CT_GHOST_MAGICIAN_EVENT1_ATTACK",	},

		
	
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GHOST_MAGICIAN_EVENT1_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GHOST_MAGICIAN_EVENT1_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GHOST_MAGICIAN_EVENT1_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GHOST_MAGICIAN_EVENT1_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GHOST_MAGICIAN_EVENT1_WAIT2",					"CT_GHOST_MAGICIAN_EVENT1_WAIT2",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GHOST_MAGICIAN_EVENT1_WAIT3",					"CT_GHOST_MAGICIAN_EVENT1_WAIT3",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GHOST_MAGICIAN_EVENT1_WAIT2",					"CT_GHOST_MAGICIAN_EVENT1_WAIT2_B",		},
	},
	
	CT_GHOST_MAGICIAN_EVENT1_FIRE_BALL = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 0,		
	},
	
	CT_GHOST_MAGICIAN_EVENT1_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,
		RATE						= 40,
	},
	
	CT_GHOST_MAGICIAN_EVENT1_WAIT2 = 
	{
		ANIM_PLAY_COUNT		= 8,
		RATE				= 20,
	},
	CT_GHOST_MAGICIAN_EVENT1_WAIT3 = 
	{
		ANIM_PLAY_COUNT		= 15,
		RATE				= 20,
	},
	
	CT_GHOST_MAGICIAN_EVENT1_WAIT2_B = 
	{
		ANIM_PLAY_COUNT		= 20,
		RATE				= 100,
	},
}

GHOST_MAGICIAN_EVENT1_WAIT2 = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
	},
}

GHOST_MAGICIAN_EVENT1_WAIT3 = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT",						},
	},
}

GHOST_MAGICIAN_EVENT1_WALK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GHOST_MAGICIAN_EVENT1_ATTACK",					"CT_GHOST_MAGICIAN_EVENT1_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GHOST_MAGICIAN_EVENT1_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GHOST_MAGICIAN_EVENT1_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GHOST_MAGICIAN_EVENT1_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR",			},
	},
	
	CT_GHOST_MAGICIAN_EVENT1_FIRE_BALL = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 0,
		ESCAPE_CHECK				= TRUE,
	},

	
	CT_GHOST_MAGICIAN_EVENT1_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 150,
		RATE						= 40,
	},

	
	TALK_BOX = 
	{
	--	{ RATE = 8, MESSAGE = STR_ID_1486 },
	},
}

GHOST_MAGICIAN_EVENT1_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
	},
}

GHOST_MAGICIAN_EVENT1_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GHOST_MAGICIAN_EVENT1_JUMP_LANDING",				},
	},
}

GHOST_MAGICIAN_EVENT1_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR",				},
	},
}

GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GHOST_MAGICIAN_EVENT1_JUMP_LANDING",				},
	},
}

GHOST_MAGICIAN_EVENT1_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT",					},
	},
}

GHOST_MAGICIAN_EVENT1_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.470, "StickSlash3.ogg" },
    SOUND_PLAY1			= { 1.339, "StickSlash3.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT",					},
	},
	
	ATTACK_TIME0				= { 0.451, 0.663, },
	ATTACK_TIME1				= { 1.317, 1.546, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
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
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	TALK_BOX =
	{
	--	{ RATE = 8, MESSAGE = STR_ID_1460 },
	--	{ RATE = 8, MESSAGE = STR_ID_1628 },
	},
}


GHOST_MAGICIAN_EVENT1_FIRE_BALL = 
{
	ANIM_NAME					= "FireBall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GHOST_MAGICIAN_EVENT1_WAIT",												},
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1629 },
	--	{ RATE = 10, MESSAGE = STR_ID_1630 },
	},
}



GHOST_MAGICIAN_EVENT1_DAMAGE_SMALL = 
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GHOST_MAGICIAN_EVENT1_WAIT",												},
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1465 },
	--	{ RATE = 10, MESSAGE = STR_ID_1463 },
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	TALK_BOX = 
	{
	--	{ RATE = 14, MESSAGE = STR_ID_1464 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GHOST_MAGICIAN_EVENT1_WAIT",												},
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT",	"CT_GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GHOST_MAGICIAN_EVENT1_STAND_UP_FRONT",			},
	},
	
	CT_GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 5,
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1465 },
	--	{ RATE = 10, MESSAGE = STR_ID_1463 },
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK",	"CT_GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GHOST_MAGICIAN_EVENT1_STAND_UP_BACK",			},
	},
	
	CT_GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 5,
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1465 },
	--	{ RATE = 10, MESSAGE = STR_ID_1463 },
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	ADD_ROTATE_Z				= -45.0,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING",		},
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1433 },
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	ADD_ROTATE_Z				= -45.0,	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_BACK",		},
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1433 },
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GHOST_MAGICIAN_EVENT1_WAIT",					},
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1433 },
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT",	"CT_GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_STAND_UP_FRONT",			},
	},
	
	CT_GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 5,
	},
}

GHOST_MAGICIAN_EVENT1_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT",				},
	},
}

GHOST_MAGICIAN_EVENT1_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT", },
	},		
}

GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT = 
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	ANIM_WAIT_TIME				= 1,

	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.627, "StickSlash4.ogg" },
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT",				},
	},
		
	ATTACK_TIME0				= { 0.40, 0.60, },	
	ATTACK_TIME1				= { 1.00, 1.10, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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

GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_WAIT_TIME				= 1,

	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.637, "StickSlash4.ogg" },
	
	FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT", },
	},	
	
		
	ATTACK_TIME0				= { 0.40, 0.60, },	
	ATTACK_TIME1				= { 1.00, 1.10, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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

GHOST_MAGICIAN_EVENT1_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GHOST_MAGICIAN_EVENT1_WAIT",					},
	},
}



GHOST_MAGICIAN_EVENT1_ESCAPE = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	ESCAPE_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

GHOST_MAGICIAN_EVENT1_DYING_LAND_FRONT = 
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
	
GHOST_MAGICIAN_EVENT1_DYING_LAND_BACK = 
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

GHOST_MAGICIAN_EVENT1_DYING_SKY = 
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

GHOST_MAGICIAN_EVENT1_RUNAWAY_END =
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
function GHOST_MAGICIAN_EVENT1_WAIT2_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, 0 )
	pNPCUnit:SetFlag_LUA( 9, false )
	
    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EVENT_HOVALANCHE"], 999999 )
	if pUID == 0 then
		pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EVENT_HALLOWEEN_GIANT_LINKER"], 999999 )	
	end
	
	if pUID ~= 0 then
		nUnitListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nUnitListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil then
				if pUnit:GetUID() == pUID then
					if pUnit:GetInt_LUA( 0 ) >= 1 then
						pNPCUnit:SetFlag_LUA( 9, true )
						pNPCUnit:SetInt_LUA( 9, 10 )
						pNPCUnit:SetNumber_LUA(9, pX2Game:GetGameTime())
					end
					return
				end
			end	            
		end	             
	end		            
end
--------------------------------------------------------------------
function GHOST_MAGICIAN_EVENT1_WAIT2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.34 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_WAIT3_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function GHOST_MAGICIAN_EVENT1_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function GHOST_MAGICIAN_EVENT1_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function GHOST_MAGICIAN_EVENT1_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.44 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.15 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GHOST_MAGICIAN_EVENT1_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.15 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end


function GHOST_MAGICIAN_EVENT1_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	pMajorParticle = pX2Game:GetMajorParticle()
	pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
	if pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 9 )
	end
	
end


function GHOST_MAGICIAN_EVENT1_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.664 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	
end

function GHOST_MAGICIAN_EVENT1_FIRE_BALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.366 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()		
		if pDamageEffect ~= nil then
		    pDamageEffect:CreateInstance_LUA( pNPCUnit, "MONSTER_FIREBALL", pNPCUnit:GetBonePos_LUA( "Dummy2_Lhand" ), pos.y )
        end		
	end
	
end

function GHOST_MAGICIAN_EVENT1_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

	dying1 = pNPCUnit:GetStateID_LUA( "GHOST_MAGICIAN_EVENT1_ESCAPE" )
	dying2 = pNPCUnit:GetStateID_LUA( "GHOST_MAGICIAN_EVENT1_DYING_LAND_FRONT" )
	dying3 = pNPCUnit:GetStateID_LUA( "GHOST_MAGICIAN_EVENT1_DYING_LAND_BACK" )
	dying4 = pNPCUnit:GetStateID_LUA( "GHOST_MAGICIAN_EVENT1_DYING_SKY" )
	now = pNPCUnit:GetNowStateID()
	if now == dying1 or now == dying2 or now == dying3 or now == dying4 then
		return
	end

	if pNPCUnit:GetInt_LUA( 0 ) == 2 and pNPCUnit:GetNowStateID() ~= pNPCUnit:GetStateID_LUA( "GHOST_MAGICIAN_EVENT1_ESCAPE" ) then
		pNPCUnit:StateChange_LUA( "GHOST_MAGICIAN_EVENT1_ESCAPE", false )
		return
	end

    bBomb = SelfBomb_Ready_Event_Magician(pKTDXApp, pX2Game, pNPCUnit)	
    if bBomb == true then
        SelfBomb_Event_Magician(pX2Game, pNPCUnit)
    end     

end

function SelfBomb_Ready_Event_Magician(pKTDXApp, pX2Game, pNPCUnit)

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
	       		    
		    		    
    if nNewCount >= 9 then    	
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

function SelfBomb_Event_Magician(pX2Game, pNPCUnit)

	pNPCUnit:SetFlag_LUA( 9, false )
	pNPCUnit:StateChange_LUA( "GHOST_MAGICIAN_EVENT1_RUNAWAY_END", true )
	
end
