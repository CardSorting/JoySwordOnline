-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 140.0,
	UNIT_HEIGHT		= 120.0,
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
	},	
	READY_XMESH = 
	{
	},
	READY_XSKIN_MESH = 
	{
	"Stone_Axe_Trock_Magic_Attack.x",
	},	
	READY_SOUND = 
	{
	"Stone_Axe_Trock_Voice_AttackA01.ogg",
	"Stone_Axe_Trock_Voice_AttackA02.ogg",
	"Stone_Axe_Trock_Voice_DamageA01.ogg",
	"Stone_Axe_Trock_Voice_DamageA02.ogg",
	"Stone_Axe_Trock_Voice_Dying01.ogg",
	"Stone_Axe_Trock_Voice_Wait01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Stone_Axe_Trock.x",
	MOTION_CHANGE_TEX_XET	= "NUI_RASH_STONE_AXE_TROCK.xet",
	MOTION_ANI_TEX_XET		= "NUI_RASH_STONE_AXE_TROCK.xet",
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
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_START",						LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_START_STATE_START",					},
	
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_WAIT",						},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_WAIT_HABIT",				},
	
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_WALK",						LUA_STATE_END_FUNC = "RASH_STONE_AXE_TROCK_WALK_STATE_END"						},

	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DASH",						LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_DASH_ESCAPE_STATE_START",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DASH_END",					},
	
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_JUMP_UP",					},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "RASH_STONE_AXE_TROCK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_JUMP_LANDING",				},

	-- 근접 연타 공격
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ATTACK_A",					LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_ATTACK_A_FRAME_MOVE",			STATE_COOL_TIME = 8,	},
	-- 도끼 투척 공격 부메랑
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A_FRAME_MOVE",		STATE_COOL_TIME = 8,	},
	
	-- 도망가기 전용 스테이트
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START",		LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START_STATE_START",	STATE_COOL_TIME = 8,	},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_BACK_START",			LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_ESCAPE_BACK_START_STATE_START", 	STATE_COOL_TIME = 8,	},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_RUN",				LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_ESCAPE_RUN_STATE_START",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_END",				LUA_STATE_END_FUNC = "RASH_STONE_AXE_TROCK_ESCAPE_END_STATE_END",				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR",		},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN_DIR",		LUA_STATE_END_FUNC = "RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_ESCAPE_JUMP_LANDING",		},
	
	--리액션 관련
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_AIR",				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_STAND_UP_FRONT",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_STAND_UP_BACK",				},
	
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DAMAGE_REVENGE",			},
	
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "RASH_STONE_AXE_TROCK_DYING_SKY",					LUA_STATE_START_FUNC = "RASH_STONE_AXE_TROCK_DYING_LAND_STATE_START",			},
	
	START_STATE					= "RASH_STONE_AXE_TROCK_START",
	WAIT_STATE					= "RASH_STONE_AXE_TROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "RASH_STONE_AXE_TROCK_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "RASH_STONE_AXE_TROCK_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "RASH_STONE_AXE_TROCK_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "RASH_STONE_AXE_TROCK_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "RASH_STONE_AXE_TROCK_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "RASH_STONE_AXE_TROCK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "RASH_STONE_AXE_TROCK_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "RASH_STONE_AXE_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "RASH_STONE_AXE_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "RASH_STONE_AXE_TROCK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "RASH_STONE_AXE_TROCK_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN","RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL",
	"RASH_STONE_AXE_TROCK_STAND_UP_FRONT", "RASH_STONE_AXE_TROCK_STAND_UP_BACK",
	"RASH_STONE_AXE_TROCK_JUMP_DOWN","RASH_STONE_AXE_TROCK_JUMP_LANDING",	},	
	
	DYING_LAND_FRONT			= "RASH_STONE_AXE_TROCK_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "RASH_STONE_AXE_TROCK_DYING_LAND_BACK",
	DYING_SKY					= "RASH_STONE_AXE_TROCK_DYING_SKY",
	
	COMMON_FRAME_FUNC           = "RASH_STONE_AXE_TROCK_COMMON_FRAME_MOVE",

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
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,
		DEST_GAP			= 700,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 750,
		
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
		FLAG_TRUE			= 30,
		RATE				= 100,
		MY_HP				= 100,		-- %, 전체 HP에 대해 현재 HP의 비율
		ESCAPE_RANGE		= 1600,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망		
	}
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "RASH_STONE_AXE_TROCK_WAIT", "CT_RASH_STONE_AXE_TROCK_WAIT", },
	},
}

function RASH_STONE_AXE_TROCK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )	-- 도망가는 AI를 위해
	pNPCUnit:SetTimerRestart( 0 )		-- 도망 타이밍
	pNPCUnit:SetInt_LUA( 0, 5 )			-- 최대 도망 시간

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_WAIT = 
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
	
	SOUND_PLAY0	= { 0.01, "Stone_Axe_Trock_Voice_Wait01.ogg",10},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_STONE_AXE_TROCK_ATTACK_A",				"CT_RASH_STONE_AXE_TROCK_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A",		"CT_RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"RASH_STONE_AXE_TROCK_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"RASH_STONE_AXE_TROCK_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_STONE_AXE_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_STONE_AXE_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_STONE_AXE_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",		},
	},
	
	CT_RASH_STONE_AXE_TROCK_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	
	CT_RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_WALK = 
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
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_STONE_AXE_TROCK_ATTACK_A",			"CT_RASH_STONE_AXE_TROCK_ATTACK_A",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A",	"CT_RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"RASH_STONE_AXE_TROCK_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"RASH_STONE_AXE_TROCK_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_STONE_AXE_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_STONE_AXE_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_STONE_AXE_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 50,
	},
	
	CT_RASH_STONE_AXE_TROCK_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
}

function RASH_STONE_AXE_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DASH = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"RASH_STONE_AXE_TROCK_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_STONE_AXE_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_STONE_AXE_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_STONE_AXE_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",	},
	},
}

function RASH_STONE_AXE_TROCK_DASH_ESCAPE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetDirPos_LUA(pNPCUnit:GetNearestUserPos()) == 0 then
		pNPCUnit:SetIsRight(true)
	else
		pNPCUnit:SetIsRight(false)
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT",				},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "RASH_STONE_AXE_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_JUMP_LANDING",	},
	},
}

function RASH_STONE_AXE_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_JUMP_LANDING",	},
	},
}

function RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_JUMP_LANDING = 
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

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ATTACK_A = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= 200,
	SPEED_Y						= 0,
	
	SOUND_PLAY0 = { 0.51, "PunchAttack.ogg"},
	SOUND_PLAY1 = { 0.75, "PunchAttack2.ogg"},
	SOUND_PLAY2 = { 0.91, "PunchAttack.ogg"},
	SOUND_PLAY3 = { 1.21, "PunchAttack2.ogg"},
	SOUND_PLAY4 = { 1.51, "PunchAttack.ogg"},
	SOUND_PLAY5 = { 1.81, "PunchAttack2.ogg"},
	SOUND_PLAY6 = { 0.01, "Stone_Axe_Trock_Voice_AttackA01.ogg",30},

	SUPER_ARMOR_TIME0			= { 0.8, 1.7, },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 0.461, 	0.468, }, 	--
	ATTACK_TIME1				= { 0.730, 	0.740, },	--
	ATTACK_TIME2				= { 0.927, 	0.931, },
	ATTACK_TIME3				= { 1.193, 	1.203, },	
	ATTACK_TIME4				= { 1.390, 	1.399, },	--
	ATTACK_TIME5				= { 1.666, 	1.671, },
	
	DISABLE_ATTACK_BOX = 
	{
		"Rhand",
		"Hand",
	},
	
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.3,
		},
		
		BACK_SPEED_X			= 400,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		RE_ATTACK				= TRUE,
		--HIT_GAP					= 0.2,
	},
	
	DAMAGE_DATA_NEXT = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		BACK_SPEED_X			= 400,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,
	},
}

function RASH_STONE_AXE_TROCK_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.577 ) then	-- 넘어뜨리는 데미지 데이타로 변경
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_NEXT" )
	end	

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR_TIME0			= { 0, 0.5, },
	
	
	SOUND_PLAY0			= { 1.00, "Glitter_SiegeReady.ogg" },
    SOUND_PLAY1			= { 2.0, "Stone_Axe_Trock_Voice_AttackB01.ogg",30 },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT",			},	
	},
}
-- 도끼 투척 공격 부메랑
function RASH_STONE_AXE_TROCK_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.91 ) then	-- 도끼 날리기
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		local pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_STONE_AXE_TROCK_MAGIC_ATTACK_A", pNPCUnit:GetBonePos_LUA( "Bip01_R_Hand" ), pos.y )
				
		pNPCUnit:SetDamageEffect_LUA( 0 , pEffect )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then	-- 도끼 회수		
	    local pEffect = pNPCUnit:GetDamageEffect_LUA(0);
		if ( pEffect ~= nil ) then
			local pMainEffect = pEffect:GetMainEffect()
			pMainEffect:SetVelocity( D3DXVECTOR3( 0, 0 , 0 ) )			
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.8 ) then	-- 도끼 회수		
	    local pEffect = pNPCUnit:GetDamageEffect_LUA(0);
		if ( pEffect ~= nil ) then
			local pMainEffect = pEffect:GetMainEffect()
			pMainEffect:SetVelocity( D3DXVECTOR3( -900, 0 , 0 ) )			
		end
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg", 30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "RASH_STONE_AXE_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageB01.ogg", 30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START", "CT_RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 		"RASH_STONE_AXE_TROCK_WAIT",				  },
	},
	
	CT_RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START = 		-- 피격시 일정 확률로 도망
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
}

function RASH_STONE_AXE_TROCK_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg", 30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "RASH_STONE_AXE_TROCK_ESCAPE_BACK_START", 	"CT_RASH_STONE_AXE_TROCK_ESCAPE_BACK_START",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 		"RASH_STONE_AXE_TROCK_WAIT",					},
	},
	
	CT_RASH_STONE_AXE_TROCK_ESCAPE_BACK_START = 		-- 피격시 일정 확률로 도망
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
}

function RASH_STONE_AXE_TROCK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START =
{
	ANIM_NAME					= "Escape_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"RASH_STONE_AXE_TROCK_ESCAPE_RUN",		},
	},
}

function RASH_STONE_AXE_TROCK_ESCAPE_FRONT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )	-- 도망가는 AI

	if true == pNPCUnit:GetIsRight() then
		pNPCUnit:SetIsRight( false )
	else
		pNPCUnit:SetIsRight( true )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_BACK_START =
{
	ANIM_NAME					= "Escape_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"RASH_STONE_AXE_TROCK_ESCAPE_RUN",		},
	},
}

function RASH_STONE_AXE_TROCK_ESCAPE_BACK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )	-- 도망가는 AI

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_RUN = 
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
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_STONE_AXE_TROCK_ESCAPE_END",			"CT_RASH_STONE_AXE_TROCK_ESCAPE_END",				},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BLOOD_EATER_RUN_JUMP_UP_DIR",			"CT_RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR",			"CT_RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"RASH_STONE_AXE_TROCK_ESCAPE_RUN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"RASH_STONE_AXE_TROCK_ESCAPE_RUN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN_DIR",	},
	},
	
	CT_RASH_STONE_AXE_TROCK_ESCAPE_END =		-- 도망 기능이 풀리면 도망 종료 스테이트로
	{
		FLAG_FALSE					= 0,
	},
	
	CT_RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE				= 10,		
	}
}

function RASH_STONE_AXE_TROCK_ESCAPE_RUN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )	-- 도망가는 AI
	
	if pNPCUnit:GetDirPos_LUA(pNPCUnit:GetNearestUserPos()) == 0 then
		pNPCUnit:SetIsRight(true)
	else
		pNPCUnit:SetIsRight(false)
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_END =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"RASH_STONE_AXE_TROCK_WAIT",		},
	},
}

function RASH_STONE_AXE_TROCK_ESCAPE_END_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetFlag_LUA( 0, false )	-- 도망가는 AI
	
	if true == pNPCUnit:GetIsRight() then
		pNPCUnit:SetIsRight(false)
	else
		pNPCUnit:SetIsRight(true)
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_ESCAPE_JUMP_LANDING",	},
	},
}

function RASH_STONE_AXE_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_ESCAPE_JUMP_LANDING = 
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

	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_ESCAPE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_ESCAPE_RUN",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg", 30},
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_STAND_UP_FRONT",	},
	},
	
}

function RASH_STONE_AXE_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageB01.ogg", 30},
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_STAND_UP_BACK",		},
	},
	
}

function RASH_STONE_AXE_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_FLY_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_FLY_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
			SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_DamageA01.ogg",30},
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "RASH_STONE_AXE_TROCK_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_STAND_UP_FRONT",	},
	},
}

function RASH_STONE_AXE_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

RASH_STONE_AXE_TROCK_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.283, "sliding02.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"RASH_STONE_AXE_TROCK_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RASH_STONE_AXE_TROCK_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_Dying01.ogg", 30},
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
RASH_STONE_AXE_TROCK_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_Dying01.ogg", 30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

RASH_STONE_AXE_TROCK_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0 = { 0.01, "Stone_Axe_Trock_Voice_Dying01.ogg", 30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function RASH_STONE_AXE_TROCK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

function RASH_STONE_AXE_TROCK_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local bEnableEscpae = pNPCUnit:GetFlag_LUA( 0 )						-- 도망가는 AI Flag 설정
	
	if true == bEnableEscpae then
		
		local fEscapeTime = pNPCUnit:GetTimerElapsedTime( 0 )
	
		if 3 <= fEscapeTime then
		
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