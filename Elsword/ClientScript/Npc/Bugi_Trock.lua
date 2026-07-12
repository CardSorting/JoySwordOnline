-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"Particle_Blur.dds",
	"Pa_Ran_SpaD_Smoke02.dds",
	"NUI_BUGI_TROCK_piece.dds",
	"smoke02.dds",
	"AeroTornado04.dds",
	"Circle_Light01.dds",
	},
	READY_XSKIN_MESH = 
	{
	"trockBugi_0_attackB_model.x",
	},	
	
	READY_SOUND = 
	{
	"Bugi_Trock_Voice_AttackA01.ogg",
	"Bugi_Trock_Voice_AttackB01.ogg",
	"Bugi_Trock_Voice_DamageA01.ogg",
	"Bugi_Trock_Voice_DamageB01.ogg",
	"Bugi_Trock_Voice_Dying01.ogg",
	"Bugi_Trock_Voice_Wait01.ogg",
	"LizardSaurus_AttackA2.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Bugi_Trock.x",
}

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
	{ STATE_NAME = "BUGI_TROCK_START",						},
		
	{ STATE_NAME = "BUGI_TROCK_WAIT",						},
	{ STATE_NAME = "BUGI_TROCK_WAIT_HABIT",					},
	
	{ STATE_NAME = "BUGI_TROCK_WALK",						LUA_STATE_END_FUNC = "BUGI_TROCK_WALK_STATE_END"						},

	{ STATE_NAME = "BUGI_TROCK_DASH",						},
	{ STATE_NAME = "BUGI_TROCK_DASH_END",					},
	
	{ STATE_NAME = "BUGI_TROCK_JUMP_UP",					},
	{ STATE_NAME = "BUGI_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "BUGI_TROCK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "BUGI_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "BUGI_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "BUGI_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "BUGI_TROCK_JUMP_LANDING",				},

	-- 버프 거는 스테이트
	{ STATE_NAME = "BUGI_TROCK_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_MAGIC_ATTACK_A_FRAME_MOVE",			
															STATE_COOL_TIME = 25,													},
	-- 전방 마법체 발사
	{ STATE_NAME = "BUGI_TROCK_MAGIC_ATTACK_B",				LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_MAGIC_ATTACK_B_FRAME_MOVE",			STATE_COOL_TIME = 5,	},
	
	--리액션 관련
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_AIR",					},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "BUGI_TROCK_STAND_UP_FRONT",				},
	{ STATE_NAME = "BUGI_TROCK_STAND_UP_BACK",				},
	
	{ STATE_NAME = "BUGI_TROCK_DAMAGE_REVENGE",				},
	
	{ STATE_NAME = "BUGI_TROCK_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "BUGI_TROCK_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "BUGI_TROCK_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "BUGI_TROCK_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "BUGI_TROCK_DYING_SKY",					LUA_STATE_START_FUNC = "BUGI_TROCK_DYING_LAND_STATE_START",				},
	
	START_STATE					= "BUGI_TROCK_START",
	WAIT_STATE					= "BUGI_TROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "BUGI_TROCK_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "BUGI_TROCK_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "BUGI_TROCK_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "BUGI_TROCK_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "BUGI_TROCK_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "BUGI_TROCK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "BUGI_TROCK_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "BUGI_TROCK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "BUGI_TROCK_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "BUGI_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "BUGI_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "BUGI_TROCK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "BUGI_TROCK_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"BUGI_TROCK_DAMAGE_AIR_DOWN","BUGI_TROCK_DAMAGE_AIR_FALL","BUGI_TROCK_STAND_UP_FRONT","BUGI_TROCK_STAND_UP_BACK",
	"BUGI_TROCK_JUMP_DOWN","BUGI_TROCK_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "BUGI_TROCK_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "BUGI_TROCK_DYING_LAND_BACK",
	DYING_SKY					= "BUGI_TROCK_DYING_SKY",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1100,		-- cm
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

BUGI_TROCK_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_Start01.ogg"},

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BUGI_TROCK_WAIT", "CT_BUGI_TROCK_WAIT", },
	},
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21526 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_WAIT = 
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
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_Wait01.ogg", 30 },
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BUGI_TROCK_MAGIC_ATTACK_A",		"CT_BUGI_TROCK_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BUGI_TROCK_MAGIC_ATTACK_B",		"CT_BUGI_TROCK_MAGIC_ATTACK_B",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BUGI_TROCK_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BUGI_TROCK_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BUGI_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BUGI_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BUGI_TROCK_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BUGI_TROCK_JUMP_DOWN_DIR",			},
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21528 },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN_DIR", },
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BUGI_TROCK_MAGIC_ATTACK_A",		"CT_BUGI_TROCK_MAGIC_ATTACK_A", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BUGI_TROCK_MAGIC_ATTACK_B",		"CT_BUGI_TROCK_MAGIC_ATTACK_B",	},
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BUGI_TROCK_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BUGI_TROCK_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BUGI_TROCK_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BUGI_TROCK_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BUGI_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BUGI_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21527 },
		{ RATE = 3, MESSAGE = STR_ID_21527 },
	},
}

function BUGI_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BUGI_TROCK_MAGIC_ATTACK_A",		"CT_BUGI_TROCK_MAGIC_ATTACK_A", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BUGI_TROCK_MAGIC_ATTACK_B",		"CT_BUGI_TROCK_MAGIC_ATTACK_B",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BUGI_TROCK_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BUGI_TROCK_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BUGI_TROCK_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BUGI_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BUGI_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BUGI_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_JUMP_LANDING",	},
	},
}

function BUGI_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BUGI_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_JUMP_LANDING",	},
	},
}

function BUGI_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

-- 버프
BUGI_TROCK_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_AttackA01.ogg", 30},
	SOUND_PLAY1 = { 0.50, "LizardSaurus_AttackA2.ogg"},

	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT",		},	
	},
	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bugi_Trock_Buff_Start", 0.0,	
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21531 },
	},
}

function BUGI_TROCK_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	-- 버프 거는 함수

	if pNPCUnit:AnimEventTimer_LUA( 1.08 ) then
		
		local iNumOfNpc = pX2Game:GetNPCUnitListSize()
		
		for i = 0, iNumOfNpc - 1 do
			local pNpc = pX2Game:GetNPCUnit( i )
			
			if pNpc ~= nil then
				
				local vDistance = pNpc:GetDistanceFrom( pNPCUnit:GetPos() )
				
				if 800 >= vDistance and 0.0 < pNpc:GetNowHP_LUA() then
						pNpc:SetBuffFactorToGameUnitByBuffFactorIDAndCreatorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_BUGI_TROCK"], pNPCUnit:GetUID(), false, 1 )
				end
				
			end	-- if pNpc ~= nil then
			
		end --for i = 0, iNumOfNpc - 1 do
		
	end --if pNPCUnit:AnimEventTimer_LUA( 1.08 ) then

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 전방 마법 공격
BUGI_TROCK_MAGIC_ATTACK_B = 
{
	ANIM_NAME					= "Magic_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0, 0.5, },

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 0.7, "PunchAttack5.ogg" },
    SOUND_PLAY1			= { 0.1, "Bugi_Trock_Voice_AttackB01.ogg",30},
    SOUND_PLAY2			= { 0.7, "Wyvern_MagicAttack2.ogg" },

	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT",		},	
	},
		
	EFFECT_SET_LIST =
	{
		"EffectSet_Bugi_Trock_Magic_Attack", 0.0,	
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21529 },
	},
}

function BUGI_TROCK_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.743 ) then
	
		pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
			pos = pNPCUnit:GetLandPosition_LUA()
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_BUGI_TROCK_ATTACK", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y )
		end
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_DamageA01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BUGI_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_DamageA01.ogg" ,30 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "BUGI_TROCK_MAGIC_ATTACK_A", "CT_BUGI_TROCK_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BUGI_TROCK_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BUGI_TROCK_WAIT",	},
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_A = 		-- 피격시 일정 확률로 반격
	{
		--ANIM_PLAY_COUNT				= 1,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
		--HAVE_TARGET					= 0,
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21530 },
		{ RATE = 3, MESSAGE = STR_ID_21531 },
	},
}

function BUGI_TROCK_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_DamageB01.ogg" ,30 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "BUGI_TROCK_MAGIC_ATTACK_A", "CT_BUGI_TROCK_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BUGI_TROCK_JUMP_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BUGI_TROCK_WAIT",	},
	},
	
	CT_BUGI_TROCK_MAGIC_ATTACK_A = 		-- 피격시 일정 확률로 반격
	{
		--ANIM_PLAY_COUNT				= 1,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
		--HAVE_TARGET					= 0,
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21530 },
		{ RATE = 3, MESSAGE = STR_ID_21531 },
	},
}

function BUGI_TROCK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_DamageA01.ogg" ,30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "BUGI_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_STAND_UP_FRONT",	},
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21530 },
		{ RATE = 3, MESSAGE = STR_ID_21531 },
	},
	
}

function BUGI_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_DamageB01.ogg" ,30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "BUGI_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_STAND_UP_BACK",		},
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21530 },
		{ RATE = 3, MESSAGE = STR_ID_21531 },
	},
	
}

function BUGI_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_DamageA01.ogg",30},
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_WAIT", },
	},
	
	TALK_BOX = 
	{
		{ RATE = 3, MESSAGE = STR_ID_21530 },
		{ RATE = 3, MESSAGE = STR_ID_21531 },
	},
	
	-- VIEW_TARGET					= TRUE,
	-- ALLOW_DIR_CHANGE			= TRUE,

	
	
	-- ATTACK_TIME0				= { 0.15, 0.24, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.0,
		-- },
		
		
		-- CAMERA_CRASH_GAP		= 10.0,	
		-- CAMERA_CRASH_TIME		= 0.2,	
		
		-- BACK_SPEED_X		= 1500,
		-- BACK_SPEED_Y		= -1000,
		
		-- CAN_REVENGE			= TRUE,	
	-- },
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_DamageB01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "BUGI_TROCK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "BUGI_TROCK_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_STAND_UP_FRONT",	},
	},
}

function BUGI_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

BUGI_TROCK_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT",		},
	},
}

BUGI_TROCK_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BUGI_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BUGI_TROCK_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_Dying01.ogg" ,30 },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21532 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------
	
BUGI_TROCK_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_Dying01.ogg" ,30 },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21532 },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BUGI_TROCK_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.1, "Bugi_Trock_Voice_Dying01.ogg" ,30 },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_21532 },
	},
}

function BUGI_TROCK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

