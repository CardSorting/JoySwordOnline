-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 550.0,
	UNIT_HEIGHT		= 600.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.9,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{	
	"MagManta_DashAttack01.ogg",
	"MagManta_Dying01.ogg",
	"MagManta_Growl01.ogg",
	"MagManta_Growl02.ogg",
	"MagManta_Growl03.ogg",
	"MagManta_JumpAttackLanding01.ogg",
	"MagManta_MagicAttackB01.ogg",
	"Swing_Big01.ogg",
	"Swing_Big02.ogg",
	"Swing_Big04.ogg",
	"Swing_Big05.ogg",
	"Landing_Big_Metal01.ogg",
	"Landing_Big_Metal02.ogg",
	"Coral_Serpent_Habit01.ogg",
	"MaGmanta_MagicAttackA01.ogg",
	"MaGmanta_MagicAttackB02.ogg",
	"MaGmanta_SpecialAttack01.ogg",
	"Bite01.ogg",
	"Bite02.ogg",
	"Bite03.ogg",
	"MaGmanta_Jump01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_MA_GMANTA.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 6000,
	MAX_G_SPEED			= -8000,
	
	WALK_SPEED			= 600,
	RUN_SPEED			= 1000,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}

INIT_COMPONENT = 
{
	--자동으로 HP 회복 주석 처리
	--HP_RELATIVE_CHANGE_RATE	= 0.0003,
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	
    BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "NUI_MAGMANTA",
	HEAD_BONE_NAME				= "Bip01_Head",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_MAGMANTA.dds",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	RAGE_COUNT_MAX	= 60,
	RAGE_TIME_MAX	= 1,

	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
	DIE_FLY             = 0,
	
	NOT_CULL			= TRUE,

}

INIT_STATE = 
{
	{ STATE_NAME = "MA_GMANTA_START",							LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_START_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_START_STATE_START", 
																	},															
	
	
	{ STATE_NAME = "MA_GMANTA_WAIT",							LUA_STATE_START_FUNC	= "MA_GMANTA_WAIT_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_WAIT_STATE_END", },
																	
	{ STATE_NAME = "MA_GMANTA_WALK",							},
	
																	
	{ STATE_NAME = "MA_GMANTA_WALK_BACK",						},
		
	
	{ STATE_NAME = "MA_GMANTA_DASH",							},
	
	
	
	
	{ STATE_NAME = "MA_GMANTA_WAIT_BACK",						},

	{ STATE_NAME = "MA_GMANTA_ATTACK_A",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_ATTACK_A_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_ATTACK_A_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_ATTACK_A_STATE_END",		},
																	
	{ STATE_NAME = "MA_GMANTA_ATTACK_A_COMBO",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_ATTACK_A_COMBO_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_ATTACK_A_COMBO_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_ATTACK_A_COMBO_STATE_END",	},		
																							
	{ STATE_NAME = "MA_GMANTA_ATTACK_B",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_ATTACK_B_FRAME_MOVE",																		
																	LUA_STATE_START_FUNC	= "MA_GMANTA_ATTACK_B_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_ATTACK_B_STATE_END",		},
					

	{ STATE_NAME = "MA_GMANTA_DASH_ATTACK",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_DASH_ATTACK_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_DASH_ATTACK_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_DASH_ATTACK_STATE_END",		},
					

	{ STATE_NAME = "MA_GMANTA_JUMP_ATTACK_READY",				LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_JUMP_ATTACK_READY_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_JUMP_ATTACK_READY_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_JUMP_ATTACK_READY_STATE_END",		STATE_COOL_TIME	= 10, },
					

	{ STATE_NAME = "MA_GMANTA_JUMP_DOWN",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_JUMP_DOWN_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_JUMP_DOWN_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_JUMP_DOWN_STATE_END",		},
				
	{ STATE_NAME = "MA_GMANTA_JUMP_DOWN_BACK",					LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_JUMP_DOWN_BACK_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_JUMP_DOWN_BACK_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_JUMP_DOWN_BACK_STATE_END",		},
				

				
				
				
	{ STATE_NAME = "MA_GMANTA_JUMP_ATTACK_LANDING",				LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_JUMP_ATTACK_LANDING_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_JUMP_ATTACK_LANDING_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_JUMP_ATTACK_LANDING_STATE_END",		},

	{ STATE_NAME = "MA_GMANTA_JUMP_DOWN_LANDING_BACK",				LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_JUMP_DOWN_LANDING_BACK_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_JUMP_DOWN_LANDING_BACK_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_JUMP_DOWN_LANDING_BACK_STATE_END",		},
					
										
					
					
					
																	

	{ STATE_NAME = "MA_GMANTA_SP_ATTACK_A",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_SP_ATTACK_A_FRAME_MOVE",	
																	LUA_STATE_START_FUNC	= "MA_GMANTA_SP_ATTACK_A_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_SP_ATTACK_A_STATE_END",	},
																	
	{ STATE_NAME = "MA_GMANTA_SP_ATTACK_B_TURN_RIGHT",			LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_SP_ATTACK_B_TURN_RIGHT_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_SP_ATTACK_B_TURN_RIGHT_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_SP_ATTACK_B_TURN_RIGHT_STATE_END",	},
										
	{ STATE_NAME = "MA_GMANTA_SP_ATTACK_B_TURN_LEFT",			LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_SP_ATTACK_B_TURN_LEFT_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_SP_ATTACK_B_TURN_LEFT_STATE_START",
																	LUA_STATE_END_FUNC		= "MA_GMANTA_SP_ATTACK_B_TURN_LEFT_STATE_END",	},
										

	{ STATE_NAME = "MA_GMANTA_SP_ATTACK_C_TURN_RIGHT",			LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_SP_ATTACK_C_TURN_RIGHT_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_SP_ATTACK_C_TURN_RIGHT_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_SP_ATTACK_C_TURN_RIGHT_STATE_END",	},
										
	{ STATE_NAME = "MA_GMANTA_SP_ATTACK_C_TURN_LEFT",			LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_SP_ATTACK_C_TURN_LEFT_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_SP_ATTACK_C_TURN_LEFT_STATE_START",
																	LUA_STATE_END_FUNC		= "MA_GMANTA_SP_ATTACK_C_TURN_LEFT_STATE_END", },
										




										
	{ STATE_NAME = "MA_GMANTA_JUMP_UP_FRONT",					LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_JUMP_UP_FRONT_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_JUMP_UP_FRONT_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_JUMP_UP_FRONT_STATE_END",	},

																	
	--{ STATE_NAME = "MA_GMANTA_SP_ATTACK_C",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_SP_ATTACK_C_FRAME_MOVE",
	--																LUA_STATE_START_FUNC	= "MA_GMANTA_SP_ATTACK_C_STATE_START", 
	--																LUA_STATE_END_FUNC		= "MA_GMANTA_SP_ATTACK_C_STATE_END",	},
																	
	{ STATE_NAME = "MA_GMANTA_MAGIC_ATTACK_A",					LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_MAGIC_ATTACK_A_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_MAGIC_ATTACK_A_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_MAGIC_ATTACK_A_STATE_END",		},
																	
	{ STATE_NAME = "MA_GMANTA_MAGIC_ATTACK_B",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_MAGIC_ATTACK_B_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_MAGIC_ATTACK_B_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_MAGIC_ATTACK_B_STATE_END",		},


	--리액션 관련
	{ STATE_NAME = "MA_GMANTA_DAMAGE_SMALL",					LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_DAMAGE_SMALL_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_DAMAGE_SMALL_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_DAMAGE_SMALL_STATE_END", },
																	
	{ STATE_NAME = "MA_GMANTA_DAMAGE_BIG",						LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_DAMAGE_BIG_FRAME_MOVE",
																	LUA_STATE_START_FUNC	= "MA_GMANTA_DAMAGE_BIG_STATE_START", 
																	LUA_STATE_END_FUNC		= "MA_GMANTA_DAMAGE_BIG_STATE_END", },


	{ STATE_NAME = "MA_GMANTA_DYING",							LUA_STATE_START_FUNC	= "MA_GMANTA_DYING_STATE_START",
																	LUA_FRAME_MOVE_FUNC		= "MA_GMANTA_DYING_STATE_FRAME_MOVE"},

	START_STATE					= "MA_GMANTA_START",
	WAIT_STATE					= "MA_GMANTA_WAIT",
	
	RAGE_STATE					= "MA_GMANTA_SP_ATTACK_A",
	
	SMALL_DAMAGE_LAND_FRONT		= "MA_GMANTA_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "MA_GMANTA_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "MA_GMANTA_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "MA_GMANTA_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "MA_GMANTA_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_BACK		= "MA_GMANTA_DAMAGE_BIG",
	FLY_DAMAGE_FRONT			= "MA_GMANTA_DAMAGE_BIG",
	FLY_DAMAGE_BACK				= "MA_GMANTA_DAMAGE_BIG",
	SMALL_DAMAGE_AIR			= "MA_GMANTA_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "MA_GMANTA_DAMAGE_BIG",
	DOWN_DAMAGE_AIR				= "MA_GMANTA_DAMAGE_BIG",
	DOWN_DAMAGE_AIR_LANDING		= "MA_GMANTA_DAMAGE_BIG",
	UP_DAMAGE					= "MA_GMANTA_DAMAGE_BIG",


	DYING_LAND_FRONT			= "MA_GMANTA_DYING",
	DYING_LAND_BACK				= "MA_GMANTA_DYING",
	DYING_SKY					= "MA_GMANTA_DYING",
	
	DAMAGE_REVENGE				= "MA_GMANTA_WAIT",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "MA_GMANTA_COMMON_FRAMEMOVE",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 4000,		-- cm
		TARGET_LOST_RANGE			= 5000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 500,
		
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



MA_GMANTA_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--ANIM_SPEED					= 1.5,
	
	RIGHT					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	INVINCIBLE					= { 0, 100, }, 		

	--NEVER_MOVE					= TRUE,

	SOUND_PLAY0					= { 0.5, "Swing_Big01.ogg" },
	SOUND_PLAY1					= { 0.6, "Landing_Big_Metal02.ogg" },
	SOUND_PLAY2					= { 0.9, "Swing_Big04.ogg" },
	SOUND_PLAY3					= { 1.0, "Landing_Big_Metal01.ogg" },
	SOUND_PLAY4					= { 2.7, "MagManta_MagicAttackB01.ogg" },
	SOUND_PLAY5					= { 1.8, "MaGmanta_MagicAttackB02.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_WAIT",				"CT_MA_GMANTA_WAIT"	},
	},
	
	CT_MA_GMANTA_WAIT = 
	{
		STATE_TIME_OVER			= 3.00,
	},
}


MA_GMANTA_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_JUMP_ATTACK_READY",		"CT_MA_GMANTA_JUMP_ATTACK_READY", },
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_DASH",				"CT_MA_GMANTA_DASH", },

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MA_GMANTA_ATTACK_A",			"CT_MA_GMANTA_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MA_GMANTA_ATTACK_B",			"CT_MA_GMANTA_ATTACK_B",	},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MA_GMANTA_MAGIC_ATTACK_A",		"CT_MA_GMANTA_MAGIC_ATTACK_A",	},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MA_GMANTA_MAGIC_ATTACK_B",		"CT_MA_GMANTA_MAGIC_ATTACK_B",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MA_GMANTA_WALK",						},
	},
	CT_MA_GMANTA_JUMP_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 4000,
		RATE						= 6,
	},
	CT_MA_GMANTA_DASH = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
	CT_MA_GMANTA_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 8,
	},
	CT_MA_GMANTA_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 9,
	},
	CT_MA_GMANTA_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 11,
	},
	CT_MA_GMANTA_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 3000,
		RATE						= 14,
	},

	

}

MA_GMANTA_DASH = 
{
	ANIM_SPEED					= 1.5,	
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	SUPER_ARMOR					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MA_GMANTA_WAIT", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"MA_GMANTA_DASH_ATTACK",					"CF_MA_GMANTA_DASH_ATTACK",				},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MA_GMANTA_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MA_GMANTA_WALK",						},
	},
}


MA_GMANTA_WALK = 
{
	ANIM_SPEED					= 0.8,	
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.2,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MA_GMANTA_WAIT", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_WAIT",							"CT_MA_GMANTA_WAIT",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MA_GMANTA_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MA_GMANTA_WALK",						},
	},

	CT_MA_GMANTA_WAIT = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
}


MA_GMANTA_WAIT_BACK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 			
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MA_GMANTA_JUMP_UP_FRONT",			"CF_MA_GMANTA_JUMP_UP_FRONT"		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MA_GMANTA_SP_ATTACK_B_TURN_LEFT",	"CF_MA_GMANTA_SP_ATTACK_B_TURN_LEFT"		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MA_GMANTA_SP_ATTACK_B_TURN_RIGHT",	"CF_MA_GMANTA_SP_ATTACK_B_TURN_RIGHT"		},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MA_GMANTA_WALK_BACK",						},
	},
}



MA_GMANTA_WALK_BACK = 
{
	ANIM_SPEED					= 0.8,	
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 			
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MA_GMANTA_JUMP_UP_FRONT",		"CF_MA_GMANTA_JUMP_UP_FRONT"		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MA_GMANTA_SP_ATTACK_B_TURN_LEFT",	"CF_MA_GMANTA_SP_ATTACK_B_TURN_LEFT"		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"MA_GMANTA_SP_ATTACK_B_TURN_RIGHT",	"CF_MA_GMANTA_SP_ATTACK_B_TURN_RIGHT"		},
				
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MA_GMANTA_WAIT_BACK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MA_GMANTA_WALK_BACK",						},
	},
}



MA_GMANTA_JUMP_ATTACK_READY =
{
	ANIM_SPEED					= 0.8,
	ANIM_NAME					= "SpecialAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
    SOUND_PLAY0					= { 0.50, "MaGmanta_Jump01.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	INVINCIBLE					= { 0, 100, }, 		
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15197,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 6, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_JUMP_DOWN",			"CT_MA_GMANTA_JUMP_DOWN",	},
		
	},
	
	CT_MA_GMANTA_JUMP_DOWN =
	{
		STATE_TIME_OVER			= 3.00,
		RATE					= 100,
	},
}


MA_GMANTA_JUMP_DOWN =
{

	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
   -- SOUND_PLAY0					= { 0.10, "Coral_Serpent_AttackA01.ogg" },
	--SOUND_PLAY1					= { 1.10, "Coral_Serpent_AttackA02.ogg" },

	INVINCIBLE					= { 0, 100, }, 		

	SPEED_X						= 0,
	SPEED_Y						= 0,

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
			{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MA_GMANTA_JUMP_ATTACK_LANDING",				},		
	},
}


MA_GMANTA_JUMP_DOWN_BACK =
{

	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	
   -- SOUND_PLAY0					= { 0.10, "Coral_Serpent_AttackA01.ogg" },
   -- SOUND_PLAY1					= { 1.10, "Coral_Serpent_AttackA02.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
			{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MA_GMANTA_JUMP_DOWN_LANDING_BACK",				},		
	},
}


MA_GMANTA_JUMP_DOWN_LANDING_BACK =
{

	ANIM_NAME					= "JumpAttackLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 			
	
 --   SOUND_PLAY0					= { 0.10, "Coral_Serpent_AttackA01.ogg" },
--	SOUND_PLAY1					= { 1.10, "Coral_Serpent_AttackA02.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{	
			{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT_BACK",						},
	},

	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Jump_Attack", 0,	
	},		
	
}




MA_GMANTA_JUMP_ATTACK_LANDING =
{

	ANIM_NAME					= "JumpAttackLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
    SOUND_PLAY0					= { 0.01, "MagManta_JumpAttackLanding01.ogg", 100, FALSE ,4000 },

	INVINCIBLE					= { 0, 100, }, 		

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Jump_Attack", 0,	
	},	
	
	
	EVENT_PROCESS = 
	{	
			{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",						},
	},
}




MA_GMANTA_ATTACK_A =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
    SOUND_PLAY0					= { 0.90, "Swing_Big02.ogg" },
    SOUND_PLAY1					= { 1.00, "Landing_Big_Metal01.ogg" },
	SOUND_PLAY2					= { 0.01, "MagManta_Growl03.ogg",30 },	

	SPEED_X						= 0,
	SPEED_Y						= 0,	


	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_ATTACK_A_COMBO",			"CT_MA_GMANTA_ATTACK_A_COMBO",	},
		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Attack_A", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,

	CT_MA_GMANTA_ATTACK_A_COMBO =
	{
		ANIM_EVENT_TIMER	= 1.2,
		RATE				= 100,
	},
}


MA_GMANTA_ATTACK_A_COMBO =
{
	ANIM_NAME					= "AttackAComboA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	--ANIM_SPEED					= 0.8,

	
    SOUND_PLAY0			= { 0.80, "Swing_Big04.ogg", },
	SOUND_PLAY2					= { 0.01, "MagManta_Growl03.ogg",30 },	

	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Attack_A_Combo", 0,	
	},

	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	
}


MA_GMANTA_ATTACK_B =
{
	--ANIM_SPEED					= 0.75,
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0					= { 0.95, "Bite01.ogg", 80 },
    SOUND_PLAY1					= { 1.16, "Bite03.ogg", 80 },
    SOUND_PLAY2					= { 1.27, "Bite02.ogg", 80 },
    SOUND_PLAY3					= { 1.38, "Bite01.ogg", 80 },
    SOUND_PLAY4					= { 1.49, "Bite02.ogg", 80 },
    SOUND_PLAY5					= { 1.63, "Bite03.ogg", 80 },

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR					= TRUE,

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Attack_B", 0,	
	},	

	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,

}


MA_GMANTA_DASH_ATTACK =
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	--SUPER_ARMOR					= TRUE,
	
    SOUND_PLAY0					= { 1.30, "MagManta_DashAttack01.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	


	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Dash_Attack", 0,	
	},	

	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
}


MA_GMANTA_MAGIC_ATTACK_A = 
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
	
	SOUND_PLAY0					= { 1.10, "MaGmanta_MagicAttackA01.ogg" },


	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Magic_Attack_A", 0,	
	},
}


MA_GMANTA_MAGIC_ATTACK_B = 
{
	--ANIM_NAME					= 0.7,
	ANIM_NAME					= "MagicAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= TRUE,

	SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 1.4, "MagManta_MagicAttackB01.ogg" },
	SOUND_PLAY1					= { 0.01, "MaGmanta_MagicAttackB02.ogg" },

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Magic_Attack_B", 0,	
	},	
}


MA_GMANTA_SP_ATTACK_A = 
{
	ANIM_NAME					= "SpecialAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= TRUE,

	SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
    SOUND_PLAY0					= { 0.50, "MaGmanta_Jump01.ogg" },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_JUMP_DOWN_BACK",			"CT_MA_GMANTA_JUMP_DOWN_BACK",	},
		
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15208,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	CT_MA_GMANTA_JUMP_DOWN_BACK =
	{
		STATE_TIME_OVER			= 4.00,
		RATE					= 100,
	},
	
}

MA_GMANTA_SP_ATTACK_B_TURN_LEFT = 
{
	ANIM_NAME					= "SpecialAttack_L",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	--SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 1.1, "MaGmanta_SpecialAttack01.ogg",100,FALSE,100000 },
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT_BACK",					},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Sp_Attack_B", 0,	
	},	
	
}

MA_GMANTA_SP_ATTACK_B_TURN_RIGHT = 
{
	ANIM_NAME					= "SpecialAttack_R",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	--SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 1.1, "MaGmanta_SpecialAttack01.ogg",100,FALSE,100000 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT_BACK",					},	
	},
	

	
	EFFECT_SET_LIST =
	{
		"EffectSet_Ma_Gmanta_Sp_Attack_B", 0,	
	},	
	
}



MA_GMANTA_SP_ATTACK_C_TURN_LEFT = 
{
	ANIM_NAME					= "SpecialAttack_L",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	--SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 1.1, "MaGmanta_SpecialAttack01.ogg",100,FALSE,100000 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
}

MA_GMANTA_SP_ATTACK_C_TURN_RIGHT = 
{
	ANIM_NAME					= "SpecialAttack_R",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	--SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	SOUND_PLAY0					= { 1.1, "MaGmanta_SpecialAttack01.ogg",100,FALSE,100000 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
}


MA_GMANTA_JUMP_UP_FRONT = 
{
	ANIM_NAME					= "SpecialAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	VIEW_TARGET					= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	--SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
    SOUND_PLAY0					= { 0.50, "MaGmanta_Jump01.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MA_GMANTA_JUMP_DOWN",			"CT_MA_GMANTA_JUMP_DOWN",	},	
	},
	
	CT_MA_GMANTA_JUMP_DOWN =
	{
		STATE_TIME_OVER			= 3.00,
		RATE					= 100,
	},
}




MA_GMANTA_SP_ATTACK_C = 
{
	ANIM_NAME					= "SpecialAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= TRUE,

	SUPER_ARMOR					= TRUE,
	--NEVER_MOVE					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
    SOUND_PLAY0					= { 0.50, "MaGmanta_Jump01.ogg" },


	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",					},	
	},
	
}




MA_GMANTA_DAMAGE_SMALL = 
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_Y				= 0,

	VIEW_TARGET					= FALSE,
	
	SOUND_PLAY0					= { 0.01, "MagManta_Growl01.ogg",50 },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",	},
	},
}


MA_GMANTA_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_Y				= 0,

	VIEW_TARGET					= FALSE,
	
	SOUND_PLAY0					= { 0.01, "MagManta_Growl02.ogg",50 },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MA_GMANTA_WAIT",	},
	},
}



MA_GMANTA_DYING = 
{
	ANIM_NAME					= "Dying_Boss",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= {0.01 , "MagManta_Dying01.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	

	
	
	
--------------------------------------------------------------------
--------------------------------------------------------------------

function MA_GMANTA_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.5 )
    end 

    if pNPCUnit:AnimEventTimer_LUA( 1.10 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.5 )
    end 

    if pNPCUnit:AnimEventTimer_LUA( 1.75 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 1.4 )
    end 


    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 80.0, 0.8 )
    end 
end

function MA_GMANTA_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA(0, 0) -- 라인맵 뒤 공격 횟수
	pNPCUnit:SetFlag_LUA(0, false) -- summon1 check
	pNPCUnit:SetFlag_LUA(1, false) -- summon2 check
	pNPCUnit:SetFlag_LUA(2, false) -- summon3 check
	pNPCUnit:SetFlag_LUA(3, false) -- summon4 check
	pNPCUnit:SetFlag_LUA(4, false) -- 광폭화
	pNPCUnit:SetFlag_LUA(5, false) -- 뒤 라인맵 이동 상태
	pNPCUnit:SetTimerRestart( 1 ) -- 독공격 타이머
end



---------------------------------------------------------------------
function MA_GMANTA_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------
function MA_GMANTA_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end

function MA_GMANTA_DAMAGE_SMALL_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_DAMAGE_SMALL_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



----------------------------------------------------------------------
function MA_GMANTA_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end

function MA_GMANTA_DAMAGE_BIG_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_DAMAGE_BIG_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function MA_GMANTA_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

function MA_GMANTA_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function MA_GMANTA_ATTACK_A_COMBO_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


end

function MA_GMANTA_ATTACK_A_COMBO_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_ATTACK_A_COMBO_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end





--------------------------------------------------------------------
function MA_GMANTA_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.5 )
    end
    
end

function MA_GMANTA_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_ATTACK_B_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MA_GMANTA_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.5 )
    end
    
end

function MA_GMANTA_DASH_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_DASH_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MA_GMANTA_JUMP_ATTACK_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 0.5 )
    end 
end

function MA_GMANTA_JUMP_ATTACK_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_JUMP_ATTACK_READY_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MA_GMANTA_JUMP_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MA_GMANTA_JUMP_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:IsHost() == true then
		local vPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
		vPos.y = vPos.y + 4000
		pNPCUnit:SetPosition( vPos , true )
	end
end

function MA_GMANTA_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function MA_GMANTA_JUMP_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    
end

function MA_GMANTA_JUMP_DOWN_BACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:IsHost() == true then
		local vPos = D3DXVECTOR3(0, 120, 815)
		vPos.y = vPos.y + 4000
		pNPCUnit:SetPosition( vPos , true )
	end
end

function MA_GMANTA_JUMP_DOWN_BACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end




--------------------------------------------------------------------
function MA_GMANTA_JUMP_ATTACK_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	    
end

function MA_GMANTA_JUMP_ATTACK_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MA_GMANTA_JUMP_ATTACK_LANDING_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	
end



--------------------------------------------------------------------
function MA_GMANTA_JUMP_DOWN_LANDING_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MA_GMANTA_JUMP_DOWN_LANDING_BACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

function MA_GMANTA_JUMP_DOWN_LANDING_BACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetTimerRestart( 2 ) -- 거미소환 타이머
	pNPCUnit:SetInt_LUA(0, 0)
	pNPCUnit:SetFlag_LUA(5, true)
end







--------------------------------------------------------------------
function MA_GMANTA_SP_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pX2Game:GetNPCUnitNum() >= 20 then
		return
	end

	local iUserUnitNum = pX2Game:GetUserUnitNum_LUA()

    if pNPCUnit:GetStateTime() > 1.4 and
		pNPCUnit:GetFlag_LUA(0) == false then

		pNPCUnit:SetFlag_LUA(0, true)

		local vSummonPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )

		vSummonPos.y = vSummonPos.y + 1500

		local fRate = pNPCUnit:GetRandVal(0) % 100
		if fRate < 50 then
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		else
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		end

    end

    if pNPCUnit:GetStateTime() > 2.0 and
		pNPCUnit:GetFlag_LUA(1) == false then

		pNPCUnit:SetFlag_LUA(1, true)

		local vSummonPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )

		vSummonPos.y = vSummonPos.y + 1500

		local fRate = pNPCUnit:GetRandVal(1) % 100
		if fRate < 50 then
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		else
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		end	

		if iUserUnitNum > 2 then
			vSummonPos.y = vSummonPos.y + 500
			local fRate = pNPCUnit:GetRandVal(1) % 100
			if fRate < 50 then
				pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
			else
				pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
			end
		end


    end

    if pNPCUnit:GetStateTime() > 2.4 and
		pNPCUnit:GetFlag_LUA(2) == false then

		pNPCUnit:SetFlag_LUA(2, true)

		local vSummonPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )

		vSummonPos.y = vSummonPos.y + 1500

		local fRate = pNPCUnit:GetRandVal(2) % 100
		if fRate < 50 then
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		else
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		end	
    end


    if pNPCUnit:GetStateTime() > 2.6 and
		pNPCUnit:GetFlag_LUA(3) == false and
		iUserUnitNum > 1 then

		pNPCUnit:SetFlag_LUA(3, true)

		local vSummonPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )

		vSummonPos.y = vSummonPos.y + 1500

		local fRate = pNPCUnit:GetRandVal(3) % 100
		if fRate < 50 then
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		else
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
		end	
    end
		


end

function MA_GMANTA_SP_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


	pNPCUnit:SetFlag_LUA(0, false) -- summon1 check
	pNPCUnit:SetFlag_LUA(1, false) -- summon2 check
	pNPCUnit:SetFlag_LUA(2, false) -- summon3 check
	pNPCUnit:SetFlag_LUA(3, false) -- summon4 check


end

function MA_GMANTA_SP_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end


--------------------------------------------------------------------
function MA_GMANTA_SP_ATTACK_B_TURN_LEFT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MA_GMANTA_SP_ATTACK_B_TURN_LEFT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetIsRight(true)
end

function MA_GMANTA_SP_ATTACK_B_TURN_LEFT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetIsRight(false)
	pNPCUnit:SetTimerRestart( 1 ) -- 독공격 타이머


	local iPoisonFall = pNPCUnit:GetInt_LUA(0)
	iPoisonFall = iPoisonFall + 1
	pNPCUnit:SetInt_LUA(0, iPoisonFall)
end



--------------------------------------------------------------------
function MA_GMANTA_SP_ATTACK_B_TURN_RIGHT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
end

function MA_GMANTA_SP_ATTACK_B_TURN_RIGHT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function MA_GMANTA_SP_ATTACK_B_TURN_RIGHT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 1 ) -- 독공격 타이머

	local iPoisonFall = pNPCUnit:GetInt_LUA(0)
	iPoisonFall = iPoisonFall + 1
	pNPCUnit:SetInt_LUA(0, iPoisonFall)

end



--------------------------------------------------------------------
function MA_GMANTA_SP_ATTACK_C_TURN_LEFT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end

function MA_GMANTA_SP_ATTACK_C_TURN_LEFT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetIsRight(true)
end

function MA_GMANTA_SP_ATTACK_C_TURN_LEFT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetIsRight(false)
end



--------------------------------------------------------------------
function MA_GMANTA_SP_ATTACK_C_TURN_RIGHT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
end

function MA_GMANTA_SP_ATTACK_C_TURN_RIGHT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function MA_GMANTA_SP_ATTACK_C_TURN_RIGHT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function MA_GMANTA_JUMP_UP_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
end

function MA_GMANTA_JUMP_UP_FRONT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA(5, false)
end

function MA_GMANTA_JUMP_UP_FRONT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end




--------------------------------------------------------------------
function MA_GMANTA_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 4.0 )
    end

	

end


function MA_GMANTA_MAGIC_ATTACK_A_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function MA_GMANTA_MAGIC_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end



--------------------------------------------------------------------
function MA_GMANTA_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 80.0, 0.4 )

		local startPos 			= { 1, 4, 5, 7, 8, 9, 10, 20, 22, 24 }		-- 인형이 생성 될 수 있는 스타트 포지션
		local numOfDolls 		= 5											-- 생성할 인형의 갯수
		local tableForShuffle	= {}
		math.randomseed( os.time() )	

		for i, v in ipairs( startPos ) do
			tableForShuffle[i] = { density = math.random(), val = v }
		end

		table.sort( tableForShuffle, START_POS_COMP )

		for i = 1, numOfDolls do
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( tableForShuffle[i].val )
			vSummonPos.y = vSummonPos.y + 2000
			local fDelayTime = i/10

			pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_ICE_ROCK"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, fDelayTime, true, 10 )
		end
		pX2Game:FlushCreateNPCReq()
	end

end

function START_POS_COMP( num1, num2 )
	return num1.density < num2.density
end


function MA_GMANTA_MAGIC_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


	
end

function MA_GMANTA_MAGIC_ATTACK_B_STATE_END( pKTDXApp, pX2Game, pNPCUnit )


end



---------------------------------------------------------------------
function MA_GMANTA_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	
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

function MA_GMANTA_DYING_STATE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 3.2 )
    end
end



function MA_GMANTA_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetFlag_LUA(5) == true then
		if pNPCUnit:GetTimerElapsedTime( 2 ) > 8 then
			pNPCUnit:SetTimerRestart( 2 )
			
			local fRate = pNPCUnit:GetRandVal() % 100
			
			local startPos 			= { 1, 4, 5, 7, 8, 9, 10, 20, 22, 24 }		-- 인형이 생성 될 수 있는 스타트 포지션
			local numOfDolls 		= 2											-- 생성할 인형의 갯수
			local tableForShuffle	= {}
			math.randomseed( os.time() )	

			for i, v in ipairs( startPos ) do
				tableForShuffle[i] = { density = math.random(), val = v }
			end

			table.sort( tableForShuffle, START_POS_COMP )
			
			for i = 1, numOfDolls do
				local vSummonPos = pX2Game:GetLineMap():GetStartPosition( tableForShuffle[i].val )
				vSummonPos.y = vSummonPos.y + 2000
				local fDelayTime = i/10

				if fRate < 50 then
					pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, fDelayTime, true, pNPCUnit:GetKeyCode() )
				else
					pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, fDelayTime, true, pNPCUnit:GetKeyCode() )
				end
			end
			pX2Game:FlushCreateNPCReq()
		end
	end 

	local hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100   
	if hp <= 30 then
		
		local vEffectPos0 = pNPCUnit:GetBonePos_LUA("Bip01_Spine")
		local vEffectPos1 = pNPCUnit:GetBonePos_LUA("Dummy_Mouth01")

		local vEffectPos2 = pNPCUnit:GetBonePos_LUA("Eye_R_Dummy01")
		local vEffectPos3 = pNPCUnit:GetBonePos_LUA("Eye_R_Dummy02")
		local vEffectPos4 = pNPCUnit:GetBonePos_LUA("Eye_R_Dummy03")
		local vEffectPos5 = pNPCUnit:GetBonePos_LUA("Eye_L_Dummy01")
		local vEffectPos6 = pNPCUnit:GetBonePos_LUA("Eye_L_Dummy02")
		local vEffectPos7 = pNPCUnit:GetBonePos_LUA("Eye_L_Dummy03")

		local pMajorParticle = pX2Game:GetMajorParticle()

		if pNPCUnit:GetFlag_LUA(4) == false then 

			pNPCUnit:SetFlag_LUA(4, true)
			pNPCUnit:SetAtkPhysic_LUA( pNPCUnit:GetAtkPhysic_LUA() * 1.5 )
			pNPCUnit:SetRageCountMax(0)
			pNPCUnit:SetTimerRestart( 0 )

			local pParticle0 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever01", vEffectPos0, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle0 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 0, pParticle0:GetHandle() ) 
				pParticle0:SetPosition( vEffectPos0 )
			end

			local pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever01", vEffectPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle1 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 1, pParticle1:GetHandle() ) 
				pParticle1:SetPosition( vEffectPos1 )
			end

			local pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever_Eye01", vEffectPos2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle2 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 2, pParticle2:GetHandle() ) 
				pParticle2:SetPosition( vEffectPos2 )
			end

			local pParticle3 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever_Eye01", vEffectPos3, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle3 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 3, pParticle3:GetHandle() ) 
				pParticle3:SetPosition( vEffectPos3 )
			end

			local pParticle4 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever_Eye01", vEffectPos4, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle4 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 4, pParticle4:GetHandle() ) 
				pParticle4:SetPosition( vEffectPos4 )
			end

			local pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever_Eye01", vEffectPos5, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle5 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 5, pParticle5:GetHandle() ) 
				pParticle5:SetPosition( vEffectPos5 )
			end

			local pParticle6 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever_Eye01", vEffectPos6, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle6 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 6, pParticle6:GetHandle() ) 
				pParticle6:SetPosition( vEffectPos6 )
			end

			local pParticle7 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MA_GMANTA_Fever_Eye01", vEffectPos7, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			if pParticle7 ~= nil then 
				pNPCUnit:SetMajorParticle_LUA( 7, pParticle7:GetHandle() ) 
				pParticle7:SetPosition( vEffectPos7 )
			end

			local bIsRight = pNPCUnit:GetIsRight()
			if bIsRight == true then
				pNPCUnit:StateChange_LUA("MA_GMANTA_SP_ATTACK_C_TURN_RIGHT", true)
			else
				pNPCUnit:StateChange_LUA("MA_GMANTA_SP_ATTACK_C_TURN_LEFT", true)
			end
		end
		
		local pParticle0 = pNPCUnit:GetMajorParticle_LUA( 0 ) 	
		if pParticle0 ~= nil then
			pParticle0:SetPosition(vEffectPos0)
		end

		local pParticle1 = pNPCUnit:GetMajorParticle_LUA( 1 ) 	
		if pParticle1 ~= nil then
			pParticle1:SetPosition(vEffectPos1)
		end

		local pParticle2 = pNPCUnit:GetMajorParticle_LUA( 2 ) 	
		if pParticle2 ~= nil then
			pParticle2:SetPosition(vEffectPos2)
		end

		local pParticle3 = pNPCUnit:GetMajorParticle_LUA( 3 ) 	
		if pParticle3 ~= nil then
			pParticle3:SetPosition(vEffectPos3)
		end

		local pParticle4 = pNPCUnit:GetMajorParticle_LUA( 4 ) 	
		if pParticle4 ~= nil then
			pParticle4:SetPosition(vEffectPos4)
		end

		local pParticle5 = pNPCUnit:GetMajorParticle_LUA( 5 ) 	
		if pParticle5 ~= nil then
			pParticle5:SetPosition(vEffectPos5)
		end

		local pParticle6 = pNPCUnit:GetMajorParticle_LUA( 6 ) 	
		if pParticle6 ~= nil then
			pParticle6:SetPosition(vEffectPos6)
		end

		local pParticle7 = pNPCUnit:GetMajorParticle_LUA( 7 ) 	
		if pParticle7 ~= nil then
			pParticle7:SetPosition(vEffectPos7)
		end

		if pNPCUnit:GetTimerElapsedTime( 0 ) > 5.0 then


			if pX2Game:GetNPCUnitNum() >= 7 then
				return
			end

			pNPCUnit:SetTimerRestart( 0 )	

			local fRate = pNPCUnit:GetRandVal() % 100
			local vSummonPos = pNPCUnit:GetPos()
			
			local startPos 			= { 1, 4, 5, 7, 8, 9, 10, 20, 22, 24 }		-- 인형이 생성 될 수 있는 스타트 포지션
			local numOfDolls 		= 1											-- 생성할 인형의 갯수
			local tableForShuffle	= {}
			math.randomseed( os.time() )	

			for i, v in ipairs( startPos ) do
				tableForShuffle[i] = { density = math.random(), val = v }
			end

			table.sort( tableForShuffle, START_POS_COMP )
			
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( tableForShuffle[1].val )
			vSummonPos.y = vSummonPos.y + 2000

			if fRate < 50 then
				pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
			else
				pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), true, false  )
			end
		end
	end
end

function CF_MA_GMANTA_DASH_ATTACK( pKTDXApp, pX2Game, pNPCUnit )

	local vPos = pNPCUnit:GetPos() -- 3층 라인맵에서 Dash Attack 안쓰게
	if vPos.y > 500 then
		return false
	end

	local vTargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), vTargetPos)
	
	if distance < 600 then
		return true
	end

	if distance > 2000 then
		return true
	end

	return false
end


function CF_MA_GMANTA_JUMP_UP_FRONT( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA(0) >= 3 then
		return true
	end
	if pNPCUnit:GetTimerElapsedTime( 0 ) > 25 then
		return true
	end
	return false
end

function CF_MA_GMANTA_SP_ATTACK_B_TURN_LEFT( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetTimerElapsedTime( 1 ) < 3 then
		return false
	end

	if pNPCUnit:GetInt_LUA(0) >= 3 then
		return false
	end 

	local vTargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), vTargetPos)
	
	if distance > 3100 then
		return false
	end	
	
	local bIsRight = pNPCUnit:GetIsRight()
	if bIsRight == false then
		return true
	end
	return false
end


function CF_MA_GMANTA_SP_ATTACK_B_TURN_RIGHT( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetTimerElapsedTime( 1 ) < 3 then
		return false
	end
	
	if pNPCUnit:GetInt_LUA(0) >= 3 then
		return false
	end 

	local vTargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), vTargetPos)
	
	if distance > 3100 then
		return false
	end


	local bIsRight = pNPCUnit:GetIsRight()
	if bIsRight == true then
		return true
	end
	return false
end
