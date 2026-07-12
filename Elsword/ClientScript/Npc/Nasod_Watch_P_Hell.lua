-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Nasod_MinerThin.lua





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 60.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		"Spark01.dds",
	    "Spark02.dds",
	    "Spark03.dds",
		"Smoke_Machine03.tga",
		"Lightning01_Nasod_Watch.tga",
		"Lightning02_Nasod_Watch.tga",
		"Lightning03_Nasod_Watch.tga",
	},
	
	READY_SOUND = 
	{
		"Nasod_Watch_Step1.ogg",
		"Nasod_Watch_Step2.ogg",
		"Nasod_Watch_Step3.ogg",
		"Nasod_Watch_Step4.ogg",
		"Nasod_Watch_Down.ogg",
		"Nasod_Watch_SpinDown.ogg",
		"Nasod_Watch_StandUp.ogg",
--		"Nasod_Watch_JumpAttack.ogg",
		"Nasod_Watch_JumpLanding.ogg",
		"Nasod_Watch_StandUpAttack.ogg",
		"Nasod_Watch_WaitStart.ogg",
        "Nasod_Watch_Sound1.ogg",
		"Nasod_Watch_Sound2.ogg",
		"Nasod_Watch_Sound3.ogg",
		"Nasod_Watch_Attack.ogg",
		"Nasod_Watch_ThunderBall.ogg",
		"Nasod_Watch_Walk.ogg",
        "Nasod_Watch_Down2.ogg",
		"Nasod_Watch_Explosion.ogg",
		
	},
	
		
	READY_XMESH = 
	{
	},
	
	
	READY_XSKIN_MESH = 
	{
	    "Lightning01_Nasod_Watch.X",
	    "Lightning02_Nasod_Watch.X",
	    "Lightning03_Nasod_Watch.X",
	},
	
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Watch.x",
	MOTION_CHANGE_TEX_XET	= "Motion_Nasod_Watch_P.xet",

}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 600,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	MAX_HP				= 5000,
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
	
	-- RAGE_TIME_MAX	= 1,
	-- RAGE_HP_PERCENT = 45,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	DIE_FLY             = 0,
	

	

	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "NASOD_WATCH_P_SPINE_ACC.X",
		WEAPON_BONE_NAME	= "Bip01_Spine",
	
		USE_SLASH_TRACE				= FALSE,
	},
	
	WEAPON1 = 
	{
		WEAPON_FILE_NAME	= "NASOD_WATCH_P_FOOT_ACC.X",
		WEAPON_BONE_NAME	= "Bip01_Tail2",
	
		USE_SLASH_TRACE				= FALSE,
	},
}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_WATCH_P_HELL_START",						    },
	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_WAIT",							},
	--{ STATE_NAME = "NASOD_WATCH_P_HELL_WAIT_START",					},
	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_WALK",							LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_WALK_FRAME_MOVE",
	                                                            LUA_STATE_END_FUNC = "NASOD_WATCH_P_HELL_WALK_STATE_END"						},
		
	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_UP",						},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_DOWN",					    LUA_STATE_END_FUNC = "NASOD_WATCH_P_HELL_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_UP_DIR",					},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_DOWN_DIR",				    LUA_STATE_END_FUNC = "NASOD_WATCH_P_HELL_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_LANDING",					},


	{ STATE_NAME = "NASOD_WATCH_P_HELL_ATTACK",						LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 8,	},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK",			LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 2,	},
																	
		
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_ATTACK",					},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK",				},
	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DISCHARGE",						LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_DISCHARGE_FRAME_MOVE" },	
	
	
	
	--리액션 관련
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_SMALL",					LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_DAMAGE_SMALL_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_BIG",					LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_DAMAGE_BIG_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_DOWN_FRONT",			    LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_AIR",					},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL",				},	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_STAND_UP_FRONT",				},
	{ STATE_NAME = "NASOD_WATCH_P_HELL_STAND_UP_BACK",				 },
	{ STATE_NAME = "NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT",		 },	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_STAND_UP_ATTACK_BACK",		 },
	
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "NASOD_WATCH_P_HELL_DYING_LAND_STATE_START",
	                                                            LUA_STATE_END_FUNC = "NASOD_WATCH_P_HELL_DYING_LAND_STATE_END"  },	                        
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "NASOD_WATCH_P_HELL_DYING_LAND_STATE_START",
	                                                            LUA_STATE_END_FUNC = "NASOD_WATCH_P_HELL_DYING_LAND_STATE_END"  },
	{ STATE_NAME = "NASOD_WATCH_P_HELL_DYING_SKY",					    LUA_STATE_START_FUNC = "NASOD_WATCH_P_HELL_DYING_LAND_STATE_START",
	                                                            LUA_STATE_END_FUNC = "NASOD_WATCH_P_HELL_DYING_LAND_STATE_END"  },
	
	
	START_STATE					= "NASOD_WATCH_P_HELL_START",
	WAIT_STATE					= "NASOD_WATCH_P_HELL_WAIT",
	RAGE_STATE					= "NASOD_WATCH_P_HELL_DISCHARGE",
			
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_WATCH_P_HELL_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_WATCH_P_HELL_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_WATCH_P_HELL_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "NASOD_WATCH_P_HELL_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_WATCH_P_HELL_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_WATCH_P_HELL_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "NASOD_WATCH_P_HELL_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "NASOD_WATCH_P_HELL_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "NASOD_WATCH_P_HELL_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "NASOD_WATCH_P_HELL_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "NASOD_WATCH_P_HELL_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "NASOD_WATCH_P_HELL_DAMAGE_SMALL",
	
	DAMAGE_EXTRA_STATES         = {"NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL","NASOD_WATCH_P_HELL_STAND_UP_FRONT","NASOD_WATCH_P_HELL_STAND_UP_BACK",
	"NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT","NASOD_WATCH_P_HELL_STAND_UP_ATTACK_BACK",
	"NASOD_WATCH_P_HELL_JUMP_DOWN","NASOD_WATCH_P_HELL_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "NASOD_WATCH_P_HELL_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "NASOD_WATCH_P_HELL_DYING_LAND_BACK",
	DYING_SKY					= "NASOD_WATCH_P_HELL_DYING_SKY",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1500,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 500,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
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
		PATROL_BEGIN_RATE		= 100, --50,		
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


NASOD_WATCH_P_HELL_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

    SOUND_PLAY0			= { 0.495, "Nasod_Watch_Step1.ogg" },
    SOUND_PLAY1 		= { 0.950, "Nasod_Watch_Step1.ogg" },
    SOUND_PLAY2			= { 1.132, "Nasod_Watch_WaitStart.ogg" },

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"NASOD_WATCH_P_HELL_WAIT",		"CT_NASOD_WATCH_P_HELL_WAIT"				},
	},
	
	CT_NASOD_WATCH_P_HELL_WAIT = 
	{
		STATE_TIME_OVER			= 3,
	},
}



NASOD_WATCH_P_HELL_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_ATTACK",					"CT_NASOD_WATCH_P_HELL_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK",		"CT_NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK",},				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK",			"CT_NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK",	},		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_WAIT_START",				"CT_NASOD_WATCH_P_HELL_WAIT_START",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"NASOD_WATCH_P_HELL_WALK",						},		
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_WATCH_P_HELL_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_WATCH_P_HELL_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_WATCH_P_HELL_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_WATCH_P_HELL_JUMP_DOWN_DIR",			},
	},
	
	CT_NASOD_WATCH_P_HELL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 40,
	},
    CT_NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK =
    {
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 60,
	},
	
	CT_NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 10,
	},

	CT_NASOD_WATCH_P_HELL_WAIT_START = 
	{
		ANIM_PLAY_COUNT				= 2,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
	
    TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
 		{ RATE = 10,		MESSAGE = STR_ID_2580 },
 	},
		
}

--[[
NASOD_WATCH_P_HELL_WAIT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

    SOUND_PLAY0			= { 0.421, "Nasod_Watch_WaitStart.ogg" },

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_WATCH_P_HELL_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_WATCH_P_HELL_WAIT",					},
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
 		{ RATE = 30, MESSAGE = STR_ID_2567 },
 	},

}
--]]


NASOD_WATCH_P_HELL_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,



	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_ATTACK",					"CT_NASOD_WATCH_P_HELL_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK",		"CT_NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK",},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK",			"CT_NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK",			},
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"NASOD_WATCH_P_HELL_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_WATCH_P_HELL_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_WATCH_P_HELL_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_WATCH_P_HELL_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_WATCH_P_HELL_JUMP_DOWN_DIR",			},
	},
	
	CT_NASOD_WATCH_P_HELL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 40,
	},
	CT_NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK =
    {
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 60,
	},
	CT_NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 10,
	},
		
	
}




NASOD_WATCH_P_HELL_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_JUMP_ATTACK",				"CT_NASOD_WATCH_P_HELL_JUMP_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_WATCH_P_HELL_JUMP_DOWN",			},
	},
	
	
	CT_NASOD_WATCH_P_HELL_JUMP_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		SMALL_THEN_Y_SPEED			= 0,
		RATE						= 30,
	},
	
}

NASOD_WATCH_P_HELL_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_WATCH_P_HELL_JUMP_LANDING",				},
	},
}

NASOD_WATCH_P_HELL_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_JUMP_ATTACK",				"CT_NASOD_WATCH_P_HELL_JUMP_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_WATCH_P_HELL_JUMP_DOWN_DIR",				},
	},
	
	CT_NASOD_WATCH_P_HELL_JUMP_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		SMALL_THEN_Y_SPEED			= 0,
		RATE						= 30,
	},
	
	
}

NASOD_WATCH_P_HELL_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_WATCH_P_HELL_JUMP_LANDING",				},
	},
}

NASOD_WATCH_P_HELL_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

    SOUND_PLAY0			= { 0.139, "Nasod_Watch_JumpLanding.ogg" },
    SOUND_PLAY1			= { 0.741, "Nasod_Watch_Step3.ogg" },
    SOUND_PLAY2			= { 0.870, "Nasod_Watch_Sound2.ogg" },

	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT",						},
	},
}


NASOD_WATCH_P_HELL_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
    
    SUPER_ARMOR					= TRUE,
    
    
    SOUND_PLAY0			= { 0.309, "Nasod_Watch_Step1.ogg" },
    SOUND_PLAY1			= { 0.546, "Nasod_Watch_Step1.ogg" },
    SOUND_PLAY2			= { 0.892, "Nasod_Watch_Attack.ogg" },
    SOUND_PLAY3			= { 1.790, "Nasod_Watch_Step2.ogg" },
   

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT",												},	
	},
	
}


NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK =
{
	ANIM_NAME					= "ThunderBall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
    
    
    SOUND_PLAY0			= { 0.255, "Nasod_Watch_Step1.ogg" },
    SOUND_PLAY1			= { 0.542, "Nasod_Watch_Step1.ogg" },
    SOUND_PLAY2			= { 1.677, "Nasod_Watch_Step2.ogg" },
   

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
		
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT",												},	
	},
	
}





NASOD_WATCH_P_HELL_JUMP_ATTACK = 
{
	ANIM_NAME					= "JumpAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.353, "Nasod_Watch_Sound3.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_WATCH_P_HELL_JUMP_LANDING",			},
		
	},
	
	ATTACK_TIME0				= { 0.233, 0.3, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"] * 1.5,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	
	
}



NASOD_WATCH_P_HELL_JUMP_FOR_ATTACK = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	VIEW_TARGET					= TRUE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],			"NASOD_WATCH_P_HELL_JUMP_ATTACK",		},
	},
}



NASOD_WATCH_P_HELL_DISCHARGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

	SUPER_ARMOR					= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN_DISCHARGE",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_WAIT",					"CT_NASOD_WATCH_P_HELL_WAIT",				},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
	    { TRUE, 0.1, "Wally_9th_Spark02", FALSE, "", TRUE, TRUE, 0, 100, 0, },
	    { TRUE, 0.2, "Wally_9th_Spark02", FALSE, "", TRUE, TRUE, 0, 100, 0, },
	},
		
	CT_NASOD_WATCH_P_HELL_WAIT = 
	{
		ANIM_PLAY_COUNT				= 2,
	},
}


NASOD_WATCH_P_HELL_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Damage",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_INTERVAL_TIME0		= 1,		
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_WATCH_P_HELL_WAIT",												},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_ATTACK",			"CT_NASOD_WATCH_P_HELL_ATTACK",			},
	},
	
	CT_NASOD_WATCH_P_HELL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 4,
	},	
	
}

NASOD_WATCH_P_HELL_DAMAGE_BIG = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_WATCH_P_HELL_WAIT",												},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_ATTACK",			"CT_NASOD_WATCH_P_HELL_ATTACK",			},
	},
	
	CT_NASOD_WATCH_P_HELL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 4,
	},
}

NASOD_WATCH_P_HELL_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.09, "Nasod_Watch_SpinDown.ogg" },
    SOUND_PLAY1			= { 0.955, "Nasod_Watch_Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_WATCH_P_HELL_STAND_UP_FRONT",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT",		"CT_NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT", },
	},
	CT_NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_EVENT_TIMER	= 1.4,
		RATE				= 20,
	},
}

NASOD_WATCH_P_HELL_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.09, "Nasod_Watch_SpinDown.ogg" },
    SOUND_PLAY1			= { 0.955, "Nasod_Watch_Down.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"NASOD_WATCH_P_HELL_STAND_UP_ATTACK_BACK",	"CT_NASOD_WATCH_P_HELL_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_WATCH_P_HELL_STAND_UP_BACK",			},
	},
	
	CT_NASOD_WATCH_P_HELL_STAND_UP_ATTACK_BACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 20,
	},
}

NASOD_WATCH_P_HELL_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	ADD_ROTATE_Z				= -45.0,	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

NASOD_WATCH_P_HELL_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_WATCH_P_HELL_DAMAGE_DOWN_BACK",		},
	},
}

NASOD_WATCH_P_HELL_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_WATCH_P_HELL_WAIT",					},
	},
}

NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_WATCH_P_HELL_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
	
}

NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"NASOD_WATCH_P_HELL_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_STAND_UP_FRONT",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT",		"CT_NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT", },
	},
	  
	CT_NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT = 
	{
		ANIM_EVENT_TIMER	= 1.4,
		RATE				=                                                                                                            20,
	},
}

NASOD_WATCH_P_HELL_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.376, "Nasod_Watch_StandUp.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT",				},
	},	

}

NASOD_WATCH_P_HELL_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.376, "Nasod_Watch_StandUp.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN", },
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT", },
	},		
}


NASOD_WATCH_P_HELL_STAND_UP_ATTACK_FRONT = 
{
	ANIM_NAME					= "StandUpAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
    SOUND_PLAY0			= { 0.648, "Nasod_Watch_StandUpAttack.ogg" },
    SOUND_PLAY1			= { 1.050, "Nasod_Watch_Step4.ogg" },
    SOUND_PLAY2			= { 1.248, "Nasod_Watch_WaitStart.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT",				},
	},
		
	ATTACK_TIME0				= { 0.4, 0.47, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
			FIRE		= 0.0,
			ICE			= 0.0,
			EARTH		= 0.0,
			LIGHTNING	= 0.0,
			DARK		= 0.0,
			LIGHT		= 0.0,
			UNIVERSAL	= 0.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
}

NASOD_WATCH_P_HELL_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "StandUpAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],

    SOUND_PLAY0			= { 0.648, "Nasod_Watch_StandUpAttack.ogg" },
    SOUND_PLAY1			= { 1.050, "Nasod_Watch_Step4.ogg" },
    SOUND_PLAY2			= { 1.248, "Nasod_Watch_WaitStart.ogg" },
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

		
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	--FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_WATCH_P_HELL_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_WATCH_P_HELL_WAIT", },
	},	
	
		
	ATTACK_TIME0				= { 0.4, 0.47, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
			FIRE		= 0.0,
			ICE			= 0.0,
			EARTH		= 0.0,
			LIGHTNING	= 0.0,
			DARK		= 0.0,
			LIGHT		= 0.0,
			UNIVERSAL	= 0.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
}



NASOD_WATCH_P_HELL_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.09, "Nasod_Watch_SpinDown.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
NASOD_WATCH_P_HELL_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.09, "Nasod_Watch_SpinDown.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

NASOD_WATCH_P_HELL_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,


	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}








function NASOD_WATCH_P_HELL_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
        pNPCUnit:PlaySound_LUA( "Nasod_Watch_Walk.ogg" )
        pNPCUnit:PlaySound_LUA( "Nasod_Watch_Sound1.ogg" )
        
        pNPCUnit:ClearEventCheck( 0.01 )
    end
    
end


function NASOD_WATCH_P_HELL_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function NASOD_WATCH_P_HELL_DASH_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


function NASOD_WATCH_P_HELL_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function NASOD_WATCH_P_HELL_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



--------------------------------------------------------------------
function NASOD_WATCH_P_HELL_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	
	
	unitLandPos = pNPCUnit:GetLandPosition_LUA()	
	pDamageEffect = pX2Game:GetDamageEffect()	
	pMinorParticle = pX2Game:GetMinorParticle()		
	
	if pNPCUnit:AnimEventTimer_LUA( 0.833 ) then					
			
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_WATCH_LIGHTNING_CURSED", pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" ), unitLandPos.y )		


		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		pos		= pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" ) --pNPCUnit:GetPos()
		landPos = pNPCUnit:GetLandPosition_LUA()
		rotDegree = pNPCUnit:GetRotateDegree()
		pLightning = pMajorXMeshPlayer:CreateInstance_LUA( "Lightning01_Nasod_Watch", pos, rotDegree, rotDegree, 14 )
		if pLightning ~= nil then            
            pLightning:SetRotateDegree( rotDegree );
            pLightning:SetMoveAxisAngleDegree( rotDegree );
        end
		
		pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_Watch_lightning01", pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" ), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		
		if pParticle0 ~= nil then 
			vRotDegree		= pNPCUnit:GetRotateDegree()
			
			pParticle0:SetAddRotate( vRotDegree )
    		pParticle0:SetAxisAngle( vRotDegree )		   
    	end 
		    		
	end	
	
	if pNPCUnit:AnimEventTimer_LUA( 1.083 ) then		--0.95						
		
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		pos		= pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" ) --pNPCUnit:GetPos()
		landPos = pNPCUnit:GetLandPosition_LUA()
		rotDegree = pNPCUnit:GetRotateDegree()
		pLightning = pMajorXMeshPlayer:CreateInstance_LUA( "Lightning02_Nasod_Watch", pos, rotDegree, rotDegree, 14 )
		if pLightning ~= nil then            
            pLightning:SetRotateDegree( rotDegree );
            pLightning:SetMoveAxisAngleDegree( rotDegree );
        end
               
		
	end	
	
	if pNPCUnit:AnimEventTimer_LUA( 1.333 ) then  --1.1					
					 
		pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		pos		= pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" ) --pNPCUnit:GetPos()
		landPos = pNPCUnit:GetLandPosition_LUA()
		rotDegree = pNPCUnit:GetRotateDegree()
		pLightning = pMajorXMeshPlayer:CreateInstance_LUA( "Lightning03_Nasod_Watch", pos, rotDegree, rotDegree, 14 )
		if pLightning ~= nil then            
            pLightning:SetRotateDegree( rotDegree );
            pLightning:SetMoveAxisAngleDegree( rotDegree );
        end
		
	end	

end



function NASOD_WATCH_P_HELL_THUNDERBALL_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
   

    if pNPCUnit:AnimEventTimer_LUA( 0.866 ) then
	
		vLandPos = pNPCUnit:GetLandPosition_LUA()		
		vBonePos = pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" )
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_WATCH_THUNDERBALL", vBonePos, vLandPos.y )

		pMinorParticle = pX2Game:GetMinorParticle()
        pParticle0 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_Watch_ThunderBall01", pNPCUnit:GetBonePos_LUA( "Dummy1_Eye" ), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		
        if pParticle0 ~= nil then 

			vRotDegree		= pNPCUnit:GetRotateDegree()
			
			pParticle0:SetAddRotate( vRotDegree )
    		pParticle0:SetAxisAngle( vRotDegree )
    	end 
		
	end		
	

end


--------------------------------------------------------------------


function NASOD_WATCH_P_HELL_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function NASOD_WATCH_P_HELL_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function NASOD_WATCH_P_HELL_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function NASOD_WATCH_P_HELL_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function NASOD_WATCH_P_HELL_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Nasod_Watch_Down2.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end




function NASOD_WATCH_P_HELL_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

function NASOD_WATCH_P_HELL_DYING_LAND_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
--[[    
    vLandPos = pNPCUnit:GetLandPosition_LUA()		
	vPos = pNPCUnit:GetPos()
	pDamageEffect = pX2Game:GetDamageEffect()
	pDamageEffect:CreateInstance_LUA( pNPCUnit, "BOMB_EXPLOSION_NONDAMAGE", vPos, vLandPos.y )	
	
	pNPCUnit:SetShow(false)
--]]
	
	pNPCUnit:PlaySound_LUA( "Explosion.ogg" )    
    pMajorParticle = pX2Game:GetMajorParticle()
	
	vPos = pNPCUnit:GetPos()	
	vPos.y = vPos.y - 50
	vPos.z = vPos.z + 5
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeSmoke", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(40,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeTail", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactRingRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactSlashRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	
end






function NASOD_WATCH_P_HELL_DISCHARGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos.y = vBonePos.y + 100
    	
        pDamageEffect = pX2Game:GetDamageEffect()
        
        if pDamageEffect ~= nil then
	        pDamageEffect:CreateInstance_LUA( pNPCUnit, "PARASITE_LIGHTNING", vBonePos, vLandPos.y )
        end	        

	end
end
