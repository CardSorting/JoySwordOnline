-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- beenasod.lua



INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 50.0,
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
	     "BeeNasod_Attack.ogg",
	},
	
		
	READY_XSKIN_MESH = 
	{
		"Nasod_Bee_Bullet.x",
		"Nasod_Bee_Attack01.x",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Bee.x",
	MOTION_ANI_TEX_XET		= "NUI_LOW_NASOD_BEE_FD.xet",
	MOTION_CHANGE_TEX_XET	= "NUI_LOW_NASOD_BEE_FD.xet",
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
	MAX_HP				= 5000,
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
	
	HEAD_BONE_NAME			= "Bee_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "LOW_NASOD_BEE_FD_START",							},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_WAIT",							},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_WALK",							},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_JUMP_UP",							},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_JUMP_DOWN",						LUA_STATE_END_FUNC = "LOW_NASOD_BEE_FD_JUMP_DOWN_STATE_END", },
	{ STATE_NAME = "LOW_NASOD_BEE_FD_JUMP_UP_DIR",						},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "LOW_NASOD_BEE_FD_JUMP_DOWN_DIR_STATE_END", },
	{ STATE_NAME = "LOW_NASOD_BEE_FD_JUMP_LANDING",					},

	{ STATE_NAME = "LOW_NASOD_BEE_FD_ATTACK",							LUA_FRAME_MOVE_FUNC = "LOW_NASOD_BEE_FD_ATTACK_FRAME_MOVE",
																LUA_STATE_END_FUNC = "LOW_NASOD_BEE_FD_ATTACK_STATE_END",	STATE_COOL_TIME = 8,	},
	
	--리액션 관련
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE",							LUA_FRAME_MOVE_FUNC = "LOW_NASOD_BEE_FD_DAMAGE_SMALL_FRAME_MOVE", },
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_DOWN",						LUA_FRAME_MOVE_FUNC = "LOW_NASOD_BEE_FD_DAMAGE_DOWN_FRAME_MOVE", },
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK",					},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK_DOWN",					},
	
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_AIR",						},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL",					},
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE", },
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DAMAGE_STAND_UP",					},
		
	
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DYING_LAND",						LUA_STATE_START_FUNC = "LOW_NASOD_BEE_FD_DYING_LAND_STATE_START", },
	{ STATE_NAME = "LOW_NASOD_BEE_FD_DYING_SKY",						LUA_STATE_START_FUNC = "LOW_NASOD_BEE_FD_DYING_LAND_STATE_START", },
	
	
	START_STATE					= "LOW_NASOD_BEE_FD_WAIT",
	WAIT_STATE					= "LOW_NASOD_BEE_FD_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "LOW_NASOD_BEE_FD_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "LOW_NASOD_BEE_FD_DAMAGE",
	SMALL_DAMAGE_AIR			= "LOW_NASOD_BEE_FD_DAMAGE_AIR",
	BIG_DAMAGE_LAND_FRONT		= "LOW_NASOD_BEE_FD_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "LOW_NASOD_BEE_FD_DAMAGE",
	BIG_DAMAGE_AIR				= "LOW_NASOD_BEE_FD_DAMAGE_AIR",
	DOWN_DAMAGE_LAND_FRONT		= "LOW_NASOD_BEE_FD_DAMAGE_DOWN",
	DOWN_DAMAGE_LAND_BACK		= "LOW_NASOD_BEE_FD_DAMAGE_DOWN",
	DOWN_DAMAGE_AIR				= "LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "LOW_NASOD_BEE_FD_DAMAGE_AIR_UP",
	FLY_DAMAGE_FRONT			= "LOW_NASOD_BEE_FD_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "LOW_NASOD_BEE_FD_DAMAGE",
	DAMAGE_FLUSH_LAND_BACK		= "LOW_NASOD_BEE_FD_DAMAGE",
	DAMAGE_FLUSH_AIR			= "LOW_NASOD_BEE_FD_DAMAGE_AIR",
	DAMAGE_REVENGE				= "LOW_NASOD_BEE_FD_DAMAGE",
	
	DAMAGE_EXTRA_STATES         = { "LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK_DOWN","LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL", "LOW_NASOD_BEE_FD_DAMAGE_STAND_UP",
		"LOW_NASOD_BEE_FD_JUMP_DOWN","LOW_NASOD_BEE_FD_JUMP_LANDING",	},
	
	
	DYING_LAND_FRONT			= "LOW_NASOD_BEE_FD_DYING_LAND",
	DYING_LAND_BACK				= "LOW_NASOD_BEE_FD_DYING_LAND",
	DYING_SKY					= "LOW_NASOD_BEE_FD_DYING_SKY",
	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 700,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_HEIGHT_LIMIT			= 50,
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
		UP_JUMP_RATE		= 0, -- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  30,
		DOWN_DOWN_RATE		= 0,
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




LOW_NASOD_BEE_FD_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"LOW_NASOD_BEE_FD_WAIT",		"CT_LOW_NASOD_BEE_FD_WAIT"				},
	},
	
	CT_LOW_NASOD_BEE_FD_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}



LOW_NASOD_BEE_FD_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_JUMP_DOWN",								},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"LOW_NASOD_BEE_FD_ATTACK",			"CT_LOW_NASOD_BEE_FD_ATTACK"	}, 
	
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"LOW_NASOD_BEE_FD_WALK",									},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"LOW_NASOD_BEE_FD_WALK",									},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"LOW_NASOD_BEE_FD_JUMP_UP",								},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"LOW_NASOD_BEE_FD_JUMP_UP_DIR",							}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"LOW_NASOD_BEE_FD_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"LOW_NASOD_BEE_FD_JUMP_DOWN_DIR",							},
		
	},
	
	CT_LOW_NASOD_BEE_FD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100, 
	},	
}


LOW_NASOD_BEE_FD_WALK = 
{
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 120,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_JUMP_DOWN",								},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"LOW_NASOD_BEE_FD_ATTACK",				"CT_LOW_NASOD_BEE_FD_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"LOW_NASOD_BEE_FD_WAIT",										},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"LOW_NASOD_BEE_FD_JUMP_UP",									},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"LOW_NASOD_BEE_FD_JUMP_UP_DIR",								}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"LOW_NASOD_BEE_FD_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"LOW_NASOD_BEE_FD_JUMP_DOWN_DIR",							}, 
		
	},

	CT_LOW_NASOD_BEE_FD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100, 
	},
}


LOW_NASOD_BEE_FD_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"LOW_NASOD_BEE_FD_JUMP_DOWN", },
	},
}

LOW_NASOD_BEE_FD_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"LOW_NASOD_BEE_FD_JUMP_LANDING", },
	},
}


LOW_NASOD_BEE_FD_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"LOW_NASOD_BEE_FD_JUMP_DOWN_DIR", },
	},
}

LOW_NASOD_BEE_FD_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"LOW_NASOD_BEE_FD_JUMP_LANDING", },
	},
}


LOW_NASOD_BEE_FD_JUMP_LANDING = 
{
	ANIM_NAME					= "Wait",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_WAIT",						},
	},
}



LOW_NASOD_BEE_FD_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	DISABLE_ATTACK_BOX = 
	{
		"Head",
	},
	
	--ATTACK_TIME0				= { 0.357, 0.5, },

    SOUND_PLAY0			= { 1.25, "BeeNasod_Attack.ogg" },	
		   
	VIEW_TARGET					= TRUE,
	
	SPEED_X						= INIT_PHYSIC["WALK_SPEED"],
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_WAIT", },
	},
	
}





LOW_NASOD_BEE_FD_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_WAIT", },
	},
}

LOW_NASOD_BEE_FD_DAMAGE_DOWN = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_DAMAGE_STAND_UP", },
	},

}



LOW_NASOD_BEE_FD_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"LOW_NASOD_BEE_FD_DAMAGE_DOWN",		},
	},
}

LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK_DOWN",		},
	},
}



LOW_NASOD_BEE_FD_DAMAGE_FLY_BACK_DOWN = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 800,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_DAMAGE_STAND_UP", },
	},
	
}



LOW_NASOD_BEE_FD_DAMAGE_AIR = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"LOW_NASOD_BEE_FD_WAIT", },
	},
}

LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

LOW_NASOD_BEE_FD_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL", },	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING", },	
	},
}

LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"LOW_NASOD_BEE_FD_DAMAGE_AIR_UP", },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING", },
	},
}

LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 20, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_DAMAGE_STAND_UP", },
	},
}

LOW_NASOD_BEE_FD_DAMAGE_STAND_UP = 
{
	ANIM_NAME					= "DamageStandUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 20, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_NASOD_BEE_FD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_NASOD_BEE_FD_WAIT", },
	},
}


LOW_NASOD_BEE_FD_DYING_LAND = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

LOW_NASOD_BEE_FD_DYING_SKY = 
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









function LOW_NASOD_BEE_FD_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function LOW_NASOD_BEE_FD_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end





function LOW_NASOD_BEE_FD_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )




	-- bullet
	
	if pNPCUnit:AnimEventTimer_LUA( 1.250 ) or
		pNPCUnit:AnimEventTimer_LUA( 1.350 ) then
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()		
		local vBonePos = pNPCUnit:GetBonePos_LUA( "Bone03" )
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_BEE_BULLET", vBonePos, vLandPos.y )
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 1.363 ) then
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()		
		local vBonePos = pNPCUnit:GetBonePos_LUA( "Bone03" )
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_BEE_BULLET_DOWN", vBonePos, vLandPos.y )
	
	end




	-- meshplayer 생성
	if pNPCUnit:AnimEventTimer_LUA( 1.376 ) then
	
		local vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		local rotDegree 	= pNPCUnit:GetRotateDegree()
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
	
	end



	if pNPCUnit:AnimEventTimer_LUA( 1.255 ) then
	
		local vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		local rotDegree 	= pNPCUnit:GetRotateDegree()
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 1, pMeshPlayer )
	
	end



	if pNPCUnit:AnimEventTimer_LUA( 1.363 ) then
	
		local vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		local rotDegree 	= pNPCUnit:GetRotateDegree()
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 2, pMeshPlayer )
	
	end
	
	

	-- meshplayer framemove
	local pMeshPlayer0 = pNPCUnit:GetMajorMeshPlayer_LUA( 0 ) 
	if nil ~= pMeshPlayer0 then 
	
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer0) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
		else
			local vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer0:SetPos( vBonePos ) 
		end

	end
	



	local pMeshPlayer1 = pNPCUnit:GetMajorMeshPlayer_LUA( 1 ) 
	if nil ~= pMeshPlayer1 then 
	
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer1) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 1 )
		else
			local vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer1:SetPos( vBonePos ) 
		end

	end



	local pMeshPlayer2 = pNPCUnit:GetMajorMeshPlayer_LUA( 2 ) 
	if nil ~= pMeshPlayer2 then 
	
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer2) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 2 )
		else
			local vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer2:SetPos( vBonePos ) 
		end

	end




end




function LOW_NASOD_BEE_FD_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	-- meshplayer 삭제
	local pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 ) 
	
	if nil ~= pMeshPlayer then 
		pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
	end

	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 1 ) 
	
	if nil ~= pMeshPlayer then 
		pNPCUnit:ClearMajorMeshPlayer_LUA( 1 )
	end

	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 2 ) 
	
	if nil ~= pMeshPlayer then 
		pNPCUnit:ClearMajorMeshPlayer_LUA( 2 )
	end

end




function LOW_NASOD_BEE_FD_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function LOW_NASOD_BEE_FD_DAMAGE_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end



function LOW_NASOD_BEE_FD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
	
end


function LOW_NASOD_BEE_FD_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieImpactRingRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieImpactSlashRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieSmoke",				pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(5,-1) )
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end













