-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 0.9,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"smoke.dds",
		"GroundShockWave.dds",
		"Explosion_Sphere.dds",
		"Particle_Blur.dds",
		"waldo_trock_passive_flame.DDS",
		"secretVelder_perpit_fire_flame.DDS",
		"Pa_Ran_SpaD_Smoke03.dds",
		"acce_fireWork_fireParticle.dds",
		"WhitePoint.dds",
		"trockBome_0_MagicAttackA_piece.dds",
		"waldo_trock_specialAttackA_SparkCircle.dds",
		"AeroTornado07.dds",
		"Condense_Pulse02.dds",
		"waldo_trock_specialAttackB_cry_waveLine.dds",
		"BURSTING_BLADE_flame.DDS",
		"waldo_trock_specialAttackB_particle.DDS",
	},
	READY_XMESH = 
	{
		"waldo_trock_attackA_spark.y",
	},
	READY_XSKIN_MESH = 
	{
		"aisha_active_energySpurt_circle.X",
		"DummyAttackBox_50x50x50.x",
		"trockBome_0_MagicAttackA_spark02.X",
		"trockBome_0_MagicAttackA_spark01.X",
	},	
	
	READY_SOUND = 
	{
		"Waldo_Trock_Voice_AttackA01.ogg",
		"Waldo_Trock_Voice_AttackA02.ogg",
		"Waldo_Trock_Voice_DamageA01.ogg",
		"Waldo_Trock_Voice_DamageA02.ogg",
		"Waldo_Trock_Voice_DamageA03.ogg",
		"Waldo_Trock_Voice_Dying01.ogg",
		"Waldo_Trock_Voice_Dying02.ogg",
		"Waldo_Trock_Voice_MagicAttackB01.ogg",
		"Waldo_Trock_Voice_MagicAttackB02.ogg",
		"Waldo_Trock_Voice_MagicAttackB03.ogg",
		"Waldo_Trock_Voice_SpecialAttackA01.ogg",
		"Waldo_Trock_Voice_SpecialAttackA02.ogg",
		"Waldo_Trock_Voice_SpecialAttackA03.ogg",
		"Waldo_Trock_Voice_SpecialAttackB01.ogg",
		"Waldo_Trock_Voice_SpecialAttackB02.ogg",
		"Waldo_Trock_Voice_Wait01.ogg",
		"Waldo_Trock_Voice_WaitStart01.ogg",
		"Waldo_Trock_Voice_Win01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Waldo_Trock.x",
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
	IMMUNITY_TIME_STOP = TRUE,
	
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
	
	RAGE_COUNT_MAX		= 50,
	RAGE_TIME_MAX		= 5,
	
	DIE_FLY					= 0,	
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "WALDO",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_WALDO.dds",
}

INIT_STATE = 
{
	{ STATE_NAME = "WALDO_TROCK_START_READY",				LUA_STATE_START_FUNC = "WALDO_TROCK_START_READY_STATE_START",			},
	{ STATE_NAME = "WALDO_TROCK_START",						LUA_STATE_START_FUNC = "WALDO_TROCK_START_STATE_START",					},
		
	{ STATE_NAME = "WALDO_TROCK_WAIT",						},
	{ STATE_NAME = "WALDO_TROCK_WAIT_HABIT",				},
	
	{ STATE_NAME = "WALDO_TROCK_WALK",						LUA_STATE_END_FUNC = "WALDO_TROCK_WALK_STATE_END",						},

	{ STATE_NAME = "WALDO_TROCK_DASH",						},
	{ STATE_NAME = "WALDO_TROCK_DASH_END",					},
	
	{ STATE_NAME = "WALDO_TROCK_JUMP_UP",					},
	{ STATE_NAME = "WALDO_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "WALDO_TROCK_JUMP_DOWN_STATE_END",					},
	{ STATE_NAME = "WALDO_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "WALDO_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "WALDO_TROCK_JUMP_DOWN_DIR_STATE_END",				},
	{ STATE_NAME = "WALDO_TROCK_JUMP_LANDING",				},

	-- 일반 공격
	{ STATE_NAME = "WALDO_TROCK_ATTACK_A",					STATE_COOL_TIME	= 5,		},
	{ STATE_NAME = "WALDO_TROCK_ATTACK_B",					STATE_COOL_TIME	= 5,		},
	-- 돌 투척 공격
	
	{ STATE_NAME = "WALDO_TROCK_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_MAGIC_ATTACK_A_FRAME_MOVE",		STATE_COOL_TIME	= 8,		},
	
	-- 최대 스케일에 도달되었을 때 폭발하는 공격
	{ STATE_NAME = "WALDO_TROCK_SPECIAL_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_SPECIAL_ATTACK_A_FRAME_MOVE",		STATE_COOL_TIME	= 25,	},
	-- 강한 전방 공격 ( MP 소모 )
	{ STATE_NAME = "WALDO_TROCK_SPECIAL_ATTACK_B",			LUA_STATE_START_FUNC = "WALDO_TROCK_SPECIAL_ATTACK_B_STATE_START",
															LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_SPECIAL_ATTACK_B_FRAME_MOVE",			STATE_COOL_TIME	= 25,	},
	
	--리액션 관련
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_FRONT",				LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_AIR",				},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE",	},
	
	{ STATE_NAME = "WALDO_TROCK_STAND_UP_FRONT",			},
	{ STATE_NAME = "WALDO_TROCK_STAND_UP_BACK",				},
	
	{ STATE_NAME = "WALDO_TROCK_DAMAGE_REVENGE",			},
	
	{ STATE_NAME = "WALDO_TROCK_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "WALDO_TROCK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "WALDO_TROCK_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "WALDO_TROCK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "WALDO_TROCK_DYING_SKY",					LUA_STATE_START_FUNC = "WALDO_TROCK_DYING_LAND_STATE_START",			},
	
	START_STATE					= "WALDO_TROCK_START_READY",
	WAIT_STATE					= "WALDO_TROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "WALDO_TROCK_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "WALDO_TROCK_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "WALDO_TROCK_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "WALDO_TROCK_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "WALDO_TROCK_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "WALDO_TROCK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "WALDO_TROCK_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "WALDO_TROCK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "WALDO_TROCK_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "WALDO_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "WALDO_TROCK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "WALDO_TROCK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "WALDO_TROCK_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "WALDO_TROCK_DAMAGE_AIR_DOWN","WALDO_TROCK_DAMAGE_AIR_FALL","WALDO_TROCK_STAND_UP_FRONT","WALDO_TROCK_STAND_UP_BACK",
		"WALDO_TROCK_JUMP_DOWN","WALDO_TROCK_JUMP_LANDING",	},	
	
	DYING_LAND_FRONT			= "WALDO_TROCK_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "WALDO_TROCK_DYING_LAND_BACK",
	DYING_SKY					= "WALDO_TROCK_DYING_SKY",

	COMMON_FRAME_FUNC           = "WALDO_TROCK_COMMON_FRAME_MOVE",
	
	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 9999,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 700,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   	-- 70,
		FAR_WALK_RATE		= 0,   	-- 30,
		
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

WALDO_TROCK_START_READY =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	
	-- Dry_Sander_Event_NPC_Karis.lua 에서 이벤트 신 종료 후, 시작 스테이트로 변경시켜 준다.
}

function WALDO_TROCK_START_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	-- local iDungeonLevel = pX2Game:GetGameLevel()
	
	-- if iDungeonLevel > 0 then	-- 어려움, 매우 어려움 에서는 이벤트 신 없이 바로 시작
		-- pNPCUnit:StateChange_LUA("WALDO_TROCK_START", true)
	-- else								-- 보통 에서는 이벤트 신 끝나기 전까지 숨김
		-- pNPCUnit:SetShowGage( false )
		-- pNPCUnit:SetShow( false )
	-- end
	
	pNPCUnit:SetShowGage( false )
	pNPCUnit:SetShow( false )
	
end
----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_START = 
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	SOUND_PLAY0					= { 0.01, "Waldo_Trock_Voice_WaitStart01.ogg", 100, FALSE, -1.0, FALSE },	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "WALDO_TROCK_WAIT", "CT_WALDO_TROCK_WAIT", },
	},
}

function WALDO_TROCK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 이벤트 신 끝나면, 활성화 시킴
	pNPCUnit:SetShowGage( true )
	pNPCUnit:SetShow( true )

	pNPCUnit:SetTimerRestart( 0 )		-- 유닛 스케일 증가 쿨타임
	pNPCUnit:SetFlag_LUA( 0, false )	-- 생성 후 20초 지났는지 여부 ( 20초 후 스케일이 커진다. )
	pNPCUnit:SetFlag_LUA( 1, false )	-- 현재 유닛 스케일이 1.5 이상이라면, true
	pNPCUnit:SetFlag_LUA( 2, false )	-- 현재 버프 적용 여부

end
----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",		},
	},
}
----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_WAIT = 
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
	EVENT_INTERVAL_TIME0		= 0,
	
	SOUND_PLAY0 = { 0.01, "Waldo_Trock_Voice_Wait01.ogg",30},
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_A",		"CT_WALDO_TROCK_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_A",				"CT_WALDO_TROCK_ATTACK_A",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_B",				"CT_WALDO_TROCK_ATTACK_B",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_B",		"CT_WALDO_TROCK_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_MAGIC_ATTACK_A",		"CT_WALDO_TROCK_MAGIC_ATTACK_A",		},
	
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"WALDO_TROCK_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"WALDO_TROCK_DASH",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WALDO_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WALDO_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WALDO_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WALDO_TROCK_JUMP_DOWN_DIR",		},
	},
	CT_WALDO_TROCK_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	CT_WALDO_TROCK_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 40,
	},
		
	CT_WALDO_TROCK_MAGIC_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_WALDO_TROCK_SPECIAL_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	CT_WALDO_TROCK_SPECIAL_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		FLAG_TRUE					= 1,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_WALK = 
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	
	SOUND_PLAY0	= { 0.08, "Landing_RawMeat01.ogg"},
	SOUND_PLAY1 = { 0.80, "Landing_RawMeat02.ogg"},

	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_A",		"CT_WALDO_TROCK_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_A",				"CT_WALDO_TROCK_ATTACK_A",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_B",				"CT_WALDO_TROCK_ATTACK_B",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_B",		"CT_WALDO_TROCK_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_MAGIC_ATTACK_A",		"CT_WALDO_TROCK_MAGIC_ATTACK_A",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"WALDO_TROCK_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"WALDO_TROCK_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WALDO_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WALDO_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WALDO_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WALDO_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_WALDO_TROCK_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	CT_WALDO_TROCK_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 40,
	},
		
	CT_WALDO_TROCK_MAGIC_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_WALDO_TROCK_SPECIAL_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	CT_WALDO_TROCK_SPECIAL_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		FLAG_TRUE					= 1,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
}

function WALDO_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DASH = 
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
	
	SOUND_PLAY0 = { 0.35, "Landing_RawMeat01.ogg"},
	SOUND_PLAY1 = { 0.85, "Landing_RawMeat02.ogg"},

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN_DIR",	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_A",		"CT_WALDO_TROCK_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_A",				"CT_WALDO_TROCK_ATTACK_A",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_B",				"CT_WALDO_TROCK_ATTACK_B",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_B",		"CT_WALDO_TROCK_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_MAGIC_ATTACK_A",		"CT_WALDO_TROCK_MAGIC_ATTACK_A",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"WALDO_TROCK_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WALDO_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WALDO_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WALDO_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WALDO_TROCK_JUMP_DOWN_DIR",	},
	},
	
	CT_WALDO_TROCK_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	CT_WALDO_TROCK_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 40,
	},
		
	CT_WALDO_TROCK_MAGIC_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_WALDO_TROCK_SPECIAL_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	CT_WALDO_TROCK_SPECIAL_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		FLAG_TRUE					= 1,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DASH_END = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",				},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "WALDO_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_JUMP_LANDING",	},
	},
}

function WALDO_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "WALDO_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_JUMP_LANDING",	},
	},
}

function WALDO_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0			= { 0.121, "Landing_Big_Metal02.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},
	},
}


WALDO_TROCK_ATTACK_A = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 0.9,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_TIME0		= { 900, -1, 0.9, 1}, 
	SPEED_TIME1		= { 0,   -1, 1.2, 1}, 

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SOUND_SET0_RATE = 50, 
	SOUND_SET1_RATE = 50, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_AttackA01.ogg", 30 },      
			SOUND_PLAY1		= { 1.0, "Swing_Big05.ogg" },			
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_AttackA02.ogg", 30 },     
			SOUND_PLAY1		= { 1.0, "Swing_Big05.ogg" },			
		},                     
	},
	SUPER_ARMOR					= TRUE,
	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 1.1, 1.127, },
	DISABLE_ATTACK_BOX 			= { "Hand",},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 4.5,
		},
		
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 2000,
		
		CAMERA_CRASH_GAP		= 1,	
		CAMERA_CRASH_TIME		= 0.2,	
		--STOP_TIME_DEF			= 0.1,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Waldo_Trock_Attack", 0.5,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END 		= TRUE,
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE, 
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_ATTACK_B = 
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 2.0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 0.5, },

    SOUND_PLAY0			= { 0.2, "Waldo_Trock_Voice_DamageA01.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},	
	},
		
	EFFECT_SET_LIST =
	{
		"EffectSet_Waldo_Trock_Attack_B_DE", 1.9,	
	},
}
----------------------------------------------------------------------------------------------------------------------------------------


-- 돌 투척 공격
WALDO_TROCK_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "Magicl_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
		
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_MagicAttackB01.ogg", 30 },  
			SOUND_PLAY1			= { 0.9, "Landing_Big_Metal01.ogg" },
			SOUND_PLAY2			= { 1.95, "Swing_Big02.ogg" },			
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_MagicAttackB02.ogg", 30 },         
			SOUND_PLAY1			= { 0.9, "Landing_Big_Metal01.ogg" },
			SOUND_PLAY2			= { 1.95, "Swing_Big02.ogg" },			
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_MagicAttackB03.ogg", 30 },  
			SOUND_PLAY1			= { 0.9, "Landing_Big_Metal01.ogg" },
			SOUND_PLAY2			= { 1.95, "Swing_Big02.ogg" },			
		},                     
	},
	
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Waldo_Trock_Magic_Attack_A", 0.7,	
	},
	
}

function WALDO_TROCK_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
	
		--local vSummonPos 		= pNPCUnit:GetBonePos_LUA( "Bip01" )
		local vSummonLandPos 	= pNPCUnit:GetLandPosition_LUA()
		local bIsRight 	 		= pNPCUnit:GetIsRight()
		
		vSummonPos.z = vSummonLandPos.z
		
		if true == bIsRight then
			vSummonLandPos.x = vSummonLandPos.x + 450
		else
			vSummonLandPos.x = vSummonLandPos.x - 450
		end
		
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_WALDO_TROCK_STONE"], pNPCUnit:GetHardLevel(), false, vSummonLandPos, bIsRight, 0.0, true )

	end
	
end

----------------------------------------------------------------------------------------------------------------------------------------

-- 최대 스케일에 도달되었을 때 폭발하는 공격
WALDO_TROCK_SPECIAL_ATTACK_A = 
{
	ANIM_NAME					= "Special_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 0.5,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_22060,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},	
	
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_SpecialAttackA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_SpecialAttackA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_SpecialAttackA03.ogg", 30 },                               
		},                     
	},
		
	
	EVENT_PROCESS = 
	{	
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"WALDO_TROCK_WAIT", "CT_WALDO_TROCK_WAIT", },
	},
	
	CT_WALDO_TROCK_WAIT =
	{
		ANIM_EVENT_TIMER	= 3.6,
		RATE				= 100,
		--ATTACK_SUCCESS		= TRUE,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Waldo_Trock_Special_Attack_A_1", 0.0,	
		"EffectSet_Waldo_Trock_Special_Attack_A_2", 1.0,	
		"EffectSet_Waldo_Trock_Special_Attack_A_3", 1.5,	
	},
	
}

function WALDO_TROCK_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.14 ) then
		pNPCUnit:EraseBuffTempletFromGameUnit_LUA( BUFF_TEMPLET_ID["BTI_BUFF_WALDO_TROCK"] )	-- 버프 제거
		-- 몸 색 정상으로 변경
		pNPCUnit:SetUnitColor( 1.0 , 1.0 , 1.0 , 1 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		EraseBuffFire( pX2Game, pNPCUnit )		-- 버프 이펙트 제거
		pNPCUnit:SetFlag_LUA( 1, false )		-- 초기화
		pNPCUnit:SetFlag_LUA( 2, false )		-- 버프 해제 중 표시 설정
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 강한 전방 공격
WALDO_TROCK_SPECIAL_ATTACK_B = 
{
	ANIM_NAME					= "Special_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1.0,
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	
		
	SOUND_SET0_RATE = 50, 
	SOUND_SET1_RATE = 50, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_SpecialAttackB01.ogg", 30 },  
			SOUND_PLAY1			= { 5.2, "Swing_Big04.ogg" },
			
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_SpecialAttackB02.ogg", 30 },    
			SOUND_PLAY1			= { 5.2, "Swing_Big04.ogg" },
			
		},                     
	},

	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},	
	},
	
	ATTACK_TIME0				= { 5.181, 5.211, },
	
	DISABLE_ATTACK_BOX 			= { "Hand",},
	
	TRACE = TRUE,
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 15,
		},
		
		BACK_SPEED_X			= 2000,
		BACK_SPEED_Y			= 2000,
		
		CAMERA_CRASH_GAP		= 1,	
		CAMERA_CRASH_TIME		= 0.2,	
		--STOP_TIME_DEF			= 0.1,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Waldo_Trock_Special_Attack_B", 0.0,	
		"EffectSet_Waldo_Trock_Special_Attack_B_Fire", 0.0,		
		
	},
}

function WALDO_TROCK_SPECIAL_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	if nil ~= pNPCUnit then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(0)
	end

end

function WALDO_TROCK_SPECIAL_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "WALDO_TROCK_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

 					
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 
	
	

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },                               
		},                     
	},

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_A_BIG",		"CT_WALDO_TROCK_ATTACK_A_BIG",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_B",		"CT_WALDO_TROCK_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_B",		"CT_WALDO_TROCK_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_A",		"CT_WALDO_TROCK_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"WALDO_TROCK_WAIT",			 },
	},
	
	CT_WALDO_TROCK_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 10,
	},
	CT_WALDO_TROCK_ATTACK_A_BIG = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 10,
		--MY_MP_MORE_THAN_PERCENT		= 100,
	},
	
	CT_WALDO_TROCK_SPECIAL_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 10,
		--HAVE_TARGET					= 1,
		--MY_MP_MORE_THAN_PERCENT		= 70,
	},
	
	CT_WALDO_TROCK_SPECIAL_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		FLAG_TRUE					= 1,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 80,
	},
}

function WALDO_TROCK_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


					
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },                               
		},                     
	},

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_A_BIG",		"CT_WALDO_TROCK_ATTACK_A_BIG",				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_ATTACK_B",			"CT_WALDO_TROCK_ATTACK_B",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_B",		"CT_WALDO_TROCK_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"WALDO_TROCK_SPECIAL_ATTACK_A",		"CT_WALDO_TROCK_SPECIAL_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"WALDO_TROCK_WAIT",			 },
	},
	
	CT_WALDO_TROCK_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 10,
	},
	CT_WALDO_TROCK_ATTACK_A_BIG = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 10,
		--MY_MP_MORE_THAN_PERCENT		= 100,
	},
	
	CT_WALDO_TROCK_SPECIAL_ATTACK_B = 
	{
	    EVENT_INTERVAL_ID           = 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 10,
		--HAVE_TARGET					= 1,
		--MY_MP_MORE_THAN_PERCENT		= 70,
	},
	
	CT_WALDO_TROCK_SPECIAL_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID           = 0,
		FLAG_TRUE					= 1,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 80,
	},
}

function WALDO_TROCK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

		
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },     
    SOUND_PLAY1			= { 0.95, "Landing_Big_Meat02.ogg" },			
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },  
    SOUND_PLAY1			= { 0.95, "Landing_Big_Meat02.ogg" },			
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },    
    SOUND_PLAY1			= { 0.95, "Landing_Big_Meat02.ogg" },			
		},                     
	},

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "WALDO_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_STAND_UP_FRONT",	},
	},
	
}

function WALDO_TROCK_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },     
    SOUND_PLAY1			= { 0.95, "Landing_Big_Meat01.ogg" },			
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },  
    SOUND_PLAY1			= { 0.95, "Landing_Big_Meat01.ogg" },			
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },    
    SOUND_PLAY1			= { 0.95, "Landing_Big_Meat01.ogg" },			
		},                     
	},



	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "WALDO_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_STAND_UP_BACK",	},
	},
	
}

function WALDO_TROCK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
				
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },                               
		},                     
	},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
			
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },                               
		},                     
	},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_DAMAGE_DOWN_BACK",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_WAIT", },
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

WALDO_TROCK_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },                               
		},                     
	},

	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
					
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA01.ogg", 30 },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA02.ogg", 30 },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Waldo_Trock_Voice_DamageA03.ogg", 30 },                               
		},                     
	},

	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "WALDO_TROCK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "WALDO_TROCK_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Landing_Big_Metal01.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_STAND_UP_FRONT",	},
	},
}

function WALDO_TROCK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

WALDO_TROCK_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},
	},
}

WALDO_TROCK_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WALDO_TROCK_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALDO_TROCK_WAIT",			},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 1.00, "Landing_Big_Meat02.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
WALDO_TROCK_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.95, "Landing_Big_Meat01.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0 				= { 0.01, "Landing_Big_Metal01.ogg"},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function WALDO_TROCK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

function WALDO_TROCK_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 생성 후 20초 지났는지 검사
	local bEnableIncreaseScale = pNPCUnit:GetFlag_LUA( 0 )		-- 20초가 지나서 스케일 변경 구문 동작할 수 있는지 여부
	
	if false == bEnableIncreaseScale then	-- 아직 20초 않지났다면, 쿨타임 증가
	
		local fIncreaseScaleTime = pNPCUnit:GetTimerElapsedTime( 0 )	-- 20초 쿨타임 증가
		
		if 15.0 <= fIncreaseScaleTime then	-- 20초 지남
			pNPCUnit:SetFlag_LUA( 0, true )	-- 이제 10초당 스케일 커질 수 있음
			pNPCUnit:SetTimerRestart( 0 )	-- 스케일 증가 쿨타임 초기화
		end
		
		return		-- 아직 스케일 증가 구문을 적용해선 않됨
	
	end

	-- 10초당 유닛 스케일 증가
	local bIsMaxScale = pNPCUnit:GetFlag_LUA( 1 )	-- 최대 스케일 도달 여부

	if false == bIsMaxScale then					-- 아직 최대 스케일에 도달이 않되었을 때
	
		local fIncreaseScaleTime = pNPCUnit:GetTimerElapsedTime( 0 )	-- 스케일 쿨타임 증가
		
		if 4 <= fIncreaseScaleTime then					-- 이게 지나면 스케일 증가
		
			pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_WALDO_TROCK"] )	-- 버프 실행
			
			SetBuffFire( pX2Game, pNPCUnit )		-- 버프 이펙트 생성
			
			local vSetScale = pNPCUnit:GetChangeUnitScaleByBuff()		-- 스케일 증가치 반환
			
			if 1.2 <= vSetScale.x then				-- 최대 1.2
				pNPCUnit:SetFlag_LUA( 1, true )		-- 최대 스케일에 도달하여, Special Attack A 사용 가능
				-- 몸 붉은색으로 변경
				pNPCUnit:SetUnitColor( 0.7 , 0.1 , 0.1 , 1 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
			end
			
			pNPCUnit:SetTimerRestart( 0 )			-- 스케일 증가 쿨타임 초기화
			
		end
	
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 버프 이펙트 생성 함수
function SetBuffFire( pX2Game, pNPCUnit )
		
	local bEnablePassiveBuff = pNPCUnit:GetFlag_LUA( 2 )	-- 현재 버프 적용중인가
	
	if false == bEnablePassiveBuff then
	
		local pEffectSet = pX2Game:GetEffectSet()			-- 버프 이펙트 생성
	
		if nil ~= pEffectSet then
		
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Waldo_Passive", pNPCUnit )
			
			if nil ~= hEffect then
			
				pNPCUnit:SetEffectSet_LUA( 0, hEffect )
				pNPCUnit:SetFlag_LUA( 2, true)				-- 버프 적용 중 표시 설정
				
			end
			
		end
	
	end
	
end

-- 버프 이펙트 삭제 함수
function EraseBuffFire( pX2Game, pNPCUnit )

	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )		-- 불붙는 이펙트 셋이 존재하는가
	
	if nil == hEffect then
		return
	end
	
	local pEffectSet = pX2Game:GetEffectSet()			-- 버프 이펙트 삭제
	
	if nil ~= pEffectSet then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end

end

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

