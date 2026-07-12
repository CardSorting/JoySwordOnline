-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.0,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	"Landing_Meat01.ogg",
	"Shadow_Charger_Growl01.ogg",
	"Swing_Medium01.ogg",
	"Swing_Medium02.ogg",
	"Squish_Hit01.wav",
	"Squish_Hit02.wav",
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
	MOTION_FILE_NAME		= "Motion_Shadow_Charger.x",  
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 700,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 5000,
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
}

INIT_STATE = 
{
	{ STATE_NAME = "CHARGER_START",							},
	
	{ STATE_NAME = "CHARGER_WAIT",							},
	{ STATE_NAME = "CHARGER_WAIT_HABIT",						},
	
	{ STATE_NAME = "CHARGER_WALK",							LUA_STATE_END_FUNC = "CHARGER_WALK_STATE_END"			,				},

	
	{ STATE_NAME = "CHARGER_DASH",							},
	{ STATE_NAME = "CHARGER_DASH_END",						},
		


	{ STATE_NAME = "CHARGER_JUMP_UP",							},
	{ STATE_NAME = "CHARGER_JUMP_DOWN",						LUA_STATE_END_FUNC = "CHARGER_JUMP_DOWN_STATE_END"	,				},
	{ STATE_NAME = "CHARGER_JUMP_UP_DIR",						},
	{ STATE_NAME = "CHARGER_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "CHARGER_JUMP_DOWN_DIR_STATE_END"	,			},
	{ STATE_NAME = "CHARGER_JUMP_LANDING",					},

		
	{ STATE_NAME = "CHARGER_ATTACK_A_ATTACK", },
	{ STATE_NAME = "CHARGER_ATTACK_A_END",						LUA_FRAME_MOVE_FUNC = "CHARGER_ATTACK_A_END_FRAME_MOVE", },
	{ STATE_NAME = "CHARGER_ATTACK_A_READY",						LUA_FRAME_MOVE_FUNC = "CHARGER_ATTACK_A_READY_FRAME_MOVE", STATE_COOL_TIME = 15,},
	
	{ STATE_NAME = "CHARGER_ATTACK_B_READY",  STATE_COOL_TIME = 10, },
	{ STATE_NAME = "CHARGER_ATTACK_B_START", LUA_STATE_START_FUNC = "CHARGER_ATTACK_B_START_STATE_START_FUNC",	 },
	{ STATE_NAME = "CHARGER_ATTACK_B_END", LUA_STATE_START_FUNC = "CHARGER_ATTACK_B_END_STATE_START_FUNC",	 },
	
	
	{ STATE_NAME = "CHARGER_STAND_UP_ATTACK_FRONT",						}, --LUA_FRAME_MOVE_FUNC = "CHARGER_STAND_UP_ATTACK_FRONT_FRAME_MOVE" , },
	{ STATE_NAME = "CHARGER_STAND_UP_ATTACK_BACK",						}, --LUA_FRAME_MOVE_FUNC = "CHARGER_STAND_UP_ATTACK_BACK_FRAME_MOVE" , },

	
	--리액션 관련
	{ STATE_NAME = "CHARGER_DAMAGE_FRONT",					LUA_FRAME_MOVE_FUNC = "CHARGER_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "CHARGER_DAMAGE_BACK",						LUA_FRAME_MOVE_FUNC = "CHARGER_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "CHARGER_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "CHARGER_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "CHARGER_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "CHARGER_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "CHARGER_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "CHARGER_DAMAGE_FLY_BACK",					},
	{ STATE_NAME = "CHARGER_DAMAGE_AIR",						},
	{ STATE_NAME = "CHARGER_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "CHARGER_DAMAGE_AIR_UP",					},
	--{ STATE_NAME = "CHARGER_DAMAGE_AIR_SMALL",					},
	{ STATE_NAME = "CHARGER_DAMAGE_AIR_FALL",					},
	{ STATE_NAME = "CHARGER_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "CHARGER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "CHARGER_STAND_UP_FRONT",					},
	{ STATE_NAME = "CHARGER_STAND_UP_BACK",					},
	
	{ STATE_NAME = "CHARGER_DAMAGE_REVENGE",					},
	
	
	
	
	{ STATE_NAME = "CHARGER_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "CHARGER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "CHARGER_DYING_LAND_BACK",					LUA_STATE_START_FUNC = "CHARGER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "CHARGER_DYING_SKY",						LUA_STATE_START_FUNC = "CHARGER_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "CHARGER_START",
	WAIT_STATE					= "CHARGER_WAIT",
	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CHARGER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CHARGER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CHARGER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CHARGER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CHARGER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CHARGER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CHARGER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CHARGER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CHARGER_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "CHARGER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CHARGER_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "CHARGER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CHARGER_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "CHARGER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "CHARGER_DAMAGE_AIR_FALL", "CHARGER_STAND_UP_FRONT","CHARGER_STAND_UP_BACK",
	"CHARGER_STAND_UP_ATTACK_FRONT","CHARGER_STAND_UP_ATTACK_BACK","CHARGER_JUMP_DOWN",	"CHARGER_JUMP_LANDING",	},	
	
	DYING_LAND_FRONT			= "CHARGER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CHARGER_DYING_LAND_BACK",
	DYING_SKY					= "CHARGER_DYING_SKY",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 50, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 70, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,
		DEST_GAP			= 200,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 500,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 80,   --  70,
		FAR_WALK_RATE		= 10,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 4,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 1000,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 0, -- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  30,
		DOWN_DOWN_RATE		= 0,
		
		LINE_END_RANGE		= 80,	-- cm
	},

}




CHARGER_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CHARGER_WAIT",		"CT_CHARGER_WAIT"				},
	},
	
	CT_CHARGER_WAIT = 
	{
		STATE_TIME_OVER			= 2.8,
	},
}



CHARGER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",					},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHARGER_ATTACK_A_READY",			"CT_CHARGER_ATTACK_A_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHARGER_ATTACK_B_READY",			"CT_CHARGER_ATTACK_B_READY",	},
		
		
		
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHARGER_WAIT_HABIT",					"CT_CHARGER_WAIT_HABIT",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CHARGER_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CHARGER_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CHARGER_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CHARGER_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CHARGER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CHARGER_JUMP_DOWN_DIR",				},
	},
	


	CT_CHARGER_ATTACK_A_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR			= 800,
		SAME_LINE_WITH_TARGET			= TRUE,
		RATE					= 15,
	},

	CT_CHARGER_ATTACK_B_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR			= 500,
		RATE					= 40,
	},
	

	CT_CHARGER_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE					= 60,
		HAVE_TARGET				= 0,		-- false
	},
		
}




CHARGER_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",						},
	},
}


CHARGER_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.001, "CHARGER_Walk.ogg" },
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHARGER_ATTACK_A_READY",			"CT_CHARGER_ATTACK_A_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHARGER_ATTACK_B_READY",			"CT_CHARGER_ATTACK_B_READY",	},
		
		
				
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CHARGER_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CHARGER_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CHARGER_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CHARGER_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CHARGER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CHARGER_JUMP_DOWN_DIR",				},
	},
	
	CT_CHARGER_ATTACK_A_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR			= 800,
		SAME_LINE_WITH_TARGET			= TRUE,
		RATE					= 15,
	},

	CT_CHARGER_ATTACK_B_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		HAVE_TARGET					= 1,
		DISTANCE_TO_TARGET_NEAR			= 500,
		RATE					= 40,
	},
	
	
}


CHARGER_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	LAND_CONNECT					= FALSE,
	
	--SUPER_ARMOR					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "CHARGER_Dash.ogg" },
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.2,
	

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CHARGER_JUMP_DOWN_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CHARGER_ATTACK_A_ATTACK",				"CT_CHARGER_ATTACK_A_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CHARGER_DASH_END",						"CT_CHARGER_DASH_END",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"CHARGER_DASH_END",						"CF_CHARGER_DASH_END",				},		
	},
	
	
	CT_CHARGER_ATTACK_A_ATTACK = 
	{
		EVENT_INTERVAL_ID				= 0,
		DISTANCE_TO_TARGET_NEAR			= 600,
		SAME_LINE_WITH_TARGET			= TRUE,
		RATE							= 25,
	},
	
	CT_CHARGER_DASH_END = 
	{
		EVENT_INTERVAL_ID				= 0,
		DISTANCE_TO_TARGET_NEAR			= 150,
		RATE							= 100,
	},
}


CHARGER_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "CHARGER_DashEnd.ogg" },
	
	--SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",						},
	},
}




CHARGER_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHARGER_JUMP_DOWN",			},
		
	},	
}

CHARGER_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHARGER_JUMP_LANDING",				},
	},
}

CHARGER_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHARGER_JUMP_DOWN_DIR",				},
	},
	
}

CHARGER_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHARGER_JUMP_LANDING",				},
	},
}

CHARGER_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0					= { 0.001, "Landing_Meat01.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",						},
	},
}

CHARGER_STAND_UP_ATTACK_FRONT = 
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",				},
	},

		
	ATTACK_TIME0				= { 0.4, 0.96, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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

        CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Head",
	},
}


CHARGER_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	MIND_FLAG				= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	--FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_WAIT", },
	},	
	
		
	ATTACK_TIME0				= { 0.4, 0.95, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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

        CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Head",
	},
}



CHARGER_ATTACK_A_READY = 
{
	ANIM_NAME					= "AttackAReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	--SUPER_ARMOR				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

   	SOUND_PLAY0					= { 0.152, "Shadow_Charger_Growl01.ogg" },
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_ATTACK_A_ATTACK", },
	},
	
	EFFECT_SET_LIST =
	{
	},
}



CHARGER_ATTACK_A_ATTACK = 
{
	ANIM_NAME					= "AttackAAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,


	PASSIVE_SPEED_X				= 800,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CHARGER_ATTACK_A_END",						"CF_CHARGER_ATTACK_A_END",				},		
	},
	
	EFFECT_SET_LIST =
	{
	},

	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_LHand01",
		"ATTACK_SPHERE1_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},


	ATTACK_TIME0				= { 0.01, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.7,
		},
		
		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 800,

        CAN_REVENGE				= TRUE,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,
	},

}


CHARGER_ATTACK_A_END = 
{
	ANIM_SPEED					= 0.75,
	ANIM_NAME					= "AttackAEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR				= FALSE,

	PASSIVE_SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	--SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*100,
	--SPEED_Y						= 0,	
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",									},	
	},
	
	EFFECT_SET_LIST =
	{
	},
}



CHARGER_ATTACK_B_READY =
{
	ANIM_NAME					= "AttackBReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,
	
	SOUND_PLAY0					= { 0.89, "Swing_Medium01.ogg" },
	
    SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_ATTACK_B_START",							},	
	},

	EFFECT_SET_LIST =
	{
	},
}

CHARGER_ATTACK_B_START =
{
	ANIM_NAME					= "AttackBStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,
	
    SOUND_PLAY0					= { 0.01, "Squish_Hit01.wav" },
	SOUND_PLAY1					= { 0.15, "Squish_Hit02.wav" },
		
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	GRAP_SHAKE_COUNT			= 15,
		
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],				"CHARGER_ATTACK_B_END",  "CF_CHARGER_ATTACK_B_END", },
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_ATTACK_B_END",							},	
	},

	EFFECT_SET_LIST =
	{
	},
	
	ATTACK_TIME0				= { 0.01, 0.2 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		--REACT_TYPE		= REACT_TYPE["RT_NEW_GRAPPLE"],
		
		CAN_REVENGE		= FALSE,

		DAMAGE = 
		{
			PHYSIC		= 0.8,
		},
		
		BACK_SPEED_Y			= 450,
	
	},
	
	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_LHand01",
		"ATTACK_SPHERE1_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Head",
	},
}


CHARGER_ATTACK_B_END =
{
	ANIM_NAME					= "AttackBEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0					= { 0.01, "Swing_Medium02.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",							},	
	},
}



CHARGER_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_WAIT",												},
	},
}


CHARGER_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_WAIT",												},
	},
}

CHARGER_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_WAIT",												},
	},
}





CHARGER_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0					= { 0.275, "CHARGERVoice_Damage.ogg" , 24 },
	SOUND_PLAY1					= { 0.322, "CHARGER_StandUp1.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CHARGER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_STAND_UP_FRONT",			},
	},
	
}

CHARGER_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0					= { 0.275, "CHARGERVoice_Damage.ogg" , 24 },
	SOUND_PLAY1					= { 0.421, "CHARGER_StandUp1.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CHARGER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHARGER_STAND_UP_BACK",			},
	},
	
}

CHARGER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHARGER_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

CHARGER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHARGER_DAMAGE_DOWN_BACK",		},
	},
}

CHARGER_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHARGER_WAIT",					},
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}

CHARGER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CHARGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

CHARGER_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	--PASSIVE_SPEED_Y				= -1,
	--SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * 0.6,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHARGER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHARGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

CHARGER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"CHARGER_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHARGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

CHARGER_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_STAND_UP_FRONT",			},
	},
	
}

CHARGER_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT",				},
	},
}

CHARGER_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHARGER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHARGER_WAIT", },
	},		
}



CHARGER_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
CHARGER_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

CHARGER_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------

function CHARGER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function CHARGER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function CHARGER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function CHARGER_ATTACK_A_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

function CHARGER_ATTACK_A_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

function CHARGER_ATTACK_A_END_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.133 ) then
		pNPCUnit:SetPassiveSpeed( INIT_PHYSIC["RUN_SPEED"]/2 , 0 )
		pNPCUnit:SetSpeedX(0)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.433 ) then
		pNPCUnit:SetPassiveSpeed( 0 , 0 )
		pNPCUnit:SetSpeedX(0)
	end

end



function CHARGER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function CHARGER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function CHARGER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function CHARGER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function CHARGER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end







function CHARGER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetUserGrapReset()

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end




--------------------------------------------------------------------
-- frame move functions 
--------------------------------------------------------------------

function CHARGER_ATTACK_B_START_STATE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )

	local vDirVector		= pNPCUnit:GetDirVector()
	local bIsRight			= pNPCUnit:GetIsRight()
	
	local vGrapPos			= pNPCUnit:GetPos()
	
	if bIsRight == true then
		vGrapPos = MovePos( vGrapPos, vDirVector, 250 )
	else
		vGrapPos = MovePos( vGrapPos, vDirVector, -250 )
	end
	
	pNPCUnit:SetUserGrap(true, vGrapPos)
end



--------------------------------------------------------------------

function CHARGER_ATTACK_B_END_STATE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUserGrapReset()
end

--------------------------------------------------------------------

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end



--------------------------------------------------------------------
function CF_CHARGER_ATTACK_A_END( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() < 0.1 then
		return false 
	end
	
	
 	local bIsRight = pNPCUnit:GetIsRight()
	local vStartPos = pNPCUnit:GetLineGroupStartPos()
	local vEndPos = pNPCUnit:GetLineGroupEndPos()

 	
 	if bIsRight == true and pNPCUnit:GetDistanceFrom(vEndPos) < 280.0 then
 	
 	    return true
 	    
   	end
   	
   	if bIsRight == false and pNPCUnit:GetDistanceFrom(vStartPos) < 280.0 then

		return true
  	
    end

     if pNPCUnit:GetStateTime() > 1.333 then
		return true
	end
    
	    return false 	
end
--------------------------------------------------------------------
function CF_CHARGER_ATTACK_B_END( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() > 5.0 then
		return true
	end
	
    if pNPCUnit:IsLostGrap() == true and pNPCUnit:GetStateTime() > 0.7 then
        return true
    end
    return false 	
end
--------------------------------------------------------------------

function CF_CHARGER_DASH_END( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() < 0.1 then
		return false 
	end
	
	
 	local bIsRight = pNPCUnit:GetIsRight()
	local vStartPos = pNPCUnit:GetLineGroupStartPos()
	local vEndPos = pNPCUnit:GetLineGroupEndPos()

 	
 	if bIsRight == true and pNPCUnit:GetDistanceFrom(vEndPos) < 280.0 then
 	
 	    return true
 	    
   	end
   	
   	if bIsRight == false and pNPCUnit:GetDistanceFrom(vStartPos) < 280.0 then

		return true
  	
    end

    if pNPCUnit:GetStateTime() > 2.0 then
		return true
	end
    
    return false 	

end
