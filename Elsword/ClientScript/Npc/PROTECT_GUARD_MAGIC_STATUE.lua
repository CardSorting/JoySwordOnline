-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 400.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.8,
}
-------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"star2.dds",
		"Arme_Damage_Ring.dds",
		"Arme_Damage_Center.dds",
		"Arme_Critical.dds",
		"Particle_Blur.dds",
		"CenterLight_Gray01.dds",
		"ColorBallFire.dds",
	},
	READY_XMESH =
	{
	},
	READY_XSKIN_MESH =
	{
		"LUNATIC_FURY_Broken.X",
		"LUNATIC_FURY_FireWave.X",
		"LUNATIC_FURY_FireWave02.X",
	},
	READY_SOUND = 
	{
	},
}
-------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_PROTECT_GUARD_MAGIC_STATUE.x",
}
-------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	WALK_SPEED			= 400,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}
-------------------------------------------------------------------------
INIT_COMPONENT = 
{
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
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	DIE_FLY				= 0,
}
-------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "PROTECT_GUARD_MAGIC_STATUE_START",						},
	{ STATE_NAME = "PROTECT_GUARD_MAGIC_STATUE_WAIT",							},

	
	{ STATE_NAME = "PROTECT_GUARD_MAGIC_STATUE_ATTACK_A",	},
	
	-- 죽음
	{ STATE_NAME = "PROTECT_GUARD_MAGIC_STATUE_DYING",					},
	

	START_STATE					= "PROTECT_GUARD_MAGIC_STATUE_START",
	WAIT_STATE					= "PROTECT_GUARD_MAGIC_STATUE_WAIT",

	DYING_LAND_FRONT			= "PROTECT_GUARD_MAGIC_STATUE_DYING",
	DYING_LAND_BACK				= "PROTECT_GUARD_MAGIC_STATUE_DYING",
	DYING_SKY					= "PROTECT_GUARD_MAGIC_STATUE_DYING",
}
-------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 1960,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 20, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

-------------------------------------------------------------------------START
PROTECT_GUARD_MAGIC_STATUE_START =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	RIGHT						= TRUE,
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PROTECT_GUARD_MAGIC_STATUE_WAIT",	},
	},	
}
-------------------------------------------------------------------------WAIT
PROTECT_GUARD_MAGIC_STATUE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	INVINCIBLE					= { 0, 100, },
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PROTECT_GUARD_MAGIC_STATUE_ATTACK_A",			"CT_PROTECT_GUARD_MAGIC_STATUE_ATTACK_A",	}, 
	},
	
	CT_PROTECT_GUARD_MAGIC_STATUE_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1950,
		RATE						= 100,
	},	
}
-------------------------------------------------------------------------ATTACK_A
PROTECT_GUARD_MAGIC_STATUE_ATTACK_A =
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	INVINCIBLE					= { 0, 100, },
	
	SOUND_PLAY0			= { 1.749, "Amethyst_Slash.ogg", 100, FALSE, -1, FALSE  },
	SOUND_PLAY1			= { 2.0, "Spriggan_Big_AttackCombo1.ogg", 100, FALSE, -1, FALSE  },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PROTECT_GUARD_MAGIC_STATUE_WAIT",	},
	},
	
	EFFECT_SET_LIST_EX =
	{
		{ "EffectSet_PROTECT_GUARD_MAGIC_STATUE_Attack", 0, DELETE_CONDITION_EFFECT_SET["DCES_DIE"],	},
	},
}
-------------------------------------------------------------------------DYING
PROTECT_GUARD_MAGIC_STATUE_DYING =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}