-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 80.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.5,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"trockDog_0_attack_spark.dds",
	},
	
	READY_SOUND = 
	{
	"Bite01.ogg",
	"Bite02.ogg",
	"Trock_Dog_Voice_Wait01.ogg",
	"Trock_Dog_Voice_AttackA01.ogg",
	"Trock_Dog_Voice_DamageB01.ogg",
	"Trock_Dog_Voice_DamageA01.ogg",
	"Trock_Dog_Voice_Dying01.ogg",
	"Swing_Medium01.ogg",
	"",
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Trock_Dog.x",
	MOTION_CHANGE_TEX_XET	= "NUI_TROCK_RASH_DOG.xet",
	MOTION_ANI_TEX_XET		= "NUI_TROCK_RASH_DOG.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 800,
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
}

INIT_STATE = 
{
	{ STATE_NAME = "RASH_TROCK_DOG_START",						LUA_STATE_START_FUNC = "RASH_TROCK_DOG_START_STATE_START",					},
		
	{ STATE_NAME = "RASH_TROCK_DOG_WAIT",						},
	{ STATE_NAME = "RASH_TROCK_DOG_WAIT_HABIT",					},
	
	{ STATE_NAME = "RASH_TROCK_DOG_WALK",						LUA_STATE_END_FUNC = "RASH_TROCK_DOG_WALK_STATE_END"							},

	{ STATE_NAME = "RASH_TROCK_DOG_DASH",						},
	{ STATE_NAME = "RASH_TROCK_DOG_DASH_END",					},
	
	{ STATE_NAME = "RASH_TROCK_DOG_JUMP_UP",						},
	{ STATE_NAME = "RASH_TROCK_DOG_JUMP_DOWN",					LUA_STATE_END_FUNC = "RASH_TROCK_DOG_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "RASH_TROCK_DOG_JUMP_UP_DIR",					},
	{ STATE_NAME = "RASH_TROCK_DOG_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "RASH_TROCK_DOG_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "RASH_TROCK_DOG_JUMP_LANDING",				},

	-- 물기 시도하는 스테이트
	{ STATE_NAME = "RASH_TROCK_DOG_ATTACK",						LUA_STATE_START_FUNC = "RASH_TROCK_DOG_ATTACK_STATE_START",		STATE_COOL_TIME	= 5,		},
	-- 물고 늘어지는 스테이트
	{ STATE_NAME = "RASH_TROCK_DOG_ATTACK_COMBO",				LUA_FRAME_MOVE_FUNC = "RASH_TROCK_DOG_ATTACK_COMBO_FRAME_MOVE",				
															LUA_STATE_END_FUNC = "RASH_TROCK_DOG_ATTACK_COMBO_STATE_END",				},
	
	--리액션 관련
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "RASH_TROCK_DOG_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_BACK",					LUA_FRAME_MOVE_FUNC = "RASH_TROCK_DOG_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "RASH_TROCK_DOG_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "RASH_TROCK_DOG_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_FLY_BACK",				},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_AIR",					},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "RASH_TROCK_DOG_STAND_UP_FRONT",				},
	{ STATE_NAME = "RASH_TROCK_DOG_STAND_UP_BACK",				},
	
	{ STATE_NAME = "RASH_TROCK_DOG_DAMAGE_REVENGE",				},
	
	{ STATE_NAME = "RASH_TROCK_DOG_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "RASH_TROCK_DOG_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "RASH_TROCK_DOG_DYING_LAND_BACK",				LUA_STATE_START_FUNC = "RASH_TROCK_DOG_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "RASH_TROCK_DOG_DYING_SKY",					LUA_STATE_START_FUNC = "RASH_TROCK_DOG_DYING_LAND_STATE_START",				},
	
	START_STATE					= "RASH_TROCK_DOG_START",
	WAIT_STATE					= "RASH_TROCK_DOG_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "RASH_TROCK_DOG_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "RASH_TROCK_DOG_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "RASH_TROCK_DOG_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "RASH_TROCK_DOG_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "RASH_TROCK_DOG_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "RASH_TROCK_DOG_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "RASH_TROCK_DOG_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "RASH_TROCK_DOG_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "RASH_TROCK_DOG_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "RASH_TROCK_DOG_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "RASH_TROCK_DOG_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "RASH_TROCK_DOG_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "RASH_TROCK_DOG_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "RASH_TROCK_DOG_DAMAGE_AIR_DOWN","RASH_TROCK_DOG_DAMAGE_AIR_FALL","RASH_TROCK_DOG_STAND_UP_FRONT","RASH_TROCK_DOG_STAND_UP_BACK",
		"RASH_TROCK_DOG_JUMP_DOWN","RASH_TROCK_DOG_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "RASH_TROCK_DOG_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "RASH_TROCK_DOG_DYING_LAND_BACK",
	DYING_SKY					= "RASH_TROCK_DOG_DYING_SKY",

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
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
		UP_JUMP_RATE		= 0, 		-- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,  	-- 20,
		DOWN_DOWN_RATE		= 0,
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

RASH_TROCK_DOG_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "RASH_TROCK_DOG_WAIT", "CT_RASH_TROCK_DOG_WAIT", },
	},
}

function RASH_TROCK_DOG_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )		-- 데미지 변경 여부

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_WAIT = 
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
	
	SOUND_PLAY0 = { 0.01, "Trock_Dog_Voice_Wait01.ogg", 30},
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_TROCK_DOG_ATTACK",					"CT_RASH_TROCK_DOG_ATTACK",				},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"RASH_TROCK_DOG_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"RASH_TROCK_DOG_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_TROCK_DOG_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_TROCK_DOG_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_TROCK_DOG_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_TROCK_DOG_JUMP_DOWN_DIR",			},
	},
	
	CT_RASH_TROCK_DOG_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR			= 400,
		RATE					= 100,
	},	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21535 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_WALK = 
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN_DIR", },
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_TROCK_DOG_ATTACK",			"CT_RASH_TROCK_DOG_ATTACK", },
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"RASH_TROCK_DOG_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"RASH_TROCK_DOG_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_TROCK_DOG_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_TROCK_DOG_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_TROCK_DOG_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_TROCK_DOG_JUMP_DOWN_DIR",	},
	},
	
	CT_RASH_TROCK_DOG_ATTACK = 
	{
		EVENT_INTERVAL_ID				= 0,
		DISTANCE_TO_TARGET_NEAR			= 400,
		RATE							= 100,
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21534 },
	},
}

function RASH_TROCK_DOG_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_TROCK_DOG_ATTACK",		"CT_RASH_TROCK_DOG_ATTACK", },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"RASH_TROCK_DOG_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_TROCK_DOG_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_TROCK_DOG_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_TROCK_DOG_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_TROCK_DOG_JUMP_DOWN_DIR",	},
	},
	
	CT_RASH_TROCK_DOG_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR			= 400,
		RATE					= 100,
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21536 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "RASH_TROCK_DOG_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_JUMP_LANDING",	},
	},
}

function RASH_TROCK_DOG_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "RASH_TROCK_DOG_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_JUMP_LANDING",	},
	},
}

function RASH_TROCK_DOG_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_ATTACK = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	--LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.5, 1.2, },
	PASSIVE_SPEED_X				= 150,
	PASSIVE_SPEED_Y				= 400,
	--SPEED_Y						= 1500,
	
	
	--ADD_POS_Y					= 45, 
	
	SOUND_PLAY0			= { 1.00, "Bite01.ogg" },
	SOUND_PLAY1			= { 0.91, "Swing_Medium01.ogg" },
	SOUND_PLAY2			= { 0.01, "Trock_Dog_Voice_AttackA01.ogg", 30 },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_TROCK_DOG_ATTACK_COMBO",		"CT_RASH_TROCK_DOG_ATTACK_COMBO", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_WAIT",		},	
	},
	
	CT_RASH_TROCK_DOG_ATTACK_COMBO =
	{
		ATTACK_SUCCESS 		= TRUE,
	},
	
	ATTACK_TIME0				= { 0.863, 1.504, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

function RASH_TROCK_DOG_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )	-- 데미지 변경 여부 초기화

end

-- function RASH_TROCK_DOG_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	-- if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then
		-- --pNPCUnit:SetSpeedY( 1000 )
		-- pNPCUnit:SetSpeedX( 1000 )
	-- end

-- end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_ATTACK_COMBO = 
{
	ANIM_NAME					= "Attack_A_Combo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	FOLLOW_HITTER					= 99999, 	-- 않돼 빠져나갈수 없어
	ATTACK_FOLLOW_HITTER			= TRUE,
    ATTACK_FOLLOW_HITTER_POS_FRONT  = TRUE,		-- 유저의 앞에 붙이기
	
	INVINCIBLE		= { 0.0, 100.0, },
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 0.1, "Bite02.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "RASH_TROCK_DOG_DAMAGE_DOWN_FRONT", "CT_RASH_TROCK_DOG_DAMAGE_DOWN_FRONT", },	
	},
	
	CT_RASH_TROCK_DOG_DAMAGE_DOWN_FRONT =
	{
		STATE_TIME_OVER	= 3.0,
	},
	
	ATTACK_TIME0				= { 0.0, 100.0, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.5,		
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.5,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Trock_Dog_Attack", 0.0,	
	},
}

function RASH_TROCK_DOG_ATTACK_COMBO_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local bChangeDamageData = pNPCUnit:GetFlag_LUA( 0 )		-- 데미지 데이터 변경 여부

	-- 스테이트 시간이 0.5를 넘으면, 데미지 모션 없는 지속 데미지 적용
	if false == bChangeDamageData and 2.6 <= pNPCUnit:GetStateTime() then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
		pNPCUnit:SetFlag_LUA( 0, true )
	end	
end

function RASH_TROCK_DOG_ATTACK_COMBO_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	-- 물기가 끝날 때, 타겟 유저의 방향에 따라 자신의 방향 설정
	local pTargetUser = pNPCUnit:GetTargetUser()
	
	if nil ~= pTargetUser then
	
		if true == pTargetUser:GetIsRight() then
			pNPCUnit:SetIsRight( false )
		else
			pNPCUnit:SetIsRight( true )
		end
	
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "RASH_TROCK_DOG_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_FRONT = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_DamageA01.ogg", 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "RASH_TROCK_DOG_WAIT",	},
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
	},
}

function RASH_TROCK_DOG_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_BACK = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_DamageB01.ogg", 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "RASH_TROCK_DOG_WAIT",	},
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

function RASH_TROCK_DOG_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_DamageA01.ogg", 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "RASH_TROCK_DOG_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_STAND_UP_FRONT",	},
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

function RASH_TROCK_DOG_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_DamageB01.ogg", 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "RASH_TROCK_DOG_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_STAND_UP_BACK",		},
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

function RASH_TROCK_DOG_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING",	},
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_DAMAGE_DOWN_BACK",	},
	},
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_WAIT", },
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "RASH_TROCK_DOG_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirDownFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "RASH_TROCK_DOG_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_STAND_UP_FRONT",	},
	},
}

function RASH_TROCK_DOG_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

RASH_TROCK_DOG_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_WAIT",		},
	},
}

RASH_TROCK_DOG_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_TROCK_DOG_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_TROCK_DOG_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_Dying01.ogg", 30 },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------
	
RASH_TROCK_DOG_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_Dying01.ogg", 30 },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_TROCK_DOG_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0			= { 0.01, "Trock_Dog_Voice_Dying01.ogg", 30 },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21539 },
		{ RATE = 3, MESSAGE = STR_ID_21538 },
	},
}

function RASH_TROCK_DOG_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

