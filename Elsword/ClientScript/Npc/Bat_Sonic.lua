-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


BAT_SONIC_ADD_POS_Y = 0

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.5,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"",
	},
	
	READY_SOUND = 
	{
		"BatBig_Fly2.ogg",
		"BatBig_Fly3.ogg",
		"BatBig_Cry.ogg",
		"BatBig_DownLand.ogg",
		"BatBig_Sonar.ogg",
	},
	
	
	READY_XMESH = 
	{
		
	},
	
	READY_XSKIN_MESH = 
	{
		"BatBig_StandUpAttack.X",
		"Bat_StandUpAttack.X",
		"BatBig_SuperSonicWaves.X",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_BatBig.x",
	MOTION_CHANGE_TEX_XET	= "Bat_Sonic.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 500,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 6000,
	MP_CHANGE_RATE		= 3,
	MP_CHARGE_RATE		= 200,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--DRAW_SMALL_MP_BAR	= TRUE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	RAGE_COUNT_MAX		= 20,
	RAGE_TIME_MAX		= 7,
	
}

INIT_STATE = 
{
	{ STATE_NAME = "BAT_SONIC_START",						},
	{ STATE_NAME = "BAT_SONIC_WAIT_ZERO2",					},
	{ STATE_NAME = "BAT_SONIC_WAIT",						},

	{ STATE_NAME = "BAT_SONIC_WALK",						},
	{ STATE_NAME = "BAT_SONIC_JUMP_UP",						},
	{ STATE_NAME = "BAT_SONIC_JUMP_DOWN",					LUA_STATE_END_FUNC = "BAT_SONIC_JUMP_DOWN_STATE_END", },
	{ STATE_NAME = "BAT_SONIC_JUMP_UP_DIR",					},
	{ STATE_NAME = "BAT_SONIC_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "BAT_SONIC_JUMP_DOWN_DIR_STATE_END", },
	{ STATE_NAME = "BAT_SONIC_JUMP_LANDING",				},

	{ STATE_NAME = "BAT_SONIC_ATTACK_AIR_FRONT",			},
	{ STATE_NAME = "BAT_SONIC_ATTACK_SUPER_SONIC_WAVE",		LUA_FRAME_MOVE_FUNC = "BAT_SONIC_ATTACK_SUPER_SONIC_WAVE_FRAME_MOVE", 
															STATE_COOL_TIME = 10,			},
	
	--리액션 관련
	{ STATE_NAME = "BAT_SONIC_DAMAGE_SMALL",				LUA_STATE_START_FUNC = "BAT_SONIC_DAMAGE_SMALL_STATE_START",
	                                                        LUA_FRAME_MOVE_FUNC = "BAT_SONIC_DAMAGE_SMALL_FRAME_MOVE",			},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_BIG",					LUA_STATE_START_FUNC = "BAT_SONIC_DAMAGE_BIG_STATE_START",
	                                                        LUA_FRAME_MOVE_FUNC = "BAT_SONIC_DAMAGE_BIG_FRAME_MOVE",			},

	{ STATE_NAME = "BAT_SONIC_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "BAT_SONIC_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "BAT_SONIC_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_AIR",					},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "BAT_SONIC_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE", },
	{ STATE_NAME = "BAT_SONIC_DAMAGE_STAND_UP_BACK",		},
	{ STATE_NAME = "BAT_SONIC_DAMAGE_STAND_UP_FRONT",		},
	{ STATE_NAME = "BAT_SONIC_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "BAT_SONIC_STAND_UP_ATTACK_FRONT_FRAME_MOVE",	},
	{ STATE_NAME = "BAT_SONIC_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "BAT_SONIC_STAND_UP_ATTACK_BACK_FRAME_MOVE",	},
		
	
	{ STATE_NAME = "BAT_SONIC_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "BAT_SONIC_DYING_LAND_STATE_START", },
	{ STATE_NAME = "BAT_SONIC_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "BAT_SONIC_DYING_LAND_STATE_START", },
	{ STATE_NAME = "BAT_SONIC_DYING_SKY",					LUA_STATE_START_FUNC = "BAT_SONIC_DYING_LAND_STATE_START", },

	
	
	
	START_STATE					= "BAT_SONIC_START",
	WAIT_STATE					= "BAT_SONIC_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "BAT_SONIC_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "BAT_SONIC_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "BAT_SONIC_DAMAGE_AIR",
	BIG_DAMAGE_LAND_FRONT		= "BAT_SONIC_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "BAT_SONIC_DAMAGE_BIG",
	BIG_DAMAGE_AIR				= "BAT_SONIC_DAMAGE_AIR",
	DOWN_DAMAGE_LAND_FRONT		= "BAT_SONIC_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "BAT_SONIC_DAMAGE_DOWN_BACK",
	DOWN_DAMAGE_AIR				= "BAT_SONIC_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "BAT_SONIC_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "BAT_SONIC_DAMAGE_AIR_UP",
	FLY_DAMAGE_FRONT			= "BAT_SONIC_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "BAT_SONIC_DAMAGE_FLY_BACK",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "BAT_SONIC_DAMAGE_SMALL",
	DAMAGE_FLUSH_LAND_BACK		= "BAT_SONIC_DAMAGE_SMALL",
	DAMAGE_FLUSH_AIR			= "BAT_SONIC_DAMAGE_AIR",
	DAMAGE_REVENGE				= "BAT_SONIC_DAMAGE_SMALL",
	
	DAMAGE_EXTRA_STATES         = {"BAT_SONIC_DAMAGE_AIR_FALL","BAT_SONIC_DAMAGE_STAND_UP_BACK","BAT_SONIC_DAMAGE_STAND_UP_FRONT","BAT_SONIC_STAND_UP_ATTACK_FRONT","BAT_SONIC_STAND_UP_ATTACK_BACK",
	"BAT_SONIC_JUMP_DOWN","BAT_SONIC_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "BAT_SONIC_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "BAT_SONIC_DYING_LAND_BACK",
	DYING_SKY					= "BAT_SONIC_DYING_SKY",
	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 600,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1500,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 120,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
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
		PATROL_BEGIN_RATE		= 50, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
}



BAT_SONIC_START = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BAT_SONIC_WAIT_ZERO2",			"CT_BAT_SONIC_WAIT_ZERO_2" },
	},
	
	CT_BAT_SONIC_WAIT_ZERO_2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		RATE						= 100,
	},
}


BAT_SONIC_WAIT_ZERO2 = 
{
	ANIM_NAME					= "WaitZero2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.602, "BatBig_Cry.ogg" },
    SOUND_PLAY1			= { 0.642, "BatBig_Fly3.ogg" },

	EVENT_INTERVAL_TIME0		= 2,
	
	ADD_POS_Y					= -45,
	G_ACCEL						= 2000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],				"BAT_SONIC_WAIT",						},
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 7, MESSAGE = STR_ID_2570 },
	},
}

BAT_SONIC_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	G_ACCEL						= 4000,
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN",							},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_SONIC_ATTACK_AIR_FRONT",				"CT_BAT_SONIC_ATTACK_AIR_FRONT"		}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_SONIC_ATTACK_SUPER_SONIC_WAVE",		"CT_BAT_SONIC_ATTACK_SUPER_SONIC_WAVE"		},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BAT_SONIC_WALK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BAT_SONIC_WALK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BAT_SONIC_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BAT_SONIC_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BAT_SONIC_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BAT_SONIC_JUMP_DOWN_DIR",					},
		
	},
	
	CT_BAT_SONIC_ATTACK_AIR_FRONT = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 60,
	},
	
	CT_BAT_SONIC_ATTACK_SUPER_SONIC_WAVE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		SAME_LINE_WITH_TARGET		= TRUE,
		--MY_MP_MORE_THAN_PERCENT		= 100,		
		RATE						= 60,
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 7, MESSAGE = STR_ID_2570 },
	},
}





BAT_SONIC_WALK = 
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
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN",							},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_SONIC_ATTACK_AIR_FRONT",					"CT_BAT_SONIC_ATTACK_AIR_FRONT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_SONIC_ATTACK_SUPER_SONIC_WAVE",			"CT_BAT_SONIC_ATTACK_SUPER_SONIC_WAVE"		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BAT_SONIC_WAIT",								},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BAT_SONIC_JUMP_UP",							},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BAT_SONIC_JUMP_UP_DIR",						}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BAT_SONIC_JUMP_DOWN",							},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BAT_SONIC_JUMP_DOWN_DIR",						},
		
	},

	CT_BAT_SONIC_ATTACK_AIR_FRONT = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 60,
	},
	
	CT_BAT_SONIC_ATTACK_SUPER_SONIC_WAVE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		SAME_LINE_WITH_TARGET		= TRUE,
		--MY_MP_MORE_THAN_PERCENT		= 100,
		RATE						= 60,
	},
	
	TALK_BOX = 
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 5, MESSAGE = STR_ID_1501 },
	},
}


BAT_SONIC_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45 + BAT_SONIC_ADD_POS_Y,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"BAT_SONIC_JUMP_DOWN", },
	},
}

BAT_SONIC_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	IMMADIATE_PACKET_SEND		= TRUE,		
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_SONIC_JUMP_LANDING", },
	},
}


BAT_SONIC_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= 45 + BAT_SONIC_ADD_POS_Y,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"BAT_SONIC_JUMP_DOWN_DIR", },
	},
}

BAT_SONIC_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_SONIC_JUMP_LANDING", },
	},
}


BAT_SONIC_JUMP_LANDING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT",						},
	},
}



BAT_SONIC_ATTACK_AIR_FRONT = 
{
	ANIM_NAME					= "AttackAirFront",
	ANIM_SPEED					= 0.7,
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ATTACK_TIME0				= { 1, 1.5, },
	
	
    SOUND_PLAY0			= { 0.220, "BatBig_Cry.ogg" , 40 },
    SOUND_PLAY1			= { 1.003, "BatBig_Fly2.ogg" },
    SOUND_PLAY2			= { 1.657, "BatBig_Fly2.ogg" },
    SOUND_PLAY3			= { 2.146, "BatBig_Fly2.ogg" },

	VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_X		= -70,
	
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1502 },
		{ RATE = 10, MESSAGE = STR_ID_1503 },
	},
	
	
	DISABLE_ATTACK_BOX = 
	{
		"Lfoot",
		"Rfoot",
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
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
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 1000,
		
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






BAT_SONIC_ATTACK_SUPER_SONIC_WAVE = 
{
	ANIM_NAME					= "AttackSuperSonicWaves",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0					= { 0.498, "BatBig_Fly3.ogg" },
    SOUND_PLAY1					= { 1.049, "BatBig_Cry.ogg" },
    SOUND_PLAY2					= { 1.128, "BatBig_Fly3.ogg" },
    SOUND_PLAY3					= { 1.400, "BatBig_Sonar.ogg" },
    SOUND_PLAY4					= { 1.831, "BatBig_Fly3.ogg" },
    SOUND_PLAY5					= { 2.455, "BatBig_Fly3.ogg" },

	VIEW_TARGET					= TRUE,
	--SUPER_ARMOR					= TRUE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	
	DISABLE_ATTACK_BOX = 
	{
		"Upbody",
		"Lowbody",
		"Head",
		"Rfoot",
		"Lfoot",
	},
	
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1504 },
		{ RATE = 10, MESSAGE = STR_ID_1505 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},

}






BAT_SONIC_DAMAGE_SMALL = 
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_1506 },
	},
}

BAT_SONIC_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_1506 },
	},
}

BAT_SONIC_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ADD_ROTATE_Z				= -45.0,	
		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"BAT_SONIC_DAMAGE_AIR_DOWN_LANDING",		},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1507 },
  	},
}



BAT_SONIC_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"BAT_SONIC_DAMAGE_DOWN_BACK",		},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1507 },
  	},
}

BAT_SONIC_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BAT_SONIC_WAIT", },
	},
}

BAT_SONIC_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.100, "BatBig_Cry.ogg" , 30 },

	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"BAT_SONIC_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

BAT_SONIC_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_SONIC_ADD_POS_Y,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"BAT_SONIC_DAMAGE_AIR_FALL", },	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_SONIC_DAMAGE_AIR_DOWN_LANDING", },	
	},
}

BAT_SONIC_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	G_ACCEL						= 4000,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"BAT_SONIC_DAMAGE_AIR_UP", },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_SONIC_DAMAGE_AIR_DOWN_LANDING", },
	},
}

BAT_SONIC_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.030, "BatBig_Cry.ogg" , 40 },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BAT_SONIC_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"BAT_SONIC_STAND_UP_ATTACK_FRONT",	"CT_BAT_SONIC_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_DAMAGE_STAND_UP_FRONT", },

	},
	
	CT_BAT_SONIC_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,
	},
	
	
	TALK_BOX =
 	{
		{ RATE = 10, MESSAGE = STR_ID_1449 },
	},
}

BAT_SONIC_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.030, "BatBig_Cry.ogg" , 40 },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BAT_SONIC_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"BAT_SONIC_STAND_UP_ATTACK_BACK",	"CT_BAT_SONIC_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BAT_SONIC_DAMAGE_STAND_UP_BACK",	},
	},
	
	CT_BAT_SONIC_STAND_UP_ATTACK_BACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,
	},
	
	TALK_BOX =
 	{
		{ RATE = 10, MESSAGE = STR_ID_1449 },
	},
}

BAT_SONIC_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"BAT_SONIC_STAND_UP_ATTACK_FRONT",	"CT_BAT_SONIC_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_DAMAGE_STAND_UP_FRONT", },
	},
	
	CT_BAT_SONIC_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,
	},
}

BAT_SONIC_STAND_UP_ATTACK_FRONT = 
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
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT",				},
	},
	

	ATTACK_TIME0				= { 0.49, 0.77, },	

    SOUND_PLAY0			= { 0.530, "BatBig_Cry.ogg" },
    SOUND_PLAY1			= { 0.815, "BatBig_Fly3.ogg" },


	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
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

BAT_SONIC_STAND_UP_ATTACK_BACK = 
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
	
	FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},	
	
	ATTACK_TIME0				= { 0.45, 1.07, },

    SOUND_PLAY0			= { 0.573, "BatBig_Cry.ogg" },
    SOUND_PLAY1			= { 0.890, "BatBig_Fly3.ogg" },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
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

BAT_SONIC_DAMAGE_STAND_UP_BACK =
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0					= { 0.776, "BatBig_Fly3.ogg" },
    SOUND_PLAY1					= { 1.192, "BatBig_Cry.ogg" },
    SOUND_PLAY2					= { 1.376, "BatBig_Fly2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},	
}

BAT_SONIC_DAMAGE_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 30, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0					= { 0.782, "BatBig_Fly3.ogg" },
    SOUND_PLAY1					= { 0.982, "BatBig_Cry.ogg" },
    SOUND_PLAY2					= { 1.311, "BatBig_Fly2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_SONIC_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_SONIC_WAIT", },
	},	
}

BAT_SONIC_DYING_LAND_FRONT = 
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
	
BAT_SONIC_DYING_LAND_BACK = 
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


BAT_SONIC_DYING_SKY = 
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








function CF_BAT_SONIC_WAIT_ZERO2( pKTDXApp, pX2Game, pNPCUnit )

	monkeyANum = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_BAT_A_NODROP"] )
	if (monkeyANum == 0) then
		return true
	else
		return false
	end

end



function BAT_SONIC_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function BAT_SONIC_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function BAT_SONIC_DAMAGE_SMALL_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    for i=0, 5 do
	    pEffect = pNPCUnit:GetDamageEffect_LUA(i)
	    if pEffect ~= nil then
	        pDamageEffect = pX2Game:GetDamageEffect()
			if pDamageEffect:IsLiveInstance( pEffect ) == true then				    
		        pDamageEffect:DestroyInstance( pEffect )
		    end
	    end
        
	    pNPCUnit:ClearDamageEffect_LUA( i )
	end
end

function BAT_SONIC_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		
		--pNPCUnit:CallOtherNPC( NPC_UNIT_ID["NUI_BAT_A_NODROP"] )		
	end
end

function BAT_SONIC_DAMAGE_BIG_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    for i=0, 5 do
	    pEffect = pNPCUnit:GetDamageEffect_LUA(i)
	    if pEffect ~= nil then
	        pDamageEffect = pX2Game:GetDamageEffect()
			if pDamageEffect:IsLiveInstance( pEffect ) == true then				    
		        pDamageEffect:DestroyInstance( pEffect )
		    end
	    end
        
	    pNPCUnit:ClearDamageEffect_LUA( i )
	end
end

function BAT_SONIC_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.211 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		
		--pNPCUnit:CallOtherNPC( NPC_UNIT_ID["NUI_BAT_A_NODROP"] )	
	end
	
	for i=0, 5 do
	    pEffect = pNPCUnit:GetDamageEffect_LUA(i)
	    if pEffect ~= nil then
	        pDamageEffect = pX2Game:GetDamageEffect()
			if pDamageEffect:IsLiveInstance( pEffect ) == true then		        
		        pDamageEffect:DestroyInstance( pEffect )
		    end
	    end
        
	    pNPCUnit:ClearDamageEffect_LUA( i )
	end

end

function BAT_SONIC_DAMAGE_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
		pNPCUnit:PlaySound_LUA( "BatBig_DownLand.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end



function BAT_SONIC_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "BatBig_DownLand.ogg" )
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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pNPCUnit:PlaySound_LUA( "BatBig_DownLand.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
	
end


function BAT_SONIC_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieImpactRingRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieImpactSlashRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieSmoke",				pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(5,-1) )
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	for i=0, 5 do
	    pEffect = pNPCUnit:GetDamageEffect_LUA(i)
	    if pEffect ~= nil then
	        pDamageEffect = pX2Game:GetDamageEffect()
			if pDamageEffect:IsLiveInstance( pEffect ) == true then		        
		        pDamageEffect:DestroyInstance( pEffect )
		    end
	    end
    	
	    pNPCUnit:ClearDamageEffect_LUA( i )
	end
		        
    
end






function BAT_SONIC_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.48 ) then
		pNPCUnit:PlaySound_LUA( "BatBig_DownLand.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function BAT_SONIC_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.24 ) then
		pNPCUnit:PlaySound_LUA( "BatBig_DownLand.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end






function BAT_SONIC_ATTACK_SUPER_SONIC_WAVE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    --pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
    
	for i=0, 3 do
		
		fTime = 0.25 + i * 0.13
		
		if pNPCUnit:AnimEventTimer_LUA( fTime ) then

			landPos = pNPCUnit:GetLandPosition_LUA()
			
			bonePos = pNPCUnit:GetBonePos_LUA( "Dummy1_Mouse" )
			bonePos.y = bonePos.y + 80
			
			pDamageEffect = pX2Game:GetDamageEffect()
			pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_SONIC_SUPER_SONIC_WAVE", bonePos, landPos.y)
		
		    if pDamage ~= nil then
		        pNPCUnit:SetDamageEffect_LUA(i, pDamage)		        
            end		        
		end
	
	end 
	
	
	for i=4, 5 do
		
		fTime = 0.25 + i * 0.13
		
		if pNPCUnit:AnimEventTimer_LUA( fTime ) then

			landPos = pNPCUnit:GetLandPosition_LUA()
			
			bonePos = pNPCUnit:GetBonePos_LUA( "Dummy1_Mouse" )
			bonePos.y = bonePos.y + 30
			
			pDamageEffect = pX2Game:GetDamageEffect()
			pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_SONIC_SUPER_SONIC_WAVE", bonePos, landPos.y)
			
			if pDamage ~= nil then
		        pNPCUnit:SetDamageEffect_LUA(i, pDamage)
            end
            
			--pNPCUnit:SetNowMP(0)
		
		end
	
	end 


end





function BAT_SONIC_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		bonePos = pNPCUnit:GetBonePos_LUA( "Bip01_Pelvis" )
		bonePos.y = bonePos.y - 200
		
		landPos = pNPCUnit:GetLandPosition_LUA()
	
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_BIG_STAND_UP_ATTACK_SMALL", bonePos, landPos.y)
	
		bonePos.y = bonePos.y + 100
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_BIG_STAND_UP_ATTACK2_SMALL", bonePos, landPos.y)
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.71 ) then
	
		landPos = pNPCUnit:GetLandPosition_LUA()
		landPos.y = landPos.y + 15
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", landPos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
	end

end


function BAT_SONIC_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then

		bonePos = pNPCUnit:GetBonePos_LUA( "Bip01_Pelvis" )
		bonePos.y = bonePos.y - 200
		
		landPos = pNPCUnit:GetLandPosition_LUA()

		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_BIG_STAND_UP_ATTACK_SMALL", bonePos, landPos.y)
		
		bonePos.y = bonePos.y + 100
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_BIG_STAND_UP_ATTACK2_SMALL", bonePos, landPos.y)
	
	end
	

	if pNPCUnit:AnimEventTimer_LUA( 0.71 ) then
	
		landPos = pNPCUnit:GetLandPosition_LUA()
		landPos.y = landPos.y + 15
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", landPos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
	end
	
end



