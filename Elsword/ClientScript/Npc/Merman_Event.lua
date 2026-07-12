-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/1/3 / 머맨/
	 AttackA, ComboA, ComboB, JumpAttack, StandUp Attack(Front/ Back)
--]]

INIT_SYSTEM =
{
	UNIT_WIDTH		= 110.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}
--------------------------------------------------------------------------
INIT_DEVICE =
{
	READY_TEXTURE =
	{
        "NUI_MERMAN01.tga",
        "NUI_MERMAN02.tga",
        "NUI_MERMAN03.tga",
	},

	READY_SOUND =
	{
	"Squish_Hit01.wav",
	"Squish_Hit02.wav",
	"Squish01.ogg",
	"Squish02.ogg",
	"Squish03.ogg",
	"Merman_Swing01.ogg",
	"Merman_Swing02.ogg",
	},
}
--------------------------------------------------------------------------
INIT_MOTION =
{
	MOTION_FILE_NAME		= "Motion_MERMAN.x",
	MOTION_CHANGE_TEX_XET	= "NUI_MERMAN_EVENT.xet",
	MOTION_ANI_TEX_XET		= "NUI_MERMAN_EVENT.xet",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,

	WALK_SPEED			= 200,
	RUN_SPEED			= 480,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MAX_HP				= 20000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],

	FALL_DOWN			= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE =
{
	{ STATE_NAME = "MERMAN_START",				},

	{ STATE_NAME = "MERMAN_WAIT",				},
	{ STATE_NAME = "MERMAN_WAIT_HABIT",			},

	{ STATE_NAME = "MERMAN_WALK",				LUA_STATE_END_FUNC = "MERMAN_WALK_STATE_END"			},
    { STATE_NAME = "MERMAN_DASH",               },
    { STATE_NAME = "MERMAN_DASH_END",			},

	{ STATE_NAME = "MERMAN_JUMP_UP",			},
	{ STATE_NAME = "MERMAN_JUMP_DOWN",			LUA_STATE_END_FUNC = "MERMAN_JUMP_DOWN_STATE_END"		},
	{ STATE_NAME = "MERMAN_JUMP_UP_DIR",		},
	{ STATE_NAME = "MERMAN_JUMP_DOWN_DIR",		LUA_STATE_END_FUNC = "MERMAN_JUMP_DOWN_DIR_STATE_END"	},
	{ STATE_NAME = "MERMAN_JUMP_LANDING",		},

	{ STATE_NAME = "MERMAN_ATTACK",	    		},
	{ STATE_NAME = "MERMAN_COMBOA",	    		},
	{ STATE_NAME = "MERMAN_COMBOB", 			},
	{ STATE_NAME = "MERMAN_JUMP_ATTACK",		},
    { STATE_NAME = "MERMAN_JUMP_FOR_ATTACK",	},

	--리액션 관련
	{ STATE_NAME = "MERMAN_DAMAGE_SMALL_LAND_FRONT",	LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_SMALL_FRAME_MOVE"	    },
   	{ STATE_NAME = "MERMAN_DAMAGE_SMALL_LAND_BACK",		LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_SMALL_FRAME_MOVE"  	},
	{ STATE_NAME = "MERMAN_DAMAGE_BIG_LAND_FRONT",		LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_BIG_FRAME_MOVE"		},
	{ STATE_NAME = "MERMAN_DAMAGE_BIG_LAND_BACK",		LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_BIG_FRAME_MOVE"		},
	{ STATE_NAME = "MERMAN_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_DOWN_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "MERMAN_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_DOWN_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "MERMAN_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "MERMAN_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "MERMAN_DAMAGE_AIR",					},
	{ STATE_NAME = "MERMAN_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "MERMAN_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "MERMAN_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "MERMAN_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "MERMAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
    { STATE_NAME = "MERMAN_DAMAGE_REVENGE"              },
	{ STATE_NAME = "MERMAN_STAND_UP_FRONT",				},
	{ STATE_NAME = "MERMAN_STAND_UP_BACK",				},
	{ STATE_NAME = "MERMAN_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "MERMAN_STAND_UP_ATTACK_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "MERMAN_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "MERMAN_STAND_UP_ATTACK_BACK_FRAME_MOVE"	},

	{ STATE_NAME = "MERMAN_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "MERMAN_DYING_LAND_STATE_START",	},
	{ STATE_NAME = "MERMAN_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "MERMAN_DYING_LAND_STATE_START",	},
	{ STATE_NAME = "MERMAN_DYING_SKY",					LUA_STATE_START_FUNC = "MERMAN_DYING_LAND_STATE_START",	},

	START_STATE					= "MERMAN_START",
	WAIT_STATE					= "MERMAN_WAIT",

	SMALL_DAMAGE_LAND_FRONT		= "MERMAN_DAMAGE_SMALL_LAND_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "MERMAN_DAMAGE_SMALL_LAND_BACK",
	BIG_DAMAGE_LAND_FRONT		= "MERMAN_DAMAGE_BIG_LAND_FRONT",
	BIG_DAMAGE_LAND_BACK		= "MERMAN_DAMAGE_BIG_LAND_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "MERMAN_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "MERMAN_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "MERMAN_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "MERMAN_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "MERMAN_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "MERMAN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "MERMAN_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING		= "MERMAN_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "MERMAN_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "MERMAN_DAMAGE_REVENGE",

	DYING_LAND_FRONT			= "MERMAN_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "MERMAN_DYING_LAND_BACK",
	DYING_SKY					= "MERMAN_DYING_SKY",
	
	DAMAGE_EXTRA_STATES         = {"MERMAN_DAMAGE_AIR_FALL","MERMAN_STAND_UP_FRONT","MERMAN_STAND_UP_BACK","MERMAN_STAND_UP_ATTACK_FRONT","MERMAN_STAND_UP_ATTACK_BACK",
	"MERMAN_JUMP_DOWN","MERMAN_JUMP_LANDING",},	

	REVENGE_ATTACK				= "",
	
	COMMON_FRAME_FUNC 			= "MERMAN_COMMON_FRAME_FUNC",
}
--------------------------------------------------------------------------
INIT_AI =
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 300,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,

		DIR_CHANGE_INTERVAL = 0.7,

		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 50,   --  70,
		FAR_WALK_RATE		= 50,   -- 30,

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
		PATROL_RANGE			= 150,
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
--------------------------------------------------------------------------
MERMAN_START =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"MERMAN_WAIT",	"CT_MERMAN_WAIT"    },
	},

	CT_MERMAN_WAIT =
	{
		STATE_TIME_OVER			= 3,
	},
}
--------------------------------------------------------------------------
MERMAN_WAIT =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	PASSIVE_SPEED_X				= 0,

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"MERMAN_ATTACK",			"CT_MERMAN_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"MERMAN_JUMP_FOR_ATTACK",	"CT_MERMAN_JUMP_FOR_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"MERMAN_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"MERMAN_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"MERMAN_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"MERMAN_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"MERMAN_JUMP_DOWN_DIR",	},
	},

	CT_MERMAN_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 30,
	},

	CT_MERMAN_JUMP_FOR_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 20,
	},

    TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
 		{ RATE = 10,		MESSAGE = STR_ID_1469 },
 	},
}
--------------------------------------------------------------------------
MERMAN_WAIT_HABIT =
{
	ANIM_NAME	= "WaitHabit",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT			= TRUE,
	CAN_PASS_UNIT			= FALSE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",			},
	},
}
--------------------------------------------------------------------------
MERMAN_WALK =
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0			= { 0.060, "Step.ogg" },
    SOUND_PLAY1			= { 0.881, "Step.ogg" },

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"MERMAN_ATTACK",			"CT_MERMAN_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"MERMAN_JUMP_FOR_ATTACK",	"CT_MERMAN_JUMP_FOR_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"MERMAN_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"MERMAN_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"MERMAN_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"MERMAN_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"MERMAN_JUMP_DOWN_DIR",	},
	},

	CT_MERMAN_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 30,
	},

	CT_MERMAN_JUMP_FOR_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
MERMAN_DASH =
{
	ANIM_NAME	= "Dash",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],

	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_INTERVAL_TIME0	= 1,

	SOUND_PLAY0			= { 0.10, "squish03.ogg" },	
	SOUND_PLAY1			= { 0.50, "squish02.ogg" },	
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN_DIR",		},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MERMAN_JUMP_FOR_ATTACK",	"CT_MERMAN_JUMP_FOR_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"MERMAN_DASH_END",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"MERMAN_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"MERMAN_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"MERMAN_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"MERMAN_JUMP_DOWN_DIR",	},
	},

	CT_MERMAN_JUMP_FOR_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 20,
	},

	TALK_BOX =
	{
		{ RATE = 15, MESSAGE = STR_ID_2372 },
		{ RATE = 15, MESSAGE = STR_ID_1456 },
 	}
 }
 --------------------------------------------------------------------------
MERMAN_DASH_END =
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",			},
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X		= 0,
	SPEED_Y		= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y	= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MERMAN_JUMP_ATTACK",	"CT_MERMAN_JUMP_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"MERMAN_JUMP_DOWN",		},
	},

	CT_MERMAN_JUMP_ATTACK =
	{
		DISTANCE_TO_TARGET_NEAR		= 400,
		SMALL_THEN_Y_SPEED			= 0,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_DOWN =
{
	ANIM_NAME		= "JumpDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,


	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_UP_DIR =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y	= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"MERMAN_JUMP_ATTACK",	"CT_MERMAN_JUMP_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"MERMAN_JUMP_DOWN_DIR",	},
	},

	CT_MERMAN_JUMP_ATTACK =
	{
		DISTANCE_TO_TARGET_NEAR		= 400,
		SMALL_THEN_Y_SPEED			= 0,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_DOWN_DIR =
{
	ANIM_NAME		= "JumpDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],


	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_LANDING =
{
	ANIM_NAME		= "JumpLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    --SOUND_PLAY0		= { 0.01, "Squish_Hit01.wav" },

	SPEED_X		= 0,
	SPEED_Y		= 0,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",		},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_REVENGE = 
{
	ANIM_NAME		= "DamageRevenge",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",		},
	},
    --SOUND_PLAY0			= { 0.356, "AirShip_SwordMan_Slash2.ogg" },
}
--------------------------------------------------------------------------
MERMAN_ATTACK =
{
	ANIM_NAME	= "AttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0			= { 0.80, "Merman_Swing01.ogg" },
	SOUND_PLAY1			= { 1.20, "squish01.ogg" },
	
	SPEED_X		= 0,
	SPEED_Y		= 0,

	VIEW_TARGET	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",							},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MERMAN_COMBOA",	"CT_MERMAN_COMBOA",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MERMAN_COMBOB",	"CT_MERMAN_COMBOB",	},
	},

	CT_MERMAN_COMBOA =
	{
		ANIM_EVENT_TIMER	= 1.100,
		RATE				= 70,
		ATTACK_SUCCESS		= TRUE,
	},

    CT_MERMAN_COMBOB =
	{
		ANIM_EVENT_TIMER	= 1.100,
		RATE				= 30,
		ATTACK_SUCCESS		= TRUE,
	},

	ATTACK_TIME0	= { 0.795, 1.100, },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC	= 1.0,
		},

		BACK_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y	= 0.0,

		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
	},
}
--------------------------------------------------------------------------
MERMAN_COMBOA =
{
	ANIM_NAME	= "AttackAComboA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0			= { 0.60, "Merman_Swing02.ogg" },
	SOUND_PLAY1			= { 0.80, "squish02.ogg" },
	
	SPEED_X		= 10,
	SPEED_Y		= 0,

	VIEW_TARGET	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1473 },
		{ RATE = 10, MESSAGE = STR_ID_1474 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT_HABIT",	},
	},

	SLASH_TRACE					= { 0.62, 0.71 },
	ATTACK_TIME0				= { 0.62, 0.71, },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
}
--------------------------------------------------------------------------
MERMAN_COMBOB =
{
	ANIM_NAME	= "AttackAComboB",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0			= { 0.60, "Merman_Swing01.ogg" },
	SOUND_PLAY1			= { 0.10, "squish03.ogg" },
	
	SPEED_X		= 10,
	SPEED_Y		= 0,

	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1473 },
		{ RATE = 10, MESSAGE = STR_ID_1474 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT_HABIT",	},
	},

	SLASH_TRACE					= { 0.1, 1.43 },
	ATTACK_TIME0				= { 0.604, 0.7, },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],

		DAMAGE =
		{
			PHYSIC		= 0.5,
		},

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"] * 2.0,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 2.0,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_ATTACK =
{
	ANIM_NAME		= "JumpAttack",
    ANIM_SPEED		= 1.3,
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0	= { 0.421, "AirShip_SwordMan_Slash1.ogg" },

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"MERMAN_JUMP_LANDING",	},
	},

	ATTACK_TIME0	= { 0.421, 100, },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC	= 1.0,
		},

		BACK_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y	= 0.0,

		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
	},
}
--------------------------------------------------------------------------
MERMAN_JUMP_FOR_ATTACK =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	VIEW_TARGET	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,

	SOUND_PLAY0			= { 0.40, "Merman_Swing01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],			"MERMAN_JUMP_ATTACK",		},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_SMALL_LAND_FRONT =
{
	ANIM_NAME		= "DamageSmallFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1475 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_SMALL_LAND_BACK =
{
	ANIM_NAME		= "DamageSmallBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,


	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1475 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_BIG_LAND_FRONT =
{
	ANIM_NAME		= "DamageBigFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1476 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_BIG_LAND_BACK =
{
	ANIM_NAME		= "DamageBigBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1476 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME		= "DamageDownFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_2569 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MERMAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"MERMAN_STAND_UP_ATTACK_FRONT",	"CT_MERMAN_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MERMAN_STAND_UP_FRONT",			},
	},

	CT_MERMAN_STAND_UP_ATTACK_FRONT =
	{
		ANIM_PLAY_COUNT	= 1,
		RATE			= 50,
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_DOWN_BACK =
{
	ANIM_NAME		= "DamageDownBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_2569 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"MERMAN_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"MERMAN_STAND_UP_ATTACK_BACK",	"CT_MERMAN_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"MERMAN_STAND_UP_BACK",			},
	},

	CT_MERMAN_STAND_UP_ATTACK_BACK =
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 50,
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_FLY_FRONT =
{
	ANIM_NAME		= "DamageAirFlyFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_DAMAGE_DOWN_FRONT",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_FLY_BACK =
{
	ANIM_NAME		= "DamageAirFlyBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_AIR =
{
	ANIM_NAME		= "DamageAirSmall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_AIR_DOWN =
{
	ANIM_NAME		= "DamageAirDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_AIR_UP =
{
	ANIM_NAME		= "DamageAirUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"MERMAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_DAMAGE_AIR_DOWN_LANDING",	},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_2569 },
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_AIR_FALL =
{
	ANIM_NAME		= "DamageAirFall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"MERMAN_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"MERMAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
MERMAN_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME		= "DamageAirDownLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0			= { 0.40, "Squish_Hit01.wav" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MERMAN_STAND_UP_ATTACK_FRONT",	"CT_MERMAN_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_STAND_UP_FRONT",	},
	},

	CT_MERMAN_STAND_UP_ATTACK_FRONT =
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 50,
	},
}
--------------------------------------------------------------------------
MERMAN_STAND_UP_FRONT =
{
	ANIM_NAME		= "DamageStandUpFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",		},
	},
}
--------------------------------------------------------------------------
MERMAN_STAND_UP_BACK =
{
	ANIM_NAME		= "DamageStandUpBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",      },
	},
}
--------------------------------------------------------------------------
MERMAN_STAND_UP_ATTACK_FRONT =
{
	ANIM_NAME		= "StandUpAttackFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	ANIM_WAIT_TIME	= 1,

	MIND_FLAG	= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0			= { 0.60, "Merman_Swing02.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT",		},
	},

	ATTACK_TIME0	= { 0.589, 0.668, },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC	= 1.5,
		},

		BACK_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y	= 0.0,

		STOP_TIME_ATT		= 0.0,
		STOP_TIME_DEF		= 0.0,
		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
		CLEAR_SCREEN		= 0.0,
		
		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
	},

}
--------------------------------------------------------------------------
MERMAN_STAND_UP_ATTACK_BACK =
{
	ANIM_NAME		= "StandUpAttackBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	ANIM_WAIT_TIME	= 1,

	MIND_FLAG	= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	FLIP_DIR_END	= TRUE,

	SOUND_PLAY0			= { 0.60, "Merman_Swing01.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MERMAN_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MERMAN_WAIT", },
	},

	ATTACK_TIME0	= { 0.641, 0.8, },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC	= 1.5,
		},

		BACK_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y	= 0.0,

		STOP_TIME_ATT		= 0.0,
		STOP_TIME_DEF		= 0.0,
		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
		CLEAR_SCREEN		= 0.0,
		
		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1477 },
	},
}
--------------------------------------------------------------------------
MERMAN_DYING_LAND_FRONT =
{
	ANIM_NAME		= "DamageDownFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
MERMAN_DYING_LAND_BACK =
{
	ANIM_NAME		= "DamageDownBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
MERMAN_DYING_SKY =
{
	ANIM_NAME		= "DamageAirDownLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------
function MERMAN_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function MERMAN_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function MERMAN_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function MERMAN_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Squish01.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Squish02.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		pNPCUnit:PlaySound_LUA( "Squish03.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function MERMAN_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )

	if pSeq ~= nil then
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	end

	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	DELETE_TITLE( pKTDXApp, pX2Game, pNPCUnit )
end

--------------------------------------------------------------------------

function DELETE_TITLE ( pKTDXApp, pX2Game, pNPCUnit )

	local pMajorParticle = pX2Game:GetMajorParticle()
	
	if pMajorParticle ~= nil then
		
		local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
		
		if pParticle ~= nil then
			pMajorParticle:DestroyInstance( pParticle )
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end
		
	end
	
end
--------------------------------------------------------------------------
function MERMAN_COMMON_FRAME_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	local pMajorParticle = pX2Game:GetMajorParticle()
	
	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	
	if pParticle == nil then
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )
        vPos.y = vPos.y + 160

        local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit,"Hamel_Invader_Title", vPos, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
        pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
	elseif pMajorParticle:IsLiveInstance( pParticle ) == true then
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )
		vPos.y = vPos.y + 160
		pParticle:SetPosition( vPos )
	end
	
end
-----------------------------------------------------------------------------