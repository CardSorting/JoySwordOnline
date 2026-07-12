-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

MANA_ABSORBED_FLAG = 0
RUNAWAY_READY_FLAG = 1

RUNAWAY_TIME_AFTER_ABSORB = 10.0		-- 흡수 성공 후 공격 모션이 끝난 후부터 이 시간이 지나고 나면 도주를 시도한다.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Explosion_Sphere.dds",
		"AeroTornado04.dds",
		"Particle_Blur.dds",		
	},
	
	READY_SOUND = 
	{
	
	    "Mana_Eater_MagicAttack.ogg",   --
		"Mana_Eater_Run.ogg",
	    "Mana_Eater_RunAwayReady.ogg",  --
		"Mana_Eater_RunAway.ogg",       --
		"Mana_Eater_Damage.ogg",        --
		"Mana_Eater_Dying.ogg",
		"Mana_Eater_Jump.ogg",          -- 
		
		
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_MANA_EATER.x",
	MOTION_CHANGE_TEX_XET		= "Motion_Deffence_MANA_EATER.xet",
	MOTION_ANI_TEX_XET			= "Motion_Deffence_MANA_EATER.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 820,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 4000,
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
	
	
	HEAD_BONE_NAME			= "Bip01_c",
	
	
 	RAGE_COUNT_MAX		= 0,
	RAGE_TIME_MAX		= 10,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
}

INIT_STATE = 
{
	{ STATE_NAME = "MANA_EATER_WAIT",						},
	{ STATE_NAME = "MANA_EATER_WALK",						},
	{ STATE_NAME = "MANA_EATER_JUMP_UP",					},
	{ STATE_NAME = "MANA_EATER_JUMP_DOWN",				LUA_STATE_END_FUNC = "MANA_EATER_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "MANA_EATER_JUMP_UP_DIR",				},
	{ STATE_NAME = "MANA_EATER_JUMP_DOWN_DIR",			LUA_STATE_END_FUNC = "MANA_EATER_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "MANA_EATER_JUMP_LANDING",				},
	
	{ STATE_NAME = "MANA_EATER_MAGIC_ATTACK",			STATE_COOL_TIME	 = 3},
	
	{ STATE_NAME = "MANA_EATER_WAIT_CHARGE",				LUA_STATE_START_FUNC = "MANA_EATER_WAIT_CHARGE_STATE_START",
															LUA_FRAME_MOVE_FUNC = "MANA_EATER_WAIT_CHARGE_FRAME_MOVE",	},
	{ STATE_NAME = "MANA_EATER_RUN",						LUA_FRAME_MOVE_FUNC = "MANA_EATER_RUN_FRAME_MOVE",	},
	
	{ STATE_NAME = "MANA_EATER_RUN_JUMP_UP",					},
	{ STATE_NAME = "MANA_EATER_RUN_JUMP_DOWN",						LUA_STATE_END_FUNC = "MANA_EATER_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "MANA_EATER_RUN_JUMP_UP_DIR",				},
	{ STATE_NAME = "MANA_EATER_RUN_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "MANA_EATER_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "MANA_EATER_RUN_JUMP_LANDING",				},
	
	{ STATE_NAME = "MANA_EATER_RUNAWAY_READY",				LUA_STATE_START_FUNC = "MANA_EATER_RUNAWAY_READY_STATE_START", },
	{ STATE_NAME = "MANA_EATER_RUNAWAY_END",				LUA_STATE_START_FUNC = "MANA_EATER_RUNAWAY_END_STATE_START",	},	
	
	
	--리액션 관련
	{ STATE_NAME = "MANA_EATER_DAMAGE_FRONT",					LUA_FRAME_MOVE_FUNC = "MANA_EATER_DAMAGE_FRAME_MOVE"					},
	{ STATE_NAME = "MANA_EATER_DAMAGE_BACK",					LUA_FRAME_MOVE_FUNC = "MANA_EATER_DAMAGE_FRAME_MOVE"					},
	{ STATE_NAME = "MANA_EATER_DAMAGE_DOWN_FRONT",		LUA_FRAME_MOVE_FUNC = "MANA_EATER_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "MANA_EATER_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "MANA_EATER_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "MANA_EATER_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "MANA_EATER_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "MANA_EATER_DAMAGE_AIR_SMALL",				},
	--{ STATE_NAME = "MANA_EATER_DAMAGE_AIR_BIG",				},
	{ STATE_NAME = "MANA_EATER_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "MANA_EATER_DAMAGE_AIR_UP",			},
	{ STATE_NAME = "MANA_EATER_DAMAGE_AIR_FALL",			},	
	{ STATE_NAME = "MANA_EATER_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "MANA_EATER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "MANA_EATER_STAND_UP_FRONT",			},
	{ STATE_NAME = "MANA_EATER_STAND_UP_BACK",			},
	
	{ STATE_NAME = "MANA_EATER_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "MANA_EATER_DYING_LAND_STATE_START", },
	{ STATE_NAME = "MANA_EATER_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "MANA_EATER_DYING_LAND_STATE_START", },
	{ STATE_NAME = "MANA_EATER_DYING_SKY",				LUA_STATE_START_FUNC = "MANA_EATER_DYING_LAND_STATE_START", },
	
	START_STATE					= "MANA_EATER_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "MANA_EATER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "MANA_EATER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "MANA_EATER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "MANA_EATER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "MANA_EATER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "MANA_EATER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "MANA_EATER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "MANA_EATER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "MANA_EATER_DAMAGE_AIR_SMALL",	
	BIG_DAMAGE_AIR				= "MANA_EATER_DAMAGE_AIR_SMALL",
	DOWN_DAMAGE_AIR				= "MANA_EATER_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "MANA_EATER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "MANA_EATER_DAMAGE_AIR_UP",
	
	DAMAGE_EXTRA_STATES         = {"MANA_EATER_DAMAGE_AIR_FALL","MANA_EATER_STAND_UP_FRONT","MANA_EATER_STAND_UP_BACK",
	"MANA_EATER_JUMP_DOWN","MANA_EATER_JUMP_LANDING",},	
	WAIT_STATES = {"MANA_EATER_WAIT",},	
	
	DYING_LAND_FRONT			= "MANA_EATER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "MANA_EATER_DYING_LAND_BACK",
	DYING_SKY					= "MANA_EATER_DYING_SKY",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.5,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 15000,		-- cm
		TARGET_LOST_RANGE			= 20000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 100,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 600,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 510,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 15,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 6,
		--ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 300,	-- cm
		ESCAPE_GAP			= 1800,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 5,	-- 초
		NEAR_WALK_RATE		= 100,   --  80,
		FAR_WALK_RATE		= 100,   -- 40,
		
		JUMP_INTERVAL		= 3,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	-- 마나를 흡수했으면 무조건 도망, 아니면 도망 안가게
	ESCAPE_CONDITION = 
	{
		FLAG_TRUE			= MANA_ABSORBED_FLAG,		-- 마나 흡수했을 때만 도망간다
		RATE				= 100,
		MY_HP				= 100,		-- %, 전체 HP에 대해 현재 HP의 비율
		ESCAPE_RANGE		= 1600,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망		
	}
		
}


MANA_EATER_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_MAGIC_ATTACK",						"CT_MANA_EATER_MAGIC_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MANA_EATER_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MANA_EATER_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MANA_EATER_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MANA_EATER_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MANA_EATER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MANA_EATER_JUMP_DOWN_DIR",				},
	},
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		FLAG_TRUE			= MANA_ABSORBED_FLAG,
	},
	
	CT_MANA_EATER_MAGIC_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,
	},
	
	
}


MANA_EATER_WALK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_MAGIC_ATTACK",						"CT_MANA_EATER_MAGIC_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MANA_EATER_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MANA_EATER_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MANA_EATER_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MANA_EATER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MANA_EATER_JUMP_DOWN_DIR",				},
	},
	
	CT_MANA_EATER_MAGIC_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700, 
	},

	
}

MANA_EATER_JUMP_UP = 
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

    SOUND_PLAY0			= { 0.002, "Mana_Eater_Jump.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MANA_EATER_JUMP_DOWN",				},
	},
	
}

MANA_EATER_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANA_EATER_JUMP_LANDING",				},
	},
}

MANA_EATER_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MANA_EATER_JUMP_DOWN_DIR",				},
	},
}

MANA_EATER_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANA_EATER_JUMP_LANDING",				},
	},
}

MANA_EATER_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANA_EATER_WAIT",					},
	},
}

MANA_EATER_MAGIC_ATTACK = 
{
	ANIM_NAME					= "MagicAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.307, "Mana_Eater_MagicAttack.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
    	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0			= { 0.3, 0.5 },
	INVINCIBLE			= { 0.29, 9999 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_FIRE"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
						
		EXTRA_DAMAGE = 
		{
			EXTRA_DAMAGE_TYPE	= EXTRA_DAMAGE_TYPE["EDT_MANA_DAMAGE"],
			DAMAGE				= 400,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,		
		
		CAN_REVENGE				= FALSE,
		
	},
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.30, "Ring_ManaEater_MagicAttack01", FALSE, "Bip01_c", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANA_EATER_WAIT",					},
	},
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		ATTACK_SUCCESS		= TRUE,
		ANIM_PLAY_COUNT		= 1,
	},
}

MANA_EATER_WAIT_CHARGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	--EVENT_INTERVAL_TIME0		= 0.5,
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_RUN_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_RUNAWAY_READY",				"CT_MANA_EATER_RUNAWAY_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_RUN",						"CT_MANA_EATER_RUN",	},
				
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MANA_EATER_RUN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MANA_EATER_RUN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MANA_EATER_RUN_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MANA_EATER_RUN_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MANA_EATER_RUN_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MANA_EATER_RUN_JUMP_DOWN_DIR",				},
	},
	
	CT_MANA_EATER_RUN =
	{
		HAVE_TARGET			= TRUE,
	},
	
	CT_MANA_EATER_RUNAWAY_READY =
	{
		FLAG_TRUE		= RUNAWAY_READY_FLAG,
	},
	
}

MANA_EATER_RUN =
{
	ANIM_NAME					= "Run",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


    SOUND_PLAY0			= { 0.001, "Mana_Eater_Run.ogg" },
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},
		
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_RUN_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_RUNAWAY_READY",				"CT_MANA_EATER_RUNAWAY_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_RUN_JUMP_UP_DIR",				"CT_MANA_EATER_RUN_JUMP_UP_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MANA_EATER_RUN",						},		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MANA_EATER_WAIT_CHARGE",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MANA_EATER_RUN_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MANA_EATER_RUN_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MANA_EATER_RUN_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MANA_EATER_RUN_JUMP_DOWN_DIR",				},
	},
	
		
	CT_MANA_EATER_RUNAWAY_READY =
	{
		FLAG_TRUE		= RUNAWAY_READY_FLAG,
	},
	
	CT_MANA_EATER_RUN_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE				= 10,		
	}
}

MANA_EATER_RUN_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.002, "Mana_Eater_Jump.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MANA_EATER_RUN_JUMP_DOWN",				},
	},
	
}

MANA_EATER_RUN_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANA_EATER_RUN_JUMP_LANDING",				},
	},
}

MANA_EATER_RUN_JUMP_UP_DIR = 
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
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MANA_EATER_RUN_JUMP_DOWN_DIR",				},
	},
}

MANA_EATER_RUN_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANA_EATER_RUN_JUMP_LANDING",				},
	},
}

MANA_EATER_RUN_JUMP_LANDING = 
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

	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 25, 0, 0, FALSE, },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_RUN_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANA_EATER_WAIT_CHARGE",					},
	},
}
	
MANA_EATER_RUNAWAY_READY =
{
	ANIM_NAME					= "RunAwayReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    SOUND_PLAY0			= { 0.772, "Mana_Eater_RunAwayReady.ogg" },
    SOUND_PLAY1			= { 0.779, "Mana_Eater_RunAway.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	INVINCIBLE			= { 0.67, 99999 },
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 0, 0, 0, FALSE, },
		{ FALSE, 0.01, "LightParticle_Manaeater_Wait_Charge01", FALSE, "Bip01_c", TRUE, TRUE, 0, 0, 0, FALSE, },
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MANA_EATER_RUN_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MANA_EATER_RUNAWAY_END",						},
	},
	
	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_2644 },
	},
	
}


MANA_EATER_RUNAWAY_END =
{
	SHOW						= FALSE,
	
	ANIM_NAME					= "Run",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	ESCAPE_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

}

MANA_EATER_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.110, "Mana_Eater_Damage.ogg" },
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_2568 },
		{ RATE = 8, MESSAGE = STR_ID_1715 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],						"MANA_EATER_WAIT",						},
	},
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		ANIM_PLAY_COUNT		= 1,
		FLAG_TRUE			= MANA_ABSORBED_FLAG,
	},
}

MANA_EATER_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.110, "Mana_Eater_Damage.ogg" },
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_2568 },
		{ RATE = 8, MESSAGE = STR_ID_1715 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],						"MANA_EATER_WAIT",						},
	},
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		ANIM_PLAY_COUNT		= 1,
		FLAG_TRUE			= MANA_ABSORBED_FLAG,
	},
}


MANA_EATER_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1756 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MANA_EATER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MANA_EATER_STAND_UP_FRONT",			},
	},

}

MANA_EATER_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1756 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MANA_EATER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MANA_EATER_STAND_UP_BACK",			},
	},
}


MANA_EATER_DAMAGE_AIR_SMALL = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MANA_EATER_WAIT",					},
	},
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		ANIM_PLAY_COUNT		= 1,
		FLAG_TRUE			= MANA_ABSORBED_FLAG,
	},
}


MANA_EATER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MANA_EATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

MANA_EATER_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MANA_EATER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANA_EATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
 	},

}

MANA_EATER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"MANA_EATER_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANA_EATER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

MANA_EATER_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANA_EATER_STAND_UP_FRONT",			},
	},
	
}

MANA_EATER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MANA_EATER_DAMAGE_DOWN_FRONT",		},
	},
}

MANA_EATER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"MANA_EATER_DAMAGE_DOWN_BACK",		},
	},
}


MANA_EATER_STAND_UP_FRONT = 
{
	ANIM_NAME					= "StandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100,50, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANA_EATER_WAIT",				},
	},
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		ANIM_PLAY_COUNT		= 1,
		FLAG_TRUE			= MANA_ABSORBED_FLAG,
	},
}

MANA_EATER_STAND_UP_BACK = 
{
	ANIM_NAME					= "StandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANA_EATER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANA_EATER_WAIT_CHARGE",				"CT_MANA_EATER_WAIT_CHARGE",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANA_EATER_WAIT",			},
	},	
	
	CT_MANA_EATER_WAIT_CHARGE =
	{
		ANIM_PLAY_COUNT		= 1,
		FLAG_TRUE			= MANA_ABSORBED_FLAG,
	},	
}

MANA_EATER_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.278, "Mana_Eater_Dying.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
MANA_EATER_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.002, "Mana_Eater_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

MANA_EATER_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------

function MANA_EATER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function MANA_EATER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function MANA_EATER_WAIT_CHARGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if false == pNPCUnit:GetFlag_LUA(MANA_ABSORBED_FLAG) then
		pNPCUnit:SetFlag_LUA(MANA_ABSORBED_FLAG, true)
		InitRunAwayTimer( pKTDXApp, pX2Game, pNPCUnit )					-- 도망 타이머를 준비한다
		pNPCUnit:SetBonusDrop(true)										-- 마나구슬을 떨굴 준비를 한다 (.. )
	end
end

function MANA_EATER_WAIT_CHARGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	Runaway_Timer_Process(pKTDXApp, pX2Game, pNPCUnit)	
end

function MANA_EATER_RUN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	Runaway_Timer_Process(pKTDXApp, pX2Game, pNPCUnit)
	

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		if pNPCUnit:GetDirPos_LUA(pNPCUnit:GetNearestUserPos()) == 0 then
			pNPCUnit:SetIsRight(true)
		else
			pNPCUnit:SetIsRight(false)
		end
	end


	
end

function MANA_EATER_RUNAWAY_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetIsRight(false)
end


function MANA_EATER_DAMAGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function MANA_EATER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function MANA_EATER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function MANA_EATER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.51 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end


function MANA_EATER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

function MANA_EATER_RUNAWAY_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--pNPCUnit:SetNowHP_LUA( 0 )
end

------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------


function InitRunAwayTimer( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetFlag_LUA(RUNAWAY_READY_FLAG, false)  
        
    local vec = pNPCUnit:GetPos()
    vec.x = pX2Game:GetGameTime()   	-- 마나를 흡수하는데 성공한 시간을 담아 둔다
    vec.y = 0.0
    vec.z = 0.0
    pNPCUnit:SetVector_LUA(0, vec )
	
end

function Runaway_Timer_Process(pKTDXApp, pX2Game, pNPCUnit)
    
	if pNPCUnit:GetFlag_LUA(RUNAWAY_READY_FLAG) then
		return
	end
	    
    if pNPCUnit:GetFlag_LUA(MANA_ABSORBED_FLAG) then
        -- 마나는 이미 흡수했고 이제 도망갈 차례
		local vec = pNPCUnit:GetVector_LUA(0)
		local PreTime = vec.x
		local CurrTime = pX2Game:GetGameTime()   
        local ElapsedTime = CurrTime - PreTime
		if ElapsedTime >= RUNAWAY_TIME_AFTER_ABSORB then
			-- 도망갈 시간이 되었다
			pNPCUnit:SetFlag_LUA(RUNAWAY_READY_FLAG, true)
		end
	end
            
end
