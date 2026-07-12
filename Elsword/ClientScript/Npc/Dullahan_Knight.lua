-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 220.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 1.15,
	
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Skull_Dullahan_Laser01.dds",
	    "Laser01_Dullahan.tga",
	},
	
	READY_SOUND = 
	{	 
	
	 "Durahan_Slash1.ogg",
	 "Durahan_Slash2.ogg",
	 "Durahan_ComboSlash.ogg",
	 "Durahan_ShieldAttack.ogg",
	 "Durahan_Down1.ogg",
	 "Durahan_Hitted01.ogg",
	 "Durahan_Down2.ogg",
	 "Durahan_Down3.ogg",
	 "Durahan_StandUp.ogg",
	 "Durahan_Dash.ogg",
	 "Durahan_DashReady.ogg",
	 "Durahan_Slash3.ogg",
	 "Durahan_MagicBlade1.ogg",
	 "Durahan_SwordStab.ogg",
	 "Durahan_SwordUp.ogg",
	 "Durahan_Walk.ogg",
	 "Durahan_Walk2.ogg",
	 "Durahan_SpecialReady.ogg",
	 "Durahan_SpecialLaser.ogg",
     "Durahan_ShieldHit.ogg",
	 
	 "DurahanVoice_AttackRoar1.ogg",
	 "DurahanVoice_AttackRoar2.ogg",
	 "DurahanVoice_AttackRoar3.ogg",
	 "DurahanVoice_HurtRoar1.ogg",
	 "DurahanVoice_HurtRoar2.ogg",
	 "DurahanVoice_HurtRoar3.ogg",
	 "DurahanVoice_DieScream1.ogg",
	 
     
	},
	
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	    "Dullahan_MagicBlade_Mesh01.X",
	    "Dullahan_Special_Laser_Mesh01.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_DULLAHAN.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 600,
	RUN_SPEED			= 900,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2300,

}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	DRAW_SMALL_MP_BAR	= TRUE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	
	RAGE_COUNT_MAX		= 20,
	RAGE_TIME_MAX		= 3,

	
	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN			= TRUE,
	
	USE_GUARD_COLLISION_BOX		= FALSE,
	
	DIE_FLY             = 0,

	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "Dullahan_Knight",		
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_DULLAHAN.dds",
		
}











INIT_STATE = 
{
	{ STATE_NAME = "DULLAHAN_START",							},
	{ STATE_NAME = "DULLAHAN_WAIT",								},
	{ STATE_NAME = "DULLAHAN_WAIT_HABIT",						},
	
	{ STATE_NAME = "DULLAHAN_WALK",								LUA_FRAME_MOVE_FUNC = "DULLAHAN_WALK_FRAME_MOVE",
	                                                        	LUA_STATE_END_FUNC = "DULLAHAN_WALK_STATE_END"				},

	{ STATE_NAME = "DULLAHAN_ATTACK",							LUA_FRAME_MOVE_FUNC = "DULLAHAN_ATTACK_FRAME_MOVE",			},
	{ STATE_NAME = "DULLAHAN_ATTACK_COMBO",						},
	{ STATE_NAME = "DULLAHAN_DASH_ATTACK_READY",				STATE_COOL_TIME = 5, },
	{ STATE_NAME = "DULLAHAN_DASH_ATTACK",						LUA_FRAME_MOVE_FUNC = "DULLAHAN_DASH_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "DULLAHAN_DASH_ATTACK_END",					},
		
	{ STATE_NAME = "DULLAHAN_GUARD_SLASH",						},
	{ STATE_NAME = "DULLAHAN_GUARD_COMBO",						},
	
	{ STATE_NAME = "DULLAHAN_MAGICBLADE",						LUA_FRAME_MOVE_FUNC = "DULLAHAN_MAGICBLADE_FRAME_MOVE",	
																STATE_COOL_TIME	= 13, },
	
	{ STATE_NAME = "DULLAHAN_SPECIAL",							LUA_FRAME_MOVE_FUNC = "DULLAHAN_SPECIAL_FRAME_MOVE",		},
	
	{ STATE_NAME = "DULLAHAN_JUMP_DOWN",						}, 
	
	

	
	--리액션 관련	
	{ STATE_NAME = "DULLAHAN_DAMAGE_SMALL",						},
	{ STATE_NAME = "DULLAHAN_DAMAGE_BIG",						},
	
	{ STATE_NAME = "DULLAHAN_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "DULLAHAN_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "DULLAHAN_DAMAGE_DOWN_BACK",					LUA_FRAME_MOVE_FUNC = "DULLAHAN_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "DULLAHAN_DAMAGE_AIR",						},
	{ STATE_NAME = "DULLAHAN_DAMAGE_AIR_DOWN",					},
	{ STATE_NAME = "DULLAHAN_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "DULLAHAN_DAMAGE_AIR_FALL",					},
	{ STATE_NAME = "DULLAHAN_DAMAGE_AIR_DOWN_LANDING",			LUA_FRAME_MOVE_FUNC = "DULLAHAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	{ STATE_NAME = "DULLAHAN_STAND_UP_FRONT",					},
	{ STATE_NAME = "DULLAHAN_STAND_UP_BACK",					},
	
	{ STATE_NAME = "DULLAHAN_DAMAGE_GUARD_START",				},
	{ STATE_NAME = "DULLAHAN_DAMAGE_GUARD",						},
	{ STATE_NAME = "DULLAHAN_DAMAGE_GUARD_END",					},
	
	--{ STATE_NAME = "DULLAHAN_DAMAGE_REVENGE",					},
	
	{ STATE_NAME = "DULLAHAN_DYING_LAND_FRONT",					LUA_STATE_START_FUNC = "DULLAHAN_DYING_LAND_STATE_START",},
	{ STATE_NAME = "DULLAHAN_DYING_LAND_BACK",					LUA_STATE_START_FUNC = "DULLAHAN_DYING_LAND_STATE_START",},
	{ STATE_NAME = "DULLAHAN_DYING_SKY",						LUA_STATE_START_FUNC = "DULLAHAN_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "DULLAHAN_START",
	WAIT_STATE					= "DULLAHAN_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "DULLAHAN_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "DULLAHAN_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "DULLAHAN_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "DULLAHAN_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "DULLAHAN_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "DULLAHAN_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "DULLAHAN_DAMAGE_DOWN_FRONT",
	FLY_DAMAGE_BACK				= "DULLAHAN_DAMAGE_DOWN_BACK",
	SMALL_DAMAGE_AIR			= "DULLAHAN_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "DULLAHAN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "DULLAHAN_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "DULLAHAN_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "DULLAHAN_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "DULLAHAN_DAMAGE_SMALL",
	
	DAMAGE_EXTRA_STATES         = {"DULLAHAN_DAMAGE_AIR_FALL","DULLAHAN_STAND_UP_FRONT","DULLAHAN_STAND_UP_BACK",},	
	
	DYING_LAND_FRONT			= "DULLAHAN_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "DULLAHAN_DYING_LAND_BACK",
	DYING_SKY					= "DULLAHAN_DYING_SKY",

	REVENGE_ATTACK				= "",
	
	SMALL_DAMAGE_LAND_GUARD		= "DULLAHAN_DAMAGE_GUARD",
	BIG_DAMAGE_LAND_GUARD		= "DULLAHAN_DAMAGE_GUARD",
	DOWN_DAMAGE_LAND_GUARD		= "DULLAHAN_DAMAGE_GUARD",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 8000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9000,		-- cm
		TARGET_LOST_RANGE			= 10000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 100,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 60,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 410,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 0,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 999999,	-- 이 거리 보다 멀어지면 도망 성공
		
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


DULLAHAN_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	
	INVINCIBLE					= { 0, 100, }, 		
	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DULLAHAN_WAIT",		"CT_DULLAHAN_WAIT"				},
	},
	
	CT_DULLAHAN_WAIT = 
	{
		STATE_TIME_OVER			= 3.5,
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Flare_Dullahan_Eye01", FALSE, "Dummy3_Eye", FALSE, TRUE, 0, 0, 0, TRUE, },
	},

	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_1598 },
	},
}



DULLAHAN_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	

    --GUARD_DEFENCE               = 80,
	--GUARD_DEFENCE_FRONT			= TRUE,
	--GUARD_DEFENCE_BACK			= FALSE,


	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"DULLAHAN_JUMP_DOWN",					},
	
	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_ATTACK",					"CT_DULLAHAN_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"DULLAHAN_MAGICBLADE",						"CF_DULLAHAN_MAGICBLADE",				},	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DAMAGE_GUARD_START",		"CT_DULLAHAN_DAMAGE_GUARD_START",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DASH_ATTACK_READY",		"CT_DULLAHAN_DASH_ATTACK",		},
		
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_SPECIAL",		            "CT_DULLAHAN_SPECIAL",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"DULLAHAN_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"DULLAHAN_WALK",					},		
	},
	
	CT_DULLAHAN_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 55,
	},
	CT_DULLAHAN_DAMAGE_GUARD_START = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},	
	CT_DULLAHAN_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 25,
	},
	CT_DULLAHAN_SPECIAL = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		MY_MP_MORE_THAN_PERCENT     = 100,
		RATE						= 80,
	},	
	
}


DULLAHAN_WAIT_HABIT = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	


	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"DULLAHAN_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_WAIT",				},
	},
}



DULLAHAN_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	

    --GUARD_DEFENCE               = 80,
	--GUARD_DEFENCE_FRONT			= TRUE,
	--GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_PROCESS = 
	{				
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",					},
	
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_ATTACK",					"CT_DULLAHAN_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DAMAGE_GUARD_START",		"CT_DULLAHAN_DAMAGE_GUARD_START",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DASH_ATTACK_READY",		"CT_DULLAHAN_DASH_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"DULLAHAN_MAGICBLADE",						"CF_DULLAHAN_MAGICBLADE",				},	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_SPECIAL",		            "CT_DULLAHAN_SPECIAL",		},
        
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"DULLAHAN_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"DULLAHAN_WALK",					},
	},
	
	CT_DULLAHAN_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 55,
	},
	CT_DULLAHAN_DAMAGE_GUARD_START = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},	
	CT_DULLAHAN_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 25,
	},
	CT_DULLAHAN_SPECIAL = 
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN_PERCENT     = 100,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 80,
	},
}
		



DULLAHAN_JUMP_DOWN = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"DULLAHAN_WAIT",				},
	},
}


DULLAHAN_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
    SOUND_PLAY0			= { 0.713, "Durahan_Slash1.ogg" },
    SOUND_PLAY1			= { 1.573, "Durahan_Slash2.ogg" },
    SOUND_PLAY2			= { 0.754, "DurahanVoice_AttackRoar1.ogg" },
    SOUND_PLAY3			= { 1.580, "DurahanVoice_AttackRoar2.ogg" },
	    	
	--SPEED_X			= 300,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",					},
		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],     	"DULLAHAN_ATTACK_COMBO",    "CT_DULLAHAN_COMBO",    },		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		    	"DULLAHAN_WAIT",						},
	},

    CT_DULLAHAN_COMBO =
	{
		ANIM_EVENT_TIMER	= 2.0,
        ATTACK_SUCCESS      = TRUE,
		RATE				= 100,
	},
	

	ATTACK_TIME0				= { 0.72, 0.79, },
	ATTACK_TIME1				= { 1.54, 1.68, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		CAN_REVENGE     = FALSE,
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
		
		CAN_REVENGE     = FALSE,
		

		BACK_SPEED_X			= 300,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
		STOP_TIME_ATT			= 0.0,
		STOP_TIME_DEF			= 0.6,
		
		CLEAR_SCREEN			= 1,

	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1599 },
	},

}








DULLAHAN_ATTACK_COMBO = 
{
    ANIM_NAME					= "AttackCombo",
    PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
    SOUND_PLAY0			= { 0.790, "Durahan_ComboSlash.ogg" },
    SOUND_PLAY1			= { 0.878, "DurahanVoice_AttackRoar1.ogg" },
	
    --GUARD_DEFENCE               = 80,
	--GUARD_DEFENCE_FRONT			= TRUE,
	--GUARD_DEFENCE_BACK			= FALSE,

	
	--SPEED_X			= 500,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_WAIT",						},
	},


	ATTACK_TIME0				= { 0.6, 0.7, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.1,
		},
		
		CAN_REVENGE     = FALSE,
		
		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 500,
		
		CAMERA_CRASH_GAP		= 3.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

}


DULLAHAN_GUARD_SLASH =
{
    ANIM_NAME					= "GuardSlash",    
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
    SOUND_PLAY0			= { 0.485, "Durahan_Slash3.ogg" },
    SOUND_PLAY1			= { 0.524, "DurahanVoice_AttackRoar1.ogg" },
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",					},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],     "DULLAHAN_GUARD_COMBO",    "CT_DULLAHAN_GUARD_COMBO",    },		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		    "DULLAHAN_WAIT",						},
	},

    CT_DULLAHAN_GUARD_COMBO =
	{
		ANIM_EVENT_TIMER	= 0.99,
        ATTACK_SUCCESS      = TRUE,
		RATE				= 100,
	},
	

	ATTACK_TIME0				= { 0.46, 0.54, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
		
		CAN_REVENGE     = FALSE,
		
		STOP_TIME_DEF			= 0.3,
		CLEAR_SCREEN			= 1,
		
		BACK_SPEED_X			= 1350,
		BACK_SPEED_Y			= 1900,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	TALK_BOX =
	{
		{ RATE = 60, MESSAGE = STR_ID_1600 },
	},
}


DULLAHAN_GUARD_COMBO =
{
    ANIM_NAME					= "GuardCombo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--ANIM_SPEED                  = 2,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
    SOUND_PLAY0			= { 0.538, "Durahan_ShieldAttack.ogg" },
    SOUND_PLAY1			= { 0.562, "DurahanVoice_AttackRoar2.ogg" },
	    	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		    "DULLAHAN_WAIT",						},
	},
	

	ATTACK_TIME0				= { 0.54, 0.6, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		CAN_REVENGE     = FALSE,

		BACK_SPEED_X			= 2500,
		BACK_SPEED_Y			= 1000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}


DULLAHAN_MAGICBLADE =
{
    ANIM_NAME					= "MagicBlade",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.152, "Durahan_MagicBlade1.ogg" },
    SOUND_PLAY1			= { 1.587, "Durahan_Slash2.ogg" },
    SOUND_PLAY2			= { 1.646, "Durahan_SwordStab.ogg" },
    SOUND_PLAY3			= { 1.023, "DurahanVoice_AttackRoar3.ogg" },
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15124,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_WAIT",				},		
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.36, "EyeLight01_Dullahan_MagicBlade", FALSE, "Dummy01", TRUE, TRUE, 0, -15, 0, TRUE, },
		{ TRUE, 1.63, "Stone_Raven_EarthBreaker03", FALSE, "", TRUE, FALSE, 130, 0, -100, TRUE, },
		{ TRUE, 1.63, "Light01_Dullahan_MagicBlade", FALSE, "", TRUE, FALSE, 140, 0, -100, TRUE, },
		{ TRUE, 1.63, "UpLight01_Dullahan_MagicBlade", FALSE, "", TRUE, FALSE, 140, 0, -100, TRUE, },
		{ TRUE, 2.8, "Stone_Raven_EarthBreaker03", FALSE, "", TRUE, FALSE, 130, 0, -100, TRUE, },
		
		
	},
	
	TALK_BOX =
	{
		{ RATE = 60, MESSAGE = STR_ID_1601 },
	},
	
}


DULLAHAN_SPECIAL =
{
    ANIM_NAME					= "Special",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.782, "Durahan_SpecialReady.ogg" },
    SOUND_PLAY1			= { 0.599, "DurahanVoice_AttackRoar3.ogg" },
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	NEVER_MOVE					= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15125,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_WAIT",				},		
	},
	
	ATTACK_TIME0				= { 1.97, 2.1, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METAL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 2,
		},
		
		CAN_REVENGE     = FALSE,
		
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 1000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.8, "EyeLight01_Dullahan_Special", FALSE, "Dummy01", TRUE, TRUE, 5, -5, 0, TRUE, },
		{ TRUE, 2.0666, "Ring_Dullahan_Special01", FALSE, "Dummy01", TRUE, FALSE, 20, 0, 0, TRUE, },
		{ TRUE, 2.3, "Ring_Dullahan_Special02", FALSE, "Dummy01", TRUE, TRUE, 20, 0, 0, TRUE, },
		{ TRUE, 2.4, "Skull_Dullahan_Special01", FALSE, "Dummy01", TRUE, FALSE, 130, -20, 0, TRUE, },
		{ TRUE, 2.466, "Ring_Dullahan_Special03", FALSE, "Dummy01", TRUE, TRUE, 20, 0, 0, TRUE, },		
	},
	
	TALK_BOX =
	{
		{ RATE = 60, MESSAGE = STR_ID_1602 },
	},
}


DULLAHAN_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR                 = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.022, "Durahan_DashReady.ogg" },
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",				},			
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_DASH_ATTACK",				},		
	},
}


DULLAHAN_DASH_ATTACK_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
    --GUARD_DEFENCE               = 80,
	--GUARD_DEFENCE_FRONT			= TRUE,
	--GUARD_DEFENCE_BACK			= FALSE,
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",			},		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_WAIT",				},		
	},
}




DULLAHAN_DASH_ATTACK =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	
	PASSIVE_SPEED_X				= 1200,
		
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	--GUARD_DEFENCE               = 80,
	--GUARD_DEFENCE_FRONT			= TRUE,
	--GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_INTERVAL_TIME0		= 0.1,

		
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"DULLAHAN_DASH_ATTACK_END",						"CF_DULLAHAN_DASH_END",				},		
	},	
	
	
	
	ATTACK_TIME0				= { 0.01, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.8,   
		},
		
		CAN_REVENGE                 = FALSE,
		
		BACK_SPEED_X			= 1450,
		BACK_SPEED_Y			= 1300,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.4,
		
	},
	
	TALK_BOX =
	{
		{ RATE = 60, MESSAGE = STR_ID_1423 },
	},
}


DULLAHAN_DAMAGE_SMALL = 
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DAMAGE_GUARD_START",		"CT_DULLAHAN_DAMAGE_GUARD_START",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_WAIT",												},
	},
	
	CT_DULLAHAN_DAMAGE_GUARD_START = 
	{
		ANIM_EVENT_TIMER	= 0.05,
		--VIEW_TARGET = TRUE,
		--DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 10,
	},
	
}

DULLAHAN_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.043, "Durahan_Hitted01.ogg" , 100 },
    SOUND_PLAY1			= { 0.032, "DurahanVoice_HurtRoar3.ogg", 40 },
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DAMAGE_GUARD_START",		"CT_DULLAHAN_DAMAGE_GUARD_START",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_WAIT",												},
	},
	
	CT_DULLAHAN_DAMAGE_GUARD_START = 
	{
		ANIM_EVENT_TIMER	= 0.05,
		--DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 10,
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1603 },
	},
}

DULLAHAN_DAMAGE_GUARD_START = 
{
	ANIM_NAME					= "GuardStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	VIEW_TARGET 				= TRUE,
	
	
	GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_DAMAGE_GUARD",												},
	},	
	
}

DULLAHAN_DAMAGE_GUARD = 
{
	ANIM_NAME					= "Guard",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.01, "Durahan_ShieldHit.ogg" },

	GUARD_DEFENCE               = 60,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	
	SWAP_UNIT_WIDTH_HEIGHT = TRUE,
	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],     "DULLAHAN_GUARD_SLASH",         "CT_DULLAHAN_GUARD_SLASH",    },
  		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_DASH_ATTACK_READY",		"CT_DULLAHAN_DASH_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],     "DULLAHAN_DAMAGE_GUARD_END",    "CT_DULLAHAN_GUARD_END",    },	
	},

    CT_DULLAHAN_GUARD_SLASH =	
	{		
        STATE_TIME_OVER				= 0.8,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	
	CT_DULLAHAN_DASH_ATTACK =
	{
  		STATE_TIME_OVER				= 0.8,
		DISTANCE_TO_TARGET_NEAR		= 1300,
		RATE						= 40,
	},
	
    CT_DULLAHAN_GUARD_END =
	{
	    ANIM_PLAY_COUNT     = 4,
	},
	
	TALK_BOX =
	{
		{ RATE = 20, MESSAGE = STR_ID_1604 },
	},
}

DULLAHAN_DAMAGE_GUARD_END = 
{
	ANIM_NAME					= "GuardEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_WAIT",												},
	},
}


DULLAHAN_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

    SOUND_PLAY0			= { 1.164, "Durahan_Down1.ogg" },
    SOUND_PLAY1			= { 1.165, "DurahanVoice_HurtRoar2.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SWAP_UNIT_WIDTH_HEIGHT = TRUE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"DULLAHAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_STAND_UP_FRONT",			},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1605 },
	},
	
}

DULLAHAN_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

    SOUND_PLAY0			= { 0.884, "Durahan_Down2.ogg" },
    SOUND_PLAY1			= { 1.142, "Durahan_Down1.ogg" },
    SOUND_PLAY2			= { 1.145, "DurahanVoice_HurtRoar2.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SWAP_UNIT_WIDTH_HEIGHT = TRUE,
	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"DULLAHAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DULLAHAN_STAND_UP_BACK",			},
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1605 },
	},
	
}



DULLAHAN_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	--SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * 0.6,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"DULLAHAN_WAIT",					},
	},
}

DULLAHAN_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"DULLAHAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

DULLAHAN_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	PASSIVE_SPEED_Y				= -1,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * 0.5,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"DULLAHAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"DULLAHAN_DAMAGE_AIR_DOWN_LANDING",	},
	},

}

DULLAHAN_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	PASSIVE_SPEED_Y				= -1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"DULLAHAN_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"DULLAHAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

DULLAHAN_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

    SOUND_PLAY0			= { 0.100, "Durahan_Down3.ogg" },
    SOUND_PLAY1			= { 0.182, "DurahanVoice_HurtRoar1.ogg" },

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SWAP_UNIT_WIDTH_HEIGHT = TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_STAND_UP_FRONT",			},
	},
	
}

DULLAHAN_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.081, "Durahan_StandUp.ogg" },
    

	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_ATTACK",		"CT_DULLAHAN_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_WAIT",						},
	},
	

	CT_DULLAHAN_ATTACK_FRONT =
	{
		ANIM_EVENT_TIMER	= 1.2,
		RATE				= 100,
	},
}

DULLAHAN_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.287, "Durahan_StandUp.ogg" },

	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"DULLAHAN_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"DULLAHAN_ATTACK",		"CT_DULLAHAN_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DULLAHAN_WAIT", },
	},

	CT_DULLAHAN_ATTACK_FRONT =
	{
		ANIM_EVENT_TIMER	= 1.2,
		RATE				= 100,
	},
	
}






DULLAHAN_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SWAP_UNIT_WIDTH_HEIGHT = TRUE,

    SOUND_PLAY0			= { 0.250, "DurahanVoice_DieScream1.ogg" },
    SOUND_PLAY1			= { 1.116, "Durahan_Down1.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
DULLAHAN_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.250, "DurahanVoice_DieScream1.ogg" },
    SOUND_PLAY1			= { 0.884, "Durahan_Down2.ogg" },
    SOUND_PLAY2			= { 1.142, "Durahan_Down1.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SWAP_UNIT_WIDTH_HEIGHT = TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_1606 },
	},
}

DULLAHAN_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.103, "DurahanVoice_DieScream1.ogg" },
    SOUND_PLAY1			= { 0.100, "Durahan_Down1.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    

	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_1606 },
	},
}





--------------------------------------------------------------------

function CF_DULLAHAN_DASH_END( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() < 0.1 then
		return false 
	end
	
	
 	bIsRight = pNPCUnit:GetIsRight()
	vStartPos = pNPCUnit:GetLineGroupStartPos()
	vEndPos = pNPCUnit:GetLineGroupEndPos()

 	
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

function CF_DULLAHAN_MAGICBLADE( pKTDXApp, pX2Game, pNPCUnit )

    -- vPos를 linemap의 startpos 의 위치로 지정하자 빡쌍.
    --vPos = pX2Game:GetLineMap():GetStartPosition( 1 )
    vPos2 = pX2Game:GetLineMap():GetStartPosition( 2 )
    --vPos3 = pX2Game:GetLineMap():GetStartPosition( 3 )
    vPos4 = pX2Game:GetLineMap():GetStartPosition( 21 )
    vPos5 = pX2Game:GetLineMap():GetStartPosition( 22 )
    --vPos = pNPCUnit:GetPos()    -- 테스트

    if pX2Game:AnyUserUnitInRange( vPos2, 120 ) then
        return true
	elseif pX2Game:AnyUserUnitInRange( vPos4, 120 ) then
    	return true
	elseif pX2Game:AnyUserUnitInRange( vPos5, 120 ) then
    	return true
    end   

	return false

end


--------------------------------------------------------------------
function DULLAHAN_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

-- 걷는 사운드 뚜벅뚜벅~
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pNPCUnit:PlaySound_LUA( "Durahan_Walk.ogg" )
		pNPCUnit:ClearEventCheck( 0.7 )
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
		pNPCUnit:PlaySound_LUA( "Durahan_Walk2.ogg" )
		pNPCUnit:ClearEventCheck( 0.2 )
	end
end

function DULLAHAN_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	if pMinorParticle ~= nil then
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end


function DULLAHAN_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	if pMinorParticle ~= nil then
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function DULLAHAN_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	if pMinorParticle ~= nil then
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end



--------------------------------------------------------------------
function DULLAHAN_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

			
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	

end


function DULLAHAN_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    -- 대쉬 사운드 뚜벅뚜벅~
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pNPCUnit:PlaySound_LUA( "Durahan_Dash.ogg" )		
		pNPCUnit:ClearEventCheck( 0.2 )
	end
	
    if pNPCUnit:AnimEventTimer_LUA( 0.15 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end
        
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 800 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
		end		
        
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
        end	        

		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 800 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
		end		        
    end
end

function DULLAHAN_SPECIAL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 2.1 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10, 0.2 )
    end
        
    if pNPCUnit:AnimEventTimer_LUA( 2.3 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5, 1.9 )
    end
        
    if pNPCUnit:AnimEventTimer_LUA( 2.233 ) then
        pDamageEffect = pX2Game:GetDamageEffect()
        if pDamageEffect ~= nil then
            unitPos = pNPCUnit:GetNearestUserPos()
	        unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )	
            
            vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")           
		    bIsRight = pNPCUnit:GetIsRight()
		    vDirVector = pNPCUnit:GetDirVector()
		    
            if bIsRight == false then
			    vBonePos = MovePos( vBonePos, vDirVector, 70 )
		    else
			    vBonePos = MovePos( vBonePos, vDirVector, -50 )
		    end
                 
            --vBonePos.z = vBonePos.z - 150
            
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "DULLAHAN_SPECIAL_ATTACK", vBonePos, unitLandPos.y )
            
            pNPCUnit:SetNowMP(0)
        end
    end        
   
end

function DULLAHAN_MAGICBLADE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    pDamageEffect = pX2Game:GetDamageEffect()
    pMajorParticle = pX2Game:GetMajorParticle()    
    
    -- vPos를 linemap의 startpos 의 위치로 지정하자  빡쌍. 
    vPos = pX2Game:GetLineMap():GetStartPosition( 1 )
    vPos2 = pX2Game:GetLineMap():GetStartPosition( 2 )
    vPos3 = pX2Game:GetLineMap():GetStartPosition( 3 )
    vPos4 = pX2Game:GetLineMap():GetStartPosition( 21 )
    vPos5 = pX2Game:GetLineMap():GetStartPosition( 22 )
    --unitLandPos = pNPCUnit:GetNearestUserPos()
    --vPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitLandPos )

    if pNPCUnit:AnimEventTimer_LUA( 1.633 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.15 )
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 1.73 ) then        
        if pMajorParticle ~= nil then
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light02_Dullahan_MagicBlade", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UpLight02_Dullahan_MagicBlade", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light02_Dullahan_MagicBlade", vPos2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UpLight02_Dullahan_MagicBlade", vPos2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light02_Dullahan_MagicBlade", vPos3, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UpLight02_Dullahan_MagicBlade", vPos3, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light02_Dullahan_MagicBlade", vPos4, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UpLight02_Dullahan_MagicBlade", vPos4, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light02_Dullahan_MagicBlade", vPos5, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "UpLight02_Dullahan_MagicBlade", vPos5, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        end		        
    end
    
    -- pDamageEffect가 이 FrameMove 안에서 정의가 되어 있지 않음
    if pNPCUnit:AnimEventTimer_LUA( 2.3 ) then
        if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "DULLAHAN_MAGICBLADE_ATTACK", vPos, vPos.y )
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "DULLAHAN_MAGICBLADE_ATTACK", vPos2, vPos2.y )
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "DULLAHAN_MAGICBLADE_ATTACK", vPos3, vPos3.y )
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "DULLAHAN_MAGICBLADE_ATTACK", vPos4, vPos4.y )
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "DULLAHAN_MAGICBLADE_ATTACK", vPos5, vPos5.y )
        end
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 2.4 ) then        
        if pMajorParticle ~= nil then
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LightParticle01_Dullahan_MagicBlade", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LightParticle01_Dullahan_MagicBlade", vPos2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LightParticle01_Dullahan_MagicBlade", vPos3, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LightParticle01_Dullahan_MagicBlade", vPos4, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "LightParticle01_Dullahan_MagicBlade", vPos5, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        end		        
    end    
    
    if pNPCUnit:AnimEventTimer_LUA( 2.866 ) then
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 3.0, 0.15 )
    end

end



function DULLAHAN_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then
		    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		end
	end

end

function DULLAHAN_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then
		    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
        end		    
	end

end

function DULLAHAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then
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
		end
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then
		    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
        end		    
		
	end

end


function DULLAHAN_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	if GetMinorParticle ~= nil then
	    pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	    if pSeq ~= nil then
    	
		    pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		    pNPCUnit:SetDieSeq( pSeq:GetHandle() )
    	
	    end
    end	    
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	
end


function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end



