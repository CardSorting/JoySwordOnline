-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2010/12/31 / 섀도우 스팅어, 중간 보스/
	 AttackA, AttackB, SpecialAttack, JumpAttack, StandUp Attack(Front/ Back)
--]]

INIT_SYSTEM =
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.8,
}
--------------------------------------------------------------------------
INIT_DEVICE =
{
	READY_TEXTURE =
	{
        "Nui_Shadow_Stinger_Map01.tga",
        "Nui_Shadow_Stinger_Map02.tga",
        "cristal01.tga",
        "cristal.tga",
	},

	READY_SOUND =
	{
	"Shadow_Stinger_AttackA.ogg",
	"Shadow_Stinger_AttackB.ogg",
	"Shadow_Stinger_AttackEnd.ogg",
	"Shadow_Stinger_Death.ogg",
	"Shadow_Stinger_Growl01.ogg",
	"Shadow_Stinger_Growl02.ogg",
	"Shadow_Stinger_Growl03.ogg",
	"Shadow_Stinger_Growl04.ogg",
	"Shadow_Stinger_JumpAttack_Start.ogg",
	"Shadow_Stinger_SpecialAttackA.ogg",
	"Shadow_Stinger_SpecialAttackA_Growl.ogg",
	"Shadow_Stinger_StandUpAttack01.ogg",
	"Shadow_Stinger_StandUpAttack02.ogg",
	"Shadow_Stinger_StandUpAttack03.ogg",
	"Shadow_Stinger_StandUpAttack04.ogg",
	"Shadow_Stinger_Win.ogg",
	"Shadow_Stinger_Win_Sting.ogg",
	"Landing_Big_Metal01.ogg",
	"Landing_Big_Metal02.ogg",
	"Landing_Big_Meat01.ogg",
	},

    READY_XSKIN_MESH =
	{
        "Shadow_Stinger_AttackB.X",
        "Shadow_Stinger_SpecialAttackA_Shockwave.X",
        "Shadow_Stinger_SpecialAttackA.X",
        "Shadow_Stinger_SpecialAttackA_Back.X",
        "Shadow_Stinger_AttackA_Cone.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_Shadow_Stinger.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,

	WALK_SPEED			= 700,
	RUN_SPEED			= 1000,
	JUMP_SPEED			= 1600,
	DASH_JUMP_SPEED		= 2000,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

    USE_SLASH_TRACE     = FALSE,

	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
    --MIND_FLAG_HEIGHT		= 230,

	-- RAGE_COUNT_MAX	    	= 30,
	-- RAGE_TIME_MAX		    = 3,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE =
{
	{ STATE_NAME = "SHADOW_STINGER_START",						},
    { STATE_NAME = "SHADOW_STINGER_WIN",						},
	{ STATE_NAME = "SHADOW_STINGER_WAIT",						},

	{ STATE_NAME = "SHADOW_STINGER_WALK",						},
    { STATE_NAME = "SHADOW_STINGER_DASH",						},
    { STATE_NAME = "SHADOW_STINGER_DASH_END",						},

	{ STATE_NAME = "SHADOW_STINGER_JUMP_UP",					},
	{ STATE_NAME = "SHADOW_STINGER_JUMP_DOWN",					LUA_STATE_END_FUNC = "SHADOW_STINGER_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "SHADOW_STINGER_JUMP_UP_DIR",				},
	{ STATE_NAME = "SHADOW_STINGER_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "SHADOW_STINGER_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "SHADOW_STINGER_JUMP_LANDING",				},


	{ STATE_NAME = "SHADOW_STINGER_ATTACK_A",					LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME = 3, },
    { STATE_NAME = "SHADOW_STINGER_ATTACK_B",					LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME = 3, },
    { STATE_NAME = "SHADOW_STINGER_SPECIAL_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_SPECIAL_ATTACK_A_FRAME_MOVE",	STATE_COOL_TIME = 30, },

    { STATE_NAME = "SHADOW_STINGER_JUMP_FOR_ATTACK",			},
    { STATE_NAME = "SHADOW_STINGER_JUMP_ATTACK_START",			},
    { STATE_NAME = "SHADOW_STINGER_JUMP_ATTACK",		    	},
    { STATE_NAME = "SHADOW_STINGER_JUMP_ATTACK_END",			},

	--리액션 관련
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_DAMAGE_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_DAMAGE_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_AIR",					},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	{ STATE_NAME = "SHADOW_STINGER_STAND_UP_FRONT",				},
	{ STATE_NAME = "SHADOW_STINGER_STAND_UP_BACK",				},
	{ STATE_NAME = "SHADOW_STINGER_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_STAND_UP_ATTACK_FRONT_FRAME_MOVE"   },
    { STATE_NAME = "SHADOW_STINGER_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "SHADOW_STINGER_STAND_UP_ATTACK_BACK_FRAME_MOVE"   },

	{ STATE_NAME = "SHADOW_STINGER_DAMAGE_REVENGE",				},

	{ STATE_NAME = "SHADOW_STINGER_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "SHADOW_STINGER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SHADOW_STINGER_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "SHADOW_STINGER_DYING_LAND_STATE_START",},
	{ STATE_NAME = "SHADOW_STINGER_DYING_SKY",					LUA_STATE_START_FUNC = "SHADOW_STINGER_DYING_LAND_STATE_START",},

	START_STATE					= "SHADOW_STINGER_START",
	WAIT_STATE					= "SHADOW_STINGER_WAIT",

	SMALL_DAMAGE_LAND_FRONT		= "SHADOW_STINGER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "SHADOW_STINGER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "SHADOW_STINGER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "SHADOW_STINGER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "SHADOW_STINGER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "SHADOW_STINGER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "SHADOW_STINGER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "SHADOW_STINGER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "SHADOW_STINGER_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "SHADOW_STINGER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "SHADOW_STINGER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "SHADOW_STINGER_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "SHADOW_STINGER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"SHADOW_STINGER_DAMAGE_AIR_FALL","SHADOW_STINGER_STAND_UP_FRONT","SHADOW_STINGER_STAND_UP_BACK",
	"SHADOW_STINGER_STAND_UP_ATTACK_FRONT","SHADOW_STINGER_STAND_UP_ATTACK_BACK","SHADOW_STINGER_JUMP_DOWN","SHADOW_STINGER_JUMP_LANDING",	},
	

	DYING_LAND_FRONT			= "SHADOW_STINGER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "SHADOW_STINGER_DYING_LAND_BACK",
	DYING_SKY					= "SHADOW_STINGER_DYING_SKY",

	REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
INIT_AI =
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 600,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 500,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 600,

		DIR_CHANGE_INTERVAL = 0.7,

		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 30,   -- 70, 많이 뛰게할 수 있음
		FAR_WALK_RATE		= 50,   -- 30,

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,

		--LINE_END_RANGE		= 100,	-- cm
	},

	PATROL_MOVE =
	{
		PATROL_BEGIN_RATE		= 100, --50,
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},

	ESCAPE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 10,	-- 이 거리 보다 멀어지면 도망 성공

		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 30,   --  10,
		FAR_WALK_RATE		= 50,   -- 10,

		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,

		--LINE_END_RANGE		= 80,	-- cm
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_WIN =
{
	ANIM_NAME					= "Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, },

    SOUND_PLAY0			= { 0.40, "Shadow_Stinger_Win_Sting.ogg" },
	SOUND_PLAY1			= { 0.01, "Shadow_Stinger_Win.ogg" },


	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
function CF_SHADOW_STINGER_WIN( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
SHADOW_STINGER_START =
{
	ANIM_NAME	= "Start",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"SHADOW_STINGER_WAIT",		"CT_SHADOW_STINGER_WAIT"	},
	},

	CT_SHADOW_STINGER_WAIT =
	{
		STATE_TIME_OVER	= 1.560,
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT			= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"SHADOW_STINGER_WIN",	"CF_SHADOW_STINGER_WIN",	},

        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SHADOW_STINGER_ATTACK_A",          "CT_SHADOW_STINGER_ATTACK_A",            },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SHADOW_STINGER_ATTACK_B",          "CT_SHADOW_STINGER_ATTACK_B",            },
      --  { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SHADOW_STINGER_SPECIAL_ATTACK_A",  "CT_SHADOW_STINGER_SPECIAL_ATTACK_A",    },
     --   { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_STINGER_JUMP_FOR_ATTACK",	"CT_SHADOW_STINGER_JUMP_FOR_ATTACK",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"SHADOW_STINGER_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"SHADOW_STINGER_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"SHADOW_STINGER_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"SHADOW_STINGER_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"SHADOW_STINGER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"SHADOW_STINGER_JUMP_DOWN_DIR",		},
	},

	CT_SHADOW_STINGER_ATTACK_A =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 66,
	},

	CT_SHADOW_STINGER_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 66,
	},

}
--------------------------------------------------------------------------
SHADOW_STINGER_WALK =
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

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"SHADOW_STINGER_WIN",	"CF_SHADOW_STINGER_WIN",	},

        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SHADOW_STINGER_ATTACK_A",          "CT_SHADOW_STINGER_ATTACK_A",            },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SHADOW_STINGER_ATTACK_B",          "CT_SHADOW_STINGER_ATTACK_B",            },

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"SHADOW_STINGER_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"SHADOW_STINGER_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"SHADOW_STINGER_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"SHADOW_STINGER_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"SHADOW_STINGER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"SHADOW_STINGER_JUMP_DOWN_DIR",		},
	},

	CT_SHADOW_STINGER_ATTACK_A =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},

	CT_SHADOW_STINGER_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 70,
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DASH =
{
	ANIM_SPPED				= 0.8,
	ANIM_NAME				= "Dash",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= TRUE,
	LAND_CONNECT			= TRUE,

	CAN_PUSH_UNIT			= TRUE,
	CAN_PASS_UNIT			= FALSE,

	PASSIVE_SPEED_X			= 350,

	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_INTERVAL_TIME0	= 1,

	SOUND_PLAY0 			= { 0.10, "Landing_Big_Metal01.ogg" },
	SOUND_PLAY0 			= { 0.50, "Landing_Big_Metal02.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"SHADOW_STINGER_DASH_END",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"SHADOW_STINGER_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"SHADOW_STINGER_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"SHADOW_STINGER_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_STINGER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"SHADOW_STINGER_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DASH_END =
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",			},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_FOR_ATTACK =
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	
	ANIM_SPEED					= 1.3,
	
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],    "SHADOW_STINGER_JUMP_ATTACK_START",   },
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_ATTACK_START =
{
	ANIM_NAME					= "JumpAttack_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	ANIM_SPEED					= 1.3,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0					= { 0.10, "Shadow_Stinger_JumpAttack_Start.ogg" },
    
    VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SHADOW_STINGER_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_JUMP_ATTACK",	},
	},

    ATTACK_TIME0				= { 0.413, 100, },
    
    SPEED_X						= 0,
	SPEED_Y						= 0,
    
    ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_ATTACK =
{
	ANIM_NAME		= "JumpAttack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	ANIM_SPEED		= 5,
	SUPER_ARMOR		= TRUE,


	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_JUMP_ATTACK_END",	},
	},
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"] * -1,

	ATTACK_TIME0	= { 0.001, 100, },
	
	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_ATTACK_END =
{
	ANIM_NAME		= "JumpAttack_End",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	ANIM_SPEED		= 1.3,
	SUPER_ARMOR		= TRUE,

    SOUND_PLAY0			= { 0.40, "Shadow_Stinger_AttackEnd.ogg" },
	SOUND_PLAY1			= { 0.10, "Landing_Big_Metal02.ogg" },
	SOUND_PLAY2			= { 1.00, "Landing_Big_Meat01.ogg" },

	SPEED_X			= 0,
	SPEED_Y			= 0,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_STINGER_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X			= 0,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"SHADOW_STINGER_JUMP_DOWN",		},
	},

}

SHADOW_STINGER_JUMP_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_UP_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"SHADOW_STINGER_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_DOWN_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_JUMP_LANDING =
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0					= { 0.001, "Landing_Big_Metal01.ogg" },

	SPEED_X						= 400,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",		},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_ATTACK_A =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY2					= { 0.60, "Landing_Big_Metal01.ogg" },
	SOUND_PLAY3					= { 0.80, "Landing_Big_Metal02.ogg" },	
	SOUND_PLAY0					= { 1.00, "Shadow_Stinger_AttackA.ogg" },
	SOUND_PLAY1					= { 1.60, "Shadow_Stinger_AttackEnd.ogg" },	
	
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",		},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_ATTACK_B =
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	ANIM_SPEED					= 1.3,
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


    SOUND_PLAY0					= { 1.60, "Shadow_Stinger_AttackA.ogg" },
	SOUND_PLAY1					= { 2.50, "Shadow_Stinger_AttackEnd.ogg" },	

	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",		},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_SPECIAL_ATTACK_A =
{
	ANIM_NAME		= "SpecialAttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    --INVINCIBLE      = { 0, 2.88, },
	SUPER_ARMOR		= TRUE,
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0					= { 1.20, "Shadow_Stinger_SpecialAttackA_Growl.ogg", 50 },
	SOUND_PLAY1					= { 1.50, "Shadow_Stinger_SpecialAttackA.ogg" },	

	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

    EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Stinger_Special_Attack", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END 	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",		},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.154, "Shadow_Stinger_AttackEnd.ogg" },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_STINGER_WAIT",												},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl01.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_STINGER_WAIT",												},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl02.ogg", 24 },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_STINGER_WAIT",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl03.ogg", 24 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SHADOW_STINGER_DAMAGE_AIR_FALL",	},
       -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],             "SHADOW_STINGER_STAND_UP_ATTACK_FRONT",  "CT_SHADOW_STINGER_STAND_UP_ATTACK_FRONT" },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_STINGER_STAND_UP_FRONT",	},
	},

    -- CT_SHADOW_STINGER_STAND_UP_ATTACK_FRONT =
    -- {
        -- ANIM_PLAY_COUNT     = 1,
        -- RATE                = 50,
    -- }
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl04.ogg", 24 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SHADOW_STINGER_DAMAGE_AIR_FALL",	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],             "SHADOW_STINGER_STAND_UP_ATTACK_BACK",  "CT_SHADOW_STINGER_STAND_UP_ATTACK_BACK" },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_STINGER_STAND_UP_BACK",		},
	},

    -- CT_SHADOW_STINGER_STAND_UP_ATTACK_BACK =
    -- {
        -- ANIM_PLAY_COUNT     = 1,
        -- RATE                = 50,
    -- }
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl01.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl02.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.01, "Shadow_Stinger_Growl03.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"SHADOW_STINGER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"SHADOW_STINGER_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_DAMAGE_AIR_FALL",		},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],         "SHADOW_STINGER_STAND_UP_ATTACK_FRONT", "CT_SHADOW_STINGER_STAND_UP_ATTACK_FRONT" },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_STAND_UP_FRONT",		},
	},

    -- CT_SHADOW_STINGER_STAND_UP_ATTACK_FRONT =
    -- {
        -- ANIM_PLAY_COUNT     = 1,
        -- RATE                = 50,
    -- }
}
--------------------------------------------------------------------------
SHADOW_STINGER_STAND_UP_FRONT =
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",		},
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_STAND_UP_BACK =
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",      },
	},
}
--------------------------------------------------------------------------
SHADOW_STINGER_STAND_UP_ATTACK_FRONT =
{
	ANIM_NAME					= "StandUpAttackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_WAIT_TIME				= 1,

	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0					= { 0.30, "Shadow_Stinger_StandUpAttack01.ogg" },
	SOUND_PLAY1					= { 0.50, "Shadow_Stinger_StandUpAttack02.ogg" },	
    SOUND_PLAY2					= { 0.65, "Shadow_Stinger_StandUpAttack03.ogg" },
	SOUND_PLAY3					= { 0.90, "Shadow_Stinger_StandUpAttack04.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",			},
	},

	ATTACK_TIME0				= { 0.3, 1.000, },
	
	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1.5,
		},

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,

		STOP_TIME_ATT			= 0.0,
		STOP_TIME_DEF			= 0.0,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.0,
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
	},

}
--------------------------------------------------------------------------
SHADOW_STINGER_STAND_UP_ATTACK_BACK =
{
	ANIM_NAME					= "StandUpAttackBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_WAIT_TIME				= 1,

	MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 50, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.10, "Shadow_Stinger_StandUpAttack01.ogg" },
	SOUND_PLAY1					= { 0.30, "Shadow_Stinger_StandUpAttack02.ogg" },	
    SOUND_PLAY2					= { 0.50, "Shadow_Stinger_StandUpAttack03.ogg" },
	SOUND_PLAY3					= { 0.75, "Shadow_Stinger_StandUpAttack04.ogg" },
	SOUND_PLAY4					= { 1.10, "Shadow_Stinger_StandUpAttack02.ogg" },	
	SOUND_PLAY5					= { 1.40, "Shadow_Stinger_AttackEnd.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_STINGER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHADOW_STINGER_WAIT",		},
	},

	ATTACK_TIME0				= { 0.3, 1.000, },
	
	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1",
	},

	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE3_LHand01",
		"ATTACK_SPHERE3_RHand02",
		"ATTACK_SPHERE3_LHand03",
		"ATTACK_SPHERE3_RHand04",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1.5,
		},

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,

		STOP_TIME_ATT			= 0.0,
		STOP_TIME_DEF			= 0.0,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.0,
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
	},

}
--------------------------------------------------------------------------
SHADOW_STINGER_DYING_LAND_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,


	DYING_END					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------
SHADOW_STINGER_DYING_LAND_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------
SHADOW_STINGER_DYING_SKY =
{
	ANIM_NAME					= "DamageDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------
--------------------------------------------------------------------------
function SHADOW_STINGER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function SHADOW_STINGER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function SHADOW_STINGER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function SHADOW_STINGER_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.87 ) then
         local pDamageEffect = pX2Game:GetDamageEffect()
         local vPos = pNPCUnit:GetPos()
         local vLandPos = pNPCUnit:GetLandPosition_LUA()

         if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_STINGER_ATTACK_A", vPos, vLandPos.y )
         end
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.58 ) then
         local pDamageEffect =  pX2Game:GetDamageEffect()
         local vPos = pNPCUnit:GetPos()
         local vLandPos = pNPCUnit:GetLandPosition_LUA()

         if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_STINGER_ATTACK_B", vPos, vLandPos.y )
         end
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
end
--------------------------------------------------------------------------
function SHADOW_STINGER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Landing_Big_Metal01.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Landing_Big_Metal02.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		pNPCUnit:PlaySound_LUA( "Landing_Big_Metal01.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, PX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = PX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, PX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = PX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function SHADOW_STINGER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos
end

















