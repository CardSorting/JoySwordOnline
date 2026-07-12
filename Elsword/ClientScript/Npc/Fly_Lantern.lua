-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
	--ALPHA_BLEND		= TRUE,
	--CULL_MODE		= FALSE,
	--Z_ENABLE		= FALSE,
	--FORCE_BILLBOARD	= TRUE,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "Lantern01.tga",
	    "Particle_Blur.dds",
	},
	
	READY_SOUND = 
	{

    	"Fly_Lantern_Attack1.ogg",
       	"Fly_Lantern_Attack2.ogg",
     
		
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_FLY_LANTERN.x",
}

INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 150,
	RUN_SPEED			= 300,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Circle02",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,	
		
	DIE_FLY             = 0,
	
	
	-- 몬스터가 텍스쳐 한장짜리인가?
	--FLAT_MONSTER		= TRUE,
	--SHOCK_EFFECT_COLOR = 0.1,
	

}




INIT_STATE = 
{
	{ STATE_NAME = "FlyLantern_START",				LUA_STATE_START_FUNC = "FlyLantern_START_STATE_START",},
	{ STATE_NAME = "FlyLantern_FIRST_WAIT",				},	
	{ STATE_NAME = "FlyLantern_WAIT",					},
	
	{ STATE_NAME = "FlyLantern_AttackA_Ready",					},
	{ STATE_NAME = "FlyLantern_AttackA",					},
	{ STATE_NAME = "FlyLantern_AttackA_End",					},
	{ STATE_NAME = "FlyLantern_AttackB_Ready",					},
	{ STATE_NAME = "FlyLantern_AttackB",					},
	{ STATE_NAME = "FlyLantern_AttackB_End",					},
	
	
	--리액션 관련
	{ STATE_NAME = "FlyLantern_DAMAGE",				},	
	{ STATE_NAME = "FlyLantern_DYING",				LUA_STATE_START_FUNC = "FlyLantern_DYING_STATE_START", },
	{ STATE_NAME = "FlyLantern_WALK",					},
	{ STATE_NAME = "FlyLantern_JUMP_UP",				},
	{ STATE_NAME = "FlyLantern_JUMP_DOWN",			},
	{ STATE_NAME = "FlyLantern_JUMP_UP_DIR",			},
	{ STATE_NAME = "FlyLantern_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "FlyLantern_JUMP_LANDING",			},
	
	
	START_STATE					= "FlyLantern_START",
	WAIT_STATE					= "FlyLantern_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "FlyLantern_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "FlyLantern_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "FlyLantern_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "FlyLantern_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "FlyLantern_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "FlyLantern_DAMAGE",
	FLY_DAMAGE_FRONT			= "FlyLantern_DAMAGE",
	FLY_DAMAGE_BACK				= "FlyLantern_DAMAGE",
	SMALL_DAMAGE_AIR			= "FlyLantern_DAMAGE",	
	BIG_DAMAGE_AIR				= "FlyLantern_DAMAGE",
	DOWN_DAMAGE_AIR				= "FlyLantern_DAMAGE",
	UP_DAMAGE					= "FlyLantern_DAMAGE",
	DAMAGE_REVENGE				= "FlyLantern_DAMAGE",
	
	DYING_LAND_FRONT			= "FlyLantern_DYING",
	DYING_LAND_BACK				= "FlyLantern_DYING",
	DYING_SKY					= "FlyLantern_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 700,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 120,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}


FlyLantern_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_FIRST_WAIT",				},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Lantern02", FALSE, "Dummy00", FALSE, TRUE, 0, 0, 0, FALSE, 0, 0, 0, 9999},
		{ TRUE, 0.01, "Light_Lantern02-1", FALSE, "Dummy00", FALSE, TRUE, 0, 0, 0, FALSE, 0, 0, 0, 9999},
	},
	
}

FlyLantern_FIRST_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	EVENT_PROCESS = 
	{				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_WAIT",				},				
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Lantern01", FALSE, "Dummy01", FALSE, TRUE, 0, 0, 0, FALSE, },
		{ TRUE, 0.01, "Light_Lantern01", FALSE, "Dummy02", FALSE, TRUE, 0, 0, 0, FALSE, },
	},
}


FlyLantern_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"FlyLantern_AttackA_Ready",		"CT_FlyLantern_AttackA",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"FlyLantern_AttackB_Ready",		"CT_FlyLantern_AttackB",		},
				
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"FlyLantern_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"FlyLantern_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"FlyLantern_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"FlyLantern_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"FlyLantern_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"FlyLantern_JUMP_DOWN_DIR",				},
				
	},
	
	CT_FlyLantern_AttackA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	CT_FlyLantern_AttackB = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
}




FlyLantern_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_WAIT",				},
	},
}


FlyLantern_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"FlyLantern_AttackA_Ready",		"CT_FlyLantern_AttackA",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"FlyLantern_AttackB_Ready",		"CT_FlyLantern_AttackB",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"FlyLantern_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"FlyLantern_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"FlyLantern_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"FlyLantern_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"FlyLantern_JUMP_DOWN_DIR",				},
				
	},
	
	CT_FlyLantern_AttackA = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	CT_FlyLantern_AttackB = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1623 },
	},
}

FlyLantern_AttackA_Ready =
{
	ANIM_NAME					= "AttackAReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 0.5,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	--VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	--ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_AttackA",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1624 },
	},
}

FlyLantern_AttackA =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	--VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_X				= 2000,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.001, "Fly_Lantern_Attack1.ogg" },
	
	EVENT_INTERVAL_TIME0		= 2,
	
	ATTACK_TIME0				= { 0.01, 0.21, },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_AttackA_End",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1625 },
	},
}

FlyLantern_AttackA_End =
{
	ANIM_NAME					= "AttackAEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	--VIEW_TARGET					= TRUE,
	
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	--ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,	
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_WAIT",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1626 },
	},
}

FlyLantern_AttackB_Ready =
{
	ANIM_NAME					= "AttackBReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	ANIM_SPEED					= 0.5,
	
	--VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_AttackB",				},
				
	},
	
	TALK_BOX = 
	{
  		{ RATE = 0, MESSAGE = STR_ID_1486 },
	},
}

FlyLantern_AttackB =
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_X				= 2000,

    SOUND_PLAY0			= { 0.001, "Fly_Lantern_Attack2.ogg" },
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	ATTACK_TIME0				= { 0.01, 0.21, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_AttackB_End",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 0, MESSAGE = STR_ID_1486 },
	},
}

FlyLantern_AttackB_End =
{
	ANIM_NAME					= "AttackBEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--VIEW_TARGET					= TRUE,
	
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	--ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"FlyLantern_WAIT",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 0, MESSAGE = STR_ID_1486 },
	},
}

FlyLantern_JUMP_UP = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"FlyLantern_JUMP_DOWN",				},
	},
}

FlyLantern_JUMP_DOWN = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"FlyLantern_JUMP_LANDING",				},
	},
}

FlyLantern_JUMP_UP_DIR = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"FlyLantern_JUMP_DOWN_DIR",				},
	},
}

FlyLantern_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"FlyLantern_JUMP_LANDING",				},
	},
}

FlyLantern_JUMP_LANDING = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"FlyLantern_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"FlyLantern_WAIT",					},
	},
}

FlyLantern_DYING = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	--DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	

function FlyLantern_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    --pNPCUnit:SetUnitColor( 1.0, 0.5, 1.0) --, D3DBLEND[" D3DBLEND_SRCALPHA"], D3DBLEND[" D3DBLEND_DESTALPHA"])    
end


function FlyLantern_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetShow( false )
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	GetMajorParticle = pX2Game:GetMajorParticle()
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpact",			pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpactCore",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpactRingRed",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

