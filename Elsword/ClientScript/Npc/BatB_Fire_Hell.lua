-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




BAT_B_FIRE_HELL_ADD_POS_Y = 0

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 80.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"",
	},
	
	READY_SOUND = 
	{
		"Bat_Cry.ogg",
		"Bat_Fly.ogg",
		"Bat_Fly2.ogg",
		"Bat_Fly3.ogg",
		"Bat_DrainBlood.ogg",
		"Bat_HitEarth.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_BatB.x",	
	MOTION_CHANGE_TEX_XET	= "Motion_Bat_B_Fire.xet",
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
	MAX_HP				= 3200,
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
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	

	

}

INIT_STATE = 
{

	{ STATE_NAME = "BAT_B_FIRE_HELL_START",							},
	{ STATE_NAME = "BAT_B_FIRE_HELL_WAIT_ZERO2",						},
	{ STATE_NAME = "BAT_B_FIRE_HELL_WAIT",							},

	{ STATE_NAME = "BAT_B_FIRE_HELL_WALK",							},
	{ STATE_NAME = "BAT_B_FIRE_HELL_JUMP_UP",						},
	{ STATE_NAME = "BAT_B_FIRE_HELL_JUMP_DOWN",						LUA_STATE_END_FUNC = "BAT_B_FIRE_HELL_JUMP_DOWN_STATE_END", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_JUMP_UP_DIR",					},
	{ STATE_NAME = "BAT_B_FIRE_HELL_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "BAT_B_FIRE_HELL_JUMP_DOWN_DIR_STATE_END", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_JUMP_LANDING",					},

	{ STATE_NAME = "BAT_B_FIRE_HELL_ATTACK",							},
	{ STATE_NAME = "BAT_B_FIRE_HELL_ATTACK_FIRE",					},
	{ STATE_NAME = "BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE",		LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE_FRAME_MOVE",	
																LUA_STATE_END_FUNC = "BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE_STATE_END",		},
	{ STATE_NAME = "BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE",			LUA_STATE_START_FUNC = "BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE_STATE_START",
																LUA_STATE_END_FUNC	= "BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE_STATE_END",			},

	--리액션 관련
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE",							LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_DAMAGE_SMALL_FRAME_MOVE",			},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_AIR",						},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_STAND_UP_FRONT",					LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_STAND_UP_FRONT_FRAME_MOVE", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_STAND_UP_BACK",					LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_STAND_UP_BACK_FRAME_MOVE", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT_FRAME_MOVE", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK_FRAME_MOVE", },
		
	
	{ STATE_NAME = "BAT_B_FIRE_HELL_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "BAT_B_FIRE_HELL_DYING_LAND_STATE_START", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "BAT_B_FIRE_HELL_DYING_LAND_STATE_START", },
	{ STATE_NAME = "BAT_B_FIRE_HELL_DYING_SKY",						LUA_STATE_START_FUNC = "BAT_B_FIRE_HELL_DYING_LAND_STATE_START", },

	
	
	START_STATE					= "BAT_B_FIRE_HELL_START",
	WAIT_STATE					= "BAT_B_FIRE_HELL_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "BAT_B_FIRE_HELL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "BAT_B_FIRE_HELL_DAMAGE",
	SMALL_DAMAGE_AIR			= "BAT_B_FIRE_HELL_DAMAGE_AIR",
	BIG_DAMAGE_LAND_FRONT		= "BAT_B_FIRE_HELL_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "BAT_B_FIRE_HELL_DAMAGE",
	BIG_DAMAGE_AIR				= "BAT_B_FIRE_HELL_DAMAGE_AIR",
	DOWN_DAMAGE_LAND_FRONT		= "BAT_B_FIRE_HELL_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "BAT_B_FIRE_HELL_DAMAGE_DOWN_BACK",
	DOWN_DAMAGE_AIR				= "BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "BAT_B_FIRE_HELL_DAMAGE_AIR_UP",
	FLY_DAMAGE_FRONT			= "BAT_B_FIRE_HELL_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "BAT_B_FIRE_HELL_DAMAGE_FLY_BACK",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "BAT_B_FIRE_HELL_DAMAGE",
	DAMAGE_FLUSH_LAND_BACK		= "BAT_B_FIRE_HELL_DAMAGE",
	DAMAGE_FLUSH_AIR			= "BAT_B_FIRE_HELL_DAMAGE_AIR",
	DAMAGE_REVENGE				= "BAT_B_FIRE_HELL_DAMAGE",
	
	DAMAGE_EXTRA_STATES         = {"BAT_B_FIRE_HELL_DAMAGE_AIR_FALL","BAT_B_FIRE_HELL_STAND_UP_FRONT","BAT_B_FIRE_HELL_STAND_UP_BACK",
	"BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT","BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK","BAT_B_FIRE_HELL_JUMP_DOWN","BAT_B_FIRE_HELL_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "BAT_B_FIRE_HELL_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "BAT_B_FIRE_HELL_DYING_LAND_BACK",
	DYING_SKY					= "BAT_B_FIRE_HELL_DYING_SKY",
	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 900,		-- cm
		TARGET_LOST_RANGE			= 900,		-- cm
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
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
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

BAT_B_FIRE_HELL_START = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	--INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
		
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BAT_B_FIRE_HELL_WAIT",	"CT_BAT_B_FIRE_HELL_WAIT_ZERO_2" },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BAT_B_FIRE_HELL_WAIT_ZERO2",	"CT_BAT_B_FIRE_HELL_WAIT_ZERO_2" },
	},
	
	CT_BAT_B_FIRE_HELL_WAIT_ZERO_2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		RATE						= 100,
	},	
}

BAT_B_FIRE_HELL_WAIT_ZERO2 = 
{
	ANIM_NAME					= "WaitZero2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.450, "Bat_Cry.ogg" },
    SOUND_PLAY1			= { 0.664, "Bat_Fly.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	--SPEED_Y						= -INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= -45,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_B_FIRE_HELL_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT",						},
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 7, MESSAGE = STR_ID_5061 },
	},
}

BAT_B_FIRE_HELL_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 5,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN",							},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_ATTACK",				"CT_BAT_B_FIRE_HELL_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_ATTACK_FIRE",			"CT_BAT_B_FIRE_HELL_ATTACK_FIRE"		}, 
		
	
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BAT_B_FIRE_HELL_WALK",									},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BAT_B_FIRE_HELL_WALK",									},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BAT_B_FIRE_HELL_JUMP_UP",								},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BAT_B_FIRE_HELL_JUMP_UP_DIR",							}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BAT_B_FIRE_HELL_JUMP_DOWN",							},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BAT_B_FIRE_HELL_JUMP_DOWN_DIR",						},
		
	},
	
	CT_BAT_B_FIRE_HELL_ATTACK_FIRE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 60,
	},	
	
	CT_BAT_B_FIRE_HELL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 7, MESSAGE = STR_ID_5061 },
	},
}





BAT_B_FIRE_HELL_WALK = 
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
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN",								},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_ATTACK",				"CT_BAT_B_FIRE_HELL_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_ATTACK_FIRE",			"CT_BAT_B_FIRE_HELL_ATTACK_FIRE"		}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BAT_B_FIRE_HELL_WAIT",									},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BAT_B_FIRE_HELL_JUMP_UP",								},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BAT_B_FIRE_HELL_JUMP_UP_DIR",							}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BAT_B_FIRE_HELL_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BAT_B_FIRE_HELL_JUMP_DOWN_DIR",							}, 
		
	},

	CT_BAT_B_FIRE_HELL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 60,
	},
	
	CT_BAT_B_FIRE_HELL_ATTACK_FIRE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},
	
	
	TALK_BOX = 
	{
		EVENT_INTERVAL_ID			= 0,
		{ RATE = 5, MESSAGE = STR_ID_5062 },
	},
}


BAT_B_FIRE_HELL_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45 + BAT_B_FIRE_HELL_ADD_POS_Y,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"BAT_B_FIRE_HELL_JUMP_DOWN", },
	},
}

BAT_B_FIRE_HELL_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	IMMADIATE_PACKET_SEND		= TRUE,		
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_B_FIRE_HELL_JUMP_LANDING", },
	},
}


BAT_B_FIRE_HELL_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= 45 + BAT_B_FIRE_HELL_ADD_POS_Y,
	
	

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"BAT_B_FIRE_HELL_JUMP_DOWN_DIR", },
	},
}

BAT_B_FIRE_HELL_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_B_FIRE_HELL_JUMP_LANDING", },
	},
}


BAT_B_FIRE_HELL_JUMP_LANDING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT",						},
	},
}



BAT_B_FIRE_HELL_ATTACK = 
{
	ANIM_NAME					= "Attack",
	ANIM_SPEED					= 0.7,
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ATTACK_TIME0				= { 0.66, 1.1, },

    SOUND_PLAY0			= { 0.125, "Bat_Fly2.ogg" , 40 },
    SOUND_PLAY1			= { 0.320, "Bat_Fly3.ogg" , 40 },
    SOUND_PLAY2			= { 0.527, "Bat_Fly3.ogg" , 40 },
    SOUND_PLAY3			= { 0.898, "Bat_Cry.ogg" , 20 },
    SOUND_PLAY4			= { 0.992, "Bat_Fly.ogg" , 30 },
    SOUND_PLAY5			= { 1.661, "Bat_Fly.ogg" , 30 },

	VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_X		= -70,
	
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_5062 },
	},
	
	EVENT_PROCESS = 
	{
--		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT", },
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


BAT_B_FIRE_HELL_ATTACK_FIRE = 
{
	ANIM_NAME					= "Attack",
	ANIM_SPEED					= 0.7,
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ATTACK_TIME0				= { 0.66, 1.1, },

    SOUND_PLAY0			= { 0.340, "Bat_Fly.ogg" },
    SOUND_PLAY1			= { 0.912, "Bat_Fly.ogg" , 30 },
    SOUND_PLAY2			= { 1.032, "Bat_Cry.ogg" , 20 },
    SOUND_PLAY3			= { 1.568, "Bat_Fly.ogg" , 30 },
	
	VIEW_TARGET					= TRUE,
	COOL_TIME					= 3,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_5061 },
	},
	
	EVENT_PROCESS = 
	{
--		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE",	"CT_BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE", },
	},
	
	CT_BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE = 
	{
		ATTACK_SUCCESS = TRUE,
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
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




BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE = 
{
	ANIM_NAME					= "AttackVampireDrain",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	ANIM_TIME					= 2,
	
	SHOW_STICK_SHAKE			= TRUE,
	FOLLOW_HITTER				= 5,
	ATTACK_FOLLOW_HITTER		= TRUE,
	
	INVINCIBLE					= {0.01, 1000,},
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE",		"CT_BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"BAT_B_FIRE_HELL_WAIT",						"CF_BAT_B_FIRE_HELL_WAIT",			},
	},
	
	CT_BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE =
	{
		STATE_TIME_OVER				= 4,
	},
}



BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE = 
{	
	ANIM_NAME					= "AttackVampireDrain",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	FOLLOW_HITTER				= 5,
	ATTACK_FOLLOW_HITTER		= TRUE,
	INVINCIBLE					= {0.01, 1000,},
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SHOW_STICK_SHAKE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	--ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN",		"CT_BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN",		},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"BAT_B_FIRE_HELL_WAIT",				"CF_BAT_B_FIRE_HELL_WAIT",					},
	},
	
	CT_BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN =
	{
		STATE_TIME_OVER				= 0.1,
	},
}



----------------------------------------------------------
function CF_BAT_B_FIRE_HELL_WAIT( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetFollowHitter() <= 0 then
		return true
	else
		return false
	end

end



BAT_B_FIRE_HELL_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT", },
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_5056 },
	},
}

BAT_B_FIRE_HELL_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING",		},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1507 },
  	},
}

BAT_B_FIRE_HELL_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"BAT_B_FIRE_HELL_DAMAGE_DOWN_BACK",		},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_5056 },
  	},
}

BAT_B_FIRE_HELL_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BAT_B_FIRE_HELL_WAIT", },
	},
}

BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.100, "Bat_Cry.ogg" ,20},
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

BAT_B_FIRE_HELL_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= BAT_B_FIRE_HELL_ADD_POS_Y,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_FALL", },	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING", },	
	},
}

BAT_B_FIRE_HELL_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_UP", },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING", },
	},
}

BAT_B_FIRE_HELL_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.100, "Bat_Cry.ogg" ,20 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT",	"CT_BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BAT_B_FIRE_HELL_STAND_UP_FRONT",			},
	},
	
	CT_BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 20,
	},

	
	TALK_BOX =
 	{
		{ RATE = 10, MESSAGE = STR_ID_5061 },
	},
}

BAT_B_FIRE_HELL_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.100, "Bat_Cry.ogg" ,20 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK",	"CT_BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BAT_B_FIRE_HELL_STAND_UP_BACK",			},
	},
	
	CT_BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 20,
	},

	
	TALK_BOX =
 	{
		{ RATE = 10, MESSAGE = STR_ID_5063 },
	},
}

BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BAT_B_FIRE_HELL_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT",	"CT_BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BAT_B_FIRE_HELL_STAND_UP_FRONT",			},
	},
	
	CT_BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 20,
	},
	
}



BAT_B_FIRE_HELL_STAND_UP_FRONT = 
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
		
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT",				},
	},
	
	SOUND_PLAY0			= { 0.497, "Bat_HitEarth.ogg" },  
    SOUND_PLAY1			= { 0.620, "Bat_Cry.ogg" , 20 },  
    SOUND_PLAY2			= { 0.997, "Bat_Fly.ogg" },
	
}


BAT_B_FIRE_HELL_STAND_UP_BACK = 
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT", },
	},	
	
	SOUND_PLAY0			= { 0.454, "Bat_HitEarth.ogg" },  
    SOUND_PLAY1			= { 0.541, "Bat_Fly.ogg" },
    SOUND_PLAY2			= { 0.594, "Bat_Cry.ogg" , 20 },

}






BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT = 
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	ANIM_WAIT_TIME				= 1,

	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.497, "Bat_HitEarth.ogg" },  
    SOUND_PLAY0			= { 0.620, "Bat_Cry.ogg" , 20 },
    SOUND_PLAY1			= { 0.997, "Bat_Fly.ogg" },
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT",				},
	},
	

	ATTACK_TIME0				= { 0.49, 0.77, },	
	
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

BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_WAIT_TIME				= 1,

	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BAT_B_FIRE_HELL_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BAT_B_FIRE_HELL_WAIT", },
	},	
	
	ATTACK_TIME0				= { 0.45, 1.07, },	

    SOUND_PLAY0			= { 0.454, "Bat_HitEarth.ogg" },  
    SOUND_PLAY1			= { 0.541, "Bat_Fly.ogg" },
    SOUND_PLAY2			= { 0.594, "Bat_Cry.ogg" , 20 },
	
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

BAT_B_FIRE_HELL_DYING_LAND_FRONT = 
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
	
BAT_B_FIRE_HELL_DYING_LAND_BACK = 
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


BAT_B_FIRE_HELL_DYING_SKY = 
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








function BAT_B_FIRE_HELL_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function BAT_B_FIRE_HELL_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


function BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetUseWorldColor( false )
	unitColor = pNPCUnit:GetColor()
	
	--unitColor.r = ( 4.0 - pNPCUnit:GetStateTime() ) / 4.0
	unitColor.g = ( 4.0 - pNPCUnit:GetStateTime() ) / 4.0
	unitColor.b = ( 4.0 - pNPCUnit:GetStateTime() ) / 4.0
	
	pNPCUnit:SetColor( unitColor )
	
	
	
	
	
	pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
	if nil ~= pParticle then 
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			vPos = pNPCUnit:GetPos()
			vPos.y = vPos.y + 300.0
			pParticle:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end
	end
	
		
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		--vRotateDegree	= pNPCUnit:GetRotateDegree()
		vPos = pNPCUnit:GetPos()
		vPos.y = vPos.y + 300.0
	
		pMajorParticle = pX2Game:GetMajorParticle()	
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Bat_B_Fire_Countdown", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then 
			--pParticle:SetAddRotate( vRotateDegree )
			--pParticle:SetAxisAngle( vRotateDegree )	
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() ) 
		end 
		
		pNPCUnit:PlaySound_LUA( "Bat_Beep.ogg" )
		
	end
		

	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
	
		pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
		if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
				pParticle:ChangeTexForce_LUA( "PC_3.dds" )
			end
		end
		
		pNPCUnit:PlaySound_LUA( "Bat_Beep.ogg" )
		
	end
	

	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
	
		pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
		if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
				pParticle:ChangeTexForce_LUA( "PC_2.dds" )
			end
		end
		
		pNPCUnit:PlaySound_LUA( "Bat_Beep.ogg" )
		
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 3.0 ) then
	
		pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
		if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
				pParticle:ChangeTexForce_LUA( "PC_1.dds" )
			end
		end
		
		pNPCUnit:PlaySound_LUA( "Bat_Beep.ogg" )
		
	end
	
end



function BAT_B_FIRE_HELL_ATTACK_FIRE_READY_EXPLODE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetUseWorldColor( true )
	unitColor = pNPCUnit:GetColor()
	--unitColor.r = 1
	unitColor.g = 1
	unitColor.b = 1
	pNPCUnit:SetColor( unitColor )
	
	
	
	pMajorParticle = pX2Game:GetMajorParticle()
	pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 0 )
	end
	
end



function BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	vLandPos = pNPCUnit:GetLandPosition_LUA()
	vPos = pNPCUnit:GetPos()
	pDamageEffect = pX2Game:GetDamageEffect()		
	pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_B_FIRE_EXPLOSION_HELL", vPos, vLandPos.y )
	
end

function BAT_B_FIRE_HELL_ATTACK_FIRE_EXPLODE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0.0)
	
end


function BAT_B_FIRE_HELL_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function BAT_B_FIRE_HELL_DAMAGE_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end



function BAT_B_FIRE_HELL_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
	
end



function BAT_B_FIRE_HELL_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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
	
end






function BAT_B_FIRE_HELL_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.34 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function BAT_B_FIRE_HELL_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.24 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end




function BAT_B_FIRE_HELL_STAND_UP_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	

end




function BAT_B_FIRE_HELL_STAND_UP_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	


end


function BAT_B_FIRE_HELL_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		bonePos = pNPCUnit:GetBonePos_LUA( "Bip01_Footsteps" )
		landPos = pNPCUnit:GetLandPosition_LUA()
	
	
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_STAND_UP_ATTACK", bonePos, landPos.y)
	
	
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.51 ) then
	
		landPos = pNPCUnit:GetLandPosition_LUA()
	
		landPos.y = landPos.y + 15
		pMinorParticle = pX2Game:GetMinorParticle()
		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SmallGroundShockWave", landPos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
	
	end

end




function BAT_B_FIRE_HELL_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		bonePos = pNPCUnit:GetBonePos_LUA( "Bip01_Footsteps" )
		landPos = pNPCUnit:GetLandPosition_LUA()
	
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BAT_STAND_UP_ATTACK", bonePos, landPos.y)
	
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.51 ) then
	
		landPos = pNPCUnit:GetLandPosition_LUA()
	
		landPos.y = landPos.y + 15
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SmallGroundShockWave", landPos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
	
	end


end
