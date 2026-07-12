-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/03/29 / 보보스, 중간 보스/
	 ATTACK_A(2번 내려찍기), CSM_BOBOSSE_ATTACK_B(공중에 띄워서 날리기), CSM_BOBOSSE_MAGIC_ATTACK_A(멀리 점프 어택)
	 JUMP_ATTACK, DASH_ATTACK
--]]

INIT_SYSTEM =
{
	UNIT_WIDTH		= 250.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.5,
}
--------------------------------------------------------------------------
INIT_DEVICE =
{
	READY_TEXTURE =
	{
        "NUI_BOBOSSE_bodyA.tga",
        "NUI_BOBOSSE_bodyB.tga",
        "NUI_BOBOSSE_face.tga",
        "NUI_BOBOSSE_hand.tga",
		"Victor_AttackA_Ground.tga",
		"Bobosse_Magic_wind.tga",
		"GroundShockWave02.dds",
		"Condense_Pulse02.dds",
		"Ice_Particle01.dds",
	},

	READY_SOUND =
	{
		"HitStone.wav",
		"HitStone2.wav",
		"Swing_Big01.ogg",
		"Swing_Big02.ogg",
		"Swing_Big03.ogg",
		"Swing_Big04.ogg",
		"Swing_Big05.ogg",
	},
	
	READY_XMESH = 
	{
		"VANGUARD_MagicAttack_Explosion.Y",
	},

    READY_XSKIN_MESH =
	{
		"Bobosse_AttackA_ShockWave.X",
		"Bobosse_AttackB_Swing.X",
		"Bobosse_MagicAttackA_ShockWave1.X",
		"Bobosse_MagicAttackA_ShockWave2.X",
		"Bobosse_MagicAttackA_ShockWave3.X",
		"Bobosse_MagicAttackA_ShockWave4.X",
		"Drop_Impact_Mesh01.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_BOBOSSE.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,

	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}
--------------------------------------------------------------------------
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

	RAGE_COUNT_MAX	    	= 30,
	RAGE_TIME_MAX		    = 1,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "BOBOSSE_Hammer_Weapon.X",
		WEAPON_BONE_NAME			= "RHand_Dummy02",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
		
		WEAPON_ROTAION_X	= 90.15,
		WEAPON_ROTAION_Y	= 100.0,
		WEAPON_ROTAION_Z	= 270,
	},
	
	SUMMON_TIME			= 180,
}
--------------------------------------------------------------------------
INIT_STATE =
{
	{ STATE_NAME = "CSM_BOBOSSE_START",	},
    { STATE_NAME = "CSM_BOBOSSE_WIN",	},
	{ STATE_NAME = "CSM_BOBOSSE_WAIT",	},

	{ STATE_NAME = "CSM_BOBOSSE_WALK",		},
    { STATE_NAME = "CSM_BOBOSSE_DASH",		},
    { STATE_NAME = "CSM_BOBOSSE_DASH_END",	},

	{ STATE_NAME = "CSM_BOBOSSE_JUMP_UP",		},
	{ STATE_NAME = "CSM_BOBOSSE_JUMP_DOWN",		LUA_STATE_END_FUNC = "CSM_BOBOSSE_JUMP_DOWN_STATE_END"		},
	{ STATE_NAME = "CSM_BOBOSSE_JUMP_UP_DIR",	},
	{ STATE_NAME = "CSM_BOBOSSE_JUMP_DOWN_DIR",	LUA_STATE_END_FUNC = "CSM_BOBOSSE_JUMP_DOWN_DIR_STATE_END"	},
	{ STATE_NAME = "CSM_BOBOSSE_JUMP_LANDING",	},

	{ STATE_NAME = "CSM_BOBOSSE_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_ATTACK_A_FRAME_MOVE",	STATE_COOL_TIME = 3, },
    { STATE_NAME = "CSM_BOBOSSE_ATTACK_B",			LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME = 5, },
	
	{ STATE_NAME = "CSM_BOBOSSE_DASH_ATTACK",		STATE_COOL_TIME = 8,	},
	
	{ STATE_NAME = "CSM_BOBOSSE_END",						},

	--리액션 관련
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_FRONT",		LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_DAMAGE_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_BACK",		LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_DAMAGE_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_DOWN_FRONT",	LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_DAMAGE_DOWN_FRONT_FRAME_MOVE"	},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_DOWN_BACK",	LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_FLY_FRONT",	},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_FLY_BACK",	},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_AIR",		},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_AIR_DOWN",	},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_AIR_UP",		},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_AIR_FALL",	},
	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	{ STATE_NAME = "CSM_BOBOSSE_STAND_UP_FRONT",		},
	{ STATE_NAME = "CSM_BOBOSSE_STAND_UP_BACK",			},
	{ STATE_NAME = "CSM_BOBOSSE_STAND_UP_ATTACK_FRONT",	LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_STAND_UP_ATTACK_FRONT_FRAME_MOVE"   },
    { STATE_NAME = "CSM_BOBOSSE_STAND_UP_ATTACK_BACK",	LUA_FRAME_MOVE_FUNC = "CSM_BOBOSSE_STAND_UP_ATTACK_BACK_FRAME_MOVE"   },

	{ STATE_NAME = "CSM_BOBOSSE_DAMAGE_REVENGE",		},

	{ STATE_NAME = "CSM_BOBOSSE_DYING_LAND_FRONT",		LUA_STATE_START_FUNC = "CSM_BOBOSSE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "CSM_BOBOSSE_DYING_LAND_BACK",		LUA_STATE_START_FUNC = "CSM_BOBOSSE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "CSM_BOBOSSE_DYING_SKY",				LUA_STATE_START_FUNC = "CSM_BOBOSSE_DYING_LAND_STATE_START",},

	START_STATE					= "CSM_BOBOSSE_START",
	WAIT_STATE					= "CSM_BOBOSSE_WAIT",
	SUMMON_END_STATE			= "CSM_BOBOSSE_END",

	SMALL_DAMAGE_LAND_FRONT		= "CSM_BOBOSSE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CSM_BOBOSSE_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CSM_BOBOSSE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CSM_BOBOSSE_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_BOBOSSE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_BOBOSSE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CSM_BOBOSSE_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CSM_BOBOSSE_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CSM_BOBOSSE_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "CSM_BOBOSSE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CSM_BOBOSSE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CSM_BOBOSSE_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "CSM_BOBOSSE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"CSM_BOBOSSE_DAMAGE_AIR_DOWN","CSM_BOBOSSE_DAMAGE_AIR_FALL","CSM_BOBOSSE_STAND_UP_FRONT","CSM_BOBOSSE_STAND_UP_BACK",
	"CSM_BOBOSSE_STAND_UP_ATTACK_FRONT","CSM_BOBOSSE_STAND_UP_ATTACK_BACK","CSM_BOBOSSE_JUMP_DOWN","CSM_BOBOSSE_JUMP_LANDING",},	

	DYING_LAND_FRONT			= "CSM_BOBOSSE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CSM_BOBOSSE_DYING_LAND_BACK",
	DYING_SKY					= "CSM_BOBOSSE_DYING_SKY",

	REVENGE_ATTACK				= "",
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
		DEST_GAP			= 500,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 600,

		DIR_CHANGE_INTERVAL = 0.7,

		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 1,	-- 70, 많이 뛰게할 수 있음
		FAR_WALK_RATE		= 1,	-- 30,

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100,	-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,	--  20,
		DOWN_DOWN_RATE		= 40,

		--LINE_END_RANGE		= 100,	-- cm
	},

	PATROL_MOVE =
	{
		PATROL_BEGIN_RATE		= 1, --50,
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
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	--  30,
		DOWN_DOWN_RATE		= 30,
		--LINE_END_RANGE		= 80,	-- cm
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_WIN =
{
	ANIM_NAME	= "Win",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	INVINCIBLE	= { 0, 100, },

    SOUND_PLAY0	= { 0.40, "CSM_BOBOSSE_Win_Sting.ogg" },
	SOUND_PLAY1	= { 0.01, "CSM_BOBOSSE_Win.ogg" },


	SPEED_X	= 0,
	SPEED_Y	= 0,

	RIGHT	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
function CF_CSM_BOBOSSE_WIN( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
CSM_BOBOSSE_START =
{
	ANIM_NAME	= "WaitStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CSM_BOBOSSE_WAIT",		"CT_CSM_BOBOSSE_WAIT"	},
	},

	CT_CSM_BOBOSSE_WAIT =
	{
		STATE_TIME_OVER	= 2.560,
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"CSM_BOBOSSE_WIN",	"CF_CSM_BOBOSSE_WIN",	},

        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CSM_BOBOSSE_ATTACK_B",			"CT_CSM_BOBOSSE_ATTACK_B",			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CSM_BOBOSSE_ATTACK_A",			"CT_CSM_BOBOSSE_ATTACK_A",			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CSM_BOBOSSE_DASH_ATTACK",	"CT_CSM_BOBOSSE_MAGIC_ATTACK_A",	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_BOBOSSE_JUMP_FOR_ATTACK",	"CT_CSM_BOBOSSE_JUMP_FOR_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"CSM_BOBOSSE_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"CSM_BOBOSSE_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"CSM_BOBOSSE_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"CSM_BOBOSSE_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"CSM_BOBOSSE_JUMP_DOWN_DIR",},
	},

	
	CT_CSM_BOBOSSE_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 75,
	},

	CT_CSM_BOBOSSE_ATTACK_B =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 75,
	},

	
	CT_CSM_BOBOSSE_MAGIC_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 75,
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_END = 
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
CSM_BOBOSSE_WALK =
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1.3,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_INTERVAL_TIME0		= 1,

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"CSM_BOBOSSE_WIN",	"CF_CSM_BOBOSSE_WIN",	},

        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_BOBOSSE_DASH_ATTACK",	"CT_CSM_BOBOSSE_MAGIC_ATTACK_A",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_BOBOSSE_ATTACK_A",			"CT_CSM_BOBOSSE_ATTACK_A",			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_BOBOSSE_ATTACK_B",			"CT_CSM_BOBOSSE_ATTACK_B",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"CSM_BOBOSSE_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"CSM_BOBOSSE_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"CSM_BOBOSSE_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"CSM_BOBOSSE_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"CSM_BOBOSSE_JUMP_DOWN_DIR",},
	},

	CT_CSM_BOBOSSE_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 75,
	},

	CT_CSM_BOBOSSE_ATTACK_B =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 75,
	},

	
	CT_CSM_BOBOSSE_MAGIC_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 75,
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DASH =
{
	ANIM_NAME				= "Dash",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= TRUE,

	CAN_PUSH_UNIT			= TRUE,
	CAN_PASS_UNIT			= FALSE,

	PASSIVE_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_INTERVAL_TIME0	= 1,

	--SOUND_PLAY0 			= { 0.10, "Landing_Big_Metal01.ogg" },
	--SOUND_PLAY0 			= { 0.50, "Landing_Big_Metal02.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN_DIR",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],		"CSM_BOBOSSE_DASH_END",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"CSM_BOBOSSE_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"CSM_BOBOSSE_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_BOBOSSE_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"CSM_BOBOSSE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_BOBOSSE_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_BOBOSSE_DASH_ATTACK",	"CT_CSM_BOBOSSE_DASH_ATTACK",	},
	},
	
	CT_CSM_BOBOSSE_DASH_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERBAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR 	= 800,
		RATE 						= 100,
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DASH_ATTACK =
{
	ANIM_NAME		= "DashAttack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= 300,
	
	SLASH_TRACE		= { 0, 100, 1 },

 	SOUND_PLAY0					= { 0.50, "Swing_Big05.ogg" },
	SOUND_PLAY1					= { 0.80, "Swing_Big01.ogg" },	
	
	ALLOW_DIR_CHANGE		= FALSE,
	IMMADIATE_PACKET_SEND	= TRUE,
				
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_BOBOSSE_WAIT",	},
	},
				
	ATTACK_TIME0				= { 0.01, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		BACK_SPEED_X		= 1200,
		BACK_SPEED_Y		= 1500,
		
		ARRANGED_FLY			= TRUE,
		
        CAN_REVENGE				= TRUE,
		STOP_TIME_DEF			= 0.1,
		--STOP_TIME_ATT			= 0.1,
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DASH_END =
{
	ANIM_NAME	= "DashEnd",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X		= INIT_PHYSIC["RUN_SPEED"],

	ALLOW_DIR_CHANGE		= FALSE,
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",			},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_JUMP_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_BOBOSSE_JUMP_DOWN",		},
	},

}
--------------------------------------------------------------------------
CSM_BOBOSSE_JUMP_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_JUMP_UP_DIR =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y	= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_BOBOSSE_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_JUMP_DOWN_DIR =
{
	ANIM_NAME		= "JumpDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_JUMP_LANDING =
{
	ANIM_NAME		= "JumpLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	ANIM_SPEED		= 1.5,	

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0		= { 0.001, "Landing_Big_Metal01.ogg" },

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_ATTACK_A =
{
	ANIM_NAME		= "AttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	SUPER_ARMOR		= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	SLASH_TRACE		= { 0, 100, 3 },

	SPEED_X	= 0,
	SPEED_Y	= 0,

	SOUND_PLAY0					= { 2.00, "Swing_Big01.ogg" },
	SOUND_PLAY1					= { 2.20, "HitStone.wav" },
	SOUND_PLAY2					= { 3.30, "Swing_Big02.ogg" },	
	SOUND_PLAY3					= { 3.50, "HitStone2.wav" },	
	
				
		
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EFFECT_SET_LIST =
	{
		"Effect_Bobosse_Attack_A", 0,
	},
	
	ATTACK_TIME0				= { 2.2, 2.5, },
	ATTACK_TIME1				= { 3.39, 3.69, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_BOMB"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		
		BACK_SPEED_X			= 800.0,
		--BACK_SPEED_Y			= 1000.0,
		
		ARRANGED_FLY			= TRUE,

		CAN_REVENGE				= TRUE,
		CAN_REFLEX              = FALSE,
		
		STOP_TIME_DEF			= 0.23,
		STOP_TIME_ATT			= 0.03,
				
		RE_ATTACK				= FALSE,		
		FORCE_FLY				= TRUE,

		CAMERA_CRASH_GAP		= 8.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_BOMB"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_STUN"], },
				
				BBT_STUN =
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], BUFF_FINALIZER_TYPE["BFT_HITTED_COUNT"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						1.5,
					},
				},

				BFT_HITTED_COUNT =
				{
					BUFF_USE_COUNT_TYPE = BUFF_USE_COUNT_TYPE["BUCT_NOT_USE"],
					COUNT =
					{
						2,
					},
				},
			},
		},

		BACK_SPEED_X			= 700.0,
		--BACK_SPEED_Y			= 1000.0,
		
		ARRANGED_FLY			= TRUE,

		CAN_REVENGE				= TRUE,
		CAN_REFLEX              = FALSE,
		
		STOP_TIME_DEF			= 0.2,
		STOP_TIME_ATT			= 0.15,
				
		RE_ATTACK				= FALSE,		
		FORCE_FLY				= TRUE,	
		
		CAMERA_CRASH_GAP		= 6.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},
		
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",		},
	},	
	
}
--------------------------------------------------------------------------
CSM_BOBOSSE_ATTACK_B =
{
	ANIM_NAME	= "AttackB",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	--ANIM_SPEED					= 1.3,
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0					= { 1.00, "Swing_Big03.ogg" },
	SOUND_PLAY1					= { 1.65, "Swing_Big04.ogg" },
	
	SPEED_X				= 800,

	SLASH_TRACE		= { 0, 100, 3 },
	VIEW_TARGET		= TRUE,
	--SUPER_ARMOR		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Bobosse_Attack_B", 0,
	},
	
	ATTACK_TIME0	= { 0.966, 1.4, },
	ATTACK_TIME1	= { 1.666, 1.933, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_ROD_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC	= 1,
		},
		
		BACK_SPEED_X			= 300.0,
		BACK_SPEED_Y			= 1800.0,
		
		ARRANGED_FLY			= TRUE,

		CAN_REVENGE				= TRUE,
		CAN_REFLEX              = FALSE,
		
		STOP_TIME_DEF			= 0.08,
		STOP_TIME_ATT			= 0.03,
				
		RE_ATTACK				= FALSE,		
		FORCE_FLY				= TRUE,	
		
		CAMERA_CRASH_GAP		= 6.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_ROD_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 2,
		},
		
		BACK_SPEED_X			= 1200.0,
		BACK_SPEED_Y			= 2500.0,
		
		ARRANGED_FLY			= TRUE,
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CLEAR_SCREEN			= 0.0,

		CAN_REVENGE				= TRUE,
		CAN_REFLEX              = FALSE,
		
		STOP_TIME_DEF			= 0.2,
		STOP_TIME_ATT			= 0.15,
				
		RE_ATTACK				= FALSE,		
		FORCE_FLY				= TRUE,	
		
		CAMERA_CRASH_GAP		= 6.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",		},
	},
	
}
--------------------------------------------------------------------------
CSM_BOBOSSE_MAGIC_ATTACK_A =
{
	ANIM_NAME		= "MacigAttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	SLASH_TRACE		= { 0, 100, 3 },
    
	SUPER_ARMOR		= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

 	SOUND_PLAY0					= { 1.70, "Swing_Big03.ogg" },
	SOUND_PLAY1					= { 0.80, "Swing_Big04.ogg" },	

	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	ATTACK_TIME0	= { 1.733, 1.833, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_ROD_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 3.5,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_STUN"], },
				
				BBT_STUN =
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], BUFF_FINALIZER_TYPE["BFT_HITTED_COUNT"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						1.5,
					},
				},

				BFT_HITTED_COUNT =
				{
					BUFF_USE_COUNT_TYPE = BUFF_USE_COUNT_TYPE["BUCT_NOT_USE"],
					COUNT =
					{
						2,
					},
				},
			},
		},

		BACK_SPEED_X			= 300.0,
		BACK_SPEED_Y			= 1000.0,
		
		ARRANGED_FLY			= TRUE,

		CAN_REVENGE				= FALSE,
		CAN_REFLEX              = FALSE,
		
		STOP_TIME_DEF			= 0.2,
		STOP_TIME_ATT			= 0.1,
				
		RE_ATTACK				= FALSE,		
		FORCE_FLY				= TRUE,	
		
		CAMERA_CRASH_GAP		= 6.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},
	
	EFFECT_SET_LIST =
	{
		"Effect_Bobosse_Magic_Attack_A", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END 	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",		},
	},
	
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_REVENGE =
{
	ANIM_NAME		= "DamageRevenge",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	--SOUND_PLAY0		= { 0.154, "CSM_BOBOSSE_AttackEnd.ogg" },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_BOBOSSE_WAIT",												},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_FRONT =
{
	ANIM_NAME		= "DamageFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	--SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl01.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_BOBOSSE_WAIT",												},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_BACK =
{
	ANIM_NAME		= "DamageBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	--SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl02.ogg", 24 },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_BOBOSSE_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME		= "DamageDownFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },

	--SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl03.ogg", 24 },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_BOBOSSE_DAMAGE_AIR_FALL",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],             "CSM_BOBOSSE_STAND_UP_ATTACK_FRONT",  "CT_CSM_BOBOSSE_STAND_UP_ATTACK_FRONT" },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_BOBOSSE_STAND_UP_FRONT",	},
	},

    CT_CSM_BOBOSSE_STAND_UP_ATTACK_FRONT =
    {
		IS_ANOTHER_TEAM				= TRUE,
        ANIM_PLAY_COUNT     = 1,
        RATE                = 70,
    }
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_DOWN_BACK =
{
	ANIM_NAME		= "DamageDownBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 40, },

	--SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl04.ogg", 24 },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CSM_BOBOSSE_DAMAGE_AIR_FALL",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],             "CSM_BOBOSSE_STAND_UP_ATTACK_BACK",  "CT_CSM_BOBOSSE_STAND_UP_ATTACK_BACK" },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_BOBOSSE_STAND_UP_BACK",		},
	},

    CT_CSM_BOBOSSE_STAND_UP_ATTACK_BACK =
    {
		IS_ANOTHER_TEAM				= TRUE,
        ANIM_PLAY_COUNT     = 1,
        RATE                = 70,
    }
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_FLY_FRONT =
{
	ANIM_NAME		= "DamageAirFlyFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl01.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_FLY_BACK =
{
	ANIM_NAME		= "DamageAirFlyBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	--SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl02.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_AIR =
{
	ANIM_NAME		= "DamageAirSmall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	--SOUND_PLAY0		= { 0.01, "CSM_BOBOSSE_Growl03.ogg", 24 },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_AIR_DOWN =
{
	ANIM_NAME		= "DamageAirDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_AIR_UP =
{
	ANIM_NAME		= "DamageAirUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_BOBOSSE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_AIR_FALL =
{
	ANIM_NAME		= "DamageAirFall",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"CSM_BOBOSSE_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_DAMAGE_AIR_FALL",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],         "CSM_BOBOSSE_STAND_UP_ATTACK_FRONT", "CT_CSM_BOBOSSE_STAND_UP_ATTACK_FRONT" },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_STAND_UP_FRONT",		},
	},

    CT_CSM_BOBOSSE_STAND_UP_ATTACK_FRONT =
    {
		IS_ANOTHER_TEAM				= TRUE,
        ANIM_PLAY_COUNT     = 1,
        RATE                = 50,
    }
}
--------------------------------------------------------------------------
CSM_BOBOSSE_STAND_UP_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_STAND_UP_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",      },
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_STAND_UP_ATTACK_FRONT =
{
	ANIM_NAME		= "StandUpAttackFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	ANIM_WAIT_TIME	= 1,

	MIND_FLAG		= MIND_FLAG["MF_STAND_UP_ATTACK"],

	SUPER_ARMOR		= TRUE,
	DEFENCE			= { 0, 100, 50, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

 	SOUND_PLAY0					= { 0.75, "Swing_Big05.ogg" },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",			},
	},

	ATTACK_TIME0				= { 0.3, 1.000, },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

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
        CAN_REVENGE				= TRUE,
	},

	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_2568 },
	},

}
--------------------------------------------------------------------------
CSM_BOBOSSE_STAND_UP_ATTACK_BACK =
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

 	SOUND_PLAY0					= { 1.00, "Swing_Big04.ogg" },
   		
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_BOBOSSE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_BOBOSSE_WAIT",		},
	},

	ATTACK_TIME0				= { 1.24, 1.57, },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

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

        CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,
	},
}
--------------------------------------------------------------------------
CSM_BOBOSSE_DYING_LAND_FRONT =
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
CSM_BOBOSSE_DYING_LAND_BACK =
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
CSM_BOBOSSE_DYING_SKY =
{
	ANIM_NAME					= "DamageAirDownLanding",
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
function CSM_BOBOSSE_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 2.5 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.3 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Landing_Big_Metal01.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Landing_Big_Metal02.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		pNPCUnit:PlaySound_LUA( "Landing_Big_Metal01.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, PX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = PX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, PX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = PX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function CSM_BOBOSSE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
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