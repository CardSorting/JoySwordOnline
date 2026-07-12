-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- KjTiger / 2010/12/31 / 기존의 코카트리글 + 대쉬 어택, 라이더 기능 제거

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Coacktrigle_AttackA_jump1.ogg",
		"Coacktrigle_AttackA_Jump2.ogg",
		"CoacktrigleVoice_Damage.ogg",
		"CoacktrigleVoice_DamageDown.ogg",
		"CoacktrigleVoice_Dying.ogg",
		"Coacktrigle_DyingFall.ogg",
		"Coacktrigle_MagicAttackA.ogg",
		"Coacktrigle_JumpLanding.ogg",
		"Coacktriglevoice_AttackA.ogg",
		"Coacktrigle_Walk.ogg",
		"Ancient_Coackatrigle_Voice_AttackA01.ogg",
		"Ancient_Coackatrigle_AttackA01.ogg",
	},

	READY_XMESH = 
	{
		"Lightning03.Y",
	},
	
	READY_XSKIN_MESH = 
	{
		"Coackatrigle_MagicAttackA_Mesh01.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_ANCIENT_COACKATRIGLE.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 600,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
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
	
	DAMAGE_DOWN         = FALSE,
		
	DIE_FLY             = 0,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "COACKATRIGLE_START",				},
	{ STATE_NAME = "COACKATRIGLE_WAIT",					},
	
	--리액션 관련
	{ STATE_NAME = "COACKATRIGLE_WALK",					},
	{ STATE_NAME = "COACKATRIGLE_PASS_WALK",			},	
	{ STATE_NAME = "COACKATRIGLE_JUMP_UP",				},
	{ STATE_NAME = "COACKATRIGLE_JUMP_DOWN",			},
	{ STATE_NAME = "COACKATRIGLE_JUMP_UP_DIR",			},
	{ STATE_NAME = "COACKATRIGLE_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "COACKATRIGLE_JUMP_LANDING",			}, 
	{ STATE_NAME = "COACKATRIGLE_MAGIC_ATTACK_A_READY",	STATE_COOL_TIME = 8,	},
	{ STATE_NAME = "COACKATRIGLE_MAGIC_ATTACK_A",		LUA_FRAME_MOVE_FUNC = "COACKATRIGLE_MAGIC_ATTACK_A_FRAME_MOVE", LUA_STATE_END_FUNC = "COACKATRIGLE_MAGIC_ATTACK_A_STATE_END",	},
	{ STATE_NAME = "COACKATRIGLE_ATTACK_A",				},
	-- 대쉬 어택(실제로 대쉬 후 공격하는 것은 아님, 전진 공격과 같음)
	{ STATE_NAME = "COACKATRIGLE_DASH_ATTACK",			STATE_COOL_TIME = 5,	},
	
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_FRONT",				},	
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_BACK",				},	
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_DOWN",				LUA_FRAME_MOVE_FUNC = "COACKATRIGLE_DAMAGE_DOWN_FRAME_MOVE"	},
	--{ STATE_NAME = "COACKATRIGLE_DAMAGE_FLY_FRONT",			},
	--{ STATE_NAME = "COACKATRIGLE_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_AIR",				},
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_AIR_UP",			LUA_STATE_START_FUNC = "COACKATRIGLE_DAMAGE_AIR_UP_STATE_START", },
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_AIR_FALL",			},	
	{ STATE_NAME = "COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "COACKATRIGLE_STAND_UP",					},

	{ STATE_NAME = "COACKATRIGLE_DYING",					LUA_STATE_START_FUNC = "COACKATRIGLE_DYING_STATE_START", },
	
	START_STATE					= "COACKATRIGLE_START",
	WAIT_STATE					= "COACKATRIGLE_WAIT",

	SMALL_DAMAGE_LAND_FRONT		= "COACKATRIGLE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "COACKATRIGLE_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "COACKATRIGLE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "COACKATRIGLE_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "COACKATRIGLE_DAMAGE_DOWN",
	DOWN_DAMAGE_LAND_BACK		= "COACKATRIGLE_DAMAGE_DOWN",
	FLY_DAMAGE_FRONT			= "COACKATRIGLE_DAMAGE_AIR_UP",
	FLY_DAMAGE_BACK				= "COACKATRIGLE_DAMAGE_AIR_UP",
	SMALL_DAMAGE_AIR			= "COACKATRIGLE_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "COACKATRIGLE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "COACKATRIGLE_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING		= "COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "COACKATRIGLE_DAMAGE_AIR_UP",
	
	DAMAGE_EXTRA_STATES         = {"COACKATRIGLE_DAMAGE_AIR_FALL","COACKATRIGLE_STAND_UP","COACKATRIGLE_JUMP_DOWN","COACKATRIGLE_JUMP_LANDING",},
	
	
	DYING_LAND_FRONT			= "COACKATRIGLE_DYING",
	DYING_LAND_BACK				= "COACKATRIGLE_DYING",
	DYING_SKY					= "COACKATRIGLE_DYING",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,	-- sec
		TARGET_NEAR_RANGE			= 350,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 700,	-- cm
		TARGET_LOST_RANGE			= 800,	-- cm
		TARGET_SUCCESS_RATE			= 100,	-- 40,		-- %
		ATTACK_TARGET_RATE			= 100,	-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100,	-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률	
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 600,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,	-- 70,
		FAR_WALK_RATE		= 100,	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100,	-- 80,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,	-- 20,
		DOWN_DOWN_RATE		= 80,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,	--50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,  --  10,
		FAR_WALK_RATE		= 100,  -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	--  30,
		DOWN_DOWN_RATE		= 30,
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_START = 
{
	ANIM_NAME		= "WaitStart",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"COACKATRIGLE_WAIT",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_WAIT = 
{
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	

	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_ATTACK_A",				"CT_COACKATRIGLE_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_MAGIC_ATTACK_A_READY",	"CT_COACKATRIGLE_MAGIC_ATTACK_A_READY",	},
				
		-- 대쉬 어택
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_DASH_ATTACK",		"CT_COACKATRIGLE_DASH_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"COACKATRIGLE_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"COACKATRIGLE_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"COACKATRIGLE_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"COACKATRIGLE_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"COACKATRIGLE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"COACKATRIGLE_JUMP_DOWN_DIR",	},
	},

	CT_COACKATRIGLE_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 60,
	},

	CT_COACKATRIGLE_MAGIC_ATTACK_A_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 100,
	},
	
	CT_COACKATRIGLE_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 80,
	}
}
--------------------------------------------------------------------------
COACKATRIGLE_WALK = 
{
	ANIM_NAME		= "Walk",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0		= { 0.001, "Coacktrigle_Walk.ogg", 20 },
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_ATTACK_A",				"CT_COACKATRIGLE_ATTACK_A",				},
		
		-- 대쉬 어택
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_DASH_ATTACK",		"CT_COACKATRIGLE_DASH_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"COACKATRIGLE_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"COACKATRIGLE_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"COACKATRIGLE_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"COACKATRIGLE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"COACKATRIGLE_JUMP_DOWN_DIR",				},
		
	},
	
	CT_COACKATRIGLE_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET			= TRUE,
		RATE						= 70,
	},
	
	CT_COACKATRIGLE_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 80,
	}
}
--------------------------------------------------------------------------
COACKATRIGLE_PASS_WALK = 
{
	ANIM_NAME		= "Walk",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	SOUND_PLAY0		= { 0.001, "Coacktrigle_Walk.ogg", 20 },
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_ATTACK_A",				"CT_COACKATRIGLE_ATTACK_A",	},
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_MAGIC_ATTACK_A_READY",	"CT_COACKATRIGLE_MAGIC_ATTACK_A_READY",	},
		
		-- 대쉬 어택
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"COACKATRIGLE_DASH_ATTACK",		"CT_COACKATRIGLE_DASH_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"COACKATRIGLE_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"COACKATRIGLE_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"COACKATRIGLE_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"COACKATRIGLE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"COACKATRIGLE_JUMP_DOWN_DIR",	},
	},
	
	CT_COACKATRIGLE_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET			= TRUE,
		RATE						= 70,
	},
	CT_COACKATRIGLE_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 80,
	}
}
--------------------------------------------------------------------------
COACKATRIGLE_ATTACK_A = 
{
	ANIM_NAME		= "AttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,

	ANIM_SPEED		= 1.2,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0		= { 0.01, "Ancient_Coacktrigle_Voice_AttackA01.ogg", 30 },
	SOUND_PLAY1		= { 0.43, "Ancient_Coacktrigle_AttackA01.ogg" },
	
	SPEED_X			= 200,
	SPEED_Y			= 0,	

	VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_WAIT",		},	
	},

	ATTACK_TIME0				= { 0.45, 0.75, },
			
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X	= 0,
		BACK_SPEED_Y	= 0,

        CAN_REVENGE				= TRUE,

		RE_ATTACK		= TRUE,		
		HIT_GAP			= 0.12,	
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_MAGIC_ATTACK_A_READY = 
{
	ANIM_NAME		= "MagicAttackAReady",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SUPER_ARMOR		= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_MAGIC_ATTACK_A",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_MAGIC_ATTACK_A = 
{
	ANIM_NAME		= "MagicAttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SUPER_ARMOR		= TRUE,

	SPEED_X			= 0,
	SPEED_Y			= 0,	

   	SOUND_PLAY0		= { 0.001, "Coacktrigle_MagicAttackA.ogg" },

	VIEW_TARGET				= FALSE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1473 },
		{ RATE = 10, MESSAGE = STR_ID_1474 },
	},
	
	EFFECT_SET_LIST =
	{
		"Ancient_Coackatrigle_Magic_Attack_A", 0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END 	= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_WAIT",		},	
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DASH_ATTACK = 
{
	ANIM_NAME		= "DashAttack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,

	ANIM_SPEED		= 1.0,
	
	-- INVINCIBLE      = { 0, 3.33, },
	SUPER_ARMOR		= TRUE,
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	--SOUND_PLAY0		= { 0.371, "Coacktriglevoice_AttackA.ogg", 50 },
	--SOUND_PLAY1		= { 0.400, "Coacktrigle_AttackA_jump1.ogg" },
	--SOUND_PLAY2		= { 1.459, "Coacktrigle_AttackA_jump2.ogg" },
	
	SPEED_X			= 0,
	SPEED_Y			= 0,	

	VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_WAIT",		},	
	},

	ATTACK_TIME0				= { 0.4, 2.5, },
				
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		FORCE_FLY		= TRUE,
		
		BACK_SPEED_X	= 1000,
		BACK_SPEED_Y	= 1200,

        CAN_REVENGE				= TRUE,

		RE_ATTACK		= TRUE,		
		HIT_GAP			= 0.500,
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_FRONT =
{
	ANIM_NAME		= "DamageFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0		= { 0.001, "CoacktrigleVoice_Damage.ogg", 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"COACKATRIGLE_WAIT",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_BACK =
{
	ANIM_NAME		= "DamageBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0		= { 0.001, "CoacktrigleVoice_Damage.ogg", 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"COACKATRIGLE_WAIT",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_JUMP_UP = 
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X			= 0,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y		= 45,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"COACKATRIGLE_JUMP_DOWN",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_JUMP_DOWN = 
{
	ANIM_NAME		= "JumpDwon",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
			
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"COACKATRIGLE_JUMP_LANDING",				},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_JUMP_UP_DIR = 
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y		= 45,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"COACKATRIGLE_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_JUMP_DOWN_DIR = 
{
	ANIM_NAME			= "JumpDwon",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= TRUE,
	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT		= FALSE,
		
	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"COACKATRIGLE_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_JUMP_LANDING = 
{
	ANIM_NAME		= "JumpLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0		= { 0.050, "Coacktrigle_JumpLanding.ogg" },
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_WAIT",		},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_DOWN = 
{
	ANIM_NAME		= "DamageDown",
		
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 70, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    --SOUND_PLAY0	= { 0.1, "LizardHigh_Scream.ogg" , 50 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_STAND_UP",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_AIR = 
{
	ANIM_NAME		= "DamageAir",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"COACKATRIGLE_WAIT",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME		= "DamageAirDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_AIR_UP = 
{
	ANIM_NAME		= "DamageAirUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"COACKATRIGLE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_AIR_FALL = 
{
	ANIM_NAME		= "DamageAirFall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"COACKATRIGLE_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME		= "DamageAirDownLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 70, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_STAND_UP",		},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_STAND_UP = 
{
	ANIM_NAME		= "DamageStandUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,	
	
	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 70, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"COACKATRIGLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"COACKATRIGLE_WAIT",		},
	},
}
--------------------------------------------------------------------------
COACKATRIGLE_DYING = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	SOUND_PLAY0		= { 0.346, "CoacktrigleVoice_Dying.ogg" },
	SOUND_PLAY1		= { 0.718, "Coacktrigle_DyingFall.ogg" },
	
	DYING_END		= TRUE,
	DYING_SPEED		= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------
function COACKATRIGLE_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function COACKATRIGLE_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function COACKATRIGLE_MAGIC_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function COACKATRIGLE_DAMAGE_AIR_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function COACKATRIGLE_DAMAGE_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function COACKATRIGLE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
end