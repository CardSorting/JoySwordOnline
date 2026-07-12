-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.4,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    	      
	},
	
	READY_SOUND = 
	{          
		"Spriggan_Big_AttackB.ogg",
		"Spriggan_Big_AttackCombo1.ogg",
		"Spriggan_Big_MagicAttackB.ogg",
		
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
	MOTION_FILE_NAME		= "_Motion_Spriggan_Big.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 750,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE		= 3,
	MP_CHARGE_RATE		= 1200,
	

	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--DRAW_SMALL_MP_BAR	= TRUE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Bip01_Head",
	
	--RAGE_COUNT_MAX		= 30,
	--RAGE_TIME_MAX		= 3,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DIE_FLY             = 0,
	ATTRIBUTE_EMOTION_FLAG  = FALSE,
	
 	INVISIBLE =
	{
		MAX_ALPHA = 1,
		MIN_ALPHA = 0,
		SPEED = 2,
		
		ALPHA_LOWER_BOUND = 0.2,
		CLOAKING_UNIT = TRUE,
	},
	
}

INIT_STATE = 
{
	{ STATE_NAME = "SPRIGGAN_BIG_WAIT",			LUA_STATE_START_FUNC = "SPRIGGAN_BIG_WAIT_STATE_START",},
	{ STATE_NAME = "SPRIGGAN_BIG_HIDE",			LUA_STATE_START_FUNC = "SPRIGGAN_BIG_HIDE_STATE_START",},
	
	
	{ STATE_NAME = "SPRIGGAN_BIG_ATTACK_B",					LUA_STATE_START_FUNC = "SPRIGGAN_BIG_ATTACK_B_STATE_START", STATE_COOL_TIME = 3,},
	{ STATE_NAME = "SPRIGGAN_BIG_ATTACK_B_COMBO",			},
	{ STATE_NAME = "SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC",		LUA_STATE_START_FUNC = "SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC_STATE_START",},
	{ STATE_NAME = "SPRIGGAN_BIG_MAGIC_ATTACK_B",			LUA_STATE_START_FUNC = "SPRIGGAN_BIG_MAGIC_ATTACK_B_STATE_START", 
															STATE_COOL_TIME = 5,},
	{ STATE_NAME = "SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND",		LUA_STATE_START_FUNC = "SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND_STATE_START",
																STATE_COOL_TIME = 14,},
	{ STATE_NAME = "SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE",	LUA_STATE_START_FUNC = "SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE_STATE_START",
																LUA_FRAME_MOVE_FUNC = "SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE_FRAME_MOVE", 
																STATE_COOL_TIME = 20,},	
	
	{ STATE_NAME = "SPRIGGAN_BIG_SPECIAL_ATTACK_READY",		LUA_STATE_START_FUNC = "SPRIGGAN_BIG_SPECIAL_ATTACK_STATE_START", 
															LUA_FRAME_MOVE_FUNC = "SPRIGGAN_BIG_SPECIAL_ATTACK_READY_FRAME_MOVE",
															STATE_COOL_TIME = 5,},

	
	{ STATE_NAME = "SPRIGGAN_BIG_SPECIAL_ATTACK",			LUA_FRAME_MOVE_FUNC = "SPRIGGAN_BIG_SPECIAL_ATTACK_FRAME_MOVE",},
	
	{ STATE_NAME = "SPRIGGAN_BIG_DYING_LAND_FRONT",			    LUA_STATE_START_FUNC = "SPRIGGAN_BIG_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SPRIGGAN_BIG_DYING_LAND_BACK",			    LUA_STATE_START_FUNC = "SPRIGGAN_BIG_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SPRIGGAN_BIG_DYING_SKY",					LUA_STATE_START_FUNC = "SPRIGGAN_BIG_DYING_LAND_STATE_START",},
	
	START_STATE					= "SPRIGGAN_BIG_HIDE",
	WAIT_STATE					= "SPRIGGAN_BIG_WAIT",	
	
	SMALL_DAMAGE_LAND_FRONT		= "SPRIGGAN_BIG_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "SPRIGGAN_BIG_WAIT",
	BIG_DAMAGE_LAND_FRONT		= "SPRIGGAN_BIG_WAIT",
	BIG_DAMAGE_LAND_BACK		= "SPRIGGAN_BIG_WAIT",
	DOWN_DAMAGE_LAND_FRONT		= "SPRIGGAN_BIG_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "SPRIGGAN_BIG_WAIT",
	FLY_DAMAGE_FRONT			= "SPRIGGAN_BIG_WAIT",
	FLY_DAMAGE_BACK				= "SPRIGGAN_BIG_WAIT",
	SMALL_DAMAGE_AIR			= "SPRIGGAN_BIG_WAIT",	
	BIG_DAMAGE_AIR				= "SPRIGGAN_BIG_WAIT",
	DOWN_DAMAGE_AIR				= "SPRIGGAN_BIG_WAIT",
	UP_DAMAGE					= "SPRIGGAN_BIG_WAIT",
	DAMAGE_REVENGE				= "SPRIGGAN_BIG_WAIT",
	
	DYING_LAND_FRONT			= "SPRIGGAN_BIG_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "SPRIGGAN_BIG_DYING_LAND_BACK",
	DYING_SKY					= "SPRIGGAN_BIG_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "SPRIGGAN_BIG_COMMON_FRAME_MOVE",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 8000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  600,
		FAR_WALK_RATE		= 100,   -- 800,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,
		PATROL_RANGE			= 0,
		PATROL_COOL_TIME		= 0,
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


SPRIGGAN_BIG_WAIT = 
{

	
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.5,
	
	EVENT_PROCESS = 
	{	

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE",	"CT_SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE",	}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND",	"CT_SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_MAGIC_ATTACK_B",		"CT_SPRIGGAN_BIG_MAGIC_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_ATTACK_B",			"CT_SPRIGGAN_BIG_ATTACK_B",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_SPECIAL_ATTACK_READY",		"CT_SPRIGGAN_BIG_SPECIAL_ATTACK",		},    
	},
	
	CT_SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 99999,
		RATE						= 80,
	},

	CT_SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 99999,
		RATE						= 80,
	},

	CT_SPRIGGAN_BIG_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,
		RATE						= 30,
	},
	
	CT_SPRIGGAN_BIG_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 99999,
		RATE						= 40,
	},
	
	CT_SPRIGGAN_BIG_SPECIAL_ATTACK =
	{
	    EVENT_INTERVAL_ID			= 0,
	    MY_MP_MORE_THAN_PERCENT		= 0,
	    FOOT_ON_LINE				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 99999,
		RATE	                    = 50,
	},
}



SPRIGGAN_BIG_HIDE = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,

}




SPRIGGAN_BIG_ATTACK_B = 
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	 
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	SOUND_PLAY0					= { 0.5, "Spriggan_Big_AttackB.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Spriggan_Big_Attack_B", 0,	
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_ATTACK_B_COMBO",			"CT_SPRIGGAN_BIG_ATTACK_B_COMBO",	},
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SPRIGGAN_BIG_WAIT",					},
	},
	
	CT_SPRIGGAN_BIG_ATTACK_B_COMBO = 
	{
		ANIM_EVENT_TIMER			= 0.9,
		--ATTACK_SUCCESS				= TRUE,
		RATE					= 100,
	},

}


SPRIGGAN_BIG_ATTACK_B_COMBO = 
{
	ANIM_NAME					= "AttackBCombo1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	 
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.55, "Spriggan_Big_AttackCombo1.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Spriggan_Big_Attack_B_Combo", 0,	
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC",		"CT_SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC",	},	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SPRIGGAN_BIG_WAIT",					},
	},
	
	CT_SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC = 
	{
		ANIM_EVENT_TIMER			= 0.8,
		--ATTACK_SUCCESS				= TRUE,
		RATE					= 100,
	},	
	
}

SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC = 
{
	ANIM_NAME					= "MagicAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	SOUND_PLAY0					= { 0.3, "Spriggan_Big_MagicAttackB.ogg" },
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_WAIT",					},
	},	

}


SPRIGGAN_BIG_MAGIC_ATTACK_B = 
{
	ANIM_NAME					= "MagicAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	SOUND_PLAY0					= { 0.3, "Spriggan_Big_MagicAttackB.ogg" },
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_WAIT",					},
	},	

}

SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND = 
{
	ANIM_NAME					= "MagicAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.3, "Spriggan_Big_MagicAttackB.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Spriggan_Big_Magic_Attack_B_Surround", 0,	
	},	
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_WAIT",					},
	},	
}


SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE = 
{
	ANIM_NAME					= "MagicAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

	ANIM_SPEED					= 0.8,

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.3, "Spriggan_Big_MagicAttackB.ogg" },
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_WAIT",					},
	},	
}


SPRIGGAN_BIG_SPECIAL_ATTACK_READY = 
{
	ANIM_NAME					= "SpecialAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	ANIM_SPEED					= 0.7,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.1, "Spriggan_Big_SpecialAttackAll.ogg" },
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_SPECIAL_ATTACK",					},
	},
	
}


SPRIGGAN_BIG_SPECIAL_ATTACK = 
{
	ANIM_SPEED					= 0.6,
	ANIM_NAME					= "SpecialAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 0.8,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_Spriggan_Big_Special_Attack", 0,	
	},	

	SOUND_PLAY0					= { 0.1, "Spriggan_Big_SpecialAttackAll.ogg" },
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15147,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_WAIT",					},
	},
	
}


SPRIGGAN_BIG_DAMAGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SPRIGGAN_BIG_WAIT",		},
	},
}



SPRIGGAN_BIG_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
SPRIGGAN_BIG_DYING_LAND_BACK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

SPRIGGAN_BIG_DYING_SKY = 
{
	ANIM_NAME					= "Wait",
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

function SPRIGGAN_BIG_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()
	
	
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
	if 0 == hEffect then
		local pEffectSet = pX2Game:GetEffectSet()
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Spriggan_Big_Start", pNPCUnit )
		pNPCUnit:SetEffectSet_LUA(0, hEffect);
	end
end

function SPRIGGAN_BIG_HIDE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetCloaking()


	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
	if 0 ~= hEffect then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
end


function SPRIGGAN_BIG_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end


function SPRIGGAN_BIG_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
end



function SPRIGGAN_BIG_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()
end

function SPRIGGAN_BIG_ATTACK_B_COMBO_MAGIC_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pEffectSet = pX2Game:GetEffectSet()
	
	local TargetPos = pNPCUnit:GetLandPosition_LUA()
	local vDirVector = pNPCUnit:GetDirVector()
	local bIsRight   = pNPCUnit:GetIsRight()

	if bIsRight == true then 
		TargetPos = MovePos( TargetPos, vDirVector, 1150 )
	else
		TargetPos = MovePos( TargetPos, vDirVector, -1150 )
	end
	
	pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, TargetPos, pNPCUnit:GetRotateDegree() )

end



function SPRIGGAN_BIG_MAGIC_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()

	local pEffectSet = pX2Game:GetEffectSet()
	
	local TargetPos = pX2Game:GetFarthestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	
	pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, TargetPos, pNPCUnit:GetRotateDegree() )

end

function SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()
end

function SPRIGGAN_BIG_MAGIC_ATTACK_B_APOCALYPSE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pUnit = pX2Game:GetUserUnit(0)
		if pUnit ~= nil then
		
			local pEffectSet = pX2Game:GetEffectSet()
			local TargetPos = pUnit:GetLandPosition_LUA(false)
			pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, TargetPos, pNPCUnit:GetRotateDegree() )
		
		end
	end

	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		pUnit = pX2Game:GetUserUnit(1)
		if pUnit ~= nil then
		
			local pEffectSet = pX2Game:GetEffectSet()
			local TargetPos = pUnit:GetLandPosition_LUA(false)
			pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, TargetPos, pNPCUnit:GetRotateDegree() )
		
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then
		pUnit = pX2Game:GetUserUnit(2)
		if pUnit ~= nil then
		
			local pEffectSet = pX2Game:GetEffectSet()
			local TargetPos = pUnit:GetLandPosition_LUA(false)
			pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, TargetPos, pNPCUnit:GetRotateDegree() )
				
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.3 ) then
		pUnit = pX2Game:GetUserUnit(3)
		if pUnit ~= nil then
			local pEffectSet = pX2Game:GetEffectSet()
			local TargetPos = pUnit:GetLandPosition_LUA(false)
			pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, TargetPos, pNPCUnit:GetRotateDegree() )
					
		end
	end		

end

function SPRIGGAN_BIG_MAGIC_ATTACK_B_SURROUND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()
end

function SPRIGGAN_BIG_SPECIAL_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()

	local iKeyCode = pNPCUnit:GetKeyCode()
	local pUnit = nil
	if iKeyCode == 3 then
		pUnit = pX2Game:GetKeyCodeNPC(1)
	elseif iKeyCode == 4 then
		pUnit = pX2Game:GetKeyCodeNPC(2)
	else
		pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"] )
	end
	if pUnit ~= nil then
		pUnit:StateChange_LUA("SPRIGGAN_SMALL_SPECIAL_ATTACK", true)
	end
end


function SPRIGGAN_BIG_SPECIAL_ATTACK_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
end


function SPRIGGAN_BIG_SPECIAL_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
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
