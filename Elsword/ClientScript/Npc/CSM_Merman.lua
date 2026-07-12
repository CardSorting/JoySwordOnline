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
	
	SUMMON_TIME			= 180,
}
--------------------------------------------------------------------------
INIT_STATE =
{
	{ STATE_NAME = "CSM_MERMAN_START",				},

	{ STATE_NAME = "CSM_MERMAN_WAIT",				},
	{ STATE_NAME = "CSM_MERMAN_WAIT_HABIT",			},

	{ STATE_NAME = "CSM_MERMAN_WALK",				LUA_STATE_END_FUNC = "CSM_MERMAN_WALK_STATE_END"			},
    { STATE_NAME = "CSM_MERMAN_DASH",               },
    { STATE_NAME = "CSM_MERMAN_DASH_END",			},

	{ STATE_NAME = "CSM_MERMAN_JUMP_UP",			},
	{ STATE_NAME = "CSM_MERMAN_JUMP_DOWN",			LUA_STATE_END_FUNC = "CSM_MERMAN_JUMP_DOWN_STATE_END"		},
	{ STATE_NAME = "CSM_MERMAN_JUMP_UP_DIR",		},
	{ STATE_NAME = "CSM_MERMAN_JUMP_DOWN_DIR",		LUA_STATE_END_FUNC = "CSM_MERMAN_JUMP_DOWN_DIR_STATE_END"	},
	{ STATE_NAME = "CSM_MERMAN_JUMP_LANDING",		},

	{ STATE_NAME = "CSM_MERMAN_ATTACK",	    		},
	{ STATE_NAME = "CSM_MERMAN_COMBOA",	    		},
	{ STATE_NAME = "CSM_MERMAN_COMBOB", 			},
	
	{ STATE_NAME = "CSM_MERMAN_END",						},

	--리액션 관련
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_SMALL_LAND_FRONT",	LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_SMALL_FRAME_MOVE"	    },
   	{ STATE_NAME = "CSM_MERMAN_DAMAGE_SMALL_LAND_BACK",		LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_SMALL_FRAME_MOVE"  	},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_BIG_LAND_FRONT",		LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_BIG_FRAME_MOVE"		},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_BIG_LAND_BACK",		LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_BIG_FRAME_MOVE"		},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_DOWN_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_DOWN_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_AIR",					},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
    { STATE_NAME = "CSM_MERMAN_DAMAGE_REVENGE"              },
	{ STATE_NAME = "CSM_MERMAN_STAND_UP_FRONT",				},
	{ STATE_NAME = "CSM_MERMAN_STAND_UP_BACK",				},
	{ STATE_NAME = "CSM_MERMAN_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_STAND_UP_ATTACK_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "CSM_MERMAN_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "CSM_MERMAN_STAND_UP_ATTACK_BACK_FRAME_MOVE"	},

	{ STATE_NAME = "CSM_MERMAN_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "CSM_MERMAN_DYING_LAND_STATE_START",	},
	{ STATE_NAME = "CSM_MERMAN_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "CSM_MERMAN_DYING_LAND_STATE_START",	},
	{ STATE_NAME = "CSM_MERMAN_DYING_SKY",					LUA_STATE_START_FUNC = "CSM_MERMAN_DYING_LAND_STATE_START",	},

	START_STATE					= "CSM_MERMAN_START",
	WAIT_STATE					= "CSM_MERMAN_WAIT",
	SUMMON_END_STATE			= "CSM_MERMAN_END",

	SMALL_DAMAGE_LAND_FRONT		= "CSM_MERMAN_DAMAGE_SMALL_LAND_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CSM_MERMAN_DAMAGE_SMALL_LAND_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CSM_MERMAN_DAMAGE_BIG_LAND_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CSM_MERMAN_DAMAGE_BIG_LAND_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_MERMAN_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_MERMAN_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CSM_MERMAN_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CSM_MERMAN_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CSM_MERMAN_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "CSM_MERMAN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CSM_MERMAN_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING		= "CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CSM_MERMAN_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "CSM_MERMAN_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"CSM_MERMAN_DAMAGE_AIR_FALL","CSM_MERMAN_STAND_UP_FRONT","CSM_MERMAN_STAND_UP_BACK","CSM_MERMAN_STAND_UP_ATTACK_FRONT","CSM_MERMAN_STAND_UP_ATTACK_BACK",
	"CSM_MERMAN_JUMP_DOWN","CSM_MERMAN_JUMP_LANDING",	},	

	DYING_LAND_FRONT			= "CSM_MERMAN_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CSM_MERMAN_DYING_LAND_BACK",
	DYING_SKY					= "CSM_MERMAN_DYING_SKY",

	REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
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
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,

		DIR_CHANGE_INTERVAL = 0.7,

		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   --  70,
		FAR_WALK_RATE		= 0,   -- 30,

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
CSM_MERMAN_START =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_MERMAN_WAIT",	"CT_CSM_MERMAN_WAIT"    },
	},

	CT_CSM_MERMAN_WAIT =
	{
		STATE_TIME_OVER			= 3,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_MERMAN_ATTACK",			"CT_CSM_MERMAN_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_MERMAN_COMBOA",			"CT_CSM_MERMAN_COMBOA",				},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"CSM_MERMAN_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"CSM_MERMAN_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"CSM_MERMAN_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_MERMAN_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"CSM_MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_MERMAN_JUMP_DOWN_DIR",	},
	},

	
	CT_CSM_MERMAN_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	
	CT_CSM_MERMAN_COMBOA =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER		= 1.100,
		RATE					= 100,
		ATTACK_SUCCESS			= TRUE,
	},

	CT_CSM_MERMAN_JUMP_FOR_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
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
CSM_MERMAN_WAIT_HABIT =
{
	ANIM_NAME	= "WaitHabit",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT			= TRUE,
	CAN_PASS_UNIT			= FALSE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",			},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_END = 
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
--------------------------------------------------------------------------
CSM_MERMAN_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_MERMAN_ATTACK",			"CT_CSM_MERMAN_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_MERMAN_COMBOA",			"CT_CSM_MERMAN_COMBOA",				},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"CSM_MERMAN_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"CSM_MERMAN_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"CSM_MERMAN_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_MERMAN_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"CSM_MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_MERMAN_JUMP_DOWN_DIR",	},
	},

	CT_CSM_MERMAN_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	
	CT_CSM_MERMAN_COMBOA =
	{
		IS_ANOTHER_TEAM			= TRUE,
		ANIM_EVENT_TIMER		= 1.100,
		RATE					= 100,
		ATTACK_SUCCESS			= TRUE,
	},

	CT_CSM_MERMAN_JUMP_FOR_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN_DIR",		},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"CSM_MERMAN_DASH_END",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"CSM_MERMAN_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"CSM_MERMAN_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_MERMAN_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"CSM_MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_MERMAN_JUMP_DOWN_DIR",	},
	},

	CT_CSM_MERMAN_JUMP_FOR_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},

	TALK_BOX =
	{
		{ RATE = 15, MESSAGE = STR_ID_2372 },
		{ RATE = 15, MESSAGE = STR_ID_1456 },
 	}
 }
 --------------------------------------------------------------------------
CSM_MERMAN_DASH_END =
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",			},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_JUMP_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_MERMAN_JUMP_DOWN",		},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_JUMP_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_JUMP_UP_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_MERMAN_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_JUMP_DOWN_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_JUMP_LANDING =
{
	ANIM_NAME		= "JumpLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0		= { 0.01, "Squish_Hit01.wav" },

	SPEED_X		= 0,
	SPEED_Y		= 0,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_REVENGE =
{
	ANIM_NAME		= "DamageRevenge",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",		},
	},
    --SOUND_PLAY0			= { 0.356, "AirShip_SwordMan_Slash2.ogg" },
}
--------------------------------------------------------------------------
CSM_MERMAN_ATTACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",							},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_MERMAN_COMBOB",	"CT_CSM_MERMAN_COMBOB",	},
	},

    CT_CSM_MERMAN_COMBOB =
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_EVENT_TIMER	= 1.100,
		RATE				= 100,
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

        CAN_REVENGE				= TRUE,
		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_COMBOA =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT_HABIT",	},
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
			PHYSIC		= 2.9,
		},

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,

        CAN_REVENGE				= TRUE,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_COMBOB =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT_HABIT",	},
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
			PHYSIC		= 1.1,
		},

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"] * 2.0,
		BACK_SPEED_Y			= 1500,

        CAN_REVENGE				= TRUE,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_SMALL_LAND_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_SMALL_LAND_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_BIG_LAND_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_BIG_LAND_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_DOWN_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_MERMAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_MERMAN_STAND_UP_ATTACK_FRONT",	"CT_CSM_MERMAN_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_MERMAN_STAND_UP_FRONT",			},
	},

	CT_CSM_MERMAN_STAND_UP_ATTACK_FRONT =
	{
		IS_ANOTHER_TEAM	= TRUE,
		ANIM_PLAY_COUNT	= 1,
		RATE			= 50,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_DOWN_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_MERMAN_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_MERMAN_STAND_UP_ATTACK_BACK",	"CT_CSM_MERMAN_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_MERMAN_STAND_UP_BACK",			},
	},

	CT_CSM_MERMAN_STAND_UP_ATTACK_BACK =
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_PLAY_COUNT		= 1,
		RATE				= 50,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_FLY_FRONT =
{
	ANIM_NAME		= "DamageAirFlyFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_DAMAGE_DOWN_FRONT",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_FLY_BACK =
{
	ANIM_NAME		= "DamageAirFlyBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_AIR =
{
	ANIM_NAME		= "DamageAirSmall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_AIR_DOWN =
{
	ANIM_NAME		= "DamageAirDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_AIR_UP =
{
	ANIM_NAME		= "DamageAirUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_MERMAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING",	},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_2569 },
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_AIR_FALL =
{
	ANIM_NAME		= "DamageAirFall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"CSM_MERMAN_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_MERMAN_STAND_UP_ATTACK_FRONT",	"CT_CSM_MERMAN_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_STAND_UP_FRONT",	},
	},

	CT_CSM_MERMAN_STAND_UP_ATTACK_FRONT =
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_PLAY_COUNT		= 1,
		RATE				= 50,
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_STAND_UP_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_STAND_UP_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",      },
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_STAND_UP_ATTACK_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT",		},
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
		
        CAN_REVENGE				= TRUE,
		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
	},

}
--------------------------------------------------------------------------
CSM_MERMAN_STAND_UP_ATTACK_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_MERMAN_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_MERMAN_WAIT", },
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
		
        CAN_REVENGE				= TRUE,
		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1477 },
	},
}
--------------------------------------------------------------------------
CSM_MERMAN_DYING_LAND_FRONT =
{
	ANIM_NAME		= "DamageDownFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
CSM_MERMAN_DYING_LAND_BACK =
{
	ANIM_NAME		= "DamageDownBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
CSM_MERMAN_DYING_SKY =
{
	ANIM_NAME		= "DamageAirDownLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------
function CSM_MERMAN_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_MERMAN_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_MERMAN_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_MERMAN_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Squish01.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Squish02.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		pNPCUnit:PlaySound_LUA( "Squish03.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_MERMAN_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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
--------------------------------------------------------------------------