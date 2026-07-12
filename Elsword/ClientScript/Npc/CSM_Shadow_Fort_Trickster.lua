-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/3/18 / 쉐도우 트릭스터, 하멜 던전_5 일반 몬스터/
	 AttackA(다운시키는 사거리가 짧은 마법공격),
	 SpecialAttackB(TotemB 소환, 아군 애니메이션 속도 증가 30%)
	 SpecialAttackC(TotemC 소환, 다크 파이어볼 공격)
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 130.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

	UNIT_SCALE      = 1.25,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"NUI_SHADOW_TRICKSTER_BODY.tga",
		"NUI_SHADOW_TRICKSTER_HEAD.tga",
		"ST_AttackA.tga",
		"ST_ThunderBall.tga",
		"ST_SPA_DarkHole.tga",
		"ST_SPAB_WIND.tga",
	},
	
	READY_SOUND = 
	{
		"Shadow_Trickster_AttackA01.ogg",
		"Shadow_Trickster_AttackA02.ogg",
		"Shadow_Trickster_SpecialAttackA01.ogg",
		"Shadow_Trickster_SpecialAttackB01.ogg",
		"Shadow_Trickster_SpecialAttackC01.ogg",
		"Swing_Medium01.ogg",
		"Swing_Medium02.ogg",
	},
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
		"ST_AttackA_Lightning.X",
		"ST_SPAB_WIND.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_SHADOW_TRICKSTER.x",	
	MOTION_CHANGE_TEX_XET	= "NUI_SHADOW_FROT_TRICKSTER.xet",
	MOTION_ANI_TEX_XET		= "NUI_SHADOW_FROT_TRICKSTER.xet",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 350,
	RUN_SPEED			= 450,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MAX_HP              = 30000,
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
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	SUMMON_TIME			= 180,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	-- 기본
	--{ STATE_NAME = "CSM_SHADOW_TRICKSTER_START",		},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_WAIT",			},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_WAITHABIT",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_END",			},
	-- 이동
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_WALK",			},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_JUMP_UP",		},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_JUMP_UP_DIR",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_JUMP_DOWN_DIR",},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_JUMP_LANDING",	LUA_STATE_START_FUNC = "CSM_SHADOW_TRICKSTER_JUMP_LANDING_STATE_START",	},
	-- 공격
 	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_ATTACK_A",			STATE_COOL_TIME = 3, },
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B",	LUA_FRAME_MOVE_FUNC = "CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME = 15, },
	-- 리액션 관련
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_BACK",			LUA_FRAME_MOVE_FUNC = "CSM_SHADOW_TRICKSTER_DAMAGE_BACK_FRAME_MOVE",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_FRONT",			LUA_FRAME_MOVE_FUNC = "CSM_SHADOW_TRICKSTER_DAMAGE_FRONT_FRAME_MOVE",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_FRONT",	LUA_STATE_START_FUNC = "CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_FRONT_STATE_START",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_BACK",		LUA_STATE_START_FUNC = "CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_BACK_STATE_START",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_FLY_FRONT",		},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_FLY_BACK",		},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_STAND_UP_FRONT",		LUA_FRAME_MOVE_FUNC = "CSM_SHADOW_TRICKSTER_STAND_UP_FRONT_FRAME_MOVE", },
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_STAND_UP_BACK",		LUA_FRAME_MOVE_FUNC = "CSM_SHADOW_TRICKSTER_STAND_UP_BACK_FRAME_MOVE"},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_AIR",			},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN",		},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_UP",		},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL",		},	
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING",	LUA_STATE_START_FUNC = "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING_STATE_START",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_FRONT",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_BACK",		},
		
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DYING_LAND_FRONT",	LUA_STATE_END_FUNC = "CSM_SHADOW_TRICKSTER_DYING_LAND_STATE_END",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DYING_LAND_BACK",	LUA_STATE_END_FUNC = "CSM_SHADOW_TRICKSTER_DYING_LAND_STATE_END",	},
	{ STATE_NAME = "CSM_SHADOW_TRICKSTER_DYING_SKY",		LUA_STATE_END_FUNC = "CSM_SHADOW_TRICKSTER_DYING_LAND_STATE_END",	},
	
	START_STATE					= "CSM_SHADOW_TRICKSTER_WAIT",
	WAIT_STATE					= "CSM_SHADOW_TRICKSTER_WAIT",
	SUMMON_END_STATE			= "CSM_SHADOW_TRICKSTER_END",
		
	SMALL_DAMAGE_LAND_FRONT		= "CSM_SHADOW_TRICKSTER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CSM_SHADOW_TRICKSTER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CSM_SHADOW_TRICKSTER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CSM_SHADOW_TRICKSTER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CSM_SHADOW_TRICKSTER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CSM_SHADOW_TRICKSTER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CSM_SHADOW_TRICKSTER_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "CSM_SHADOW_TRICKSTER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN",
	DOWN_DAMAGE_AIR_LANDING		= "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CSM_SHADOW_TRICKSTER_DAMAGE_AIR_UP",
	--DAMAGE_REVENGE				= "CSM_SHADOW_TRICKSTER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL","CSM_SHADOW_TRICKSTER_STAND_UP_FRONT","CSM_SHADOW_TRICKSTER_STAND_UP_BACK",
	"CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_FRONT","CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_BACK","CSM_SHADOW_TRICKSTER_JUMP_DOWN","CSM_SHADOW_TRICKSTER_JUMP_LANDING",	},	

	DYING_LAND_FRONT			= "CSM_SHADOW_TRICKSTER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CSM_SHADOW_TRICKSTER_DYING_LAND_BACK",
	DYING_SKY					= "CSM_SHADOW_TRICKSTER_DYING_SKY",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1400,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1400,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},

	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 200,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 150,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   -- 70,
		FAR_WALK_RATE		= 0,   -- 30,
		
		JUMP_INTERVAL		= 8,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 10,
		DOWN_JUMP_RATE		= 100,	--  10,
		DOWN_DOWN_RATE		= 40,
		
		--LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL	= 3,	-- 초
		NEAR_WALK_RATE	= 100,	--  10,
		FAR_WALK_RATE	= 100,	-- 10,
		
		JUMP_INTERVAL	= 10,
		UP_JUMP_RATE	= 100,	-- 30,
		UP_DOWN_RATE	= 30,
		DOWN_JUMP_RATE	= 100,	--  30,
		DOWN_DOWN_RATE	= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		RATE			= 50,
		ESCAPE_RANGE	= 400,	-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_WAIT = 
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
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_SHADOW_TRICKSTER_WAITHABIT",	"CT_CSM_SHADOW_TRICKSTER_WAITHABIT",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_SHADOW_TRICKSTER_ATTACK_A",			"CT_CSM_SHADOW_TRICKSTER_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B",	"CT_CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B",	},
						
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],	"CSM_SHADOW_TRICKSTER_WALK",		},
		--{ STATE_CHANGE_TYPE["SCT_AI_DASH"],	"CSM_SHADOW_TRICKSTER_DASH",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],	"CSM_SHADOW_TRICKSTER_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_SHADOW_TRICKSTER_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN_DIR",	},
		
	},
	
	
	CT_CSM_SHADOW_TRICKSTER_WAITHABIT = 
	{
		ANIM_PLAY_COUNT	= 2,
		RATE			= 50,
		HAVE_TARGET		= 0,	-- false
	},
    
	CT_CSM_SHADOW_TRICKSTER_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		--SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 100,
	},
	
	CT_CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		--SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 100,
	},
	
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_WAITHABIT =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}	
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_WALK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN_DIR",	},
				
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_SHADOW_TRICKSTER_ATTACK",				"CT_CSM_SHADOW_TRICKSTER_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B",	"CT_CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"CSM_SHADOW_TRICKSTER_WAIT",			},
		--{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"CSM_SHADOW_TRICKSTER_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"CSM_SHADOW_TRICKSTER_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_SHADOW_TRICKSTER_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"CSM_SHADOW_TRICKSTER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN_DIR",	},
	},

	CT_CSM_SHADOW_TRICKSTER_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		--SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	
	CT_CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		--SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_JUMP_UP = 
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y	= 45, 
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_JUMP_DOWN = 
{
	ANIM_NAME		= "JumpDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_SHADOW_TRICKSTER_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_JUMP_UP_DIR = 
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y		= 45, 
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_JUMP_DOWN_DIR = 
{
	ANIM_NAME		= "JumpDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
 	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_SHADOW_TRICKSTER_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_JUMP_LANDING = 
{
	ANIM_NAME		= "JumpLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X		= 0,
	SPEED_Y		= 0,

    SOUND_PLAY0	= { 0.118, "Glitter_Landing.ogg" },
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT",						},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_ATTACK_A = 
{
	ANIM_NAME	= "AttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
		
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
	
	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0		= { 0.1, "Shadow_Trickster_AttackA01.ogg"},
	SOUND_PLAY1		= { 1.4, "Shadow_Trickster_AttackA02.ogg"},
	
	EFFECT_SET_LIST =
	{
		"Effect_CSM_Shadow_Trickster_AttackA", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B = 
{
	ANIM_NAME	= "SpecialAttack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
		
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
	
	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SUPER_ARMOR		= TRUE,
	
	SOUND_PLAY0		= { 0.1, "Shadow_Trickster_SpecialAttackA01.ogg"},
	SOUND_PLAY1		= { 1.14, "Shadow_Trickster_SpecialAttackB01.ogg"},
	
	EFFECT_SET_LIST =
	{
		"Effect_Shadow_Trickster_Summon_Totem_B", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_FRONT =
{
	ANIM_NAME		= "DamageFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_SHADOW_TRICKSTER_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_BACK =
{
	ANIM_NAME		= "DamageBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0		= { 0.164, "GlitterNecroVoice_HurtRoar1.ogg" , 24 },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_SHADOW_TRICKSTER_WAIT",												},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME		= "DamageDownFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_FRONT",	"CT_CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_FRONT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_SHADOW_TRICKSTER_STAND_UP_FRONT",			},
	},
	
	CT_CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_FRONT =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_PLAY_COUNT	= 1,
		RATE			= 50,
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME		= "DamageDownBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_BACK",	"CT_CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_BACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_SHADOW_TRICKSTER_STAND_UP_BACK",			},
	},
	
	CT_CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_BACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_PLAY_COUNT	= 1,
		RATE			= 50,
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME		= "DamageAirFlyFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,	
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_FRONT",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME		= "DamageAirFlyBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,	
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_BACK",		},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_AIR = 
{
	ANIM_NAME		= "DamageAirSmall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CSM_SHADOW_TRICKSTER_WAIT",					},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME		= "DamageAirDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_AIR_UP = 
{
	ANIM_NAME		= "DamageAirUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME		= "DamageAirFall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],		"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME		= "DamageAirDownLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_STAND_UP_FRONT",			},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_STAND_UP_FRONT = 
{
	ANIM_NAME		= "DamageStandUpFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,	
	
	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT",				},
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_STAND_UP_BACK = 
{
	ANIM_NAME		= "DamageStandUpBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },
		
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT", },
	},		
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_FRONT =
{
	ANIM_NAME		= "StandUpAttackFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	ANIM_WAIT_TIME	= 1,

	MIND_FLAG	= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	

	SOUND_PLAY0			= { 0.70, "Swing_Medium01.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT",		},
	},

	ATTACK_TIME0	= { 0.750, 0.937, },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC	= 1.5,
		},

		BACK_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y	= 0.0,

		STOP_TIME_ATT		= 0.0,
		STOP_TIME_DEF		= 0.0,
		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
		CLEAR_SCREEN		= 0.0,
		
		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_STAND_UP_ATTACK_BACK =
{
	ANIM_NAME		= "StandUpAttackBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	ANIM_WAIT_TIME	= 1,

	MIND_FLAG	= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR	= TRUE,
	DEFENCE		= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	FLIP_DIR_END	= TRUE,

		SOUND_PLAY0			= { 0.60, "Swing_Medium02.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_SHADOW_TRICKSTER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_SHADOW_TRICKSTER_WAIT", },
	},

	ATTACK_TIME0	= { 0.626, 0.900, },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC	= 1.5,
		},

		BACK_SPEED_X	= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y	= 0.0,

		STOP_TIME_ATT		= 0.0,
		STOP_TIME_DEF		= 0.0,
		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
		CLEAR_SCREEN		= 0.0,
		
		RE_ATTACK	= FALSE,
		HIT_GAP		= 0.0,
	},
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DYING_LAND_FRONT = 
{
	ANIM_NAME		= "DamageDownFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END		= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------	
CSM_SHADOW_TRICKSTER_DYING_LAND_BACK = 
{
	ANIM_NAME		= "DamageDownBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE		= { 0, 100, }, 		

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------
CSM_SHADOW_TRICKSTER_DYING_SKY = 
{
	ANIM_NAME		= "DamageAirDownLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END		= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------

--{{ 공격
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_SPECIAL_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.320 ) then
		local IsSummoned = pNPCUnit:GetFlag_LUA( 0 )
		if true == IsSummoned then
			pX2Game:KillNPC( NPC_UNIT_ID["NUI_SHADOW_TRICKSTER_HAMEL_CARD_TOTEM_B"], 1 )
			pNPCUnit:SetFlag_LUA( 0, false )
		end
		
		local vPos = pNPCUnit:GetPos()
		local bIsRight = pNPCUnit:GetIsRight()
		local vDirVector = pNPCUnit:GetDirVector()
		
		if bIsRight == false then
			vPos = MovePos( vPos, vDirVector, -100 )
		else
			vPos = MovePos( vPos, vDirVector, 100 )
		end
		
		pX2Game:CreateNPCReqAlly( NPC_UNIT_ID["NUI_SHADOW_TRICKSTER_HAMEL_CARD_TOTEM_B"], pNPCUnit:GetHardLevel(), false, vPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), false, pNPCUnit:GetTeam() )
		-- pX2Game:CreateNPCReqAlly( NPC_UNIT_ID["NUI_SHADOW_TRICKSTER_HAMEL_CARD_TOTEM_B"], pNPCUnit:GetHardLevel(), false, vPos, bIsRight, 0.0, true, 0 )
		pNPCUnit:SetFlag_LUA( 0, true )
	end
end
--------------------------------------------------------------------------
--}}

--{{ 걸어다닐때 연기 
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_JUMP_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.500 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.577 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_FRONT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_DAMAGE_DOWN_BACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
 	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_DAMAGE_AIR_DOWN_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(150,200), D3DXVECTOR2(10,-1) )
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_STAND_UP_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.332 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_STAND_UP_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.400 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
	
end
--------------------------------------------------------------------------
function CSM_SHADOW_TRICKSTER_DYING_LAND_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
    local IsSummoned = pNPCUnit:GetFlag_LUA( 0 )
	if true == IsSummoned then
		pX2Game:KillNPC( NPC_UNIT_ID["NUI_SHADOW_TRICKSTER_HAMEL_CARD_TOTEM_B"], 1 )
		pNPCUnit:SetFlag_LUA( 0, false )
	end
	
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
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- UTIL FUNCTION
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
end