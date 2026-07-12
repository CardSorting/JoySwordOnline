-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"GroundShockWave.dds",
		"Particle_Blur.dds",
		"Condense_Pulse01.dds",
		"Arme_Ring2.dds",
		"Condense_Light01.dds",
		"secretVelder_alchemystBoss_magicAttackE_light.dds",
		"title_bloodAlliance_line_p03.dds",
		"Explosion_Light01.dds",
		"AeroTornado07.dds",
		"stone_AirShip.dds",
		"Condense_pulse01.dds",
		"Lire_02_CrescentKick02.dds",
		"Steam_Bp.dds",
		"soket_wind_stom_wind01.dds",
		"Sudden_Buster_P02.DDS",
		"WhitePoint.dds",
		"state_potion_flare.DDS",
		"Explosion_Fire01.dds",
		"aisha_active_heavyPress_downCircle.dds",
		"darkness_attackA_fire_smoke.dds",
		"soket_earth_quake_smoke02.DDS",
		"Karoo_Wind_Bomm01.dds",
		"Karoo_Wind_Bomm02.dds",
		"Steam_BP.dds",
		"Explosion_Sphere.dds",
		"rana_A_explosionTrap_leaf.DDS",
		"Condense_Pulse02.dds",
	},
	READY_XMESH = 
	{
		"Laser_Impact01.Y",
		"Arme_ChargeMp2.Y",
		"raven_powrUp_M_lightning01.Y",
	},
	READY_XSKIN_MESH = 
	{
		"Lire_SI_SA_Gungnir_Mesh05.X",
		"Slide_Ground_Wind01.X",
		"Triple_W_PropertyA01.X",
		"WindWard_XMesh01.X",
		"Karoo_Magic_Attack01.x",
		"rana_B_damageUp_circle_f15.X",
		"Karoo_Special_Attack_A_Tornado.X",
	},
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Karuso_Battle_Master.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -10000,
	
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
	
	DIE_FLY					= 0,	
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "KARUSO_BATTLE_MASTER",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_KARUSO.dds",
}

INIT_STATE = 
{
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_START",					LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_START_STATE_START",					},
		
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_WAIT",						LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_WAIT_STATE_END"							},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_WAIT_HABIT",				},
	
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_WALK",						LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_WALK_STATE_END"							},

	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DASH",						LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_DASH_STATE_END",							},
	
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_JUMP_UP",					},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_JUMP_DOWN",				LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_JUMP_DOWN_STATE_END"						},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_JUMP_UP_DIR",				},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",			LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR_STATE_END"					},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_JUMP_LANDING",				},

	-- 검술 연타 공격
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_ATTACK_A",				STATE_COOL_TIME = 7,	},
	-- 붕권
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_ATTACK_B",				STATE_COOL_TIME = 20,	},
	-- 검기 발사
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A_FRAME_MOVE",		STATE_COOL_TIME = 15,		},
	-- 순간 이동
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",		LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP_FRAME_MOVE",		STATE_COOL_TIME = 20,		},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN",		LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN_FRAME_MOVE"			},
	-- 바람 폭발 시전
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_COMBO",			},
	-- 연발성 파동 공격
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",			LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C_FRAME_MOVE",				
																	STATE_COOL_TIME = 4,																},
	-- 다수의 나이프 투척 공격 ( 피격시 반격 동작 )
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D",		STATE_COOL_TIME = 25,	},
	-- 순간 이동
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",		LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP_FRAME_MOVE",	STATE_COOL_TIME = 35,	},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN",	LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN_FRAME_MOVE"		},
	-- 소용돌이 생성 공격
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START",	LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START_STATE_START",	
																	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START_FRAME_MOVE",		STATE_COOL_TIME = 35, },
	-- 소용돌이 생성 공격 반복
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_LOOP",	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_LOOP_FRAME_MOVE"		},
	-- 크게 칼을 휘두르는 콤보 공격
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_COMBO",	LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_COMBO_STATE_START",	},
	
	-- 각성
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_AWAKE",					LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_AWAKE_STATE_START",		STATE_COOL_TIME = 40,			},
	
	
	--리액션 관련
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_FRONT",				LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_STATE_END",
																	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_BACK",				LUA_STATE_END_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_STATE_END",
																	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_BACK_FRAME_MOVE"					},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_FRONT",		LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_AIR",				},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_AIR_UP",			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"		},
	
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_STAND_UP_FRONT",			},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_STAND_UP_BACK",			},
	
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DAMAGE_REVENGE",			},
	
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_DYING_LAND_STATE_START",				},
	{ STATE_NAME = "KARUSO_BATTLE_MASTER_DYING_SKY",				LUA_STATE_START_FUNC = "KARUSO_BATTLE_MASTER_DYING_LAND_STATE_START",				},
	
	START_STATE					= "KARUSO_BATTLE_MASTER_START",
	WAIT_STATE					= "KARUSO_BATTLE_MASTER_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "KARUSO_BATTLE_MASTER_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "KARUSO_BATTLE_MASTER_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "KARUSO_BATTLE_MASTER_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "KARUSO_BATTLE_MASTER_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "KARUSO_BATTLE_MASTER_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "KARUSO_BATTLE_MASTER_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "KARUSO_BATTLE_MASTER_DAMAGE_AIR",	
	BIG_DAMAGE_AIR				= "KARUSO_BATTLE_MASTER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "KARUSO_BATTLE_MASTER_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "KARUSO_BATTLE_MASTER_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "KARUSO_BATTLE_MASTER_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN","KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL",
	"KARUSO_BATTLE_MASTER_STAND_UP_FRONT","KARUSO_BATTLE_MASTER_STAND_UP_BACK",
	"KARUSO_BATTLE_MASTER_JUMP_DOWN","KARUSO_BATTLE_MASTER_JUMP_LANDING",	},	
	
	DYING_LAND_FRONT			= "KARUSO_BATTLE_MASTER_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "KARUSO_BATTLE_MASTER_DYING_LAND_BACK",
	DYING_SKY					= "KARUSO_BATTLE_MASTER_DYING_SKY",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 3000,		-- cm
		TARGET_LOST_RANGE			= 3100,		-- cm
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
		NEAR_WALK_RATE		= 50,   	-- 70,
		FAR_WALK_RATE		= 50,   	-- 30,
		
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

KARUSO_BATTLE_MASTER_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "KARUSO_BATTLE_MASTER_WAIT", "CT_KARUSO_BATTLE_MASTER_WAIT", },
	},
		SOUND_PLAY0					= { 0.01, "Karuso_Battle_Master_Voice_WaitStart01.ogg", 100, FALSE, -1.0, FALSE },

}

function KARUSO_BATTLE_MASTER_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )		-- Magic Attack B 발동이 공격용인지 회피용인지 구분 ( 공격용 - true )
	pNPCUnit:SetFlag_LUA( 1, false )	-- 현재 각성 발동중인지 구분
	pNPCUnit:SetFlag_LUA( 2, false )	-- 체력 75%일 때, KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A 사용 여부
	pNPCUnit:SetFlag_LUA( 3, false )	-- 체력 50%일 때, KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A 사용 여부
	pNPCUnit:SetFlag_LUA( 4, false )	-- 체력 25%일 때, KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A 사용 여부

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_WAIT = 
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

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",	 	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_AWAKE",				"CT_KARUSO_BATTLE_MASTER_AWAKE",						},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_75_PERCENT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_50_PERCENT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_25_PERCENT",	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_ATTACK_A",			"CT_KARUSO_BATTLE_MASTER_ATTACK_A",	 					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",		"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",				},
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"KARUSO_BATTLE_MASTER_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"KARUSO_BATTLE_MASTER_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"KARUSO_BATTLE_MASTER_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"KARUSO_BATTLE_MASTER_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"KARUSO_BATTLE_MASTER_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"KARUSO_BATTLE_MASTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",		},
	},
	
	-- 각성
	CT_KARUSO_BATTLE_MASTER_AWAKE =
	{
		MY_HP_LESS_THAN_PERCENT		= 50,		-- 체력 50% 이하
		FLAG_FALSE					= 1,		-- 각성 사용한 적 없을 때
	},
	
	-- 체력 75% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_75_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 75,		-- 체력 75% 이하
		FLAG_FALSE					= 2,		-- 공격 사용한 적 없을 때
	},
	
	-- 체력 50% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_50_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 50,		-- 체력 50% 이하
		FLAG_FALSE					= 3,		-- 공격 사용한 적 없을 때
	},
	
	-- 체력 25% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_25_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 25,		-- 체력 25% 이하
		FLAG_FALSE					= 4,		-- 공격 사용한 적 없을 때
	},
	
	-- 검술 연타 공격
	CT_KARUSO_BATTLE_MASTER_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	-- 순간 이동
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 30,
	},
	
	-- 연발성 파동 공격
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 30,
	},
}

function KARUSO_BATTLE_MASTER_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )		-- Magic Attack B 발동이 공격용인지 회피용인지 구분 ( 공격용 - true )

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_WAIT_HABIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",	 	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_AWAKE",				"CT_KARUSO_BATTLE_MASTER_AWAKE",						},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_75_PERCENT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_50_PERCENT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_25_PERCENT",	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_ATTACK_A",			"CT_KARUSO_BATTLE_MASTER_ATTACK_A",	 					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",		"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",				},
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"KARUSO_BATTLE_MASTER_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"KARUSO_BATTLE_MASTER_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"KARUSO_BATTLE_MASTER_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"KARUSO_BATTLE_MASTER_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"KARUSO_BATTLE_MASTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",		},
	},
	
	-- 각성
	CT_KARUSO_BATTLE_MASTER_AWAKE =
	{
		MY_HP_LESS_THAN_PERCENT		= 50,		-- 체력 50% 이하
		FLAG_FALSE					= 1,		-- 각성 사용한 적 없을 때
	},
	
	-- 체력 75% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_75_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 75,		-- 체력 75% 이하
		FLAG_FALSE					= 2,		-- 공격 사용한 적 없을 때
	},
	
	-- 체력 50% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_50_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 50,		-- 체력 50% 이하
		FLAG_FALSE					= 3,		-- 공격 사용한 적 없을 때
	},
	
	-- 체력 25% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_25_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 25,		-- 체력 25% 이하
		FLAG_FALSE					= 4,		-- 공격 사용한 적 없을 때
	},
	
	-- 검술 연타 공격
	CT_KARUSO_BATTLE_MASTER_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	-- 순간 이동
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 30,
	},
	
	-- 연발성 파동 공격
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 30,
	},
	

}

function KARUSO_BATTLE_MASTER_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	
	pNPCUnit:SetFlag_LUA( 0, true )		-- Magic Attack B 발동이 공격용인지 회피용인지 구분 ( 공격용 - true )

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DASH = 
{
	ANIM_NAME					= "Walk",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",	 	},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_AWAKE",				"CT_KARUSO_BATTLE_MASTER_AWAKE",						},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_75_PERCENT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_50_PERCENT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP",	"CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_25_PERCENT",	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_ATTACK_A",			"CT_KARUSO_BATTLE_MASTER_ATTACK_A",	 					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",		"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C",				},
		

		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"KARUSO_BATTLE_MASTER_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"KARUSO_BATTLE_MASTER_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"KARUSO_BATTLE_MASTER_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"KARUSO_BATTLE_MASTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",		},
	},
	
	-- 각성
	CT_KARUSO_BATTLE_MASTER_AWAKE =
	{
		MY_HP_LESS_THAN_PERCENT		= 50,		-- 체력 50% 이하
		FLAG_FALSE					= 1,		-- 각성 사용한 적 없을 때
	},
	
	-- 체력 75% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_75_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 75,		-- 체력 75% 이하
		FLAG_FALSE					= 2,		-- 공격 사용한 적 없을 때
	},
	
	-- 체력 50% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_50_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 50,		-- 체력 50% 이하
		FLAG_FALSE					= 3,		-- 공격 사용한 적 없을 때
	},
	
	-- 체력 25% 이하일 때, 소용돌이 생성 공격
	CT_KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_25_PERCENT =
	{
		MY_HP_LESS_THAN_PERCENT		= 25,		-- 체력 25% 이하
		FLAG_FALSE					= 4,		-- 공격 사용한 적 없을 때
	},
	
	-- 검술 연타 공격
	CT_KARUSO_BATTLE_MASTER_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	-- 순간 이동
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 30,
	},
	
	-- 연발성 파동 공격
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2000,
		RATE						= 30,
	},
}

function KARUSO_BATTLE_MASTER_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )		-- Magic Attack B 발동이 공격용인지 회피용인지 구분 ( 공격용 - true )

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_JUMP_LANDING",	},
	},
}

function KARUSO_BATTLE_MASTER_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_JUMP_LANDING",	},
	},
}

function KARUSO_BATTLE_MASTER_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

-- 검술 연타 공격
KARUSO_BATTLE_MASTER_ATTACK_A =
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.5, },
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
	SOUND_PLAY0 = { 0.71, "Slash3.ogg"},
	SOUND_PLAY1 = { 1.01, "Slash3.ogg"},
	SOUND_PLAY2 = { 1.56, "Slash3.ogg"},
	SOUND_PLAY3 = { 2.11, "Slash3.ogg"},
	SOUND_PLAY4 = { 0.01, "Karuso_Battle_Master_Voice_AttackA01.ogg",30},                       
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
	SOUND_PLAY0 = { 0.71, "Slash3.ogg"},
	SOUND_PLAY1 = { 1.01, "Slash3.ogg"},
	SOUND_PLAY2 = { 1.56, "Slash3.ogg"},
	SOUND_PLAY3 = { 2.11, "Slash3.ogg"},
	SOUND_PLAY4 = { 0.01, "Karuso_Battle_Master_Voice_AttackA02.ogg",30},                             
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
	SOUND_PLAY0 = { 0.71, "Slash3.ogg"},
	SOUND_PLAY1 = { 1.01, "Slash3.ogg"},
	SOUND_PLAY2 = { 1.56, "Slash3.ogg"},
	SOUND_PLAY3 = { 2.11, "Slash3.ogg"},
	SOUND_PLAY4 = { 0.01, "Karuso_Battle_Master_Voice_AttackA03.ogg",30},                              
		},                     
	},
	
	ATTACK_TIME0				= { 0.853, 0.921, },
	ATTACK_TIME1				= { 1.149, 1.189, },
	ATTACK_TIME2				= { 1.687, 1.734, },
	ATTACK_TIME3				= { 2.278, 2.339, },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"KARUSO_BATTLE_MASTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"KARUSO_BATTLE_MASTER_ATTACK_B",			"CT_KARUSO_BATTLE_MASTER_ATTACK_B",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A",		"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A"	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"KARUSO_BATTLE_MASTER_WAIT",				},
	},
	
	-- 붕권
	CT_KARUSO_BATTLE_MASTER_ATTACK_B = 
	{
		DISTANCE_TO_TARGET_NEAR		= 600,
		HAVE_TARGET					= 1,
		ANIM_EVENT_TIMER			= 2.782,
		RATE						= 50,
	},
	
	-- 검기 발사
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A = 
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		HAVE_TARGET					= 1,
		ANIM_EVENT_TIMER			= 3.098,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Attack_A", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

-- 붕권
KARUSO_BATTLE_MASTER_ATTACK_B =
{
	ANIM_NAME					= "Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	APPLY_ANIM_MOVE				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 2.0, },

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SPEED_TIME0	= { 3200, 0.0, 1.204, 1, },
	SPEED_TIME1	= { 500, 0.0, 1.304, 2, },
	
	ATTACK_TIME0				= { 1.247, 1.280, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 10.0,
		},
		
		BACK_SPEED_X			= 10000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
		
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{

	SOUND_PLAY0	= { 1.00, "Swing_Big03.ogg"},
	SOUND_PLAY1	= { 0.01, "Karuso_Battle_Master_Voice_AttackB01.ogg",30},                   
	SOUND_PLAY2	= { 0.08, "Aisha_Energy_Spurt.ogg" },                   
	SOUND_PLAY3	= { 1.00, "Elsword_LunaBlade_Ready.ogg" },                   
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{

	SOUND_PLAY0	= { 1.00, "Swing_Big03.ogg"},
	SOUND_PLAY1	= { 0.01, "Karuso_Battle_Master_Voice_AttackA02.ogg",30},                            
	SOUND_PLAY2	= { 0.08, "Aisha_Energy_Spurt.ogg" },                   
	SOUND_PLAY3	= { 1.00, "Elsword_LunaBlade_Ready.ogg" },                   
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{

	SOUND_PLAY0	= { 1.00, "Swing_Big03.ogg"},
	SOUND_PLAY1	= { 0.01, "Karuso_Battle_Master_Voice_AttackA03.ogg",30},                            
	SOUND_PLAY2	= { 0.08, "Aisha_Energy_Spurt.ogg" },                   
	SOUND_PLAY3	= { 1.00, "Elsword_LunaBlade_Ready.ogg" },                   
		},                     
	},
	

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Attack_B", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

-- 검기 발사
KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A =
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 2.0, },

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_MagicAttackA01.ogg"},
	SOUND_PLAY1	= { 2.90, "Ran_Swing02.ogg"},                    
	SOUND_PLAY2	= { 0.03, "BLOODY_RAVEN_GLITER_MagicAttackB_Charge01.ogg"},                    
	SOUND_PLAY3	= { 0.1, "Chung_IronHowling_Shot.ogg"},                    
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_MagicAttackA02.ogg"},
	SOUND_PLAY1	= { 2.90, "Ran_Swing02.ogg"},                          
	SOUND_PLAY2	= { 0.03, "BLOODY_RAVEN_GLITER_MagicAttackB_Charge01.ogg"},                    
	SOUND_PLAY3	= { 0.1, "Chung_IronHowling_Shot.ogg"},                    
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_MagicAttackA03.ogg"},
	SOUND_PLAY1	= { 2.90, "Ran_Swing02.ogg"},                              
	SOUND_PLAY2	= { 0.03, "BLOODY_RAVEN_GLITER_MagicAttackB_Charge01.ogg"},                    
	SOUND_PLAY3	= { 0.1, "Chung_IronHowling_Shot.ogg"},                    
		},                     
	},
	
	


	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Magic_Attack_A", 0.0,	
	},
}

function KARUSO_BATTLE_MASTER_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 3.004 ) then
	
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_MAGIC_ATTACK_A", pNPCUnit:GetBonePos_LUA( "Bip01_Prop1" ), pos.y )
		end
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 순간 이동 ( 위로 올라감 )
KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP =
{
	ANIM_NAME					= "Special_Attack_A_Up",
	ANIM_SPEED					= 0.1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 2.0, },

	SPEED_TIME0 				= { 0, INIT_PHYSIC["RUN_SPEED"] * 15.0, 0.913, 2 },
	
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Smoke1.ogg"},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Magic_Attack_B_Up", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

function KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 페이드 아웃 효과
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 0.8 then
	
		local Alpha = 1.0 - fAnimationTime
		
		if 0.0 > Alpha then
			Alpha = 0.0
		end
		
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 10.0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 순간 이동 착지 ( 유저 뒤로 착지 )
KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN =
{
	ANIM_NAME					= "Magic_Attack_B_Down",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	DOWN_ACCEL                  = 0,
	G_ACCEL						= 0,
	
	SUPER_ARMOR					= TRUE,
	
	PASSIVE_SPEED_Y				= -INIT_PHYSIC["RUN_SPEED"] * 15.0,		-- INIT_PHYSIC의 MAX_G_SPEED 수정함 ( 낙하 속도 제한값 )
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Smoke2.ogg"},


	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_COMBO",	"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_COMBO",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"KARUSO_BATTLE_MASTER_WAIT",					},
	},
	
	-- 바람 폭발 시전
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_COMBO = 
	{
		FLAG_TRUE					= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		HAVE_TARGET					= 1,
		ANIM_EVENT_TIMER			= 0.315,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Magic_Attack_B_Down", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

function KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local vTargetPos		= pNPCUnit:GetPos()				-- 현재 자신의 위치
	local bIsRight 			= pNPCUnit:GetIsRight()			-- 착지시 방향 설정
	local pTargetUser 		= pNPCUnit:GetTargetUser()		-- 타겟으로 지정한 유닛 객체
	
	if nil ~= pTargetUser then		-- 타겟으로 지정된 유닛이 있다면, 해당 유닛의 위치를 자신의 위치로 대입
	
		local fOffSetByIsRight 	= 200.0		-- 대상으로부터 거리 200 정도 뒤에 착지
		
		if true == pTargetUser:GetIsRight() then		-- 유저의 뒷 부분에 착지될 수 있도록 설정
			fOffSetByIsRight 	= fOffSetByIsRight * -1.0
			bIsRight 			= false
		else
			bIsRight 			= true
		end

		-- 유저의 방향에 따라 착지 위치를 설정 ( 방향 벡터 연산 )
		vTargetPos.x = pTargetUser:GetPos().x + ( pTargetUser:GetDirVector().x * fOffSetByIsRight )
		vTargetPos.z = pTargetUser:GetPos().z + ( pTargetUser:GetDirVector().z * fOffSetByIsRight )
		
		-- 맵 끝에서 착지하면 라인맵을 뚫어버리는 문제가 있어서, 착지 위치 제한
		if -2452 < vTargetPos.x then
			vTargetPos.x = -2452
		elseif -5660 > vTargetPos.x then
			vTargetPos.x = -5660
		end
		
	end
		
	pNPCUnit:SetPosition( vTargetPos )		-- 최종 착지 위치 설정
	
	pNPCUnit:SetIsRight( bIsRight )			-- 착지시 방향 설정
	
	pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
	pNPCUnit:SetUnitColor( 1, 1, 1, 0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
	
end

function KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 페이드 인 효과
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 0.1 then
	
		local Alpha = fAnimationTime - 0.1
	
		if 0.1 < Alpha then
			Alpha = 0.1
		end
		
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 10.0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
	
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 바람 폭발 시전
KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_COMBO =
{
	ANIM_NAME					= "Magic_Attack_B_Combo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_Y						= 2000,

	
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_MagicAttackBCombo01.ogg"},
	SOUND_PLAY1	= { 3.01, "Ran_SpecialAttackB01.ogg"},
	SOUND_PLAY2	= { 0.04, "KingNasod_SpellAttack2.ogg"},
	SOUND_PLAY3	= { 0.12, "Nasod_Element_WaitStart1.ogg"},

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Magic_Attack_B_Combo", 0.0,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

-- 연발성 파동 공격
KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C =
{
	ANIM_NAME					= "Magic_Attack_C",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_SET0_RATE = 50, 
	SOUND_SET1_RATE = 50, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.69, "Gliter_Alchemyst_AttackBComboCloud.ogg"},
	SOUND_PLAY1	= { 0.01, "Karuso_Battle_Master_Voice_MagicAttackC01.ogg"},                   
	SOUND_PLAY2	= { 0.01, "Nasod_Element_WaitStart1.ogg"},                   
	SOUND_PLAY3	= { 0.69, "Elemental_Kenaz_MagicAttackA.ogg"},                   
	SOUND_PLAY4	= { 0.70, "Lena_Gungnir_Wind.ogg"},                   
	SOUND_PLAY5	= { 0.70, "Eve_AT_SP2_SonicWave_Wind.ogg"},                   
	SOUND_PLAY6	= { 0.70, "Wind01.ogg"},                   
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.65, "Gliter_Alchemyst_AttackBComboCloud.ogg"},
	SOUND_PLAY1	= { 0.01, "Karuso_Battle_Master_Voice_AttackA02.ogg"},                              
	SOUND_PLAY2	= { 0.01, "Nasod_Element_WaitStart1.ogg"},                   
	SOUND_PLAY3	= { 0.69, "Elemental_Kenaz_MagicAttackA.ogg"},                   
	SOUND_PLAY4	= { 0.70, "Lena_Gungnir_Wind.ogg"},                   
	SOUND_PLAY5	= { 0.70, "Eve_AT_SP2_SonicWave_Wind.ogg"},                   
	SOUND_PLAY6	= { 0.70, "Wind01.ogg"},                   
		},                     
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Magic_Attack_C", 0.0,			-- 발사 이펙트
	},
}

function KARUSO_BATTLE_MASTER_MAGIC_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.828 ) then
	
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
			local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
			local vPos		= pNPCUnit:GetPos()
			
			-- 방향에 따른 위치 설정을 위한 값
			local fIsRightValue = 1
			if true == pNPCUnit:GetIsRight() then
				fIsRightValue = -1
			end
			
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_MAGIC_ATTACK_C_LINE", vPos, vLandPos.y )		-- 바닥에서 움직이는 빛
			
			vPos.x = vPos.x + ( 200 * fIsRightValue )	-- 거리 200
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_MAGIC_ATTACK_C_ATTACKED_1", vPos, vLandPos.y )	-- 0초때 폭발
			
			vPos.x = vPos.x + ( 380 * fIsRightValue )	-- 거리 580
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_MAGIC_ATTACK_C_ATTACKED_2", vPos, vLandPos.y )	-- 1초때 폭발
			
			vPos.x = vPos.x + ( 570 * fIsRightValue )	-- 거리 1150
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_MAGIC_ATTACK_C_ATTACKED_3", vPos, vLandPos.y )	-- 2초때 폭발
			
			vPos.x = vPos.x + ( 700 * fIsRightValue )	-- 거리 1850
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_MAGIC_ATTACK_C_ATTACKED_4", vPos, vLandPos.y )	-- 3초때 폭발
		end
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 다수의 나이프 투척 공격
KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D =
{
	ANIM_NAME					= "Magic_Attack_D",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.30, "Swing_Big02.ogg"},
	SOUND_PLAY1	= { 0.30, "Elsword_Parasite_WaitStart_SwordPullOut.ogg"},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Magic_Attack_D", 0.0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------


-- 순간 이동 ( 위로 올라감 )
KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP =
{
	ANIM_NAME					= "Special_Attack_A_Up",
	ANIM_SPEED					= 0.1,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1,
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_TIME0 				= { 0, INIT_PHYSIC["RUN_SPEED"] * 15.0, 0.913, 2 },
	
	SUPER_ARMOR					= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.50, "Smoke1.ogg"},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Special_Attack_A_Up", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local Is75PercentAttack = pNPCUnit:GetFlag_LUA( 2 )	-- 체력 75%일때 사용한 적이 있는가
	
	if false == Is75PercentAttack then		-- 사용한 적이 없다면, 체력 75%일 때 사용했다고 처리	
		pNPCUnit:SetFlag_LUA( 2, true )
		return
	end
	
	local Is50PercentAttack = pNPCUnit:GetFlag_LUA( 3 )	-- 체력 50%일때 사용한 적이 있는가
	
	if false == Is50PercentAttack then		-- 사용한 적이 없다면, 체력 50%일 때 사용했다고 처리	
		pNPCUnit:SetFlag_LUA( 3, true )
		return
	end
	
	pNPCUnit:SetFlag_LUA( 4, true )		-- 모든 경우가 없다면, 체력 25%일 때 사용했다고 처리

end

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_UP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 페이드 아웃 효과
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 0.8 then
	
		local Alpha = 1.0 - fAnimationTime
		
		if 0.0 > Alpha then
			Alpha = 0.0
		end
		
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 10.0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 순간 이동 착지 ( 맵 중앙으로 착지 )
KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN =
{
	ANIM_NAME					= "Special_Attack_A_Down",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	DOWN_ACCEL                  = 0,
	G_ACCEL						= 0,
	
	SUPER_ARMOR					= TRUE,
	
	PASSIVE_SPEED_Y				= -INIT_PHYSIC["RUN_SPEED"] * 15.0,		-- INIT_PHYSIC의 MAX_G_SPEED 수정함 ( 낙하 속도 제한값 )
	
	SUPER_ARMOR					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.50, "Smoke2.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Special_Attack_A_Down", 0.0,	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local vPos =  pNPCUnit:GetPos()

	pNPCUnit:SetPosition( D3DXVECTOR3( -4056, vPos.y, 1003 ) )		-- 맵 중앙으로 이동
	
	pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
	pNPCUnit:SetUnitColor( 1, 1, 1, 0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
	
end

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_DOWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 페이드 인 효과
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 0.1 then
	
		local Alpha = fAnimationTime - 0.1
	
		if 0.1 < Alpha then
			Alpha = 0.1
		end
		
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 10.0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
	
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 소용돌이 생성 공격
KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START =
{
	ANIM_NAME					= "Special_Attack_A_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_SpecialAttackAStart01.ogg"},
	SOUND_PLAY1	= { 0.20, "Summon_Boss_SpecialAttackB.ogg"},                     
	SOUND_PLAY2	= { 0.25, "Elsword_Armageddon_Blade2.ogg"},                     
	SOUND_PLAY3	= { 1.00, "Elsword_FinalStrike_Effect.ogg"},                     
	SOUND_PLAY4	= { 2.00, "Raven_RBM_Blackhole_Generate.ogg"},                     
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_SpecialAttackAStart01.ogg"},
	SOUND_PLAY1	= { 0.20, "Summon_Boss_SpecialAttackB.ogg"},                     
	SOUND_PLAY2	= { 0.25, "Elsword_Armageddon_Blade2.ogg"},                     
	SOUND_PLAY3	= { 1.00, "Elsword_FinalStrike_Effect.ogg"},                     
	SOUND_PLAY4	= { 2.00, "Raven_RBM_Blackhole_Generate.ogg"},                     
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_SpecialAttackAStart01.ogg"},
	SOUND_PLAY1	= { 0.20, "Summon_Boss_SpecialAttackB.ogg"},                     
	SOUND_PLAY2	= { 0.25, "Elsword_Armageddon_Blade2.ogg"},                     
	SOUND_PLAY3	= { 1.00, "Elsword_FinalStrike_Effect.ogg"},                     
	SOUND_PLAY4	= { 2.00, "Raven_RBM_Blackhole_Generate.ogg"},                     
		},                     
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_23189,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},


	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_LOOP",	},
	},
}

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetIsRight( true )			-- 착지시 방향 설정
	
	-- 기모으는 이펙트 생성
	local pEffectSet = pX2Game:GetEffectSet()		
	
	if nil ~= pEffectSet then
	
		local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )	-- 저장했던 이펙트 핸들
		
		if nil ~= hEffect then		-- 만약 이펙트가 남아있다면, 지워주자.
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 0 )
		end
	
		-- 이펙트 생성
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Sander_Karoo_Special_Attack_A_Start", pNPCUnit )
		
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 0, hEffect )		-- 루프 끝나고 지워주기 위해, 핸들 저장
		end
	end

end

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA(1.111) then
		-- 토네이도 소환
		local pDamageEffect = pX2Game:GetDamageEffect()
			
		if nil ~= pDamageEffect then
		
			local vLandPos 		= pNPCUnit:GetLandPosition_LUA()
			
			-- 왼쪽에서 오른쪽으로 이동하는 토네이도 소환
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_SPECIAL_ATTACK_A_TORNADO_L", D3DXVECTOR3( -2309, 49585, 1003 ), vLandPos.y )
			
			-- 오른쪽에서 왼쪽으로 이동하는 토네이도 소환
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_SPECIAL_ATTACK_A_TORNADO_R", D3DXVECTOR3( -5803, 49585, 1003 ), vLandPos.y )

		end
	
	elseif pNPCUnit:AnimEventTimer_LUA(3.099) then
	
		-- 토네이도 소환
		local pDamageEffect = pX2Game:GetDamageEffect()
			
		if nil ~= pDamageEffect then
		
			local vLandPos 		= pNPCUnit:GetLandPosition_LUA()
			
			-- 왼쪽 토네이도 소환
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_SPECIAL_ATTACK_A_TORNADO_SIDE", D3DXVECTOR3( -2666, 49585, 1003 ), vLandPos.y )
			
			-- 오른쪽 토네이도 소환
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_SANDER_KAROO_SPECIAL_ATTACK_A_TORNADO_SIDE", D3DXVECTOR3( -5446, 49585, 1003 ), vLandPos.y )
		end
	
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 소용돌이 생성 공격 반복 동작
KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_LOOP =
{
	ANIM_NAME					= "Special_Attack_A_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.50, "PunchAttack.ogg"},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_COMBO",	},
	},
	
	DELETE_EFFECT_SET_ON_STATE_END	= TRUE,
}

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_LOOP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 크게 칼을 휘두르는 콤보 공격
KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_COMBO = 
{
	ANIM_NAME					= "Special_Attack_A_Combo",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0	= { 0.90, "Swing_Big05.ogg"},
	SOUND_PLAY1	= { 0.90, "elsword_vitality_use_VOX.ogg"},                     

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",			},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Special_Attack_A_Combo", 0.0,	
	},
}

function KARUSO_BATTLE_MASTER_SPECIAL_ATTACK_A_COMBO_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 기모으는 이펙트 제거
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )		-- 저장했던 이펙트 핸들
	
	if nil ~= hEffect then
		
		local pEffectSet = pX2Game:GetEffectSet()		-- 기모으는 이펙트 제거
	
		if nil ~= pEffectSet then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 0 )
		end
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 각성
KARUSO_BATTLE_MASTER_AWAKE =
{
	ANIM_NAME					= "Awake",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_SPEED					= 1,
	
	INVINCIBLE					= { 0, 100, }, 	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	SOUND_SET0_RATE = 50, 
	SOUND_SET1_RATE = 50, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Karuso_Battle_Master_Voice_AttackA03.ogg"},                        
			SOUND_PLAY1    = { 0.1, "Ara_MoonLightSlash_Charge1.ogg"},                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Karuso_Battle_Master_Voice_AttackA02.ogg"},                               
			SOUND_PLAY1    = { 0.1, "Ara_MoonLightSlash_Charge1.ogg"},                        
		},                     
	},

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Sander_Karoo_Awake", 0.0,	
	},
}

function KARUSO_BATTLE_MASTER_AWAKE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 1, true )		-- 각성 동작 처리
	
	pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_KARUSO_BATTLE_MASTER_AWAKE"] )	-- 각성 버프 실행

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_REVENGE = 
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "KARUSO_BATTLE_MASTER_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0	= { 0.01, "KARUSO_BATTLE_MASTER_Voice_Damage_A01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D",		"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"KARUSO_BATTLE_MASTER_WAIT",				},
	},
	
	-- 순간 이동
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	
	-- 다수의 나이프 투척 공격
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	

}

function KARUSO_BATTLE_MASTER_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function KARUSO_BATTLE_MASTER_DAMAGE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, false )		-- Magic Attack B 발동이 공격용인지 회피용인지 구분 ( 공격용 - true )

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0	= { 0.01, "KARUSO_BATTLE_MASTER_Voice_Damage_B01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D",		"CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"KARUSO_BATTLE_MASTER_WAIT",				},
	},
	
	-- 순간 이동
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_B_UP = 
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		HAVE_TARGET					= 1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	
	-- 다수의 나이프 투척 공격
	CT_KARUSO_BATTLE_MASTER_MAGIC_ATTACK_D = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
}

function KARUSO_BATTLE_MASTER_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_STAND_UP_FRONT",		},
	},
	
}

function KARUSO_BATTLE_MASTER_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_STAND_UP_BACK",		},
	},
}

function KARUSO_BATTLE_MASTER_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )		
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_FLY_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_FRONT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_FLY_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_DAMAGE_DOWN_BACK",		},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_AIR = 
{
	ANIM_NAME					= "DamageAir",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_WAIT", 	},
	},

}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN = 
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_AIR_UP = 
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  "KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL = 
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  "KARUSO_BATTLE_MASTER_DAMAGE_AIR_UP",				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_STAND_UP_FRONT",		},
	},
}

function KARUSO_BATTLE_MASTER_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

KARUSO_BATTLE_MASTER_STAND_UP_FRONT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT",		},
	},
}

KARUSO_BATTLE_MASTER_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 70, },

	    SOUND_PLAY0				= { 0.283, "sliding02.ogg" },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"KARUSO_BATTLE_MASTER_JUMP_DOWN", 	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"KARUSO_BATTLE_MASTER_WAIT", 		},
	},		
}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_Dying01.ogg"},                  
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_Dying02.ogg"},                             
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
	SOUND_PLAY0	= { 0.01, "Karuso_Battle_Master_Voice_Dying03.ogg"},                           
		},                     
	},
	

	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------
	
KARUSO_BATTLE_MASTER_DYING_LAND_BACK = 
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0	= { 0.01, "Vega_Trock_Voice_Dying01.ogg",30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,

}

----------------------------------------------------------------------------------------------------------------------------------------

KARUSO_BATTLE_MASTER_DYING_SKY = 
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0	= { 0.01, "Vega_Trock_Voice_Dying01.ogg",30},
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
}

function KARUSO_BATTLE_MASTER_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
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

