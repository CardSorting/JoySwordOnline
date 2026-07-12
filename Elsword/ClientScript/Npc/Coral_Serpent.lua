-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 1050.0,
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
	"Coral_Serpent_AttackA01.ogg",
	"Coral_Serpent_AttackA02.ogg",
	"Coral_Serpent_AttackB01.ogg",
	"Coral_Serpent_AttackB02.ogg",
	"Coral_Serpent_Habit01.ogg",
	"Coral_Serpent_MagicAttackA01.ogg",
	"Coral_Serpent_SpecialAttackA01.ogg",
	"Coral_Serpent_SpecialAttackB02.ogg",
	"Coral_Serpent_SpecialAttackC01.ogg",
	"Coral_Serpent_SpecialAttackC02.ogg",
	"Coral_Serpent_Voice_Growl01.ogg",
	"Coral_Serpent_Voice_Win01.ogg",
	"Habit_Underwater01.ogg",
	"Habit_Underwater02.ogg",
	"Habit_Underwater03.ogg",
	"Habit_Underwater04.ogg",
	"Swing_Underwater01.ogg",
	"Swing_Underwater02.ogg",
	"Swing_Underwater03.ogg",
	"Swing_Underwater04.ogg",
	"Swing_Underwater05.ogg",
	"Swing_Underwater06.ogg",
	"Coral_Serpent_SpecialAttackA02.ogg",
	"Coral_Serpent_SpecialAttackB01.ogg",
	"Coral_Serpent_SpecialAttackB03.ogg",
	"Coral_Serpent_Dying01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_CORAL_SERPENT.x",
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
	--자동으로 HP 회복 주석 처리
	--HP_RELATIVE_CHANGE_RATE	= 0.0003,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	
    BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "NUI_CORAL_SERPENT",
	HEAD_BONE_NAME				= "Bip01_Head",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_CORAL_SERPENT.dds",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	RAGE_COUNT_MAX	= 30,
	RAGE_TIME_MAX	= 1,

	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
	DIE_FLY             = 0,
	
	NOT_CULL			= TRUE,

}

INIT_STATE = 
{
	{ STATE_NAME = "CORAL_SERPENT_START",							LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_START_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_START_STATE_START", 
																	},
																
	
	{ STATE_NAME = "CORAL_SERPENT_APPEAR",							LUA_STATE_START_FUNC	= "CORAL_SERPENT_APPEAR_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_APPEAR_STATE_END", },	
	
	{ STATE_NAME = "CORAL_SERPENT_DISAPPEAR",						LUA_STATE_START_FUNC	= "CORAL_SERPENT_DISAPPEAR_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_DISAPPEAR_STATE_END", STATE_COOL_TIME	= 20,},
	
	{ STATE_NAME = "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B",		LUA_STATE_START_FUNC	= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B_STATE_END", STATE_COOL_TIME	= 80,},		
	
	{ STATE_NAME = "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA",		LUA_STATE_START_FUNC	= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA_STATE_END", STATE_COOL_TIME	= 20,},
																	
																	
	{ STATE_NAME = "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB",		LUA_STATE_START_FUNC	= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB_STATE_START",
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB_STATE_END", STATE_COOL_TIME	= 35,},																		
	
	{ STATE_NAME = "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D",		LUA_STATE_START_FUNC	= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D_STATE_END", STATE_COOL_TIME	= 80,},	
	
	
	{ STATE_NAME = "CORAL_SERPENT_WAIT",							LUA_STATE_START_FUNC	= "CORAL_SERPENT_WAIT_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_WAIT_STATE_END", },
	
	{ STATE_NAME = "CORAL_SERPENT_WAIT_HABIT",						},

	{ STATE_NAME = "CORAL_SERPENT_ATTACK_A",						LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_ATTACK_A_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_ATTACK_A_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_ATTACK_A_STATE_END",		STATE_COOL_TIME	= 3, },
																	
	{ STATE_NAME = "CORAL_SERPENT_ATTACK_B",						LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_ATTACK_B_FRAME_MOVE",																		
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_ATTACK_B_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_ATTACK_B_STATE_END",		STATE_COOL_TIME	= 5, },
																	
	{ STATE_NAME = "CORAL_SERPENT_ATTACK_C",						LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_ATTACK_C_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_ATTACK_C_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_ATTACK_C_STATE_END",		STATE_COOL_TIME	= 3, },		

	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_A",						LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_A_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_A_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_A_STATE_END",	STATE_COOL_TIME	= 15, },
																	
	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_B",						LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_B_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_B_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_B_STATE_END",	},
																	
	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_CA",					LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_CA_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_CA_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_CA_STATE_END",	},
																	
	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_CB",					LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_CB_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_CB_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_CB_STATE_END",	},
																	
	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_D",						LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_D_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_STATE_END",	},

	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_D_STUN",				LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_STUN_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_D_STUN_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_STUN_STATE_END",	},


	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR",			LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR_STATE_END",	},

	{ STATE_NAME = "CORAL_SERPENT_SP_ATTACK_D_DYING",				--LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_DYING_FRAME_MOVE",
																	LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_DYING_STATE_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_SP_ATTACK_D_DYING_STATE_START", },
																	--LUA_STATE_END_FUNC		= "CORAL_SERPENT_SP_ATTACK_D_DYING_STATE_END",	},


	--리액션 관련
	{ STATE_NAME = "CORAL_SERPENT_DAMAGE_FRONT",					LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_DAMAGE_FRONT_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "CORAL_SERPENT_DAMAGE_FRONT_STATE_START", 
																	LUA_STATE_END_FUNC		= "CORAL_SERPENT_DAMAGE_FRONT_STATE_END", },

	{ STATE_NAME = "CORAL_SERPENT_DYING",							LUA_STATE_START_FUNC	= "CORAL_SERPENT_DYING_STATE_START",
																	LUA_FRAME_MOVE_FUNC		= "CORAL_SERPENT_DYING_STATE_FRAME_MOVE"},

	START_STATE					= "CORAL_SERPENT_START",
	WAIT_STATE					= "CORAL_SERPENT_WAIT",
	
	RAGE_STATE					= "CORAL_SERPENT_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "CORAL_SERPENT_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CORAL_SERPENT_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "CORAL_SERPENT_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CORAL_SERPENT_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "CORAL_SERPENT_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CORAL_SERPENT_DAMAGE_FRONT",
	FLY_DAMAGE_FRONT			= "CORAL_SERPENT_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "CORAL_SERPENT_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR			= "CORAL_SERPENT_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "CORAL_SERPENT_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "CORAL_SERPENT_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR_LANDING		= "CORAL_SERPENT_DAMAGE_FRONT",
	UP_DAMAGE					= "CORAL_SERPENT_DAMAGE_FRONT",

	DYING_LAND_FRONT			= "CORAL_SERPENT_DYING",
	DYING_LAND_BACK				= "CORAL_SERPENT_DYING",
	DYING_SKY					= "CORAL_SERPENT_DYING",
	
	DAMAGE_REVENGE				= "CORAL_SERPENT_WAIT",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "CORAL_SERPENT_COMMON_FRAMEMOVE",	
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



CORAL_SERPENT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.5,
	
	--RIGHT					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	INVINCIBLE					= { 0, 100, }, 		

	--NEVER_MOVE					= TRUE,

	SOUND_PLAY0					= { 0.01 , "Habit_Underwater02.ogg" },
	SOUND_PLAY1					= { 1.00 , "Habit_Underwater03.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"CORAL_SERPENT_WAIT",		},
	},
}


CORAL_SERPENT_APPEAR = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	INVINCIBLE					= { 0, 100, }, 		
	
	SOUND_PLAY0					= { 0.01 , "Habit_Underwater02.ogg" },
	SOUND_PLAY1					= { 1.00 , "Habit_Underwater03.ogg" },

	--NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"CORAL_SERPENT_WAIT",		},
	},
}

CORAL_SERPENT_DISAPPEAR = 
{
	ANIM_NAME					= "Stop_RunAway",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	SOUND_PLAY0					= { 1.00 , "Habit_Underwater01.ogg" },
	
	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_APPEAR",		"CT_CORAL_SERPENT_APPEAR"	},	
	},
	
	-- Stop_RunAway 애니메이션 종료시간 == 1.500
	CT_CORAL_SERPENT_APPEAR = 
	{
		STATE_TIME_OVER			= 3.500,
	},	
}

CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B = 
{
	ANIM_NAME					= "Stop_RunAway",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0					= { 1.00 , "Habit_Underwater05.ogg" },
	
	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_SP_ATTACK_B",		"CT_CORAL_SERPENT_SP_ATTACK_B"	},	
	},
	
	-- Stop_RunAway 애니메이션 종료시간 == 1.500
	CT_CORAL_SERPENT_SP_ATTACK_B = 
	{
		STATE_TIME_OVER			= 3.500,
	},	
}

CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA = 
{
	ANIM_NAME					= "Stop_RunAway",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0					= { 1.00 , "Habit_Underwater04.ogg" },

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_SP_ATTACK_CA",		"CT_CORAL_SERPENT_SP_ATTACK_CA"	},	
	},
	
	-- Stop_RunAway 애니메이션 종료시간 == 1.500
	CT_CORAL_SERPENT_SP_ATTACK_CA = 
	{
		STATE_TIME_OVER			= 3.500,
	},	
}

CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB = 
{
	ANIM_NAME					= "Stop_RunAway",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0					= { 1.00 , "Habit_Underwater03.ogg" },

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_SP_ATTACK_CB",		"CT_CORAL_SERPENT_SP_ATTACK_CB"	},	
	},
	
	-- Stop_RunAway 애니메이션 종료시간 == 1.500
	CT_CORAL_SERPENT_SP_ATTACK_CB = 
	{
		STATE_TIME_OVER			= 3.500,
	},	
}


CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D = 
{
	ANIM_NAME					= "Stop_RunAway",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0					= { 1.00 , "Habit_Underwater02.ogg" },

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_SP_ATTACK_D",		"CT_CORAL_SERPENT_SP_ATTACK_D"	},	
	},
	
	-- Stop_RunAway 애니메이션 종료시간 == 1.500
	CT_CORAL_SERPENT_SP_ATTACK_D = 
	{
		STATE_TIME_OVER			= 3.500,
	},		
}


CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR = 
{
	ANIM_NAME					= "Move_RunAway",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,
	
	SOUND_PLAY0					= { 1.00 , "Habit_Underwater01.ogg" },

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_APPEAR",		"CT_CORAL_SERPENT_APPEAR"	},	
	},
	
	-- SpecialAttackC_A 애니메이션 종료시간 == 2.550
	CT_CORAL_SERPENT_APPEAR = 
	{
		STATE_TIME_OVER			= 4.550,
	},	
}


CORAL_SERPENT_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,		
	
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D",	"CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D",	},	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B",	"CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B",	},	
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_SP_ATTACK_A",		"CT_CORAL_SERPENT_SP_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_ATTACK_C",			"CT_CORAL_SERPENT_ATTACK_C",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_ATTACK_B",			"CT_CORAL_SERPENT_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_ATTACK_A",			"CT_CORAL_SERPENT_ATTACK_A",	},


		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CORAL_SERPENT_WAIT_HABIT",			"CT_CORAL_SERPENT_WAIT_HABIT",		},
		
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_DISAPPEAR",					"CT_CORAL_SERPENT_DISAPPEAR",				},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA",	"CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB",	"CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB",	},		

	},
	
	CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 20,
	},
	
	CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 30,
	},	
	CT_CORAL_SERPENT_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE						= 30,
		HAVE_TARGET					= 0,		-- false
	},	
	CT_CORAL_SERPENT_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 3000,
		RATE						= 50,
	},
	CT_CORAL_SERPENT_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 50,
	},
	
	CT_CORAL_SERPENT_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 50,
	},
	CT_CORAL_SERPENT_SP_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 3000,
		RATE						= 50,
	},		
	CT_CORAL_SERPENT_DISAPPEAR = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 50,
	},
	
	CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 50,
	},
	
	CT_CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 100,
	},	
	
		
}


CORAL_SERPENT_WAIT_HABIT = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORAL_SERPENT_WAIT",						},
	},
}


CORAL_SERPENT_ATTACK_A =
{
	ANIM_SPEED					= 0.75,
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
    SOUND_PLAY0					= { 0.10, "Coral_Serpent_AttackA01.ogg" },
	SOUND_PLAY1					= { 1.10, "Coral_Serpent_AttackA02.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	
	NEVER_MOVE					= TRUE,	

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORAL_SERPENT_WAIT",					},	
	},
	
	ATTACK_TIME0				= { 1.1, 1.2, },
	ATTACK_TIME1				= { 1.40, 1.6, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		CAN_REVENGE				= FALSE,	
		
		ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 600,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		CAN_REVENGE				= FALSE,	
		
		ARRANGED_FLY		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
	
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 1200,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,		
	},	
	
	
}


CORAL_SERPENT_ATTACK_B =
{
	ANIM_SPEED					= 0.75,
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
    SOUND_PLAY0					= { 0.10, "Coral_Serpent_AttackB02.ogg" },
    SOUND_PLAY1					= { 1.70, "Coral_Serpent_AttackB01.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	
	NEVER_MOVE					= TRUE,

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORAL_SERPENT_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Coral_Serpent_Attack_B", 0,	
	},		
	
	ATTACK_TIME0				= { 1.6, 1.7, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
	
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
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
						2,
					},
				},
			},
		},
		

		CAN_REVENGE				= FALSE,	

		--ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 300,
		BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.4,	
	},
	
}


CORAL_SERPENT_ATTACK_C =
{
	ANIM_NAME					= "MagicAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	ANIM_SPEED					= 0.8,

	
    SOUND_PLAY0			= { 0.01, "Coral_Serpent_MagicAttackA01.ogg" },


	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORAL_SERPENT_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Coral_Serpent_Attack_C", 0,	
	},	
	
}



CORAL_SERPENT_SP_ATTACK_A = 
{
	ANIM_NAME					= "SpecialAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= FALSE,

	-- INVINCIBLE					= { 0 , 100, },
	-- 2000/08/23 lenoas : 코랄 서펀트 측면 브레스 수압을 모을 때 때릴 수 있도록 난이도 하향. 대신 방어력이 강해집니다.
	DEFENCE						= { 0, 100, 50, }, 
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	
	NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 4.10, "Coral_Serpent_SpecialAttackA01.ogg" },
	SOUND_PLAY1					= { 0.45, "Coral_Serpent_SpecialAttackA02.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Coral_Serpent_Sp_Attack_A", 0,	
	},		
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15184,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CORAL_SERPENT_WAIT",						},
	},
}

CORAL_SERPENT_SP_ATTACK_B = 
{
	ANIM_NAME					= "SpecialAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,

	SOUND_PLAY0					= { 0.10, "Coral_Serpent_SpecialAttackB02.ogg" },
	SOUND_PLAY1					= { 2.50, "Coral_Serpent_SpecialAttackB01.ogg" },
	SOUND_PLAY2					= { 7.00, "Coral_Serpent_SpecialAttackB03.ogg" },
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15185,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	 
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_APPEAR",		"CT_CORAL_SERPENT_APPEAR"	},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Coral_Serpent_Sp_Attack_B", 0,	
	},		
		
	
	-- SpecialAttackC_A 애니메이션 종료시간 == 13.980
	CT_CORAL_SERPENT_APPEAR = 
	{
		STATE_TIME_OVER			= 15.980,
	},	
}

CORAL_SERPENT_SP_ATTACK_CA = 
{
	ANIM_NAME					= "SpecialAttackC_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= FALSE,
	
	--NEVER_MOVE					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	ATTACK_TIME0				= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 0.2, "Coral_Serpent_SpecialAttackC01.ogg" },

	CUSTOM_STATE_DELETE_EFFECT_SET	= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_APPEAR",		"CT_CORAL_SERPENT_APPEAR"	},	
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},


		CAN_REVENGE				= FALSE,	

		--ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 40.0,	
		CAMERA_CRASH_TIME		= 0.4,	
	},		
	
	-- SpecialAttackC_A 애니메이션 종료시간 == 1.530
	CT_CORAL_SERPENT_APPEAR = 
	{
		STATE_TIME_OVER			= 3.530,
	},	
}

CORAL_SERPENT_SP_ATTACK_CB = 
{
	ANIM_NAME					= "SpecialAttackC_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= FALSE,

	
	--NEVER_MOVE					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	ATTACK_TIME0				= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 0.20, "Coral_Serpent_SpecialAttackC02.ogg" },

	CUSTOM_STATE_DELETE_EFFECT_SET	= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_APPEAR",		"CT_CORAL_SERPENT_APPEAR"	},	
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},


		CAN_REVENGE				= FALSE,	

		--ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 40.0,	
		CAMERA_CRASH_TIME		= 0.4,	
	},	
	
	-- SpecialAttackC_B 애니메이션 종료시간 == 2.220
	CT_CORAL_SERPENT_APPEAR = 
	{
		STATE_TIME_OVER			= 4.220,
	},	
}


CORAL_SERPENT_SP_ATTACK_D = 
{
	ANIM_NAME					= 0.7,
	ANIM_NAME					= "SpecialAttackD",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	--NEVER_MOVE					= TRUE,

	ATTACK_TIME0				= { 2.0, 2.5, },

	INVINCIBLE					= { 0, 3.5, }, 		

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 0.4, "Coral_Serpent_Habit01.ogg" },
	SOUND_PLAY1					= { 2.5, "Coral_Serpent_AttackB01.ogg" },


	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORAL_SERPENT_SP_ATTACK_D_STUN",	},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Coral_Serpent_Attack_D", 0,	
	},			

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 10.0,
		},


		CAN_REVENGE				= FALSE,	

		--ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 1800,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 40.0,	
		CAMERA_CRASH_TIME		= 0.4,	
	},

		
}



CORAL_SERPENT_SP_ATTACK_D_STUN = 
{
	ANIM_NAME					= 1.0,
	ANIM_NAME					= "SpecialAttackD_Stun",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= FALSE,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,	
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR",		"CT_CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR"	},	
	},
	
	CT_CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR = 
	{
		STATE_TIME_OVER				= 6.24,
	},	
}

CORAL_SERPENT_DAMAGE_FRONT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	NEVER_MOVE					= TRUE,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORAL_SERPENT_WAIT",	},
	},
}


CORAL_SERPENT_DYING = 
{
	ANIM_NAME					= "Stop_Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= {0.01 , "Coral_Serpent_Dying01.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
	
CORAL_SERPENT_SP_ATTACK_D_DYING = 
{
	ANIM_NAME					= "Move_Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= {0.01 , "Coral_Serpent_Dying01.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
	


	
	
	
--------------------------------------------------------------------
--------------------------------------------------------------------

function CORAL_SERPENT_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function CORAL_SERPENT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetApplyMotionOffset(false)

	pNPCUnit:SetVector_LUA( 0,  D3DXVECTOR3( 5210+500, 1652, -17 ) )	-- 우측 3층
	pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( 2382-500, 1053, -17 ) )	-- 좌측 2층
	pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( 5210+500, 452,	 -17 ) )	-- 우측 1층
	pNPCUnit:SetVector_LUA( 3,  D3DXVECTOR3( 5210, 452, -17 ) )		-- 센터	

	local StartPosIndex = 2
	local bRight		= false
	local iKeyCode = pNPCUnit:GetKeyCode()

	if iKeyCode == 1 then
		StartPosIndex	= 2
		bRight			= false
		pNPCUnit:SetFlag_LUA(1, true)
	elseif iKeyCode == 2 then
		StartPosIndex	= 1
		bRight			= true
		pNPCUnit:SetFlag_LUA(2, true)
	elseif iKeyCode == 3 then
		StartPosIndex	= 0
		bRight			= false
		pNPCUnit:SetFlag_LUA(3, true)
	end
	
	if pX2Game:IsHost() == true then
	
		local vStartPos = pNPCUnit:GetVector_LUA( StartPosIndex )
		pNPCUnit:SetPosition( vStartPos , bRight )
	end	

	
end


---------------------------------------------------------------------
function CORAL_SERPENT_APPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	-- 0 은 Wait 상태에서 죽는 경우
	pNPCUnit:SetInt_LUA(0, 0)
	
    if pX2Game:IsHost() == true then
		
		local StartPosIndex = pNPCUnit:GetRandVal() % 3

		local vStartPos = pNPCUnit:GetVector_LUA( StartPosIndex )


		local bRight = true
		if		StartPosIndex == 0 then
			bRight = false
		elseif	StartPosIndex == 1 then
			bRight = true
		elseif	StartPosIndex == 2 then
			bRight = false
		end
		pNPCUnit:SetPosition( vStartPos , bRight )
		
	end
end

function CORAL_SERPENT_APPEAR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end

---------------------------------------------------------------------
function CORAL_SERPENT_DISAPPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function CORAL_SERPENT_DISAPPEAR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


---------------------------------------------------------------------
function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_B_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


---------------------------------------------------------------------
function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CA_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end

---------------------------------------------------------------------
function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_CB_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


---------------------------------------------------------------------
function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_DISAPPEAR_FOR_SP_ATTACK_D_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


---------------------------------------------------------------------
function CORAL_SERPENT_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------
function CORAL_SERPENT_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end

function CORAL_SERPENT_DAMAGE_FRONT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_DAMAGE_FRONT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function CORAL_SERPENT_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


    if pNPCUnit:AnimEventTimer_LUA( 1.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.4 )
    end

	if pNPCUnit:AnimEventTimer_LUA( 1.3 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	
    if pNPCUnit:AnimEventTimer_LUA( 1.4 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.6 )
    end            	
	
end

function CORAL_SERPENT_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function CORAL_SERPENT_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pMajorParticle = pX2Game:GetMajorParticle()

	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil and pMajorParticle ~= nil then
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			local vHeadBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
			vHeadBonePos.y = vHeadBonePos.y + 350
			vHeadBonePos.x = vHeadBonePos.x - 150
			pParticle:SetPosition( vHeadBonePos )
		end
	end

    if pNPCUnit:AnimEventTimer_LUA( 1.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.8 )
    end
    
    
    if pNPCUnit:AnimEventTimer_LUA( 1.8 ) then
        local vHeadBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
        vHeadBonePos.y = vHeadBonePos.y + 350
        vHeadBonePos.x = vHeadBonePos.x - 150
        
        if pMajorParticle ~= nil then
			-- 그로기상태 - 스턴 파티클로 표시
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UnitStunB", vHeadBonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		end
		
		if pParticle ~= nil then
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		end	
    end 
    
    if pNPCUnit:AnimEventTimer_LUA( 5.8 ) then
		local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
		if pParticle ~= nil then
			pMajorParticle:DestroyInstance( pParticle )
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end
    end     
end

function CORAL_SERPENT_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_ATTACK_B_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function CORAL_SERPENT_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


end

function CORAL_SERPENT_ATTACK_C_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_ATTACK_C_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_SP_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_SP_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
end

function CORAL_SERPENT_SP_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:IsHost() == true then
		
		local CenterPosIndex = 3
		
		local vCenterPos = pNPCUnit:GetVector_LUA( CenterPosIndex )

		pNPCUnit:SetPosition( vCenterPos , true )
	end
end

function CORAL_SERPENT_SP_ATTACK_B_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_CA_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 4.0 )
    end
end

function CORAL_SERPENT_SP_ATTACK_CA_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:IsHost() == true then
		
		local StartPosIndex = pNPCUnit:GetRandVal() % 3

		local vStartPos = pNPCUnit:GetVector_LUA( StartPosIndex )

		local bRight = true
		if		StartPosIndex == 0 then
			bRight = false
		elseif	StartPosIndex == 1 then
			bRight = true
		elseif	StartPosIndex == 2 then
			bRight = false
		end
		pNPCUnit:SetPosition( vStartPos , bRight )
		
	end
	
end

function CORAL_SERPENT_SP_ATTACK_CA_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end




--------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_CB_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 4.0 )
    end
end

function CORAL_SERPENT_SP_ATTACK_CB_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:IsHost() == true then
		
		local StartPosIndex = pNPCUnit:GetRandVal() % 2

		local vStartPos = pNPCUnit:GetVector_LUA( StartPosIndex )

		local bRight = true
		if		StartPosIndex == 0 then
			bRight = false
		elseif	StartPosIndex == 1 then
			bRight = true
		end
		pNPCUnit:SetPosition( vStartPos , bRight )
	end

end

function CORAL_SERPENT_SP_ATTACK_CB_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_D_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pMajorParticle = pX2Game:GetMajorParticle()

	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil and pMajorParticle ~= nil then
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			local vHeadBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
			vHeadBonePos.y = vHeadBonePos.y + 250
			pParticle:SetPosition( vHeadBonePos )
		end
	end

    if pNPCUnit:AnimEventTimer_LUA( 2.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.4 )

		local vHeadBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
        vHeadBonePos.y = vHeadBonePos.y + 250
        
        if pMajorParticle ~= nil then
			-- 그로기상태 - 스턴 파티클로 표시
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UnitStunB", vHeadBonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		end
		
		if pParticle ~= nil then
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		end	
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 3.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.4 )
  
	end
end

function CORAL_SERPENT_SP_ATTACK_D_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 1 은 SP_ATTACK_D 그로기 상태에서 죽는 경우
	pNPCUnit:SetInt_LUA(0, 1)

    if pX2Game:IsHost() == true then
		
		local CenterPosIndex = 3
		
		local vCenterPos = pNPCUnit:GetVector_LUA( CenterPosIndex )

		pNPCUnit:SetPosition( vCenterPos , true )
	end
	
end

function CORAL_SERPENT_SP_ATTACK_D_STATE_END( pKTDXApp, pX2Game, pNPCUnit )


end



--------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_D_STUN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pMajorParticle = pX2Game:GetMajorParticle()

	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil and pMajorParticle ~= nil then
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			local vHeadBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
			vHeadBonePos.y = vHeadBonePos.y + 250
			pParticle:SetPosition( vHeadBonePos )
		end
	end
end

function CORAL_SERPENT_SP_ATTACK_D_STUN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
end

function CORAL_SERPENT_SP_ATTACK_D_STUN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMajorParticle = pX2Game:GetMajorParticle()
	if pMajorParticle == nil then
		return
	end

	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 0 )
	end
end



---------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

function CORAL_SERPENT_SP_ATTACK_D_DISAPPEAR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



---------------------------------------------------------------------
function CORAL_SERPENT_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	local pMajorParticle = pX2Game:GetMajorParticle()

	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pMajorParticle ~= nil and pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 0 )
	end
		
    if pX2Game:IsHost() == true then
		DyingStateNum = pNPCUnit:GetInt_LUA(0)
		if DyingStateNum == 1 then
			pNPCUnit:StateChange_LUA("CORAL_SERPENT_SP_ATTACK_D_DYING", true)
			return
		end
	end
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end

function CORAL_SERPENT_DYING_STATE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 3.2 )
    end
end



---------------------------------------------------------------------
function CORAL_SERPENT_SP_ATTACK_D_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )



	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )

end

function CORAL_SERPENT_SP_ATTACK_D_DYING_STATE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 3.2 )
    end
end

function CORAL_SERPENT_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

end

