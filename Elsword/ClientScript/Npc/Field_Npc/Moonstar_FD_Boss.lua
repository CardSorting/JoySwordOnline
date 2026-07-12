-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 144.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.2,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
        
		"Dark_Sentinel_AttackA.ogg",
		"Dark_Sentinel_MagicAttackA.ogg",
		"Dark_Sentinel_MagicAttackB.ogg",
		"Dark_Sentinel_SpecialAttackA1.ogg",
		"Dark_Sentinel_SpecialAttackA2.ogg",
		"Dark_Sentinel_Landing.ogg",
		"Dark_Sentinel_DamageAir.ogg",
		"Down.ogg",
		
		"DARKSENTINELVoice_Damage.ogg",
	    "DARKSENTINELVoice_Attack.ogg",
		"DARKSENTINELVoice_Dying.ogg",
	
		
	},

	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	 "DarkArrow01.X",
	},

}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_MoonStar_Fd_Boss.x",	
	MOTION_CHANGE_TEX_XET	= "MOONSTAR_FD_BOSS_A.XET",
	MOTION_ANI_TEX_XET		= "MOONSTAR_FD_BOSS_A.XET",

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

	DIE_FLY				= 0,
	
	FALL_DOWN			= TRUE,
	
	
}

INIT_STATE = 
{
	{ STATE_NAME = "MOONSTAR_START",							},

	{ STATE_NAME = "MOONSTAR_WAIT",							LUA_STATE_START_FUNC = "MOONSTAR_WAIT_STATE_START",				},
	{ STATE_NAME = "MOONSTAR_SPECIAL_ATTACK_A",			STATE_COOL_TIME = 10,																			},
	
	{ STATE_NAME = "MOONSTAR_WALK",							LUA_STATE_END_FUNC = "MOONSTAR_WALK_STATE_END"						},
	{ STATE_NAME = "MOONSTAR_JUMP_UP",							},
	{ STATE_NAME = "MOONSTAR_JUMP_DOWN",						LUA_STATE_END_FUNC = "MOONSTAR_JUMP_DOWN_STATE_END"				},
	{ STATE_NAME = "MOONSTAR_JUMP_UP_DIR",						},
	{ STATE_NAME = "MOONSTAR_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "MOONSTAR_JUMP_DOWN_DIR_STATE_END"			},
	{ STATE_NAME = "MOONSTAR_JUMP_LANDING",					},
	{ STATE_NAME = "MOONSTAR_HEAL_BEFORE",				STATE_COOL_TIME = 30,		},	
	{ STATE_NAME = "MOONSTAR_HEAL",						LUA_FRAME_MOVE_FUNC = "MOONSTAR_HEAL_FRAME_MOVE" },	

	{ STATE_NAME = "MOONSTAR_MAGIC_ATTACK_A",						LUA_FRAME_MOVE_FUNC = "MOONSTAR_MAGIC_ATTACK_A_FRAME_MOVE",				STATE_COOL_TIME = 5, },
	{ STATE_NAME = "MOONSTAR_MAGIC_ATTACK_B",						LUA_FRAME_MOVE_FUNC = "MOONSTAR_MAGIC_ATTACK_B_FRAME_MOVE",				STATE_COOL_TIME = 10, },

	--리액션 관련
	{ STATE_NAME = "MOONSTAR_DAMAGE_SMALL_FRONT",					LUA_FRAME_MOVE_FUNC = "MOONSTAR_DAMAGE_SMALL_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "MOONSTAR_DAMAGE_BIG_FRONT",					LUA_FRAME_MOVE_FUNC = "MOONSTAR_DAMAGE_BIG_FRONT_FRAME_MOVE"			},

	{ STATE_NAME = "MOONSTAR_DAMAGE_BACK",						LUA_FRAME_MOVE_FUNC = "MOONSTAR_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "MOONSTAR_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "MOONSTAR_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "MOONSTAR_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "MOONSTAR_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "MOONSTAR_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "MOONSTAR_DAMAGE_FLY_BACK",					},
	{ STATE_NAME = "MOONSTAR_DAMAGE_AIR",						},
	{ STATE_NAME = "MOONSTAR_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "MOONSTAR_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "MOONSTAR_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "MOONSTAR_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "MOONSTAR_STAND_UP_FRONT",					},
	{ STATE_NAME = "MOONSTAR_STAND_UP_BACK",					},

	{ STATE_NAME = "MOONSTAR_DYING_FRONT",						LUA_STATE_START_FUNC = "MOONSTAR_DYING_FRONT_STATE_START",				 },
	{ STATE_NAME = "MOONSTAR_DYING_BACK",						LUA_STATE_START_FUNC = "MOONSTAR_DYING_BACK_STATE_START",				 },
	{ STATE_NAME = "MOONSTAR_DYING_SKY",						LUA_STATE_START_FUNC = "MOONSTAR_DYING_SKY_STATE_START",				 },
	
	
	START_STATE					= "MOONSTAR_START",		
	WAIT_STATE					= "MOONSTAR_WAIT",

	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "MOONSTAR_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "MOONSTAR_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "MOONSTAR_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "MOONSTAR_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "MOONSTAR_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "MOONSTAR_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "MOONSTAR_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "MOONSTAR_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "MOONSTAR_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "MOONSTAR_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "MOONSTAR_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "MOONSTAR_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE				= "MOONSTAR_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "",
	
	DAMAGE_EXTRA_STATES         = {"MOONSTAR_STAND_UP_FRONT","MOONSTAR_STAND_UP_BACK","MOONSTAR_JUMP_DOWN","MOONSTAR_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "MOONSTAR_DYING_FRONT",
	DYING_LAND_BACK				= "MOONSTAR_DYING_BACK",
	DYING_SKY					= "MOONSTAR_DYING_SKY",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 600,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
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
		ESCAPE_GAP			= 650,	-- 이 거리 보다 멀어지면 도망 성공
		
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







MOONSTAR_START =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT					= FALSE,	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",				},
	},
}



MOONSTAR_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT					= FALSE,	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",					},

	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MOONSTAR_MAGIC_ATTACK_A",				"CT_MOONSTAR_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MOONSTAR_MAGIC_ATTACK_B",				"CT_MOONSTAR_MAGIC_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MOONSTAR_HEAL_BEFORE",          "CF_MOONSTAR_HEAL",            },
     	
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MOONSTAR_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MOONSTAR_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MOONSTAR_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MOONSTAR_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MOONSTAR_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MOONSTAR_JUMP_DOWN_DIR",				},
		
	},

	CT_MOONSTAR_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 30,
	},

	CT_MOONSTAR_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},

	
}



MOONSTAR_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",					},

	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MOONSTAR_MAGIC_ATTACK_A",				"CT_MOONSTAR_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MOONSTAR_MAGIC_ATTACK_B",				"CT_MOONSTAR_MAGIC_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MOONSTAR_HEAL_BEFORE",          "CF_MOONSTAR_HEAL",            },
     	
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MOONSTAR_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MOONSTAR_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MOONSTAR_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MOONSTAR_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MOONSTAR_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MOONSTAR_JUMP_DOWN_DIR",				},
	},

	CT_MOONSTAR_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 30,
	},

	CT_MOONSTAR_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},

}

MOONSTAR_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],			"MOONSTAR_JUMP_DOWN",				},
	},

}

MOONSTAR_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MOONSTAR_JUMP_LANDING",				},
	},
}

MOONSTAR_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MOONSTAR_JUMP_DOWN_DIR",				},
	},
	
}

MOONSTAR_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MOONSTAR_JUMP_LANDING",				},
	},
}

MOONSTAR_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.043, "Dark_Sentinel_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",					},
	},
}
MOONSTAR_HEAL_BEFORE =
{

	ANIM_NAME					= "Buff",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_HEAL",		},
	},

	EFFECT_SET_LIST =
	{
		"EffectSet_UnosGirl_Heal", 0,
	},
	
	-- 문스타 힐 관련 대사 처리
	TALK_BOX = 
	{
		{ RATE = 100, MESSAGE = STR_ID_23601}, -- 지면안되요, 라노스…
	},

}
--------------------------------------------------------------------------
MOONSTAR_HEAL =
{
	ANIM_NAME					= "Buff",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_HEAL",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_UnosGirl_Heal", 0,
	},

}

MOONSTAR_ATTACK_A = 
{
	ANIM_NAME					= "AttackA",
	ANIM_SPEED					= 0.85,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			        = { 0.035, "Dark_Sentinel_AttackA.ogg" },
	SOUND_PLAY1		            = { 0.01, "DARKSENTINELVoice_Attack.ogg", 70 },
 

	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",					},
	},

	ATTACK_TIME0				= { 0.15, 0.25, },	
	ATTACK_TIME1				= { 0.40, 0.50, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 0.0,
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
		CAN_REVENGE			= TRUE,			
	},


	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
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
		CAN_REVENGE			= TRUE,				
	},


	
	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_2575 },
		{ RATE = 8, MESSAGE = STR_ID_4675 },
	},
}



MOONSTAR_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "MagicAttackA",
	ANIM_SPEED					= 0.85,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.885, "Dark_Sentinel_MagicAttackA.ogg" },
   
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",					},
	},

	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_2575 },
		{ RATE = 8, MESSAGE = STR_ID_4675 },
	},
}



MOONSTAR_MAGIC_ATTACK_B = 
{
	ANIM_NAME					= "MagicAttackB",
	ANIM_SPEED					= 0.85,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.402, "Dark_Sentinel_MagicAttackB.ogg" },


	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",					},
	},

	
	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_4683 },
		{ RATE = 8, MESSAGE = STR_ID_4675 },
	},
}


MOONSTAR_SPECIAL_ATTACK_A = 
{
	ANIM_NAME					= "SpecialAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1.2,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 1.166, },

	SPEED_X						= -500,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.001, "Dark_Sentinel_SpecialAttackA1.ogg" },
    SOUND_PLAY1			= { 1.887, "Dark_Sentinel_Landing.ogg" },

	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",					},
	},

	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_4683 },
		{ RATE = 8, MESSAGE = STR_ID_4675 },
	},
}

MOONSTAR_SPECIAL_ATTACK_B = 
{
	ANIM_NAME					= "SpecialAttackB",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",					},
	},

	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_4683 },
		{ RATE = 8, MESSAGE = STR_ID_4675 },
	},
}


MOONSTAR_DAMAGE_SMALL_FRONT = 
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0		            = { 0.01, "DARKSENTINELVoice_Damage.ogg", 50 },
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MOONSTAR_WAIT",												},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1665 },
		{ RATE = 10, MESSAGE = STR_ID_1675 },
	},
}
MOONSTAR_DAMAGE_BIG_FRONT = 
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0		            = { 0.01, "DARKSENTINELVoice_Damage.ogg", 50 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MOONSTAR_WAIT",												},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MOONSTAR_SPECIAL_ATTACK_A",		"CT_MOONSTAR_BACKSTEP"			},
	
	},
	
	EVENT_INTERVAL_TIME0 = 1,
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1665 },
		{ RATE = 10, MESSAGE = STR_ID_1675 },
	},
	
	
	CT_MOONSTAR_BACKSTEP = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE	= 75,
	},
	
}

MOONSTAR_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	TALK_BOX = 
	{
		{ RATE = 14, MESSAGE = STR_ID_1677 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MOONSTAR_WAIT",												},
	},
}

MOONSTAR_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0		         	= { 0.470, "Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MOONSTAR_DAMAGE_AIR_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MOONSTAR_STAND_UP_FRONT",			},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1678 },
		{ RATE = 10, MESSAGE = STR_ID_1679 },
	},
}

MOONSTAR_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.310, "Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MOONSTAR_DAMAGE_AIR_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MOONSTAR_STAND_UP_BACK",			},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1815 },
	},
}

MOONSTAR_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MOONSTAR_DAMAGE_DOWN_FRONT",		},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1815 },
	},
}

MOONSTAR_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MOONSTAR_DAMAGE_DOWN_BACK",		},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1434 },
	},
}

MOONSTAR_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.087, "Dark_Sentinel_DamageAir.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MOONSTAR_WAIT",					},
	},
}


MOONSTAR_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MOONSTAR_DAMAGE_AIR_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MOONSTAR_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1434 },
	},
}

MOONSTAR_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"MOONSTAR_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MOONSTAR_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

MOONSTAR_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			        = { 0.447, "Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MOONSTAR_DAMAGE_AIR_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_STAND_UP_FRONT",			},
	},

}

MOONSTAR_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT",				},
	},
}

MOONSTAR_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MOONSTAR_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOONSTAR_WAIT", },
	},		
}


MOONSTAR_DYING_SKY = 
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

MOONSTAR_DYING_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0		            = { 0.01, "DARKSENTINELVoice_Dying.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

MOONSTAR_DYING_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
    SOUND_PLAY0		            = { 0.01, "DARKSENTINELVoice_Dying.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}



--------------------------------------------------------------------
--------------------------------------------------------------------


function MOONSTAR_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetShowGage( true )

end




--------------------------------------------------------------------


function MOONSTAR_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function MOONSTAR_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function MOONSTAR_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function MOONSTAR_DAMAGE_SMALL_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function MOONSTAR_DAMAGE_BIG_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function MOONSTAR_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function MOONSTAR_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function MOONSTAR_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function MOONSTAR_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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




function MOONSTAR_DYING_SKY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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

function MOONSTAR_DYING_FRONT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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

function MOONSTAR_DYING_BACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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



function MOONSTAR_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end	

end



function MOONSTAR_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then

		local pos = pNPCUnit:GetPos()
	
		local pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGEEFFECT_MOONSSTAR_STUN_ARROW", pNPCUnit:GetBonePos_LUA( "Bip01_L_Finger3" ), pos.y )	
	end	

end


function CF_MOONSTAR_HEAL ( pKTDXApp, pX2Game, pNPCUnit )
	local pNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_LANOS_FD_BOSS"], 999999 )
	if pNpc ~= nil then	
		local fRemainHPRate = pNpc:GetNowHP() / pNpc:GetMaxHP()
		if fRemainHPRate < 0.3 then
			return true
		else
			return false
		end
	end
end


function MOONSTAR_HEAL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		local pNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_LANOS_FD_BOSS"], 999999 )
		if pNpc ~= nil then	
			local fRemainHPRate = pNpc:GetNowHP() / pNpc:GetMaxHP()
			local iPhase = pNPCUnit:GetInt_LUA ( 0 )
			if iPhase < 10 then
				local fHealHPRate = pNpc:GetMaxHP() * 0.05
				pNpc:SetNowHP_LUA( pNpc:GetNowHP() + fHealHPRate )			
				iPhase = iPhase + 1
				pNPCUnit:SetInt_LUA ( 0, iPhase )
			
			else
				pNPCUnit:SetInt_LUA ( 0, 0 )
				pNPCUnit:StateChange_LUA( "MOONSTAR_HEAL", true )
			end
		end
	end
end


function MOONSTAR_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DARK_ARROW", pNPCUnit:GetBonePos_LUA( "Bip01_L_Finger3" ), pos.y )	
	end	

	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DARK_ARROW", pNPCUnit:GetBonePos_LUA( "Bip01_L_Finger3" ), pos.y )	
	end	

	if pNPCUnit:AnimEventTimer_LUA( 1.7 ) then

		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DARK_ARROW_DOWN", pNPCUnit:GetBonePos_LUA( "Bip01_L_Finger3" ), pos.y )	
	end	

end







