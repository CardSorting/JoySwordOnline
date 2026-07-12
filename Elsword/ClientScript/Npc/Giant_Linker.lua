-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/04/14 / 자이언트 링커/
	 Link_Attack(3가지 중 하나), 다른 링커들 소환
--]]

-- 링커 체크
INIT_SYSTEM =
{
	UNIT_WIDTH	= 240.0,
	UNIT_HEIGHT	= 320.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE	= 3.0,
}
------------------------------------------------------------------------------
INIT_DEVICE =
{
	READY_TEXTURE =
	{
		"NUI_SHADOW_GIANT_LINKER_MAP01.tga",
		"NUI_SHADOW_GIANT_LINKER_MAP02.tga",
        "Mana_Link01.tga",
		"MANA_Smoke01.tga",
		"MANA_Circle_Dark01.tga",
		"MANA_Circle_Dark02.tga",
		"Mana_Link01.tga",
	},

	READY_SOUND =
	{
		"Shadow_Linker_AttackA_Ready.ogg",
		"Shadow_Linker_AttackAEnd.ogg",
		"Shadow_Linker_AttackAStart01.ogg",
		"Shadow_Linker_AttackAStart02.ogg",
		"Shadow_Linker_Laugh.ogg",
		"Shadow_Linker_SpecialAttack.ogg",
		"Shadow_Linker_Wait.ogg",
		"Shadow_Linker_Linking.ogg",
	},

    READY_XSKIN_MESH =
	{
        "Mana_Link.X",
	},
}
------------------------------------------------------------------------------
INIT_MOTION =
{
	MOTION_FILE_NAME		= "Motion_SHADOW_LINKER.x",
	MOTION_CHANGE_TEX_XET	= "NUI_GIANT_LINKER.xet",
}
------------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 4000,
	MAX_G_SPEED		= -2000,

	WALK_SPEED		= 820,
	RUN_SPEED		= 820,
	JUMP_SPEED		= 1500,
	DASH_JUMP_SPEED	= 2300,
}
------------------------------------------------------------------------------
INIT_COMPONENT =
{
	MP_CHANGE_RATE	= 1,
	MP_CHARGE_RATE	= 130,
	
	OUT_LINE_WIDTH_SCALE = 0.4,
	SHADOW_SIZE			= 50,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,


	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
}
------------------------------------------------------------------------------
INIT_STATE =
{
	{ STATE_NAME = "GIANT_LINKER_START",		},
	{ STATE_NAME = "GIANT_LINKER_WAIT",			},
	{ STATE_NAME = "GIANT_LINKER_WAIT_HABIT",	},
	{ STATE_NAME = "GIANT_LINKER_WALK",			LUA_STATE_END_FUNC = "GIANT_LINKER_WALK_STATE_END"	},

	{ STATE_NAME = "GIANT_LINKER_JUMP_UP",			},
	{ STATE_NAME = "GIANT_LINKER_JUMP_DOWN",		LUA_STATE_END_FUNC = "GIANT_LINKER_JUMP_DOWN_STATE_END"		},
	{ STATE_NAME = "GIANT_LINKER_JUMP_UP_DIR",		},
	{ STATE_NAME = "GIANT_LINKER_JUMP_DOWN_DIR",	LUA_STATE_END_FUNC = "GIANT_LINKER_JUMP_DOWN_DIR_STATE_END"	},
	{ STATE_NAME = "GIANT_LINKER_JUMP_LANDING",		},

	{ STATE_NAME = "GIANT_LINKER_LINK_ATTACK",	LUA_STATE_START_FUNC = "GIANT_LINKER_LINK_ATTACK_STATE_START",
												LUA_FRAME_MOVE_FUNC = "GIANT_LINKER_LINK_ATTACK_FRAME_MOVE",	STATE_COOL_TIME = 8, },
	{ STATE_NAME = "GIANT_LINKER_SUMMON",		LUA_STATE_START_FUNC = "GIANT_LINKER_SUMMON_STATE_START",},
	
	--리액션 관련
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_FRONT",			LUA_FRAME_MOVE_FUNC = "GIANT_LINKER_DAMAGE_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_BACK",			LUA_FRAME_MOVE_FUNC = "GIANT_LINKER_DAMAGE_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_DOWN_FRONT",	LUA_FRAME_MOVE_FUNC = "GIANT_LINKER_DAMAGE_DOWN_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_DOWN_BACK",		LUA_FRAME_MOVE_FUNC = "GIANT_LINKER_DAMAGE_DOWN_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_FLY_FRONT",		},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_FLY_BACK",		},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_AIR",			},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_AIR_DOWN",		},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_AIR_UP",		},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_AIR_FALL",		},
	{ STATE_NAME = "GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	{ STATE_NAME = "GIANT_LINKER_STAND_UP_FRONT",	},
	{ STATE_NAME = "GIANT_LINKER_STAND_UP_BACK",	},

	{ STATE_NAME = "GIANT_LINKER_DYING_LAND_FRONT",	LUA_STATE_START_FUNC = "GIANT_LINKER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "GIANT_LINKER_DYING_LAND_BACK",	LUA_STATE_START_FUNC = "GIANT_LINKER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "GIANT_LINKER_DYING_SKY",		LUA_STATE_START_FUNC = "GIANT_LINKER_DYING_LAND_STATE_START",},

	START_STATE	= "GIANT_LINKER_START",
	WAIT_STATE	= "GIANT_LINKER_WAIT",

	SMALL_DAMAGE_LAND_FRONT	= "GIANT_LINKER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK	= "GIANT_LINKER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT	= "GIANT_LINKER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK	= "GIANT_LINKER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT	= "GIANT_LINKER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK	= "GIANT_LINKER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT		= "GIANT_LINKER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK			= "GIANT_LINKER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR		= "GIANT_LINKER_DAMAGE_AIR",
	BIG_DAMAGE_AIR			= "GIANT_LINKER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR			= "GIANT_LINKER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING	= "GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE				= "GIANT_LINKER_DAMAGE_AIR_UP",
	--DAMAGE_REVENGE			= "GIANT_LINKER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"GIANT_LINKER_DAMAGE_AIR_DOWN","GIANT_LINKER_DAMAGE_AIR_FALL","GIANT_LINKER_STAND_UP_FRONT","GIANT_LINKER_STAND_UP_BACK",
	"GIANT_LINKER_JUMP_DOWN","GIANT_LINKER_JUMP_LANDING",},	

	DYING_LAND_FRONT	= "GIANT_LINKER_DYING_LAND_FRONT",
	DYING_LAND_BACK		= "GIANT_LINKER_DYING_LAND_BACK",
	DYING_SKY			= "GIANT_LINKER_DYING_SKY",

	REVENGE_ATTACK	= "",

    COMMON_FRAME_FUNC = "GIANT_LINKER_COMMON_FRAMEMOVE",
}
------------------------------------------------------------------------------
INIT_AI =
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_ONLY_ONE"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 2000,		-- cm
		TARGET_SUCCESS_RATE			= 100,		-- 50,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100,		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 250,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 100,

		DIR_CHANGE_INTERVAL = 0.7,

		WALK_INTERVAL		= 5,
		NEAR_WALK_RATE		= 100,   -- 70,
		FAR_WALK_RATE		= 100,   -- 30,

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100,	-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,	--  20,
		DOWN_DOWN_RATE		= 40,

		--LINE_END_RANGE		= 100,	-- cm
	},

	PATROL_MOVE =
	{
		PATROL_BEGIN_RATE		= 50, --50,
		PATROL_RANGE			= 100,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},

	ESCAPE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공

		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,	--  10,
		FAR_WALK_RATE		= 100,	-- 10,

		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	--  30,
		DOWN_DOWN_RATE		= 30,
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_START =
{
	ANIM_NAME	= "WaitHabit",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_LINKER_WAIT"	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_LINKER_WAIT_HABIT",	"CT_GIANT_LINKER_WAIT_HABIT",  },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_LINKER_LINK_ATTACK",	"CT_GIANT_LINKER_LINK_ATTACK"  },

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"GIANT_LINKER_WALK",			},
        { STATE_CHANGE_TYPE["SCT_AI_DASH"],     "GIANT_LINKER_WALK",           },
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"GIANT_LINKER_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"GIANT_LINKER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"GIANT_LINKER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"GIANT_LINKER_JUMP_DOWN_DIR",	},
	},

	-- 대기 상태2
	CT_GIANT_LINKER_WAIT_HABIT =
	{
		ANIM_PLAY_COUNT	= 1,
		RATE			= 60,
		HAVE_TARGET		= 0,
	},

    -- 링크 기술
	CT_GIANT_LINKER_LINK_ATTACK =
	{
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR	= 500,
		RATE		= 90,
        FLAG_FALSE  = 0,
		HAVE_TARGET	= 1,
	},
}
------------------------------------------------------------------------------
-- 대기 상태2
GIANT_LINKER_WAIT_HABIT =
{
	ANIM_NAME	= "WaitHabit",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,

	SOUND_PLAY0	= { 0.1 , "Shadow_Linker_Wait.ogg", 20 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
-- 걷기
GIANT_LINKER_WALK =
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	ANIM_SPEED	= 0.8,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],

	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_INTERVAL_TIME0	= 2,
	EVENT_INTERVAL_TIME1	= 3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_JUMP_DOWN_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"GIANT_LINKER_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"GIANT_LINKER_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"GIANT_LINKER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"GIANT_LINKER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"GIANT_LINKER_JUMP_DOWN_DIR",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X		= 1200,
	SPEED_Y		= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y	= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GIANT_LINKER_JUMP_DOWN",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_JUMP_DOWN =
{
	ANIM_NAME	= "JumpDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_JUMP_LANDING",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_JUMP_UP_DIR =
{
	ANIM_NAME	= "JumpUp",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y	= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GIANT_LINKER_JUMP_DOWN_DIR",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_JUMP_DOWN_DIR =
{
	ANIM_NAME	= "JumpDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],


	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_JUMP_LANDING",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_JUMP_LANDING =
{
	ANIM_NAME	= "JumpLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
-- 특수 공격, 공격 당한 대상을 일정 거리로 가까워질 때까지 추적한다.
GIANT_LINKER_LINK_ATTACK =
{
	ANIM_NAME	= "SpecialAttack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0	= { 0.35 , "Shadow_Linker_SpecialAttack.ogg" },

	VIEW_TARGET	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	--[[PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE,	0.3,	"Pa_MANA_LINKER_Light01",	FALSE,	"Bip01_R_Finger1",	TRUE,	TRUE,	0,	0,	0,	TRUE, },
		{ TRUE,	0.5,	"Pa_MANA_LINKER_Light02",	FALSE,	"Bip01_R_Finger1",	TRUE,	TRUE,	0,	0,	0,	TRUE, },
	},--]]

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"GIANT_LINKER_WAIT",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_SUMMON =
{
	ANIM_NAME	= "Summon",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SUPER_ARMOR	= TRUE,
	--DEFENCE		= { 0, 100, 70, },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_LINKER_WAIT",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_FRONT =
{
	ANIM_NAME	= "DamageSmallFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_LINKER_SUMMON",	"CT_GIANT_LINKER_SUMMON"  },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_LINKER_WAIT",	},
	},
	
	-- 링크 기술
	CT_GIANT_LINKER_SUMMON =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE		= 1,
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_BACK =
{
	ANIM_NAME	= "DamageSmallBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_LINKER_SUMMON",	"CT_GIANT_LINKER_SUMMON"  },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_LINKER_WAIT",	},
	},
	
	-- 링크 기술
	CT_GIANT_LINKER_SUMMON =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE		= 1,
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 70, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GIANT_LINKER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GIANT_LINKER_STAND_UP_FRONT",		},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_DOWN_BACK =
{
	ANIM_NAME	= "DamageDownBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 70, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"GIANT_LINKER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GIANT_LINKER_STAND_UP_BACK",		},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_FLY_FRONT =
{
	ANIM_NAME	= "DamageAirFlyFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_FLY_BACK =
{
	ANIM_NAME	= "DamageAirFlyBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_DAMAGE_DOWN_BACK",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_AIR =
{
	ANIM_NAME	= "DamageAirSmall",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_WAIT",	},
	},

	VIEW_TARGET	= TRUE,
	ALLOW_DIR_CHANGE	= TRUE,
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_AIR_DOWN =
{
	ANIM_NAME	= "DamageAirDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_AIR_UP =
{
	ANIM_NAME	= "DamageAirUp",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GIANT_LINKER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_AIR_FALL =
{
	ANIM_NAME	= "DamageAirFall",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"GIANT_LINKER_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME	= "DamageDownLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 70, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_LINKER_STAND_UP_FRONT",		},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_STAND_UP_FRONT =
{
	ANIM_NAME	= "DamageStandUpFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 70, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_STAND_UP_BACK =
{
	ANIM_NAME	= "DamageStandUpBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 70, },

  
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_LINKER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_LINKER_WAIT", },
	},
}
------------------------------------------------------------------------------
GIANT_LINKER_DYING_LAND_FRONT =
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
------------------------------------------------------------------------------
GIANT_LINKER_DYING_LAND_BACK =
{
	ANIM_NAME	= "DamageDownBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
------------------------------------------------------------------------------
GIANT_LINKER_DYING_SKY =
{
	ANIM_NAME	= "DamageDownLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
------------------------------------------------------------------------------


------------------------------------------------------------------------------
function GIANT_LINKER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
------------------------------------------------------------------------------
function GIANT_LINKER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
------------------------------------------------------------------------------
function GIANT_LINKER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
------------------------------------------------------------------------------
function GIANT_LINKER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end

		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end

	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pNPCUnit:SetFlag_LUA( 0, false )
	ClearEffect_Giant( pKTDXApp, pX2Game, pNPCUnit )

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
------------------------------------------------------------------------------
function GIANT_LINKER_LINK_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetNowHP() <= 0 then
		pNPCUnit:SetFlag_LUA( 2, false )
		ClearEffect_Giant( pKTDXApp, pX2Game, pNPCUnit )
	end
	
	if true == pNPCUnit:GetFlag_LUA( 2 ) then
		local pLinkedUnit = pNPCUnit:GetNearestGUUser()

		if nil ~= pLinkedUnit then
			local vTargetPos = pLinkedUnit:GetPos()
			local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
			local fDist = pX2Game:GetDist_LUA( vTargetPos, vPos )
		
			if fDist > 2000 then
				pNPCUnit:SetFlag_LUA( 2, false )
				ClearEffect_Giant( pKTDXApp, pX2Game, pNPCUnit )
			end
		end
	end

	if false == pNPCUnit:GetFlag_LUA( 2 ) then
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		local pNearUserUnit = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 2000 )
		pNPCUnit:SetNearestGUUser( pNearUserUnit )
		
		-- 방장의 NPC AI Taget 갱신
		if nil ~= pNPCUnit:GetTargetUser() then
			pNPCUnit:SetTargetUnit( pNearUserUnit )
		end
		
		pNPCUnit:SetFlag_LUA( 2, true )
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_LINK_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		local pMajorParticle = pX2Game:GetMajorParticle()
		local iRandOffeset = 0
		local rNumber =  pNPCUnit:GetRandVal(iRandOffeset) % 3 + 1
		pNPCUnit:SetInt_LUA( 0, rNumber)
		local tempString
		
		if nil ~= pMajorParticle then
			local vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger1" )
			
			if rNumber == 1 then
				tempString = "Pa_SHADOW_LINKER_Light01"
			elseif rNumber == 2 then
				tempString = "Pa_BLOOD_LINKER_Light01"
			else
				tempString = "Pa_MANA_LINKER_Light01"
			end
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, tempString, vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pParticle:SetScaleFactor( D3DXVECTOR3( 3.0, 3.0, 3.0 ) )
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
		local pMajorParticle = pX2Game:GetMajorParticle()
		local iRandOffeset = 0
		local rNumber =  pNPCUnit:GetRandVal(iRandOffeset) % 3 + 1
		pNPCUnit:SetInt_LUA( 0, rNumber)
		local tempString
		
		if nil ~= pMajorParticle then
			local vPos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger1" )
			
			if rNumber == 1 then
				tempString = "Pa_SHADOW_LINKER_Light02"
			elseif rNumber == 2 then
				tempString = "Pa_BLOOD_LINKER_Light02"
			else
				tempString = "Pa_MANA_LINKER_Light02"
			end
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, tempString, vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.525 ) then
        local pMajorParticle = pX2Game:GetMajorParticle()
        local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		local rNumber =  pNPCUnit:GetInt_LUA( 0 )
		local tempString
		
        -- NPC에게 걸리는 이펙트
        if nil ~= pMajorParticle then
			if rNumber == 1 then
				tempString = "Pa_SHADOW_LINKER_Smoke01"
			elseif rNumber == 2 then
				tempString = "Pa_BLOOD_LINKER_Smoke01"
			else
				tempString = "Pa_MANA_LINKER_Smoke01"
			end
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, tempString, vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pParticle:SetScaleFactor( D3DXVECTOR3( 3.0, 3.0, 3.0 ) )
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		end
		
		local pLinkedUnit = pNPCUnit:GetNearestGUUser()
				
		pNPCUnit:SetFlag_LUA( 0, true )		-- index, bool
		pNPCUnit:SetTimerRestart( 5 )		-- index
		pNPCUnit:SetTimerRestart( 6 )		-- index
			
		if nil ~= pLinkedUnit then
			pLinkedUnit:SetNowHit( false )
						
			local vTargetPos = pLinkedUnit:GetPos()
			
			vTargetPos.y = vTargetPos.y + 100
			
			-- 유저에게 걸리는 이펙트
			if nil ~= pMajorParticle then
				local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, tempString, vTargetPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:SetMajorParticle_LUA( 1, pParticle:GetHandle() )
			end
			
			local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")
			local rotDegree	= pNPCUnit:GetRotateDegree()
			local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
			if rNumber == 1 then
				tempString = "Mesh_SHADOW_LINKER_Line"
				pLinkedUnit:SetAnimSpeed_LUA( 0.7 )
			elseif rNumber == 2 then
				tempString = "Mesh_BLOOD_LINKER_Line"
			else
				tempString = "Mesh_MANA_LINKER_Line"
			end
			local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( tempString, vBonePos, rotDegree, rotDegree, 14 )
					                    
			pNPCUnit:SetTimerRestart( 5 )
			pNPCUnit:SetFlag_LUA( 0, true )

			pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
		end
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_SUMMON_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local nUnitListSize = pX2Game:GetUnitNum()
	
	if nUnitListSize >= 8 then
		return
	end
	
	local iRandOffeset = 0
	local rNumber =  pNPCUnit:GetRandVal(iRandOffeset) % 3 + 1
	local vPos = pNPCUnit:GetPos()
	
	vPos.y = vPos.y + 500
		
	if rNumber == 1 then
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_SHADOW_LINKER"], pNPCUnit:GetHardLevel(), true, vPos, true, 0.1, true  )
		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_SHADOW_LINKER"] )
		if nil ~= pUnit then
			pUnit:SetPositionForce( vPos, pNPCUnit:GetIsRight() )
		end
		rNumber = 2
	elseif rNumber == 2 then
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_BLOOD_LINKER"], pNPCUnit:GetHardLevel(), true, vPos, true, 0.1, true  )
		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_BLOOD_LINKER"] )
		if nil ~= pUnit then
			pUnit:SetPositionForce( vPos, pNPCUnit:GetIsRight() )
		end
		rNumber = 3
	else
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_MANA_LINKER"], pNPCUnit:GetHardLevel(), true, vPos, true, 0.1, true  )
		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_MANA_LINKER"] )
		if nil ~= pUnit then
			pUnit:SetPositionForce( vPos, pNPCUnit:GetIsRight() )
		end
		rNumber = 1
	end
	
	vPos = pNPCUnit:GetPos()
	vPos.y = vPos.y + 500
			
	if rNumber == 1 then
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_SHADOW_LINKER"], pNPCUnit:GetHardLevel(), true, vPos, true, 0.1, true  )
		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_SHADOW_LINKER"] )
		if nil ~= pUnit then
			pUnit:SetPositionForce( vPos, pNPCUnit:GetIsRight() )
		end
		rNumber = 2
	elseif rNumber == 2 then
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_BLOOD_LINKER"], pNPCUnit:GetHardLevel(), true, vPos, true, 0.1, true  )
		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_BLOOD_LINKER"] )
		if nil ~= pUnit then
			pUnit:SetPositionForce( vPos, pNPCUnit:GetIsRight() )
		end
		rNumber = 3
	else
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_MANA_LINKER"], pNPCUnit:GetHardLevel(), true, vPos, true, 0.1, true  )
		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_MANA_LINKER"] )
		if nil ~= pUnit then
			pUnit:SetPositionForce( vPos, pNPCUnit:GetIsRight() )
		end
		rNumber = 1
	end
end
------------------------------------------------------------------------------
function GIANT_LINKER_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )
    Gaint_link_func( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
-- 이펙트 갱신 및 데미지에 따른 HP 획득
function Gaint_link_func( pKTDXApp, pX2Game, pNPCUnit )
	if true == pNPCUnit:GetFlag_LUA(0) then		-- 0번 플래그가 true 일 때
		local fDist = 0.0
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		
		local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
		if nil ~= pParticle then
			pParticle:SetPosition( vPos )	-- NPC에 걸리는  이펙트 위치 갱신
		end
		
		-- 유저 이펙트 갱신
		local pLinkedUnit = pNPCUnit:GetNearestGUUser()
		
		if nil ~= pLinkedUnit then
			local vTargetPos = pLinkedUnit:GetPos()
			vTargetPos.y = vTargetPos.y + 100
			
			--{{ 검은 연기 파티클
			pParticle = pNPCUnit:GetMajorParticle_LUA( 1 )
			if nil ~= pParticle then
				pParticle:SetPosition( vTargetPos )
			end
			--}}
			
			--{{ 피 흡수 이펙트
			if true == pLinkedUnit:GetNowHit() then
				DrainHP( pNPCUnit, pLinkedUnit )
				pLinkedUnit:SetNowHit( false )
				pParticle = pX2Game:GetMajorParticle()

				local pSeq = pParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_SHADOW_LINKER_Link_Drain", vTargetPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
				if pSeq ~= nil then
					pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
					pNPCUnit:SetDrainHPSeq( pSeq:GetHandle() )
				end
			end
			--}}
			
			-- HP, MP 감소
			local fDecreaseTime = 0.2		-- HP, MP 감소 속도
			if fDecreaseTime <= pNPCUnit:GetTimerElapsedTime( 6 ) then
				local nLinkAttack = pNPCUnit:GetInt_LUA( 0 )
				
				if nLinkAttack == 2 then
					pLinkedUnit:SetNowHP( pLinkedUnit:GetNowHP() - pLinkedUnit:GetMaxHP() * 0.002 )
					pNPCUnit:SetTimerRestart( 6 )
				elseif nLinkAttack == 3 then 
					pLinkedUnit:SetNowMP( pLinkedUnit:GetNowMP() - pLinkedUnit:GetMaxMP() * 0.004 )
					pNPCUnit:SetTimerRestart( 6 )
					
					if pLinkedUnit:GetNowMP() < 0 then
						pLinkedUnit:SetNowMP( 0 )
					end
				end
			end
			
			--{{ 링크 라인 이펙트 위치 및 회전 관련
			local pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 )
			if nil ~= pMeshPlayer then
				local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()

				if nil ~= pMajorXMeshPlayer then
					if false == pMajorXMeshPlayer:IsLiveInstance( pMeshPlayer ) then
						pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
					else
						local vBonePos = pNPCUnit:GetBonePos_LUA("Bip01_Neck")
						fDist = pX2Game:GetDist_LUA( vBonePos, vTargetPos )
						
						if fDist <= 0 then
							fDist = 1
						end
						
						local fScaleX = fDist / 280
						pMeshPlayer:SetPos( vBonePos )
						vTargetPos.x = (vTargetPos.x - vBonePos.x)
						vTargetPos.y = (vTargetPos.y - vBonePos.y)
						vTargetPos.z = (vTargetPos.z - vBonePos.z)
						local vDir = GetDirVecToDegree( vTargetPos )
						pMeshPlayer:SetRotateDegree( vDir )
						pMeshPlayer:SetMoveAxisAngleDegree( vDir )
						pMeshPlayer:SetScale_LUA( fScaleX, 1.0, 1.0 )
					end
				end
			end
			--}}
		
			local fLinkTime = 10.0		-- 링크 시간
			local fNearDist = 2000.0
			
			if fDist > fNearDist or fLinkTime <= pNPCUnit:GetTimerElapsedTime( 5 ) then
				ClearEffect_Giant( pKTDXApp, pX2Game, pNPCUnit )
				pNPCUnit:SetFlag_LUA( 0, false )
				pNPCUnit:SetTimerRestart( 5 )
			end
		else
			ClearEffect_Giant( pKTDXApp, pX2Game, pNPCUnit )
			pNPCUnit:SetFlag_LUA( 0, false )
		end
    end
end
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos
end
--------------------------------------------------------------------------
function ClearEffect_Giant( pKTDXApp, pX2Game, pNPCUnit )
    for i = 0, 1 do
        local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
        if nil ~= pParticle then
            pParticle:SetAutoDie()
        end
    end
         
    local pMajorMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	if pMajorMeshPlayer ~= nil then
		pMajorMeshPlayer:DestroyInstance( pNPCUnit:GetMajorMeshPlayerHandle( 0 ) )
		pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
	end
	
	local pLinkedUnit = pNPCUnit:GetNearestGUUser()
	
	local nLinkAttack = pNPCUnit:GetInt_LUA( 0 )
	
	if nLinkAttack == 1 then
		if nil ~= pLinkedUnit then
			pLinkedUnit:SetAnimSpeed_LUA( 1 )
		end
	end
end
--------------------------------------------------------------------------
function DrainHP( pNPCUnit, pLinkedUnit )
    if nil ~= pNPCUnit then
		local fUserDamage = pLinkedUnit:GetRealDamage()
        local fHealHP = pNPCUnit:GetNowHP() + fUserDamage

        if fHealHP > pNPCUnit:GetMaxHP() then
            fHealHP = pNPCUnit:GetMaxHP()
        end

        pNPCUnit:SetNowHP_LUA( fHealHP )
    end
end
--------------------------------------------------------------------------