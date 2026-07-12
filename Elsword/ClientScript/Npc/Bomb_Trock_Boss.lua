-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 400.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.2,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Particle_Blur.DDS",
		"Steam_BP.DDS",
		"trockBome_0_MagicAttackA_pieceCircle.dds",
		"RVC_SA_DeadlyRaid_spark.dds",
		"trockBome_0_MagicAttackA_piece.dds",
		"WhitePoint.dds",
		"AeroTornado07.dds",
		"Condense_Pulse02.dds",
		"waldo_trock_specialAttackB_cry_waveLine.dds",
		"BURSTING_BLADE_flame.DDS",
		"waldo_trock_specialAttackB_particle.DDS",
		"trockBome_0_Chase_fireWork.dds",
		"acce_fireWork_fireParticle.dds",
		"Arme_Critical.dds",
	},
	READY_XSKIN_MESH = 
	{
		"raven_powrUp_M_lightning02.Y",
		"trockBome_0_MagicAttackA_spark01.X",
		"DummyAttackBox_50x50x50.X",
		"trockBome_0_MagicAttackA_spark02.X",
	},	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_BOMB_TROCK_BOSS_Sorted.x",
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
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Symbol.x",
		WEAPON_BONE_NAME			= "Dummy03",
			
		ALPHA_OBJECT				= TRUE,
		
		Z_ENABLE_FOR_THIS_WEAPON 	= TRUE,
		
		WEAPON_ROTAION_X			= 90,
		WEAPON_SCALE_X				= 2,
		WEAPON_SCALE_Y				= 2,
		WEAPON_SCALE_Z				= 2,
	},
	
	WEAPON1 = 
	{
		WEAPON_FILE_NAME	= "Symbol.x",
		WEAPON_BONE_NAME	= "Dummy04",
			
		ALPHA_OBJECT				= TRUE,
		
		Z_ENABLE_FOR_THIS_WEAPON 	= TRUE,
		
		WEAPON_ROTAION_X			= 90,
		WEAPON_SCALE_X				= 2,
		WEAPON_SCALE_Y				= 2,
		WEAPON_SCALE_Z				= 2,
	},
}

INIT_STATE = 
{
	{ STATE_NAME = "BOMB_TROCK_BOSS_START",						LUA_STATE_START_FUNC = "BOMB_TROCK_BOSS_START_STATE_START",					},
		
	{ STATE_NAME = "BOMB_TROCK_BOSS_WAIT",						},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_WAIT_HABIT",				},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_WALK",						LUA_STATE_END_FUNC = "BOMB_TROCK_BOSS_WALK_STATE_END"						},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_DASH",						},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DASH_END",					},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_UP",					},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_DOWN",					LUA_STATE_END_FUNC = "BOMB_TROCK_BOSS_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_UP_DIR",				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "BOMB_TROCK_BOSS_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_LANDING",				},

	-- 폭발 대상을 향해 달려가는 스테이트
	{ STATE_NAME = "BOMB_TROCK_BOSS_CHASE",						LUA_STATE_START_FUNC = "BOMB_TROCK_BOSS_CHASE_STATE_START",					},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_UP_CHASE",				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_DOWN_CHASE",			LUA_STATE_END_FUNC = "BOMB_TROCK_BOSS_JUMP_DOWN_CHASE_STATE_END"					},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_UP_DIR_CHASE",			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_DOWN_DIR_CHASE",		LUA_STATE_END_FUNC = "BOMB_TROCK_BOSS_JUMP_DOWN_DIR_CHASE_STATE_END"				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_JUMP_LANDING_CHASE",		},
	
	-- 근접 평타 공격
	{ STATE_NAME = "BOMB_TROCK_BOSS_ATTACK",			STATE_COOL_TIME = 3,		},
	-- 달려가서 배로 치는 공격
	{ STATE_NAME = "BOMB_TROCK_BOSS_DASH_ATTACK",		STATE_COOL_TIME = 3,		},
	-- 새끼 포그타 트락 소환 공격
	{ STATE_NAME = "BOMB_TROCK_BOSS_SUMMON_ATTACK",				LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_ATTACK_FRAME_MOVE",				STATE_COOL_TIME = 15,		},
	-- 폭발 공격( 사망하지 않는 자폭 )
	{ STATE_NAME = "BOMB_TROCK_BOSS_EXPLOSION_ATTACK",			LUA_STATE_START_FUNC = "BOMB_TROCK_BOSS_EXPLOSION_ATTACK_STATE_START",
																LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_EXPLOSION_ATTACK_FRAME_MOVE",	STATE_COOL_TIME = 15,	},
	
	--리액션 관련
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_AIR",				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_STAND_UP_FRONT",			},
	{ STATE_NAME = "BOMB_TROCK_BOSS_STAND_UP_BACK",				},
	
	{ STATE_NAME = "BOMB_TROCK_BOSS_DAMAGE_REVENGE",			},
	-- 사망하면서 폭발
	{ STATE_NAME = "BOMB_TROCK_BOSS_DYING_EXPLOSION",			LUA_STATE_START_FUNC = "BOMB_TROCK_BOSS_DYING_EXPLOSION_STATE_START",
																LUA_FRAME_MOVE_FUNC = "BOMB_TROCK_BOSS_DYING_EXPLOSION_FRAME_MOVE",			},
	
	START_STATE					= "BOMB_TROCK_BOSS_START",
	WAIT_STATE					= "BOMB_TROCK_BOSS_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "BOMB_TROCK_BOSS_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "BOMB_TROCK_BOSS_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "BOMB_TROCK_BOSS_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "BOMB_TROCK_BOSS_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "BOMB_TROCK_BOSS_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "BOMB_TROCK_BOSS_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "BOMB_TROCK_BOSS_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "BOMB_TROCK_BOSS_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "BOMB_TROCK_BOSS_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "BOMB_TROCK_BOSS_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "BOMB_TROCK_BOSS_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "BOMB_TROCK_BOSS_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "BOMB_TROCK_BOSS_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"BOMB_TROCK_BOSS_DAMAGE_AIR_FALL","BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN","BOMB_TROCK_BOSS_STAND_UP_FRONT","BOMB_TROCK_BOSS_STAND_UP_BACK",
	"BOMB_TROCK_BOSS_JUMP_DOWN","BOMB_TROCK_BOSS_JUMP_LANDING",	},
	
	
	DYING_LAND_FRONT			= "BOMB_TROCK_BOSS_DYING_EXPLOSION",
	DYING_LAND_BACK				= "BOMB_TROCK_BOSS_DYING_EXPLOSION",
	DYING_SKY					= "BOMB_TROCK_BOSS_DYING_EXPLOSION",

	COMMON_FRAME_FUNC           = "BOMB_TROCK_BOSS_COMMON_FRAME_MOVE",
	
	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 2000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2000,		-- cm
		TARGET_LOST_RANGE			= 600,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 2000,
		DEST_GAP			= 310,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 300,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 0,   		-- 70,
		FAR_WALK_RATE		= 0,  	 	-- 30,
		
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
		ONLY_THIS_LINE_GROUP	= FALSE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,		-- cm
		ESCAPE_GAP			= 10,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 0, 		-- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    	-- 30,
		DOWN_DOWN_RATE		= 0,
	},

}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	SOUND_PLAY0					= { 0.01, "Bomb_Trock_Boss_Voice_WaitStart01.ogg", 100, FALSE, -1.0, FALSE },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BOMB_TROCK_BOSS_WAIT", "CT_BOMB_TROCK_BOSS_WAIT", },
	},
}

function BOMB_TROCK_BOSS_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )	-- 폭발 동작중 여부 ( 이펙트 처리를 위한 변수 )
	pNPCUnit:SetFlag_LUA( 1, false )	-- 폭발 동작 여부 ( 폭발 공격으로 전환하기 위한 변수 )

	pNPCUnit:SetTimerRestart( 0 )		-- 추적 유지 쿨타임

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_WAIT = 
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
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_CHASE",				"CT_BOMB_TROCK_BOSS_CHASE",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_ATTACK",				"CT_BOMB_TROCK_BOSS_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_DASH_ATTACK",			"CT_BOMB_TROCK_BOSS_DASH_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_SUMMON_ATTACK",		"CT_BOMB_TROCK_BOSS_SUMMON_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BOMB_TROCK_BOSS_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_BOSS_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_BOSS_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_BOSS_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_BOSS_JUMP_DOWN_DIR",		},
	},

	-- 근접 평타 공격
	CT_BOMB_TROCK_BOSS_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 달려가서 배로 치는 공격
	CT_BOMB_TROCK_BOSS_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 새끼 포그타 트락 소환 공격
	CT_BOMB_TROCK_BOSS_SUMMON_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 폭발 공격( 사망하지 않는 자폭 )
	CT_BOMB_TROCK_BOSS_CHASE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		MY_HP_LESS_THAN_PERCENT		= 60,		-- 체력 60% 이하
		FLAG_FALSE					= 1,		-- 폭발 공격 사용한 적 없을 때
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_WALK = 
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_CHASE",				"CT_BOMB_TROCK_BOSS_CHASE",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_ATTACK",				"CT_BOMB_TROCK_BOSS_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_DASH_ATTACK",			"CT_BOMB_TROCK_BOSS_DASH_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_SUMMON_ATTACK",		"CT_BOMB_TROCK_BOSS_SUMMON_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BOMB_TROCK_BOSS_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_BOSS_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_BOSS_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_BOSS_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_BOSS_JUMP_DOWN_DIR",		},
	},
	
	-- 근접 평타 공격
	CT_BOMB_TROCK_BOSS_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 달려가서 배로 치는 공격
	CT_BOMB_TROCK_BOSS_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 새끼 포그타 트락 소환 공격
	CT_BOMB_TROCK_BOSS_SUMMON_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 폭발 공격( 사망하지 않는 자폭 )
	CT_BOMB_TROCK_BOSS_CHASE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		MY_HP_LESS_THAN_PERCENT		= 60,		-- 체력 60% 이하
		FLAG_FALSE					= 1,		-- 폭발 공격 사용한 적 없을 때
	},
}

function BOMB_TROCK_BOSS_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DASH = 
{
	ANIM_NAME					= "Chase",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_CHASE",				"CT_BOMB_TROCK_BOSS_CHASE",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_ATTACK",				"CT_BOMB_TROCK_BOSS_ATTACK",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_DASH_ATTACK",			"CT_BOMB_TROCK_BOSS_DASH_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_SUMMON_ATTACK",		"CT_BOMB_TROCK_BOSS_SUMMON_ATTACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"BOMB_TROCK_BOSS_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_BOSS_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_BOSS_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_BOSS_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_BOSS_JUMP_DOWN_DIR",		},
	},
	
	-- 근접 평타 공격
	CT_BOMB_TROCK_BOSS_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 달려가서 배로 치는 공격
	CT_BOMB_TROCK_BOSS_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 새끼 포그타 트락 소환 공격
	CT_BOMB_TROCK_BOSS_SUMMON_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		RATE						= 30,
	},
	
	-- 폭발 공격( 사망하지 않는 자폭 )
	CT_BOMB_TROCK_BOSS_CHASE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		HAVE_TARGET					= 1,
		MY_HP_LESS_THAN_PERCENT		= 60,		-- 체력 60% 이하
		FLAG_FALSE					= 1,		-- 폭발 공격 사용한 적 없을 때
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",				},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BOMB_TROCK_BOSS_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_JUMP_LANDING",	},
	},
}

function BOMB_TROCK_BOSS_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BOMB_TROCK_BOSS_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "Jumpdown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_JUMP_LANDING",	},
	},
}

function BOMB_TROCK_BOSS_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0	= { 0.121, "Landing_Rawmeat03.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_CHASE = 
{
	ANIM_NAME					= "Chase",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN_CHASE",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_EXPLOSION_ATTACK",			"CT_BOMB_TROCK_BOSS_EXPLOSION_ATTACK",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BOMB_TROCK_BOSS_WAIT",						"CT_BOMB_TROCK_BOSS_WAIT",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"BOMB_TROCK_BOSS_CHASE",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"BOMB_TROCK_BOSS_CHASE",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"BOMB_TROCK_BOSS_JUMP_UP_CHASE",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"BOMB_TROCK_BOSS_JUMP_UP_DIR_CHASE",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"BOMB_TROCK_BOSS_JUMP_DOWN_CHASE",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"BOMB_TROCK_BOSS_JUMP_DOWN_DIR_CHASE",		},
	},
	
	-- 자폭
	CT_BOMB_TROCK_BOSS_EXPLOSION_ATTACK = 
	{
		HAVE_TARGET					= 1,
		DISTANCE_TO_TARGET_NEAR		= 500,
	},
	
	-- 추적 스테이트 처리가 종료되면, 일반 Wait로 변경
	CT_BOMB_TROCK_BOSS_WAIT = 
	{
		FLAG_FALSE					= 1,
	},
}

function BOMB_TROCK_BOSS_CHASE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	SetHeadFire( pX2Game, pNPCUnit )	-- 머리 위에 불붙임.
	
	pNPCUnit:SetFlag_LUA( 1, true )		-- 폭발 공격 사용 처리

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_UP_CHASE = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BOMB_TROCK_BOSS_JUMP_DOWN_CHASE",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_DOWN_CHASE = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_JUMP_LANDING_CHASE",	},
	},
}

function BOMB_TROCK_BOSS_JUMP_DOWN_CHASE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_UP_DIR_CHASE = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "BOMB_TROCK_BOSS_JUMP_DOWN_DIR_CHASE",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_DOWN_DIR_CHASE = 
{
	ANIM_NAME					= "Jumpdown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_JUMP_LANDING_CHASE",	},
	},
}

function BOMB_TROCK_BOSS_JUMP_DOWN_DIR_CHASE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_JUMP_LANDING_CHASE = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0	= { 0.121, "Landing_Rawmeat03.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN_CHASE",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_CHASE",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_ATTACK = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--SUPER_ARMOR					= TRUE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.0, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Boss_Voice_AttackA01.ogg",30},
	SOUND_PLAY1 = { 0.71, "PunchAttack3.ogg"},
	SOUND_PLAY2 = { 1.10, "PunchAttack6.ogg"},
	SOUND_PLAY3 = { 1.31, "PunchAttack3.ogg"},
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	ATTACK_TIME0				= { 0.777, 0.958, },
	ATTACK_TIME1				= { 1.147, 1.239, },
	ATTACK_TIME2				= { 1.592, 1.686, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.8,
		},
		
		BACK_SPEED_X			= 1000,
		--BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.3,		
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DASH_ATTACK = 
{
	ANIM_NAME					= "Dash_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	--SUPER_ARMOR					= TRUE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.0, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Boss_Voice_Dash_AttackA01.ogg",30},
	SOUND_PLAY1 = { 0.51, "fire_ready.ogg"},
	SOUND_PLAY2 = { 2.51, "bomb.ogg"},
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0				= { 0.001, 0.818, },
	ATTACK_TIME1				= { 1.003, 1.271, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.8,
		},
		
		BACK_SPEED_X			= 1000,
		--BACK_SPEED_Y			= 700,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",			},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bomb_Trock_Boss_Dash_Attack_A", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_SUMMON_ATTACK = 
{
	ANIM_NAME					= "Summon_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Boss_Voice_WaitStart01.ogg",30},
	SOUND_PLAY1 = { 0.21, "fire_ready.ogg"},
	SOUND_PLAY2 = { 0.99, "Parasite_House_Summon.ogg"},
	
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",			},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bomb_Trock_Boss_Summon_Attack_A", 0.0,	
	},
}

function BOMB_TROCK_BOSS_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.229 ) then

		local pMajorParticle = pX2Game:GetMajorParticle()
		
		if nil ~= pMajorParticle then
		
			local vBonePos = pNPCUnit:GetBonePos_LUA("Bip01_R_Finger11")
			local vPos = pNPCUnit:GetBonePos_LUA("Bip01_R_Finger11")
			
			-- 미니 포그와타 5마리 소환
			local pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Trock_Bomb_Boss_SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			if nil ~= pParticle1 then
				pParticle1:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
				local TargetPos1 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 200, true, true )
				pParticle1:SetBlackHolePosition( TargetPos1 )
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MINI_BOMB_TROCK"], pNPCUnit:GetHardLevel(), false, TargetPos1, true, 1.9, true, 10 )
			end
			
			local pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Trock_Bomb_Boss_SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			if nil ~= pParticle1 then
				pParticle2:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
				local TargetPos2 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 300, true, false )
				pParticle2:SetBlackHolePosition( TargetPos2 )
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MINI_BOMB_TROCK"], pNPCUnit:GetHardLevel(), false, TargetPos2, true, 2, true, 10 )
			end
			
			local pParticle3 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Trock_Bomb_Boss_SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			if nil ~= pParticle1 then
				pParticle3:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
				local TargetPos3 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 400, true )
				pParticle3:SetBlackHolePosition( TargetPos3 )
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MINI_BOMB_TROCK"], pNPCUnit:GetHardLevel(), false, TargetPos3, false, 2.1, true, 10 )
			end
			
			local pParticle4 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Trock_Bomb_Boss_SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			if nil ~= pParticle1 then
				pParticle4:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
				local TargetPos4 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 500, true )
				pParticle4:SetBlackHolePosition( TargetPos4 )
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MINI_BOMB_TROCK"], pNPCUnit:GetHardLevel(), false, TargetPos4, false, 2.1, true, 10 )
			end
			
			local pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Trock_Bomb_Boss_SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			if nil ~= pParticle1 then
				pParticle5:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
				local TargetPos5 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 600, true )
				pParticle5:SetBlackHolePosition( TargetPos5 )
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MINI_BOMB_TROCK"], pNPCUnit:GetHardLevel(), false, TargetPos5, false, 2.1, true, 10 )
			end
			
			pX2Game:FlushCreateNPCReq()
		
		end
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_EXPLOSION_ATTACK = 
{
	ANIM_NAME					= "Explosion",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_AttackA01.ogg",30},
	SOUND_PLAY1 = { 0.51, "fire_ready.ogg"},
	SOUND_PLAY2 = { 2.51, "bomb.ogg"},
	SOUND_PLAY3 = { 3.00, "Landing_RawMeat01.ogg"},

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",			},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bomb_Trock_Boss_Explosion", 0.0,	
	},
}

function BOMB_TROCK_BOSS_EXPLOSION_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 1, true )	-- 폭발 동작 설정

	SetHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 붙임

end

function BOMB_TROCK_BOSS_EXPLOSION_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if 0.0 >= pNPCUnit:GetNowHP() then
		pNPCUnit:StateChange_LUA("BOMB_TROCK_BOSS_WAIT", true)
	end

	if pNPCUnit:AnimEventTimer_LUA( 2.5 ) then
		
		EraseHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 끔
		
		pNPCUnit:SetUnitColor( 1.0, 1.0, 1.0, 1, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] )	-- 원본 색상 복귀
		
	end	
	
end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "BOMB_TROCK_BOSS_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.174, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BOMB_TROCK_BOSS_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 			"BOMB_TROCK_BOSS_ATTACK", 		"CT_BOMB_TROCK_BOSS_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 					"BOMB_TROCK_BOSS_WAIT",			},
	},
	
	CT_BOMB_TROCK_BOSS_ATTACK = 
	{	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
		DISTANCE_TO_TARGET_NEAR		= 500,
	},
}

function BOMB_TROCK_BOSS_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,

    SOUND_PLAY0			= { 0.01, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"BOMB_TROCK_BOSS_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 			"BOMB_TROCK_BOSS_ATTACK", 			"CT_BOMB_TROCK_BOSS_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 					"BOMB_TROCK_BOSS_WAIT",				},
	},
	
	CT_BOMB_TROCK_BOSS_ATTACK = 
	{	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
		DISTANCE_TO_TARGET_NEAR		= 500,
	},
}

function BOMB_TROCK_BOSS_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.174, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "BOMB_TROCK_BOSS_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_STAND_UP_FRONT",	},
	},
	
}

function BOMB_TROCK_BOSS_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

    SOUND_PLAY0			= { 0.1, "Bomb_Trock_Voice_DamageA01.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "BOMB_TROCK_BOSS_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_STAND_UP_BACK",		},
	},
	
}

function BOMB_TROCK_BOSS_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageA01.ogg",30},

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_WAIT", },
	},
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,

	
	
	ATTACK_TIME0				= { 0.15, 0.24, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		BACK_SPEED_X		= 1500,
		BACK_SPEED_Y		= -1000,
		
		CAN_REVENGE			= TRUE,	
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageA01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "BOMB_TROCK_BOSS_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
			SOUND_PLAY0 = { 0.01, "Bomb_Trock_Voice_DamageA01.ogg",30},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "BOMB_TROCK_BOSS_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_STAND_UP_FRONT",	},
	},
}

function BOMB_TROCK_BOSS_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then 
			pParticle:SetLandPosition( pos.y - 5 )
		end
		
		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end		
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT",		},
	},
}

BOMB_TROCK_BOSS_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BOMB_TROCK_BOSS_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMB_TROCK_BOSS_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

BOMB_TROCK_BOSS_DYING_EXPLOSION = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0 = { 2.3, "Explosion.ogg"},
	
	DYING_END					= TRUE,
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_Bomb_Trock_Boss_Dying", 1.0,	
	},
}

function BOMB_TROCK_BOSS_DYING_EXPLOSION_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	SetHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 붙임

end

function BOMB_TROCK_BOSS_DYING_EXPLOSION_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.5 ) then
	
		EraseHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 끔

    end
	
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 2.6 then
	
		local Alpha = 2.7 - fAnimationTime
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 10.0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		
	end
	
end

----------------------------------------------------------------------------------------------------------------------------------------

function BOMB_TROCK_BOSS_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local bBeChase = pNPCUnit:GetFlag_LUA(0)	-- 추적중 여부
	
	if 0.0 >= pNPCUnit:GetNowHP_LUA() then
		return
	end
	
	if true == bBeChase then
	
		local fChaseTime = pNPCUnit:GetTimerElapsedTime( 0 )	-- 1초 쿨타임 증가
		
		if 10.0 <= fChaseTime then		-- 10초 지나면 추적 스테이트 종료
		
			EraseHeadFire( pX2Game, pNPCUnit )	-- 머리 위에 불 끔
			pNPCUnit:SetFlag_LUA( 0, false )	-- 추적 스테이트 종료 처리
			
			pNPCUnit:SetUnitColor( 1.0, 1.0, 1.0, 1, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] )	-- 원본 색상 복귀
		
		end
	
	end

	local bCanExplosion = pNPCUnit:GetFlag_LUA(1)	-- 폭발 공격 가능 여부 ( 사용 여부 )

	if false == bCanExplosion then
		local fMaxRedColor 		= 1.0	-- 몸이 빨개질 수 있는 최대 색상 값 ( MAX 1.0 )			ex) 0.7 -> 최대 0.7까지 빨개짐
		local fMaxLimitHP 		= 0.4	-- 몸이 빨개질 수 있는 최대 누적 데미지 값	( MAX 1.0 ) ex) 0.4 -> 총 HP의 40%만큼 데미지를 입을 때 까지 빨개짐
		
		local fHPDamageRate 	= 1.0 - ( pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()	)	-- 현재까지 입은 데미지량
		local fChangeColorRate 	= 0.0	-- 데미지량에 따른 붉은 색상 보정치
		
		if  fMaxLimitHP > fHPDamageRate then	-- 최대 누적 데미지량을 못 넘겼다면, 현재 데미지량에 따른 붉은 색상 보정치 설정
			-- 색상 보정치 = 최대 붉은 색상값 - ( 피격 누적치에 따른 색상값 )
			fChangeColorRate = fMaxRedColor - ( fMaxRedColor * ( fHPDamageRate / fMaxLimitHP ) )
		end
		-- 데미지 누적량이 커질 때 마다 붉은 색 외의 색상을 점차 낮춘다. ( 색상 보정치 적용 )
		pNPCUnit:SetUnitColor( fMaxRedColor, fChangeColorRate, fChangeColorRate, 1, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] )
		
		
	end
	
end

-- 머리에 불 붙이는 함수
function SetHeadFire( pX2Game, pNPCUnit )

	local bIsAttackReady = pNPCUnit:GetFlag_LUA( 0 )	-- 불붙이고 쫓아오는 스테이트 인가
	
	if true == bIsAttackReady then
		return
	end
		
	local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 붙임
	
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Bomb_Trock_Boss_Summon_Attack_A", pNPCUnit )
		
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 0, hEffect )
		end
	end
	
	pNPCUnit:SetFlag_LUA( 0, true )						-- 머리 위 심지에 불붙고 쫓아오는 스테이트 설정

end

-- 머리에 불 끄는 함수
function EraseHeadFire( pX2Game, pNPCUnit )

	local bIsAttackReady = pNPCUnit:GetFlag_LUA( 0 )	-- 불붙이고 쫓아오는 스테이트 인가

	if  false == bIsAttackReady  then
		return
	end
	
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )		-- 불붙는 이펙트 셋이 존재하는가
	
	if nil == hEffect then
		return
	end
	
	local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 끔
	
	if nil ~= pEffectSet then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	pNPCUnit:SetFlag_LUA( 0, false )					-- 일반 스테이트로 설정

end

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

