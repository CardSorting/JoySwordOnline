-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
  
-- 드래곤 광폭화 모드
g_bCrazyState = false
g_bInfernoStarted = false
g_fPrevTimeInferno = 0.0
          
          
g_fPrevTimeDashAttack = 0.0
    
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 600.0,
	UNIT_HEIGHT		= 800.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	 "Ancient_Bone_Dragon_Start.ogg",
	 "Ancient_Bone_Dragon_AttackA.ogg",
	 "Ancient_Bone_Dragon_AttackA_1.ogg",
	 "Ancient_Bone_Dragon_AttackA_2.ogg",
	 "Ancient_Bone_Dragon_AttackB.ogg",
	 "Ancient_Bone_Dragon_AttackC_1.ogg",
	 "Ancient_Bone_Dragon_AttackC_2.ogg",
	 "Ancient_Bone_Dragon_AttackC_Flap.ogg",
	 "Ancient_Bone_Dragon_DashAttack_Ready.ogg",
	 "Ancient_Bone_Dragon_DashAttack.ogg",
	 "Ancient_Bone_Dragon_SP_AttackA_Ready.ogg",
	 "Ancient_Bone_Dragon_SP_AttackA.ogg",
	 "Ancient_Bone_Dragon_SP_AttackA_1.ogg",
	 "Ancient_Bone_Dragon_SP_AttackB_Ready.ogg",
	 "Ancient_Bone_Dragon_SP_AttackB.ogg",
	 "Ancient_Bone_Dragon_SP_AttackB_1.ogg",
	 "Ancient_Bone_Dragon_SP_AttackD_Ready.ogg",
	 "Ancient_Bone_Dragon_SP_Attack.ogg",
	 "Ancient_Bone_Dragon_SP_Attack_End.ogg",
	 "Ancient_Bone_Dragon_DamageFront.ogg",
	 "Ancient_Bone_Dragon_Dying.ogg",
	 "Ancient_Bone_Dragon_SP_Attack.ogg",
	 "Ancient_Bone_Dragon_SP_Attack_Fire.ogg",
	 
	 
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_ANCIENT_BONE_DRAGON.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}

INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	HP_RELATIVE_CHANGE_RATE	= 0.0005,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,


	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "Bone_Dragon",
	HEAD_BONE_NAME				= "Bip01_Head",
	--BOSS_NAME_TEX				= "HQ_BOSS_Bone_Dragon.dds",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	-- RAGE_COUNT_MAX	= 30,
	-- RAGE_TIME_MAX	= 1,

	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
	DIE_FLY             = 0,
	
	NOT_CULL			= TRUE,
	
	REFLECT_DAMAGE =
	{
		CONDITION_REFLECT_DAMAGE = 
		{
			MY_HP_LESS_THAN_PERCENT		= 20,
		},
	
		REFLECT_DAMAGE_DATA = 
		{

			DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
			HIT_TYPE		= HIT_TYPE["HT_FIRE"],
			REACT_TYPE		= REACT_TYPE["RT_DUMMY_DAMAGE"],
			
			DAMAGE = 
			{
				MAGIC		= 0.2,
			},
			
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_FIRE"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						6,
					},
				},
			},
		},

			BACK_SPEED_X			= 0.0,

			
			STOP_RESERVE_TIME_ATT	= 0.0,
			STOP_RESERVE_TIME_DEF	= 0.0,
			STOP_TIME_ATT			= 0.0,		
			STOP_TIME_DEF			= 0.0,
			CAMERA_CRASH_GAP		= 10.0,	
			CAMERA_CRASH_TIME		= 1.0,
			CLEAR_SCREEN			= 1,

			RE_ATTACK				= FALSE,		
			HIT_GAP					= 0.08,
			
			FORCE_DOWN				= 0,

			CAN_REFLEX              = FALSE,
			CAN_REVENGE				= FALSE,
		},
	--[[
		HIT_PARTICLE0 = 
		{
			POSITION_TYPE	= DAMAGE_EFFECT_POSITION_TYPE["DEPT_IMPACT_POINT"],
			PARTICLE_NAME	= "FireDamageImpactRed",
			TRIGGER_COUNT	= 10,
		},
		HIT_PARTICLE1 = 
		{
			POSITION_TYPE	= DAMAGE_EFFECT_POSITION_TYPE["DEPT_IMPACT_POINT"],
			PARTICLE_NAME	= "FireDamageImpactRingRed",
			TRIGGER_COUNT	= 1,
		},
		HIT_PARTICLE2 = 
		{
			POSITION_TYPE	= DAMAGE_EFFECT_POSITION_TYPE["DEPT_IMPACT_POINT"],
			PARTICLE_NAME	= "FireDamageImpactCoreRed",
			TRIGGER_COUNT	= 1,
		},
		HIT_PARTICLE3 = 
		{
			POSITION_TYPE	= DAMAGE_EFFECT_POSITION_TYPE["DEPT_IMPACT_POINT"],
			PARTICLE_NAME	= "FireDamageImpactSlashRed",
			TRIGGER_COUNT	= 1,
		},
	--]]	
	},

}

INIT_STATE = 
{
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SLEEP",							},
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_START",							LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_START_FRAME_MOVE",
																		LUA_CAMERA_MOVE_FUNC = "ANCIENT_BONE_DRAGON_START_CAMERA_MOVE",						},
	
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_WAIT",							},
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_WAIT_HABIT",					},

	{ STATE_NAME = "ANCIENT_BONE_DRAGON_ATTACK_A",						LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_ATTACK_A_FRAME_MOVE",	STATE_COOL_TIME	= 11, },
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_ATTACK_B",						LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME	= 11, },
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_ATTACK_C",						LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_ATTACK_C_FRAME_MOVE",	STATE_COOL_TIME	= 15, },		
	
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_ATTACK_C_CHECK",				LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_ATTACK_C_FRAME_MOVE",	STATE_COOL_TIME	= 12, },		
	
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_DASH_ATTACK_READY",				LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_DASH_ATTACK_READY_FRAME_MOVE",	STATE_COOL_TIME	= 11, },
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_DASH_ATTACK",					LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_DASH_ATTACK_FRAME_MOVE" },	

	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY",				LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY_FRAME_MOVE",	STATE_COOL_TIME	= 15,},
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_A",					LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_A_FRAME_MOVE" },	

	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY",				LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY_FRAME_MOVE",	STATE_COOL_TIME	= 11,},
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_B",					LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_B_FRAME_MOVE" },	

	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY",				LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY_FRAME_MOVE",	STATE_COOL_TIME	= 60,},
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_D1",					LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_D1_FRAME_MOVE"},	
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_D2",					LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_D2_FRAME_MOVE"},
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_SP_ATTACK_D_END",				LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_SP_ATTACK_D_END_FRAME_MOVE"},


	--리액션 관련
	{ STATE_NAME = "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",					LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_DAMAGE_FRONT_FRAME_MOVE"	},

	{ STATE_NAME = "ANCIENT_BONE_DRAGON_DYING",							LUA_STATE_START_FUNC = "ANCIENT_BONE_DRAGON_DYING_STATE_START",
																		LUA_FRAME_MOVE_FUNC = "ANCIENT_BONE_DRAGON_DYING_STATE_FRAME_MOVE"},

	START_STATE					= "ANCIENT_BONE_DRAGON_SLEEP",
	WAIT_STATE					= "ANCIENT_BONE_DRAGON_WAIT",
	
	RAGE_STATE					= "ANCIENT_BONE_DRAGON_DASH_ATTACK_READY",
	
	SMALL_DAMAGE_LAND_FRONT		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	FLY_DAMAGE_FRONT			= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR			= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR_LANDING		= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",
	UP_DAMAGE					= "ANCIENT_BONE_DRAGON_DAMAGE_FRONT",

	DYING_LAND_FRONT			= "ANCIENT_BONE_DRAGON_DYING",
	DYING_LAND_BACK				= "ANCIENT_BONE_DRAGON_DYING",
	DYING_SKY					= "ANCIENT_BONE_DRAGON_DYING",
	
	DAMAGE_REVENGE				= "ANCIENT_BONE_DRAGON_WAIT",

	REVENGE_ATTACK				= "",	
	
	
	COMMON_FRAME_FUNC           = "DRAGON_COMMON_FRAMEMOVE",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 4000,		-- cm
		TARGET_LOST_RANGE			= 5000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		DEST_GAP			= 1000,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 1500,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
		
		LINE_END_RANGE		= 80,	-- cm
	},

}



ANCIENT_BONE_DRAGON_SLEEP = 
{
	ANIM_NAME					= "Sleep",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--RIGHT					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	INVINCIBLE					= { 0, 100, }, 

	DISABLE_COLLISION_BOX =
	{
		"Neck1",
		"Neck2",
		"Face1",			
		"Face2",
		"Root",
		"Spine1",
		"Tail1",		
		"Tail2",	
		"Tail3",
	},

	DELETE_EFFECT_SET_ON_STATE_END = TRUE,

	NEVER_MOVE					= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_SLEEP", 0,	
	},

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],      "ANCIENT_BONE_DRAGON_START",            "CF_ANCIENT_BONE_DRAGON_START"    },
	},
}


ANCIENT_BONE_DRAGON_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--RIGHT					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0			= { 0.035, "Ancient_Bone_Dragon_Start.ogg" },

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	DELETE_EFFECT_SET_ON_DIE	= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_WAKEUP", 0,	
	},

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"ANCIENT_BONE_DRAGON_SP_ATTACK_D_END",		"CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D_END"				},
	},
	
	CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D_END = 
	{
		STATE_TIME_OVER			= 8.0,
	},
}


ANCIENT_BONE_DRAGON_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY",	"CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY",	},
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],      "ANCIENT_BONE_DRAGON_ATTACK_C",       "CF_ANCIENT_BONE_DRAGON_ATTACK_C_CHECK"    },
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_DASH_ATTACK_READY",	"CT_ANCIENT_BONE_DRAGON_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY",	"CT_ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY",	"CT_ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY",	},
		


		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_ATTACK_A",			"CT_ANCIENT_BONE_DRAGON_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_ATTACK_B",			"CT_ANCIENT_BONE_DRAGON_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_ATTACK_C",			"CT_ANCIENT_BONE_DRAGON_ATTACK_C",	},

		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_WAIT_HABIT",		"CT_ANCIENT_BONE_DRAGON_WAIT_HABIT",		},
	},
	
	
	CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 100,
	},	
	
	
	CT_ANCIENT_BONE_DRAGON_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		RATE						= 30,
	},
	
	CT_ANCIENT_BONE_DRAGON_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR   = 900,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 30,
	},

	CT_ANCIENT_BONE_DRAGON_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 35,
	},

	CT_ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1600,
		RATE						= 35,
	},
	
	CT_ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR   = 900,
		DISTANCE_TO_TARGET_NEAR		= 2500,
		RATE						= 40,
	},	
	
	CT_ANCIENT_BONE_DRAGON_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 40,
	},	
	
	


	CT_ANCIENT_BONE_DRAGON_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
		
}


ANCIENT_BONE_DRAGON_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",						},
	},
}


ANCIENT_BONE_DRAGON_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashAttack_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0			= { 0.035, "Ancient_Bone_Dragon_DashAttack_Ready.ogg" },

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_BONE_DRAGON_DASH_ATTACK",						},
	},
}



ANCIENT_BONE_DRAGON_DASH_ATTACK = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.106, "Ancient_Bone_Dragon_DashAttack.ogg" },

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

    DISABLE_ATTACK_BOX = 
	{
		"RHand",
		"LHand",
		"RHand01",	
	},

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",									},	
	},
	
	ATTACK_TIME0				= { 0.2, 0.4, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		--ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BACK_SPEED_X			= 3400,
		BACK_SPEED_Y			= 2000,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},

}



ANCIENT_BONE_DRAGON_ATTACK_A =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ANIM_SPEED					= 0.8,

	
    SOUND_PLAY0			= { 0.435, "Ancient_Bone_Dragon_AttackA_1.ogg" },
	SOUND_PLAY1			= { 1.235, "Ancient_Bone_Dragon_AttackA_2.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,	

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
    DISABLE_ATTACK_BOX = 
	{
		"LHand",
        "Face1",
        "Face2",
        "Spine",				
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",					},	
	},
	
	ATTACK_TIME0				= { 1.1, 1.2, },
	ATTACK_TIME1				= { 2.05, 2.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		CAN_REVENGE				= FALSE,	
		
		--ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		--ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
	
		BACK_SPEED_X			= -3000,
		BACK_SPEED_Y			= 1000,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},	
	
	
}


ANCIENT_BONE_DRAGON_ATTACK_B =
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ANIM_SPEED					= 0.8,

	
    SOUND_PLAY0			= { 0.729, "Ancient_Bone_Dragon_AttackB.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
    DISABLE_ATTACK_BOX = 
	{
		"RHand",
		"LHand",
        "Spine",
		"RHand01",
	},	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",					},	
	},
	
	ATTACK_TIME0				= { 1.2, 1.3, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
	
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		CAN_REVENGE				= FALSE,	

		--ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 3000,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,	
	},
	
}


ANCIENT_BONE_DRAGON_ATTACK_C =
{
	ANIM_NAME					= "AttackC",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	ANIM_SPEED					= 0.8,

	
    SOUND_PLAY0			= { 0.059, "Ancient_Bone_Dragon_AttackC_2.ogg" },
	SOUND_PLAY1			= { 2.235, "Ancient_Bone_Dragon_AttackC_1.ogg" },
	SOUND_PLAY2			= { 2.506, "Ancient_Bone_Dragon_AttackC_Flap.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15216,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
    DISABLE_ATTACK_BOX = 
	{
        "Face1",
        "Face2",
	},	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",					},	
	},
	
	ATTACK_TIME0				= { 1.9, 2.1, },
	
	DELETE_EFFECT_SET_ON_CUSTOM_STATE	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_ATTACK_C", 0,	
	},	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		--ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BACK_SPEED_X			= 1800,
		BACK_SPEED_Y			= 1800,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},
	
}


ANCIENT_BONE_DRAGON_ATTACK_C_CHECK =
{
	ANIM_NAME					= "AttackC",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
    SOUND_PLAY0			= { 0.059, "Ancient_Bone_Dragon_AttackC_2.ogg" },
	SOUND_PLAY1			= { 2.235, "Ancient_Bone_Dragon_AttackC_1.ogg" },
	SOUND_PLAY2			= { 2.506, "Ancient_Bone_Dragon_AttackC_Flap.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
    DISABLE_ATTACK_BOX = 
	{
        "Face1",
        "Face2",
	},	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",					},	
	},
	
	ATTACK_TIME0				= { 1.9, 2.1, },
	
	DELETE_EFFECT_SET_ON_CUSTOM_STATE	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_ATTACK_C", 0,	
	},	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		--ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BACK_SPEED_X			= 1800,
		BACK_SPEED_Y			= 1800,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},
	
}




ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY = 
{
	ANIM_NAME					= "SP_AttackA_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0			= { 0.600, "Ancient_Bone_Dragon_SP_AttackA_Ready.ogg" },

    DISABLE_ATTACK_BOX = 
	{
        "Face1",
        "Face2",
	},


	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_BONE_DRAGON_SP_ATTACK_A",						},
	},
	
	ATTACK_TIME0				= { 0.4, 0.6, },
	ATTACK_TIME1				= { 1.2, 1.3, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		--ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 2200,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 2200,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},		
}

ANCIENT_BONE_DRAGON_SP_ATTACK_A = 
{
	ANIM_NAME					= "SP_AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.035, "Ancient_Bone_Dragon_SP_AttackA.ogg" },
--    SOUND_PLAY1			= { 0.635, "Ancient_Bone_Dragon_SP_AttackA_1.ogg" },

	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_SP_ATTACK_A", 0,	
	},

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",									},	
	},

}

ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY = 
{
	ANIM_NAME					= "SP_AttackB_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,

	SOUND_PLAY0			= { 0.035, "Ancient_Bone_Dragon_SP_AttackB_Ready.ogg" },
	

	 
	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY", 0,	
	},

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_BONE_DRAGON_SP_ATTACK_B",						},
	},
}



ANCIENT_BONE_DRAGON_SP_ATTACK_B = 
{
	ANIM_NAME					= "SP_AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 1.075, "Ancient_Bone_Dragon_SP_AttackB.ogg" },
	
	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,

	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

	--EVENT_INTERVAL_TIME0		= 1,

	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_SP_ATTACK_B", 0,	
	},


	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"ANCIENT_BONE_DRAGON_ATTACK_C",	"CT_ANCIENT_BONE_DRAGON_ATTACK_C",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_WAIT",									},	
	},
	
	
	CT_ANCIENT_BONE_DRAGON_ATTACK_C = 
	{
		ANIM_PLAY_COUNT				= 1,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 70,
	},
	
}



ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY = 
{
	ANIM_NAME					= "SP_AttackD_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	NEVER_MOVE					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0			= { 0.459, "Ancient_Bone_Dragon_SP_AttackD_Ready.ogg" },

	CUSTOM_STATE_DELETE_EFFECT_SET	= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15215,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_BONE_DRAGON_SP_ATTACK_D1",		"CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D1"	},	
	},
	
	CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D1 = 
	{
		STATE_TIME_OVER			= 2.6,
	},	
}



ANCIENT_BONE_DRAGON_SP_ATTACK_D1 = 
{
	ANIM_NAME					= "SP_AttackD1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	ANIM_SPEED			= 0.5,

    SOUND_PLAY0			= { 1.000, "Ancient_Bone_Dragon_SP_Attack.ogg" },
	
	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	NEVER_MOVE					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_SP_ATTACK_D1", 0,	
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_BONE_DRAGON_SP_ATTACK_D2",		"CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D2"	},	
	},
	
	CT_ANCIENT_BONE_DRAGON_SP_ATTACK_D2 = 
	{
		STATE_TIME_OVER			= 5.8,
	},
}


ANCIENT_BONE_DRAGON_SP_ATTACK_D2 = 
{
	ANIM_NAME					= "SP_AttackD2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	ANIM_SPEED			= 0.5,

    SOUND_PLAY0			= { 1.000, "Ancient_Bone_Dragon_SP_Attack.ogg" },

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EFFECT_SET_LIST =
	{
		"EffectSet_ANCIENT_BONE_DRAGON_SP_ATTACK_D2", 0,	
	},


	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_BONE_DRAGON_SP_ATTACK_D_END",									},	
	},

}



ANCIENT_BONE_DRAGON_SP_ATTACK_D_END = 
{
	ANIM_NAME					= "SP_AttackD_End",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SUPER_ARMOR					= TRUE,
	--SUPER_ARMOR_NOT_RED         = TRUE,	
	NEVER_MOVE					= TRUE,

	SOUND_PLAY0			= { 0.365, "Ancient_Bone_Dragon_SP_Attack_End.ogg" },
	
	--INVINCIBLE					= { 0, 100, }, 		

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_BONE_DRAGON_WAIT",						},
	},
}




ANCIENT_BONE_DRAGON_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	NEVER_MOVE					= TRUE,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= FALSE,
	
	SOUND_PLAY0			= { 0.059, "Ancient_Bone_Dragon_DamageFront.ogg" },
		
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_BONE_DRAGON_WAIT",												},
	},
}


ANCIENT_BONE_DRAGON_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

    SOUND_PLAY0			= { 0.129, "Ancient_Bone_Dragon_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
--------------------------------------------------------------------
--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetBonePos_LUA("Bip01_Spine1")	
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, 0, 0 ), D3DXVECTOR2( 0,0 ) )
	
	

--[[
	if pNPCUnit:GetNowAnimationTime() < 1.0 then 
	
		pos = pNPCUnit:GetBonePos_LUA( "Effect03" )	
		camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 3000, -340, 20 ), D3DXVECTOR3( 500, 0, 0.1 ) )
	end

	if pNPCUnit:GetNowAnimationTime() < 2.0 then 
		
		pos = pNPCUnit:GetBonePos_LUA( "Effect02" )	
		camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 2400, -40, 20 ), D3DXVECTOR3( 500, 0, 0.1 ) )
	end

	if pNPCUnit:GetNowAnimationTime() < 3.0 then 
		
		pos = pNPCUnit:GetBonePos_LUA( "Effect01" )	
		camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, 0, 0 ), D3DXVECTOR3( 500, 0, 0.5 ) )

	end
--]]	
end



function ANCIENT_BONE_DRAGON_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end


function ANCIENT_BONE_DRAGON_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    --pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.6,0.0,0.0,0.1) )



    if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then    
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 25.0, 1.8 )
    end               

    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 3.8 )
    end
    
    
    if pNPCUnit:AnimEventTimer_LUA( 4.4 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.5 )
        
        EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 1000
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 2000
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		
    
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 5.0 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.4 )
        
        EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 1000
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 2000
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		
  
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 5.7 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
        
        EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 1000
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 2000
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		
  
    end    
 
	----- CAMERA 
    
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
        
        rotCamera = -40
        heightCamera = 2500
        distanceCamera = 4000

		pos = pNPCUnit:GetBonePos_LUA("Bip01")	
    
		pos.x = 0
		pos.y = 400
		pos.z = 0

		velo_y_1 = 5
		velo_rot = 0.22
	
    end        
    
    if pNPCUnit:GetNowAnimationTime() < 0.01 then 
		g_fPrevTimeDashAttack = pX2Game:GetGameTime()

    
    --[[
    elseif pNPCUnit:GetNowAnimTime_LUA() <= 1.0 then   
	    pNPCUnit:SetFocusCamera(true)     
	    pos = pNPCUnit:GetBonePos_LUA("Bip01")	
    	

	    pos.x = pos.x - 2400
	    pos.y = pos.y + 200
        pos.z = pos.z + 1000

		velo_rot = velo_rot + 0.005

	    rotCamera = rotCamera + velo_rot 	    
	    heightCamera = heightCamera - 5 
	    distanceCamera = distanceCamera - 4

   	    camera = pX2Game:GetX2Camera()	
    	    camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( distanceCamera, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )


	--]]
    elseif pNPCUnit:GetNowAnimTime_LUA() <= 3.5 then   

	    rotCamera = rotCamera + velo_rot  	    
	    heightCamera = heightCamera - 6 
	    distanceCamera = distanceCamera - 4

   	    camera = pX2Game:GetX2Camera()	
    	    camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( distanceCamera, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )

    elseif pNPCUnit:GetNowAnimTime_LUA() <= 4.5 then 
    
		velo_rot = velo_rot - 0.003
    
	    rotCamera = rotCamera + velo_rot	    
	    heightCamera = heightCamera - 3 
	    distanceCamera = distanceCamera - 1

   	    camera = pX2Game:GetX2Camera()	
    	    camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( distanceCamera, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )

    
    elseif pNPCUnit:GetNowAnimTime_LUA() <= 5.9 then        

	    velo_y_1 = velo_y_1 + 0.1

	    pos.y = pos.y + velo_y_1

	    rotCamera = rotCamera + 0	    
	    heightCamera = heightCamera - velo_y_1 - 5
	    distanceCamera = distanceCamera - 2.5

   	    camera = pX2Game:GetX2Camera()	
    	    camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( distanceCamera, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )
    
    elseif pNPCUnit:GetNowAnimTime_LUA() <= 6.3 then        

	    velo_y_1 = velo_y_1 - 0.2

	    pos.y = pos.y + velo_y_1

	    rotCamera = rotCamera + 0	    
	    heightCamera = heightCamera - velo_y_1 - 5
	    distanceCamera = distanceCamera - 2.5

   	    camera = pX2Game:GetX2Camera()	
    	    camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( distanceCamera, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )
    
    end    
    
    
    
    
    --- 지면 불길 처음 생성
    
    if pNPCUnit:AnimEventTimer_LUA( 4.0 ) then
        
        g_bInfernoStarted = true
        g_fPrevTimeInferno = pX2Game:GetGameTime()
        
        EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.y = EffectPos.y - 200

        pDamageEffect = pX2Game:GetDamageEffect()
        
        if pDamageEffect ~= nil then
	        pDamageEffect:CreateInstance_LUA( pNPCUnit, "ANCIENT_BONE_DRAGON_INFERNO", EffectPos, EffectPos.y )
        end	      

        EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        EffectPos.x = EffectPos.x - 3700
        EffectPos.y = EffectPos.y - 200

         if pDamageEffect ~= nil then
	        pDamageEffect:CreateInstance_LUA( pNPCUnit, "ANCIENT_BONE_DRAGON_INFERNO", EffectPos, EffectPos.y )
        end
    
		local vSummonPos1 = pX2Game:GetLineMap():GetStartPosition( 2 )
		local vSummonPos2 = pX2Game:GetLineMap():GetStartPosition( 3 )
		local vSummonPos3 = pX2Game:GetLineMap():GetStartPosition( 4 )
		local vSummonPos4 = pX2Game:GetLineMap():GetStartPosition( 5 )

		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_STEAM_GEYSER"], pNPCUnit:GetHardLevel(), false, vSummonPos1, false, 0.3, true  )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_STEAM_GEYSER"], pNPCUnit:GetHardLevel(), false, vSummonPos2, false, 0.3, true  )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_STEAM_GEYSER"], pNPCUnit:GetHardLevel(), false, vSummonPos3, false, 0.3, true  )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_STEAM_GEYSER"], pNPCUnit:GetHardLevel(), false, vSummonPos4, false, 0.3, true  )

    end
    
    
    
    
end






function ANCIENT_BONE_DRAGON_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


	EffectPos = pNPCUnit:GetPos()
	EffectPos.y = EffectPos.y + 100
	pMajorParticle = pX2Game:GetMajorParticle()
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ANCIENT_BONE_DRAGON_Dying", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )

	
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	

	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )

	-- 광폭화 파티클 끄기

	pParticle0 = pNPCUnit:GetMajorParticle_LUA( 0 ) 	
	pMajorParticle = pX2Game:GetMajorParticle()
	
	if pParticle0 ~= nil then
		
		pMajorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMajorParticle_LUA( 0 )
		
	end
	
	-- 지면 불길 데미지 이펙트 끄기
	
	g_bInfernoStarted = false


end

function ANCIENT_BONE_DRAGON_DYING_STATE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 4.0 )
        
        --pNPCUnit:SetReflectDamageOnPhysicalDamage_LUA(true)
        
    end

    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 3.2 )
    end
end



--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


    if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.4 )
    end            

	if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	
    if pNPCUnit:AnimEventTimer_LUA( 2.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.6 )
    end            	
	
end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


    if pNPCUnit:AnimEventTimer_LUA( 0.56 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.4 )
    end            

    if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.8 )
    end            



end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 1.5 )
        
        --pNPCUnit:SetReflectDamageOnPhysicalDamage_LUA(true)
        
    end            

    if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.4 )
    end 
end


--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_DASH_ATTACK_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.4 )
    end               

    if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.4 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 1.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.4 )
    end               
end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then 
		g_fPrevTimeDashAttack = pX2Game:GetGameTime()
	end	



    if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 0.8 )
    end     

end


--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_A_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


    if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.3 )
    end               

    if pNPCUnit:AnimEventTimer_LUA( 1.05 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
    end               


	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end

end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.6 )
    end
    
end


--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_B_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.4 )
    end

end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.4 )
    end

end



--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_D_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.6 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
  
    end


    if pNPCUnit:AnimEventTimer_LUA( 1.4 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
          
    end


    if pNPCUnit:AnimEventTimer_LUA( 2.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.4 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
          
        
    end


    if pNPCUnit:AnimEventTimer_LUA( 2.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
          
        
    end
    
end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_D1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_D2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

--------------------------------------------------------------------
function ANCIENT_BONE_DRAGON_SP_ATTACK_D_END_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.4 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
          
    end



    if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.5 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
          
    end



    if pNPCUnit:AnimEventTimer_LUA( 1.7 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.6 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
          
    end



    if pNPCUnit:AnimEventTimer_LUA( 2.4 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 60.0, 0.8 )
        
		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z + 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
 
 		EffectPos = pNPCUnit:GetPos()
        EffectPos.z = EffectPos.z - 150
        pMajorParticle = pX2Game:GetMajorParticle()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Summon_Boss_JumpLanding01", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		        
        
    end
    
    
end

function CF_ANCIENT_BONE_DRAGON_ATTACK_C_CHECK( pKTDXApp, pX2Game, pNPCUnit )


	fCurrentTimeDashAttack = pX2Game:GetGameTime()

	fAttackCCheckCoolTime = fCurrentTimeDashAttack - g_fPrevTimeDashAttack

	if fAttackCCheckCoolTime < 10.0 then
		return false
	end

	for i=0, 3 do
		pUser = pX2Game:GetUserUnit(i)  
		if pUser ~= nil then
			UserPos = pUser:GetPos()
			DragonPos = pNPCUnit:GetPos()
	
			if pX2Game:GetDist_LUA( UserPos, DragonPos ) > 2100 then
				return true
			end

		end
	end
	
	return false
end



	

function CF_ANCIENT_BONE_DRAGON_START( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetFlag_LUA(0) == true then
		return true
	end

	return false
end


function DRAGON_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )


    if g_bInfernoStarted == true then
        
	fCurrTimeInferno = pX2Game:GetGameTime()
        
        fElapsedTimeInferno = fCurrTimeInferno - g_fPrevTimeInferno
        
        if fElapsedTimeInferno >= 4.3 then
        
			g_fPrevTimeInferno = fCurrTimeInferno
        
			EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
			EffectPos.y = EffectPos.y - 200

			pDamageEffect = pX2Game:GetDamageEffect()
        
			if pDamageEffect ~= nil then
				pDamageEffect:CreateInstance_LUA( pNPCUnit, "ANCIENT_BONE_DRAGON_INFERNO", EffectPos, EffectPos.y )
			end	      

			pDamageEffect = pX2Game:GetDamageEffect()

			EffectPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
			EffectPos.x = EffectPos.x - 3700
			EffectPos.y = EffectPos.y - 200

			if pDamageEffect ~= nil then
				pDamageEffect:CreateInstance_LUA( pNPCUnit, "ANCIENT_BONE_DRAGON_INFERNO", EffectPos, EffectPos.y )
			end
		end
    	end


	
	hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100   
	if hp <= 20 then
	
		EffectPos = pNPCUnit:GetBonePos_LUA("Bip01_Root")
		pMajorParticle = pX2Game:GetMajorParticle()

		if g_bCrazyState == false then 
		
			pParticle0 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ANCIENT_BONE_DRAGON_Crazy", EffectPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
			if pParticle0 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 0, pParticle0:GetHandle() ) 
				pParticle0:SetPosition( EffectPos )
			end
			
			g_bCrazyState = true
			
		end
		
		--- Trace
		pParticle0 = pNPCUnit:GetMajorParticle_LUA( 0 ) 	

		if pParticle0 ~= nil then
			pParticle0:SetPosition(EffectPos)
		end			
	end

end

