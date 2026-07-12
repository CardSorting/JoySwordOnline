-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 144.0,
	UNIT_HEIGHT		= 165.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.0,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	"Shadow_Sniper_AttackA.ogg",
	"Shadow_Sniper_AttackA_Aim.ogg",
	--"Shadow_Sniper_AttackA_Loop.ogg",
	--"Shadow_Sniper_AttackA_Loop_Fizzle.ogg",
	"Shadow_Sniper_AttackA_Ready.ogg",
	},

	READY_XMESH = 
	{
	 
	},
	
	READY_XSKIN_MESH = 
	{
	 
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_SHADOW_SNIPER.x",
	MOTION_CHANGE_TEX_XET	= "NUI_SHADOW_FROT_SNIPER.xet",
	MOTION_ANI_TEX_XET		= "NUI_SHADOW_FROT_SNIPER.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 700,
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
	
	FALL_DOWN			= TRUE,
	DAMAGE_DOWN			= FALSE,
}



INIT_STATE = 
{
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_START",							},
	
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_WAIT",							},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_WAIT_HABIT",						},
	
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_WALK",							LUA_STATE_END_FUNC = "SHADOW_SNIPER_SIDE_WALK_STATE_END"							},


	{ STATE_NAME = "SHADOW_SNIPER_SIDE_JUMP_UP",							},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_JUMP_DOWN",						LUA_STATE_END_FUNC = "SHADOW_SNIPER_SIDE_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_JUMP_UP_DIR",						},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_JUMP_LANDING",					},

		
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_ATTACK_A_READY",		LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_ATTACK_A_READY_STATE_START",
												LUA_FRAME_MOVE_FUNC = "SHADOW_SNIPER_SIDE_ATTACK_A_READY_FRAME_MOVE",	STATE_COOL_TIME = 0, },
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_ATTACK_A_AIMING",	LUA_FRAME_MOVE_FUNC = "SHADOW_SNIPER_SIDE_ATTACK_A_AIMING_FRAME_MOVE", },
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_ATTACK_A",			LUA_STATE_END_FUNC = "SHADOW_SNIPER_SIDE_ATTACK_A_STATE_END",
												LUA_FRAME_MOVE_FUNC = "SHADOW_SNIPER_SIDE_ATTACK_A_FRAME_MOVE", },
			

	
	--리액션 관련
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_FRONT", LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_BACK",  LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_FLY_FRONT",		LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_FLY_BACK",		LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_AIR",				LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN",		LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_AIR_UP",			LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL",		LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_STAND_UP_FRONT",			LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_STAND_UP_BACK",			LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"		},
	
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DAMAGE_REVENGE",			LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE"		},
	
	
	
	
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DYING_LAND_BACK",					LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SHADOW_SNIPER_SIDE_DYING_SKY",						LUA_STATE_START_FUNC = "SHADOW_SNIPER_SIDE_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "SHADOW_SNIPER_SIDE_START",
	WAIT_STATE					= "SHADOW_SNIPER_SIDE_WAIT",
	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "SHADOW_SNIPER_SIDE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "SHADOW_SNIPER_SIDE_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "SHADOW_SNIPER_SIDE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "SHADOW_SNIPER_SIDE_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "SHADOW_SNIPER_SIDE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "SHADOW_SNIPER_SIDE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "SHADOW_SNIPER_SIDE_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "SHADOW_SNIPER_SIDE_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "SHADOW_SNIPER_SIDE_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "SHADOW_SNIPER_SIDE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "SHADOW_SNIPER_SIDE_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "SHADOW_SNIPER_SIDE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL","SHADOW_SNIPER_SIDE_STAND_UP_FRONT","SHADOW_SNIPER_SIDE_STAND_UP_BACK",
		"SHADOW_SNIPER_SIDE_JUMP_DOWN","SHADOW_SNIPER_SIDE_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "SHADOW_SNIPER_SIDE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "SHADOW_SNIPER_SIDE_DYING_LAND_BACK",
	DYING_SKY					= "SHADOW_SNIPER_SIDE_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "SHADOW_SNIPER_SIDE_COMMON_FRAME_MOVE_FUNC",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 1200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2000,		-- cm
		TARGET_LOST_RANGE			= 2200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 70, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 70, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,
		DEST_GAP			= 800,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 500,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 4,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 700,	-- cm
		ESCAPE_GAP			= 2500,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.0,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 0, -- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  30,
		DOWN_DOWN_RATE		= 0,
		
		LINE_END_RANGE		= 80,	-- cm
	},

}




SHADOW_SNIPER_SIDE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"SHADOW_SNIPER_SIDE_WAIT",		"CT_SHADOW_SNIPER_SIDE_WAIT"				},
	},
	
	CT_SHADOW_SNIPER_SIDE_WAIT = 
	{
		STATE_TIME_OVER			= 2.8,
	},
}



SHADOW_SNIPER_SIDE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN",					},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SHADOW_SNIPER_SIDE_ATTACK_A_READY",			"CT_SHADOW_SNIPER_SIDE_ATTACK_A_READY",	},
				
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SHADOW_SNIPER_SIDE_WAIT_HABIT",					"CT_SHADOW_SNIPER_SIDE_WAIT_HABIT",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"SHADOW_SNIPER_SIDE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"SHADOW_SNIPER_SIDE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"SHADOW_SNIPER_SIDE_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"SHADOW_SNIPER_SIDE_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_SNIPER_SIDE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR",				},
	},
	

	CT_SHADOW_SNIPER_SIDE_ATTACK_A_READY = 
	{
		RATE					= 100,
	},

	
	CT_SHADOW_SNIPER_SIDE_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE					= 60,
		HAVE_TARGET				= 0,		-- false
	},
		
}




SHADOW_SNIPER_SIDE_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_WAIT",						},
	},
}


SHADOW_SNIPER_SIDE_WALK = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.001, "SHADOW_SNIPER_SIDE_Walk.ogg" },

	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR",				},
		
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SHADOW_SNIPER_SIDE_ATTACK_A_READY",			"CT_SHADOW_SNIPER_SIDE_ATTACK_A_READY",	},
				
	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"SHADOW_SNIPER_SIDE_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"SHADOW_SNIPER_SIDE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"SHADOW_SNIPER_SIDE_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"SHADOW_SNIPER_SIDE_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_SNIPER_SIDE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR",				},
	},
	
	
	CT_SHADOW_SNIPER_SIDE_ATTACK_A_READY = 
	{
		RATE					= 50,
	},

}

SHADOW_SNIPER_SIDE_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"SHADOW_SNIPER_SIDE_JUMP_DOWN",			},
		
	},	
}

SHADOW_SNIPER_SIDE_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SHADOW_SNIPER_SIDE_JUMP_LANDING",				},
	},
}

SHADOW_SNIPER_SIDE_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR",				},
	},
	
}

SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SHADOW_SNIPER_SIDE_JUMP_LANDING",				},
	},
}

SHADOW_SNIPER_SIDE_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0					= { 0.001, "SHADOW_SNIPER_SIDE_JumpAttackLanding.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_WAIT",						},
	},
}



SHADOW_SNIPER_SIDE_ATTACK_A_READY = 
{
	ANIM_NAME					= "AttackA_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0					= { 0.60, "Shadow_Sniper_AttackA_Ready.ogg" },
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_ATTACK_A_AIMING",	},		
	},	
}


SHADOW_SNIPER_SIDE_ATTACK_A_AIMING = 
{
	ANIM_NAME					= "AttackA_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X				= 0,
	SPEED_Y						= 0,	

   	--SOUND_PLAY0			= { 0.00, "Shadow_Sniper_AttackA_Loop.ogg" },
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"SHADOW_SNIPER_SIDE_ATTACK_A","CT_SHADOW_SNIPER_SIDE_ATTACK_A"	},		
	},
	
	CT_SHADOW_SNIPER_SIDE_ATTACK_A =
	{
		STATE_TIME_OVER = 3,
	},
}

SHADOW_SNIPER_SIDE_ATTACK_A = 
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.01, "Shadow_Sniper_AttackA_Aim.ogg" },
    SOUND_PLAY1			= { 1.052, "Shadow_Sniper_AttackA.ogg" },
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_WAIT",						},
	},	
}


SHADOW_SNIPER_SIDE_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_WAIT",												},
	},
}


SHADOW_SNIPER_SIDE_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_WAIT",												},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_WAIT",												},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_BIG_BACK = 
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_WAIT",												},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_BIG_FRONT = 
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_WAIT",												},
	},
}





SHADOW_SNIPER_SIDE_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_STAND_UP_FRONT",			},
	},
	
}

SHADOW_SNIPER_SIDE_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_SNIPER_SIDE_STAND_UP_BACK",			},
	},
	
}

SHADOW_SNIPER_SIDE_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SHADOW_SNIPER_SIDE_DAMAGE_DOWN_BACK",		},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SHADOW_SNIPER_SIDE_WAIT",					},
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}

SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	--PASSIVE_SPEED_Y				= -1,
	--SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * 0.6,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"SHADOW_SNIPER_SIDE_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_STAND_UP_FRONT",			},
	},
	
}

SHADOW_SNIPER_SIDE_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_WAIT",				},
	},
}

SHADOW_SNIPER_SIDE_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_SNIPER_SIDE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_SNIPER_SIDE_WAIT", },
	},		
}



SHADOW_SNIPER_SIDE_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
SHADOW_SNIPER_SIDE_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

SHADOW_SNIPER_SIDE_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------

function SHADOW_SNIPER_SIDE_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function SHADOW_SNIPER_SIDE_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function SHADOW_SNIPER_SIDE_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function SHADOW_SNIPER_SIDE_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function SHADOW_SNIPER_SIDE_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function SHADOW_SNIPER_SIDE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function SHADOW_SNIPER_SIDE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function SHADOW_SNIPER_SIDE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end







function SHADOW_SNIPER_SIDE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	local pEffect = pNPCUnit:GetDamageEffect_LUA(2)
	local pDamageEffect = pX2Game:GetDamageEffect()
			
	if pEffect ~= nil then
	    pDamageEffect:DestroyInstance( pEffect )	
	end
	
	pNPCUnit:ClearDamageEffect_LUA( 2 )
				
end



--------------------------------------------------------------------

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end



--------------------------------------------------------------------
-- Frame move functions --
--------------------------------------------------------------------

function SHADOW_SNIPER_SIDE_DAMAGE_COMMON_FRAME_MOVE( pKTDXApp , pX2Game,  pNPCUnit )

	local pEffect = pNPCUnit:GetDamageEffect_LUA(2)
	local pDamageEffect = pX2Game:GetDamageEffect()
	
	if pEffect ~= nil then 
		pDamageEffect:DestroyInstance( pEffect )	
		pNPCUnit:ClearDamageEffect_LUA( 2 )
	end
	
	pNPCUnit:SetVector_LUA(0, D3DXVECTOR3(0, 0, 0) )
	pNPCUnit:SetAddRotateDegree_LUA(0, 0, 0)
	
end

function SHADOW_SNIPER_SIDE_COMMON_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------
function AimingTarget(pNPCUnit, rotateSpeedX, rotateSpeedY, rotateSpeedZ, bRotateNPC)

	local vTargetPos = pNPCUnit:GetNearestUserPos()
	local vFirePos = pNPCUnit:GetPos()
	
	local vDirFire = D3DXVECTOR3(vTargetPos.x - vFirePos.x, vTargetPos.y - vFirePos.y, vTargetPos.z - vFirePos.z)
	local vFireDegree = GetDirVecToDegree( vDirFire )

	local vRotDegree = pNPCUnit:GetRotateDegree()

	
	local vAddRotDegree = pNPCUnit:GetVector_LUA(0)
	
	--------
	if vAddRotDegree.y > 90 or vAddRotDegree.y < -90 then
	
		if vAddRotDegree.y > 90 then
			vAddRotDegree.y = vAddRotDegree.y - 180
		elseif vAddRotDegree.y < -90 then
			vAddRotDegree.y = vAddRotDegree.y + 180
		end
		
		local bIsRight		= pNPCUnit:GetIsRight()	
		if bIsRight == true then
			pNPCUnit:SetIsRight(false)
		else
			pNPCUnit:SetIsRight(true)
		end	
		vRotDegree.y = vRotDegree.y + 180
	end
	
	
	
	vRotDegree.x = vRotDegree.x + vAddRotDegree.x
	vRotDegree.y = vRotDegree.y + vAddRotDegree.y
	vRotDegree.z = vRotDegree.z + vAddRotDegree.z
	
	
	------------------------------------------
	local FireRotateY = vFireDegree.y - vRotDegree.y
	while FireRotateY > 360 do
		FireRotateY = FireRotateY - 360
	end
	
	while FireRotateY < -360 do
		FireRotateY = FireRotateY + 360
	end
	
	if FireRotateY > 180 then
		FireRotateY = FireRotateY - 360
	end
	
	if FireRotateY < -180 then
		FireRotateY = FireRotateY + 360
	end
	
	------------------------------------------
	local FireRotateX = vFireDegree.x - vRotDegree.x
	while FireRotateX > 360 do
		FireRotateX = FireRotateX - 360
	end
	
	while FireRotateX < -360 do
		FireRotateX = FireRotateX + 360
	end
	
	if FireRotateX > 180 then
		FireRotateX = FireRotateX - 360
	end
	
	if FireRotateX < -180 then
		FireRotateX = FireRotateX + 360
	end
	
	------------------------------------------
	local FireRotateZ = vFireDegree.z - vRotDegree.z
	while FireRotateZ > 360 do
		FireRotateZ = FireRotateZ - 360
	end
	
	while FireRotateZ < -360 do
		FireRotateZ = FireRotateZ + 360
	end
	
	if FireRotateZ > 180 then
		FireRotateZ = FireRotateZ - 360
	end
	
	if FireRotateZ < -180 then
		FireRotateZ = FireRotateZ + 360
	end
	
	------------------------------------------
--[[
	if FireRotateY > 0 and FireRotateY < rotateSpeedY then
		FireRotateY = FireRotateY
	end
--]]
	
	if FireRotateY > rotateSpeedY then
		FireRotateY = rotateSpeedY
	end
	
--[[			
	if FireRotateY < 0 and FireRotateY > -rotateSpeedY then
		FireRotateY = FireRotateY
	end
--]]	
	
	if FireRotateY < -rotateSpeedY then
		FireRotateY = -rotateSpeedY
	end
	
	------------------------------------------
--[[		
	if FireRotateX > 0 and FireRotateX < rotateSpeedX then
		FireRotateX = FireRotateX
	end
--]]	
	
	if FireRotateX > rotateSpeedX then
		FireRotateX = rotateSpeedX
	end
	
--[[		
	if FireRotateX < 0 and FireRotateX > -rotateSpeedX then
		FireRotateX = FireRotateX
	end
--]]	
	
	if FireRotateX < -rotateSpeedX then
		FireRotateX = -rotateSpeedX
	end
	
	------------------------------------------
--[[		
	if FireRotateZ > 0 and FireRotateZ < rotateSpeedZ then
		FireRotateZ = FireRotateZ
	end
--]]	
	
	if FireRotateZ > rotateSpeedZ then
		FireRotateZ = rotateSpeedZ
	end
--[[	
	if FireRotateZ < 0 and FireRotateZ > -rotateSpeedZ then
		FireRotateZ = FireRotateZ
	end
--]]	
	if FireRotateZ < -rotateSpeedZ then
		FireRotateZ = -rotateSpeedZ
	end
	
	
	
	------------------------------------------
	vAddRotDegree.y = vAddRotDegree.y + FireRotateY
	vAddRotDegree.x = vAddRotDegree.x + FireRotateX
	vAddRotDegree.z = vAddRotDegree.z + FireRotateZ
	
	if bRotateNPC == true then
		pNPCUnit:SetAddRotateDegree_LUA(vAddRotDegree.x, vAddRotDegree.y, vAddRotDegree.z)
	end
	pNPCUnit:SetVector_LUA(0, vAddRotDegree)

end


--------------------------------------------------------------------
function SHADOW_SNIPER_SIDE_ATTACK_A_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetVector_LUA(0, D3DXVECTOR3(0, 0, 0) )
	pNPCUnit:SetAddRotateDegree_LUA(0, 0, 0)
end

--------------------------------------------------------------------
function SHADOW_SNIPER_SIDE_ATTACK_A_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	AimingTarget(pNPCUnit, 0.3, 1.0,  0.3, true)

	if pNPCUnit:AnimEventTimer_LUA( 0.8333 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vPos = pNPCUnit:GetBonePos_LUA("SN_AttackA_Ready_Dummy")
		local vRotDegree = pNPCUnit:GetRotateDegree()
		
		
		local pEffect = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_SIDE_LASER_READY_NO_DAMAGE", vPos , vLandPos.y, vRotDegree )		
		
		pNPCUnit:SetDamageEffect_LUA( 2 , pEffect )
		pNPCUnit:SetTimerRestart(0)
	end	
	
end


--------------------------------------------------------------------
function SHADOW_SNIPER_SIDE_ATTACK_A_AIMING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	AimingTarget(pNPCUnit, 0.3, 1.0,  0.3, true)
	
	pEffect = pNPCUnit:GetDamageEffect_LUA( 2 )
	if pEffect ~= nil then
		pMainMeshPlayer = pEffect:GetMainEffect()
		if pMainMeshPlayer ~= nil then
			local vRotDegree = pNPCUnit:GetRotateDegree()
			local vAddRotDegree = pNPCUnit:GetVector_LUA(0)	
			
			local vBonePos = pNPCUnit:GetBonePos_LUA("SN_AttackA_Ready_Dummy")
			
			vRotDegree.x = vRotDegree.x + vAddRotDegree.x
			vRotDegree.y = vRotDegree.y + vAddRotDegree.y
			vRotDegree.z = vRotDegree.z + vAddRotDegree.z							
			
			pMainMeshPlayer:SetRotateDegree( vRotDegree )
			pMainMeshPlayer:SetPos( vBonePos )
		end
	end	
	
	
end


--------------------------------------------------------------------
function SHADOW_SNIPER_SIDE_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )




	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		local pEffect = pNPCUnit:GetDamageEffect_LUA(2)
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if pEffect ~= nil then
			pDamageEffect:DestroyInstance( pEffect )
			pNPCUnit:ClearDamageEffect_LUA( 2 )
		end

		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vPos = pNPCUnit:GetPos()
		local vRotDegree = pNPCUnit:GetRotateDegree()
		
		local vAddRotDegree = pNPCUnit:GetVector_LUA(0)
		
		vRotDegree.x = vRotDegree.x + vAddRotDegree.x
		vRotDegree.y = vRotDegree.y + vAddRotDegree.y
		vRotDegree.z = vRotDegree.z + vAddRotDegree.z
		
		
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_SIDE_PRE_LASER", vPos , vLandPos.y, vRotDegree )
	
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		

	
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.1 ) then
		
		
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vPos = pNPCUnit:GetPos()
		local vRotDegree = pNPCUnit:GetRotateDegree()
		
		local vAddRotDegree = pNPCUnit:GetVector_LUA(0)		
		
		vRotDegree.x = vRotDegree.x + vAddRotDegree.x
		vRotDegree.y = vRotDegree.y + vAddRotDegree.y
		vRotDegree.z = vRotDegree.z + vAddRotDegree.z		
		
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_SIDE_LASER_NO_DAMAGE", vPos , vLandPos.y, vRotDegree )		
--[[		
		if pNPCUnit:GetIsRight() == true then
			vPos.x = vPos.x - 170
		else
			vPos.x = vPos.x + 170
		end
		
		vPos.y = vPos.y - 30
--]]		
		local pEffect = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_SIDE_LASER", vPos , vLandPos.y, vRotDegree )
		
		pNPCUnit:SetDamageEffect_LUA( 0, pEffect )
	end
	
	
	
	if pNPCUnit:GetNowAnimationTime() > 1.1 then
	
		AimingTarget(pNPCUnit, 0.1, 0.1,  0.1, false)		
	
		pEffect = pNPCUnit:GetDamageEffect_LUA( 0 )
		if pEffect ~= nil then
			pMainMeshPlayer = pEffect:GetMainEffect()
			if pMainMeshPlayer ~= nil then
				local vRotDegree = pNPCUnit:GetRotateDegree()
				local vAddRotDegree = pNPCUnit:GetVector_LUA(0)	
				
				vRotDegree.x = vRotDegree.x + vAddRotDegree.x
				vRotDegree.y = vRotDegree.y + vAddRotDegree.y
				vRotDegree.z = vRotDegree.z + vAddRotDegree.z							
				
				pMainMeshPlayer:SetRotateDegree( vRotDegree )
			end
		end
	
	
	end 
	
	
	
end


--------------------------------------------------------------------
function SHADOW_SNIPER_SIDE_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetVector_LUA(0, D3DXVECTOR3(0, 0, 0) )
	pNPCUnit:SetAddRotateDegree_LUA(0, 0, 0)
end



