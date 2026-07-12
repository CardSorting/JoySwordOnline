-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.1,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{	
	"Voice_Hayoung_001.ogg",
    "Voice_Hayoung_002.ogg",
    "Voice_Hayoung_003.ogg",
    "Voice_Hayoung_004.ogg",
    "Voice_Hayoung_005.ogg",
    "Voice_Hayoung_006.ogg",
    "Voice_Hayoung_007.ogg",
    "Voice_Hayoung_008.ogg",
    "Voice_Hayoung_009.ogg",
    "Voice_Hayoung_010.ogg",
    "Voice_Hayoung_011.ogg",
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "APINK_ANGEL_03_RENA.x",
}

INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 550,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	--HP_CHANGE_RATE		= -50,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	--USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
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
	
	DAMAGE_DOWN         = FALSE,
		

	SUMMON_TIME			= 180,
	
	NOT_EXTRA_DAMAGE    = TRUE,	
	DAMAGE_DOWN         = FALSE,
	DIE_FLY				= FALSE,
	
}




INIT_STATE = 
{	
	{ STATE_NAME = "APINK_ANGEL_03_RENA_START",			LUA_FRAME_MOVE_FUNC = "APINK_ANGEL_03_RENA_START_FRAME_MOVE"			},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_PRE_WAIT",				},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_WAIT",					},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_END",				LUA_FRAME_MOVE_FUNC = "APINK_ANGEL_03_RENA_DYING_FRAME_MOVE"			},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_DYING",			LUA_FRAME_MOVE_FUNC = "APINK_ANGEL_03_RENA_DYING_FRAME_MOVE"			},
	


	
	-- 초롱천사 기본 공격
	-- 퓨리어스 인게이지
	{ STATE_NAME = "APINK_ANGEL_03_RENA_ATTACK_A",		STATE_COOL_TIME = 3,        },
	-- 글라이딩 스트라이크
	{ STATE_NAME = "APINK_ANGEL_03_RENA_ATTACK_B",		STATE_COOL_TIME = 11,        },
	-- 콜 오브 루인
	{ STATE_NAME = "APINK_ANGEL_03_RENA_ATTACK_C",		STATE_COOL_TIME = 20,        },
	-- 스프레드 샷(폭발의 화살 버전)
	{ STATE_NAME = "APINK_ANGEL_03_RENA_ATTACK_D",		STATE_COOL_TIME = 4,   		LUA_FRAME_MOVE_FUNC = "APINK_ANGEL_03_RENA_ATTACK_D_FRAME_MOVE"	     },
	-- HP/MP 회복 버프
	{ STATE_NAME = "APINK_ANGEL_03_RENA_BUFF",			STATE_COOL_TIME = 65,        },


--리액션 관련
	{ STATE_NAME = "APINK_ANGEL_03_RENA_DAMAGE_FRONT",				},	
	{ STATE_NAME = "APINK_ANGEL_03_RENA_DAMAGE_BACK",				},	


	{ STATE_NAME = "APINK_ANGEL_03_RENA_WALK",					},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_JUMP_UP",				},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_JUMP_DOWN",			},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_JUMP_UP_DIR",			},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "APINK_ANGEL_03_RENA_JUMP_LANDING",			},
	
	COMMON_FRAME_FUNC			= "APINK_ANGEL_03_RENA_COMMON_FRAME_MOVE",
	
	START_STATE					= "APINK_ANGEL_03_RENA_START",
	WAIT_STATE					= "APINK_ANGEL_03_RENA_WAIT",
	SUMMON_END_STATE			= "APINK_ANGEL_03_RENA_END",
	
	SMALL_DAMAGE_LAND_FRONT		= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "APINK_ANGEL_03_RENA_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "APINK_ANGEL_03_RENA_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "APINK_ANGEL_03_RENA_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "APINK_ANGEL_03_RENA_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	UP_DAMAGE					= "APINK_ANGEL_03_RENA_DAMAGE_FRONT",
	
	DYING_LAND_FRONT			= "APINK_ANGEL_03_RENA_DYING",
	DYING_LAND_BACK				= "APINK_ANGEL_03_RENA_DYING",
	DYING_SKY					= "APINK_ANGEL_03_RENA_DYING",

	REVENGE_ATTACK				= "",	
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
		TARGET_INTERVAL 			= 2,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 0,
	},
	
	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,
		DEST_GAP			= 300,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 500,
		
		DIR_CHANGE_INTERVAL = 0.5,
		
		WALK_INTERVAL		= 0.5,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 0.5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,	-- cm
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
		
	ESCAPE_CONDITION = 
	{
		RATE				= 100, --30,
		ESCAPE_RANGE		= 350,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
	
	
}



APINK_ANGEL_03_RENA_START = 
{
	ANIM_NAME					= "RespawnLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	IS_RIGHT					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0 				= { 0.001, "Voice_Hayoung_001.ogg" },
	SOUND_PLAY1 				= { 0.001, "Pet_Summon.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"APINK_ANGEL_03_RENA_PRE_WAIT",				},
	},
	
	TALK_BOX =
	{
		{ RATE = 50, MESSAGE = STR_ID_17909 },
		{ RATE = 50, MESSAGE = STR_ID_17913 },
 	},
	
}


APINK_ANGEL_03_RENA_PRE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"APINK_ANGEL_03_RENA_WAIT",				},
	},
	
}



APINK_ANGEL_03_RENA_WAIT = 
{
	ANIM_SPEED					= 1.5,
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- VIEW_TARGET					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.5,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",					},


		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"APINK_ANGEL_03_RENA_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"APINK_ANGEL_03_RENA_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"APINK_ANGEL_03_RENA_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"APINK_ANGEL_03_RENA_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"APINK_ANGEL_03_RENA_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"APINK_ANGEL_03_RENA_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"APINK_ANGEL_03_RENA_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_JUMP_UP_DIR",			"CT_APINK_ANGEL_03_RENA_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_D",				"CT_APINK_ANGEL_03_RENA_ATTACK_D",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_B",				"CT_APINK_ANGEL_03_RENA_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_C",				"CT_APINK_ANGEL_03_RENA_ATTACK_C",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_A",				"CT_APINK_ANGEL_03_RENA_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_BUFF",					"CT_APINK_ANGEL_03_RENA_BUFF",				},
	},

	CT_APINK_ANGEL_03_RENA_JUMP_UP_DIR = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},

	CT_APINK_ANGEL_03_RENA_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
	
	CT_APINK_ANGEL_03_RENA_ATTACK_B = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	CT_APINK_ANGEL_03_RENA_ATTACK_C = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 75,
	},
	CT_APINK_ANGEL_03_RENA_ATTACK_D = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
	CT_APINK_ANGEL_03_RENA_BUFF = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}


APINK_ANGEL_03_RENA_WALK = 
{
	ANIM_SPEED					= 1.2,
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.5,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",					},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"APINK_ANGEL_03_RENA_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"APINK_ANGEL_03_RENA_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"APINK_ANGEL_03_RENA_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"APINK_ANGEL_03_RENA_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"APINK_ANGEL_03_RENA_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"APINK_ANGEL_03_RENA_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"APINK_ANGEL_03_RENA_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_JUMP_UP_DIR",			"CT_APINK_ANGEL_03_RENA_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_D",				"CT_APINK_ANGEL_03_RENA_ATTACK_D",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_B",				"CT_APINK_ANGEL_03_RENA_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_C",				"CT_APINK_ANGEL_03_RENA_ATTACK_C",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_ATTACK_A",				"CT_APINK_ANGEL_03_RENA_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"APINK_ANGEL_03_RENA_BUFF",					"CT_APINK_ANGEL_03_RENA_BUFF",				},

	},

	CT_APINK_ANGEL_03_RENA_JUMP_UP_DIR = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_APINK_ANGEL_03_RENA_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
	
	CT_APINK_ANGEL_03_RENA_ATTACK_B = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	CT_APINK_ANGEL_03_RENA_ATTACK_C = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 75,
	},
	CT_APINK_ANGEL_03_RENA_ATTACK_D = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
	CT_APINK_ANGEL_03_RENA_BUFF = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}



APINK_ANGEL_03_RENA_ATTACK_A =
{
	ANIM_NAME					= "AT_ComboX3a",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- INVINCIBLE					= { 0, 100, },
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	DELETE_EFFECT_SET_ON_DIE 	= TRUE, 

	SOUND_PLAY0			= { 0.225, "Voice_Hayoung_010.ogg" },
	SOUND_PLAY1			= { 0.001, "Lena_FuriousEngage1.ogg" },
	SOUND_PLAY2			= { 0.466, "Lena_FuriousEngage2.ogg" },
	SOUND_PLAY3			= { 0.919, "Lena_FuriousEngage3.ogg" },
	SOUND_PLAY4			= { 1.17, "Lena_FuriousEngage4.ogg" },
	SOUND_PLAY5			= { 1.969, "Lena_FuriousEngage5.ogg" },	
		
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EFFECT_SET_LIST =
	{
		"APINK_ANGEL_Furious_Engage", 0.15,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"APINK_ANGEL_03_RENA_WALK",									},	
	},

	TALK_BOX =
	{
		{ RATE = 7, MESSAGE = STR_ID_1535 },
		{ RATE = 7, MESSAGE = STR_ID_1423 },
		{ RATE = 7, MESSAGE = STR_ID_17919 },
 	},
}

APINK_ANGEL_03_RENA_ATTACK_B =
{
	ANIM_SPEED					= 1.5,
	ANIM_NAME					= "Throw1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- INVINCIBLE					= { 0, 100, },
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	DELETE_EFFECT_SET_ON_DIE 	= TRUE, 

	-- SPEED_X						= 2000,
	SPEED_Y						= 0,	

	-- SOUND_PLAY0					= { 0.2,	"Elsword_RageCutter2.ogg" },
	-- SOUND_PLAY1					= { 0.225, "Voice_Hayoung_010.ogg" },
	SOUND_PLAY0     			= { 0.1,    "Voice_Hayoung_009.ogg" },
	
	VIEW_TARGET					= TRUE,
	-- ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST =
	{
		"APINK_ANGEL_Gliding_Strike", 0.55,	
	},	
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"APINK_ANGEL_03_RENA_WALK",									},	
	},

	TALK_BOX =
	{
		{ RATE = 7, MESSAGE = STR_ID_1535 },
		{ RATE = 7, MESSAGE = STR_ID_1423 },
		{ RATE = 7, MESSAGE = STR_ID_17919 },
 	},
}

APINK_ANGEL_03_RENA_ATTACK_C =
{
	ANIM_NAME					= "SP2a_IllusionStinger",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- INVINCIBLE					= { 0, 100, },
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	SOUND_PLAY0					= { 0.01, "Lena_CallofRuin01.ogg" }, 
    SOUND_PLAY1					= { 0.29, "Lena_CallofRuin02.ogg" }, 
    SOUND_PLAY2					= { 2.252, "Lena_CallofRuin03.ogg" }, 
	SOUND_PLAY3     			= { 0.001,  "Voice_Hayoung_006.ogg" },
	
	VIEW_TARGET					= TRUE,
	-- ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_CALL_OF_RUIN", 0,	
		"APINK_ANGEL_CALL_OF_RUIN_DAMAGE", 0.25,	
	},	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"APINK_ANGEL_03_RENA_WALK",									},	
	},
	-- EVENT_PROCESS =
	-- {
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",								},
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"APINK_ANGEL_03_RENA_WALK",		"CT_APINK_ANGEL_03_RENA_WALK"	},
	-- },
	-- CT_APINK_ANGEL_03_RENA_WALK =
	-- {
		-- STATE_TIME_OVER	= 3.0,
	-- },
	
	TALK_BOX =
	{
		{ RATE = 7, MESSAGE = STR_ID_1535 },
		{ RATE = 7, MESSAGE = STR_ID_1423 },
		{ RATE = 7, MESSAGE = STR_ID_17919 },
 	},
}

APINK_ANGEL_03_RENA_ATTACK_D =
{
	ANIM_SPEED					= 1.5,
	ANIM_NAME					= "Throw1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- INVINCIBLE					= { 0, 100, },
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	DELETE_EFFECT_SET_ON_DIE 	= TRUE, 

		
	VIEW_TARGET					= TRUE,
	
	-- ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"APINK_ANGEL_03_RENA_WALK",									},	
	},

	TALK_BOX =
	{
		{ RATE = 7, MESSAGE = STR_ID_1535 },
		{ RATE = 7, MESSAGE = STR_ID_1423 },
		{ RATE = 7, MESSAGE = STR_ID_17919 },
 	},
}

APINK_ANGEL_03_RENA_BUFF =
{
	-- ANIM_SPEED					= 1.5,
	ANIM_NAME					= "SP_Invisible",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	DELETE_EFFECT_SET_ON_DIE 	= TRUE, 

	SOUND_PLAY0			= { 0.01, "Pet_Cheer_Common.ogg" },
	SOUND_PLAY1			= { 0.4, "Voice_Hayoung_011.ogg" },
		
	VIEW_TARGET					= TRUE,
	
	-- ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_APINK_ANGEL_BUFF", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"APINK_ANGEL_03_RENA_WALK",									},	
	},

	TALK_BOX =
	{
		{ RATE = 20, MESSAGE = STR_ID_17907 },
		{ RATE = 20, MESSAGE = STR_ID_17908 },
		{ RATE = 10, MESSAGE = STR_ID_1535 },
 	},
}


APINK_ANGEL_03_RENA_DAMAGE_FRONT =
{
	ANIM_NAME					= "Damage_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- SOUND_PLAY0 				= { 0.01, "APINK_ANGEL_03_RENA_Voice_Hit01.ogg",30 },
		
	GUARD_DEFENCE               = 50,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	-- EFFECT_SET_LIST = 
	-- {
		-- "EffectSet_APINK_ANGEL_SHIELD", 0.1,
	-- },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"APINK_ANGEL_03_RENA_WAIT",				},
	},
}


APINK_ANGEL_03_RENA_DAMAGE_BACK =
{
	ANIM_NAME					= "Damage_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	GUARD_DEFENCE               = 50,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	-- SOUND_PLAY0 				= { 0.01, "APINK_ANGEL_03_RENA_Voice_Hit02.ogg",30 },
	
	-- EFFECT_SET_LIST = 
	-- {
		-- "EffectSet_APINK_ANGEL_SHIELD", 0.1,
	-- },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"APINK_ANGEL_03_RENA_WAIT",				},
	},
}

APINK_ANGEL_03_RENA_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"APINK_ANGEL_03_RENA_JUMP_DOWN",				},
	},
}

APINK_ANGEL_03_RENA_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"APINK_ANGEL_03_RENA_JUMP_LANDING",				},
	},
}

APINK_ANGEL_03_RENA_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"APINK_ANGEL_03_RENA_JUMP_DOWN_DIR",				},
	},
}

APINK_ANGEL_03_RENA_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"APINK_ANGEL_03_RENA_JUMP_LANDING",				},
	},
}

APINK_ANGEL_03_RENA_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"APINK_ANGEL_03_RENA_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"APINK_ANGEL_03_RENA_WAIT",					},
	},
}


APINK_ANGEL_03_RENA_DYING = 
{
	ANIM_SPEED					= 0.4,
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	PASSIVE_SPEED_Y				= 150,
	PASSIVE_SPEED_X				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	SOUND_PLAY0					= { 0.01, "Parasite_House_Summon.ogg" },
	SOUND_PLAY1					= { 0.01, "Parasite_House_Summon.ogg" },
	
	
	--NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	DYING_SPEED					= 1.4,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_APINK_ANGEL_BUFF", 0,	
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



APINK_ANGEL_03_RENA_END = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	PASSIVE_SPEED_Y				= 150,
	PASSIVE_SPEED_X				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	SOUND_PLAY0					= { 0.01, "Parasite_House_Summon.ogg" },
	SOUND_PLAY1					= { 0.01, "Parasite_House_Summon.ogg" },
	
	
	--NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	DYING_SPEED					= 1.4,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_APINK_ANGEL_BUFF", 0,	
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	


function APINK_ANGEL_03_RENA_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		local vPos = pNPCUnit:GetBonePos_LUA("Bip01")
		vPos.y = vPos.y + 200
		local pParticle = pMinorParticle:CreateSequence_LUA( "ExclamationMarkNPC", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(3, 1) )
		if pParticle ~= nil then
			pParticle:SetPosition( vPos )
		end
	end
end


function APINK_ANGEL_03_RENA_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
  
end



function APINK_ANGEL_03_RENA_MAGIC_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	
	
end


------------------------------------------------------------------------------
-- Frame Move Function --
------------------------------------------------------------------------------





------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end



function APINK_ANGEL_03_RENA_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_FLY"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_UP"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_SMALL_DAMAGE"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_BIG_DAMAGE"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_DOWN"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_DRAG_UP"] then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_APINK_ANGEL_SHIELD", pNPCUnit )
	end
	pNPCUnit:InitDamageTypeThisFrame_LUA()
end

function APINK_ANGEL_03_RENA_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_APINK_ANGEL_FEATHER", pNPCUnit )
	end		     
	  
end	   
function APINK_ANGEL_03_RENA_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_APINK_ANGEL_FEATHER", pNPCUnit )
	end		     
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		local pEffectSet2 = pX2Game:GetEffectSet()
		local hEffect2 = pEffectSet2:PlayEffectSet_LUA( "EffectSet_APINK_ANGEL_FEATHER", pNPCUnit )
	end		     
	if pNPCUnit:AnimEventTimer_LUA( 2.25 ) then
		local pEffectSet3 = pX2Game:GetEffectSet()
		local pEffectSet4 = pX2Game:GetEffectSet()
		local hEffect3 = pEffectSet4:PlayEffectSet_LUA( "EffectSet_APINK_ANGEL_FEATHER_MASS", pNPCUnit )
		local hEffect4 = pEffectSet5:PlayEffectSet_LUA( "EffectSet_APINK_ANGEL_FEATHER_MASS", pNPCUnit )
	end		    
	  
end	   

function APINK_ANGEL_03_RENA_ATTACK_D_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
				    
		for i = 0, 2 do 
		
			local targetpos = pNPCUnit:GetLandPosition_LUA()
						 	
			local vDirVector		= pNPCUnit:GetDirVector()
			local bIsRight			= pNPCUnit:GetIsRight()
									
			if bIsRight == false then 
				targetpos = MovePos( targetpos, vDirVector, - 650 + (i * -300) )
			else
				targetpos = MovePos( targetpos, vDirVector, (- 650 + (i * -300)) * -1 )
			end
			
			
			local pDamageEffect = pX2Game:GetDamageEffect()
			pDamageEffect:CreateInstanceParabolic_LUA( pNPCUnit, "APINK_ANGEL_ARROW_OF_EXPLOSION", pNPCUnit:GetBonePos_LUA( "Dummy1_Rhand" ), targetpos, D3DXVECTOR3(0, -3500.0, 0), 0.55, 1.0 )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
				    
		for i = 0, 2 do 
			local targetpos = pNPCUnit:GetLandPosition_LUA()
						 	
			local vDirVector		= pNPCUnit:GetDirVector()
			local bIsRight			= pNPCUnit:GetIsRight()
									
			if bIsRight == false then  
				targetpos = MovePos( targetpos, vDirVector, - 650 + (i * -300) )
			else
				targetpos = MovePos( targetpos, vDirVector, (- 650 + (i * -300)) * -1 )
			end
			
			
			local pDamageEffect = pX2Game:GetDamageEffect()
			pDamageEffect:CreateInstanceParabolic_LUA( pNPCUnit, "APINK_ANGEL_ARROW_OF_EXPLOSION", pNPCUnit:GetBonePos_LUA( "Dummy1_Rhand" ), targetpos, D3DXVECTOR3(0, -3500.0, 0), 0.55, 1.0 )
		end
	end
end	
