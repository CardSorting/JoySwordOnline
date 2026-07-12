-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 80.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_SCALE		= 0.18,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{	
	"PunchAttack5.ogg",
	"PunchAttack3.ogg",
	"JumpLand.ogg",
	"Effect_Steam02.ogg",
	"Effect_Steam04.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "_Motion_MANTA_RAY.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 6000,
	MAX_G_SPEED			= -8000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}

INIT_COMPONENT = 
{
	--자동으로 HP 회복 주석 처리
	--HP_RELATIVE_CHANGE_RATE	= 0.0003,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	
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
	{ STATE_NAME = "MANTA_RAY_START",							LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_START_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MANTA_RAY_START_STATE_START", 
																	},
	
	{ STATE_NAME = "MANTA_RAY_WAIT",							LUA_STATE_START_FUNC	= "MANTA_RAY_WAIT_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_WAIT_STATE_END", },
											
	{ STATE_NAME = "MANTA_RAY_WALK",							},
	
	
	{ STATE_NAME = "MANTA_RAY_DASH",							},
	
	{ STATE_NAME = "MANTA_RAY_ATTACK_A",						},
												
	{ STATE_NAME = "MANTA_RAY_MAGIC_ATTACK_A",					STATE_COOL_TIME	= 3, },
	
	{ STATE_NAME = "MANTA_RAY_DASH_ATTACK",						LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_DASH_ATTACK_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MANTA_RAY_DASH_ATTACK_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_DASH_ATTACK_STATE_END",		STATE_COOL_TIME	= 0, },
	
	{ STATE_NAME = "MANTA_RAY_JUMP_ATTACK_READY",				LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_JUMP_ATTACK_READY_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MANTA_RAY_JUMP_ATTACK_READY_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_JUMP_ATTACK_READY_STATE_END",		STATE_COOL_TIME	= 0, },
	
	{ STATE_NAME = "MANTA_RAY_JUMP_DOWN",						LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_JUMP_DOWN_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MANTA_RAY_JUMP_DOWN_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_JUMP_DOWN_STATE_END",		STATE_COOL_TIME	= 0, },
	
	{ STATE_NAME = "MANTA_RAY_JUMP_UP",						LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_JUMP_UP_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MANTA_RAY_JUMP_UP_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_JUMP_UP_STATE_END",		STATE_COOL_TIME	= 0, },
	
	
	{ STATE_NAME = "MANTA_RAY_JUMP_ATTACK_LANDING",				LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_JUMP_ATTACK_LANDING_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MANTA_RAY_JUMP_ATTACK_LANDING_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_JUMP_ATTACK_LANDING_STATE_END",		STATE_COOL_TIME	= 0, },

	--리액션 관련
	{ STATE_NAME = "MANTA_RAY_DAMAGE_SMALL",					LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_DAMAGE_SMALL_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MANTA_RAY_DAMAGE_SMALL_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_DAMAGE_SMALL_STATE_END", },
																	
	{ STATE_NAME = "MANTA_RAY_DAMAGE_BIG",						LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_DAMAGE_BIG_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MANTA_RAY_DAMAGE_BIG_STATE_START", 
																	LUA_STATE_END_FUNC		= "MANTA_RAY_DAMAGE_BIG_STATE_END", },
	
	{ STATE_NAME = "MANTA_RAY_DYING",							LUA_STATE_START_FUNC	= "MANTA_RAY_DYING_STATE_START",
																	LUA_FRAME_MOVE_FUNC		= "MANTA_RAY_DYING_STATE_FRAME_MOVE"},

	START_STATE					= "MANTA_RAY_START",
	WAIT_STATE					= "MANTA_RAY_WAIT",
	
	RAGE_STATE					= "MANTA_RAY_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "MANTA_RAY_DAMAGE_BIG",
	SMALL_DAMAGE_LAND_BACK		= "MANTA_RAY_DAMAGE_BIG",
	BIG_DAMAGE_LAND_FRONT		= "MANTA_RAY_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "MANTA_RAY_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "MANTA_RAY_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_BACK		= "MANTA_RAY_DAMAGE_BIG",
	FLY_DAMAGE_FRONT			= "MANTA_RAY_DAMAGE_BIG",
	FLY_DAMAGE_BACK				= "MANTA_RAY_DAMAGE_BIG",
	SMALL_DAMAGE_AIR			= "MANTA_RAY_DAMAGE_BIG",	
	BIG_DAMAGE_AIR				= "MANTA_RAY_DAMAGE_BIG",
	DOWN_DAMAGE_AIR				= "MANTA_RAY_DAMAGE_BIG",
	DOWN_DAMAGE_AIR_LANDING		= "MANTA_RAY_DAMAGE_BIG",
	UP_DAMAGE					= "MANTA_RAY_DAMAGE_BIG",

	DYING_LAND_FRONT			= "MANTA_RAY_DYING",
	DYING_LAND_BACK				= "MANTA_RAY_DYING",
	DYING_SKY					= "MANTA_RAY_DYING",
	
	DAMAGE_REVENGE				= "MANTA_RAY_WAIT",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "MANTA_RAY_COMMON_FRAMEMOVE",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,		-- cm
		TARGET_LOST_RANGE			= 700,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		DEST_GAP			= 200,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 300,
		
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
		PATROL_BEGIN_RATE		= 50, --50,		
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



MANTA_RAY_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--ANIM_SPEED					= 1.5,
	
	--RIGHT					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	INVINCIBLE					= { 0, 100, }, 		

	--NEVER_MOVE					= TRUE,

--	SOUND_PLAY0					= { 0.01 , "Habit_Underwater02.ogg" },
--	SOUND_PLAY1					= { 1.00 , "Habit_Underwater03.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_WAIT",				"CT_MANTA_RAY_WAIT"	},
	},
	
	CT_MANTA_RAY_WAIT = 
	{
		STATE_TIME_OVER			= 0.5,
	},
}


MANTA_RAY_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MANTA_RAY_ATTACK_A",			"CT_MANTA_RAY_ATTACK_A",	},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MANTA_RAY_MAGIC_ATTACK_A",		"CT_MANTA_RAY_MAGIC_ATTACK_A",	},		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_JUMP_ATTACK_READY",		"CT_MANTA_RAY_JUMP_ATTACK_READY", },
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_DASH",				"CT_MANTA_RAY_DASH", },


		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MANTA_RAY_WALK",						},
	},
	
	CT_MANTA_RAY_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	
	CT_MANTA_RAY_DASH = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	
	
}

MANTA_RAY_DASH = 
{
	ANIM_SPEED					= 1.6,	
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	SUPER_ARMOR					= FALSE,
	
	EVENT_INTERVAL_TIME0		= 0.2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_DASH_ATTACK",					"CT_MANTA_RAY_DASH_ATTACK",				},
	},
	

	CT_MANTA_RAY_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		STATE_TIME_OVER				= 1.0,
	},
}


MANTA_RAY_WALK = 
{
	ANIM_SPEED					= 1.2,	
	ANIM_NAME					= "Dash",
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

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_WAIT",								"CT_MANTA_RAY_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_ATTACK_A",							"CT_MANTA_RAY_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MANTA_RAY_DASH",								"CT_MANTA_RAY_DASH", },


		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MANTA_RAY_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MANTA_RAY_WALK",						},
	},

	CT_MANTA_RAY_WAIT = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
	
	CT_MANTA_RAY_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},

	CT_MANTA_RAY_DASH = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 40,
	},
}


MANTA_RAY_JUMP_ATTACK_READY =
{
	ANIM_SPEED					= 0.8,
	ANIM_NAME					= "JumpRaedy",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
--	SOUND_PLAY0					= { 0.01 , "Habit_Underwater02.ogg" },
--	SOUND_PLAY1					= { 1.00 , "Habit_Underwater03.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	


	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_JUMP_UP",						},
	},

}


MANTA_RAY_JUMP_UP =
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X					= 300,
	SPEED_Y						= 2000,

	ADD_POS_Y					= 45, 
	
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"MANTA_RAY_JUMP_DOWN",			},
	},
}

MANTA_RAY_JUMP_DOWN =
{

	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X					= 300,
	SPEED_Y						= 0,

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
			{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MANTA_RAY_JUMP_ATTACK_LANDING",				},		
	},
}



MANTA_RAY_JUMP_ATTACK_LANDING =
{

	ANIM_NAME					= "JumpAttackLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.01 , "JumpLand.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
			{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
			{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_WAIT",						},
	},
}



MANTA_RAY_ATTACK_A =
{
	--ANIM_SPEED					= 0.75,
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0					= { 0.85 , "PunchAttack5.ogg" },


	SPEED_X						= 0,
	SPEED_Y						= 0,
	

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{	

				{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
				{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_WAIT",					},	
	},
--[[	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Attack_B", 0,	
	},	
--]]	
	ATTACK_TIME0				= { 1.0, 1.1, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
	
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},


		CAN_REVENGE				= FALSE,	

		--ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 0,
		
		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.20,
		
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.01,	
	},
	
}


MANTA_RAY_DASH_ATTACK =
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	SUPER_ARMOR					= FALSE,
	
    SOUND_PLAY0					= { 0.90 , "PunchAttack3.ogg" },


	SPEED_Y						= 0,	

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_WAIT",					},		
	},
	
	ATTACK_TIME0				= { 0.9, 1.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
	
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},


		CAN_REVENGE				= FALSE,	

		ARRANGED_FLY		= TRUE,

		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 0,
		
		RE_ATTACK				= FALSE,
		
		HIT_GAP					= 0.20,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.01,	
	},

}


MANTA_RAY_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "MagicAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= TRUE,
	
	SUPER_ARMOR					= TRUE,	

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 1.00 , "Effect_Steam02.ogg" },

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MANTA_RAY_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Magic_Attack_A", 0,	
	},
}





MANTA_RAY_DAMAGE_SMALL = 
{
	ANIM_SPEED					= 0.6,
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	-- CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_WAIT",	},
	},
}


MANTA_RAY_DAMAGE_BIG = 
{
	ANIM_SPEED					= 0.6,
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	

	-- CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MANTA_RAY_WAIT",	},
	},
}



MANTA_RAY_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.01 , "Effect_Steam04.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	

	
	
	
--------------------------------------------------------------------
--------------------------------------------------------------------

function MANTA_RAY_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MANTA_RAY_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end



---------------------------------------------------------------------
function MANTA_RAY_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------
function MANTA_RAY_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end

function MANTA_RAY_DAMAGE_SMALL_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_DAMAGE_SMALL_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



----------------------------------------------------------------------
function MANTA_RAY_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end

function MANTA_RAY_DAMAGE_BIG_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_DAMAGE_BIG_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function MANTA_RAY_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
end

function MANTA_RAY_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MANTA_RAY_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
        pNPCUnit:SetSpeedX(400)
    end

    if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then
        pNPCUnit:SetSpeedX(1000)
    end

    if pNPCUnit:AnimEventTimer_LUA( 1.47 ) then
        --pNPCUnit:SetSpeedX(50)
    end
end

function MANTA_RAY_DASH_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_DASH_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MANTA_RAY_JUMP_ATTACK_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


end

function MANTA_RAY_JUMP_ATTACK_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_JUMP_ATTACK_READY_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MANTA_RAY_JUMP_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MANTA_RAY_JUMP_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MANTA_RAY_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MANTA_RAY_JUMP_ATTACK_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	    
end

function MANTA_RAY_JUMP_ATTACK_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MANTA_RAY_JUMP_ATTACK_LANDING_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	
end





--------------------------------------------------------------------
function MANTA_RAY_JUMP_UP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
end

function MANTA_RAY_JUMP_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function MANTA_RAY_JUMP_UP_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end




--------------------------------------------------------------------
function MANTA_RAY_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 4.0 )
    end
end

function MANTA_RAY_MAGIC_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function MANTA_RAY_MAGIC_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


---------------------------------------------------------------------
function MANTA_RAY_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end

function MANTA_RAY_DYING_STATE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 3.2 )
    end
end



function MANTA_RAY_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

end

