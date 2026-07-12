-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 250.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.2,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"Particle_Blur.dds",
	"Trock_Dog_Soul_A.tga",
	"Trock_Dog_Soul_A.dds",
	"Pa_Ran_SpaD_Smoke02.DDS",
	"Circle_Light01.dds",
	"Circle_Light01.dds",
	"Ran_flame01.tga",
	"NUI_BUGI_TROCK_piece.dds",
	"Spark01.dds",
	"Spark02.dds",
	"Spark03.dds",
	"Ran_flame01.tga",
	"Gate_Light2.dds",
	},
	
	READY_XSKIN_MESH = 
	{
	"Trock_Dog_Togi_Magic_Attack_B_Dummy.X",
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
	"PunchAttack5.ogg",
	"sliding02.ogg",
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Trock_Dog_Togi.x",
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
	MP_CHANGE_RATE			= 15,
	MP_CHARGE_RATE			= 130,

	DRAW_SMALL_MP_BAR		= TRUE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,
	
	RAGE_COUNT_MAX		= 50,
	RAGE_TIME_MAX		= 3,
	

	HITTED_TYPE				= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN				= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "TROCK_DOG_TOGI_START",						},
		
	{ STATE_NAME = "TROCK_DOG_TOGI_WAIT",						},
	{ STATE_NAME = "TROCK_DOG_TOGI_WAIT_HABIT",					},
	
	{ STATE_NAME = "TROCK_DOG_TOGI_WALK",						LUA_STATE_END_FUNC = "TROCK_DOG_TOGI_WALK_STATE_END"						},

	{ STATE_NAME = "TROCK_DOG_TOGI_DASH",						},
	{ STATE_NAME = "TROCK_DOG_TOGI_DASH_END",					},
	
	{ STATE_NAME = "TROCK_DOG_TOGI_JUMP_UP",					},
	{ STATE_NAME = "TROCK_DOG_TOGI_JUMP_DOWN",					LUA_STATE_END_FUNC = "TROCK_DOG_TOGI_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "TROCK_DOG_TOGI_JUMP_UP_DIR",				},
	{ STATE_NAME = "TROCK_DOG_TOGI_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "TROCK_DOG_TOGI_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "TROCK_DOG_TOGI_JUMP_LANDING",				},

	
	-- 주술봉 근접 공격
	{ STATE_NAME = "TROCK_DOG_TOGI_ATTACK_A",					STATE_COOL_TIME = 5,							},
	
	-- 버프 거는 스테이트
	--{ STATE_NAME = "TROCK_DOG_TOGI_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_MAGIC_ATTACK_A_FRAME_MOVE",		},	
	{ STATE_NAME = "TROCK_DOG_TOGI_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_MAGIC_ATTACK_A_FRAME_MOVE",			
																STATE_COOL_TIME = 25,},
	-- 매직 미사일 발사
	{ STATE_NAME = "TROCK_DOG_TOGI_MAGIC_ATTACK_B",				LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_MAGIC_ATTACK_B_FRAME_MOVE",			
																STATE_COOL_TIME = 10,},
	
	-- 캐시키 소환
	{ STATE_NAME = "TROCK_DOG_TOGI_SPECIAL_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_SPECIAL_ATTACK_A_FRAME_MOVE",			
																STATE_COOL_TIME = 25,},
	
	--리액션 관련
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_AIR",					},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "TROCK_DOG_TOGI_STAND_UP_FRONT",				},
	{ STATE_NAME = "TROCK_DOG_TOGI_STAND_UP_BACK",				},
	
	{ STATE_NAME = "TROCK_DOG_TOGI_DAMAGE_REVENGE",				},
	
	{ STATE_NAME = "TROCK_DOG_TOGI_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "TROCK_DOG_TOGI_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "TROCK_DOG_TOGI_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "TROCK_DOG_TOGI_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "TROCK_DOG_TOGI_DYING_SKY",					LUA_STATE_START_FUNC = "TROCK_DOG_TOGI_DYING_LAND_STATE_START",				},
	
	START_STATE					= "TROCK_DOG_TOGI_START",
	WAIT_STATE					= "TROCK_DOG_TOGI_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "TROCK_DOG_TOGI_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "TROCK_DOG_TOGI_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "TROCK_DOG_TOGI_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "TROCK_DOG_TOGI_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "TROCK_DOG_TOGI_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "TROCK_DOG_TOGI_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "TROCK_DOG_TOGI_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "TROCK_DOG_TOGI_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "TROCK_DOG_TOGI_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "TROCK_DOG_TOGI_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "TROCK_DOG_TOGI_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "TROCK_DOG_TOGI_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "TROCK_DOG_TOGI_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN","TROCK_DOG_TOGI_DAMAGE_AIR_FALL","TROCK_DOG_TOGI_STAND_UP_FRONT","TROCK_DOG_TOGI_STAND_UP_BACK",
		"TROCK_DOG_TOGI_JUMP_DOWN","TROCK_DOG_TOGI_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "TROCK_DOG_TOGI_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "TROCK_DOG_TOGI_DYING_LAND_BACK",
	DYING_SKY					= "TROCK_DOG_TOGI_DYING_SKY",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 2000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2200,		-- cm
		TARGET_LOST_RANGE			= 2500,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 600,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
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

TROCK_DOG_TOGI_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "TROCK_DOG_TOGI_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_WAIT = 
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

	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_Wait01.ogg",30},

	
	EVENT_INTERVAL_TIME0 = 1,
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN",				},


		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_DOG_TOGI_SPECIAL_ATTACK_A",		"CF_TROCK_DOG_TOGI_SPECIAL_ATTACK_A",	},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_ATTACK_A",				"CT_TROCK_DOG_TOGI_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_MAGIC_ATTACK_A",		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_MAGIC_ATTACK_B",		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_B",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"TROCK_DOG_TOGI_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"TROCK_DOG_TOGI_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"TROCK_DOG_TOGI_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"TROCK_DOG_TOGI_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"TROCK_DOG_TOGI_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"TROCK_DOG_TOGI_JUMP_DOWN_DIR",			},
	},
	
	CT_TROCK_DOG_TOGI_ATTACK_A = 
	{
		EVENT_INTERVAL_ID		= 0,
		RATE					= 100,
		DISTANCE_TO_TARGET_NEAR = 500,
	},	
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},	
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_WALK = 
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN_DIR", },
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_DOG_TOGI_SPECIAL_ATTACK_A",		"CF_TROCK_DOG_TOGI_SPECIAL_ATTACK_A",	},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_ATTACK_A",				"CT_TROCK_DOG_TOGI_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_MAGIC_ATTACK_A",		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_MAGIC_ATTACK_B",		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_B",		},
	

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"TROCK_DOG_TOGI_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"TROCK_DOG_TOGI_DASH",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"TROCK_DOG_TOGI_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"TROCK_DOG_TOGI_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"TROCK_DOG_TOGI_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"TROCK_DOG_TOGI_JUMP_DOWN_DIR",	},
	},
	
	CT_TROCK_DOG_TOGI_ATTACK_A = 
	{
		EVENT_INTERVAL_ID		= 0,
		RATE					= 100,
		DISTANCE_TO_TARGET_NEAR = 500,
	},	
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},	
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},
}

function TROCK_DOG_TOGI_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_DOG_TOGI_SPECIAL_ATTACK_A",		"CF_TROCK_DOG_TOGI_SPECIAL_ATTACK_A",	},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_ATTACK_A",				"CT_TROCK_DOG_TOGI_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_MAGIC_ATTACK_A",		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TROCK_DOG_TOGI_MAGIC_ATTACK_B",		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_B",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"TROCK_DOG_TOGI_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"TROCK_DOG_TOGI_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"TROCK_DOG_TOGI_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"TROCK_DOG_TOGI_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"TROCK_DOG_TOGI_JUMP_DOWN_DIR",	},
	},
	
	CT_TROCK_DOG_TOGI_ATTACK_A = 
	{
		EVENT_INTERVAL_ID		= 0,
		RATE					= 100,
		DISTANCE_TO_TARGET_NEAR = 500,
	},	
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},	
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "sliding02.ogg"},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "TROCK_DOG_TOGI_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Landing_Meat02.ogg"},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_JUMP_LANDING",	},
	},
}

function TROCK_DOG_TOGI_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "TROCK_DOG_TOGI_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	 	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Landing_Meat02.ogg"},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_JUMP_LANDING",	},
	},
}

function TROCK_DOG_TOGI_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Landing_Meat01.ogg"},
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_ATTACK_A = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SPEED_TIME0					= { 900, -1, 0.8, 1}, 
	SPEED_TIME1					= { 0, -1, 	 1.0, 1}, 
	
	SUPER_ARMOR					= TRUE,
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_AttackA01.ogg",30},
	SOUND_PLAY1 = { 0.81, "StickSlash5.ogg"},
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 0.898, 0.914, },
	
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
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 1300,
		BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,	
	},
	EFFECT_SET_LIST =
	{
		"EffectSet_Dog_Togi_Attack_A", 0.0,	
	},
}


-- 버프
TROCK_DOG_TOGI_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	
	SUPER_ARMOR					= TRUE,
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 1.0, "Glitter_Lance_Attack1.ogg" },
    SOUND_PLAY1			= { 0.9, "GlitterVoice_Attack2.ogg" },
    SOUND_PLAY2			= { 1.3, "Glitter_Lance_Attack2.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",		},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_TROCK_DOG_TOGI_Buff_Start", 0.0,	
	},
}

function TROCK_DOG_TOGI_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	-- 버프 거는 함수

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

-- 매직 미사일 발사
TROCK_DOG_TOGI_MAGIC_ATTACK_B = 
{
	ANIM_NAME					= "Magic_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.5,
	
	SUPER_ARMOR_TIME0			= { 0, 0.7, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	
	SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_AttackB01.ogg"},
	SOUND_PLAY1 = { 0.85, "Swing_Medium01.ogg"},
	SOUND_PLAY2 = { 1.85, "PunchAttack6.ogg"},
	SOUND_PLAY3 = { 1.00, "Ran_Swing01.ogg"},
	SOUND_PLAY4 = { 1.50, "Ran_Swing02.ogg"},
	SOUND_PLAY5 = { 2.00, "Ran_Swing03.ogg"},
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",		},	
	},
	
	ATTACK_TIME0				= { 0.597, 0.799, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1,
		-- },
		
		-- BACK_SPEED_X			= 1000,
		-- BACK_SPEED_Y			= 700,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,	

		-- RE_ATTACK				= TRUE,		
		-- HIT_GAP					= 0.2,		
	-- },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Dog_Togi_Magic_Attack_B_Ready", 0.0,	
	},
}

-- 매직 미사일 발사
function TROCK_DOG_TOGI_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then	
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "TROCK_DOG_TOGI_MAGIC_ATTACK_B", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y )
			
			if pCEffect ~= nil then
				pNPCUnit:SetLockOnNearTarget( pCEffect )
			end			
		end		
	elseif pNPCUnit:AnimEventTimer_LUA( 1.4 ) then	
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "TROCK_DOG_TOGI_MAGIC_ATTACK_B", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y )
			
			if pCEffect ~= nil then
				pNPCUnit:SetLockOnNearTarget( pCEffect )
			end
		end		
	elseif pNPCUnit:AnimEventTimer_LUA( 1.8 ) then	
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "TROCK_DOG_TOGI_MAGIC_ATTACK_B", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y )
			
			if pCEffect ~= nil then
				pNPCUnit:SetLockOnNearTarget( pCEffect )
			end
		end		
	end
end

-- 캐시키 소환
TROCK_DOG_TOGI_SPECIAL_ATTACK_A = 
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_PLAY0 = { 0.71, "Glitter_Lance_Combo.ogg"},
	SOUND_PLAY1 = { 1.61, "Gliter_Alchemyst_SlashStick.ogg"},
	SOUND_PLAY2 = { 2.21, "Shadow_Master_SpecialAttackC02.ogg"},

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",		},	
	},
	
	ATTACK_TIME0				= { 0.689, 1.11, },
	
	DISABLE_ATTACK_BOX = 
	{
		"Lhand1",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 4.5,
		},
		
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 1000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Trock_Dog_Togi_Special_Attack_A", 0.0,	
	},
	
}

-- 캐시키 소환 함수
function TROCK_DOG_TOGI_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
	local pParticleSL = pNPCUnit:GetMinorParticle_LUA( 0 )

	if pParticleSL ~= nil then
		pParticleSL:SetPosition( pNPCUnit:GetBonePos_LUA("Bip01_L_Finger2") )
	end
	if pNPCUnit:AnimEventTimer_LUA( 2.71 ) then
		pNPCUnit:SetNowMP( 0 )
		
		local bonePos = pNPCUnit:GetBonePos_LUA("Bip01_L_Finger2")
		local pMajorParticle = pX2Game:GetMajorParticle()

		local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		
		--일반 캐스키 3마리 소환
		local TargetPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 1000, true, true )
		pParticle:SetBlackHolePosition( TargetPos )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_TROCK_DOG"], pNPCUnit:GetHardLevel(), false, TargetPos, true, 1.9, true, 10 )

		local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		local TargetPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 800, true, false )
		pParticle:SetBlackHolePosition( TargetPos )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_TROCK_DOG"], pNPCUnit:GetHardLevel(), false, TargetPos, true, 2, true, 10 )

		local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		local TargetPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 500, true )
		pParticle:SetBlackHolePosition( TargetPos )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_TROCK_DOG"], pNPCUnit:GetHardLevel(), false, TargetPos, false, 2.1, true, 10 )

		
		--속성 캐스키 소환
		local SpecialTrockDog = { "FIRE", "ICE", "POISON", }
		local num = pNPCUnit:GetRandVal() % 3 + 1
		local SpeicalDogName = "NUI_TROCK_DOG_SP_" .. SpecialTrockDog[num]	
		
		local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		local TargetPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 600, true )
		pParticle:SetBlackHolePosition( TargetPos )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID[SpeicalDogName], pNPCUnit:GetHardLevel(), false, TargetPos, false, 2.1, true, 10 )
		
		pX2Game:FlushCreateNPCReq()
	end
	if pNPCUnit:AnimEventTimer_LUA( 3.5 ) then
		pParticleSL2 = pNPCUnit:GetMinorParticle_LUA( 0 )
		if pParticleSL2 ~= nil then
			pParticleSL2:SetAutoDie()
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	end
end

function CF_TROCK_DOG_TOGI_SPECIAL_ATTACK_A( pKTDXApp, pX2Game, pNPCUnit )	
	--마나 100% 일 때만 사용 가능
	local NowMP = pNPCUnit:GetNowMP()

	if pNPCUnit:GetMaxMP() * 0.5 >= NowMP then
		return false
	end		
	
	local nUnitListSize = pX2Game:GetNPCUnitListSize()
	local iSummonMonsterCnt = 0
	for i=0, nUnitListSize-1 do 		
		pUnit = pX2Game:GetNPCUnit( i )		
		if pUnit ~= nil and
			pUnit:GetUID() ~= pNPCUnit:GetUID() and
			pUnit:GetTeam() == pNPCUnit:GetTeam() and				
			pUnit:GetNowHP() > 0 then
			
			--내가 소환한 몬스터 숫자 체크
			if pUnit:GetKeyCode() == 10 then
				iSummonMonsterCnt = iSummonMonsterCnt +1
			end
		end			
	end
	
	--소환한 몬스터가 4마리 이상이라면 더 이상 소환 하지 않기
	if iSummonMonsterCnt >= 4 then
		return false
	end

	return true
end
----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_DamageB01.ogg" , 30 },
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "TROCK_DOG_TOGI_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_DamageA01.ogg" , 30 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.5,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_DOG_TOGI_SPECIAL_ATTACK_A",		"CF_TROCK_DOG_TOGI_SPECIAL_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 		"TROCK_DOG_TOGI_MAGIC_ATTACK_A", 		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",	},
	},
	
	TROCK_DOG_TOGI_SPECIAL_ATTACK_A = 		-- 방어시 일정 확률로 반격
	{
		EVENT_INTERVAL_ID			= 0,
		--ANIM_EVENT_TIMER			= 0.35,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 50,
	},
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A = 		-- 방어시 일정 확률로 반격
	{
		EVENT_INTERVAL_ID			= 0,
		--ANIM_EVENT_TIMER			= 0.35,
		DISTANCE_TO_TARGET_NEAR	= 600,
		RATE						= 50,
	},
	
}

function TROCK_DOG_TOGI_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_DamageA01.ogg" , 30 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_DOG_TOGI_SPECIAL_ATTACK_A",		"CF_TROCK_DOG_TOGI_SPECIAL_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 		"TROCK_DOG_TOGI_MAGIC_ATTACK_A", 		"CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"TROCK_DOG_TOGI_WAIT",				},
	},
	
	TROCK_DOG_TOGI_SPECIAL_ATTACK_A = 		-- 방어시 일정 확률로 반격
	{
		EVENT_INTERVAL_ID			= 0,
		--ANIM_EVENT_TIMER			= 0.35,
		DISTANCE_TO_TARGET_NEAR	= 600,
		RATE						= 50,
	},
	CT_TROCK_DOG_TOGI_MAGIC_ATTACK_A = 		-- 방어시 일정 확률로 반격
	{
		EVENT_INTERVAL_ID			= 0,
		--ANIM_EVENT_TIMER			= 0.35,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 50,
	},
}

function TROCK_DOG_TOGI_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_DamageB01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "TROCK_DOG_TOGI_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_STAND_UP_FRONT",	},
	},
	
}

function TROCK_DOG_TOGI_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_DamageA01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "TROCK_DOG_TOGI_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_STAND_UP_BACK",		},
	},
	
}

function TROCK_DOG_TOGI_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_DamageA01.ogg",30},
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		SOUND_PLAY0 = { 0.01, "Bugi_Trock_Voice_DamageB01.ogg",30},
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_WAIT", },
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "TROCK_DOG_TOGI_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "TROCK_DOG_TOGI_DAMAGE_AIR_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_STAND_UP_FRONT",	},
	},
}

function TROCK_DOG_TOGI_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

TROCK_DOG_TOGI_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT",		},
	},
}

TROCK_DOG_TOGI_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"TROCK_DOG_TOGI_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TROCK_DOG_TOGI_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_Dying01.ogg" , 30 },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
TROCK_DOG_TOGI_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_Dying01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCK_DOG_TOGI_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.160, "Bugi_Trock_Voice_Dying01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function TROCK_DOG_TOGI_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

