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
	
	SUMMON_TIME			= 180,
}




INIT_STATE = 
{
	{ STATE_NAME = "CSM_FlyLantern_START",				LUA_STATE_START_FUNC = "CSM_FlyLantern_START_STATE_START",},
	{ STATE_NAME = "CSM_FlyLantern_FIRST_WAIT",				},	
	{ STATE_NAME = "CSM_FlyLantern_WAIT",					},
	
	{ STATE_NAME = "CSM_FlyLantern_AttackA_Ready",		STATE_COOL_TIME = 3,			},
	{ STATE_NAME = "CSM_FlyLantern_AttackA",					},
	{ STATE_NAME = "CSM_FlyLantern_AttackA_End",					},
	{ STATE_NAME = "CSM_FlyLantern_AttackB_Ready",		STATE_COOL_TIME = 7,			},
	{ STATE_NAME = "CSM_FlyLantern_AttackB",					},
	{ STATE_NAME = "CSM_FlyLantern_AttackB_End",					},
	
	{ STATE_NAME = "CSM_FlyLantern_END",						},
	
	
	--리액션 관련
	{ STATE_NAME = "CSM_FlyLantern_DAMAGE",				},	
	{ STATE_NAME = "CSM_FlyLantern_DYING",				LUA_STATE_START_FUNC = "CSM_FlyLantern_DYING_STATE_START", },
	{ STATE_NAME = "CSM_FlyLantern_WALK",					},
	{ STATE_NAME = "CSM_FlyLantern_JUMP_UP",				},
	{ STATE_NAME = "CSM_FlyLantern_JUMP_DOWN",			},
	{ STATE_NAME = "CSM_FlyLantern_JUMP_UP_DIR",			},
	{ STATE_NAME = "CSM_FlyLantern_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "CSM_FlyLantern_JUMP_LANDING",			},
	
	
	START_STATE					= "CSM_FlyLantern_START",
	WAIT_STATE					= "CSM_FlyLantern_WAIT",
	SUMMON_END_STATE			= "CSM_FlyLantern_END",
	
	SMALL_DAMAGE_LAND_FRONT		= "CSM_FlyLantern_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "CSM_FlyLantern_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "CSM_FlyLantern_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "CSM_FlyLantern_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_FlyLantern_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "CSM_FlyLantern_DAMAGE",
	FLY_DAMAGE_FRONT			= "CSM_FlyLantern_DAMAGE",
	FLY_DAMAGE_BACK				= "CSM_FlyLantern_DAMAGE",
	SMALL_DAMAGE_AIR			= "CSM_FlyLantern_DAMAGE",	
	BIG_DAMAGE_AIR				= "CSM_FlyLantern_DAMAGE",
	DOWN_DAMAGE_AIR				= "CSM_FlyLantern_DAMAGE",
	UP_DAMAGE					= "CSM_FlyLantern_DAMAGE",
	DAMAGE_REVENGE				= "CSM_FlyLantern_DAMAGE",
	
	DYING_LAND_FRONT			= "CSM_FlyLantern_DYING",
	DYING_LAND_BACK				= "CSM_FlyLantern_DYING",
	DYING_SKY					= "CSM_FlyLantern_DYING",

	REVENGE_ATTACK				= "",	
}

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
		DEST_GAP			= 300,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 400,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 1,   --  70,
		FAR_WALK_RATE		= 1,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 1, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 10,   --  70,
		FAR_WALK_RATE		= 10,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}


CSM_FlyLantern_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_FIRST_WAIT",				},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Lantern02", FALSE, "Dummy00", FALSE, TRUE, 0, 0, 0, FALSE, 0, 0, 0, 9999},
		{ TRUE, 0.01, "Light_Lantern02-1", FALSE, "Dummy00", FALSE, TRUE, 0, 0, 0, FALSE, 0, 0, 0, 9999},
	},
	
}

CSM_FlyLantern_FIRST_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	EVENT_PROCESS = 
	{				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_WAIT",				},				
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Lantern01", FALSE, "Dummy01", FALSE, TRUE, 0, 0, 0, FALSE, },
		{ TRUE, 0.01, "Light_Lantern01", FALSE, "Dummy02", FALSE, TRUE, 0, 0, 0, FALSE, },
	},
}


CSM_FlyLantern_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_FlyLantern_AttackB_Ready",		"CT_CSM_FlyLantern_AttackB",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_FlyLantern_AttackA_Ready",		"CT_CSM_FlyLantern_AttackA",		},
				
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_FlyLantern_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_FlyLantern_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_FlyLantern_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_FlyLantern_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_FlyLantern_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_FlyLantern_JUMP_DOWN_DIR",				},
				
	},
	
	CT_CSM_FlyLantern_AttackA = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
	CT_CSM_FlyLantern_AttackB = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
}


CSM_FlyLantern_END = 
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


CSM_FlyLantern_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_WAIT",				},
	},
}


CSM_FlyLantern_WALK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_FlyLantern_AttackB_Ready",		"CT_CSM_FlyLantern_AttackB",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_FlyLantern_AttackA_Ready",		"CT_CSM_FlyLantern_AttackA",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_FlyLantern_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_FlyLantern_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_FlyLantern_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_FlyLantern_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_FlyLantern_JUMP_DOWN_DIR",				},
				
	},
	
	CT_CSM_FlyLantern_AttackA = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
	CT_CSM_FlyLantern_AttackB = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1623 },
	},
}

CSM_FlyLantern_AttackA_Ready =
{
	ANIM_NAME					= "AttackAReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 0.5,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	VIER_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	--ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_AttackA",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1624 },
	},
}

CSM_FlyLantern_AttackA =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	--VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_X				= 800,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.001, "Fly_Lantern_Attack1.ogg" },
	
	EVENT_INTERVAL_TIME0		= 2,
	
	ATTACK_TIME0				= { 0.01, 0.21, },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_LIGHTNING"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_AttackA_End",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1625 },
	},
}

CSM_FlyLantern_AttackA_End =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_WAIT",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1626 },
	},
}

CSM_FlyLantern_AttackB_Ready =
{
	ANIM_NAME					= "AttackBReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	VIER_TARGET					= TRUE,
	
	ANIM_SPEED					= 0.5,
	
	--VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_AttackB",				},
				
	},
	
	TALK_BOX = 
	{
  		{ RATE = 0, MESSAGE = STR_ID_1486 },
	},
}

CSM_FlyLantern_AttackB =
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--VIEW_TARGET					= TRUE,
	
	PASSIVE_SPEED_X				= 800,

    SOUND_PLAY0			= { 0.001, "Fly_Lantern_Attack2.ogg" },
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	ATTACK_TIME0				= { 0.01, 0.21, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_LIGHTNING"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 3.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_AttackB_End",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 0, MESSAGE = STR_ID_1486 },
	},
}

CSM_FlyLantern_AttackB_End =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN_DIR",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_FlyLantern_WAIT",				},
				
	},
	
	TALK_BOX = 
	{
		{ RATE = 0, MESSAGE = STR_ID_1486 },
	},
}

CSM_FlyLantern_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CSM_FlyLantern_JUMP_DOWN",				},
	},
}

CSM_FlyLantern_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_FlyLantern_JUMP_LANDING",				},
	},
}

CSM_FlyLantern_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CSM_FlyLantern_JUMP_DOWN_DIR",				},
	},
}

CSM_FlyLantern_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CSM_FlyLantern_JUMP_LANDING",				},
	},
}

CSM_FlyLantern_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_FlyLantern_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_FlyLantern_WAIT",					},
	},
}

CSM_FlyLantern_DYING = 
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
	

function CSM_FlyLantern_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    --pNPCUnit:SetUnitColor( 1.0, 0.5, 1.0) --, D3DBLEND[" D3DBLEND_SRCALPHA"], D3DBLEND[" D3DBLEND_DESTALPHA"])    
end


function CSM_FlyLantern_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetShow( false )
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	GetMajorParticle = pX2Game:GetMajorParticle()
	GetMajorParticle:CreateSequence_LUA( "DamageImpact",			pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:CreateSequence_LUA( "DamageImpactCore",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:CreateSequence_LUA( "DamageImpactRingRed",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

