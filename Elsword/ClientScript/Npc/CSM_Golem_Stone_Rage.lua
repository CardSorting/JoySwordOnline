-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

                                                                                 

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 180.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.1,
	
	

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
		
		"CSM_GOLEM_STONE_RAGE_AttackB.ogg",
		
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
	MOTION_FILE_NAME		= "Motion_Golem_Stone_Rage.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 280,
	RUN_SPEED			= 450,
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
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_STONE2"],
	
	FALL_DOWN			= TRUE,
	
	DIE_FLY             = 0,
	
	SUMMON_TIME			= 180,
}


INIT_STATE = 
{
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_WAIT",						},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_WAITHABIT",				},

	--{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_WALK",					},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DASH",						LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DASH_FRAME_MOVE",					},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK",			STATE_COOL_TIME	= 7, INITIALIZE_STATE_ELAPSED_TIME = 0,		
																	LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK_FRAME_MOVE",		},
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DASH_END",					},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_JUMP_DOWN_DIR",			},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_JUMP_LANDING",				LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_JUMP_LANDING_STATE_START",			},
   	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_ATTACK",					LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_ATTACK_FRAME_MOVE",		STATE_COOL_TIME	= 3, },
	--{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_ATTACK_B",					LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_ATTACK_B_FRAME_MOVE", 				},
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY", 		LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY_FRAME_MOVE",	STATE_COOL_TIME	= 7, 	},
	
	
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DASH_ATTACK", 				LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DASH_ATTACK_FRAME_MOVE",			},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DASH_ATTACK_END", 			LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DASH_ATTACK_END_FRAME_MOVE",		},
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_END",						},
	


	--리액션 관련
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_SMALL",				LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START", 			},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_BIG",				LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START",			},
		
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",    	LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_DOWN_SMOKE_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT_FRAME_MOVE", 		},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK",      	LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_DOWN_SMOKE_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK_FRAME_MOVE",		},
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_FRONT",	},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_BACK",	  	},
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_REVENGE",			},

	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_STAND_UP_FRONT",			LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START",			},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_STAND_UP_BACK",			LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START",			},
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT",    LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT_FRAME_MOVE", 	},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK",     LUA_STATE_START_FUNC = "CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK_FRAME_MOVE", 	},

	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DAMAGE_UP",				},															
	
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DYING_LAND_FRONT",			},
	{ STATE_NAME = "CSM_GOLEM_STONE_RAGE_DYING_LAND_BACK",			},
	
	
			
	
	SIEGE_STATE					= "CSM_GOLEM_STONE_RAGE_WAIT",
	WAIT_STATE					= "CSM_GOLEM_STONE_RAGE_WAIT",
	START_STATE					= "CSM_GOLEM_STONE_RAGE_WAIT",
	SUMMON_END_STATE			= "CSM_GOLEM_STONE_RAGE_END",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CSM_GOLEM_STONE_RAGE_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CSM_GOLEM_STONE_RAGE_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CSM_GOLEM_STONE_RAGE_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "CSM_GOLEM_STONE_RAGE_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",
	FLY_DAMAGE_BACK				= "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK",
	SMALL_DAMAGE_AIR			= "CSM_GOLEM_STONE_RAGE_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_AIR				= "CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",
	UP_DAMAGE					= "CSM_GOLEM_STONE_RAGE_DAMAGE_UP",
	DAMAGE_REVENGE				= "CSM_GOLEM_STONE_RAGE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_FRONT","CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_BACK",
	"CSM_GOLEM_STONE_RAGE_STAND_UP_FRONT","CSM_GOLEM_STONE_RAGE_STAND_UP_BACK","CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT","CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK",
	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN","CSM_GOLEM_STONE_RAGE_JUMP_LANDING",},	

	DYING_LAND_FRONT			= "CSM_GOLEM_STONE_RAGE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CSM_GOLEM_STONE_RAGE_DYING_LAND_BACK",
	DYING_SKY					= "CSM_GOLEM_STONE_RAGE_DYING_LAND_FRONT",
	
	REVENGE_ATTACK				= "",

	
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
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 250,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 350,
		
		DIR_CHANGE_INTERVAL = 1.0,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 1,   --  70,
		FAR_WALK_RATE		= 1,   -- 30,
		
		JUMP_INTERVAL		= 999,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 40,
		
		--LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 1, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 800,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 10,   --  10,
		FAR_WALK_RATE		= 10,   -- 10,
		
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 30,
		
		--**LINE_END_RANGE		= 80,	-- cm
	},
	
}


CSM_GOLEM_STONE_RAGE_WAIT = 
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
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_WAITHABIT",				"CT_CSM_GOLEM_STONE_RAGE_WAITHABIT",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK",			"CT_CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_ATTACK",					"CT_CSM_GOLEM_STONE_RAGE_ATTACK",			},
		
		-- 횽은 안 걸어다닌다 질주만이 있을뿐이다 
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_GOLEM_STONE_RAGE_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_GOLEM_STONE_RAGE_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_GOLEM_STONE_RAGE_JUMP_DOWN_DIR",			},
	},
	
	
	CT_CSM_GOLEM_STONE_RAGE_WAITHABIT = 
	{
		ANIM_PLAY_COUNT				= 2,
		RATE						= 50,
		HAVE_TARGET					= 0,		-- false

	},
	
	CT_CSM_GOLEM_STONE_RAGE_ATTACK = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 100,
	},
	
	
	
	CT_CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR	= 1000,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 100,
	},

		
}


CSM_GOLEM_STONE_RAGE_WAITHABIT =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT",						},
	},


}


CSM_GOLEM_STONE_RAGE_END = 
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


CSM_GOLEM_STONE_RAGE_DASH =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- ANIM_SPEED					= 1.2,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	VIER_TARGET					= TRUE,
	
	--ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_INTERVAL_TIME0		= 1,

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN_DIR",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY",					"CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_DASH_END",					"CT_CSM_GOLEM_STONE_RAGE_DASH_DASH_END",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_GOLEM_STONE_RAGE_DASH_END",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_GOLEM_STONE_RAGE_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_GOLEM_STONE_RAGE_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_GOLEM_STONE_RAGE_JUMP_DOWN_DIR",			},
	},

	CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY =
	{
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 100,
	},
	-- CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY =
	CT_CSM_GOLEM_STONE_RAGE_DASH_DASH_END =
	{
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 900,
		RATE						= 100,
	},


}


CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	VIEW_TARGET					= TRUE,

	ANIM_SPEED					= 1.2,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN_DIR",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY",					"CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY",		},
	},

	CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_PLAY_COUNT				= 1,
	},


}


CSM_GOLEM_STONE_RAGE_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",			},
	},

}



CSM_GOLEM_STONE_RAGE_ATTACK = 
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
	SUPER_ARMOR					= TRUE,

    SOUND_PLAY0			= { 1.578, "Golem_Slash1.ogg" },
    SOUND_PLAY1			= { 1.636, "Golem_Clap.ogg" },
    SOUND_PLAY2			= { 0.342, "GolemStoneVoice_AttackRoar1.ogg" },
	
	NEVER_MOVE = TRUE,
	
	DISABLE_ATTACK_BOX = 
	{
		"Upbody1",
		"Upbody2",
	},	
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1705 },
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT",							},
	},
	
	ATTACK_TIME0			= { 1.6, 1.80 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 850,
		BACK_SPEED_Y			= 0.0,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.55,
		
        CAN_REVENGE				= TRUE,

		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
	}
			
}
  
CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	--PASSIVE_SPEED_X				= 0,
	-- SPEED_X						= INIT_PHYSIC["WALK_SPEED"],
	--SPEED_Y						= 0,

   SOUND_PLAY0			= { 0.657, "Golem_DashAttackReady.ogg" },
   SOUND_PLAY1			= { 0.690, "GolemStoneVoice_AttackRoar1.ogg" },
	
    VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	--SUPER_ARMOR					= TRUE,

	
	
	--EVENT_INTERVAL_TIME0		= 0.1,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY2",		"CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY2",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_DASH_ATTACK",				},
	},
	
	
--	CT_CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY2 =
--	{
--		ANIM_EVENT_TIMER	= 0.7,
--		RATE				= 40,
--	},
		
	
	
	
	ATTACK_TIME0			= { 0.690, 0.720 },
			
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		CAN_REVENGE					= TRUE,	
		
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
	},
				
}


CSM_GOLEM_STONE_RAGE_DASH_ATTACK = 
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
	SUPER_ARMOR					= TRUE,

	
	EVENT_PROCESS = 
	{	
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_DASH_ATTACK_END",							},
	},
	
	ATTACK_TIME0			= { 0.850, 1.03 },
			
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.5,
		},
		
		CAN_REVENGE					= FALSE,	
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
	},
			
}



CSM_GOLEM_STONE_RAGE_DASH_ATTACK_END = 
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
	SUPER_ARMOR					= TRUE,

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT",							},
	},
	
			
}






CSM_GOLEM_STONE_RAGE_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_GOLEM_STONE_RAGE_JUMP_LANDING",				},
	},
}

CSM_GOLEM_STONE_RAGE_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_GOLEM_STONE_RAGE_JUMP_LANDING",				},
	},
}

CSM_GOLEM_STONE_RAGE_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT",						},
	},
}

CSM_GOLEM_STONE_RAGE_DAMAGE_SMALL =
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	--VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_Y				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_GOLEM_STONE_RAGE_ATTACK",			"CT_CSM_GOLEM_STONE_RAGE_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_GOLEM_STONE_RAGE_WAIT",			},
	},
	
	CT_CSM_GOLEM_STONE_RAGE_ATTACK =      
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_EVENT_TIMER	= 0.1,
		RATE				= 8,		
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1706 },
	},
}


CSM_GOLEM_STONE_RAGE_DAMAGE_BIG =
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	--VIEW_TARGET					= TRUE,
	
	--PASSIVE_SPEED_Y				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_GOLEM_STONE_RAGE_ATTACK",			"CT_CSM_GOLEM_STONE_RAGE_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_GOLEM_STONE_RAGE_WAIT",			},
	},
	
	CT_CSM_GOLEM_STONE_RAGE_ATTACK =      
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_EVENT_TIMER	= 0.1,
		RATE				= 8,		
	},

}


CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.557, "Golem_DownLanding2.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_FRONT",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT",	"CT_CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_GOLEM_STONE_RAGE_STAND_UP_FRONT",			},
	},
	
	CT_CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT =
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,	
	},
	
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1707 },
	},
}


CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	SPEED_X				= 0,
	SPEED_Y				= 0,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.412, "Golem_DownLanding1.ogg" },
	
 	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1707 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_BACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK",		"CT_CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_GOLEM_STONE_RAGE_STAND_UP_BACK",			},
	},
	
	CT_CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK =
	{
		IS_ANOTHER_TEAM		= TRUE,
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,	
	},
	
}

CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",				},
	},

}

CSM_GOLEM_STONE_RAGE_DAMAGE_AIR_DOWN_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK",				},
	},

}

CSM_GOLEM_STONE_RAGE_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 100, MESSAGE = STR_ID_2576 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_GOLEM_STONE_RAGE_WAIT",			},
	},


}

CSM_GOLEM_STONE_RAGE_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

    SOUND_PLAY0			= { 0.243, "Golem_StandUpFront.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT",				},
	},
}

CSM_GOLEM_STONE_RAGE_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.431, "Golem_StandUpBack.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT", },
	},		
}


CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT =
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.237, "Golem_StandUpFront.ogg" },
    SOUND_PLAY1			= { 0.906, "Golem_Slash2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT", },
	},		
	
	ATTACK_TIME0			= { 1.000, 1.200 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		CAN_REVENGE				= FALSE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,

	},
	
	

}

CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK =
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.431, "Golem_StandUpBack.ogg" },
    SOUND_PLAY1			= { 1.078, "Golem_Slash2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_GOLEM_STONE_RAGE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_GOLEM_STONE_RAGE_WAIT", },
	},		
	
	ATTACK_TIME0			= { 0.900, 1.350 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		CAN_REVENGE				= FALSE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
		
        CAN_REVENGE				= TRUE,

		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,

	},

}


CSM_GOLEM_STONE_RAGE_DYING_LAND_FRONT = 
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
	
CSM_GOLEM_STONE_RAGE_DYING_LAND_BACK = 
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

CSM_GOLEM_STONE_RAGE_DAMAGE_UP =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	-- 안전장치 : 	
	NEVER_MOVE					= TRUE,

	--SUPER_ARMOR					= TRUE,
	--DEFENCE						= { 0, 100, 70, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",	"CT_CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT",			},
	},
	
	-- 바로 DOWN되게!
	CT_CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT =
	{
		STATE_TIME_OVER	= 0,
	},

}



----


-- 이펙트들

function CSM_GOLEM_STONE_RAGE_TRAP_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:PlaySound_LUA( "DownStoneDust.ogg" )
	pos = pNPCUnit:GetLandPosition_LUA()

	pMinorParticle = pX2Game:GetMinorParticle()
	if pMinorParticle ~= nil then
		pParticle = pMinorParticle:CreateSequence_LUA( "DownStoneTrap_Dust", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end
	end

end

function CSM_GOLEM_STONE_RAGE_TRAP_FALL_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:PlaySound_LUA( "DownStone.ogg" )			-- 소리 
	pMinorParticle = pX2Game:GetMinorParticle()
	pos = pNPCUnit:GetLandPosition_LUA()
	pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )		-- 연기 
	pos.y = pos.y + 5
	pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )		-- 충격파 
	pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )		-- 돌먼지 
	if pParticle ~= nil then
		pParticle:SetLandPosition( pos.y - 5 )
	end

	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then		-- 유닛과 포커스 위치의 거리  
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 90.0, 0.6 )
	end

end

function CSM_GOLEM_STONE_RAGE_WAITSTART_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	pMinorParticle = pX2Game:GetMinorParticle()
	if pNPCUnit:AnimEventTimer_LUA( 0.40 ) then
		pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end
 	end
 	if pNPCUnit:AnimEventTimer_LUA( 1.20 ) then
  		pos = pNPCUnit:GetBonePos_LUA("Bip01_L_Hand")
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end
 	end
end

-- 시즈모드를 풀어준다 : 딱히 이유는 없다
function CSM_GOLEM_STONE_RAGE_WAITSTART_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetSiegeMode(false)
end


function CSM_GOLEM_STONE_RAGE_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.001 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )

    	pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Foot" )
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

	if pNPCUnit:AnimTimer_LUA( 0.45 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Foot" )
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end

function CSM_GOLEM_STONE_RAGE_DASH_FOR_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.001 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Foot" )
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

	if pNPCUnit:AnimTimer_LUA( 0.45 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_Dash.ogg" )
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Foot" )
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end

		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end


function CSM_GOLEM_STONE_RAGE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.6 ) then
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 12.0, 0.4 )
		end
   	end
end


function CSM_GOLEM_STONE_RAGE_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.00 ) then
		pNPCUnit:PlaySound_LUA( "DownStone.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		landpos = pNPCUnit:GetLandPosition_LUA()
		pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
		pos.y = landpos.y + 5
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 7.0, 1.0 )
		end
	end
	
end



function CSM_GOLEM_STONE_RAGE_DASH_ATTACK_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )



	if pNPCUnit:AnimEventTimer_LUA( 0.65 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
		pNPCUnit:SetSpeedX( INIT_PHYSIC["WALK_SPEED"] )
	end


 	if pNPCUnit:AnimTimer_LUA( 0.64 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
 		--pNPCUnit:PlaySound_LUA( "DownStone.ogg" )
 		pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
		landpos = pNPCUnit:GetLandPosition_LUA()
		pos.y = landpos.y

        pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y )
		end
	end
end


function CSM_GOLEM_STONE_RAGE_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    if pNPCUnit:AnimTimer_LUA( 0.88 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		pNPCUnit:PlaySound_LUA( "Golem_DashAttack.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
  		landpos = pNPCUnit:GetLandPosition_LUA()
  		
		pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
  		pos.y = landpos.y + 5
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
        --pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		--if pParticle ~= nil then
		--			pParticle:SetLandPosition( pos.y - 5 )
		--end
		--if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 1.0 )
		--end
	end
end

function CSM_GOLEM_STONE_RAGE_DASH_ATTACK_END_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimTimer_LUA( 1.08 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
  		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end

end


--

function CSM_GOLEM_STONE_RAGE_JUMP_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:PlaySound_LUA( "Golem_JumpLanding.ogg" )   
	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3)
end

function CSM_GOLEM_STONE_RAGE_STEP_SMOKE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
end

function CSM_GOLEM_STONE_RAGE_DOWN_SMOKE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
end


function CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.55 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
    	landpos = pNPCUnit:GetLandPosition_LUA()
  		pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
  		pos.y = landpos.y
  		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end
end

function CSM_GOLEM_STONE_RAGE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.35 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		landpos = pNPCUnit:GetLandPosition_LUA()
  		pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")
  		pos.y = landpos.y
  		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
	end
end

function CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.90 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		landpos = pNPCUnit:GetLandPosition_LUA()
  		pos = pNPCUnit:GetBonePos_LUA("Bip01_L_Hand")
  		pos.y = landpos.y
  		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(3,-1) )
	end

end

function CSM_GOLEM_STONE_RAGE_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 1.10 ) == true and GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		landpos = pNPCUnit:GetLandPosition_LUA()
  		pos = pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
  		pos.y = landpos.y
  		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(3,-1) )
	end
end
