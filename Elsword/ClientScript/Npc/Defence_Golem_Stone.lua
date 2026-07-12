-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

                                                                                 

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 180.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.2,
	
	

}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		"Condense_Pulse01.dds",
		"GroundShockWave.dds"

	},
	
	READY_SOUND = 
	{
		"DownStone.ogg",
		"DownStoneDust.ogg",
	    "Golem_DownLanding1.ogg",
	    "Golem_DownLanding2.ogg",
		"Golem_StandUpFront.ogg",
		"Golem_StandUpBack.ogg",

		"Golem_DashAttackReady.ogg",
		"Golem_DashAttack.ogg",
		"GOlem_JumpLanding.ogg",
		"Golem_Dash.ogg",
		
		"Golem_Stone_WaitStart1.ogg",
		"Golem_Stone_WaitStart2.ogg",
		"Golem_Stone_WaitStart3.ogg",
		"Golem_Stone_WaitStart4.ogg",
		
	    "Golem_Slash1.ogg",
	    "Golem_Slash2.ogg",
		"Golem_Clap.ogg",
		
		"GolemStoneVoice_AttackRoar1.ogg",
		
	},
	
		
	READY_XMESH = 
	{

	},
	
	READY_XSKIN_MESH = 
	{
	    --"DummyAttackBox_50x50x50.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Golem_Stone.x",	
	MOTION_CHANGE_TEX_XET	= "DEFENCE_GOLEM_STONE.xet",
	MOTION_ANI_TEX_XET		= "DEFENCE_GOLEM_STONE.xet",
	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 500,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
}



INIT_COMPONENT =
{
	MAX_HP              = 30000,
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
	MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_STONE2"],
	
	FALL_DOWN			= TRUE,
	
	DIE_FLY             = 0,
}


INIT_STATE = 
{
	{ STATE_NAME = "GOLEM_STONE_TRAP_START",				},
	{ STATE_NAME = "GOLEM_STONE_TRAP_READY",			LUA_STATE_START_FUNC = "GOLEM_STONE_TRAP_READY_STATE_START",	},
	{ STATE_NAME = "GOLEM_STONE_TRAP_FALL",				LUA_STATE_END_FUNC = "GOLEM_STONE_TRAP_FALL_STATE_END", },
	{ STATE_NAME = "GOLEM_STONE_TRAP_WAIT",				},
	
	 { STATE_NAME = "GOLEM_STONE_WAITSTART",				LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_WAITSTART_FRAME_MOVE",
														LUA_STATE_END_FUNC = "GOLEM_STONE_WAITSTART_STATE_END",	},
														
														
														
	{ STATE_NAME = "GOLEM_STONE_WAIT",					LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_WAIT_FRAME_MOVE", },
	{ STATE_NAME = "GOLEM_STONE_WAITHABIT",							},

	{ STATE_NAME = "GOLEM_STONE_DASH",					
														LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DASH_FRAME_MOVE",		},
	{ STATE_NAME = "GOLEM_STONE_DASH_FOR_ATTACK",		LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DASH_FOR_ATTACK_FRAME_MOVE",		},
	
	{ STATE_NAME = "GOLEM_STONE_DASH_END",						},
	{ STATE_NAME = "GOLEM_STONE_JUMP_DOWN",						},
	{ STATE_NAME = "GOLEM_STONE_JUMP_DOWN_DIR",					},
	{ STATE_NAME = "GOLEM_STONE_JUMP_LANDING",			LUA_STATE_START_FUNC = "GOLEM_STONE_JUMP_LANDING_STATE_START",		},
   	{ STATE_NAME = "GOLEM_STONE_ATTACK",				LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_ATTACK_FRAME_MOVE",		 },
	
	{ STATE_NAME = "GOLEM_STONE_DASH_ATTACK_READY", 			LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DASH_ATTACK_READY_FRAME_MOVE",		},
	
	--{ STATE_NAME = "GOLEM_STONE_DASH_ATTACK_READY2", 			LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DASH_ATTACK_READY_FRAME_MOVE",		},
	
	
	{ STATE_NAME = "GOLEM_STONE_DASH_ATTACK", 			LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DASH_ATTACK_FRAME_MOVE",		},
	{ STATE_NAME = "GOLEM_STONE_DASH_ATTACK_END", 			LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DASH_ATTACK_END_FRAME_MOVE",		},
	


	--리액션 관련
	{ STATE_NAME = "GOLEM_STONE_DAMAGE_SMALL",			LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START", },
	{ STATE_NAME = "GOLEM_STONE_DAMAGE_BIG",			LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START", },

	{ STATE_NAME = "GOLEM_STONE_DAMAGE_DOWN_FRONT",     LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_DOWN_FRONT_BACK_STATE_START",
														LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DAMAGE_DOWN_FRONT_FRAME_MOVE", },
	{ STATE_NAME = "GOLEM_STONE_DAMAGE_DOWN_BACK",      LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_DOWN_FRONT_BACK_STATE_START",
														LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_DAMAGE_DOWN_BACK_FRAME_MOVE", },
	
	{ STATE_NAME = "GOLEM_STONE_DAMAGE_AIR_DOWN_FRONT",	  },
	{ STATE_NAME = "GOLEM_STONE_DAMAGE_AIR_DOWN_BACK",	  },
	
	{ STATE_NAME = "GOLEM_STONE_DAMAGE_REVENGE",		},

	{ STATE_NAME = "GOLEM_STONE_STAND_UP_FRONT",		LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START",	},
	{ STATE_NAME = "GOLEM_STONE_STAND_UP_BACK",			LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START",	},
	
	{ STATE_NAME = "GOLEM_STONE_STAND_UP_ATTACK_FRONT",     LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START",
															LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_STAND_UP_ATTACK_FRONT_FRAME_MOVE", },
	{ STATE_NAME = "GOLEM_STONE_STAND_UP_ATTACK_BACK",      LUA_STATE_START_FUNC = "GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START",
															LUA_FRAME_MOVE_FUNC = "GOLEM_STONE_STAND_UP_ATTACK_BACK_FRAME_MOVE", },

	{ STATE_NAME = "GOLEM_STONE_DAMAGE_UP",			},															
	
	{ STATE_NAME = "GOLEM_STONE_DYING_LAND_FRONT",			},
	{ STATE_NAME = "GOLEM_STONE_DYING_LAND_BACK",			},
	
	
			
	
	-- 테스트용 : 트랩에서부터 시작하기
	--START_STATE					= "GOLEM_STONE_TRAP_START",
	--WAIT_STATE					= "GOLEM_STONE_WAIT",
	
	-- 실 사용 : 위의 START_STATE를 주석처리해버리고 이걸 풀면 됩니다 ㄳ
	-- 시즈모드 지정하면 트랩으로 시작, 아니면 그냥 시작
	SIEGE_STATE					= "GOLEM_STONE_TRAP_START",
	WAIT_STATE					= "GOLEM_STONE_WAIT",
	START_STATE					= "GOLEM_STONE_WAITSTART",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "GOLEM_STONE_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "GOLEM_STONE_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "GOLEM_STONE_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "GOLEM_STONE_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "GOLEM_STONE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GOLEM_STONE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "GOLEM_STONE_DAMAGE_DOWN_FRONT",
	FLY_DAMAGE_BACK				= "GOLEM_STONE_DAMAGE_DOWN_BACK",
	SMALL_DAMAGE_AIR			= "GOLEM_STONE_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "GOLEM_STONE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_AIR				= "GOLEM_STONE_DAMAGE_DOWN_FRONT",
	UP_DAMAGE					= "GOLEM_STONE_DAMAGE_UP",
	DAMAGE_REVENGE				= "GOLEM_STONE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"GOLEM_STONE_DAMAGE_AIR_DOWN_FRONT","GOLEM_STONE_DAMAGE_AIR_DOWN_BACK",
	"GOLEM_STONE_STAND_UP_FRONT","GOLEM_STONE_STAND_UP_BACK","GOLEM_STONE_STAND_UP_ATTACK_FRONT","GOLEM_STONE_STAND_UP_ATTACK_BACK",
	"GOLEM_STONE_JUMP_DOWN","GOLEM_STONE_JUMP_LANDING",},	

	DYING_LAND_FRONT			= "GOLEM_STONE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "GOLEM_STONE_DYING_LAND_BACK",
	DYING_SKY					= "GOLEM_STONE_DYING_LAND_FRONT",
	
	REVENGE_ATTACK				= "",

	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 600,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2100,		-- cm
		TARGET_LOST_RANGE			= 2200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		
		TARGET_NPC					= TRUE,
		MANUAL_TARGETING_FUNC		= "GOLEM_STONE_MANUAL_TARGET",
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 200,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 900,
		
		DIR_CHANGE_INTERVAL = 1.0,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 0,
		
		--LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 800,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 30,
		
		--**LINE_END_RANGE		= 80,	-- cm
	},
	

}

-- States

GOLEM_STONE_TRAP_START =
{
	ANIM_NAME					= "TrapMode",
	ANIM_SPEED					= 1.5,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.3,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_TRAP_READY",				"CT_GOLEM_STONE_TRAP_READY",	},
	},
	
	CT_GOLEM_STONE_TRAP_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 3000,
		RATE						= 100,
	},
}


GOLEM_STONE_TRAP_READY =
{
	ANIM_NAME					= "TrapMode",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_TRAP_FALL",				"CT_GOLEM_STONE_TRAP_FALL",	},
	},
	
	CT_GOLEM_STONE_TRAP_FALL = 
	{
		STATE_TIME_OVER			= 1.2,
	},
}


GOLEM_STONE_TRAP_FALL =
{
	ANIM_NAME					= "TrapMode",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 600,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	--SUPER_ARMOR					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GOLEM_STONE_TRAP_WAIT",				},
	},
	
	ATTACK_TIME0				= { 0, 100, 80, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		ATTACK_ALL_TEAM	= TRUE,
	
		CAN_REVENGE		= FALSE,
		
		DAMAGE = 
		{
			PHYSIC		= 2,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 1200,
		
		--CAMERA_CRASH_GAP		= 5.0,	
		--CAMERA_CRASH_TIME		= 0.2,		
	},



}


GOLEM_STONE_TRAP_WAIT = 
{
	ANIM_NAME					= "TrapMode",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 80, },
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_WAITSTART",		"CT_GOLEM_STONE_WAITSTART",	},
	},
	
	CT_GOLEM_STONE_WAITSTART =
	{
		STATE_TIME_OVER			= 1,
	},
}

GOLEM_STONE_WAITSTART = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.379, "Golem_Stone_WaitStart1.ogg" },
    SOUND_PLAY1			= { 0.647, "Golem_Stone_WaitStart2.ogg" },
    SOUND_PLAY2			= { 0.817, "Golem_Stone_WaitStart3.ogg" },
    SOUND_PLAY3			= { 1.210, "Golem_Stone_WaitStart1.ogg" },
    SOUND_PLAY4			= { 1.604, "Golem_Stone_WaitStart2.ogg" },
    SOUND_PLAY5			= { 1.865, "Golem_Stone_WaitStart3.ogg" },
    SOUND_PLAY6			= { 2.279, "Golem_Stone_WaitStart4.ogg" },
    SOUND_PLAY7			= { 2.551, "Golem_Stone_WaitStart5.ogg" },
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",						},
	},

}


GOLEM_STONE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	-- PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_WAITHABIT",					"CT_GOLEM_STONE_WAITHABIT",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_ATTACK",					"CT_GOLEM_STONE_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_DASH_FOR_ATTACK",					"CT_GOLEM_STONE_DASH_FOR_ATTACK",			},
		
		-- 횽은 안 걸어다닌다 질주만이 있을뿐이다 
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GOLEM_STONE_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GOLEM_STONE_DASH",						},
		-- 점프하지 않는 몬스터
		--{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GOLEM_STONE_JUMP_UP",					},
		--{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GOLEM_STONE_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GOLEM_STONE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GOLEM_STONE_JUMP_DOWN_DIR",			},
	},
	
	CT_GOLEM_STONE_WAITHABIT = 
	{
		ANIM_PLAY_COUNT				= 2,
		RATE						= 50,
		HAVE_TARGET					= 0,		-- false

	},

	CT_GOLEM_STONE_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_GOLEM_STONE_DASH_FOR_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 50,
	
	
	},

		
}


GOLEM_STONE_WAITHABIT =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",						},
	},


}


GOLEM_STONE_DASH =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	
	--ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN_DIR",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_DASH_ATTACK_READY",					"CT_GOLEM_STONE_DASH_ATTACK_READY",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GOLEM_STONE_DASH_END",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GOLEM_STONE_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GOLEM_STONE_DASH",						},
--		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GOLEM_STONE_JUMP_UP",					},
--		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GOLEM_STONE_DASH_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GOLEM_STONE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GOLEM_STONE_JUMP_DOWN_DIR",			},
	},

	CT_GOLEM_STONE_DASH_ATTACK_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 90,
	},

	TALK_BOX =
 	{
 		EVENT_INTERVAL_ID		= 1,
		--**{ RATE = 10, MESSAGE = STR_ID_2574 },
		{ RATE = 1, MESSAGE = STR_ID_11388 },
	},
}


GOLEM_STONE_DASH_FOR_ATTACK =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	VIEW_TARGET					= TRUE,


	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN_DIR",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_DASH_ATTACK_READY",					"CT_GOLEM_STONE_DASH_ATTACK_READY",		},
	},

	CT_GOLEM_STONE_DASH_ATTACK_READY =
	{
		ANIM_PLAY_COUNT				= 1,
	},


}


GOLEM_STONE_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	ALLOW_DIR_CHANGE			= FALSE,
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 0.5,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	--EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",			},
	},

}



GOLEM_STONE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	--ALLOW_DIR_CHANGE			= TRUE,
	
	--SPEED_X						= 0,
	--SPEED_Y						= 0,
	                                   
    VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	--SUPER_ARMOR					= TRUE,

    SOUND_PLAY0			= { 1.578, "Golem_Slash1.ogg" },
    SOUND_PLAY1			= { 1.636, "Golem_Clap.ogg" },
    SOUND_PLAY2			= { 0.342, "GolemStoneVoice_AttackRoar1.ogg" },
	
	--NEVER_MOVE = TRUE,
	
	
	TALK_BOX = 
	{
		{ RATE = 1, MESSAGE = STR_ID_11388 },
	},
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		--{ FALSE, 1.6, "Light_Golem_Attack01", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, 0, 0, TRUE, },
		--{ FALSE, 1.6, "ShockWave_Golem_Attack01", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, 0, 0, TRUE, },
		{ FALSE, 1.6, "Light_Golem_Attack01", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 1.6, "ShockWave_Golem_Attack01", FALSE, "Bip01_L_Hand", TRUE, FALSE, 0, 0, 0, },
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",							},
	},
	
	ATTACK_TIME0			= { 1.550, 1.750 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.55,
		
		--CAMERA_CRASH_GAP		= 5.0,	
		--CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
	}
			
}

    
GOLEM_STONE_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	--PASSIVE_SPEED_X				= 0,
	SPEED_X						= INIT_PHYSIC["WALK_SPEED"],
	--SPEED_Y						= 0,

   SOUND_PLAY0			= { 0.657, "Golem_DashAttackReady.ogg" },
   SOUND_PLAY1			= { 0.690, "GolemStoneVoice_AttackRoar1.ogg" },
	
    VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	--SUPER_ARMOR					= TRUE,

	
	
	--EVENT_INTERVAL_TIME0		= 0.1,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",				},
		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLEM_STONE_DASH_ATTACK_READY2",		"CT_GOLEM_STONE_DASH_ATTACK_READY2",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_DASH_ATTACK",				},
	},
	
	
--	CT_GOLEM_STONE_DASH_ATTACK_READY2 =
--	{
--		ANIM_EVENT_TIMER	= 0.7,
--		RATE				= 40,
--	},
		
	
	
	
	ATTACK_TIME0			= { 0.99, 1.03 },
			
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.4,
		},
		
		CAN_REVENGE					= TRUE,	
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0,
		
		--CAMERA_CRASH_GAP		= 5.0,	
		--CAMERA_CRASH_TIME		= 0.2,
		
	},
				
}





--[[
	GOLEM_STONE_DASH_ATTACK_READY2 = 
	{
		ANIM_NAME					= "DashAttackReady",
		PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
		TRANSITION					= TRUE,
		LAND_CONNECT				= FALSE,
			
		CAN_PUSH_UNIT				= TRUE,
		CAN_PASS_UNIT				= FALSE,

		--PASSIVE_SPEED_X				= 0,
		SPEED_X						= INIT_PHYSIC["WALK_SPEED"],
		--SPEED_Y						= 0,
		
		VIEW_TARGET					= FALSE,
		IMMADIATE_PACKET_SEND		= TRUE,
		--SUPER_ARMOR					= TRUE,
		
		
		EVENT_PROCESS = 
		{	
			{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",							},
			{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_DASH_ATTACK",							},
		},
		
		ATTACK_TIME0			= { 0.550, 0.720 },
				
		DAMAGE_DATA = 
		{
			DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
			HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
			REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
			
			DAMAGE = 
			{
				PHYSIC		= 1.4,
			},
			
			CAN_REVENGE					= TRUE,	
			
			BACK_SPEED_X			= 1000,
			BACK_SPEED_Y			= 0,
			
			CAMERA_CRASH_GAP		= 5.0,	
			CAMERA_CRASH_TIME		= 0.2,
			
		},
					
	}
--]]





GOLEM_STONE_DASH_ATTACK = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	--PASSIVE_SPEED_X				= 0,
	--SPEED_X						= 0,
	--SPEED_Y						= 0,
	
    --VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	--SUPER_ARMOR					= TRUE,

	
	EVENT_PROCESS = 
	{	
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_DASH_ATTACK_END",							},
	},
	
	ATTACK_TIME0			= { 0.680, 1.03 },
			
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.4,
		},
		
		CAN_REVENGE					= FALSE,	
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		

	},
			
}



GOLEM_STONE_DASH_ATTACK_END = 
{
	ANIM_NAME					= "DashAttackEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	--PASSIVE_SPEED_X				= 0,
	--SPEED_X						= 0,
	--SPEED_Y						= 0,
	
    VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	--SUPER_ARMOR					= TRUE,

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",							},
	},
	
			
}






GOLEM_STONE_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GOLEM_STONE_JUMP_LANDING",				},
	},
}

GOLEM_STONE_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GOLEM_STONE_JUMP_LANDING",				},
	},
}

GOLEM_STONE_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

--    SOUND_PLAY0			= { 0.085, "Golem_JumpLanding" },


	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",						},
	},
}

GOLEM_STONE_DAMAGE_SMALL =
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	--VIEW_TARGET					= TRUE,
	

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GOLEM_STONE_ATTACK",			"CT_GOLEM_STONE_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLEM_STONE_WAIT",			},
	},
	
	CT_GOLEM_STONE_ATTACK =      
	{
		ANIM_EVENT_TIMER	= 0.1,
		RATE				= 30,		
	},
	
	TALK_BOX =
	{
		{ RATE = 1, MESSAGE = STR_ID_11388 },
	},
}


GOLEM_STONE_DAMAGE_BIG =
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	--VIEW_TARGET					= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GOLEM_STONE_ATTACK",			"CT_GOLEM_STONE_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLEM_STONE_WAIT",			},
	},
	
	CT_GOLEM_STONE_ATTACK =      
	{
		ANIM_EVENT_TIMER	= 0.1,
		RATE				= 30,		
	},

}


GOLEM_STONE_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	

    SOUND_PLAY0			= { 0.557, "Golem_DownLanding2.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GOLEM_STONE_DAMAGE_AIR_DOWN_FRONT",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GOLEM_STONE_STAND_UP_ATTACK_FRONT",	"CT_GOLEM_STONE_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLEM_STONE_STAND_UP_FRONT",			},
	},
	
	CT_GOLEM_STONE_STAND_UP_ATTACK_FRONT =
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,	
	},
}


GOLEM_STONE_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },


	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.412, "Golem_DownLanding1.ogg" },
	
 	TALK_BOX =
	{
		{ RATE = 1, MESSAGE = STR_ID_11388 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GOLEM_STONE_DAMAGE_AIR_DOWN_BACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GOLEM_STONE_STAND_UP_ATTACK_BACK",		"CT_GOLEM_STONE_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLEM_STONE_STAND_UP_BACK",			},
	},
	
	CT_GOLEM_STONE_STAND_UP_ATTACK_BACK =
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,	
	},
	
}

GOLEM_STONE_DAMAGE_AIR_DOWN_FRONT =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GOLEM_STONE_DAMAGE_DOWN_FRONT",				},
	},

}

GOLEM_STONE_DAMAGE_AIR_DOWN_BACK =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GOLEM_STONE_DAMAGE_DOWN_BACK",				},
	},

}

GOLEM_STONE_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 1, MESSAGE = STR_ID_11388 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GOLEM_STONE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLEM_STONE_WAIT",			},
	},


}

GOLEM_STONE_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.243, "Golem_StandUpFront.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT",				},
	},
}

GOLEM_STONE_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.431, "Golem_StandUpBack.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT", },
	},		
}


GOLEM_STONE_STAND_UP_ATTACK_FRONT =
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.237, "Golem_StandUpFront.ogg" },
    SOUND_PLAY1			= { 0.906, "Golem_Slash2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT", },
	},		
	
	ATTACK_TIME0			= { 1.000, 1.200 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		CAN_REVENGE				= FALSE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		--CAMERA_CRASH_GAP		= 5.0,	
		--CAMERA_CRASH_TIME		= 0.2,

	},
	
	

}

GOLEM_STONE_STAND_UP_ATTACK_BACK =
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.431, "Golem_StandUpBack.ogg" },
    SOUND_PLAY1			= { 1.078, "Golem_Slash2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLEM_STONE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLEM_STONE_WAIT", },
	},		
	
	ATTACK_TIME0			= { 0.900, 1.350 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		CAN_REVENGE				= FALSE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		--CAMERA_CRASH_GAP		= 5.0,	
		--CAMERA_CRASH_TIME		= 0.2,

	},

}


GOLEM_STONE_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.557, "Golem_DownLanding2.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
GOLEM_STONE_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.412, "Golem_DownLanding1.ogg" },
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

GOLEM_STONE_DAMAGE_UP =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	-- 안전장치 : 	
	--NEVER_MOVE					= TRUE,

	--SUPER_ARMOR					= TRUE,
	--DEFENCE						= { 0, 100, 70, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GOLEM_STONE_DAMAGE_DOWN_FRONT",	"CT_GOLEM_STONE_DAMAGE_DOWN_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLEM_STONE_DAMAGE_DOWN_FRONT",			},
	},
	
	-- 바로 DOWN되게!
	CT_GOLEM_STONE_DAMAGE_DOWN_FRONT =
	{
		STATE_TIME_OVER	= 0,
	},

}



----


-- 이펙트들

GOLEM_STONE_TRAP_READY[ "NO_CALL_STATE_START" ] = true;

function GOLEM_STONE_TRAP_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:PlaySound_LUA( "DownStoneDust.ogg" )
	local pos = pNPCUnit:GetLandPosition_LUA()

	local pMinorParticle = pX2Game:GetMinorParticle()
	if pMinorParticle ~= nil then
		local pParticle = pMinorParticle:CreateSequence_LUA( "DownStoneTrap_Dust", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end
	end

end

GOLEM_STONE_TRAP_FALL[ "NO_CALL_STATE_END" ] = true;

function GOLEM_STONE_TRAP_FALL_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:PlaySound_LUA( "DownStone.ogg" )			-- 소리 
	local pMinorParticle = pX2Game:GetMinorParticle()
	local pos = pNPCUnit:GetLandPosition_LUA()
	pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )		-- 연기 
	pos.y = pos.y + 5
	pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )		-- 충격파 
	local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )		-- 돌먼지 
	if pParticle ~= nil then
		pParticle:SetLandPosition( pos.y - 5 )
	end
--[[
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then		-- 유닛과 포커스 위치의 거리  
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 90.0, 0.6 )
	end
--]]
end

GOLEM_STONE_WAITSTART[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_WAITSTART_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	if pNPCUnit:AnimEventTimer_LUA( 0.40 ) then
		local pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end
 	end
 	if pNPCUnit:AnimEventTimer_LUA( 1.20 ) then
  		local pos = pNPCUnit:GetBonePos_LUA("Bip01_L_Hand")
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end
 	end
end

-- 시즈모드를 풀어준다 : 딱히 이유는 없다
function GOLEM_STONE_WAITSTART_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetSiegeMode(false)
end


GOLEM_STONE_DASH[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.001 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )

    	--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Foot" )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

	if pNPCUnit:AnimTimer_LUA( 0.45 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )
		--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Foot" )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 400 ) == true then
		TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		end
	end

	local iCrystallSmallKeyCode = pNPCUnit:GetKeyCode() + 5
	local pUnitCrystallSmall = pX2Game:GetKeyCodeNPC( iCrystallSmallKeyCode )
	if pUnitCrystallSmall ~= nil then
		local TargetPos = pUnitCrystallSmall:GetPos()
		local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), TargetPos)
		if distance <= 400 then
			local bIsRight = pNPCUnit:GetIsRight()
		        
			if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
				if( bIsRight == true ) then
					GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end
end

GOLEM_STONE_DASH_FOR_ATTACK[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DASH_FOR_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.001 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )
		--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Foot" )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

	if pNPCUnit:AnimTimer_LUA( 0.45 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )
		--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Foot" )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end


GOLEM_STONE_ATTACK[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.6 ) then
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
			--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 12.0, 0.4 )
		end
   	end
end


GOLEM_STONE_DASH_ATTACK_READY[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DASH_ATTACK_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

 	if pNPCUnit:AnimTimer_LUA( 0.64 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
 		--pNPCUnit:PlaySound_LUA( "DownStone.ogg" )
 		local pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
		local landpos = pNPCUnit:GetLandPosition_LUA()
		pos.y = landpos.y

		local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end
	end
end

GOLEM_STONE_DASH_ATTACK[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    if pNPCUnit:AnimTimer_LUA( 0.88 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_DashAttack.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
  		local landpos = pNPCUnit:GetLandPosition_LUA()
  		
		local pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
  		pos.y = landpos.y
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
		pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Toe0")
		pos.y = landpos.y
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(200,100), D3DXVECTOR2(10,-1) )
		
		pos = pNPCUnit:GetBonePos_LUA("Bip01_L_Hand")
		pos.y = landpos.y
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(200,100), D3DXVECTOR2(10,-1) )
		
		pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
		pos.y = landpos.y
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(200,100), D3DXVECTOR2(10,-1) )
		--pos.y = pos.y + 5
        --local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		--if pParticle ~= nil then
		--			pParticle:SetLandPosition( pos.y - 5 )
		--end
		--if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
			--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 1.0 )
		--end
	end
end

GOLEM_STONE_DASH_ATTACK_END[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DASH_ATTACK_END_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimTimer_LUA( 1.08 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
  		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end

end


--

GOLEM_STONE_JUMP_LANDING[ "NO_CALL_STATE_START" ] = true;

function GOLEM_STONE_JUMP_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:PlaySound_LUA( "Golem_JumpLanding.ogg" )   
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	--pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3)
end

GOLEM_STONE_DAMAGE_SMALL[ "NO_CALL_STATE_START" ] = true;
GOLEM_STONE_DAMAGE_BIG[ "NO_CALL_STATE_START" ] = true;
GOLEM_STONE_STAND_UP_FRONT[ "NO_CALL_STATE_START" ] = true;
GOLEM_STONE_STAND_UP_BACK[ "NO_CALL_STATE_START" ] = true;
GOLEM_STONE_STAND_UP_ATTACK_FRONT[ "NO_CALL_STATE_START" ] = true;
GOLEM_STONE_STAND_UP_ATTACK_BACK[ "NO_CALL_STATE_START" ] = true;

function GOLEM_STONE_DAMAGE_SMALL_BIG_STAND_UP_FRONT_BACK_ATTACK_FRONT_BACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
end

GOLEM_STONE_DAMAGE_DOWN_FRONT[ "NO_CALL_STATE_START" ] = true;
GOLEM_STONE_DAMAGE_DOWN_BACK[ "NO_CALL_STATE_START" ] = true;


function GOLEM_STONE_DAMAGE_DOWN_FRONT_BACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
end

GOLEM_STONE_DAMAGE_DOWN_FRONT[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.55 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
    	local landpos = pNPCUnit:GetLandPosition_LUA()
  		local pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
  		pos.y = landpos.y
  		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end
end

GOLEM_STONE_DAMAGE_DOWN_BACK[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.35 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		local landpos = pNPCUnit:GetLandPosition_LUA()
  		local pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
  		pos.y = landpos.y
  		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end
end

GOLEM_STONE_STAND_UP_ATTACK_FRONT[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.90 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		local landpos = pNPCUnit:GetLandPosition_LUA()
  		local pos = pNPCUnit:GetBonePos_LUA("Bip01_L_Hand")
  		pos.y = landpos.y
  		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(3,-1) )
	end

end

GOLEM_STONE_STAND_UP_ATTACK_BACK[ "NO_CALL_FRAME_MOVE" ] = true;

function GOLEM_STONE_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 1.10 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		local landpos = pNPCUnit:GetLandPosition_LUA()
  		local pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
  		pos.y = landpos.y
  		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(3,-1) )
	end
end

--타겟관련 펑션
function GOLEM_STONE_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	local pNearestNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"], 999999 )
	
	if nil ~= pNearestNpc then
		pNPCUnit:SetTargetUnit( pNearestNpc )
	end

end



function GOLEM_STONE_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 400 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		end
	end

	local iCrystallSmallKeyCode = pNPCUnit:GetKeyCode() + 5
	local pUnitCrystallSmall = pX2Game:GetKeyCodeNPC( iCrystallSmallKeyCode )
	if pUnitCrystallSmall ~= nil then
		local TargetPos = pUnitCrystallSmall:GetPos()
		local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), TargetPos)
		if distance <= 400 then
			local bIsRight = pNPCUnit:GetIsRight()
		        
			if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
				if( bIsRight == true ) then
					GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end

end


function GOLEM_STONE_DO_ATTACK(pX2Game, pNPCUnit)
	local iRate = pNPCUnit:GetRandVal() % 100
	
	if iRate < 30 then
		pNPCUnit:StateChange_LUA( "GOLEM_STONE_ATTACK" )
	elseif iRate < 50 then
		pNPCUnit:StateChange_LUA( "GOLEM_STONE_DASH_ATTACK" )
	else
		pNPCUnit:StateChange_LUA( "GOLEM_STONE_DASH_ATTACK" )
	end
end


