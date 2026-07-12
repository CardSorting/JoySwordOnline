-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/04/06 / 블러드 링커/
	 Link_Attack(HP 감소)
--]]

-- 링커 체크
INIT_SYSTEM =
{
	UNIT_WIDTH		= 60.0,
	UNIT_HEIGHT		= 80.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}
------------------------------------------------------------------------------
INIT_DEVICE =
{
	READY_TEXTURE =
	{
		"NUI_BLOOD_LINKER_MAP02.tga",
		"NUI_BLOOD_LINKER_MAP01.tga",
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
	MOTION_FILE_NAME		= "Motion_HALLOWEEN_BLOOD_LINKER.x",
	--MOTION_CHANGE_TEX_XET	= "NUI_BLOOD_LINKER.xet",
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
	{ STATE_NAME = "BLOOD_LINKER_START",		LUA_STATE_START_FUNC = "BLOOD_LINKER_START_STATE_START",	},
	{ STATE_NAME = "BLOOD_LINKER_WAIT",			},
	{ STATE_NAME = "BLOOD_LINKER_WAIT_HABIT",	},
	{ STATE_NAME = "BLOOD_LINKER_WALK",			LUA_STATE_END_FUNC = "BLOOD_LINKER_WALK_STATE_END"	},

	{ STATE_NAME = "BLOOD_LINKER_JUMP_UP",			},
	{ STATE_NAME = "BLOOD_LINKER_JUMP_DOWN",		LUA_STATE_END_FUNC = "BLOOD_LINKER_JUMP_DOWN_STATE_END"		},
	{ STATE_NAME = "BLOOD_LINKER_JUMP_UP_DIR",		},
	{ STATE_NAME = "BLOOD_LINKER_JUMP_DOWN_DIR",	LUA_STATE_END_FUNC = "BLOOD_LINKER_JUMP_DOWN_DIR_STATE_END"	},
	{ STATE_NAME = "BLOOD_LINKER_JUMP_LANDING",		},

	{ STATE_NAME = "BLOOD_LINKER_LINK_ATTACK",		LUA_STATE_START_FUNC = "BLOOD_LINKER_LINK_ATTACK_STATE_START",
													LUA_FRAME_MOVE_FUNC = "BLOOD_LINKER_LINK_ATTACK_FRAME_MOVE",	STATE_COOL_TIME = 8, },
	{ STATE_NAME = "BLOOD_LINKER_ATTACK_A_READY",	},
	{ STATE_NAME = "BLOOD_LINKER_ATTACK_A_READY2",	},
	{ STATE_NAME = "BLOOD_LINKER_ATTACK_A",			},
	{ STATE_NAME = "BLOOD_LINKER_ATTACK_END",		},
	{ STATE_NAME = "BLOOD_LINKER_RUNAWAY_END",		},	

	--리액션 관련
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_FRONT",			LUA_FRAME_MOVE_FUNC = "BLOOD_LINKER_DAMAGE_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_BACK",			LUA_FRAME_MOVE_FUNC = "BLOOD_LINKER_DAMAGE_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_DOWN_FRONT",	LUA_FRAME_MOVE_FUNC = "BLOOD_LINKER_DAMAGE_DOWN_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_DOWN_BACK",		LUA_FRAME_MOVE_FUNC = "BLOOD_LINKER_DAMAGE_DOWN_BACK_FRAME_MOVE"	},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_FLY_FRONT",		},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_FLY_BACK",		},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_AIR",			},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_AIR_DOWN",		},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_AIR_UP",		},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_AIR_FALL",		},
	{ STATE_NAME = "BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	{ STATE_NAME = "BLOOD_LINKER_STAND_UP_FRONT",	},
	{ STATE_NAME = "BLOOD_LINKER_STAND_UP_BACK",	},

	{ STATE_NAME = "BLOOD_LINKER_ESCAPE",			LUA_STATE_START_FUNC = "BLOOD_LINKER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "BLOOD_LINKER_DYING_LAND_FRONT",	LUA_STATE_START_FUNC = "BLOOD_LINKER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "BLOOD_LINKER_DYING_LAND_BACK",	LUA_STATE_START_FUNC = "BLOOD_LINKER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "BLOOD_LINKER_DYING_SKY",		LUA_STATE_START_FUNC = "BLOOD_LINKER_DYING_LAND_STATE_START",},

	START_STATE	= "BLOOD_LINKER_START",
	WAIT_STATE	= "BLOOD_LINKER_WAIT",

	SMALL_DAMAGE_LAND_FRONT	= "BLOOD_LINKER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK	= "BLOOD_LINKER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT	= "BLOOD_LINKER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK	= "BLOOD_LINKER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT	= "BLOOD_LINKER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK	= "BLOOD_LINKER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT		= "BLOOD_LINKER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK			= "BLOOD_LINKER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR		= "BLOOD_LINKER_DAMAGE_AIR",
	BIG_DAMAGE_AIR			= "BLOOD_LINKER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR			= "BLOOD_LINKER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING	= "BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE				= "BLOOD_LINKER_DAMAGE_AIR_UP",
	--DAMAGE_REVENGE			= "BLOOD_LINKER_DAMAGE_REVENGE",

	DAMAGE_EXTRA_STATES         = {"BLOOD_LINKER_DAMAGE_AIR_DOWN","BLOOD_LINKER_DAMAGE_AIR_FALL","BLOOD_LINKER_STAND_UP_FRONT","BLOOD_LINKER_STAND_UP_BACK",
	"BLOOD_LINKER_JUMP_DOWN","BLOOD_LINKER_JUMP_LANDING",},
	
	
	DYING_LAND_FRONT	= "BLOOD_LINKER_DYING_LAND_FRONT",
	DYING_LAND_BACK		= "BLOOD_LINKER_DYING_LAND_BACK",
	DYING_SKY			= "BLOOD_LINKER_DYING_SKY",

	REVENGE_ATTACK	= "",

    COMMON_FRAME_FUNC = "BLOOD_LINKER_COMMON_FRAMEMOVE",
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
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
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
BLOOD_LINKER_START =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	RIGHT		= FALSE,

	SPEED_X		= 2000,
	SPEED_Y		= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y	= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BLOOD_LINKER_JUMP_DOWN",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BLOOD_LINKER_ATTACK_A_READY",	"CT_BLOOD_LINKER_ATTACK_A",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BLOOD_LINKER_WAIT_HABIT",		"CT_BLOOD_LINKER_WAIT_HABIT",  },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"BLOOD_LINKER_LINK_ATTACK",	"CT_BLOOD_LINKER_LINK_ATTACK"  },

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"BLOOD_LINKER_WALK",			},
        { STATE_CHANGE_TYPE["SCT_AI_DASH"],     "BLOOD_LINKER_WALK",           },
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"BLOOD_LINKER_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"BLOOD_LINKER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"BLOOD_LINKER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"BLOOD_LINKER_JUMP_DOWN_DIR",	},
	},

	-- 달라붙기
	CT_BLOOD_LINKER_ATTACK_A =
	{
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR	= 300,
		RATE		= 20,
        FLAG_TRUE   = 0,
	},

	-- 대기 상태2
	CT_BLOOD_LINKER_WAIT_HABIT =
	{
		ANIM_PLAY_COUNT	= 1,
		RATE			= 60,
		HAVE_TARGET		= 0,
	},

    -- 링크 기술
	CT_BLOOD_LINKER_LINK_ATTACK =
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
BLOOD_LINKER_WAIT_HABIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BLOOD_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
-- 걷기
BLOOD_LINKER_WALK =
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],

	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_INTERVAL_TIME0	= 2,
	EVENT_INTERVAL_TIME1	= 3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"BLOOD_LINKER_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"BLOOD_LINKER_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"BLOOD_LINKER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"BLOOD_LINKER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"BLOOD_LINKER_JUMP_DOWN_DIR",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_JUMP_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BLOOD_LINKER_JUMP_DOWN",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_JUMP_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_JUMP_LANDING",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_JUMP_UP_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BLOOD_LINKER_JUMP_DOWN_DIR",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_JUMP_DOWN_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_JUMP_LANDING",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_JUMP_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BLOOD_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
-- 특수 공격, 공격 당한 대상을 일정 거리로 가까워질 때까지 추적한다.
BLOOD_LINKER_LINK_ATTACK =
{
	ANIM_NAME	= "SpecialAttack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0	= { 0.35 , "Shadow_Linker_SpecialAttack.ogg" },

	VIEW_TARGET	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE,	0.3,	"Pa_BLOOD_LINKER_Light01",	FALSE,	"Bip01_R_Finger1",	TRUE,	TRUE,	0,	0,	0,	TRUE, },
		{ TRUE,	0.5,	"Pa_BLOOD_LINKER_Light02",	FALSE,	"Bip01_R_Finger1",	TRUE,	TRUE,	0,	0,	0,	TRUE, },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"BLOOD_LINKER_WAIT",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_ATTACK_A_READY =
{
	ANIM_NAME	= "AttackAReady",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    ATTACK_TIME0	= { 0.671, 0.84, },

	VIEW_TARGET	= TRUE,
    COOL_TIME   = 3,
	
	SOUND_PLAY0	= { 0.45 , "Shadow_Linker_AttackA_Ready.ogg" },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_DUMMY_DAMAGE"],

		DAMAGE =
		{
			PHYSIC	= 1.0,
		},

        BACK_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y	= 0.0,

		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,

        NO_DAMAGE	= TRUE,

		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"BLOOD_LINKER_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BLOOD_LINKER_ATTACK_A_READY2", "CT_BLOOD_LINKER_ATTACK_A_READY2", },
	},

	CT_BLOOD_LINKER_ATTACK_A_READY2 =
	{
		ATTACK_SUCCESS = TRUE,
	},

	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1509 },
	--	{ RATE = 10, MESSAGE = STR_ID_1503 },
	},
}
------------------------------------------------------------------------------
-- 링크 기술이 걸린 유닛인지 확인하기 위한 상태
BLOOD_LINKER_ATTACK_A_READY2 =
{
	ANIM_NAME	= "AttackAStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    VIEW_TARGET	= TRUE,
    	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"BLOOD_LINKER_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"BLOOD_LINKER_ATTACK_A",		"CF_BLOOD_LINKER_ATTACK_A",	},
	},
}
-------------------------------------------------------------------------------------------
function CF_BLOOD_LINKER_ATTACK_A( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
	local pNearUserUnit = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 2000 )
	local pTargetUserUnit = pNPCUnit:GetNearestGUUser()
		
	if pNearUserUnit == pTargetUserUnit then	-- 포인터 비교
		return true
	else
		return false
	end
end
-------------------------------------------------------------------------------------------
BLOOD_LINKER_ATTACK_A =
{
	ANIM_NAME	= "AttackAStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,

	FOLLOW_HITTER			= 10,           -- 흔드는 횟수
	ATTACK_FOLLOW_HITTER	= TRUE,
    ATTACK_FOLLOW_HITTER_POS_FRONT  = TRUE,	-- 유저의 앞에 붙이기
	
	INVINCIBLE		= {0.01, 1000,},
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	SHOW_STICK_SHAKE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

    ATTACK_TIME0    = { 0, 100, },

	SOUND_PLAY0	= { 0.20 , "Shadow_Linker_AttackAStart01.ogg" },
	SOUND_PLAY1	= { 0.01 , "Shadow_Linker_Laugh.ogg", 25 },
	SOUND_PLAY2	= { 0.70 , "Shadow_Linker_AttackAStart02.ogg" },
	SOUND_PLAY3	= { 1.00 , "Shadow_Linker_AttackAStart01.ogg" },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_NO_SOUND"],
		REACT_TYPE	= REACT_TYPE["RT_DUMMY_DAMAGE"],

		DAMAGE =
		{
			PHYSIC	= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_CONFUSION"],
			RATE	= 1,
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_REVERSE_LEFT_RIGHT"], },
				
				BBT_REVERSE_LEFT_RIGHT =
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME = 1.5,
				},
			},
		},

        NO_DAMAGE	= TRUE,

		CLEAR_SCREEN_COLOR_R	= 1.0,

		RE_ATTACK	= TRUE,
		HIT_GAP		= 1,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"BLOOD_LINKER_ATTACK_END",	"CF_BLOOD_LINKER_ATTACK_END",	},
	},

	CT_BLOOD_LINKER_ATTACK_END =
	{
		STATE_TIME_OVER	= 999,
	},

	TALK_BOX =
	{
	--	{ RATE = 10, MESSAGE = STR_ID_1510 },
	},
}
-------------------------------------------------------------------------------------------
function CF_BLOOD_LINKER_ATTACK_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetFollowHitter() <= 0 then
        pNPCUnit:SetFlag_LUA( 1, true )
		return true
	else
        pNPCUnit:SetFlag_LUA( 1, false )
		return false
	end
end
-------------------------------------------------------------------------------------------
BLOOD_LINKER_ATTACK_END =
{
	ANIM_NAME	= "AttackAEnd",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	VIEW_TARGET		= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,

	SOUND_PLAY0	= { 0.01 , "Shadow_Linker_AttackAEnd.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BLOOD_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_FRONT =
{
	ANIM_NAME	= "DamageSmallFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"BLOOD_LINKER_WAIT",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_BACK =
{
	ANIM_NAME	= "DamageSmallBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"BLOOD_LINKER_WAIT",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BLOOD_LINKER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BLOOD_LINKER_STAND_UP_FRONT",		},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_DOWN_BACK =
{
	ANIM_NAME	= "DamageDownBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BLOOD_LINKER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BLOOD_LINKER_STAND_UP_BACK",		},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_FLY_FRONT =
{
	ANIM_NAME	= "DamageAirFlyFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_FLY_BACK =
{
	ANIM_NAME	= "DamageAirFlyBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_DAMAGE_DOWN_BACK",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_AIR =
{
	ANIM_NAME	= "DamageAirSmall",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_WAIT",	},
	},

	VIEW_TARGET	= TRUE,
	ALLOW_DIR_CHANGE	= TRUE,
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_AIR_DOWN =
{
	ANIM_NAME	= "DamageAirDown",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_AIR_UP =
{
	ANIM_NAME	= "DamageAirUp",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"BLOOD_LINKER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_AIR_FALL =
{
	ANIM_NAME	= "DamageAirFall",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"BLOOD_LINKER_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME	= "DamageDownLanding",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BLOOD_LINKER_STAND_UP_FRONT",		},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_STAND_UP_FRONT =
{
	ANIM_NAME	= "DamageStandUpFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BLOOD_LINKER_WAIT",		},
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_STAND_UP_BACK =
{
	ANIM_NAME	= "DamageStandUpBack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 40, },

  
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BLOOD_LINKER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BLOOD_LINKER_WAIT", },
	},
}
------------------------------------------------------------------------------
BLOOD_LINKER_ESCAPE =
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	ESCAPE_END	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
------------------------------------------------------------------------------
BLOOD_LINKER_DYING_LAND_FRONT =
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
BLOOD_LINKER_DYING_LAND_BACK =
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
BLOOD_LINKER_DYING_SKY =
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
BLOOD_LINKER_RUNAWAY_END =
{
	ANIM_NAME	= "DamageDownFront",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	ESCAPE_END		= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_Halloween_Poison", 0,
	},
}
------------------------------------------------------------------------------


------------------------------------------------------------------------------
function BLOOD_LINKER_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, 0 )
	pNPCUnit:SetFlag_LUA( 9, false )
	
    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EVENT_HOVALANCHE"], 999999 )
	if pUID == 0 then
		pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EVENT_HALLOWEEN_GIANT_LINKER"], 999999 )	
	end
	
	if pUID ~= 0 then
		nUnitListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nUnitListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil then
				if pUnit:GetUID() == pUID then
					if pUnit:GetInt_LUA( 0 ) >= 1 then
						pNPCUnit:SetFlag_LUA( 9, true )
						pNPCUnit:SetInt_LUA( 9, 10 )
						pNPCUnit:SetNumber_LUA(9, pX2Game:GetGameTime())
					end
					return
				end
			end	            
		end	             
	end		            
end
------------------------------------------------------------------------------
function BLOOD_LINKER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
------------------------------------------------------------------------------
function BLOOD_LINKER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
------------------------------------------------------------------------------
function BLOOD_LINKER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
------------------------------------------------------------------------------
function BLOOD_LINKER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
------------------------------------------------------------------------------
function BLOOD_LINKER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
------------------------------------------------------------------------------
function BLOOD_LINKER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
------------------------------------------------------------------------------
function BLOOD_LINKER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
------------------------------------------------------------------------------
function BLOOD_LINKER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function BLOOD_LINKER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pNPCUnit:SetFlag_LUA( 0, false )
	ClearEffect_Blood( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then

		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )

	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	pMajorParticle = pX2Game:GetMajorParticle()
	pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
	if pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 9 )
	end

end
------------------------------------------------------------------------------
function BLOOD_LINKER_LINK_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetNowHP() <= 0 then
		pNPCUnit:SetFlag_LUA( 2, false )
		ClearEffect_Blood( pKTDXApp, pX2Game, pNPCUnit )
	end
	
	if true == pNPCUnit:GetFlag_LUA( 2 ) then
		local pLinkedUnit = pNPCUnit:GetNearestGUUser()
		
		if nil ~= pLinkedUnit then
			local vTargetPos = pLinkedUnit:GetPos()
			local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
			local fDist = pX2Game:GetDist_LUA( vTargetPos, vPos )
		
			if fDist > 2000 then
				pNPCUnit:SetFlag_LUA( 2, false )
				ClearEffect_Blood( pKTDXApp, pX2Game, pNPCUnit )
			end
		end
	end

	if false == pNPCUnit:GetFlag_LUA( 2 ) then
		local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
		local pUserUnit = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 2000 )
		pNPCUnit:SetNearestGUUser( pUserUnit )
		
		-- 방장의 NPC AI Taget 갱신
		if nil ~= pNPCUnit:GetTargetUser() then
			pNPCUnit:SetTargetUnit( pUserUnit )
		end
		
		pNPCUnit:SetFlag_LUA( 2, true )
	end
end
------------------------------------------------------------------------------
function BLOOD_LINKER_LINK_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.525 ) then
        local pMajorParticle = pX2Game:GetMajorParticle()
        
        local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
        -- NPC에게 걸리는 이펙트(검은 연기)
        if nil ~= pMajorParticle then
            local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_BLOOD_LINKER_Smoke01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
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
				local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_BLOOD_LINKER_Smoke01", vTargetPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:SetMajorParticle_LUA( 1, pParticle:GetHandle() )
			end
			
			local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")
			local rotDegree	= pNPCUnit:GetRotateDegree()
			local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
			local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "Mesh_BLOOD_LINKER_Line", vBonePos, rotDegree, rotDegree, 14 )
					                    
			pNPCUnit:SetTimerRestart( 5 )
			pNPCUnit:SetFlag_LUA( 0, true )

			pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
		end
	end
end
------------------------------------------------------------------------------
function BLOOD_LINKER_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )
    Blood_link_func( pKTDXApp, pX2Game, pNPCUnit )
	
	dying1 = pNPCUnit:GetStateID_LUA( "BLOOD_LINKER_ESCAPE" )
	dying2 = pNPCUnit:GetStateID_LUA( "BLOOD_LINKER_DYING_LAND_FRONT" )
	dying3 = pNPCUnit:GetStateID_LUA( "BLOOD_LINKER_DYING_LAND_BACK" )
	dying4 = pNPCUnit:GetStateID_LUA( "BLOOD_LINKER_DYING_SKY" )
	now = pNPCUnit:GetNowStateID()
	if now == dying1 or now == dying2 or now == dying3 or now == dying4 then
		return
	end

	if pNPCUnit:GetInt_LUA( 0 ) == 2 and pNPCUnit:GetNowStateID() ~= pNPCUnit:GetStateID_LUA( "BLOOD_LINKER_ESCAPE" ) then
		pNPCUnit:StateChange_LUA( "BLOOD_LINKER_ESCAPE", false )
		return
	end

    bBomb = SelfBomb_Ready_Event_BloodLinker(pKTDXApp, pX2Game, pNPCUnit)	
    if bBomb == true then
        SelfBomb_Event_BloodLinker(pX2Game, pNPCUnit)
    end     

end
--------------------------------------------------------------------------
-- 이펙트 갱신 및 데미지에 따른 HP 획득
function Blood_link_func( pKTDXApp, pX2Game, pNPCUnit )
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
			
			-- HP 감소
			local fDecreaseHPTime = 0.2
			if fDecreaseHPTime <= pNPCUnit:GetTimerElapsedTime( 6 ) then
				pLinkedUnit:SetNowHP( pLinkedUnit:GetNowHP() - pLinkedUnit:GetMaxHP() * 0.0015 )
				pNPCUnit:SetTimerRestart( 6 )
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
				ClearEffect_Blood( pKTDXApp, pX2Game, pNPCUnit )
				pNPCUnit:SetFlag_LUA( 0, false )
				pNPCUnit:SetTimerRestart( 5 )
			end
		else
			ClearEffect_Blood( pKTDXApp, pX2Game, pNPCUnit )
			pNPCUnit:SetFlag_LUA( 0, false )
			pNPCUnit:SetTimerRestart( 5 )
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
function ClearEffect_Blood( pKTDXApp, pX2Game, pNPCUnit )
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
end
--------------------------------------------------------------------------

function SelfBomb_Ready_Event_BloodLinker(pKTDXApp, pX2Game, pNPCUnit)

    pMajorParticle = pX2Game:GetMajorParticle()
    pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
    
	if nil ~= pParticle and pMajorParticle ~= nil then 
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			vPos = pNPCUnit:GetPos()
			vPos.y = vPos.y + 300.0
			pParticle:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMajorParticle_LUA( 9 )
		end
	end
	
    IsBomb = pNPCUnit:GetFlag_LUA(9) 
    nCount = pNPCUnit:GetInt_LUA(9)
    nPreTime = pNPCUnit:GetNumber_LUA(9)
    nCurrTime = pX2Game:GetGameTime()
       
	-- 스테이지2 검사
	if IsBomb == false then
		return false
	end
    
    if nCount <= 0 then
        -- 자폭상태
        return true
    end
        
	-- 이미 자폭진행상태
	nStep = math.floor(nCurrTime - nPreTime)
	
	pNPCUnit:SetUseWorldColor( false )
	color = pNPCUnit:GetColor()
	color.g = color.g - (0.3 * pKTDXApp:GetElapsedTime())
	color.b = color.g - (0.3 * pKTDXApp:GetElapsedTime())
	pNPCUnit:SetColor( color )	
	
	if nStep >= 1.0 then
		-- 자폭 카운트 증가
		nNewCount = nCount - nStep
		if nNewCount <= 0 then
			nNewCount = 0
		end
		
		pNPCUnit:SetInt_LUA(9, nNewCount)
		pNPCUnit:SetNumber_LUA(9, nCurrTime)
	else
		-- 현재 상태 유지
		return false            
	end                        

    vPos = pNPCUnit:GetPos()
	vPos.y = vPos.y + 300.0
	       		    
		    		    
    if nNewCount >= 9 then    	
		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Mine_Countdown", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pNPCUnit:SetMajorParticle_LUA( 9, pParticle:GetHandle() ) 
		pParticle:ChangeTexForce_LUA( "PC_9.dds" )

    elseif nNewCount == 8 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_8.dds" )
            end
        end                
		
    elseif nNewCount == 7 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_7.dds" )
            end
        end                
		
    elseif nNewCount == 6 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_6.dds" )
            end
        end                
		
    elseif nNewCount == 5 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_5.dds" )
            end
        end                
		
    elseif nNewCount == 4 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_4.dds" )
            end
        end                
		
    elseif nNewCount == 3 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_3.dds" )
            end
        end                
		
    elseif nNewCount == 2 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_2.dds" )
            end
        end                
        
    elseif nNewCount == 1 then
        pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
        if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
                pParticle:ChangeTexForce_LUA( "PC_1.dds" )
            end
        end     
        
    elseif nNewCount == 0 then
        -- 자폭상태
        pMajorParticle = pX2Game:GetMajorParticle()
	    pParticle = pNPCUnit:GetMajorParticle_LUA( 9 )
	    if pParticle ~= nil then
		    pMajorParticle:DestroyInstance( pParticle )
		    pNPCUnit:ClearMajorParticle_LUA( 9 )
	    end
        return true
    end
    
    return false

end

function SelfBomb_Event_BloodLinker(pX2Game, pNPCUnit)

	pNPCUnit:SetFlag_LUA( 9, false )
	pNPCUnit:StateChange_LUA( "BLOOD_LINKER_RUNAWAY_END", true )

end
