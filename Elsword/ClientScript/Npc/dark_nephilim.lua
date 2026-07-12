-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 1400.0,
	UNIT_HEIGHT		= 1500.0,	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.0,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Dark_Nephilim_AttackA.ogg",
		"Dark_Nephilim_AttackB_1.ogg",
		"Dark_Nephilim_AttackB_2.ogg",
		"Dark_Nephilim_CrashGate1.ogg",
		"Dark_Nephilim_CrashGate2.ogg",
		"Dark_Nephilim_Dash.ogg",
		"Dark_Nephilim_DashAttackA.ogg",
		"Dark_Nephilim_DashAttackB.ogg",
		"Dark_Nephilim_Dying.ogg",
		"Dark_Nephilim_MagicAttackA.ogg",
		"Dark_Nephilim_MagicAttackB.ogg",
		"Dark_Nephilim_Scream.ogg",
		"Dark_Nephilim_Scream2.ogg",
		"Dark_Nephilim_Scream3.ogg",
		"Dark_Nephilim_SpecialAttackA.ogg",
		"Dark_Nephilim_WakeUpAttackA.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
	},
}



INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_DARK_NEPHILIM.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 2000,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2600,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	DEFAULT_ANIM_SPEED		= 0.7,
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	HITTED_TYPE				= HITTED_TYPE["HTD_MEAT"],	
	DAMAGE_DOWN         = FALSE,
    --SKY_DIE             = TRUE,		
    DIE_FLY					= 0,		


	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "DARK_NEPHILIM",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_DARK_NEPHILIM.dds",			
}

INIT_STATE = 
{
	{ STATE_NAME = "DARK_NEPHILIM_START_READY",				LUA_STATE_START_FUNC = "DARK_NEPHILIM_START_READY_START_FUNC", 			},
	{ STATE_NAME = "DARK_NEPHILIM_START",					LUA_STATE_START_FUNC = "DARK_NEPHILIM_START_START_FUNC", 			},
	{ STATE_NAME = "DARK_NEPHILIM_WAIT",					},
	
	{ STATE_NAME = "DARK_NEPHILIM_ATTACK_A",				STATE_COOL_TIME = 15,},
	{ STATE_NAME = "DARK_NEPHILIM_ATTACK_B",				STATE_COOL_TIME = 10, },
	
	{ STATE_NAME = "DARK_NEPHILIM_MAGIC_ATTACK_A",			STATE_COOL_TIME = 15,},
	{ STATE_NAME = "DARK_NEPHILIM_MAGIC_ATTACK_B",			STATE_COOL_TIME = 15,},
	{ STATE_NAME = "DARK_NEPHILIM_SPECIAL_ATTACK_A",		LUA_FRAME_MOVE_FUNC		= "DARK_NEPHILIM_SPECIAL_ATTACK_A_FRAME_MOVE_FUNC",
															STATE_COOL_TIME = 25,},
	
	{ STATE_NAME = "DARK_NEPHILIM_CRASH_GATE",				LUA_FRAME_MOVE_FUNC		= "DARK_NEPHILIM_CRASH_GATE_FRAME_MOVE_FUNC",
															LUA_CAMERA_MOVE_FUNC	= "DARK_NEPHILIM_CRASH_GATE_CAMERA_MOVE_FUNC",		},
	{ STATE_NAME = "DARK_NEPHILIM_CRASH_GATE_WAIT",			},
	
	{ STATE_NAME = "DARK_NEPHILIM_DASH",					LUA_FRAME_MOVE_FUNC		= "DARK_NEPHILIM_DASH_FRAME_MOVE_FUNC",					},
	{ STATE_NAME = "DARK_NEPHILIM_DASH_ATTACK_A",			LUA_FRAME_MOVE_FUNC		= "DARK_NEPHILIM_DASH_ATTACK_A_FRAME_MOVE_FUNC",		},
	{ STATE_NAME = "DARK_NEPHILIM_DASH_ATTACK_B",			LUA_CAMERA_MOVE_FUNC	= "DARK_NEPHILIM_DASH_ATTACK_B_CAMERA_MOVE_FUNC",		},
	{ STATE_NAME = "DARK_NEPHILIM_DASH_MAGIC_ATTACK",		LUA_FRAME_MOVE_FUNC		= "DARK_NEPHILIM_DASH_MAGIC_ATTACK_FRAME_MOVE_FUNC",	},
	
	{ STATE_NAME = "DARK_NEPHILIM_WAKE_UP_ATTACK_A",		},
	
	--{ STATE_NAME = "DARK_NEPHILIM_DAMAGED",					},
	{ STATE_NAME = "DARK_NEPHILIM_DYING",					LUA_STATE_START_FUNC = "DARK_NEPHILIM_DYING_START_FUNC",	},
	
	
	
		
	START_STATE					= "DARK_NEPHILIM_START_READY",
	WAIT_STATE					= "DARK_NEPHILIM_WAIT",
		
	SMALL_DAMAGE_LAND_FRONT		= "DARK_NEPHILIM_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "DARK_NEPHILIM_WAIT",
	SMALL_DAMAGE_AIR			= "DARK_NEPHILIM_WAIT",	
	
	BIG_DAMAGE_LAND_FRONT		= "DARK_NEPHILIM_WAIT",
	BIG_DAMAGE_LAND_BACK		= "DARK_NEPHILIM_WAIT",
	BIG_DAMAGE_AIR				= "DARK_NEPHILIM_WAIT",
	
	DOWN_DAMAGE_LAND_FRONT		= "DARK_NEPHILIM_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "DARK_NEPHILIM_WAIT",
	DOWN_DAMAGE_AIR				= "DARK_NEPHILIM_WAIT",
	
	UP_DAMAGE					= "DARK_NEPHILIM_WAIT",
	
	FLY_DAMAGE_FRONT			= "DARK_NEPHILIM_WAIT",
	FLY_DAMAGE_BACK				= "DARK_NEPHILIM_WAIT",
	
	REVENGE_ATTACK				= "DARK_NEPHILIM_WAIT",	
	DAMAGE_REVENGE				= "DARK_NEPHILIM_WAIT",
	
	DYING_LAND_FRONT			= "DARK_NEPHILIM_DYING",
	DYING_LAND_BACK				= "DARK_NEPHILIM_DYING",
	DYING_SKY					= "DARK_NEPHILIM_DYING",
		
	DOWN_DAMAGE_AIR_LANDING		= "DARK_NEPHILIM_WAIT",
	COMMON_CAMERA_MOVE_FUNC 	= "DARK_NEPHILIM_COMMON_CAMERA_MOVE_FUNC",
	COMMON_FRAME_FUNC           = "DARK_NEPHILIM_COMMON_FRAME_MOVE",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_FAR_FIRST"],
		TARGET_INTERVAL				= 1,		
		TARGET_NEAR_RANGE			= 9000,		
		TARGET_RANGE				= 9000,		
		TARGET_LOST_RANGE			= 10000,		
		TARGET_SUCCESS_RATE			= 100,		
		ATTACK_TARGET_RATE			= 50,		
		PRESERVE_LAST_TARGET_RATE	= 40,		
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 700,
		DEST_GAP			= 800,
		MOVE_GAP			= 900,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}

DARK_NEPHILIM_START_READY =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

DARK_NEPHILIM_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15233,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 7, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"DARK_NEPHILIM_WAIT",				},
	},
}

DARK_NEPHILIM_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_CRASH_GATE",					"CF_DARK_NEPHILIM_CRASH_GATE",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_DASH",						"CF_DARK_NEPHILIM_DASH",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_ATTACK_A",					"CF_DARK_NEPHILIM_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_ATTACK_B",					"CF_DARK_NEPHILIM_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_MAGIC_ATTACK_A",				"CF_DARK_NEPHILIM_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_MAGIC_ATTACK_B",				"CF_DARK_NEPHILIM_MAGIC_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_SPECIAL_ATTACK_A",			"CF_DARK_NEPHILIM_SPECIAL_ATTACK_A",	},
		
	},	
	
	CF_DARK_NEPHILIM_ATTACK_A =
	{
		DISTANCE_TO_TARGET_NEAR	= 1600,
		RATE = 50,
	},
	
	CF_DARK_NEPHILIM_ATTACK_B =
	{
		--DISTANCE_OVER_TARGET_NEAR = 1600,
		RATE = 60,
	},
	
	CF_DARK_NEPHILIM_MAGIC_ATTACK_A =
	{
		TARGET_ABOVE_ME = TRUE,
		RATE = 40,
	},
	
	CF_DARK_NEPHILIM_MAGIC_ATTACK_B =
	{
		DISTANCE_OVER_TARGET_NEAR = 1600,
		RATE = 100,
	},
	
	CF_DARK_NEPHILIM_SPECIAL_ATTACK_A =
	{
		RATE = 30,
	},
	
}

DARK_NEPHILIM_ATTACK_A =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_WAIT",			},
	},	
	
	DISABLE_ATTACK_BOX =
	{
		"2_RHand",
		"1_Head",
	},
	
	SOUND_PLAY0					= { 0.92, "Dark_Nephilim_AttackA.ogg" },
	SOUND_PLAY1					= { 1.23, "Dark_Nephilim_Scream.ogg" },
	
	ATTACK_TIME0				= { 0.74, 0.86, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
			
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Attack_A", 0.0,
	},
	
}


DARK_NEPHILIM_ATTACK_B =
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15148,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_WAIT",			},
	},	
	
	SOUND_PLAY0					= { 0.1, "Dark_Nephilim_AttackB_1.ogg" },
	SOUND_PLAY1					= { 1.0, "Dark_Nephilim_AttackB_2.ogg" },
	SOUND_PLAY2					= { 1.5, "Dark_Nephilim_AttackB_3.ogg" },
	SOUND_PLAY3					= { 1.0, "Dark_Nephilim_WakeUpAttackA.ogg" },
	
	--[[
		ATTACK_TIME0				= { 1.2, 1.29, },
		
		DAMAGE_DATA = 
		{
			DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
			HIT_TYPE		= HIT_TYPE["HT_FIRE"],
			REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
			
			DAMAGE = 
			{
				PHYSIC		= 1.2,
			},
					
			BACK_SPEED_X			= 1000,
			BACK_SPEED_Y			= 0.0,
			
			CAMERA_CRASH_GAP		= 5.0,	
			CAMERA_CRASH_TIME		= 0.2,		
		},
	--]]
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Attack_B", 0.0,
	},
	
}

DARK_NEPHILIM_MAGIC_ATTACK_A =
{
	ANIM_NAME					= "MagicAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.5, "Dark_Nephilim_Scream2.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Magic_Attack_A", 0.0,
	},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_WAIT",			},
	},
}

DARK_NEPHILIM_MAGIC_ATTACK_B =
{
	ANIM_NAME					= "MagicAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 1.0, "Dark_Nephilim_Scream2.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Magic_Attack_B", 0.0,
	},
	
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_WAIT",			},
	},
}

DARK_NEPHILIM_SPECIAL_ATTACK_A =
{
	
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "SpecialAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 1.5, "Dark_Nephilim_SpecialAttackA.ogg" },
	SOUND_PLAY1					= { 0.3, "Dark_Nephilim_Scream3.ogg" },
	
	ANIM_SPEED_SET =
	{
		{ 0.03, 0.13, 0.49, },
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15149,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_WAIT",			},
	},
	
	--[[
		DISABLE_ATTACK_BOX =
		{
			"2_RHand",
			"3_LHand",
		},
		
		ATTACK_TIME0				= { 1.7, 1.8, },
		
		DAMAGE_DATA = 
		{
			DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
			HIT_TYPE		= HIT_TYPE["HT_FIRE"],
			REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
			
			DAMAGE = 
			{
				PHYSIC		= 1.2,
			},
			
			BACK_SPEED_X			= 1000,
			BACK_SPEED_Y			= 0.0,
			
			CAMERA_CRASH_GAP		= 5.0,	
			CAMERA_CRASH_TIME		= 0.2,		
		},
	--]]
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Special_Attack", 0.0,
	},
}

DARK_NEPHILIM_CRASH_GATE = 
{
	ANIM_NAME					= "CrashGate",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

	SOUND_PLAY0					= { 0.8, "Dark_Nephilim_CrashGate1.ogg" },
	SOUND_PLAY1					= { 2.24, "Dark_Nephilim_CrashGate2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DARK_NEPHILIM_CRASH_GATE_WAIT",			},
	},
	
	DISABLE_ATTACK_BOX =
	{
		"2_RHand",
		"3_LHand",
	},
	
	ATTACK_TIME0				= { 0.86, 1.0, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Crash_Gate", 0.0,
	},
}

DARK_NEPHILIM_CRASH_GATE_WAIT =
{
	ANIM_NAME					= "CrashGateWait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"DARK_NEPHILIM_WAKE_UP_ATTACK_A",			"CT_DARK_NEPHILIM_WAKE_UP_ATTACK_A",	},
	},
	
	CT_DARK_NEPHILIM_WAKE_UP_ATTACK_A =
	{
		STATE_TIME_OVER = 10,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Crash_Gate_Wait", 0.0,
	},
}

DARK_NEPHILIM_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0					= { 0.1, "Dark_Nephilim_Dash.ogg" },
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 8,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_WAIT",						"CF_DARK_NEPHILIM_WIN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_CRASH_GATE",					"CF_DARK_NEPHILIM_CRASH_GATE",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_WAIT",						"CF_DARK_NEPHILIM_WAIT",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_ATTACK_A",					"CF_DARK_NEPHILIM_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DARK_NEPHILIM_ATTACK_B",					"CF_DARK_NEPHILIM_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"DARK_NEPHILIM_DASH_ATTACK_A",			"CF_DARK_NEPHILIM_DASH_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"DARK_NEPHILIM_DASH_ATTACK_B",			"CF_DARK_NEPHILIM_DASH_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"DARK_NEPHILIM_DASH_MAGIC_ATTACK",		"CF_DARK_NEPHILIM_DASH_MAGIC_ATTACK",		},
	},
	
	CF_DARK_NEPHILIM_ATTACK_A =
	{
		DISTANCE_TO_TARGET_NEAR = 1500,
		RATE = 5,
	},
	
	CF_DARK_NEPHILIM_ATTACK_B =
	{
		EVENT_INTERVAL_ID 		= 0,
		DISTANCE_OVER_TARGET_NEAR = 1600,
		RATE = 50,
	},
}

DARK_NEPHILIM_DASH_ATTACK_A =
{
	ANIM_NAME					= "DashAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.7, "Dark_Nephilim_DashAttackA.ogg" },
	SOUND_PLAY1					= { 2.0, "Dark_Nephilim_Scream.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_CRASH_GATE",					"CF_DARK_NEPHILIM_CRASH_GATE",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_WAIT",						"CF_DARK_NEPHILIM_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_DASH",			},
	},	
	
	ATTACK_TIME0				= { 0.608, 0.728, },
	ATTACK_TIME1				= { 1.29, 1.418, },
	
	DISABLE_ATTACK_BOX =
	{
		"1_Head",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						0.5,
					},
				},
			},
		},
		
		RE_ATTACK		= TRUE,		
		HIT_GAP			= 0.5,
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Dash_Attack_A", 	0.0,
	},
}

DARK_NEPHILIM_DASH_ATTACK_B =
{
	ANIM_NAME					= "DashAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SPEED_X						= INIT_PHYSIC["WALK_SPEED"] * 2,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.8, "Dark_Nephilim_DashAttackB.ogg" },
	SOUND_PLAY1					= { 1.5, "Dark_Nephilim_Dash.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_CRASH_GATE",					"CF_DARK_NEPHILIM_CRASH_GATE",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_WAIT",						"CF_DARK_NEPHILIM_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_DASH",			},
	},	
	
	ATTACK_TIME0				= { 0.839, 1.019, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT2"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
				
		BACK_SPEED_X			= 3000,
		BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

DARK_NEPHILIM_DASH_MAGIC_ATTACK =
{
	ANIM_NAME					= "DashMagicAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
		
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	

	SOUND_PLAY0					= { 0.5, "Dark_Nephilim_Scream2.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_CRASH_GATE",					"CF_DARK_NEPHILIM_CRASH_GATE",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"DARK_NEPHILIM_WAIT",						"CF_DARK_NEPHILIM_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_DASH",			},
	},
}

DARK_NEPHILIM_WAKE_UP_ATTACK_A =
{
	ANIM_NAME					= "WakeUpAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"DARK_NEPHILIM_WAIT",			},
	},	
	
		
	SOUND_PLAY0					= { 1.2, "Dark_Nephilim_WakeUpAttackA.ogg" },
	SOUND_PLAY1					= { 1.3, "Dark_Nephilim_Scream.ogg" },
	
	ATTACK_TIME0				= { 0.01, 100, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		-- REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.2,
		-- },
			
		-- BACK_SPEED_X			= 1000,
		-- BACK_SPEED_Y			= 0.0,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	-- },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Nephilim_Wake_Up_Attack_A", 0.0,
	},
}

DARK_NEPHILIM_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	SOUND_PLAY0					= { 0.01, "Dark_Nephilim_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------- condition function----------------------------------------------------------
----------------------------------------------------------------------------------------
function CF_DARK_NEPHILIM_WIN( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end

end

function CF_DARK_NEPHILIM_DASH( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:LiveUserUnitNum() == 0 then
		return false
	end
	
	if IsNearLineEndPos( pNPCUnit, 2000 ) == true then
		return false
	end
	
	return true
	
end

function CF_DARK_NEPHILIM_WAIT( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:LiveUserUnitNum() == 0 then
		return false
	end
	
	if IsNearLineEndPos( pNPCUnit, 2000 ) == true then
		return true
	end
	
	return false
	
end

function CF_DARK_NEPHILIM_DASH_ATTACK_A( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:LiveUserUnitNum() == 0 then
		return false
	end
	
	if IsNearLineEndPos( pNPCUnit, 3000 ) == true then
		return false
	end
	
	local pStatueNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_STONE_WALL_AISHA"] )
	
	if pStatueNpc ~= nil and pNPCUnit:GetXDistanceFrom( pStatueNpc:GetPos().x ) < 1300 then
		return true
	end
	
	if pNPCUnit:GetTimerElapsedTime( 0 ) < 2.0 then
		return false
	end
	
	if IsOverThisPercent( pNPCUnit, 0.6 ) then
		return false
	end
	
	local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
	local npcUid	= pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"], 1000 )
	
	if npcUid ~= 0 then
		return false
	end
	
	local distX = pNPCUnit:GetXDistanceFrom( pNPCUnit:GetNearestUserPos().x )
	if distX < 1450 then
		pNPCUnit:SetTimerRestart( 0 )
		return true
	end		
	
	return false
	
end

function CF_DARK_NEPHILIM_DASH_ATTACK_B( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:LiveUserUnitNum() == 0 then
		return false
	end
	
	if IsNearLineEndPos( pNPCUnit, 4000 ) == true then
		return false
	end
	
	if pNPCUnit:GetTimerElapsedTime( 1 ) < 5.0 then
		return false
	end
	
	if IsOverThisPercent( pNPCUnit, 0.2 ) then
		return false
	end
	
	local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
	local npcUid	= pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"], 1000 )
	
	if npcUid ~= 0 then
		return false
	end
	
	local distX = pNPCUnit:GetXDistanceFrom( pNPCUnit:GetNearestUserPos().x )
	if  distX > 1450 and distX < 1800 then
		pNPCUnit:SetTimerRestart( 1 )
		return true
	end
		
	return false
	
end

function CF_DARK_NEPHILIM_DASH_MAGIC_ATTACK( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:LiveUserUnitNum() == 0 then
		return false
	end
	
	if IsNearLineEndPos( pNPCUnit, 3000 ) == true then
		return false
	end
	
	if pNPCUnit:GetTimerElapsedTime( 2 ) < 8.0 then
		return false
	end
	
	if IsOverThisPercent( pNPCUnit, 0.3 ) then
		return false
	end
	
	local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
	local npcUid	= pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"], 1000 )
	
	if npcUid ~= 0 then
		return false
	end
	
	local distX = pNPCUnit:GetXDistanceFrom( pNPCUnit:GetNearestUserPos().x )
	if  distX > 1800 then
		pNPCUnit:SetTimerRestart( 2 )
		return true
	end
	
	return false
	
end

function CF_DARK_NEPHILIM_CRASH_GATE( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:LiveUserUnitNum() == 0 then
		return false
	end
	
	local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
	local npcUid	= pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"], 2000 )
	
	if npcUid == 0 then
		return false
	end
	
	local pWallNpc = pX2Game:GetNPCUnitByUID( npcUid )
	
	if pWallNpc == nil then
		return false
	end
	
	if 	pNPCUnit:GetXDistanceFrom( pWallNpc:GetPos().x ) < 1000 then	
		
		local nowStateID 	= pWallNpc:GetNowStateID()
		local destStateID 	= pWallNpc:GetStateID_LUA( "VELDER_STAGE6_BOSS_TRAP_ATTACK" )
	
		if nowStateID == destStateID then
			return true
		end
		
	end

	return false
	
end

----------- state function----------------------------------------------------------
----------------------------------------------------------------------------------------
function DARK_NEPHILIM_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local vPos = pNPCUnit:GetPos()
	
	local npcFrontSide = pX2Game:GetKeyCodeNPC( 11 )
	
	if npcFrontSide ~= nil then
		vPos.x = vPos.x - 3000
		npcFrontSide:SetPosition( vPos, false )
	end
	
	if IsNearLineEndPos( pNPCUnit, 2000 ) == true then
		pNPCUnit:SetFocusCameraForce( false )
	end
	
	local userListSize = pX2Game:GetUserUnitListSize() - 1
	
	for i = 0, userListSize do
		local pUser = pX2Game:GetUserUnit( i )
		
		if pUser ~= nil then
			local vUserPos = pUser:GetPos()
			local vNpcPos = pNPCUnit:GetPos()
			
			if  vUserPos.x < vNpcPos.x - 2200 or
				vUserPos.x > vNpcPos.x - 300 then
				vUserPos.x = vNpcPos.x - 200
				
				pUser:InitPosByMonsterPos()
			end
			
		end
		
	end
	
end

function DARK_NEPHILIM_START_READY_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetShowGage( false )
	pNPCUnit:SetShow( false )
	pNPCUnit:SetFocusCameraForce( false )
	pNPCUnit:SetFocusCamera( false )
end

function DARK_NEPHILIM_START_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetShowGage( true )
	pNPCUnit:SetShow( true )
	pNPCUnit:SetFocusCameraForce( true )
	pNPCUnit:SetFocusCamera( true )
	
	local pNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DARK_NEPHILIM_FAKE"] )
	
	if pNpc ~= nil then
	--	pNpc:SetShow( false )
	end
	
	math.random( os.time() )
	
	local vPos = pNPCUnit:GetPos()
	vPos.x = vPos.x - 3000
	pX2Game:CreateNPCReq_LUA2( NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_WALL"], pNPCUnit:GetHardLevel(), false, vPos, false, D3DXVECTOR3( 0.01, 11, 0 ), true  )
end

function DARK_NEPHILIM_DASH_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimTimer_LUA( 0.01 ) then    
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 0.2 )
    end
	
	if pNPCUnit:AnimTimer_LUA( 0.51 ) then    
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 0.2 )
    end
	
	if pNPCUnit:AnimTimer_LUA( 0.1 ) then    
        pNPCUnit:PlaySound_LUA( "Dark_Nephilim_Dash.ogg" )
    end

end

function DARK_NEPHILIM_DASH_ATTACK_A_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimTimer_LUA( 0.1 ) then    
        pNPCUnit:PlaySound_LUA( "Dark_Nephilim_Dash.ogg" )
    end
	
	if pNPCUnit:AnimTimer_LUA( 0.72 ) then    
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.5 )
    end
	
	if pNPCUnit:AnimTimer_LUA( 1.39 ) then    
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.5 )
    end
	
end

function DARK_NEPHILIM_DASH_MAGIC_ATTACK_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then    
	
		local pEffectSet = pX2Game:GetEffectSet()
		
		pEffectSet:PlayEffectSet_LUA( "EffectSet_Nephilim_Dash_Magic_Attack_A", pNPCUnit )

    end
	
end

function DARK_NEPHILIM_SPECIAL_ATTACK_A_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pX2Game:SetWorldColor_LUA( D3DXCOLOR( 1.0, 0.1, 0.1, 1 ) )
end

function DARK_NEPHILIM_CRASH_GATE_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
		local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
		local npcUid	= pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"], 2000 )
	
		if npcUid == 0 then
			return
		end
	
		local pWallNpc = pX2Game:GetNPCUnitByUID( npcUid )
	
		if pWallNpc == nil then
			return
		end
	
		pWallNpc:SetNowHP_LUA( 0.0 )
	end
end

function DARK_NEPHILIM_CRASH_GATE_CAMERA_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetNowAnimTime_LUA() < 1.0 then
		local vPos = pNPCUnit:GetLandPosition_LUA()
	
		vPos.x = vPos.x - 400
		vPos.y = vPos.y + 300
	
		local camera = pX2Game:GetX2Camera()
	
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, vPos, D3DXVECTOR3( 1500, 200, 0 ), D3DXVECTOR3( 0, 0, 0.3 ) )
		
		return
	end
	
	DARK_NEPHILIM_COMMON_CAMERA_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
end

function DARK_NEPHILIM_COMMON_CAMERA_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetLandPosition_LUA()--pNPCUnit:GetBonePos_LUA( "Bip01_Footsteps" )
	
	vPos.x = vPos.x - 1200
	vPos.y = vPos.y + 300
	
	local camera = pX2Game:GetX2Camera()
	
	camera:PartsLookTrackingCamera_LUA( pNPCUnit, vPos, D3DXVECTOR3( 1500, 200, 0 ), D3DXVECTOR3( 0, 0, 0.3 ) )
	
end

function DARK_NEPHILIM_DASH_ATTACK_B_CAMERA_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
		local vPos = pNPCUnit:GetLandPosition_LUA()
	
		vPos.x = vPos.x - 500
		vPos.y = vPos.y + 300
	
		local camera = pX2Game:GetX2Camera()
	
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, vPos, D3DXVECTOR3( 1500, 200, 0 ), D3DXVECTOR3( 0, 0, 0.3 ) )
		
		return
	end
	
	DARK_NEPHILIM_COMMON_CAMERA_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
end

function DARK_NEPHILIM_DYING_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetKeyCode() == 20 then
		local pNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_WALL"] )
		if pNpc ~= nil then
			pNpc:SetNowHP_LUA( 0 )
		end
	end

end



----------- util function----------------------------------------------------------
----------------------------------------------------------------------------------------

function IsNearLineEndPos( pNPCUnit, distance )
	
	local vPos = pNPCUnit:GetPos() 
	
	if vPos.x > -20000.0 then
		return false
	end
	
	local bIsRight = pNPCUnit:GetIsRight()
	local vStartPos = pNPCUnit:GetLineGroupStartPos()
	local vEndPos = pNPCUnit:GetLineGroupEndPos()
	
	if bIsRight == true and pNPCUnit:GetXDistanceFrom(vEndPos.x) < distance then
		return true
   	end
   	
   	if bIsRight == false and pNPCUnit:GetXDistanceFrom(vStartPos.x) < distance then
		return true
    end
    
    return false
end

function IsOverThisPercent( pNPCUnit, rate )

	local rand = math.random()--pNPCUnit:GetRandVal() % 100
	if rand > (rate) then
		return false
	end
	
	return true
	
end
