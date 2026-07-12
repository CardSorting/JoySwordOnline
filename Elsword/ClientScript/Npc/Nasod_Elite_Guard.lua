-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- note: damagedownfront, damageairflyfront 모션 없음, front damage는 그냥 damage 모션만 



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 130.0,
	UNIT_HEIGHT		= 130.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 0.85,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Spark01.dds",
	    "Spark02.dds",
	    "Spark03.dds",
	},
	
	READY_SOUND = 
	{
	 "Nasod_Guard_Attack.ogg",
	 "Nasod_Guard_AttackLightning.ogg",
	 "Nasod_Guard_Combo1.ogg",
	 "Nasod_Guard_Combo2.ogg",
     "Nasod_Guard_Down.ogg",
	 "Nasod_Guard_Fall.ogg",
	 "Nasod_Guard_StandUpAttackBack.ogg",
--	 "Nasod_Guard_StandUpAttackFront.ogg",
     "Nasod_Guard_ShieldHit.ogg",
	 
	},
	
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	    "DummyAttackBox_50x50x50.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Nasod_Guard.x",
	MOTION_CHANGE_TEX_XET	= "Nasod_Elite_Guard.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 200,
	RUN_SPEED			= 200,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
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
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	
	USE_GUARD_COLLISION_BOX		= TRUE,
	

}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_GUARD_START",							},
	{ STATE_NAME = "NASOD_GUARD_WAIT",							},
	{ STATE_NAME = "NASOD_GUARD_WAIT_START",					},
	
	{ STATE_NAME = "NASOD_GUARD_WALK",							LUA_STATE_END_FUNC = "NASOD_GUARD_WALK_STATE_END"						},
	{ STATE_NAME = "NASOD_GUARD_JUMP_UP",						},
	{ STATE_NAME = "NASOD_GUARD_JUMP_DOWN",						LUA_STATE_END_FUNC = "NASOD_GUARD_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "NASOD_GUARD_JUMP_UP_DIR",					},
	{ STATE_NAME = "NASOD_GUARD_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "NASOD_GUARD_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "NASOD_GUARD_JUMP_LANDING",					},


	{ STATE_NAME = "NASOD_GUARD_ATTACK",						LUA_FRAME_MOVE_FUNC = "NASOD_GUARD_ATTACK_FRAME_MOVE",
	                                                            LUA_STATE_END_FUNC  = "NASOD_GUARD_ATTACK_STATE_END",                   },
	{ STATE_NAME = "NASOD_GUARD_COMBO",							LUA_FRAME_MOVE_FUNC = "NASOD_GUARD_COMBO_FRAME_MOVE",					},
	
	
	--리액션 관련
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_BIG",					LUA_FRAME_MOVE_FUNC = "NASOD_GUARD_DAMAGE_BIG_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "NASOD_GUARD_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_AIR",					},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "NASOD_GUARD_STAND_UP_FRONT",				},
	{ STATE_NAME = "NASOD_GUARD_STAND_UP_BACK",					},
	{ STATE_NAME = "NASOD_GUARD_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "NASOD_GUARD_STAND_UP_ATTACK_BACK_FRAME_MOVE",
																LUA_STATE_END_FUNC = "NASOD_GUARD_STAND_UP_ATTACK_BACK_STATE_END",		},
	
	{ STATE_NAME = "NASOD_GUARD_DAMAGE_GUARD",					},
	
	
	{ STATE_NAME = "NASOD_GUARD_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "NASOD_GUARD_DYING_LAND_STATE_START",},
	{ STATE_NAME = "NASOD_GUARD_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "NASOD_GUARD_DYING_LAND_STATE_START",},
	{ STATE_NAME = "NASOD_GUARD_DYING_SKY",						LUA_STATE_START_FUNC = "NASOD_GUARD_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "NASOD_GUARD_START",
	WAIT_STATE					= "NASOD_GUARD_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_GUARD_DAMAGE_BIG",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_GUARD_DAMAGE_BIG",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_GUARD_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "NASOD_GUARD_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_GUARD_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_GUARD_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "NASOD_GUARD_DAMAGE_BIG",
	FLY_DAMAGE_BACK				= "NASOD_GUARD_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "NASOD_GUARD_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "NASOD_GUARD_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "NASOD_GUARD_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "NASOD_GUARD_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "NASOD_GUARD_DAMAGE_BIG",
	
	DAMAGE_EXTRA_STATES         = {"NASOD_GUARD_DAMAGE_AIR_FALL","NASOD_GUARD_STAND_UP_FRONT","NASOD_GUARD_STAND_UP_BACK","NASOD_GUARD_STAND_UP_ATTACK_BACK",
		"NASOD_GUARD_JUMP_DOWN","NASOD_GUARD_JUMP_LANDING",	},	
	
	DYING_LAND_FRONT			= "NASOD_GUARD_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "NASOD_GUARD_DYING_LAND_BACK",
	DYING_SKY					= "NASOD_GUARD_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	SMALL_DAMAGE_LAND_GUARD		= "NASOD_GUARD_DAMAGE_GUARD",
	BIG_DAMAGE_LAND_GUARD		= "NASOD_GUARD_DAMAGE_GUARD",
	DOWN_DAMAGE_LAND_GUARD		= "NASOD_GUARD_DAMAGE_GUARD",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
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


NASOD_GUARD_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

    GUARD_DEFENCE               = 70,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

    		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"NASOD_GUARD_WAIT",		"CT_NASOD_GUARD_WAIT"				},
	},
	
	CT_NASOD_GUARD_WAIT = 
	{
		STATE_TIME_OVER			= 3,
	},
}



NASOD_GUARD_WAIT = 
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
	
	GUARD_DEFENCE               = 70,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_GUARD_ATTACK",					"CT_NASOD_GUARD_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_GUARD_COMBO",					"CT_NASOD_GUARD_COMBO",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_GUARD_WAIT_START",				"CT_NASOD_GUARD_WAIT_START",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"NASOD_GUARD_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"NASOD_GUARD_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_GUARD_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_GUARD_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_GUARD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_GUARD_JUMP_DOWN_DIR",			},
	},
	
	CT_NASOD_GUARD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 40,
	},
	CT_NASOD_GUARD_COMBO = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},

	CT_NASOD_GUARD_WAIT_START = 
	{
		ANIM_PLAY_COUNT				= 2,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
	
    TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
 		{ RATE = 10,		MESSAGE = STR_ID_1659 },
 	},
		
}


NASOD_GUARD_WAIT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	

	EVENT_INTERVAL_TIME0		= 2,
    
	GUARD_DEFENCE               = 70,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

    
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_GUARD_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_GUARD_WAIT",					},
	},
	
	TALK_BOX =
	{
		EVENT_INTERVAL_ID			= 0,
 		{ RATE = 30, MESSAGE = STR_ID_2567 },
 	},

}



NASOD_GUARD_WALK = 
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
	
	GUARD_DEFENCE               = 70,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_GUARD_ATTACK",					"CT_NASOD_GUARD_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_GUARD_COMBO",					"CT_NASOD_GUARD_COMBO",			},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"NASOD_GUARD_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"NASOD_GUARD_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_GUARD_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_GUARD_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_GUARD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_GUARD_JUMP_DOWN_DIR",			},
	},
	
	CT_NASOD_GUARD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_NASOD_GUARD_COMBO = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},
		
	TALK_BOX =
 	{
 		EVENT_INTERVAL_ID		= 1,
		{ RATE = 10, MESSAGE = STR_ID_2574 },
		{ RATE = 10, MESSAGE = STR_ID_1770 },
	},
}





NASOD_GUARD_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_GUARD_JUMP_DOWN",			},
	},
}

NASOD_GUARD_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_GUARD_JUMP_LANDING",				},
	},
}

NASOD_GUARD_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_GUARD_JUMP_DOWN_DIR",				},
	},
}

NASOD_GUARD_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_GUARD_JUMP_LANDING",				},
	},
}

NASOD_GUARD_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_WAIT",						},
	},
}


NASOD_GUARD_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.700, "Nasod_Guard_Attack.ogg" , },
    SOUND_PLAY1			= { 1.041, "Nasod_Guard_AttackLightning.ogg" , },

	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1684 },
		{ RATE = 10, MESSAGE = STR_ID_1771 },
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.65, "Wally_8th_Spark", FALSE, "ATTACK_SPHERE3_Weapon", TRUE, TRUE, 0, 0, -15, FALSE, 0, 0, 0, 1.5, 1.5, 1.5},
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_WAIT",							},
	},
	
	DISABLE_ATTACK_BOX = 
	{
		"Shield",
		"Shield",
	},
}

NASOD_GUARD_COMBO =
{
	ANIM_NAME					= "Combo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 500,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.434, "Nasod_Guard_Combo1.ogg" , },
    SOUND_PLAY1			= { 1.124, "Nasod_Guard_Combo1.ogg" , },
    SOUND_PLAY2			= { 1.847, "Nasod_Guard_Combo2.ogg" , },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	GUARD_DEFENCE               = 70,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1458 },
		{ RATE = 10, MESSAGE = STR_ID_1474 },
	},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_WAIT",					},
	},
	
	
	DISABLE_ATTACK_BOX = 
	{
		"Weapon",
		"Weapon",
	},
	
	ATTACK_TIME0				= { 0.4, 0.46, },
	ATTACK_TIME1				= { 1.1, 1.166, },
	ATTACK_TIME2				= { 1.8, 1.866, },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 950,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
		
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 1000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}




NASOD_GUARD_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	DAMAGE_DOWN                 = FALSE,    -- Down되는 않는 상태이다.
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1476 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_GUARD_WAIT",												},
	},
}

NASOD_GUARD_DAMAGE_GUARD = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	GUARD_DEFENCE               = 70,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_INTERVAL_TIME0		= 2,
	
	SOUND_PLAY0			= { 0.01, "Nasod_Guard_ShieldHit.ogg" },
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1772 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_GUARD_WAIT",												},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			    "NASOD_GUARD_COMBO",					"CT_NASOD_GUARD_COMBO",			},
	},
	
	CT_NASOD_GUARD_COMBO = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
}

NASOD_GUARD_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

    SOUND_PLAY0			= { 0.544, "Nasod_Guard_Down.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_2569 },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_GUARD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"NASOD_GUARD_STAND_UP_ATTACK_BACK",		"CT_NASOD_GUARD_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_GUARD_STAND_UP_BACK",			},
	},
	
	CT_NASOD_GUARD_STAND_UP_ATTACK_BACK = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 10,
	},
}


NASOD_GUARD_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_GUARD_DAMAGE_DOWN_BACK",		},
	},
}

NASOD_GUARD_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_GUARD_WAIT",					},
	},
}

NASOD_GUARD_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_GUARD_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_GUARD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
		{ RATE = 10, MESSAGE = STR_ID_2569 },
	},
}

NASOD_GUARD_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"NASOD_GUARD_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

    SOUND_PLAY0			= { 0.078, "Nasod_Guard_Fall.ogg" },
    SOUND_PLAY1			= { 0.544, "Nasod_Guard_Down.ogg" },

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_STAND_UP_FRONT",			},
	},
	
}

NASOD_GUARD_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_WAIT",						},
	},
}

NASOD_GUARD_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_WAIT", },
	},	
	
}



NASOD_GUARD_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
   	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },


    SOUND_PLAY0			= { 0.459, "Nasod_Guard_StandUpAttackBack.ogg" , },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

		
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_GUARD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_GUARD_WAIT", },
	},	
	
		
	ATTACK_TIME0				= { 0.7, 0.84, },	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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



NASOD_GUARD_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.260, "Nasod_Guard_Down.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
NASOD_GUARD_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.544, "Nasod_Guard_Down.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

NASOD_GUARD_DYING_SKY = 
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









--------------------------------------------------------------------
--------------------------------------------------------------------

function NASOD_GUARD_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


function NASOD_GUARD_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function NASOD_GUARD_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



--------------------------------------------------------------------
function NASOD_GUARD_COMBO_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end	        
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 1.1 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end	        
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 1.8 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end	        
    end
    
	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetSpeedX( 500 )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.4 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
		pNPCUnit:SetSpeedX( 500 )
	end
	
end



function NASOD_GUARD_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end


function NASOD_GUARD_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function NASOD_GUARD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
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





function NASOD_GUARD_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end


function NASOD_GUARD_STAND_UP_ATTACK_BACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	

end




function NASOD_GUARD_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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


function NASOD_GUARD_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then
        vLandPos = pNPCUnit:GetLandPosition_LUA()
    	
        pDamageEffect = pX2Game:GetDamageEffect()
        
        if pDamageEffect ~= nil then
	        pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "GUARD_LIGHTNING", pNPCUnit:GetBonePos_LUA("ATTACK_SPHERE3_Weapon"), vLandPos.y )	
	        pNPCUnit:SetDamageEffect_LUA(0, pDamage)        
        end	        

	end
end


function NASOD_GUARD_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
--[[
    pEffect = pNPCUnit:GetDamageEffect_LUA( 0 )
	if pEffect ~= nil then
	
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect:IsLiveInstance( pEffect ) == true then							
		    pDamageEffect:DestroyInstance( pEffect )
        end
		
	end
	
	pNPCUnit:ClearDamageEffect_LUA( 0 )
--]]	
end




------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

