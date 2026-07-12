-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 225.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 1.7,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"Particle_Blur.dds",
	"ColorBallGray.dds",
	},
	
	READY_XSKIN_MESH = 
	{
	"STEEL_TROCK_SA_A_Wave_A.X",
	"STEEL_TROCK_SA_A_Wave_B.X",
	"STEEL_TROCK_SA_A_Wave_C.X",
	"STEEL_TROCK_SA_A_Wave_D.X",
	},	
	
	READY_SOUND = 
	{
	"Steel_Trock_Voice_AttackA01.ogg",
	"Steel_Trock_Voice_AttackA02.ogg",
	"Steel_Trock_Voice_AttackA03.ogg",
	"Steel_Trock_Voice_AttackA04.ogg",
	"Steel_Trock_Voice_AttackB01.ogg",
	"Steel_Trock_Voice_DamageA01.ogg",
	"Steel_Trock_Voice_DamageB01.ogg",
	"Steel_Trock_Voice_Dying01.ogg",
	"Steel_Trock_Voice_Wait01.ogg",
	"Landing_Big_Metal01.ogg",
	"Swing_Big01.ogg",
	"Swing_Big02.ogg",
	"Swing_Big03.ogg",
	"Swing_Big04.ogg",
	"Swing_Big05.ogg",
	"Landing_RawMeat01.ogg",
	"Landing_RawMeat02.ogg",
	"Body_Spin.ogg",
	"Landing_Meat01.ogg",
	"Landing_Meat02.ogg",
	"sliding02.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Strong_Steel_Trock.x",
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

	DEFAULT_ANIM_SPEED 		= 1.2,
	
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
}

INIT_STATE = 
{
	{ STATE_NAME = "STRONG_STEEL_TROCK_START",						},
	
	{ STATE_NAME = "STRONG_STEEL_TROCK_WAIT",						},
	{ STATE_NAME = "STRONG_STEEL_TROCK_WAIT_HABIT",					},
	
	{ STATE_NAME = "STRONG_STEEL_TROCK_WALK",						LUA_STATE_END_FUNC = "STRONG_STEEL_TROCK_WALK_STATE_END"						},
	
	{ STATE_NAME = "STRONG_STEEL_TROCK_DASH",						},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DASH_END",					},

	{ STATE_NAME = "STRONG_STEEL_TROCK_JUMP_UP",					},
	{ STATE_NAME = "STRONG_STEEL_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "STRONG_STEEL_TROCK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "STRONG_STEEL_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "STRONG_STEEL_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_JUMP_LANDING",				},

	-- 일반 공격
	{ STATE_NAME = "STRONG_STEEL_TROCK_ATTACK",						},
	-- 방어 공격
	{ STATE_NAME = "STRONG_STEEL_TROCK_GUARDATTACK_READY",			STATE_COOL_TIME	= 10,		},
	{ STATE_NAME = "STRONG_STEEL_TROCK_GUARD_ATTACK",				LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_GUARD_ATTACK_FRAME_MOVE",				},
	-- 방어
	{ STATE_NAME = "STRONG_STEEL_TROCK_GUARD",						},
	-- 대시 어택 준비
	{ STATE_NAME = "STRONG_STEEL_TROCK_DASH_ATTACK_READY",			STATE_COOL_TIME	= 10,	},
	-- 공격을 위한 대시
	{ STATE_NAME = "STRONG_STEEL_TROCK_DASH_FOR_ATTACK",			},
	-- 대시 공격
	{ STATE_NAME = "STRONG_STEEL_TROCK_DASH_ATTACK",				LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_DASH_ATTACK_FRAME_MOVE",				},
	-- 강한 연속 공격 ( MP 소모 )
	{ STATE_NAME = "STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY",		STATE_COOL_TIME	= 25,	},
	{ STATE_NAME = "STRONG_STEEL_TROCK_SPECIAL_ATTACK",				LUA_STATE_START_FUNC = "STRONG_STEEL_TROCK_SPECIAL_ATTACK_STATE_START",			
																	LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_SPECIAL_ATTACK_FRAME_MOVE",			},
	
	
	--리액션 관련
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_AIR",					},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "STRONG_STEEL_TROCK_STAND_UP_FRONT",				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_STAND_UP_BACK",				},
	
	{ STATE_NAME = "STRONG_STEEL_TROCK_DAMAGE_REVENGE",				},
	
	{ STATE_NAME = "STRONG_STEEL_TROCK_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "STRONG_STEEL_TROCK_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "STRONG_STEEL_TROCK_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "STRONG_STEEL_TROCK_DYING_SKY",					LUA_STATE_START_FUNC = "STRONG_STEEL_TROCK_DYING_LAND_STATE_START",				},
	
	START_STATE					= "STRONG_STEEL_TROCK_START",
	WAIT_STATE					= "STRONG_STEEL_TROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "STRONG_STEEL_TROCK_GUARD",
	SMALL_DAMAGE_LAND_BACK		= "STRONG_STEEL_TROCK_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "STRONG_STEEL_TROCK_GUARD",
	BIG_DAMAGE_LAND_BACK		= "STRONG_STEEL_TROCK_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "STRONG_STEEL_TROCK_GUARD",
	DOWN_DAMAGE_LAND_BACK		= "STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "STRONG_STEEL_TROCK_GUARD",
	FLY_DAMAGE_BACK				= "STRONG_STEEL_TROCK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "STRONG_STEEL_TROCK_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "STRONG_STEEL_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "STRONG_STEEL_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "STRONG_STEEL_TROCK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "STRONG_STEEL_TROCK_GUARD",
	
	DAMAGE_EXTRA_STATES         = { "STRONG_STEEL_TROCK_DAMAGE_FRONT","STRONG_STEEL_TROCK_DAMAGE_DOWN_FRONT","STRONG_STEEL_TROCK_DAMAGE_FLY_FRONT",
	"STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN","STRONG_STEEL_TROCK_DAMAGE_AIR_FALL","STRONG_STEEL_TROCK_STAND_UP_FRONT","STRONG_STEEL_TROCK_STAND_UP_BACK",
		"STRONG_STEEL_TROCK_JUMP_DOWN","STRONG_STEEL_TROCK_JUMP_LANDING","STRONG_STEEL_TROCK_JUMP_DOWN_DIR",},	
	
	DYING_LAND_FRONT			= "STRONG_STEEL_TROCK_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "STRONG_STEEL_TROCK_DYING_LAND_BACK",
	DYING_SKY					= "STRONG_STEEL_TROCK_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	SMALL_DAMAGE_LAND_GUARD		= "STRONG_STEEL_TROCK_GUARD",
	BIG_DAMAGE_LAND_GUARD		= "STRONG_STEEL_TROCK_GUARD",
	DOWN_DAMAGE_LAND_GUARD		= "STRONG_STEEL_TROCK_GUARD",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1200,		-- cm
		TARGET_LOST_RANGE			= 2000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 50, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		DEST_GAP			= 300,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 350,
		
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

STRONG_STEEL_TROCK_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
		
	
		
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STRONG_STEEL_TROCK_WAIT", "CT_STRONG_STEEL_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	GUARD_DEFENCE               = 80,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_Wait01.ogg",30},
	
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY",	"CT_STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_ATTACK",			"CT_STRONG_STEEL_TROCK_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_DASH_ATTACK_READY",	"CT_STRONG_STEEL_TROCK_DASH_ATTACK_READY",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"STRONG_STEEL_TROCK_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"STRONG_STEEL_TROCK_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STRONG_STEEL_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STRONG_STEEL_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STRONG_STEEL_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
	},
	
	CT_STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 50,
		--MY_MP_MORE_THAN_PERCENT		= 100,
	},
	
	CT_STRONG_STEEL_TROCK_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	
	CT_STRONG_STEEL_TROCK_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	GUARD_DEFENCE               = 80,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	GUARD_DEFENCE               = 80,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	
	SOUND_PLAY0 = { 0.19, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.71, "Landing_Meat02.ogg"},

	
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY",	"CT_STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_ATTACK",			"CT_STRONG_STEEL_TROCK_ATTACK",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_DASH_ATTACK_READY",	"CT_STRONG_STEEL_TROCK_DASH_ATTACK_READY",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"STRONG_STEEL_TROCK_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"STRONG_STEEL_TROCK_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STRONG_STEEL_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STRONG_STEEL_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STRONG_STEEL_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
	},
	
	CT_STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 50,
		--MY_MP_MORE_THAN_PERCENT		= 100,
	},
	
	CT_STRONG_STEEL_TROCK_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	
	CT_STRONG_STEEL_TROCK_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
}

function STRONG_STEEL_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	GUARD_DEFENCE               = 80,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	SOUND_PLAY0 = { 0.39, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.71, "Landing_Meat02.ogg"},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_ATTACK",			"CT_STRONG_STEEL_TROCK_ATTACK", },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"STRONG_STEEL_TROCK_DASH_END",			},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"STRONG_STEEL_TROCK_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STRONG_STEEL_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STRONG_STEEL_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STRONG_STEEL_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
	},
	
	CT_STRONG_STEEL_TROCK_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 70,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	GUARD_DEFENCE               = 80,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",				},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STRONG_STEEL_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_JUMP_LANDING",	},
	},
}

function STRONG_STEEL_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STRONG_STEEL_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_JUMP_LANDING",	},
	},
}

function STRONG_STEEL_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
 --   SOUND_PLAY0			= { 0.121, "Glitter_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_ATTACK = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 2.1, "Landing_Big_Metal01.ogg" },
    SOUND_PLAY1			= { 1.81, "Swing_Big02.ogg" },
	SOUND_PLAY2 		= { 0.01, "Steel_Trock_Voice_AttackA02.ogg",30},

	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 1.998, 2.053, },
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.3, },
	
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
			PHYSIC		= 2,
		},
		
		BACK_SPEED_X			= 1350,
		-- BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		STOP_TIME_DEF			= 0.2,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	EFFECT_SET_LIST =
	{
		"EffectSet_Strong_Steel_Trock_Attack_A", 0.0,	
	}
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_GUARD = 
{
	ANIM_NAME					= "Guard",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"STRONG_STEEL_TROCK_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 			"STRONG_STEEL_TROCK_GUARDATTACK_READY", 		"CT_STRONG_STEEL_TROCK_GUARDATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 					"STRONG_STEEL_TROCK_WAIT",						"CT_STRONG_STEEL_TROCK_WAIT", 					},
	},
	
	
	CT_STRONG_STEEL_TROCK_GUARDATTACK_READY = 		-- 방어시 일정 확률로 반격
	{
		EVENT_INTERVAL_ID			= 0,
		--ANIM_EVENT_TIMER			= 0.35,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 10,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_STRONG_STEEL_TROCK_Guard", 0.0,	
	},
}
----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_GUARDATTACK_READY = 
{
	ANIM_NAME					= "GuardAttack_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.5,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0				= { 0.3, 0.617, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 100,
		-- BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		STOP_TIME_DEF			= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_GUARD_ATTACK",			},	
	},
}

function STRONG_STEEL_TROCK_GUARD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_GUARD_ATTACK = 
{
	ANIM_NAME					= "GuardAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	PASSIVE_SPEED_X				= 400,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 0.30, "Landing_RawMeat01.ogg" },
	SOUND_PLAY1			= { 0.65, "Landing_RawMeat02.ogg" },
    SOUND_PLAY2			= { 1.45, "Body_Spin.ogg" },
    SOUND_PLAY3			= { 1.90, "Swing_Big01.ogg" },
    SOUND_PLAY4			= { 2.30, "Swing_Big03.ogg" },
    SOUND_PLAY5			= { 3.30, "Swing_Big05.ogg" },
    SOUND_PLAY6			= { 3.60, "Landing_Big_Metal02.ogg" },
    SOUND_PLAY7			= { 0.01, "Steel_Trock_Voice_AttackA04.ogg",30 },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 1.906, 1.933, },
	ATTACK_TIME1				= { 2.331, 2.511, },
	ATTACK_TIME2				= { 3.456, 3.726, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2,
		},
		
		BACK_SPEED_X			= 400,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.5,
		},
		
		BACK_SPEED_X			= 800,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		STOP_TIME_DEF			= 0.2,

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	DAMAGE_DATA_THIRD = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 4,
		},
		
		BACK_SPEED_X			= 1750,
		BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Strong_Steel_Trock_Dash_Attack_A", 0.0,	
	},
}

function STRONG_STEEL_TROCK_GUARD_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.2 ) then		-- 막타 전 경직 데미지 데이터
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	elseif pNPCUnit:AnimEventTimer_LUA( 2.8 ) then	-- 넘어뜨리는 데미지 데이타로 변경
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_THIRD" )
	end	

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DASH_ATTACK_READY = 
{
	ANIM_NAME					= "DashAttack_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 0.9, "Swing_Big01.ogg" },
    SOUND_PLAY1			= { 0.01, "Steel_Trock_Voice_AttackA03.ogg",30 },

	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_DASH_FOR_ATTACK",	},
	},
	
	ATTACK_TIME0				= { 0.9, 0.98, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 300,
		-- BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		STOP_TIME_DEF			= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DASH_FOR_ATTACK = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	SOUND_PLAY0 = { 0.39, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.71, "Landing_Meat02.ogg"},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_DASH_ATTACK",		"CT_STRONG_STEEL_TROCK_DASH_ATTACK", 	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_DASH_END",			"CT_STRONG_STEEL_TROCK_DASH_END"		},	
	},
	
	CT_STRONG_STEEL_TROCK_DASH_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 200,
	},
	
	CT_STRONG_STEEL_TROCK_DASH_END = 
	{
		STATE_TIME_OVER				= 1.2,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DASH_ATTACK = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.5, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 0.30, "Landing_RawMeat01.ogg" },
	SOUND_PLAY1			= { 0.65, "Landing_RawMeat02.ogg" },
    SOUND_PLAY2			= { 1.45, "Body_Spin.ogg" },
    SOUND_PLAY3			= { 1.90, "Swing_Big01.ogg" },
    SOUND_PLAY4			= { 2.30, "Swing_Big03.ogg" },
    SOUND_PLAY5			= { 3.30, "Swing_Big05.ogg" },
    SOUND_PLAY6			= { 3.60, "Landing_Big_Metal02.ogg" },
    SOUND_PLAY7			= { 0.01, "Steel_Trock_Voice_AttackA04.ogg",30 },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 1.836, 2.016, },
	ATTACK_TIME1				= { 2.331, 2.511, },
	ATTACK_TIME2				= { 3.456, 3.726, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 700,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 900,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		-- STOP_TIME_DEF			= 0.5,

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	DAMAGE_DATA_THIRD = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 2,
		},
		
		BACK_SPEED_X			= 1750,
		BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Strong_Steel_Trock_Dash_Attack_A", 0.0,	
	},
}

function STRONG_STEEL_TROCK_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.2 ) then		-- 막타 전 경직 데미지 데이터
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	elseif pNPCUnit:AnimEventTimer_LUA( 2.8 ) then	-- 넘어뜨리는 데미지 데이타로 변경
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_THIRD" )
	end	

end

----------------------------------------------------------------------------------------------------------------------------------------
STRONG_STEEL_TROCK_SPECIAL_ATTACK_READY = 
{
	ANIM_NAME					= "Special_Attack_A_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 1.4, "Landing_RawMeat01.ogg" },
	SOUND_PLAY1			= { 1.55, "Landing_RawMeat02.ogg" },
	SOUND_PLAY2			= { 1.7, "Landing_RawMeat01.ogg" },
	SOUND_PLAY3			= { 1.85, "Landing_RawMeat02.ogg" },
	SOUND_PLAY4			= { 2.05, "Landing_RawMeat01.ogg" },
	SOUND_PLAY5			= { 2.15, "Landing_RawMeat02.ogg" },

	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_SPECIAL_ATTACK",	},
	},
}


STRONG_STEEL_TROCK_SPECIAL_ATTACK =
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	PASSIVE_SPEED_X				= 300,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	

    SOUND_PLAY0			= { 3.3, "Swing_Big01.ogg" },
    SOUND_PLAY1			= { 4.1, "Swing_Big03.ogg" },
    SOUND_PLAY2			= { 4.65, "Swing_Big02.ogg" },
    SOUND_PLAY3			= { 5.1, "Swing_Big01.ogg" },
    SOUND_PLAY4			= { 5.6, "Swing_Big03.ogg" },
    SOUND_PLAY5			= { 5.8, "Swing_Big04.ogg" },
    SOUND_PLAY6			= { 7.0, "Swing_Big05.ogg" },
    SOUND_PLAY7			= { 7.2, "Landing_Big_Metal02.ogg" },
    SOUND_PLAY8			= { 0.1, "Steel_Trock_Voice_AttackA02.ogg" },
	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 0.299, 0.395, },
	ATTACK_TIME1				= { 1.068, 1.111, }, ---요가지 했음
	ATTACK_TIME2				= { 1.602, 1.645, },
	ATTACK_TIME3				= { 2.007, 2.029, },
	ATTACK_TIME4				= { 2.328, 2.371, },
	ATTACK_TIME5				= { 2.852, 2.937, },
	ATTACK_TIME6				= { 4.090, 4.165, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 400,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		--STOP_TIME_DEF			= 0.1,

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.3,		
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 2600,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	
	DAMAGE_DATA_THIRD = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 4,
		},
		
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		STOP_TIME_ATT			= 0.3,
		STOP_TIME_DEF			= 0.3,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.5,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Strong_Steel_Trock_Special_Attack_A", 0.0,	
	},
}

function STRONG_STEEL_TROCK_SPECIAL_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if nil ~= pNPCUnit then
		pNPCUnit:SetNowMP( 0 )	-- 기술 사용으로 인한 MP 초기화
	end
	
end

function STRONG_STEEL_TROCK_SPECIAL_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.6 ) then		-- 띄우는 데미지 데이타로 변경
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	elseif pNPCUnit:AnimEventTimer_LUA( 3.5 ) then	-- 넘어뜨리는 데미지 데이타로 변경
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_THIRD" )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STRONG_STEEL_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
			
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
	
	EVENT_INTERVAL_TIME0		= 1.0,
	
	SOUND_PLAY0 = { 0.39, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.71, "Landing_Meat02.ogg"},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_GUARD",			"CT_STRONG_STEEL_TROCK_GUARD"		},	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STRONG_STEEL_TROCK_WAIT", },
	},
	
	CT_STRONG_STEEL_TROCK_GUARD = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	
}
----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STRONG_STEEL_TROCK_ATTACK", "CT_STRONG_STEEL_TROCK_ATTACK", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STRONG_STEEL_TROCK_WAIT",	 },
	},
	
	-- CT_STRONG_STEEL_TROCK_ATTACK2 = 		-- 피격시 일정 확률로 반격
	-- {
		-- ANIM_PLAY_COUNT				= 1,
		-- RATE						= 60,
		-- HAVE_TARGET					= 0,
	-- },
}

function STRONG_STEEL_TROCK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
 	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "STRONG_STEEL_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_STAND_UP_BACK",		},
	},
	
}
----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
 	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "STRONG_STEEL_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_STAND_UP_BACK",		},
	},
	
}

function STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_DAMAGE_DOWN_FRONT",	},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_WAIT", },
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_DamageA01.ogg",30},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "STRONG_STEEL_TROCK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "STRONG_STEEL_TROCK_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_STAND_UP_FRONT",	},
	},
}

function STRONG_STEEL_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

STRONG_STEEL_TROCK_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},
	},
}

STRONG_STEEL_TROCK_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

  SOUND_PLAY0			= { 0.30, "sliding02.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STRONG_STEEL_TROCK_WAIT",			},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_Dying01.ogg",30},
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
STRONG_STEEL_TROCK_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_Dying01.ogg",30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

STRONG_STEEL_TROCK_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0 = { 0.01, "Steel_Trock_Voice_Dying01.ogg",30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function STRONG_STEEL_TROCK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

