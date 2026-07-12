-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 150.0,
	
	UNIT_SCALE		= 0.9,
	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		"Dark_Smoke.dds",
		"Steam_BP.tga",
	},
	
	READY_SOUND = 
	{
		"Wally9_Type2_Combo.ogg",
		"Wally9_Slash.ogg",
		"Wally9_Slash2.ogg",
		"Wally9_SwordOut.ogg",
		"Wally9_SwordIn.ogg",
		"Wally9_DashAttack.ogg",
		"Wally9_Rampage1.ogg",
		"Wally9_Rampage2.ogg",
		"Wally9_Rampage3.ogg",
		"Wally9_Rampage4.ogg",
		"Wally9_WaitStart.ogg",
		"Wally9_Win.ogg",
		"Wally9_StandUpAttack.ogg",
		"Wally9_AttackB.ogg",
		"Wally9_StepLanding.ogg",
		"Wally9_JumpAttack.ogg",
		"Wally9_DashEnd.ogg",
		"Wally9_HitGround.ogg",
		"Wally9_StartSmoke.ogg",
		"BreakGround.ogg",
		"Wally9_LaserAttack.ogg",
		"Wally9_Barrier.ogg",
		
	},
	
	
	READY_XMESH = 
	{
		"Thief_Fat_JumpAttackA_Stone01.Y",
		"Thief_Fat_JumpAttackA_Stone02.y",
		"Wally9th_Armor_Broken.X",
		
	},
	
	READY_XSKIN_MESH = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Wally9th_Type2.x",
	MOTION_ANI_TEX_XET		= "NUI_NASOD_BLADE_FD.xet",
	MOTION_CHANGE_TEX_XET	= "NUI_NASOD_BLADE_FD.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 700,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2500,
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
--[[
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Wally9th_Weapon01.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
		
		ALPHA_OBJECT				= TRUE,
			
		USE_SLASH_TRACE				= TRUE,
		SLASH_TRACE_TOP_BONE		= "TRACE_START1",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END1",
	},

	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Wally9th_Weapon02.X",
		WEAPON_BONE_NAME			= "Dummy2_Lhand",
		
		ALPHA_OBJECT				= TRUE,		
			
		USE_SLASH_TRACE				= TRUE,
		SLASH_TRACE_TOP_BONE		= "TRACE_START2",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END2",
	},
	--]]
}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_BLADE_FD_START",						},
	{ STATE_NAME = "NASOD_BLADE_FD_WAIT",						},
	
	{ STATE_NAME = "NASOD_BLADE_FD_WALK",						LUA_STATE_END_FUNC = "NASOD_BLADE_FD_WALK_STATE_END"									},
	
	--{ STATE_NAME = "NASOD_BLADE_FD_JUMP_UP_DIR_FOR_ATTACK",	},
	
	{ STATE_NAME = "NASOD_BLADE_FD_JUMP_UP",					},
	
	{ STATE_NAME = "NASOD_BLADE_FD_JUMP_DOWN",					LUA_STATE_END_FUNC = "NASOD_BLADE_FD_JUMP_DOWN_STATE_END"								},
															
	{ STATE_NAME = "NASOD_BLADE_FD_JUMP_UP_DIR",				},
	
	{ STATE_NAME = "NASOD_BLADE_FD_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "NASOD_BLADE_FD_JUMP_DOWN_DIR_STATE_END"							},
	{ STATE_NAME = "NASOD_BLADE_FD_JUMP_LANDING",									},
	--{ STATE_NAME = "NASOD_BLADE_FD_JUMP_LANDING",				LUA_STATE_START_FUNC = "NASOD_BLADE_FD_JUMP_LANDING_STATE_START",						},	
	{ STATE_NAME = "NASOD_BLADE_FD_DASH",						LUA_STATE_START_FUNC = "NASOD_BLADE_FD_DASH_STATE_START", 
																LUA_FRAME_MOVE_FUNC= "NASOD_BLADE_FD_DASH_FRAME_MOVE",									
																LUA_STATE_END_FUNC = "NASOD_BLADE_FD_DASH_STATE_END"									},
																
	{ STATE_NAME = "NASOD_BLADE_FD_DASH_END",					LUA_STATE_START_FUNC = "NASOD_BLADE_FD_DASH_END_STATE_START", 							},
	
	{ STATE_NAME = "NASOD_BLADE_FD_ATTACK",					LUA_FRAME_MOVE_FUNC= "NASOD_BLADE_FD_ATTACK_FRAME_MOVE",		STATE_COOL_TIME = 5,		},
	{ STATE_NAME = "NASOD_BLADE_FD_ATTACKB",					},
	
	
	
	--리액션 관련
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_SMALL",				LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_DAMAGE_SMALL_FRAME_MOVE"							},
															
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_BIG",				LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_DAMAGE_BIG_FRAME_MOVE" 							},
	
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_DAMAGE_DOWN_FRONT_FRAME_MOVE"					},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_DAMAGE_DOWN_BACK_FRAME_MOVE"						},
		
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_FLY_BACK",			},
		
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_AIR",				},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_BLADE_FD_STAND_UP_FRONT",			LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_STAND_UP_FRONT_FRAME_MOVE"						},
	{ STATE_NAME = "NASOD_BLADE_FD_STAND_UP_BACK",				LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_STAND_UP_BACK_FRAME_MOVE"						},
	{ STATE_NAME = "NASOD_BLADE_FD_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_STAND_UP_ATTACK_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "NASOD_BLADE_FD_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "NASOD_BLADE_FD_STAND_UP_ATTACK_BACK_FRAME_MOVE"					},
	{ STATE_NAME = "NASOD_BLADE_FD_DAMAGE_REVENGE",			},

	{ STATE_NAME = "NASOD_BLADE_FD_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "NASOD_BLADE_FD_DYING_LAND_STATE_START" 						},
	{ STATE_NAME = "NASOD_BLADE_FD_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "NASOD_BLADE_FD_DYING_LAND_STATE_START" 						},
	{ STATE_NAME = "NASOD_BLADE_FD_DYING_SKY",					LUA_STATE_START_FUNC = "NASOD_BLADE_FD_DYING_LAND_STATE_START" 						},

	
	
	START_STATE					= "NASOD_BLADE_FD_WAIT",
	WAIT_STATE					= "NASOD_BLADE_FD_WAIT",

	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_BLADE_FD_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_BLADE_FD_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_BLADE_FD_DAMAGE_BIG",
	BIG_DAMAGE_LAND_BACK		= "NASOD_BLADE_FD_DAMAGE_BIG",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_BLADE_FD_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_BLADE_FD_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "NASOD_BLADE_FD_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "NASOD_BLADE_FD_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "NASOD_BLADE_FD_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "NASOD_BLADE_FD_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "NASOD_BLADE_FD_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING				= "NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "NASOD_BLADE_FD_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "NASOD_BLADE_FD_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"NASOD_BLADE_FD_DAMAGE_AIR_FALL","NASOD_BLADE_FD_STAND_UP_FRONT","NASOD_BLADE_FD_STAND_UP_BACK","NASOD_BLADE_FD_STAND_UP_ATTACK_FRONT","NASOD_BLADE_FD_STAND_UP_ATTACK_BACK",
	"NASOD_BLADE_FD_JUMP_DOWN","NASOD_BLADE_FD_JUMP_LANDING",},
	
	
	DYING_LAND_FRONT			= "NASOD_BLADE_FD_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "NASOD_BLADE_FD_DYING_LAND_BACK",
	DYING_SKY					= "NASOD_BLADE_FD_DYING_SKY",

	REVENGE_ATTACK				= "",	
}


INIT_AI = 
{
	
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_HEIGHT_LIMIT			= 50,
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 100,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 310,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  90,
		FAR_WALK_RATE		= 100,   -- 70, 
		
		JUMP_INTERVAL		= 0,
		UP_JUMP_RATE		= 0, -- 10,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  10,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}

--------------------------------------------------------------------------------------------------------
NASOD_BLADE_FD_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	LAND_CONNECT				= TRUE,
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,		

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	RIGHT						= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",						},
	},
}



NASOD_BLADE_FD_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_BLADE_FD_ATTACK",					"CT_NASOD_BLADE_FD_ATTACK",				},		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"NASOD_BLADE_FD_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"NASOD_BLADE_FD_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_BLADE_FD_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_BLADE_FD_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_BLADE_FD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_BLADE_FD_JUMP_DOWN_DIR",			},
	},
	
	
	CT_NASOD_BLADE_FD_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
}



NASOD_BLADE_FD_WALK = 
{
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

       
	PASSIVE_SPEED_X				= 150,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_BLADE_FD_ATTACK",					"CT_NASOD_BLADE_FD_ATTACK",				},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"NASOD_BLADE_FD_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"NASOD_BLADE_FD_DASH",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_BLADE_FD_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_BLADE_FD_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_BLADE_FD_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_BLADE_FD_JUMP_DOWN_DIR",				},

	},
	
		
	CT_NASOD_BLADE_FD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
}



NASOD_BLADE_FD_DASH =
{
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= 300,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	EVENT_INTERVAL_TIME0		= 1,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN_DIR",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_BLADE_FD_ATTACK",					"CT_NASOD_BLADE_FD_ATTACK",				},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"NASOD_BLADE_FD_DASH_END",					},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"NASOD_BLADE_FD_WALK",						}, 
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"NASOD_BLADE_FD_JUMP_UP",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"NASOD_BLADE_FD_JUMP_UP_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"NASOD_BLADE_FD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"NASOD_BLADE_FD_JUMP_DOWN_DIR",			},

	},
	
	CT_NASOD_BLADE_FD_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
}


NASOD_BLADE_FD_DASH_END = 
{
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.189, "Wally9_DashEnd.ogg" },
 	
	SPEED_X						= 600,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",						},
	},
}




NASOD_BLADE_FD_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_BLADE_FD_JUMP_DOWN",				},
	},

}


NASOD_BLADE_FD_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_BLADE_FD_JUMP_LANDING",				},
	},
}


NASOD_BLADE_FD_JUMP_UP_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_BLADE_FD_JUMP_DOWN_DIR",				},
	},

	
}



NASOD_BLADE_FD_JUMP_DOWN_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_BLADE_FD_JUMP_LANDING",				},
	},
}



NASOD_BLADE_FD_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.130, "Wally9_StepLanding.ogg" },

	SPEED_X						= 300,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",					},
	},
}



NASOD_BLADE_FD_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.118, "Wally9_Type2_Combo.ogg" },
    SOUND_PLAY1			= { 0.639, "Wally9_Slash.ogg" },
    SOUND_PLAY2			= { 1.130, "Wally9_Slash.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN",							},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",								},	
		
	},
	
	ATTACK_TIME0				= { 1.01, 1.085, },
	ATTACK_TIME1				= { 1.55, 1.60, },
	
	SLASH_TRACE					= { 0.1, 1.5, },
	SLASH_TRACE0				= { 0.1, 1.5, 1 }, 

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 900.0,
		BACK_SPEED_Y			= 0.0,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	},
	
	DAMAGE_DATA2 = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 1800,
		BACK_SPEED_Y			= 1000,		
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	},
}



----------------------------------------------------------
function NASOD_BLADE_FD_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
			
	if pNPCUnit:AnimEventTimer_LUA( 1.4 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA2" )
	end
	
end




NASOD_BLADE_FD_ATTACKB = 
{
	ANIM_SPEED					= 0.8,
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	    SOUND_PLAY0			= { 0.701, "Wally9_Rampage1.ogg" },
	    SOUND_PLAY1			= { 1.098, "Wally9_Slash2.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_BLADE_FD_JUMP_DOWN",									},	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_BLADE_FD_WAIT",											},		
	},
	
	
	ATTACK_TIME0				= { 0.939, 0.970, }, 
	SLASH_TRACE					= { 0.6, 0.9, },
	SLASH_TRACE0				= { 0.6, 0.9, 1 }, 
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 2200,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
	},
}




NASOD_BLADE_FD_DAMAGE_SMALL =
{
	ANIM_NAME					= "DamageSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",						},
	},
}


NASOD_BLADE_FD_DAMAGE_BIG = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_BLADE_FD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_BLADE_FD_WAIT",					},
	},
}

NASOD_BLADE_FD_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_BLADE_FD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_BLADE_FD_STAND_UP_FRONT",			},
	},
}

NASOD_BLADE_FD_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"NASOD_BLADE_FD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_BLADE_FD_STAND_UP_BACK",			},
	},
}




NASOD_BLADE_FD_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_BLADE_FD_DAMAGE_DOWN_FRONT",		},
	},
}

NASOD_BLADE_FD_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_BLADE_FD_DAMAGE_DOWN_BACK",		},
	},
}





NASOD_BLADE_FD_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_BLADE_FD_WAIT",					},
	},
}



NASOD_BLADE_FD_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	--PASSIVE_SPEED_Y				= -1,
	--SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * 0.9,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"NASOD_BLADE_FD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}


NASOD_BLADE_FD_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}



NASOD_BLADE_FD_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"NASOD_BLADE_FD_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

	
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_STAND_UP_FRONT",			},
	},
}

NASOD_BLADE_FD_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,

    SOUND_PLAY0			= { 0.867, "Wally9_StepLanding.ogg" },
    SOUND_PLAY1			= { 1.320, "Wally9_SwordOut.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",				},
	},
}

----------------------------------------------------------
function NASOD_BLADE_FD_STAND_UP_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetNowAnimationTime() > 1.5 then
		pNPCUnit:SetSuperArmor(true)
	end	
		
end



NASOD_BLADE_FD_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,

    SOUND_PLAY0			= { 0.950, "Wally9_StepLanding.ogg" },
    SOUND_PLAY1			= { 1.410, "Wally9_SwordOut.ogg" },

		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT", },
	},		
}

----------------------------------------------------------
function NASOD_BLADE_FD_STAND_UP_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetNowAnimationTime() > 1.5 then
		pNPCUnit:SetSuperArmor(true)
	end	
		
end



NASOD_BLADE_FD_STAND_UP_ATTACK_FRONT = 
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

    SOUND_PLAY0			= { 0.471, "Wally9_StandUpAttack.ogg" },
    SOUND_PLAY1			= { 1.070 , "Wally9_StepLanding.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",				},
	},
	
	ATTACK_TIME0				= { 0.40, 0.76 },	
	SLASH_TRACE					= { 0.3, 0.9 },
	SLASH_TRACE0				= { 0.3, 0.9, 1 }, 

	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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
		
		-- STOP_TIME_ATT			= 0.0,		
		-- STOP_TIME_DEF			= 0.0,	
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,
		-- CLEAR_SCREEN			= 0.0,	
		-- CLEAR_SCREEN_COLOR_A	= 0.0,
		-- CLEAR_SCREEN_COLOR_R	= 1.0,
		-- CLEAR_SCREEN_COLOR_G	= 1.0,
		-- CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},	
}

----------------------------------------------------------
function NASOD_BLADE_FD_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.80 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
	
	if pNPCUnit:GetNowAnimationTime() > 1.5 then
		pNPCUnit:SetSuperArmor(true)
	end	
		
end



NASOD_BLADE_FD_STAND_UP_ATTACK_BACK = 
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_WAIT_TIME				= 1,
	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },
	SWAP_UNIT_WIDTH_HEIGHT		= TRUE,

	
    SOUND_PLAY0			= { 0.589, "Wally9_StandUpAttack.ogg" },
    SOUND_PLAY1			= { 1.134, "Wally9_StepLanding.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	FLIP_DIR_END				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"NASOD_BLADE_FD_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT", },
	},	
	
		
	ATTACK_TIME0				= { 0.46, 0.76 },
	SLASH_TRACE					= { 0.4, 0.9 },
	SLASH_TRACE0				= { 0.4, 0.9, 1 }, 

	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
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
		
		-- STOP_TIME_ATT			= 0.0,		
		-- STOP_TIME_DEF			= 0.0,	
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,
		-- CLEAR_SCREEN			= 0.0,	
		-- CLEAR_SCREEN_COLOR_A	= 0.0,
		-- CLEAR_SCREEN_COLOR_R	= 1.0,
		-- CLEAR_SCREEN_COLOR_G	= 1.0,
		-- CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,				
	},
}

----------------------------------------------------------
function NASOD_BLADE_FD_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.72 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
	
	if pNPCUnit:GetNowAnimationTime() > 1.5 then
		pNPCUnit:SetSuperArmor(true)
	end	
		
end





NASOD_BLADE_FD_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageBig",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	STOP_MY_UNIT0				= { 0.2, 0.2, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_BLADE_FD_WAIT",					},
	},
}



NASOD_BLADE_FD_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
NASOD_BLADE_FD_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	IMMADIATE_PACKET_SEND		= TRUE,
}

NASOD_BLADE_FD_DYING_SKY = 
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





----------------------------------------------------------
function NASOD_BLADE_FD_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end




----------------------------------------------------------
function NASOD_BLADE_FD_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end


----------------------------------------------------------
function NASOD_BLADE_FD_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------
-- function NASOD_BLADE_FD_JUMP_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	
	
	-- pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.3 )
	-- pMinorParticle = pX2Game:GetMinorParticle()
	-- pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Foot" )
	-- pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pos, D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
	
-- end




----------------------------------------------------------
function NASOD_BLADE_FD_DASH_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.0 )
	
end


----------------------------------------------------------
function NASOD_BLADE_FD_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.0 )
	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.2 )
	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.4 )
	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.6 )
	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.8 )

end

----------------------------------------------------------
function NASOD_BLADE_FD_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.0 )
	
end



----------------------------------------------------------
function NASOD_BLADE_FD_DASH_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, 0.0 )
	
end





----------------------------------------------------------
function NASOD_BLADE_FD_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.15 ) then
	
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
	
end


----------------------------------------------------------
function NASOD_BLADE_FD_DAMAGE_BIG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
	
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end




----------------------------------------------------------
function NASOD_BLADE_FD_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- if pNPCUnit:AnimEventTimer_LUA( 0.34 ) then
	
		-- pNPCUnit:PlaySound_LUA( "Down.ogg" )
		-- pMinorParticle = pX2Game:GetMinorParticle()
		-- pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		-- pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
	
	-- end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.56 ) then
	
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Calf" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_Neck" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_UpperArm" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	
	end

end



----------------------------------------------------------
function NASOD_BLADE_FD_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- if pNPCUnit:AnimEventTimer_LUA( 0.24 ) then
	
		-- pNPCUnit:PlaySound_LUA( "Down.ogg" )
		-- pMinorParticle = pX2Game:GetMinorParticle()
		-- pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		-- pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.2 )
		
	-- end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.85 ) then
	
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Calf" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_Neck" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_UpperArm" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	
	end

end





----------------------------------------------------------
function NASOD_BLADE_FD_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		-- if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			-- pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		-- end		
			
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Calf" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_Neck" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pos = pNPCUnit:GetBonePos_LUA( "Bip01_R_UpperArm" )		
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WALLY_9TH_Spark", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				
	elseif pNPCUnit:AnimEventTimer_LUA( 0.44 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
	
end





----------------------------------------------------------
function NASOD_BLADE_FD_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

















-- UTILITY FUNCTIONS ---------------------------------------

----------------------------------------------------------
function NASOD_BLADE_FD_DOWN_SMOKE( pX2Game, pNPCUnit, fAnimEventTime )

	if 0.0 == fAnimEventTime then 
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally8thBoostSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	
	elseif pNPCUnit:AnimEventTimer_LUA( fAnimEventTime ) then
	
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally8thBoostSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		
	end
	
end




----------------------------------------------------------
function NASOD_BLADE_FD_STEP_SMOKE( pX2Game, pNPCUnit, fAnimEventTime )

	if pNPCUnit:AnimEventTimer_LUA( fAnimEventTime ) then
	
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(10,-1) )
		
	end	

end





------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
