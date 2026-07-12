-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	},
	
	READY_SOUND = 
	{
	
	 "Glitter_Shield_Attack.ogg",
	 "Glitter_StandUp.ogg",
	 "Glitter_Dash.ogg",
	 "Glitter_Landing.ogg",
	 "Glitter_ShieldHit.ogg",
	 
	 "GlitterVoice_AttackRoar1.ogg",
	 "GlitterVoice_AttackRoar2.ogg",
	 
	 "GlitterVoice_DeathRoar.ogg",
	 "GlitterVoice_HurtRoar1.ogg",
	 "GlitterVoice_HurtRoar2.ogg",
	 
	
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
	MOTION_FILE_NAME		= "NUI_GLITER_SHIELD.x",	
	MOTION_CHANGE_TEX_XET	= "DEFENCE_GLITER_LANCE.xet",
	MOTION_ANI_TEX_XET		= "DEFENCE_GLITER_LANCE.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
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
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	USE_GUARD_COLLISION_BOX		= FALSE,
	
		
	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "Gliter_Weapon_Shield_001.X",
		WEAPON_BONE_NAME	= "Dummy1_Rhand",
	
			
		USE_SLASH_TRACE		= FALSE,
	},
	
	

}

INIT_STATE = 
{
	{ STATE_NAME = "GLITER_SHIELD_START",							},
	{ STATE_NAME = "GLITER_SHIELD_WAIT",							LUA_FRAME_MOVE_FUNC = "GLITER_SHIELD_WAIT_FRAME_MOVE",						},
	{ STATE_NAME = "GLITER_SHIELD_WAIT_HABIT",						},
	
	{ STATE_NAME = "GLITER_SHIELD_WALK",							LUA_FRAME_MOVE_FUNC = "GLITER_SHIELD_WALK_FRAME_MOVE",
																	LUA_STATE_END_FUNC  = "GLITER_SHIELD_WALK_STATE_END"						},
	
	
	
	{ STATE_NAME = "GLITER_SHIELD_JUMP_UP",							},
	{ STATE_NAME = "GLITER_SHIELD_JUMP_DOWN",						LUA_STATE_END_FUNC = "GLITER_SHIELD_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "GLITER_SHIELD_JUMP_UP_DIR",						},
	{ STATE_NAME = "GLITER_SHIELD_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "GLITER_SHIELD_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "GLITER_SHIELD_JUMP_LANDING",					},


	{ STATE_NAME = "GLITER_SHIELD_ATTACK",							 },
	{ STATE_NAME = "GLITER_SHIELD_DASH_ATTACK_READY",				 },
	{ STATE_NAME = "GLITER_SHIELD_DASH_ATTACK",						LUA_FRAME_MOVE_FUNC = "GLITER_SHIELD_DASH_ATTACK_FRAME_MOVE",						},
	{ STATE_NAME = "GLITER_SHIELD_DASH_ATTACK_END",					},
	
	
	--리액션 관련
	
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_BIG_BACK",					},
	
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "GLITER_SHIELD_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_FLY_BACK",					},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_AIR",						},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_AIR_FALL",					},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "GLITER_SHIELD_STAND_UP_FRONT",					},
	{ STATE_NAME = "GLITER_SHIELD_STAND_UP_BACK",					},
	
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_GUARD",					},
	{ STATE_NAME = "GLITER_SHIELD_DAMAGE_GUARD_LAND",				},
	
	{ STATE_NAME = "GLITER_SHIELD_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "GLITER_SHIELD_DYING_LAND_STATE_START",},
	{ STATE_NAME = "GLITER_SHIELD_DYING_LAND_BACK",					LUA_STATE_START_FUNC = "GLITER_SHIELD_DYING_LAND_STATE_START",},
	{ STATE_NAME = "GLITER_SHIELD_DYING_SKY",						LUA_STATE_START_FUNC = "GLITER_SHIELD_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "GLITER_SHIELD_START",
	WAIT_STATE					= "GLITER_SHIELD_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "GLITER_SHIELD_DAMAGE_GUARD",
	SMALL_DAMAGE_LAND_BACK		= "GLITER_SHIELD_DAMAGE_BIG_BACK",
	BIG_DAMAGE_LAND_FRONT		= "GLITER_SHIELD_DAMAGE_GUARD",
	BIG_DAMAGE_LAND_BACK		= "GLITER_SHIELD_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "GLITER_SHIELD_DAMAGE_GUARD_LAND",
	DOWN_DAMAGE_LAND_BACK		= "GLITER_SHIELD_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "GLITER_SHIELD_DAMAGE_GUARD",
	FLY_DAMAGE_BACK				= "GLITER_SHIELD_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "GLITER_SHIELD_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "GLITER_SHIELD_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "GLITER_SHIELD_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "GLITER_SHIELD_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "GLITER_SHIELD_DAMAGE_GUARD",
	
	DAMAGE_EXTRA_STATES         = {"GLITER_SHIELD_DAMAGE_AIR_FALL","GLITER_SHIELD_STAND_UP_FRONT","GLITER_SHIELD_STAND_UP_BACK",
	"GLITER_SHIELD_JUMP_DOWN","GLITER_SHIELD_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "GLITER_SHIELD_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "GLITER_SHIELD_DYING_LAND_BACK",
	DYING_SKY					= "GLITER_SHIELD_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	SMALL_DAMAGE_LAND_GUARD		= "GLITER_SHIELD_DAMAGE_GUARD",
	BIG_DAMAGE_LAND_GUARD		= "GLITER_SHIELD_DAMAGE_GUARD",
	DOWN_DAMAGE_LAND_GUARD		= "GLITER_SHIELD_DAMAGE_GUARD_LAND",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 100,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 40,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "GLITER_SHIELD_MANUAL_TARGET",
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 5.4,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0, -- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 0,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, --50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	--[[
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
	--]]
}


GLITER_SHIELD_START = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GLITER_SHIELD_WAIT",		"CT_GLITER_SHIELD_WAIT"				},
	},
	
	CT_GLITER_SHIELD_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}



GLITER_SHIELD_WAIT = 
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
	

    GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,


	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",				},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_SHIELD_DASH_ATTACK_READY",		"CT_GLITER_SHIELD_DASH_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_SHIELD_ATTACK",					"CT_GLITER_SHIELD_ATTACK",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_SHIELD_WAIT_HABIT",				"CT_GLITER_SHIELD_WAIT_HABIT",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GLITER_SHIELD_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GLITER_SHIELD_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GLITER_SHIELD_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GLITER_SHIELD_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GLITER_SHIELD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GLITER_SHIELD_JUMP_DOWN_DIR",			},
	},
	
	CT_GLITER_SHIELD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},
	CT_GLITER_SHIELD_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},

	CT_GLITER_SHIELD_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 2,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
	
}


GLITER_SHIELD_WAIT_HABIT = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	EVENT_INTERVAL_TIME0		= 2,
    

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GLITER_SHIELD_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_SHIELD_WAIT",				},
	},
}



GLITER_SHIELD_WALK = 
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
	

    GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_SHIELD_ATTACK",					"CT_GLITER_SHIELD_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_SHIELD_DASH_ATTACK_READY",		"CT_GLITER_SHIELD_DASH_ATTACK",			},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GLITER_SHIELD_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GLITER_SHIELD_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GLITER_SHIELD_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GLITER_SHIELD_JUMP_UP_DIR",			},
		--{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GLITER_SHIELD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GLITER_SHIELD_JUMP_DOWN_DIR",			},
	},
	
	CT_GLITER_SHIELD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 20,
	},
	CT_GLITER_SHIELD_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 30,
	},
}
		





GLITER_SHIELD_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GLITER_SHIELD_JUMP_DOWN",			},
	},
}

GLITER_SHIELD_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_SHIELD_JUMP_LANDING",				},
	},
}

GLITER_SHIELD_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GLITER_SHIELD_JUMP_DOWN_DIR",				},
	},
}

GLITER_SHIELD_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_SHIELD_JUMP_LANDING",				},
	},
}

GLITER_SHIELD_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.103, "Glitter_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_WAIT",						},
	},
}


GLITER_SHIELD_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
    SOUND_PLAY0			= { 0.612, "Glitter_Shield_Attack.ogg" },
    SOUND_PLAY1			= { 0.651, "GlitterVoice_AttackRoar1.ogg" },
	
    GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	SPEED_X			= 500,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_WAIT",						},
	},


	ATTACK_TIME0				= { 0.6, 0.7, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 600,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

}





GLITER_SHIELD_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_DASH_ATTACK",				},		
	},
}


GLITER_SHIELD_DASH_ATTACK_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
    GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

    SOUND_PLAY0			= { 0.325, "Glitter_Landing.ogg" },
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_WAIT",				},		
	},
}




GLITER_SHIELD_DASH_ATTACK =
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.152, "GlitterVoice_AttackRoar2.ogg" },
	
	PASSIVE_SPEED_X				= 1000,
		
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_INTERVAL_TIME0		= 0.1,

		
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",							},
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_DASH_ATTACK_END",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GLITER_SHIELD_DASH_ATTACK_END",	"CT_GLITER_SHIELD_DASH_ATTACK_END"		},
		
	},
	
	
	CT_GLITER_SHIELD_DASH_ATTACK_END = 
	{
		EVENT_INTERVAL_ID		= 0,	
		STATE_TIME_OVER			= 0.72,
	},
	
	
	ATTACK_TIME0				= { 0.01, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 1000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.4,	
		
	},
}




GLITER_SHIELD_DAMAGE_BIG_BACK = 
{
	ANIM_NAME					= "DamegeBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.174, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_SHIELD_WAIT",												},
	},
}


GLITER_SHIELD_DAMAGE_GUARD = 
{
	ANIM_NAME					= "Guard",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	

	GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	SOUND_PLAY0			= { 0.01, "Glitter_ShieldHit.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GLITER_SHIELD_WAIT",	"CT_GLITER_SHIELD_WAIT"		},
	},
	
	CT_GLITER_SHIELD_WAIT = 
	{
		STATE_TIME_OVER			= 1.0,
	},

}

GLITER_SHIELD_DAMAGE_GUARD_LAND = 
{
	ANIM_NAME					= "Guard",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	

	GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	SOUND_PLAY0			= { 0.01, "Glitter_ShieldHit.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GLITER_SHIELD_WAIT",	"CT_GLITER_SHIELD_WAIT"		},
	},
	
	CT_GLITER_SHIELD_WAIT = 
	{
		STATE_TIME_OVER			= 1.0,
	},
}


GLITER_SHIELD_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamegeDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.174, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GLITER_SHIELD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_SHIELD_STAND_UP_BACK",			},
	},
	
}


GLITER_SHIELD_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamegeAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_SHIELD_DAMAGE_DOWN_BACK",		},
	},
}

GLITER_SHIELD_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamegeAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_SHIELD_WAIT",					},
	},
}

GLITER_SHIELD_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamegeAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GLITER_SHIELD_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamegeAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GLITER_SHIELD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING",	},
	},

}

GLITER_SHIELD_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamegeAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"GLITER_SHIELD_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamegeAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.103, "GlitterVoice_HurtRoar1.ogg" },

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_STAND_UP_FRONT",			},
	},
	
}

GLITER_SHIELD_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamegeStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_WAIT",						},
	},
}

GLITER_SHIELD_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamegeStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_SHIELD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_SHIELD_WAIT", },
	},	
	
}






GLITER_SHIELD_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamegeDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.250, "GlitterVoice_DeathRoar.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
GLITER_SHIELD_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamegeDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.250, "GlitterVoice_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

GLITER_SHIELD_DYING_SKY = 
{
	ANIM_NAME					= "DamegeAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.103, "GlitterVoice_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    

	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------

function GLITER_SHIELD_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


function GLITER_SHIELD_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function GLITER_SHIELD_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



--------------------------------------------------------------------
function GLITER_SHIELD_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.15 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end
        
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 800 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
		end		
        
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end	        

		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 800 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
		end		
        
    end
    
end




function GLITER_SHIELD_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GLITER_SHIELD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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
		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end



function GLITER_SHIELD_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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


function GLITER_SHIELD_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	local pNearestNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"], 999999 )
	
	if nil ~= pNearestNpc then
		pNPCUnit:SetTargetUnit( pNearestNpc )
	end

end





function GLITER_SHIELD_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 400 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
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
					GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end
end



function GLITER_SHIELD_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 600 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		end
	end

	local iCrystallSmallKeyCode = pNPCUnit:GetKeyCode() + 5
	local pUnitCrystallSmall = pX2Game:GetKeyCodeNPC( iCrystallSmallKeyCode )
	if pUnitCrystallSmall ~= nil then
		local TargetPos = pUnitCrystallSmall:GetPos()
		local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), TargetPos)
		if distance <= 600 then
			local bIsRight = pNPCUnit:GetIsRight()
		        
			if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
				if( bIsRight == true ) then
					GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end

end


function GLITER_SHIELD_DO_ATTACK(pX2Game, pNPCUnit)
	local iRate = pNPCUnit:GetRandVal() % 100
	
	if iRate < 30 then
		pNPCUnit:StateChange_LUA( "GLITER_SHIELD_DASH_ATTACK_READY" )
	elseif iRate < 70 then
		pNPCUnit:StateChange_LUA( "GLITER_SHIELD_ATTACK" )
	else
		pNPCUnit:StateChange_LUA( "GLITER_SHIELD_ATTACK" )
	end
end



