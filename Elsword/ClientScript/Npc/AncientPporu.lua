-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 240.0,
	UNIT_HEIGHT		= 240.0,	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.0,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	  "AncientPporu_Slash1.ogg", --
	  "AncientPporu_Slash2.ogg", --
      "AncientPporu_Roar1.ogg",
      "AncientPporu_Scream1.ogg", --
      "AncientPporu_Scream2.ogg",
      "AncientPporu_Scream3.ogg",
      "AncientPporu_BreathFireShot.ogg",
      "AncientPporu_Dash.ogg",
      "AncientPporu_Land.ogg", --
      "AncientPporu_Hook.ogg", --
      "AncientPporu_Walk.ogg",
      "AncientPporu_DeathRoar.ogg", --
--      "AncientPporu_HurtRoar1.ogg", --
      "AncientPporu_HurtRoar2.ogg", --
      "AncientPporu_BreathFireReady.ogg",
	  "AncientPporu_EarthQuake.ogg",
      "AncientPporu_DashEnd.ogg",  

	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Ancient_Pporu.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 600,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	
	MAX_HP				= 6000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	RAGE_COUNT_MAX		= 25,
	RAGE_TIME_MAX		= 2,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],

	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,

 BOSS_GAGE_FACE_TEX   = "DLG_BossState.tga",
 BOSS_GAGE_FACE_TEX_PIECE = "NUI_PPORU_ANCIENT",
 BOSS_NAME_TEX    = "HQ_BOSS_NAME_ANCIENT_PPORU.dds",	
 
 DIE_FLY = FALSE, 

	
	


	

}

INIT_STATE = 
{
	{ STATE_NAME = "ANCIENT_PPORU_START",					},

	{ STATE_NAME = "ANCIENT_PPORU_WAIT",						},


	{ STATE_NAME = "ANCIENT_PPORU_WALK",					LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_WALK_FRAME_MOVE",	LUA_STATE_END_FUNC = "ANCIENT_PPORU_WALK_STATE_END"						},
	{ STATE_NAME = "ANCIENT_PPORU_JUMP_UP",					},
	{ STATE_NAME = "ANCIENT_PPORU_JUMP_DOWN",				LUA_STATE_END_FUNC = "ANCIENT_PPORU_JUMP_DOWN_STATE_END" },
	{ STATE_NAME = "ANCIENT_PPORU_JUMP_UP_DIR",				},
	{ STATE_NAME = "ANCIENT_PPORU_JUMP_DOWN_DIR",			LUA_STATE_END_FUNC = "ANCIENT_PPORU_JUMP_DOWN_DIR_STATE_END" },
	{ STATE_NAME = "ANCIENT_PPORU_JUMP_LANDING",				},


	
	{ STATE_NAME = "ANCIENT_PPORU_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME = 6, },
	
	{ STATE_NAME = "ANCIENT_PPORU_DASH_ATTACK_READY",				STATE_COOL_TIME = 12, },
	{ STATE_NAME = "ANCIENT_PPORU_DASH_ATTACK",				},
	{ STATE_NAME = "ANCIENT_PPORU_DASH_ATTACK_END",				},
	
	--{ STATE_NAME = "ANCIENT_PPORU_BREATH",					LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_BREATH_FRAME_MOVE", LUA_STATE_END_FUNC = "ANCIENT_PPORU_BREATH_STATE_END", STATE_COOL_TIME = 12, },
	{ STATE_NAME = "ANCIENT_PPORU_BREATH",					LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_BREATH_FRAME_MOVE", LUA_STATE_END_FUNC = "ANCIENT_PPORU_BREATH_STATE_END", STATE_COOL_TIME = 12, },


	
	
	--리액션 관련
	{ STATE_NAME = "ANCIENT_PPORU_DAMAGE_SMALL_FRONT",				LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_DAMAGE_SMALL_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "ANCIENT_PPORU_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_DAMAGE_SMALL_BACK_FRAME_MOVE"			},
	
	{ STATE_NAME = "ANCIENT_PPORU_DAMAGE_AIR_FLY_FRONT",					},
	{ STATE_NAME = "ANCIENT_PPORU_DAMAGE_AIR_FLY_BACK",					},


	


	{ STATE_NAME = "ANCIENT_PPORU_DAMAGE_AIR",				},
	
	{ STATE_NAME = "ANCIENT_PPORU_DAMAGE_UP",				},


	
	
	{ STATE_NAME = "ANCIENT_PPORU_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "ANCIENT_PPORU_DYING_LAND_STATE_START", LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_DYING_LAND_FRONT_FRAME_MOVE" },
	{ STATE_NAME = "ANCIENT_PPORU_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "ANCIENT_PPORU_DYING_LAND_STATE_START", LUA_FRAME_MOVE_FUNC = "ANCIENT_PPORU_DYING_LAND_BACK_FRAME_MOVE", },
	{ STATE_NAME = "ANCIENT_PPORU_DYING_SKY",				LUA_STATE_START_FUNC = "ANCIENT_PPORU_DYING_LAND_STATE_START", },
	
	START_STATE					= "ANCIENT_PPORU_START",
	WAIT_STATE					= "ANCIENT_PPORU_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "ANCIENT_PPORU_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "ANCIENT_PPORU_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "ANCIENT_PPORU_DAMAGE_SMALL_FRONT",
	BIG_DAMAGE_LAND_BACK		= "ANCIENT_PPORU_DAMAGE_SMALL_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "ANCIENT_PPORU_DAMAGE_SMALL_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "ANCIENT_PPORU_DAMAGE_SMALL_BACK",
	FLY_DAMAGE_FRONT			= "ANCIENT_PPORU_DAMAGE_AIR_FLY_FRONT",
	FLY_DAMAGE_BACK				= "ANCIENT_PPORU_DAMAGE_AIR_FLY_BACK",
	SMALL_DAMAGE_AIR			= "ANCIENT_PPORU_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "ANCIENT_PPORU_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "ANCIENT_PPORU_DAMAGE_AIR",
	UP_DAMAGE					= "ANCIENT_PPORU_DAMAGE_UP",
    DAMAGE_REVENGE				= "ANCIENT_PPORU_DAMAGE_SMALL_FRONT",	
	
	DAMAGE_EXTRA_STATES         = {"ANCIENT_PPORU_JUMP_DOWN","ANCIENT_PPORU_JUMP_LANDING",},
	
	DYING_LAND_FRONT			= "ANCIENT_PPORU_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "ANCIENT_PPORU_DYING_LAND_BACK",
	DYING_SKY					= "ANCIENT_PPORU_DYING_SKY",

	REVENGE_ATTACK				= "ANCIENT_PPORU_WAIT",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 400,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1500,		-- cm
		TARGET_LOST_RANGE			= 1800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --60,		-- %
		ATTACK_TARGET_RATE			= 100, -- 40,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 10,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
}




ANCIENT_PPORU_START =
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

	SPEED_X						= 0,
	SPEED_Y						= 0,

	SOUND_PLAY0					= { 0.642, "AncientPporu_Hook.ogg" },
	SOUND_PLAY1					= { 1.312, "AncientPporu_Hook.ogg" },
	SOUND_PLAY2					= { 2.312, "AncientPporu_Scream3.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_PPORU_WAIT",					},
	},
	
	
}



ANCIENT_PPORU_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"ANCIENT_PPORU_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_PPORU_ATTACK_A",				"CT_ANCIENT_PPORU_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_PPORU_DASH_ATTACK_READY",			"CT_ANCIENT_PPORU_DASH_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_PPORU_BREATH",					"CT_ANCIENT_PPORU_BREATH",	},
		


		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"ANCIENT_PPORU_WALK",						},

		--{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"ANCIENT_PPORU_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"ANCIENT_PPORU_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"ANCIENT_PPORU_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"ANCIENT_PPORU_JUMP_DOWN_DIR",				},
		



	},
	
	CT_ANCIENT_PPORU_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 40,
	},
	
	CT_ANCIENT_PPORU_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	
	CT_ANCIENT_PPORU_BREATH = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
	


	
	
	

	

}




ANCIENT_PPORU_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 0.7,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"ANCIENT_PPORU_JUMP_DOWN_DIR",				},
		

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_PPORU_ATTACK_A",				"CT_ANCIENT_PPORU_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_PPORU_DASH_ATTACK_READY",			"CT_ANCIENT_PPORU_DASH_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ANCIENT_PPORU_BREATH",					"CT_ANCIENT_PPORU_BREATH",	},
	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"ANCIENT_PPORU_WAIT",						},

		--{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"ANCIENT_PPORU_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"ANCIENT_PPORU_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"ANCIENT_PPORU_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"ANCIENT_PPORU_JUMP_DOWN_DIR",				},
	},
	
	CT_ANCIENT_PPORU_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 30,
	},
	
	CT_ANCIENT_PPORU_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 10,
	},

	CT_ANCIENT_PPORU_BREATH = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
	
	
	
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1478 },
	},
}

ANCIENT_PPORU_JUMP_UP = 
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

		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"ANCIENT_PPORU_JUMP_DOWN",				},
	},

}

ANCIENT_PPORU_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"ANCIENT_PPORU_JUMP_LANDING",				},
	},
}

ANCIENT_PPORU_JUMP_UP_DIR = 
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

		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"ANCIENT_PPORU_JUMP_DOWN_DIR",				},
	},
	

}

ANCIENT_PPORU_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"ANCIENT_PPORU_JUMP_LANDING",				},
	},
}

ANCIENT_PPORU_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.091, "AncientPporu_Land.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"ANCIENT_PPORU_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_PPORU_WAIT",					},
	},
}





ANCIENT_PPORU_ATTACK_A = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

	SOUND_PLAY0					= { 1.531, "AncientPporu_Slash1.ogg" },
	SOUND_PLAY1					= { 1.549, "AncientPporu_Scream1.ogg" },
	SOUND_PLAY2					= { 2.534, "AncientPporu_Slash2.ogg" },
	SOUND_PLAY3					= { 2.511, "AncientPporu_Scream1_2.ogg" },

	
	VIEW_TARGET					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"ANCIENT_PPORU_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_PPORU_WAIT",					},
	},
	
	ATTACK_TIME0				= { 1.46, 1.666, },
	ATTACK_TIME1				= { 2.5, 2.666, },

	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_Face",
		"ATTACK_SPHERE4_Upper",
		"ATTACK_SPHERE5_Lowbody",
	},	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_1479 },
		{ RATE = 8, MESSAGE = STR_ID_1480 },
	},
}


ANCIENT_PPORU_DASH_ATTACK = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 4800,
	SPEED_Y						= 0,	
	
	SOUND_PLAY0					= { 0.072, "AncientPporu_Dash.ogg" },
	SOUND_PLAY1					= { 0.089, "AncientPporu_Scream2.ogg" },
	SOUND_PLAY2					= { 0.297, "AncientPporu_DashEnd.ogg" },

	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"ANCIENT_PPORU_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_PPORU_DASH_ATTACK_END",					},
	},
	
	ATTACK_TIME0				= { 0, 100, },
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE2_Lhand",
		"ATTACK_SPHERE1_Rhand",
		"ATTACK_SPHERE5_Lowbody",
	},	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_X			= 6000,
		BACK_SPEED_Y			= 3000,
		
		CAN_REVENGE                 = FALSE,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

	TALK_BOX =
	{
		{ RATE = 8, MESSAGE = STR_ID_1481 },
		{ RATE = 8, MESSAGE = STR_ID_1482 },
	},
}


ANCIENT_PPORU_DASH_ATTACK_READY =
{
	ANIM_NAME					= "DashAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.642, "AncientPporu_Hook.ogg" },
	SOUND_PLAY1					= { 1.312, "AncientPporu_Hook.ogg" },

	VIEW_TARGET					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15073,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_DASH_ATTACK",												},
	},
	
	
}

ANCIENT_PPORU_DASH_ATTACK_END =
{
	ANIM_NAME					= "DashAttackEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	SPEED_X						= 0,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_WAIT",												},
	},
}




ANCIENT_PPORU_BREATH = 
{
	ANIM_NAME					= "Breath",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15072,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

	SOUND_PLAY0					= { 1.400, "AncientPporu_BreathFireReady.ogg" },
	SOUND_PLAY1					= { 1.367, "AncientPporu_Roar1.ogg" },
	SOUND_PLAY2					= { 3.392, "AncientPporu_Scream2.ogg" },
	SOUND_PLAY3					= { 3.393, "AncientPporu_BreathFireShot.ogg" },
	SOUND_PLAY4					= { 3.399, "AncientPporu_EarthQuake.ogg" },

	VIEW_TARGET					= TRUE,

	SUPER_ARMOR					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"ANCIENT_PPORU_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ANCIENT_PPORU_WAIT",					},
	},
	
}



ANCIENT_PPORU_DAMAGE_SMALL_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
   	SOUND_PLAY0					= { 0.10, "AncientPporu_HurtRoar2.ogg", 30 },
    

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_WAIT",												},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1484 },
		{ RATE = 10, MESSAGE = STR_ID_1485 },
	},
}

ANCIENT_PPORU_DAMAGE_SMALL_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
 	SOUND_PLAY0					= { 0.10, "AncientPporu_HurtRoar2.ogg", 30 },
     

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_WAIT",												},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1484 },
		{ RATE = 10, MESSAGE = STR_ID_1485 },
	},
}

ANCIENT_PPORU_DAMAGE_AIR_FLY_FRONT = 
{
	ANIM_NAME					= "DamegeAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
      

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_JUMP_DOWN",												},
	},
}

ANCIENT_PPORU_DAMAGE_AIR_FLY_BACK = 
{
	ANIM_NAME					= "DamegeAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
      

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_JUMP_DOWN",												},
	},
}



ANCIENT_PPORU_DAMAGE_UP = 
{
	ANIM_NAME					= "DamegeBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
   	PASSIVE_SPEED_Y				= -1,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * 0.3,   

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ANCIENT_PPORU_WAIT",												},
	},
	
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_1484 },
		{ RATE = 10, MESSAGE = STR_ID_1485 },
	},
}



ANCIENT_PPORU_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"ANCIENT_PPORU_WAIT",					},
	},
}















ANCIENT_PPORU_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 2.032, "Down3.ogg" },
	SOUND_PLAY1					= { 0.56, "AncientPporu_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
ANCIENT_PPORU_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 2.029, "Down3.ogg" },
	SOUND_PLAY1					= { 0.56, "AncientPporu_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

ANCIENT_PPORU_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0					= { 0.058, "Down3.ogg" },
	SOUND_PLAY1					= { 0.001, "AncientPporu_DeathRoar.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------

function ANCIENT_PPORU_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.123 ) then
		pNPCUnit:PlaySound_LUA( "AncientPporu_Walk.ogg" )
		pNPCUnit:ClearEventCheck( 0.857 )
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.857 ) then
		pNPCUnit:PlaySound_LUA( "AncientPporu_Walk.ogg" )
		pNPCUnit:ClearEventCheck( 0.123 )
	end

end

function ANCIENT_PPORU_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

--[[
	
	if pNPCUnit:AnimEventTimer_LUA( 0.123 ) then
		pNPCUnit:PlaySound_LUA( "GiantPporu_dash.ogg" )
		pNPCUnit:ClearEventCheck( 0.857 )
	end


	if pNPCUnit:AnimEventTimer_LUA( 0.857 ) then
		pNPCUnit:PlaySound_LUA( "GiantPporu_dash.ogg" )
		pNPCUnit:ClearEventCheck( 0.123 )
	end
	
--]]

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function ANCIENT_PPORU_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function ANCIENT_PPORU_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function ANCIENT_PPORU_DAMAGE_SMALL_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end
function ANCIENT_PPORU_DAMAGE_SMALL_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end










function ANCIENT_PPORU_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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


function ANCIENT_PPORU_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

			
	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pNPCUnit:ClearHitUnitList_LUA()
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
	

end

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end



function ANCIENT_PPORU_BREATH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
			
		vBonePos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )
		
		bIsRight		= pNPCUnit:GetIsRight()
		pParticle0 = nil
		
		if bIsRight == true then
			pParticle0 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire05", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		else
			pParticle0 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire05_2", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		end
		
	
		
		pNPCUnit:SetMajorParticle_LUA( 4, pParticle0:GetHandle() )
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
			
		vBonePos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )
		pTempParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire03", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		pNPCUnit:SetMajorParticle_LUA( 0, pTempParticle:GetHandle() )
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
			
		vBonePos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )
		pTempParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire04", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		pNPCUnit:SetMajorParticle_LUA( 1, pTempParticle:GetHandle() )
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 3.4 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
			
		vBonePos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )
		pTempParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire06", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		pNPCUnit:SetMajorParticle_LUA( 2, pTempParticle:GetHandle() )
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 3.4 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
			
		vBonePos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )
		pTempParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire01", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		pNPCUnit:SetMajorParticle_LUA( 3, pTempParticle:GetHandle() )
		
	end
	

	
	if pNPCUnit:AnimEventTimer_LUA( 3.63 ) then
	
		
		
		vPos			= pNPCUnit:GetPos()
		vPosReal		= pNPCUnit:GetPos()
		bIsRight		= pNPCUnit:GetIsRight()
		vDirVector		= pNPCUnit:GetDirVector()
		vLandPos		= pNPCUnit:GetLandPosition_LUA()
		
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 1300 )
		else
			vPos = MovePos( vPos, vDirVector, -1300 )
		end
	
		
		
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Acient_Pporu_Breath_Fire02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
		
		vPosReal.y = vPosReal.y - 100
		
		pDamageEffect = pX2Game:GetDamageEffect()
		vRotateDegree	= pNPCUnit:GetRotateDegree()		
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "ANCIENT_PPORU_BREATH", vPosReal, vLandPos.y, vRotateDegree )
		
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 60.0, 5.0 )
		
	end
	
	
	
	breathParticle0 = pNPCUnit:GetMajorParticle_LUA( 0 )
	
	if nil ~= breathParticle0 then 
	
		pMajorParticle = pX2Game:GetMajorParticle()
	
		if pMajorParticle:IsLiveInstance( breathParticle0 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )			
			breathParticle0:SetPosition( vPos )		
		end
	
	end
	
	breathParticle1 = pNPCUnit:GetMajorParticle_LUA( 1 )
	
	if nil ~= breathParticle1 then 
	
		pMajorParticle = pX2Game:GetMajorParticle()
	
		if pMajorParticle:IsLiveInstance( breathParticle1 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )			
			breathParticle1:SetPosition( vPos )		
		end
	
	end
	
	breathParticle2 = pNPCUnit:GetMajorParticle_LUA( 2 )
	
	if nil ~= breathParticle2 then 
	
		pMajorParticle = pX2Game:GetMajorParticle()
	
		if pMajorParticle:IsLiveInstance( breathParticle2 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )			
			breathParticle2:SetPosition( vPos )		
		end
	
	end
	
	breathParticle3 = pNPCUnit:GetMajorParticle_LUA( 3 )
	
	if nil ~= breathParticle3 then 
	
		pMajorParticle = pX2Game:GetMajorParticle()
	
		if pMajorParticle:IsLiveInstance( breathParticle3 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )	
			vRotateDegree	= pNPCUnit:GetRotateDegree()		
			breathParticle3:SetPosition( vPos )		
			breathParticle3:SetAddRotate( vRotateDegree )
			breathParticle3:SetAxisAngle( vRotateDegree )	
		end
	
	end
	
	breathParticle4 = pNPCUnit:GetMajorParticle_LUA( 4 )
	
	if nil ~= breathParticle4 then 
	
		pMajorParticle = pX2Game:GetMajorParticle()
	
		if pMajorParticle:IsLiveInstance( breathParticle4 ) == true then 
			vPos = pNPCUnit:GetBonePos_LUA( "FX_Breath" )	
			vRotateDegree	= pNPCUnit:GetRotateDegree()	
			breathParticle4:SetPosition( vPos )			
			breathParticle4:SetBlackHolePosition( vPos )		

		end
	
	end



end

function ANCIENT_PPORU_BREATH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:ClearMajorParticle_LUA( 0 )
	pNPCUnit:ClearMajorParticle_LUA( 1 )
	pNPCUnit:ClearMajorParticle_LUA( 2 )
	pNPCUnit:ClearMajorParticle_LUA( 3 )
	pNPCUnit:ClearMajorParticle_LUA( 4 )




end

function ANCIENT_PPORU_DYING_LAND_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.14 ) then
	
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 1.0 )
		
	end
	


end

function ANCIENT_PPORU_DYING_LAND_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:AnimEventTimer_LUA( 2.08 ) then
	
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 1.0 )
		
	end
	

end


