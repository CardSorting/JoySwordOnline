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
	
	SUMMON_TIME			= 180,
}



INIT_STATE = 
{
	{ STATE_NAME = "SNIPER_START",							},
	
	{ STATE_NAME = "SNIPER_WAIT",							},
	{ STATE_NAME = "SNIPER_WAIT_HABIT",						},
	
	{ STATE_NAME = "SNIPER_WALK",							LUA_STATE_END_FUNC = "SNIPER_WALK_STATE_END"							},

	
	{ STATE_NAME = "SNIPER_DASH",							},
	{ STATE_NAME = "SNIPER_DASH_END",						},
		

	{ STATE_NAME = "SNIPER_JUMP_UP",							},
	{ STATE_NAME = "SNIPER_JUMP_DOWN",						LUA_STATE_END_FUNC = "SNIPER_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "SNIPER_JUMP_UP_DIR",						},
	{ STATE_NAME = "SNIPER_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "SNIPER_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "SNIPER_JUMP_LANDING",					},

		
	{ STATE_NAME = "SNIPER_ATTACK_A_READY",		LUA_FRAME_MOVE_FUNC = "SNIPER_ATTACK_A_READY_FRAME_MOVE",	STATE_COOL_TIME = 5, },
	{ STATE_NAME = "SNIPER_ATTACK_A_READY_LOOP", },
	{ STATE_NAME = "SNIPER_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "SNIPER_ATTACK_A_FRAME_MOVE", },
	
	{ STATE_NAME = "SNIPER_END",							},
			

	
	--리액션 관련
	{ STATE_NAME = "SNIPER_DAMAGE_FRONT", LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"},
	{ STATE_NAME = "SNIPER_DAMAGE_BACK",  LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"},
	{ STATE_NAME = "SNIPER_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "SNIPER_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "SNIPER_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "SNIPER_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "SNIPER_DAMAGE_FLY_FRONT",		LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SNIPER_DAMAGE_FLY_BACK",		LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"			},
	{ STATE_NAME = "SNIPER_DAMAGE_AIR",				LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SNIPER_DAMAGE_AIR_DOWN",		LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"			},
	{ STATE_NAME = "SNIPER_DAMAGE_AIR_UP",			LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SNIPER_DAMAGE_AIR_FALL",		LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"			},
	{ STATE_NAME = "SNIPER_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "SNIPER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "SNIPER_STAND_UP_FRONT",			LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"		},
	{ STATE_NAME = "SNIPER_STAND_UP_BACK",			LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"		},
	
	{ STATE_NAME = "SNIPER_DAMAGE_REVENGE",			LUA_STATE_START_FUNC = "SNIPER_DAMAGE_COMMON_FRAME_MOVE"		},
	
	
	
	
	{ STATE_NAME = "SNIPER_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "SNIPER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SNIPER_DYING_LAND_BACK",					LUA_STATE_START_FUNC = "SNIPER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SNIPER_DYING_SKY",						LUA_STATE_START_FUNC = "SNIPER_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "SNIPER_START",
	WAIT_STATE					= "SNIPER_WAIT",
	
	SUMMON_END_STATE			= "SNIPER_END",
	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "SNIPER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "SNIPER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "SNIPER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "SNIPER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "SNIPER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "SNIPER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "SNIPER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "SNIPER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "SNIPER_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "SNIPER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "SNIPER_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "SNIPER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "SNIPER_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "SNIPER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"SNIPER_DAMAGE_AIR_FALL","SNIPER_STAND_UP_FRONT","SNIPER_STAND_UP_BACK","SNIPER_JUMP_DOWN","SNIPER_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "SNIPER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "SNIPER_DYING_LAND_BACK",
	DYING_SKY					= "SNIPER_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "SNIPER_COMMON_FRAME_MOVE_FUNC",	
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
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,
		DEST_GAP			= 800,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 500,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   --  70,
		FAR_WALK_RATE		= 0,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0, --50,		
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




SNIPER_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"SNIPER_WAIT",		"CT_SNIPER_WAIT"				},
	},
	
	CT_SNIPER_WAIT = 
	{
		STATE_TIME_OVER			= 2.8,
	},
}



SNIPER_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN",					},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SNIPER_ATTACK_A_READY",			"CT_SNIPER_ATTACK_A_READY",	},
				
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SNIPER_WAIT_HABIT",					"CT_SNIPER_WAIT_HABIT",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"SNIPER_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"SNIPER_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"SNIPER_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"SNIPER_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SNIPER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"SNIPER_JUMP_DOWN_DIR",				},
	},
	

	CT_SNIPER_ATTACK_A_READY = 
	{
		IS_ANOTHER_TEAM			= TRUE,
		RATE					= 50,
	},

	
	CT_SNIPER_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE					= 60,
		HAVE_TARGET				= 0,		-- false
	},
		
}




SNIPER_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_WAIT",						},
	},
}


SNIPER_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}	


SNIPER_WALK = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.001, "SNIPER_Walk.ogg" },

	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN_DIR",				},
		
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SNIPER_ATTACK_A_READY",			"CT_SNIPER_ATTACK_A_READY",	},
				
	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"SNIPER_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"SNIPER_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"SNIPER_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"SNIPER_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SNIPER_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"SNIPER_JUMP_DOWN_DIR",				},
	},
	
	
	CT_SNIPER_ATTACK_A_READY = 
	{
		IS_ANOTHER_TEAM			= TRUE,
		RATE					= 50,
	},

}


SNIPER_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	LAND_CONNECT					= FALSE,
	
	--SUPER_ARMOR					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SNIPER_JUMP_DOWN_DIR",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"SNIPER_DASH_END",						"CF_SNIPER_DASH_END",				},		
	},
}





SNIPER_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	--SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_WAIT",						},
	},
}




SNIPER_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"SNIPER_JUMP_DOWN",			},
		
	},	
}

SNIPER_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SNIPER_JUMP_LANDING",				},
	},
}

SNIPER_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"SNIPER_JUMP_DOWN_DIR",				},
	},
	
}

SNIPER_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SNIPER_JUMP_LANDING",				},
	},
}

SNIPER_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0					= { 0.001, "SNIPER_JumpAttackLanding.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_WAIT",						},
	},
}



SNIPER_ATTACK_A_READY = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_ATTACK_A_READY_LOOP",	},		
	},	
}


SNIPER_ATTACK_A_READY_LOOP = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"SNIPER_ATTACK_A","CT_SNIPER_ATTACK_A"	},		
	},	
	
	CT_SNIPER_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		STATE_TIME_OVER = 2,
	},
}

SNIPER_ATTACK_A = 
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
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_WAIT",						},
	},	
}


SNIPER_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_WAIT",												},
	},
}


SNIPER_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_WAIT",												},
	},
}

SNIPER_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_WAIT",												},
	},
}

SNIPER_DAMAGE_BIG_BACK = 
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_WAIT",												},
	},
}

SNIPER_DAMAGE_BIG_FRONT = 
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_WAIT",												},
	},
}





SNIPER_DAMAGE_DOWN_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SNIPER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_STAND_UP_FRONT",			},
	},
	
}

SNIPER_DAMAGE_DOWN_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SNIPER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SNIPER_STAND_UP_BACK",			},
	},
	
}

SNIPER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SNIPER_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

SNIPER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SNIPER_DAMAGE_DOWN_BACK",		},
	},
}

SNIPER_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SNIPER_WAIT",					},
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}

SNIPER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SNIPER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

SNIPER_DAMAGE_AIR_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"SNIPER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SNIPER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

SNIPER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"SNIPER_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SNIPER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

SNIPER_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_STAND_UP_FRONT",			},
	},
	
}

SNIPER_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_WAIT",				},
	},
}

SNIPER_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SNIPER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SNIPER_WAIT", },
	},		
}



SNIPER_DYING_LAND_FRONT = 
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
	
SNIPER_DYING_LAND_BACK = 
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

SNIPER_DYING_SKY = 
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

function SNIPER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function SNIPER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function SNIPER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function SNIPER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function SNIPER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function SNIPER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function SNIPER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function SNIPER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
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
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end







function SNIPER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
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

function SNIPER_DAMAGE_COMMON_FRAME_MOVE( pKTDXApp , pX2Game,  pNPCUnit )

	local pEffect = pNPCUnit:GetDamageEffect_LUA(2)
	local pDamageEffect = pX2Game:GetDamageEffect()
	
	if pEffect ~= nil then 
		pDamageEffect:DestroyInstance( pEffect )	
		pNPCUnit:ClearDamageEffect_LUA( 2 )
	end
end

function SNIPER_COMMON_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	local pEffect = pNPCUnit:GetDamageEffect_LUA(2)
	local pDamageEffect = pX2Game:GetDamageEffect()
	
	if pEffect ~= nil then 
		if pNPCUnit:GetTimerElapsedTime( 0 ) > 3 then	
			pDamageEffect:DestroyInstance( pEffect )	
			pNPCUnit:ClearDamageEffect_LUA( 2 )
		end
	end
end



function SNIPER_ATTACK_A_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.8333 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vPos = pNPCUnit:GetBonePos_LUA("SN_AttackA_Ready_Dummy")
		local vRotDegree = pNPCUnit:GetRotateDegree()
		
		
		local pEffect = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_LASER_READY_NO_DAMAGE", vPos , vLandPos.y, vRotDegree )		
		
		pNPCUnit:SetDamageEffect_LUA( 2 , pEffect )
		pNPCUnit:SetTimerRestart(0)
	end	

end

--------------------------------------------------------------------

function SNIPER_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vPos = pNPCUnit:GetPos()
		local vRotDegree = pNPCUnit:GetRotateDegree()
		
		
--[[		if pNPCUnit:GetIsRight() == true then
			vPos.x = vPos.x - 170
		else
			vPos.x = vPos.x + 170
		end					
		--]]
		
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_PRE_LASER", vPos , vLandPos.y, vRotDegree )
	
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 1.1 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
		local vPos = pNPCUnit:GetPos()
		local vRotDegree = pNPCUnit:GetRotateDegree()
		
		
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "SHADOW_SNIPER_LASER_NO_DAMAGE", vPos , vLandPos.y, vRotDegree )		
		
		if pNPCUnit:GetIsRight() == true then
			vPos.x = vPos.x - 170
		else
			vPos.x = vPos.x + 170
		end
		
		vPos.y = vPos.y - 30
		
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "CSM_SHADOW_SNIPER_LASER", vPos , vLandPos.y, vRotDegree )
		
	end	
	
end


--------------------------------------------------------------------


function CF_SNIPER_DASH_END( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() < 0.1 then
		return false 
	end
	
	
 	local bIsRight = pNPCUnit:GetIsRight()
	local vStartPos = pNPCUnit:GetLineGroupStartPos()
	local vEndPos = pNPCUnit:GetLineGroupEndPos()

 	
 	if bIsRight == true and pNPCUnit:GetDistanceFrom(vEndPos) < 280.0 then
 	
 	    return true
 	    
   	end
   	
   	if bIsRight == false and pNPCUnit:GetDistanceFrom(vStartPos) < 280.0 then

		return true
  	
    end

    if pNPCUnit:GetStateTime() > 5.0 then
		return true
	end
    
    return false 	

end


