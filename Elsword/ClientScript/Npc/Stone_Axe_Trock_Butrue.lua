-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 225.0,
	UNIT_HEIGHT		= 225.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 1.8,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"Particle_Blur.dds",
	},
	
	READY_XSKIN_MESH = 
	{
	"Butrue_Axe_Magic_Attack.X",
	"Butrue_Axe_Dash_Attack_01.X",
	"Butrue_Axe_Dash_Attack_02.X",
	},	
	
	READY_SOUND = 
	{
	"Stone_Axe_Trock_Voice_AttackA01.ogg",
	"Stone_Axe_Trock_Voice_AttackA02.ogg",
	"Stone_Axe_Trock_Voice_DamageA01.ogg",
	"Stone_Axe_Trock_Voice_DamageA02.ogg",
	"Stone_Axe_Trock_Voice_Dying01.ogg",
	"Stone_Axe_Trock_Voice_Wait01.ogg",
	"Glitter_Lance_Combo.ogg",
	"PunchAttack.ogg",
	"PunchAttack2.ogg",
	"Glitter_Archer_StandUp.ogg",
	"Glitter_Lance_Win.ogg",
	"Glitter_Lance_SpecialAttackA.ogg",
	"Swing_Medium01.ogg",
	"Swing_Medium02.ogg",
	"Glitter_Lance_Combo.ogg",
	"sliding02.ogg",
	
	
	
	
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Stone_Axe_Trock_Butrue.x",
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
}

INIT_STATE = 
{
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_START",						LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_START_STATE_START",					},
	
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_WAIT",						},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_WAIT_HABIT",					},
	
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_WALK",						LUA_STATE_END_FUNC = "STONE_AXE_TROCK_BUTRUE_WALK_STATE_END"						},

	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DASH",						LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_DASH_ESCAPE_STATE_START",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DASH_END",					},
	
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_JUMP_UP",					},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",					LUA_STATE_END_FUNC = "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_JUMP_UP_DIR",				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_JUMP_LANDING",				},

	-- 근접 연타 공격
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ATTACK_A",					STATE_COOL_TIME	= 5,				},
	-- 도끼 투척 공격(부메랑)x
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A_FRAME_MOVE",		STATE_COOL_TIME	= 5,	},
	-- 공격을 위한 대시
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DASH_FOR_ATTACK",			},
	-- 대시 후 띄우기 공격
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",			STATE_COOL_TIME	= 10,	},
	-- 띄우기 성공했을 때, 마무리 공격
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK",				LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_FRAME_MOVE",				},
	-- 공중으로 점프 후, 연속 도끼 투척 ( MP 소모 )
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",				LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_STATE_START",
																		LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_FRAME_MOVE",		STATE_COOL_TIME	= 25,	},
	
	-- 도망가기 전용 스테이트
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START",			LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START_STATE_END",	STATE_COOL_TIME	= 10,		},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_BACK_START",			STATE_COOL_TIME	= 10,	},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN",					LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN_STATE_START",				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_END",					},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_UP_DIR",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_DOWN_DIR",		LUA_STATE_END_FUNC = "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_LANDING",		},
	
	--리액션 관련
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR",					},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_STAND_UP_FRONT",				},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_STAND_UP_BACK",				},
	
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DAMAGE_REVENGE",				},
	
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "STONE_AXE_TROCK_BUTRUE_DYING_SKY",					LUA_STATE_START_FUNC = "STONE_AXE_TROCK_BUTRUE_DYING_LAND_STATE_START",			},
	
	START_STATE					= "STONE_AXE_TROCK_BUTRUE_START",
	WAIT_STATE					= "STONE_AXE_TROCK_BUTRUE_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "STONE_AXE_TROCK_BUTRUE_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "STONE_AXE_TROCK_BUTRUE_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "STONE_AXE_TROCK_BUTRUE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN","STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL",
	"STONE_AXE_TROCK_BUTRUE_STAND_UP_FRONT","STONE_AXE_TROCK_BUTRUE_STAND_UP_BACK",
		"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN","STONE_AXE_TROCK_BUTRUE_JUMP_LANDING",},	
	
	DYING_LAND_FRONT			= "STONE_AXE_TROCK_BUTRUE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "STONE_AXE_TROCK_BUTRUE_DYING_LAND_BACK",
	DYING_SKY					= "STONE_AXE_TROCK_BUTRUE_DYING_SKY",
	
	COMMON_FRAME_FUNC           = "STONE_AXE_TROCK_BUTRUE_COMMON_FRAME_MOVE",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1500,		-- cm
		TARGET_LOST_RANGE			= 1600,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 30, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1200,
		DEST_GAP			= 1000,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 1100,
		
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
		ESCAPE_GAP			= 1800,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 		-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    	-- 30,
		DOWN_DOWN_RATE		= 30,
	},

	ESCAPE_CONDITION = 
	{
		FLAG_TRUE			= 0,
		RATE				= 100,
		MY_HP				= 100,		-- %, 전체 HP에 대해 현재 HP의 비율
		--ESCAPE_RANGE		= 1600,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망		
	}
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STONE_AXE_TROCK_BUTRUE_WAIT", "CT_STONE_AXE_TROCK_BUTRUE_WAIT", },
	},
}

function STONE_AXE_TROCK_BUTRUE_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )	-- 도망가는 AI를 위해
	pNPCUnit:SetTimerRestart( 0 )		-- 도망 타이밍
	pNPCUnit:SetInt_LUA( 0, 3 )			-- 최대 도망 시간

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_WAIT = 
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
	
	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_Wait01.ogg",30},

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		"CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",		"CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A",		"CT_STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A",		},
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_ATTACK_A",				"CT_STONE_AXE_TROCK_BUTRUE_ATTACK_A",			},
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_WAIT_HABIT",			"CT_STONE_AXE_TROCK_BUTRUE_WAIT_HABIT",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"STONE_AXE_TROCK_BUTRUE_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"STONE_AXE_TROCK_BUTRUE_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STONE_AXE_TROCK_BUTRUE_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STONE_AXE_TROCK_BUTRUE_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",			},
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 100,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 30,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,
		RATE						= 50,
	},
	
	
	-- CT_STONE_AXE_TROCK_BUTRUE_ATTACK_A = 
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 350,
		-- RATE						= 50,
	-- },
	
	-- CT_STONE_AXE_TROCK_BUTRUE_WAIT_HABIT = 
	-- {
		-- ANIM_PLAY_COUNT				= 1,
		-- RATE						= 60,
		-- HAVE_TARGET					= 0,
	-- },	
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_WALK = 
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		"CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",		"CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A",		"CT_STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A",		},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"STONE_AXE_TROCK_BUTRUE_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"STONE_AXE_TROCK_BUTRUE_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STONE_AXE_TROCK_BUTRUE_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STONE_AXE_TROCK_BUTRUE_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",		},
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 100,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 30,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,
		RATE						= 50,
	},
}

function STONE_AXE_TROCK_BUTRUE_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"STONE_AXE_TROCK_BUTRUE_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"STONE_AXE_TROCK_BUTRUE_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"STONE_AXE_TROCK_BUTRUE_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",		},
	},
}

function STONE_AXE_TROCK_BUTRUE_DASH_ESCAPE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetDirPos_LUA(pNPCUnit:GetNearestUserPos()) == 0 then
		pNPCUnit:SetIsRight(true)
	else
		pNPCUnit:SetIsRight(false)
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",				},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_JUMP_LANDING",	},
	},
}

function STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_JUMP_LANDING",	},
	},
}

function STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ATTACK_A = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0	= { 1.10, "Glitter_Lance_Combo.ogg"},
	SOUND_PLAY1	= { 1.90, "PunchAttack.ogg"},
	SOUND_PLAY2 = { 0.01, "Stone_Axe_Trock_Voice_AttackA01.ogg"},

	SUPER_ARMOR					= TRUE,	
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 1.762, 1.914, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 100,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.2,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------
-- 도끼 투척 공격(부메랑)x
STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR_TIME0			= { 0.0, 0.8, },
	
	SOUND_PLAY0 = { 0.55, "Glitter_Archer_StandUp.ogg"},
	SOUND_PLAY1 = { 2.21, "Glitter_Lance_Win.ogg"},
	SOUND_PLAY2 = { 0.01, "Stone_Axe_Trock_Voice_AttackB01.ogg", 30},
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},	
	},
}
-- 도끼 투척 공격(부메랑)x
function STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.176 ) then	-- 도끼 날리기
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_MAGIC_ATTACK_A_BOSS", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )
				
		pNPCUnit:SetDamageEffect_LUA( 0 , pEffect )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 3.0 ) then	-- 도끼 회수		
		local pMainEffect = pNPCUnit:GetDamageEffect_LUA(0):GetMainEffect()
		pMainEffect:SetVelocity( D3DXVECTOR3( 0, 0 , 0 ) )			
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 3.4 ) then	-- 도끼 회수		
		local pMainEffect = pNPCUnit:GetDamageEffect_LUA(0):GetMainEffect()
		pMainEffect:SetVelocity( D3DXVECTOR3( -1200, 0 , 0 ) )			
	end
end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DASH_FOR_ATTACK = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STRONG_STEEL_TROCK_JUMP_DOWN_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",	"CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY", 	},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STRONG_STEEL_TROCK_DASH_END",				"CT_STRONG_STEEL_TROCK_DASH_END"				},	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_END",				"CT_STONE_AXE_TROCK_BUTRUE_DASH_END"				},	
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY = 
	{
		DISTANCE_TO_TARGET_NEAR		= 400,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_END = 
	{
		STATE_TIME_OVER				= 1.2,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY =
{
	ANIM_NAME					= "Dash_Attack_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0			= { 1.0, "Glitter_Lance_SpecialAttackA.ogg" },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 0.8, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_ATTACK",	"CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK = 
	{
		RATE				= 100,		-- 50
		ATTACK_SUCCESS 		= TRUE,
	},
	
	ATTACK_TIME0				= { 0.944, 0.962, },
	
	DISABLE_ATTACK_BOX = 
	{
		"Lhand1",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		ARRANGED_FLY 	= TRUE,
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 2000,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.2,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DASH_ATTACK =
{
	ANIM_NAME					= "Dash_Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
		
		
	SOUND_PLAY0 = { 0.21, "Swing_Medium01.ogg"},
	SOUND_PLAY1 = { 0.61, "Swing_Medium02.ogg"},
	SOUND_PLAY2 = { 1.51, "Glitter_Lance_Combo.ogg"},
	SOUND_PLAY3 = { 0.01, "Stone_Axe_Trock_Voice_AttackA01.ogg",100},
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},	
	},
	
}

function STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.324 ) then	-- 왼손 한번
		local pDamageEffect = pX2Game:GetDamageEffect()		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_A_01_Boss", pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" ), pos.y )
		end
	elseif pNPCUnit:AnimEventTimer_LUA( 0.558 ) then	-- 오른손 한번
		local pDamageEffect = pX2Game:GetDamageEffect()		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_A_02_Boss", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )
		end
	elseif pNPCUnit:AnimEventTimer_LUA( 1.235 ) then	-- 양손으로 쫙~
		local pDamageEffect = pX2Game:GetDamageEffect()		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_A_01_Boss", pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" ), pos.y )
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_A_02_Boss", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )
		end
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK =
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_AttackB01.ogg", 100},
	SOUND_PLAY1 = { 2.41, "Swing_Medium01.ogg"},
	SOUND_PLAY2 = { 2.81, "Swing_Medium02.ogg"},
	SOUND_PLAY3 = { 3.21, "Swing_Medium01.ogg"},
	SOUND_PLAY4 = { 3.61, "Swing_Medium02.ogg"},
	SOUND_PLAY5 = { 2.41, "Glitter_Lance_Win.ogg"},
	SOUND_PLAY6 = { 4.35, "Swing_Big04.ogg"},
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",			},	
	},
	
}

function STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if nil ~= pNPCUnit then
		pNPCUnit:SetNowMP( 0 )	-- 기술 사용으로 인한 MP 초기화
	end

end

function STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.469 ) then	-- 왼손 한 번
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_01", pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" ), pos.y )			
			if nil ~= pEffect and nil ~= pEffect:GetMainEffect() then
				pEffect:GetMainEffect():SetVelocity( D3DXVECTOR3( 1000, -500, 0 ) )
			end
		end
	elseif pNPCUnit:AnimEventTimer_LUA( 2.796 ) then	-- 오른손 한 번
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_02", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )			
			if nil ~= pEffect and nil ~= pEffect:GetMainEffect() then
				pEffect:GetMainEffect():SetVelocity( D3DXVECTOR3( 800, -500, 0 ) )
			end
		end
	elseif pNPCUnit:AnimEventTimer_LUA( 3.229 ) then	-- 왼손 또 한 번
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_01", pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" ), pos.y )			
			if nil ~= pEffect and nil ~= pEffect:GetMainEffect() then
				pEffect:GetMainEffect():SetVelocity( D3DXVECTOR3( 1000, -500, 0 ) )
			end
		end
	elseif pNPCUnit:AnimEventTimer_LUA( 3.545 ) then	-- 오른손 또 한 번
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_02", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )			
			if nil ~= pEffect and nil ~= pEffect:GetMainEffect() then
				pEffect:GetMainEffect():SetVelocity( D3DXVECTOR3( 1200, -500, 0 ) )
			end
		end
	elseif pNPCUnit:AnimEventTimer_LUA( 4.317 ) then	-- 양손 한 번
		local pDamageEffect = pX2Game:GetDamageEffect()
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()		
			local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_01", pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" ), pos.y )			
			if nil ~= pEffect and nil ~= pEffect:GetMainEffect() then
				pEffect:GetMainEffect():SetVelocity( D3DXVECTOR3( 1200, -500, 0 ) )
			end
			local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK_02", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )
			if nil ~= pEffect and nil ~= pEffect:GetMainEffect() then
				pEffect:GetMainEffect():SetVelocity( D3DXVECTOR3( 1400, -500, 0 ) )
			end
		end
	end
	
end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg",30},
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STONE_AXE_TROCK_BUTRUE_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 		"STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START", "CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		"CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",		"CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_ATTACK_A",				"CT_STONE_AXE_TROCK_BUTRUE_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"STONE_AXE_TROCK_BUTRUE_WAIT",	},
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START = 		-- 피격시 일정 확률로 도망
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 5,
	},
	CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 10,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 10,
	},
}

function STONE_AXE_TROCK_BUTRUE_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		
		pNPCUnit:SetFlag_LUA( 0, true )	-- 도망가는 AI를 위해
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageB01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "STONE_AXE_TROCK_BUTRUE_ESCAPE_BACK_START", "CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_BACK_START",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		"CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",		"CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_ATTACK_A",				"CT_STONE_AXE_TROCK_BUTRUE_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"STONE_AXE_TROCK_BUTRUE_WAIT",	},
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_BACK_START = 		-- 피격시 일정 확률로 반격
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 5,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_SPECIAL_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_DASH_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 10,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 10,
	},
}

function STONE_AXE_TROCK_BUTRUE_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START =
{
	ANIM_NAME					= "Escape_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	--APPLY_ANIM_MOVE				= FALSE,
	
	--PASSIVE_SPEED_X				= -200,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN",		},
	},
}

function STONE_AXE_TROCK_BUTRUE_ESCAPE_FRONT_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	if true == pNPCUnit:GetIsRight() then
		pNPCUnit:SetIsRight( false )
	else
		pNPCUnit:SetIsRight( true )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_BACK_START =
{
	ANIM_NAME					= "Escape_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	APPLY_ANIM_MOVE				= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN = 
{
	ANIM_NAME					= "Escape_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_DOWN",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_ESCAPE_END",			"CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_END",				},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BLOOD_EATER_RUN_JUMP_UP_DIR",					"CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_UP_DIR",					"CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_UP_DIR",		},
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_END =		-- 도망 기능이 풀리면 도망 종료 스테이트로
	{
		FLAG_FALSE					= 0,
	},
	
	CT_STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE				= 10,		
	}
}

function STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local bEnableEscpae = pNPCUnit:GetFlag_LUA( 0 )			-- 도망가는 AI Flag 설정
	
	if false == bEnableEscpae then
		pNPCUnit:SetFlag_LUA( 0, true )
		pNPCUnit:SetTimerRestart( 0 )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_END =
{
	ANIM_NAME					= "Escape_End",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"STONE_AXE_TROCK_BUTRUE_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_LANDING",	},
	},
}

function STONE_AXE_TROCK_BUTRUE_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_LANDING = 
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
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_ESCAPE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_ESCAPE_RUN",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg",30},
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_STAND_UP_FRONT",	},
	},
	
}

function STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageB01.ogg",30},
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_STAND_UP_BACK",		},
	},
	
}

function STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg",30},

	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageB01.ogg",30},
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg",30},
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_WAIT", },
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirDownFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_STAND_UP_FRONT",	},
	},
}

function STONE_AXE_TROCK_BUTRUE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

STONE_AXE_TROCK_BUTRUE_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"STONE_AXE_TROCK_BUTRUE_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"STONE_AXE_TROCK_BUTRUE_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.01, "Stone_Axe_Trock_Voice_Dying01.ogg",30 },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
STONE_AXE_TROCK_BUTRUE_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.01, "Stone_Axe_Trock_Voice_Dying01.ogg",30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

STONE_AXE_TROCK_BUTRUE_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.01, "Stone_Axe_Trock_Voice_Dying01.ogg",30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function STONE_AXE_TROCK_BUTRUE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

function STONE_AXE_TROCK_BUTRUE_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local bEnableEscpae = pNPCUnit:GetFlag_LUA( 0 )						-- 도망가는 AI Flag 설정
	
	if true == bEnableEscpae then
		
		local fEscapeTime = pNPCUnit:GetTimerElapsedTime( 0 )
	
		if 1.0 <= fEscapeTime then
		
			pNPCUnit:SetFlag_LUA( 0, false )
			pNPCUnit:SetTimerRestart( 0 )
		
		end
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end