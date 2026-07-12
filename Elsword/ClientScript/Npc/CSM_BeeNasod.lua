-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- beenasod.lua



INIT_SYSTEM = 
{
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
	
	SUMMON_TIME			= 180,
	

}

INIT_STATE = 
{
	{ STATE_NAME = "CSM_BEE_NASOD_START",							},
	{ STATE_NAME = "CSM_BEE_NASOD_WAIT",							},
	{ STATE_NAME = "CSM_BEE_NASOD_WALK",							},
	{ STATE_NAME = "CSM_BEE_NASOD_JUMP_UP",							},
	{ STATE_NAME = "CSM_BEE_NASOD_JUMP_DOWN",						LUA_STATE_END_FUNC = "CSM_BEE_NASOD_JUMP_DOWN_STATE_END", },
	{ STATE_NAME = "CSM_BEE_NASOD_JUMP_UP_DIR",						},
	{ STATE_NAME = "CSM_BEE_NASOD_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "CSM_BEE_NASOD_JUMP_DOWN_DIR_STATE_END", },
	{ STATE_NAME = "CSM_BEE_NASOD_JUMP_LANDING",					},

	{ STATE_NAME = "CSM_BEE_NASOD_ATTACK",							LUA_FRAME_MOVE_FUNC = "CSM_BEE_NASOD_ATTACK_FRAME_MOVE",
																LUA_STATE_END_FUNC = "CSM_BEE_NASOD_ATTACK_STATE_END",	STATE_COOL_TIME = 3,	},
	
	{ STATE_NAME = "CSM_BEE_NASOD_ATTACK_BIG",						LUA_FRAME_MOVE_FUNC = "CSM_BEE_NASOD_ATTACK_BIG_FRAME_MOVE",
																LUA_STATE_END_FUNC = "CSM_BEE_NASOD_ATTACK_STATE_END",	STATE_COOL_TIME = 8,	},
																
	{ STATE_NAME = "CSM_BEE_NASOD_END",						},															
	
	--리액션 관련
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE",							LUA_FRAME_MOVE_FUNC = "CSM_BEE_NASOD_DAMAGE_SMALL_FRAME_MOVE", },
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_DOWN",						LUA_FRAME_MOVE_FUNC = "CSM_BEE_NASOD_DAMAGE_DOWN_FRAME_MOVE", },
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_FLY_BACK",					},
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_FLY_BACK_DOWN",					},
	
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_AIR",						},
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_AIR_FALL",					},
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE", },
	{ STATE_NAME = "CSM_BEE_NASOD_DAMAGE_STAND_UP",					},
		
	
	{ STATE_NAME = "CSM_BEE_NASOD_DYING_LAND",						LUA_STATE_START_FUNC = "CSM_BEE_NASOD_DYING_LAND_STATE_START", },
	{ STATE_NAME = "CSM_BEE_NASOD_DYING_SKY",						LUA_STATE_START_FUNC = "CSM_BEE_NASOD_DYING_LAND_STATE_START", },
	
	
	START_STATE					= "CSM_BEE_NASOD_START",
	WAIT_STATE					= "CSM_BEE_NASOD_WAIT",
	SUMMON_END_STATE			= "CSM_BEE_NASOD_END",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CSM_BEE_NASOD_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "CSM_BEE_NASOD_DAMAGE",
	SMALL_DAMAGE_AIR			= "CSM_BEE_NASOD_DAMAGE_AIR",
	BIG_DAMAGE_LAND_FRONT		= "CSM_BEE_NASOD_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "CSM_BEE_NASOD_DAMAGE",
	BIG_DAMAGE_AIR				= "CSM_BEE_NASOD_DAMAGE_AIR",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_BEE_NASOD_DAMAGE_DOWN",
	DOWN_DAMAGE_LAND_BACK		= "CSM_BEE_NASOD_DAMAGE_DOWN",
	DOWN_DAMAGE_AIR				= "CSM_BEE_NASOD_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CSM_BEE_NASOD_DAMAGE_AIR_UP",
	FLY_DAMAGE_FRONT			= "CSM_BEE_NASOD_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CSM_BEE_NASOD_DAMAGE_FLY_BACK",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "CSM_BEE_NASOD_DAMAGE",
	DAMAGE_FLUSH_LAND_BACK		= "CSM_BEE_NASOD_DAMAGE",
	DAMAGE_FLUSH_AIR			= "CSM_BEE_NASOD_DAMAGE_AIR",
	DAMAGE_REVENGE				= "CSM_BEE_NASOD_DAMAGE",
	
	DAMAGE_EXTRA_STATES         = {"CSM_BEE_NASOD_DAMAGE_FLY_BACK_DOWN","CSM_BEE_NASOD_DAMAGE_AIR_FALL","CSM_BEE_NASOD_DAMAGE_STAND_UP",
	"CSM_BEE_NASOD_JUMP_DOWN","CSM_BEE_NASOD_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "CSM_BEE_NASOD_DYING_LAND",
	DYING_LAND_BACK				= "CSM_BEE_NASOD_DYING_LAND",
	DYING_SKY					= "CSM_BEE_NASOD_DYING_SKY",
	
}


INIT_AI = 
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1400,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1400,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},

	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	
	CHASE_MOVE = 
	{		
		DEST_GAP			= 250,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 350,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 1,   --  70,
		FAR_WALK_RATE		= 1,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 1, --50,		
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




CSM_BEE_NASOD_START = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CSM_BEE_NASOD_WAIT",		"CT_CSM_BEE_NASOD_WAIT"				},
	},
	
	CT_CSM_BEE_NASOD_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}



CSM_BEE_NASOD_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_JUMP_DOWN",								},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_BEE_NASOD_ATTACK_BIG",				"CT_CSM_BEE_NASOD_ATTACK_BIG",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_BEE_NASOD_ATTACK",			"CT_CSM_BEE_NASOD_ATTACK"	}, 
	
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_BEE_NASOD_WALK",									},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_BEE_NASOD_WALK",									},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_BEE_NASOD_JUMP_UP",								},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_BEE_NASOD_JUMP_UP_DIR",							}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_BEE_NASOD_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_BEE_NASOD_JUMP_DOWN_DIR",							},
		
	},
	
	CT_CSM_BEE_NASOD_ATTACK = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100, 
	},
	CT_CSM_BEE_NASOD_ATTACK_BIG = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100, 
	},
}

CSM_BEE_NASOD_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}

CSM_BEE_NASOD_WALK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_JUMP_DOWN",								},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_BEE_NASOD_ATTACK_BIG",				"CT_CSM_BEE_NASOD_ATTACK_BIG",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_BEE_NASOD_ATTACK",				"CT_CSM_BEE_NASOD_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_BEE_NASOD_WAIT",										},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_BEE_NASOD_JUMP_UP",									},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_BEE_NASOD_JUMP_UP_DIR",								}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_BEE_NASOD_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_BEE_NASOD_JUMP_DOWN_DIR",							}, 
		
	},

	CT_CSM_BEE_NASOD_ATTACK = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100, 
	},
	CT_CSM_BEE_NASOD_ATTACK_BIG = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100, 
	},
}


CSM_BEE_NASOD_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CSM_BEE_NASOD_JUMP_DOWN", },
	},
}

CSM_BEE_NASOD_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_BEE_NASOD_JUMP_LANDING", },
	},
}


CSM_BEE_NASOD_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CSM_BEE_NASOD_JUMP_DOWN_DIR", },
	},
}

CSM_BEE_NASOD_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_BEE_NASOD_JUMP_LANDING", },
	},
}


CSM_BEE_NASOD_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_WAIT",						},
	},
}



CSM_BEE_NASOD_ATTACK = 
{
	ANIM_SPEED					= 1.2,
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_WAIT", },
	},
	
}

CSM_BEE_NASOD_ATTACK_BIG = 
{
	ANIM_SPEED					= 1.2,
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_WAIT", },
	},
	
}





CSM_BEE_NASOD_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_WAIT", },
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_1506 },
	},
}

CSM_BEE_NASOD_DAMAGE_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_DAMAGE_STAND_UP", },
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1506 },
  	},
}



CSM_BEE_NASOD_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CSM_BEE_NASOD_DAMAGE_DOWN",		},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1433 },
	},
}

CSM_BEE_NASOD_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CSM_BEE_NASOD_DAMAGE_FLY_BACK_DOWN",		},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1433 },
	},
}



CSM_BEE_NASOD_DAMAGE_FLY_BACK_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_DAMAGE_STAND_UP", },
	},
	
}



CSM_BEE_NASOD_DAMAGE_AIR = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BEE_NASOD_WAIT", },
	},
}

CSM_BEE_NASOD_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

CSM_BEE_NASOD_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CSM_BEE_NASOD_DAMAGE_AIR_FALL", },	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING", },	
	},
}

CSM_BEE_NASOD_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"CSM_BEE_NASOD_DAMAGE_AIR_UP", },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING", },
	},
}

CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_DAMAGE_AIR_FALL", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_DAMAGE_STAND_UP", },
	},
}

CSM_BEE_NASOD_DAMAGE_STAND_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BEE_NASOD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BEE_NASOD_WAIT", },
	},
}


CSM_BEE_NASOD_DYING_LAND = 
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

CSM_BEE_NASOD_DYING_SKY = 
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









function CSM_BEE_NASOD_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function CSM_BEE_NASOD_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end





function CSM_BEE_NASOD_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )




	-- bullet
	
	if pNPCUnit:AnimEventTimer_LUA( 1.250 ) or
		pNPCUnit:AnimEventTimer_LUA( 1.350 ) then
		
		vLandPos = pNPCUnit:GetLandPosition_LUA()		
		vBonePos = pNPCUnit:GetBonePos_LUA( "Bone03" )
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CSM_NASOD_BEE_BULLET", vBonePos, vLandPos.y )
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 1.363 ) then
		
		vLandPos = pNPCUnit:GetLandPosition_LUA()		
		vBonePos = pNPCUnit:GetBonePos_LUA( "Bone03" )
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CSM_NASOD_BEE_BULLET", vBonePos, vLandPos.y )
	
	end




	-- meshplayer 생성
	if pNPCUnit:AnimEventTimer_LUA( 1.376 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
	
	end



	if pNPCUnit:AnimEventTimer_LUA( 1.255 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 1, pMeshPlayer )
	
	end



	if pNPCUnit:AnimEventTimer_LUA( 1.363 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 2, pMeshPlayer )
	
	end
	
	
	

	-- meshplayer framemove
	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 ) 
	if nil ~= pMeshPlayer then 
	
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
		else
			vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer:SetPos( vBonePos ) 
		end

	end
	



	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 1 ) 
	if nil ~= pMeshPlayer then 
	
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 1 )
		else
			vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer:SetPos( vBonePos ) 
		end

	end



	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 2 ) 
	if nil ~= pMeshPlayer then 
	
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 2 )
		else
			vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer:SetPos( vBonePos ) 
		end

	end




end



function CSM_BEE_NASOD_ATTACK_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )




	-- bullet
	
	if pNPCUnit:AnimEventTimer_LUA( 1.250 ) or
		pNPCUnit:AnimEventTimer_LUA( 1.350 ) then
		
		vLandPos = pNPCUnit:GetLandPosition_LUA()		
		vBonePos = pNPCUnit:GetBonePos_LUA( "Bone03" )
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CSM_NASOD_BEE_BULLET_BIG", vBonePos, vLandPos.y )
	
	end


	if pNPCUnit:AnimEventTimer_LUA( 1.363 ) then
		
		vLandPos = pNPCUnit:GetLandPosition_LUA()		
		vBonePos = pNPCUnit:GetBonePos_LUA( "Bone03" )
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CSM_NASOD_BEE_BULLET_BIG", vBonePos, vLandPos.y )
	
	end




	-- meshplayer 생성
	if pNPCUnit:AnimEventTimer_LUA( 1.376 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
	
	end



	if pNPCUnit:AnimEventTimer_LUA( 1.255 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 1, pMeshPlayer )
	
	end



	if pNPCUnit:AnimEventTimer_LUA( 1.363 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Nasod_Bee_Attack01", vBonePos, rotDegree, rotDegree, 14 )
		
		pNPCUnit:SetMajorMeshPlayer_LUA( 2, pMeshPlayer )
	
	end
	
	
	

	-- meshplayer framemove
	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 ) 
	if nil ~= pMeshPlayer then 
	
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
		else
			vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer:SetPos( vBonePos ) 
		end

	end
	



	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 1 ) 
	if nil ~= pMeshPlayer then 
	
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 1 )
		else
			vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer:SetPos( vBonePos ) 
		end

	end



	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 2 ) 
	if nil ~= pMeshPlayer then 
	
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()		
		if false == pMajorXMeshPlayer:IsLiveInstance(pMeshPlayer) then 
			pNPCUnit:ClearMajorMeshPlayer_LUA( 2 )
		else
			vBonePos = pNPCUnit:GetBonePos_LUA("Bone03")	
			pMeshPlayer:SetPos( vBonePos ) 
		end

	end




end




function CSM_BEE_NASOD_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	-- meshplayer 삭제
	pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 ) 
	
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




function CSM_BEE_NASOD_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function CSM_BEE_NASOD_DAMAGE_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end



function CSM_BEE_NASOD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
	
end


function CSM_BEE_NASOD_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	--GetMinorParticle:CreateSequence_LUA( "DieImpactRingRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:CreateSequence_LUA( "DieImpactSlashRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:CreateSequence_LUA( "DieSmoke",				pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(5,-1) )
	
	pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end












