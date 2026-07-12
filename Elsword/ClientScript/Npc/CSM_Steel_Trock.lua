-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 240.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.6,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"Particle_Blur.dds",
	"trockVega_0_attack_smoke.dds",
	"trockVega_0_attack_spark.dds",
	"trockVega_0_attack_stone.dds",
	"trockVega_0_attack_spark02.dds",
	},
	READY_XSKIN_MESH = 
	{
	"Steel_Trock_0_Guard_spark.x"
	},	
	READY_SOUND = 
	{
	"Steel_Trock_Voice_AttackA01.ogg",
	"Steel_Trock_Voice_AttackB01.ogg",
	"Steel_Trock_Voice_DamageA01.ogg",
	"Steel_Trock_Voice_DamageB01.ogg",
	"Steel_Trock_Voice_Dying01.ogg",
	"Steel_Trock_Voice_Wait01.ogg",
	"PunchAttack.ogg",
	"PunchAttack2.ogg",
	"Glitter_ShieldHit.ogg",
	"sliding02.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Steel_Trock.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}

INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,

	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,
	

	HITTED_TYPE				= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN				= TRUE,
	
	USE_GUARD_COLLISION_BOX		= FALSE,
	SUMMON_TIME			= 180,
}

INIT_STATE = 
{
	{ STATE_NAME = "STEEL_TROCK_START",						},
	
	{ STATE_NAME = "STEEL_TROCK_WAIT",						},
	{ STATE_NAME = "STEEL_TROCK_WAIT_HABIT",				},
	
	{ STATE_NAME = "STEEL_TROCK_WALK",						LUA_STATE_END_FUNC = "STEEL_TROCK_WALK_STATE_END"						},
	
	{ STATE_NAME = "STEEL_TROCK_DASH",						},
	{ STATE_NAME = "STEEL_TROCK_DASH_END",					},

	{ STATE_NAME = "STEEL_TROCK_JUMP_UP",					},
	{ STATE_NAME = "STEEL_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "STEEL_TROCK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "STEEL_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "STEEL_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "STEEL_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "STEEL_TROCK_JUMP_LANDING",				},

	-- 일반 공격
	{ STATE_NAME = "STEEL_TROCK_ATTACK",					STATE_COOL_TIME	= 7,	},
	-- 방어 후 반격 공격
	{ STATE_NAME = "STEEL_TROCK_GUARD_ATTACK",				STATE_COOL_TIME	= 8,	},
	
	-- 일반 공격 성공 후 기뻐하는 스테이트
	{ STATE_NAME = "STEEL_TROCK_LAUGH",						},
	-- 방어
	{ STATE_NAME = "STEEL_TROCK_GUARD",						},
	
	--리액션 관련
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "STEEL_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "STEEL_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_AIR",				},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "STEEL_TROCK_STAND_UP_FRONT",			},
	{ STATE_NAME = "STEEL_TROCK_STAND_UP_BACK",				},
	
	{ STATE_NAME = "STEEL_TROCK_DAMAGE_REVENGE",			},
	
	{ STATE_NAME = "STEEL_TROCK_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "STEEL_TROCK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "STEEL_TROCK_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "STEEL_TROCK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "STEEL_TROCK_DYING_SKY",					LUA_STATE_START_FUNC = "STEEL_TROCK_DYING_LAND_STATE_START",			},
	
{ STATE_NAME = "STEEL_TROCK_END", },

	START_STATE					= "STEEL_TROCK_START",
	WAIT_STATE					= "STEEL_TROCK_WAIT",
	SUMMON_END_STATE			= "STEEL_TROCK_END",
	
	SMALL_DAMAGE_LAND_FRONT		= "STEEL_TROCK_GUARD",
	SMALL_DAMAGE_LAND_BACK		= "STEEL_TROCK_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "STEEL_TROCK_GUARD",
	BIG_DAMAGE_LAND_BACK		= "STEEL_TROCK_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "STEEL_TROCK_GUARD",
	DOWN_DAMAGE_LAND_BACK		= "STEEL_TROCK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "STEEL_TROCK_GUARD",
	FLY_DAMAGE_BACK				= "STEEL_TROCK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "STEEL_TROCK_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "STEEL_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "STEEL_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "STEEL_TROCK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "STEEL_TROCK_GUARD",
	
	DAMAGE_EXTRA_STATES         = {"STEEL_TROCK_DAMAGE_AIR_DOWN","STEEL_TROCK_DAMAGE_AIR_FALL","STEEL_TROCK_STAND_UP_FRONT","STEEL_TROCK_STAND_UP_BACK",
		"STEEL_TROCK_JUMP_DOWN","STEEL_TROCK_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "STEEL_TROCK_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "STEEL_TROCK_DYING_LAND_BACK",
	DYING_SKY					= "STEEL_TROCK_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	SMALL_DAMAGE_LAND_GUARD		= "STEEL_TROCK_GUARD",
	BIG_DAMAGE_LAND_GUARD		= "STEEL_TROCK_GUARD",
	DOWN_DAMAGE_LAND_GUARD		= "STEEL_TROCK_GUARD",
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
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 70,   	-- 70,
		FAR_WALK_RATE		= 70,   	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, 		-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,  	-- 20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, 	--50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,		-- cm
		ESCAPE_GAP			= 600,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 		-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    	-- 30,
		DOWN_DOWN_RATE		= 30,
	},

}

----------------------------------------------------------------------------------------------------------------------------------------
STEEL_TROCK_END = 
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
STEEL_TROCK_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STEEL_TROCK_WAIT", "CT_STEEL_TROCK_WAIT", },
	},
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21540 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_WAIT = 
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
	
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_Wait01.ogg",10},
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEEL_TROCK_ATTACK",				"CT_STEEL_TROCK_ATTACK",				},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEEL_TROCK_WAIT_HABIT",			"CT_STEEL_TROCK_WAIT_HABIT",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"STEEL_TROCK_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"STEEL_TROCK_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STEEL_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STEEL_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STEEL_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STEEL_TROCK_JUMP_DOWN_DIR",		},
	},
	
	CT_STEEL_TROCK_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21540 },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_WALK = 
{
	ANIM_SPEED					= 0.8,
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEEL_TROCK_ATTACK",			"CT_STEEL_TROCK_ATTACK", },

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"STEEL_TROCK_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"STEEL_TROCK_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STEEL_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STEEL_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STEEL_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_STEEL_TROCK_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
}

function STEEL_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEEL_TROCK_ATTACK",			"CT_STEEL_TROCK_ATTACK", },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"STEEL_TROCK_DASH_END",			},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"STEEL_TROCK_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STEEL_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STEEL_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STEEL_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_STEEL_TROCK_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",				},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STEEL_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_JUMP_LANDING",	},
	},
}

function STEEL_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STEEL_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_JUMP_LANDING",	},
	},
}

function STEEL_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_ATTACK = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0	= { 0.50, "PunchAttack.ogg"},
	SOUND_PLAY1	= { 0.01, "Steel_Trock_Voice_AttackA01.ogg",30},
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEEL_TROCK_LAUGH",		"CT_STEEL_TROCK_LAUGH", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",			},	
	},
	
	CT_STEEL_TROCK_LAUGH =		-- 공격 성공시 기뻐하는 스테이트로 이동
	{
		ANIM_EVENT_TIMER	= 1.5,
		ATTACK_SUCCESS 		= TRUE,
	},	
	
	ATTACK_TIME0				= { 0.689, 0.707, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Vega_Trock_Attack", 0.6,	
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21541 },
		{ RATE = 3, MESSAGE = STR_ID_21542 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_LAUGH = 
{
	ANIM_SPEED					= 0.8,
	ANIM_NAME					= "Laugh",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",		},
	},
}

STEEL_TROCK_GUARD = 
{
	ANIM_NAME					= "Guard",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	GUARD_DEFENCE               = 80,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 0.01, "Glitter_ShieldHit.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 			"STEEL_TROCK_GUARD_ATTACK", "CT_STEEL_TROCK_GUARD_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 			"STEEL_TROCK_WAIT",			"CT_STEEL_TROCK_WAIT",	},
	},
	
	CT_STEEL_TROCK_GUARD_ATTACK = 		-- 방어시 일정 확률로 반격
	{
		EVENT_INTERVAL_ID			= 0,
		--ANIM_EVENT_TIMER			= 0.35,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 10,
	},
	
	CT_STEEL_TROCK_WAIT = 
	{
		STATE_TIME_OVER			= 1.0,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Steel_Trock_Guard", 0.0,	
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21540 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_GUARD_ATTACK = 
{
	ANIM_NAME					= "Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.40, "PunchAttack2.ogg"},
	SOUND_PLAY1	= { 0.01, "Steel_Trock_Voice_AttackB01.ogg",30},
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEEL_TROCK_LAUGH",		"CT_STEEL_TROCK_LAUGH", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",			},	
	},
	
	CT_STEEL_TROCK_LAUGH =		-- 공격 성공시 기뻐하는 스테이트로 이동
	{
		ANIM_EVENT_TIMER	= 1.1,
		ATTACK_SUCCESS 		= TRUE,
	},
	
	ATTACK_TIME0				= { 0.32, 0.340, },
	
	DISABLE_ATTACK_BOX = 
	{
		"Lhand1",
	},
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21541 },
		{ RATE = 3, MESSAGE = STR_ID_21542 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STEEL_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STEEL_TROCK_GUARD_ATTACK", "CT_STEEL_TROCK_GUARD_ATTACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STEEL_TROCK_WAIT",	 	},
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21544 },
		{ RATE = 3, MESSAGE = STR_ID_21545 },
	},
}

function STEEL_TROCK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "STEEL_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_STAND_UP_BACK",	},
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21544 },
		{ RATE = 3, MESSAGE = STR_ID_21545 },
	},
}

function STEEL_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "STEEL_TROCK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirDownFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "STEEL_TROCK_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_STAND_UP_FRONT",	},
	},
}

function STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",			},
	},
}

STEEL_TROCK_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	SOUND_PLAY0			= { 0.283, "sliding02.ogg" },	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STEEL_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STEEL_TROCK_WAIT",			},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_Dying01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21545 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------
	
STEEL_TROCK_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_Dying01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21545 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STEEL_TROCK_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Steel_Trock_Voice_Dying01.ogg",30},	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21545 },
	},zz
}

function STEEL_TROCK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

----------------------------------------------------------------------------------------------------------------------------------------

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

