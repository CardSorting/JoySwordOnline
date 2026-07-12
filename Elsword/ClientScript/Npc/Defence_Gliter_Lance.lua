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
	
	 "Glitter_Lance_Attack1.ogg",
	 "Glitter_LAnce_Attack2.ogg",
	 "Glitter_Lance_Combo.ogg",
	 "Glitter_StandUp.ogg",
	 "Glitter_Dash.ogg",
	 "Glitter_Landing.ogg",
	 "Glitter_SiegeReady.ogg",
     "Glitter_Lance_DashAttackReady.ogg",
	 "Glitter_DashEnd.ogg",

	 
	 "GlitterVoice_AttackRoar1.ogg",
	 "GlitterVoice_AttackRoar2.ogg",
	 
	 "GlitterVoice_DeathRoar.ogg",
	 "GlitterVoice_HurtRoar1.ogg",
	 "GlitterVoice_HurtRoar2.ogg",
	 
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME			= "NUI_GLITER_LANCE.x",
	MOTION_CHANGE_TEX_XET		= "DEFENCE_GLITER_LANCE.xet",
	MOTION_ANI_TEX_XET			= "DEFENCE_GLITER_LANCE.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 900,
}


INIT_COMPONENT = 
{
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
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Gliter_Weapon_Lance_001.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
}

INIT_STATE = 
{
	{ STATE_NAME = "GLITER_LANCE_START",						},
		
	{ STATE_NAME = "GLITER_LANCE_SIEGE_READY",					},
	{ STATE_NAME = "GLITER_LANCE_SIEGE_WAIT",					},
	
	
	{ STATE_NAME = "GLITER_LANCE_WAIT",							LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_WAIT_FRAME_MOVE",					},
	{ STATE_NAME = "GLITER_LANCE_WAIT_HABIT",					},
	
	{ STATE_NAME = "GLITER_LANCE_WALK",							LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_WALK_FRAME_MOVE",
																LUA_STATE_END_FUNC = "GLITER_LANCE_WALK_STATE_END"						},

	
	
	{ STATE_NAME = "GLITER_LANCE_JUMP_UP",						},
	{ STATE_NAME = "GLITER_LANCE_JUMP_DOWN",					LUA_STATE_END_FUNC = "GLITER_LANCE_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "GLITER_LANCE_JUMP_UP_DIR",					},
	{ STATE_NAME = "GLITER_LANCE_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "GLITER_LANCE_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "GLITER_LANCE_JUMP_LANDING",					},


	{ STATE_NAME = "GLITER_LANCE_ATTACK",						LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_ATTACK_FRAME_MOVE",	 },
	{ STATE_NAME = "GLITER_LANCE_COMBO",						LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_COMBO_FRAME_MOVE",	},
	
	
	{ STATE_NAME = "GLITER_LANCE_DASH_ATTACK_READY",			  },
	{ STATE_NAME = "GLITER_LANCE_DASH_ATTACK",					LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_DASH_ATTACK_FRAME_MOVE",		},
	
	{ STATE_NAME = "GLITER_LANCE_DASH",							},
	{ STATE_NAME = "GLITER_LANCE_DASH_END",						},
	
	
	
	
	--리액션 관련
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_FRONT",					LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_BACK",					LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_FLY_FRONT",				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_AIR",					},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "GLITER_LANCE_STAND_UP_FRONT",				},
	{ STATE_NAME = "GLITER_LANCE_STAND_UP_BACK",				},
	
	{ STATE_NAME = "GLITER_LANCE_DAMAGE_REVENGE",				},
	
	
	
	
	{ STATE_NAME = "GLITER_LANCE_DYING_LAND_FRONT",				LUA_STATE_START_FUNC = "GLITER_LANCE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "GLITER_LANCE_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "GLITER_LANCE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "GLITER_LANCE_DYING_SKY",					LUA_STATE_START_FUNC = "GLITER_LANCE_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "GLITER_LANCE_START",
	WAIT_STATE					= "GLITER_LANCE_WAIT",
	SIEGE_STATE					= "GLITER_LANCE_SIEGE_READY",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "GLITER_LANCE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "GLITER_LANCE_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "GLITER_LANCE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "GLITER_LANCE_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "GLITER_LANCE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GLITER_LANCE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "GLITER_LANCE_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "GLITER_LANCE_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "GLITER_LANCE_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "GLITER_LANCE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "GLITER_LANCE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING				= "GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "GLITER_LANCE_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "GLITER_LANCE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"GLITER_LANCE_DAMAGE_AIR_DOWN","GLITER_LANCE_DAMAGE_AIR_FALL","GLITER_LANCE_STAND_UP_FRONT","GLITER_LANCE_STAND_UP_BACK",
	"GLITER_LANCE_JUMP_DOWN","GLITER_LANCE_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "GLITER_LANCE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "GLITER_LANCE_DYING_LAND_BACK",
	DYING_SKY					= "GLITER_LANCE_DYING_SKY",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST" ],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 5000,		-- cm
		TARGET_LOST_RANGE			= 400,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "GLITER_LANCE_MANUAL_TARGET",
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
	
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0, -- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 0,
		
		--LINE_END_RANGE		= 100,	-- cm
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
		ESCAPE_GAP			= 400,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
		
		--LINE_END_RANGE		= 80,	-- cm
	},
	--]]

}


GLITER_LANCE_SIEGE_READY = 
{
	ANIM_NAME					= "SiegeReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 10000, },
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_SIEGE_WAIT",						},
	},
}




GLITER_LANCE_SIEGE_WAIT = 
{
	ANIM_NAME					= "Siege",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	INVINCIBLE					= { 0, 10000, },
	NEVER_MOVE					= TRUE,
	FALL_DOWN					= FALSE,
		
	EVENT_PROCESS = 
	{		
	},
}





GLITER_LANCE_START = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GLITER_LANCE_WAIT",		"CT_GLITER_LANCE_WAIT"				},
	},
	
	CT_GLITER_LANCE_WAIT = 
	{
		STATE_TIME_OVER			= 2.8,
	},
}



GLITER_LANCE_WAIT = 
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
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_ATTACK",					"CT_GLITER_LANCE_ATTACK",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_DASH_ATTACK_READY",		"CT_GLITER_LANCE_DASH_ATTACK_READY",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_WAIT_HABIT",				"CT_GLITER_LANCE_WAIT_HABIT",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GLITER_LANCE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GLITER_LANCE_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GLITER_LANCE_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GLITER_LANCE_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GLITER_LANCE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GLITER_LANCE_JUMP_DOWN_DIR",			},
	},
	
	CT_GLITER_LANCE_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	
	CT_GLITER_LANCE_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	
	
	CT_GLITER_LANCE_WAIT_HABIT = 
	{
		ANIM_PLAY_COUNT				= 1,
		RATE						= 60,
		HAVE_TARGET					= 0,		-- false
	},
	
		
}




GLITER_LANCE_WAIT_HABIT = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT",						},
	},
}


GLITER_LANCE_WALK = 
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_ATTACK",					"CT_GLITER_LANCE_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_DASH_ATTACK_READY",		"CT_GLITER_LANCE_DASH_ATTACK_READY",				},
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GLITER_LANCE_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GLITER_LANCE_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GLITER_LANCE_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GLITER_LANCE_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GLITER_LANCE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GLITER_LANCE_JUMP_DOWN_DIR",			},
	},
	
	CT_GLITER_LANCE_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 30,
	},
	
	CT_GLITER_LANCE_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 30,
	},
	
}


GLITER_LANCE_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN_DIR",			},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_DASH_ATTACK",					"CT_GLITER_LANCE_DASH_ATTACK",				},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GLITER_LANCE_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GLITER_LANCE_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GLITER_LANCE_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GLITER_LANCE_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GLITER_LANCE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GLITER_LANCE_JUMP_DOWN_DIR",			},
	},
	
	CT_GLITER_LANCE_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},

}



GLITER_LANCE_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT",							},
	},
}








GLITER_LANCE_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashAttackReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.352, "Glitter_Lance_DashAttackReady.ogg" },
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_DASH_ATTACK",				},		
	},
}




GLITER_LANCE_DASH_ATTACK =
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= 800,

    SOUND_PLAY0			= { 0.140, "GlitterVoice_AttackRoar2.ogg" },
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.1,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"GLITER_LANCE_DASH_END",	"CT_GLITER_LANCE_DASH_END"		},
	},
		
	CT_GLITER_LANCE_DASH_END = 
	{
		EVENT_INTERVAL_ID		= 0,	
		STATE_TIME_OVER			= 0.72,
	},
	
	
	ATTACK_TIME0				= { 0.01, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		BACK_SPEED_X		= 1800,
		BACK_SPEED_Y		= 1200,
		
		CAN_REVENGE			= TRUE,	
	},
}



GLITER_LANCE_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GLITER_LANCE_JUMP_DOWN",			},
	},
	
}

GLITER_LANCE_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_LANCE_JUMP_LANDING",				},
	},
}

GLITER_LANCE_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GLITER_LANCE_JUMP_DOWN_DIR",				},
	},
	
}

GLITER_LANCE_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_LANCE_JUMP_LANDING",				},
	},
}

GLITER_LANCE_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0			= { 0.121, "Glitter_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT",						},
	},
}


GLITER_LANCE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.706, "Glitter_Lance_Attack1.ogg" },
    SOUND_PLAY1			= { 0.704, "GlitterVoice_Attack2.ogg" },
    SOUND_PLAY2			= { 1.304, "Glitter_Lance_Attack2.ogg" },
    SOUND_PLAY3			= { 1.306, "Glitter_Lance_Attack2.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",										},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT",												},	
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_LANCE_COMBO",			"CT_GLITER_LANCE_COMBO",	},
	},
  --[[
	CT_GLITER_LANCE_COMBO =
	{
		ANIM_EVENT_TIMER	= 1.6,
		RATE				= 80,
		ATTACK_SUCCESS		= TRUE,
	},
	  --]]
	ATTACK_TIME0				= { 1.005, 1.082, },
	ATTACK_TIME1				= { 1.682, 1.982, },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 500,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		CAN_REVENGE			= TRUE,	
	},
	
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		CAN_REVENGE			= TRUE,		
	},
}



GLITER_LANCE_COMBO =
{
	ANIM_NAME					= "Combo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


    SOUND_PLAY0			= { 0.812, "Glitter_Lance_Combo.ogg" },
    SOUND_PLAY1			= { 0.855, "GlitterVoice_AttackRoar1.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT",					},
	},
	
	
	ATTACK_TIME0				= { 0.83, 0.93, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 600,
		BACK_SPEED_Y			= 2000,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		CAN_REVENGE			= TRUE,	
	},
}




GLITER_LANCE_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_LANCE_WAIT",												},
	},
}


GLITER_LANCE_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -150,

    SOUND_PLAY0			= { 0.174, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_LANCE_WAIT",												},
	},
}

GLITER_LANCE_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 150,


    SOUND_PLAY0			= { 0.160, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_LANCE_WAIT",												},
	},
}





GLITER_LANCE_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.172, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GLITER_LANCE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_LANCE_STAND_UP_FRONT",			},
	},
	
}

GLITER_LANCE_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.357, "GlitterVoice_HurtRoar1.ogg" , 24 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GLITER_LANCE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GLITER_LANCE_STAND_UP_BACK",			},
	},
	
}

GLITER_LANCE_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

GLITER_LANCE_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_LANCE_DAMAGE_DOWN_BACK",		},
	},
}

GLITER_LANCE_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_LANCE_WAIT",					},
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,

	
	
	ATTACK_TIME0				= { 0.15, 0.24, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		BACK_SPEED_X		= 1500,
		BACK_SPEED_Y		= -1000,
		
		CAN_REVENGE			= TRUE,	
	},
	
}

GLITER_LANCE_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GLITER_LANCE_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"GLITER_LANCE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GLITER_LANCE_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"GLITER_LANCE_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_STAND_UP_FRONT",			},
	},
	
}

GLITER_LANCE_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT",				},
	},
}

GLITER_LANCE_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.283, "Glitter_StandUp.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GLITER_LANCE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_LANCE_WAIT", },
	},		
}



GLITER_LANCE_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.175, "GlitterVoice_DeathRoar.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
GLITER_LANCE_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.399, "GlitterVoice_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

GLITER_LANCE_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.105, "GlitterVoice_DeathRoar.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









--------------------------------------------------------------------
--------------------------------------------------------------------

function GLITER_LANCE_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function GLITER_LANCE_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

function GLITER_LANCE_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end



function GLITER_LANCE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
		pNPCUnit:SetSpeedX( INIT_PHYSIC["RUN_SPEED"] )
	end

end



function GLITER_LANCE_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GLITER_LANCE_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function GLITER_LANCE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GLITER_LANCE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GLITER_LANCE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end







function GLITER_LANCE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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






--------------------------------------------------------------------
function GLITER_LANCE_COMBO_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.94 ) then
      	
      	local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		
		local vDirVector		= pNPCUnit:GetDirVector()
		local bIsRight		= pNPCUnit:GetIsRight()
		
		
		if bIsRight == true then 
			pos = MovePos( pos, vDirVector, 270 )
		else
			pos = MovePos( pos, vDirVector, -270 )
		end
		
		
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )

		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 800 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.2 )
		end		
        
    end
    
end






--------------------------------------------------------------------
function GLITER_LANCE_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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




function GLITER_LANCE_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	local pNearestNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"], 999999 )
	
	if nil ~= pNearestNpc then
		pNPCUnit:SetTargetUnit( pNearestNpc )
	end

end





function GLITER_LANCE_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 600 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
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
					GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end

end



function GLITER_LANCE_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 600 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
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
					GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end

end


function GLITER_LANCE_DO_ATTACK(pX2Game, pNPCUnit)
	local iRate = pNPCUnit:GetRandVal() % 100
	
	if iRate < 50 then
		pNPCUnit:StateChange_LUA( "GLITER_LANCE_ATTACK" )
	elseif iRate < 90 then
		pNPCUnit:StateChange_LUA( "GLITER_LANCE_ATTACK" )
	else
		pNPCUnit:StateChange_LUA( "GLITER_LANCE_DASH_ATTACK_READY" )
	end
end

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end


