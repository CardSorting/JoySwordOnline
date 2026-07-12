-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ / 2011/5/13 / 피의 장교 에단/
	 
--]]

-- 바운딩 박스와 캐릭터의 크기 배율을 결정합니다.
INIT_SYSTEM =
{
	UNIT_WIDTH		= 70.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	--UNIT_SCALE      = 1.5,
}
--------------------------------------------------------------------------
-- 미리 로딩할 텍스쳐와 사운드, 메시를 결정합니다.
INIT_DEVICE =
{
	READY_TEXTURE =
	{
		"BerserkerBlade01.tga",
		"BerserkerBlade02.tga",
		"Whitecircle02.dds",
		"GroundShockWave02.dds",
		"Explosion_Light02.dds",
		"CutTendon_Slash01.dds",
		"Explosion_Sphere.dds",
		"Heal01.tga",
		"Blood_Bouble01.dds",
		"Gate_Light02_Gray.dds",
		"SpreadLight02_Gray.dds",
		"GuideArrow01.dds" ,
		"Condense_Pulse02.dds",
		"ColorBallGray.dds",
		"GroundShockWave02.dds",
	},
	READY_SOUND =
	{
		"Raven_PunchAttack1.ogg",
		"Raven_PunchAttack2.ogg",
		"Raven_Slash1.ogg",
		"Raven_Slash2.ogg",
		"RavenVoice_Shout03.ogg",
		"RavenVoice_Shout09.ogg",
		"Raven_ComboX2Explosion.ogg",
		"Raven_DashAttack.ogg",
		"Raven_DashAttack2.ogg",
		"RavenVoice_MaximumCanon.ogg",
		"Raven_SP_Maximum_Cannon.ogg",
		"Raven_RRF_X_Crash1.ogg",
		"Raven_Slash3.ogg",
		"Raven_Cut_Tendon.ogg",
		"Raven_Shadow_Step.ogg",
		"Raven_Thrust.ogg",
		"RavenVoice_BerserkerBlade.ogg",
		"Raven_ST_SP1_BerserkerBlade1.ogg",
		"Raven_ST_SP1_BerserkerBlade2.ogg",
		"Raven_ST_SP1_BerserkerBlade3.ogg",
		"RavenVoice_ShockWave.ogg",
		"RavenVoice_WolfFang.ogg",
		"Raven_RBM_Wolf_Fang1.ogg",
		"RavenVoice_DamageScream01.ogg",
		"RavenVoice_DamageScream02.ogg",
		"RavenVoice_DamageScream03.ogg",
		"RavenVoice_DamageScream04.ogg",
		"RavenVoice_DieScream1.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
	},
	READY_XSKIN_MESH = 
	{
		"BerserKerBlade02.X",
		"BerserKerBlade03.X",
		"BerserKerBlade04.X",		
		"Raven_SI_A_RF_Shadow_Step_Mesh01.X",
		"Raven_SI_A_RF_Thrust_Mesh01.X",
		"Raven_SI_SA_ShockWave_Blade_Mesh01.X",
		"Raven_SI_SA_ShockWave_Blade_Mesh02.X",
		"Raven_SI_SA_ShockWave_Blade_Mesh03.X",
		"Raven_Bloody_Accel_Blade_Mesh01.X",
		"Raven_RSM_SI_SA_Wolf_Fang_Mesh01.X",
		"Raven_RSM_SI_SA_Wolf_Fang_Mesh02.X",
		"Raven_RSM_SI_SA_Wolf_Fang_Mesh03.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_EDAN.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -2000,

	-- 이속/점속이 +10% 입니다.
	WALK_SPEED			= 500*1.1,
	RUN_SPEED			= 725*1.1,
	JUMP_SPEED			= 1500*1.1,
	DASH_JUMP_SPEED		= 2200*1.1,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	-- 초당 MP4가 회복됩니다.
	MP_CHANGE_RATE		= 4,
	MP_CHARGE_RATE		= 300,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = TRUE,
	
	-- 기본 속도가 26% 증가 유저보다 약간 빠릅니다.
	DEFAULT_ANIM_SPEED = 1.26,
	
	-- 최대 1번의 각성을 합니다.
	HYPER_MODE_COUNT	= 1,
	MAX_HYPER_MODE_TIME	= 100,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

    --MIND_FLAG_HEIGHT		= 230,

	HYPER_BOOST_RIGHT	= "HyperBoostRight",
	HYPER_BOOST_LEFT	= "HyperBoostLeft",
	
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	FORCE_DOWN_GAGE_MAX = 100,
	-- NOT_EXTRA_DAMAGE	= TRUE,
	
	DIE_FLY			= FALSE,
	
	AFTER_IMAGE_LAYER = X2_LAYER["XL_SKY_WORLD_OBJECT_2"],
	
	AFTER_IMAGE_COLOR_R = 0.5, 
	AFTER_IMAGE_COLOR_G = 0.5, 
	AFTER_IMAGE_COLOR_B = 0.5,
	AFTER_IMAGE_COLOR_A = 0.5,
	
	AFTER_IMAGE_DEST_ALPHA_BLEND = TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Raven_Event_Weapon03_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Hyper_Mesh_Raven_AC_Upbody_130649_Sorted.X",
		WEAPON_BONE_NAME			= "Bip01_Spine",			
	},
	
	-- pvp_bot : y 악세서리 추가
	ATTACH_MESH0 =
	{
		ATTACH_MESH_NAME = "MESH_COMMON_AC_LOWBODY_130722_SORTED.Y",
		ATTACH_BONE_NAME = "Bip01",
		-- ATTACH_SCALE  = 2.0,
		ATTACH_OFFSET_X = -10.0,    
		ATTACH_ROTATE_Z = -50.0,    
	},
	
	SUMMON_TIME				= 180,

}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 노전직 레이븐은 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_EDAN_START",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_START_STATE_START",						},
	
	-- 승리모션입니다. 노전직 레이븐은 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_EDAN_WIN",							},
    { STATE_NAME = "PVP_BOT_EDAN_WIN2",							},
	
	-- 승리모션입니다. 노전직 레이븐은 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_EDAN_LOSE",							},
    { STATE_NAME = "PVP_BOT_EDAN_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_EDAN_WAIT",							},
	-- 기상 시 무적을 만들어주는 wait 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_EDAN_STANDUP_WAIT",							},

	-- 멀리 있는 대상을 요격하는 기모으기 금지 웨이트 모션입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",				STATE_COOL_TIME = 15,				},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2_WAIT",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_3_WAIT",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_4_WAIT",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_5_WAIT",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_6_WAIT",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_7_WAIT",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_8_WAIT",							},
	-- 멀리 있는 대상을 요격하는 기모으기 금지 공격 모션입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",							},
	{ STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",							},
	
	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_EDAN_WALK",							},
    { STATE_NAME = "PVP_BOT_EDAN_DASH",							},
    { STATE_NAME = "PVP_BOT_EDAN_FLIP_DIR",						},
    { STATE_NAME = "PVP_BOT_EDAN_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_EDAN_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_EDAN_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_EDAN_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지) 입니다.
	{ STATE_NAME = "PVP_BOT_EDAN_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_EDAN_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_EDAN_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_EDAN_JUMP_DOWN_ACT",						LUA_STATE_END_FUNC = "PVP_BOT_EDAN_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_EDAN_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_EDAN_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_EDAN_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_EDAN_JUMP_LANDING",					},

	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZ",									},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZZZ",						},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZZZX",						},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZZZX_End",						},
	
	-- zzxx 콤보
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZZX",						},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboZZXX",						},
	
	-- xxx 콤보 (xx에서 xxx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_EDAN_ComboX",										},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboXX",						},
	{ STATE_NAME = "PVP_BOT_EDAN_ComboXXX",			},
	
	-- 대시점프 xx 콤보 (x에서 xx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_EDAN_DashJump",						},
	{ STATE_NAME = "PVP_BOT_EDAN_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_EDAN_DashJumpComboZ",						},
	--{ STATE_NAME = "PVP_BOT_EDAN_DashJumpComboZZ",				},
	{ STATE_NAME = "PVP_BOT_EDAN_DashJumpComboZ_for_COMBO",				},
	{ STATE_NAME = "PVP_BOT_EDAN_DashJumpComboZ_for_COMBO2",				},

	-- 대시 x 공격
	{ STATE_NAME = "PVP_BOT_EDAN_DashX",							},
	
	-- 대시 zzz 콤보 
	{ STATE_NAME = "PVP_BOT_EDAN_DashComboZ",										},
	{ STATE_NAME = "PVP_BOT_EDAN_DashComboZZ",					},
	{ STATE_NAME = "PVP_BOT_EDAN_DashComboZZZ",					},
	
	-- 점프 z, x 공격 
	{ STATE_NAME = "PVP_BOT_EDAN_JumpZ",												},
	{ STATE_NAME = "PVP_BOT_EDAN_JumpX",												},
	
	-- 컷텐던을 시전합니다.
	{ STATE_NAME = "PVP_BOT_EDAN_Cut_Tendon",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_Cut_Tendon_FRAME_MOVE"	 },
	
	-- 일섬을 시전합니다.
	{ STATE_NAME = "PVP_BOT_EDAN_One_Flash",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_One_Flash_FRAME_MOVE"	 },
	
	-- 쉐도우 스텝 ~ 피어싱 까지
	{ STATE_NAME = "PVP_BOT_EDAN_SHADOW_STEP",					STATE_COOL_TIME = 5,	LUA_STATE_START_FUNC = "PVP_BOT_EDAN_SHADOW_STEP_STATE_START",
																						LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_SHADOW_STEP_FRAME_MOVE",
																						LUA_STATE_END_FUNC = "PVP_BOT_EDAN_SHADOW_STEP_STATE_END",},
	{ STATE_NAME = "PVP_BOT_EDAN_SHADOW_STEP_of_EMERGENCY_ESCAPE",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_SHADOW_STEP_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_EDAN_SHADOW_STEP_THRUST",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_SHADOW_STEP_THRUST_FRAME_MOVE"	 },
	
	-- 소울웨폰을 꺼냅니다.
	{ STATE_NAME = "PVP_BOT_EDAN_PULL_SOUL_WEAPON",					STATE_COOL_TIME = 20,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_PULL_SOUL_WEAPON_FRAME_MOVE"	 },
	
	-- 13연참을 시전합니다.
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_1",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_13times_Cutting_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_2",						},
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_3",						},
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_4",						},
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_5",						},
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_6",						},
	{ STATE_NAME = "PVP_BOT_EDAN_13times_Cutting_7",						},
	
	-- 메모 버서커 블레이드!(방어력을 무시합니다.)
	{ STATE_NAME = "PVP_BOT_EDAN_Berserker_Blade",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_Berserker_Blade_FRAME_MOVE"	 },

	-- 쇼크 웨이브!
	{ STATE_NAME = "PVP_BOT_EDAN_Shock_Wave",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_Shock_Wave_FRAME_MOVE"	 },
	
	-- 울프 팽!
	{ STATE_NAME = "PVP_BOT_EDAN_Wolf_Pang_Rush",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_Wolf_Pang_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_EDAN_Wolf_Pang_Failed",					 },
	{ STATE_NAME = "PVP_BOT_EDAN_Wolf_Pang_Hit",					 },
	{ STATE_NAME = "PVP_BOT_EDAN_Wolf_Pang_Hit_End",				 },

	-- -- 하이퍼 소닉 스탭!
	-- { STATE_NAME = "PVP_BOT_EDAN_Hyper_Sonic_Stab",					STATE_COOL_TIME = 30,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_Hyper_Sonic_Stab_FRAME_MOVE"	 },
	
	-- 플라잉 임팩트!
	{ STATE_NAME = "PVP_BOT_EDAN_Flying_Impact_Ready",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_Flying_Impact_Ready_FRAME_MOVE"	 },
	--{ STATE_NAME = "PVP_BOT_EDAN_Flying_Impact_Attack",					 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_EDAN_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_BOOST_POWER_FRAME_MOVE"	},
	
	-- 띄우는 공격을 행하였을 때 기다렸다가 발차기나 여타 스킬로 이어갈 수 있도록 해주는 콤보 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_EDAN_Combo_for_Upper_Attack",										},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_EDAN_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_EDAN_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_EDAN_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_EDAN_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_EDAN_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_EDAN_DAMAGE_REVENGE",				},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_EDAN_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_EDAN_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_EDAN_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_EDAN_DYING_LAND_STATE_START",			},

	{ STATE_NAME = "PVP_BOT_EDAN_DashJump_Down", },

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_EDAN_START",
	WAIT_STATE					= "PVP_BOT_EDAN_WAIT",
	WIN_STATE					= "PVP_BOT_EDAN_WIN",
	LOSE_STATE					= "PVP_BOT_EDAN_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_EDAN_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_EDAN_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_EDAN_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_EDAN_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_EDAN_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_EDAN_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_EDAN_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_EDAN_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_EDAN_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_EDAN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_EDAN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_EDAN_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_EDAN_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"PVP_BOT_EDAN_DAMAGE_AIR_DOWN","PVP_BOT_EDAN_DAMAGE_AIR_FALL","PVP_BOT_EDAN_STAND_UP_FRONT","PVP_BOT_EDAN_STAND_UP_BACK",
	"PVP_BOT_EDAN_JUMP_DOWN","PVP_BOT_EDAN_JUMP_LANDING",},	
	WAIT_STATES = { "PVP_BOT_EDAN_STANDUP_WAIT", },	

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_EDAN_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_EDAN_DYING_BACK",
	SUMMON_END_STATE			= "PVP_BOT_EDAN_DYING_FRONT",
	DYING_SKY					= "PVP_BOT_EDAN_DYING_FRONT",

	REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
-- 기본 AI 설정입니다.
INIT_AI =
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1000,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1000,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},


	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
	
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 300,
		
		DIR_CHANGE_INTERVAL = 0.2,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 30,   --  70,
		FAR_WALK_RATE		= 30,   -- 30,
		
		

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 40, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 100,

		--LINE_END_RANGE		= 100,	-- cm
	},

	-- PATROL_MOVE =
	-- {
		-- PATROL_BEGIN_RATE		= 0, --50,
		-- PATROL_RANGE			= 500,
		-- PATROL_COOL_TIME		= 1.5,
		-- ONLY_THIS_LINE_GROUP	= TRUE,
	-- },

	-- ESCAPE_MOVE =
	-- {
		-- MOVE_SPLIT_RANGE	= 600,	-- cm
		-- ESCAPE_GAP			= 500,	-- 이 거리 보다 멀어지면 도망 성공

		-- WALK_INTERVAL		= 1,	-- 초
		-- NEAR_WALK_RATE		= 30,   --  10,
		-- FAR_WALK_RATE		= 50,   -- 10,

		-- JUMP_INTERVAL		= 10,
		-- UP_JUMP_RATE		= 100, -- 30,
		-- UP_DOWN_RATE		= 30,
		-- DOWN_JUMP_RATE		= 100,    --  30,
		-- DOWN_DOWN_RATE		= 30,

		-- --LINE_END_RANGE		= 80,	-- cm
	-- },
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_WIN =
{
	ANIM_NAME					= "RBM_Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12466 },
		{ RATE = 30, MESSAGE = STR_ID_12467 },
		{ RATE = 30, MESSAGE = STR_ID_12468 },
	},
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_EDAN_WIN2 =
{
	ANIM_NAME					= "RBM_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12466 },
		{ RATE = 30, MESSAGE = STR_ID_12467 },
		{ RATE = 30, MESSAGE = STR_ID_12468 },
	},
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_EDAN_LOSE =
{
	ANIM_NAME					= "RBM_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12469 },
		{ RATE = 30, MESSAGE = STR_ID_12470 },
		{ RATE = 30, MESSAGE = STR_ID_12471 },
	},

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_EDAN_LOSE2 =
{
	ANIM_NAME					= "RBM_Lose2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },


	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12469 },
		{ RATE = 30, MESSAGE = STR_ID_12470 },
		{ RATE = 30, MESSAGE = STR_ID_12471 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_EDAN_START =
{
	ANIM_NAME					= "SI_SA_RST_BLOODY_ACCEL",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_RAVEN_BLOODY_ACCEL", 0.001,
		"EffectSet_PVP_BOT_BLOODY_ACCEL", 0.001,
	},		
	
	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_WAIT",		"CT_PVP_BOT_EDAN_WAIT"	},
	},
	CT_PVP_BOT_EDAN_WAIT =
	{
		STATE_TIME_OVER	= 4.0,
	},
}

-- 멀리 도망간 유저에게서 HP와 MP를 흡수하는 스테이트 입니다.
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_3_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_3_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_4_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_4_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_5_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_5_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_6_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_6_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_7_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_7_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_8_WAIT",												},
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_8_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		-- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EDAN_WAIT",	}
	},

	CT_PVP_BOT_EPIK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		RATE						= 100,
	},
	CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1750,	
		DISTANCE_OVER_TARGET_NEAR	= 900,	
		RATE						= 100,
	},
	CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1750,	
		RATE						= 100,
	},
}

-- HP/MP드레인 1단계
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1 =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	
	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.1, 100, },
		
	--STOP_ALL_UNIT0		= { 0.08, 1.6, 0.5 },
	STOP_OTHER_UNIT0  = { 0.08, 0.88, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_EPIK_INSANE_INTAKE_LEVEL_1", 0.9,
	},		
	
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.9, "Chung_Pandemonium3.ogg" },	
	SOUND_PLAY3			= { 0.9, "RavenVoice_Shout06.ogg" },		
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_WAIT",												},
	},

}
-- HP/MP드레인 2단계
PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2 =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	
	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.1, 100, },
		
	--STOP_ALL_UNIT0		= { 0.08, 1.6, 0.5 },
	STOP_OTHER_UNIT0  = { 0.08, 0.88, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_EPIK_INSANE_INTAKE_LEVEL_2", 0.9,
	},		
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.9, "Chung_Pandemonium3.ogg" },	
	SOUND_PLAY3			= { 0.9, "RavenVoice_Shout04.ogg" },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_WAIT",												},
	},

}
--------------------------------------------------------------------------
PVP_BOT_EDAN_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_EDAN_BOOST_POWER",			"CF_PVP_BOT_EDAN_BOOST_POWER",									},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_EDAN_DASH",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_EDAN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_EDAN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_EDAN_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_EDAN_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Wolf_Pang_Rush",     			"CT_PVP_BOT_EDAN_Wolf_Pang",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_PULL_SOUL_WEAPON",     			"CT_PVP_BOT_EDAN_PULL_SOUL_WEAPON",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Berserker_Blade",     			"CT_PVP_BOT_EDAN_Berserker_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Shock_Wave",     		"CT_PVP_BOT_EDAN_Shock_Wave",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Flying_Impact_Ready",     		"CT_PVP_BOT_EDAN_Flying_Impact_Ready",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_SHADOW_STEP",     			"CT_PVP_BOT_EDAN_SHADOW_STEP",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_ComboZ",     				"CT_PVP_BOT_EDAN_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WALK",         				"CT_PVP_BOT_EDAN_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DASH",         				"CT_PVP_BOT_EDAN_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_JUMP_UP_DIR",         		"CT_PVP_BOT_EDAN_JUMP_UP_DIR",     	 	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_JUMP_UP",         			"CT_PVP_BOT_EDAN_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJump",          			"CT_PVP_BOT_EDAN_DashJump",      		},
		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_EDAN_BACKWARD_DASH_READY",   },
		
	},
	
	-- 공격은 호쾌하게!!
	
	-- CT_PVP_BOT_EDAN_PULL_SOUL_WEAPON =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- RATE						= 100,
	-- },
	
	CT_PVP_BOT_EDAN_Wolf_Pang =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		MY_MP_MORE_THAN				= 100,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 15,
	},
	
	CT_PVP_BOT_EDAN_Berserker_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 25,
	},
	
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	
	
	-- CT_PVP_BOT_EDAN_Flying_Impact_Ready =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 600,	
		-- DISTANCE_TO_TARGET_NEAR		= 1200,	
		-- MY_MP_MORE_THAN				= 200,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		-- TARGET_BELOW_ME 			= FALSE, 
		-- RATE						= 33,
	-- },
	
	CT_PVP_BOT_EDAN_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 20,
	},
		
	CT_PVP_BOT_EDAN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 33,
	},
	
	CT_PVP_BOT_EDAN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
	
	-- CT_PVP_BOT_EDAN_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 0,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 40,
	-- },
	
	CT_PVP_BOT_EDAN_WALK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_EDAN_DASH =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
			
	CT_PVP_BOT_EDAN_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 25,
	},
	
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_STANDUP_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	INVINCIBLE = { -1, -1, 0.7, 0.7 },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_EDAN_BOOST_POWER",			"CF_PVP_BOT_EDAN_BOOST_POWER",									},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_EDAN_DASH",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_EDAN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_EDAN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_EDAN_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_EDAN_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Wolf_Pang_Rush",     			"CT_PVP_BOT_EDAN_Wolf_Pang",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_PULL_SOUL_WEAPON",     			"CT_PVP_BOT_EDAN_PULL_SOUL_WEAPON",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Berserker_Blade",     			"CT_PVP_BOT_EDAN_Berserker_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Shock_Wave",     		"CT_PVP_BOT_EDAN_Shock_Wave",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Flying_Impact_Ready",     		"CT_PVP_BOT_EDAN_Flying_Impact_Ready",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_SHADOW_STEP",     			"CT_PVP_BOT_EDAN_SHADOW_STEP",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_ComboZ",     				"CT_PVP_BOT_EDAN_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WALK",         				"CT_PVP_BOT_EDAN_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DASH",         				"CT_PVP_BOT_EDAN_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_JUMP_UP_DIR",         		"CT_PVP_BOT_EDAN_JUMP_UP_DIR",     	 	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_JUMP_UP",         			"CT_PVP_BOT_EDAN_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJump",          			"CT_PVP_BOT_EDAN_DashJump",      		},
		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_EDAN_BACKWARD_DASH_READY",   },
		
	},
	
	-- 공격은 호쾌하게!!
	
	-- CT_PVP_BOT_EDAN_PULL_SOUL_WEAPON =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- RATE						= 100,
	-- },
	
	CT_PVP_BOT_EDAN_Wolf_Pang =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 15,
	},
	
	CT_PVP_BOT_EDAN_Berserker_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 100,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		TARGET_BELOW_ME				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	
	
	-- CT_PVP_BOT_EDAN_Flying_Impact_Ready =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 600,	
		-- DISTANCE_TO_TARGET_NEAR		= 1200,	
		-- MY_MP_MORE_THAN				= 200,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		-- TARGET_BELOW_ME 			= FALSE, 
		-- RATE						= 33,
	-- },
	
	CT_PVP_BOT_EDAN_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 60,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
		
	CT_PVP_BOT_EDAN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 33,
	},
	
	CT_PVP_BOT_EDAN_DashJump =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
	
	-- CT_PVP_BOT_EDAN_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- DISTANCE_OVER_TARGET_NEAR	= 0,
		-- RATE						= 40,
	-- },
	
	CT_PVP_BOT_EDAN_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_EDAN_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
			
	CT_PVP_BOT_EDAN_JUMP_UP_DIR =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 25,
	},
	
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_WALK =
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_EDAN_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_EDAN_DASH",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_EDAN_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_EDAN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_EDAN_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_EDAN_JUMP_DOWN_DIR",														},
		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_EDAN_BACKWARD_DASH_READY",   },
		
		-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Wolf_Pang_Rush",     			"CT_PVP_BOT_EDAN_Wolf_Pang",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Berserker_Blade",     			"CT_PVP_BOT_EDAN_Berserker_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Shock_Wave",     		"CT_PVP_BOT_EDAN_Shock_Wave",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Flying_Impact_Ready",     		"CT_PVP_BOT_EDAN_Flying_Impact_Ready",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_SHADOW_STEP",     			"CT_PVP_BOT_EDAN_SHADOW_STEP",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Cut_Tendon",     			"CT_PVP_BOT_EDAN_Cut_Tendon",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_One_Flash",     			"CT_PVP_BOT_EDAN_One_Flash",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_ComboZ",     				"CT_PVP_BOT_EDAN_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         				"CT_PVP_BOT_EDAN_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DASH",         				"CT_PVP_BOT_EDAN_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJump",          			"CT_PVP_BOT_EDAN_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_JUMP_UP_DIR",         		"CT_PVP_BOT_EDAN_JUMP_UP_DIR",     	 	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_JUMP_UP",         			"CT_PVP_BOT_EDAN_JUMP_UP",     		 	},
		
	},
	
	-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
	-- CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- TARGET_ABOVE_ME 			= TRUE,
		-- DISTANCE_OVER_TARGET_NEAR	= 1000,	
		-- RATE						= 50,
	-- },
	-- CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 1500,	
		-- RATE						= 50,
	-- },
	
	-- 공격은 호쾌하게!!
	
	CT_PVP_BOT_EDAN_Wolf_Pang =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 15,
	},
	CT_PVP_BOT_EDAN_Berserker_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 15,
	},
	
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		TARGET_BELOW_ME				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
		
	-- CT_PVP_BOT_EDAN_Flying_Impact_Ready =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 600,	
		-- DISTANCE_TO_TARGET_NEAR		= 1200,	
		-- MY_MP_MORE_THAN				= 200,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		-- TARGET_BELOW_ME 			= FALSE, 
		-- RATE						= 33,
	-- },
	
	CT_PVP_BOT_EDAN_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
		IS_ANOTHER_TEAM				= TRUE,
	},
	
	CT_PVP_BOT_EDAN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 40,
	},
	
				
	CT_PVP_BOT_EDAN_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 40,
	},	
			
	-- CT_PVP_BOT_EDAN_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 0,
		-- RATE						= 15,
		-- IS_ANOTHER_TEAM				= TRUE,
	-- },
	
	CT_PVP_BOT_EDAN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 15,
	},
	
	CT_PVP_BOT_EDAN_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 33,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_EDAN_DASH =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_EDAN_DASH",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_EDAN_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_EDAN_DashJump",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_EDAN_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_EDAN_JUMP_DOWN_DIR",														},
		
		-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Wolf_Pang_Rush",     			"CT_PVP_BOT_EDAN_Wolf_Pang",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_SHADOW_STEP",     			"CT_PVP_BOT_EDAN_SHADOW_STEP",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_Flying_Impact_Ready",     			"CT_PVP_BOT_EDAN_Flying_Impact_Ready",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashComboZ",     			"CT_PVP_BOT_EDAN_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashX",         			"CT_PVP_BOT_EDAN_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJump",          		"CT_PVP_BOT_EDAN_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJump",          		"CT_PVP_BOT_EDAN_DashJump2",      		},
		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_EDAN_BACKWARD_DASH_READY",   },
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DASH_END",          		"CT_PVP_BOT_EDAN_DASH_END",      		},
		
		
	},
	
	
	-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
	-- CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- TARGET_ABOVE_ME 			= TRUE,
		-- DISTANCE_OVER_TARGET_NEAR	= 1000,	
		-- RATE						= 50,
	-- },
	-- CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 1500,	
		-- RATE						= 50,
	-- },
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_EDAN_Wolf_Pang =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 900,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 8,
	},
	CT_PVP_BOT_EDAN_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 20,
	},
	
	CT_PVP_BOT_EDAN_13times_Cutting =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 70,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
		
	-- CT_PVP_BOT_EDAN_Flying_Impact_Ready =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- MY_MP_MORE_THAN				= 200,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		-- TARGET_BELOW_ME 			= FALSE, 
		-- DISTANCE_OVER_TARGET_NEAR	= 600,	
		-- DISTANCE_TO_TARGET_NEAR		= 1200,	
		-- RATE						= 20,
	-- },
	
	CT_PVP_BOT_EDAN_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 10,
	},
	
	CT_PVP_BOT_EDAN_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
		
	CT_PVP_BOT_EDAN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
			
	CT_PVP_BOT_EDAN_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 80,
	},
	
	CT_PVP_BOT_EDAN_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
	
	
	-- CT_PVP_BOT_EDAN_BACKWARD_DASH_READY =
	-- {
		-- DISTANCE_OVER_TARGET_NEAR	= 0,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- EVENT_INTERVAL_ID			= 0,
		-- RATE						= 40,
	-- },
}


--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_EDAN_BACKWARD_DASH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_BACKWARD_DASH",	"CT_PVP_BOT_EDAN_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},

}
PVP_BOT_EDAN_BACKWARD_DASH = 
{

	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1,

	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_EDAN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_EDAN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_EDAN_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_EDAN_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY5",       	     	},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJump",          		"CT_PVP_BOT_EDAN_DashJump",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
				
	CT_PVP_BOT_EDAN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 699,
		DISTANCE_OVER_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 899,
		DISTANCE_OVER_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 999,
		DISTANCE_OVER_TARGET_NEAR		= 900,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	

}

PVP_BOT_EDAN_BACKWARD_DASH_FINISH_READY = 
{

	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET     = TRUE, 
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_WAIT",	"CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},

}
PVP_BOT_EDAN_BACKWARD_DASH_FINISH = 
{

	ANIM_NAME			= "Walk",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	VIEW_TARGET     = TRUE, 
	
	ALLOW_DIR_CHANGE			= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_EDAN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_EDAN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_EDAN_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_EDAN_JUMP_DOWN_DIR",														},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",     "CT_PVP_BOT_EDAN_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",     "CT_PVP_BOT_EDAN_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DASH",     "CT_PVP_BOT_EDAN_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_EDAN_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 30,
	},
	CT_PVP_BOT_EDAN_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_EDAN_DASH =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 50,
	},
	
}


--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- move & jump
-- 이동 및 점프에 관한 동작 구현부분입니다.

--------------------------------------------------------------------------
PVP_BOT_EDAN_DASH_END =
{
	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.02, "Step.ogg" },
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",			},
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X			= 0,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_Shock_Wave",          	"CT_PVP_BOT_EDAN_Shock_Wave",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_EDAN_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_ABOVE_ME				= TRUE,
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_EDAN_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_EDAN_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 200,	
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
}

PVP_BOT_EDAN_JUMP_DOWN =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_JUMP_LANDING",	},
	},
}
PVP_BOT_EDAN_JUMP_DOWN_ACT =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_Shock_Wave",          	"CT_PVP_BOT_EDAN_Shock_Wave",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_EDAN_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 75,
	},
	CT_PVP_BOT_EDAN_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		SAME_LINE_WITH_TARGET		= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_JUMP_UP_DIR =
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

	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpX",          	"CT_PVP_BOT_EDAN_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_Shock_Wave",          	"CT_PVP_BOT_EDAN_Shock_Wave",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_EDAN_JUMP_DOWN_DIR",		},
	},
	
	CT_PVP_BOT_EDAN_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		TARGET_ABOVE_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_EDAN_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
		IS_ANOTHER_TEAM				= TRUE,
	},
	-- CT_PVP_BOT_EDAN_JumpZ2 =
	CT_PVP_BOT_EDAN_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_JUMP_DOWN_DIR =
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	HEAD_IK = TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JumpZ",          	"CT_PVP_BOT_EDAN_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_Shock_Wave",          	"CT_PVP_BOT_EDAN_Shock_Wave",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_EDAN_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 60,
	},
	CT_PVP_BOT_EDAN_Shock_Wave =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_JUMP_LANDING =
{
	ANIM_NAME			= "JumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },
	
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	HEAD_IK = TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_JUMP_UP",          	"CT_PVP_BOT_EDAN_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	CT_PVP_BOT_EDAN_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}

--------------------------------------------------------------------------
-- 대시 점프

PVP_BOT_EDAN_DashJump = 
{
	ANIM_NAME					= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ADD_POS_Y		= 45,
	PASSIVE_SPEED_X = INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y = INIT_PHYSIC["DASH_JUMP_SPEED"]*0.6,
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ6",	},
	
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PVP_BOT_EDAN_DashJump_Down",		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_EDAN_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_EDAN_DashJumpComboZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 75,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 50,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 500,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
}

PVP_BOT_EDAN_DashJump_Down = 
{
	ANIM_NAME					= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ",	"CT_PVP_BOT_EDAN_DashJumpComboZ6",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_EDAN_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_EDAN_DashJumpComboZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 75,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 12,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_EDAN_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",											},
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
}

--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- attack
-- 공격에 대한 구현 부분입니다.

-- 대시점프 zz 콤보입니다.

PVP_BOT_EDAN_DashJumpComboZ_for_COMBO = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },       
	HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.1, 0.16, },

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 600.0,

	SOUND_PLAY0			= { 0.088, "Raven_PunchAttack1.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	--BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 10,
		TECH_POINT				= 50,
	},
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_DashJumpComboZ_for_COMBO2",	},
	},
	
}
PVP_BOT_EDAN_DashJumpComboZ_for_COMBO2 = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PVP_BOT_EDAN_ComboZ",	},
	},
	
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}

PVP_BOT_EDAN_DashJumpComboZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },      
	HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.1, 0.16, },

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 500.0,

	SOUND_PLAY0			= { 0.088, "Raven_PunchAttack1.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	--BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 10,
		TECH_POINT				= 50,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboX",	"CT_PVP_BOT_EDAN_ComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_WAIT",	"CT_PVP_BOT_EDAN_WAIT",	},
	},
	CT_PVP_BOT_EDAN_ComboX =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_EDAN_ComboZ =
	{
		FOOT_ON_LINE				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_WAIT =
	{
		IS_ANOTHER_TEAM				= TRUE,
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}


-- 상대가 타격을 받지 않았을 때 방향을 뒤집습니다.

PVP_BOT_EDAN_FLIP_DIR = {

	ANIM_NAME			= "wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_WAIT",	"CT_PVP_BOT_EDAN_WAIT",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.04,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

-- zzzz 콤보 입니다.
PVP_BOT_EDAN_ComboZ = 
{
	VIEW_TARGET     = TRUE, 
		
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE			= { 0, 100 },

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	SOUND_PLAY0			=	{ 0.15, "Raven_Slash1.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	ATTACK_TIME0		= { 0.11, 0.18 },
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 3,

		TECH_POINT				= 20,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZZ",	"CT_PVP_BOT_EDAN_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_BACKWARD_DASH_READY",	"CT_PVP_BOT_EDAN_BACKWARD_DASH_READY",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.27,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.29,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_EDAN_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12458 },
		{ RATE = 4, MESSAGE = STR_ID_12459 },
	},


	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.2, 0.25 },

	SOUND_PLAY0			=	{ 0.329, "Raven_Slash2.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 4,

		TECH_POINT				= 20,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZZX",	"CT_PVP_BOT_EDAN_ComboZZX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZZZ",	"CT_PVP_BOT_EDAN_ComboZZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZZX =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	CT_PVP_BOT_EDAN_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.46,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 65,
	},
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.48,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}

PVP_BOT_EDAN_ComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.24, 0.35 },
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	SOUND_PLAY0			=	{ 0.283, "Raven_Slash1.ogg" },
	SOUND_PLAY1			=   { 0.24, "RavenVoice_Shout03.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.5,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 7,

		TECH_POINT				= 60,
	},


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_13times_Cutting_1", 	"CT_PVP_BOT_EDAN_13times_Cutting", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZZZX", 	"CT_PVP_BOT_EDAN_ComboZZZX", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_Cut_Tendon", 	"CT_PVP_BOT_EDAN_Cut_Tendon", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_One_Flash", 	"CT_PVP_BOT_EDAN_One_Flash", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_Berserker_Blade", 	"CT_PVP_BOT_EDAN_Berserker_Blade", 	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_Hyper_Sonic_Stab",		"CT_PVP_BOT_EDAN_Hyper_Sonic_Stab",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashJumpComboZ_for_COMBO", 	"CT_PVP_BOT_EDAN_DashJumpComboZ_for_COMBO", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashX",		"CT_PVP_BOT_EDAN_DashX",		},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZZZX =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 3,
	},
	CT_PVP_BOT_EDAN_Cut_Tendon =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 40,
		RATE						= 40,
	},
	CT_PVP_BOT_EDAN_One_Flash =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_EDAN_13times_Cutting =
	{
		ANIM_EVENT_TIMER			= 0.46,
		IS_ANOTHER_TEAM				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 70,
		RATE						= 40,
	},
	CT_PVP_BOT_EDAN_Berserker_Blade =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 150,
		RATE						= 20,
	},
	CT_PVP_BOT_EDAN_DashJumpComboZ_for_COMBO =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
		
	CT_PVP_BOT_EDAN_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		RATE						= 70,
	},
	-- CT_PVP_BOT_EDAN_Hyper_Sonic_Stab =
	-- {
		-- ANIM_EVENT_TIMER			= 0.9,
		-- ATTACK_SUCCESS				= TRUE, 
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 500,	
		-- MY_MP_MORE_THAN				= 299,
		-- RATE						= 50,
	-- },
	
	
}

PVP_BOT_EDAN_ComboZZZX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "RBM_COMBO_ZZZX",
	ANIM_SPEED			= 2.0,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SOUND_PLAY0			=	{ 0.200, "Raven_PunchAttack1.ogg" },

	ATTACK_TIME0		= { 0.24, 0.3 },

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,

	EFFECT_SET_LIST = 
	{
		"EffectSet_RBM_BLACKHOLE", 0.13,
	},		
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZZZX_End", 	"CT_PVP_BOT_EDAN_ComboZZZX_End", 	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
	},
	
	CT_PVP_BOT_EDAN_ComboZZZX_End =
	{
		STATE_TIME_OVER	= 1.0,
	},
}

PVP_BOT_EDAN_ComboZZZX_End =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	ANIM_NAME			= "RBM_COMBO_ZZZX_EXPLOSION",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SPEED_X = -900,

	--SUPER_ARMOR			= TRUE,



	EFFECT_SET_LIST =
	{
		"EffectSet_RBM_BLACKHOLE_EXPLOSION", 0,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
}
-- ZZ에서 이어지는 ZZXX 콤보입니다.
PVP_BOT_EDAN_ComboZZX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3a1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,





	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.26, 0.33 },

	SOUND_PLAY0			=	{ 0.26, "Raven_PunchAttack1.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 5,

		TECH_POINT				= 50,
	},


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZZXX",	"CT_PVP_BOT_EDAN_ComboZZXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 90,
	},
	CT_PVP_BOT_EDAN_ComboZZXX =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}
	

PVP_BOT_EDAN_ComboZZXX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3a2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.37, 0.437 },

	SOUND_PLAY0			=	{ 0.384, "Raven_PunchAttack2.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],

		DAMAGE =
		{
			PHYSIC		= 2.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.3,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.2,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 8,
		FORCE_FLY				= TRUE,

		TECH_POINT				= 200,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
}


-- xxx 콤보입니다.
PVP_BOT_EDAN_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
		
	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	ANIM_SPEED			= 1.4,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.28, 0.35 },
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	SOUND_PLAY0			=	{ 0.28, "Raven_PunchAttack1.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 2.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 7,

		TECH_POINT				= 100,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboXX",	"CT_PVP_BOT_EDAN_ComboXX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_BACKWARD_DASH_READY",	"CT_PVP_BOT_EDAN_BACKWARD_DASH_READY",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	
	CT_PVP_BOT_EDAN_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.53,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.54,
		IS_ANOTHER_TEAM				= TRUE,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},
	
	
}

PVP_BOT_EDAN_ComboXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.33, 0.41 },
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	SOUND_PLAY0			=	{ 0.323, "Raven_PunchAttack2.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_METEL_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 2.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,

		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 8,

		TECH_POINT				= 100,
	},
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboXXX",	"CT_PVP_BOT_EDAN_ComboXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	
	CT_PVP_BOT_EDAN_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.58,
		-- ATTACK_SUCCESS				= TRUE,
		IS_ANOTHER_TEAM				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
	
}

PVP_BOT_EDAN_ComboXXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,

	
	SOUND_PLAY0			=   { 0.02, "RavenVoice_Shout03.ogg" },
	SOUND_PLAY1			=	{ 0.01, "Raven_ComboX2Explosion.ogg" },

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EDAN_ComboXXX", 0.19,
	},		
	
	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
}

-- 점프z 공격입니다.
PVP_BOT_EDAN_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.11, 100, },

	SOUND_PLAY0			= { 0.108, "Raven_Slash1.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 7,
		TECH_POINT				= 20,
	},


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.01,

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboX",	"CT_PVP_BOT_EDAN_ComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_JUMP_LANDING",	"CT_PVP_BOT_EDAN_WAIT",	},
	},
	CT_PVP_BOT_EDAN_ComboX =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 10,
	},
	CT_PVP_BOT_EDAN_ComboZ =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_WAIT =
	{
		FOOT_ON_LINE				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_EDAN_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.17, 0.23, },

	SOUND_PLAY0			= { 0.176, "Raven_PunchAttack1.ogg" },
	
	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 2,
		},

		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		TECH_POINT				= 160,
	},


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.01,

	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_JUMP_LANDING",		},
	},
}
-- 대시X 공격입니다.
PVP_BOT_EDAN_DashX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
	ATTACK_TIME0		= { 0.27, 0.4 },
	ATTACK_TIME1		= { 0.65, 0.81 },

	SOUND_PLAY0			=	{ 0.271, "Raven_PunchAttack1.ogg" },
	SOUND_PLAY1			=	{ 0.651, "Raven_DashAttack.ogg" },
	SOUND_PLAY2			=	{ 0.651, "Raven_DashAttack2.ogg" },

	BURNING_NASOD_HAND_POSSIBLE = TRUE,


	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_RAVEN_DashX", 0.7,
	},		
	
	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 0,

		RE_ATTACK				= TRUE,	
		HIT_GAP					= 0.3,		
		STOP_TIME_DEF			= 0.4,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 7,

		TECH_POINT				= 75,

	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboX",	"CT_PVP_BOT_EDAN_ComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_Hyper_Sonic_Stab",	"CT_PVP_BOT_EDAN_Hyper_Sonic_Stab",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ANIM_EVENT_TIMER			= 1.0,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 100,
	},
	CT_PVP_BOT_EDAN_ComboX =
	{
		ANIM_EVENT_TIMER			= 0.9,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 10,
	},
	-- CT_PVP_BOT_EDAN_Hyper_Sonic_Stab =
	-- {
		-- ANIM_EVENT_TIMER			= 0.9,
		-- ATTACK_SUCCESS				= TRUE, 
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 500,	
		-- MY_MP_MORE_THAN				= 299,
		-- RATE						= 50,
	-- },
}


-- 대시ZZ 콤보 공격입니다.
PVP_BOT_EDAN_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.2, 0.3 },

	SOUND_PLAY0			=	{ 0.218, "Raven_Slash1.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0,

		FORCE_DOWN			= 3,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 75,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashComboZZ",	"CT_PVP_BOT_EDAN_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.42,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_EDAN_DashComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	

	ANIM_NAME			= "DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.1,

	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.31, 0.4 },

	SOUND_PLAY0			=	{ 0.305, "Raven_Slash2.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 400,
		BACK_SPEED_Y			= 0,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 75,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_DashComboZZZ",	"CT_PVP_BOT_EDAN_DashComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_DashComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.5,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}

PVP_BOT_EDAN_DashComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	

	ANIM_NAME			= "ST_DashComboZ3",
	ANIM_SPEED			= 1.2,

	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,

	SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 0.5,

	SLASH_TRACE			= { 0.1, 0.6 },
	ATTACK_TIME0		= { 0.39, 0.42 },

	SOUND_PLAY0			=	{ 0.415, "Raven_Slash1.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],

		DAMAGE =
		{
			PHYSIC		= 1,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 1700,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0,

		TECH_POINT				= 150,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_Combo_for_Upper_Attack",		},
	},
}
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- special ablilities(active, special active skills)
-- 액티브, 스페셜 액티브 스킬들에 대한 정의입니다.



-- 맥시멈 캐논(액티브처럼 사용합니다.)

PVP_BOT_EDAN_Maximum_Cannon = 
{
	VIEW_TARGET     = TRUE, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
    APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,

	ANIM_NAME				= "SP1a_MaximumCanon",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	SUPER_ARMOR				= TRUE,
	
	GUARD_DEFENCE               = 75,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= TRUE,

	STATE_STRING			= STR_ID_4283,

	SOUND_PLAY0		     	= { 0.06, "Energy.ogg" },
	SOUND_PLAY1			    = { 0.08,  "RavenVoice_MaximumCanon.ogg" },
	SOUND_PLAY2				= { 0.5,  "Raven_SP_Maximum_Cannon.ogg" },

		
	EFFECT_SET_LIST = 
	{
		"EffectSet_RAVEN_Maximum_Cannon", 0.55,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
}


-- 소울 웨폰 입니다.
PVP_BOT_EDAN_PULL_SOUL_WEAPON = 
{
	VIEW_TARGET     = TRUE, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "RBM_Start",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	
	ATTACK_TIME0		= { 0.11, 0.18 },
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 3,

		TECH_POINT				= 20,
	},
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_PULL_SOUL_WEAPON", 0.05,
	},		
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_WAIT",	"CT_PVP_BOT_EDAN_WAIT",	},
	},
	
	CT_PVP_BOT_EDAN_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.42,
		RATE						= 100,
	},
}

-- 13연참 입니다.
PVP_BOT_EDAN_13times_Cutting_1 = 
{
	VIEW_TARGET     = TRUE, 	
    ANIM_SPEED		= 2,
	IMMADIATE_PACKET_SEND		= TRUE,	
	ANIM_NAME				= "ST_ComboX4a",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,	
	SPEED_X = 500,
	ATTACK_TIME0		= { 0.03, 0.1 },
	ATTACK_TIME1		= { 0.25, 0.3 },
	
	STOP_OTHER_UNIT0		= { 0.02, 0.5, },
	
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12455 },
		{ RATE = 30, MESSAGE = STR_ID_12456 },
		{ RATE = 30, MESSAGE = STR_ID_12457 },
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 0.1,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 300,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TTC_BLADE_ing", 0.001,
	},			
	SOUND_PLAY0		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },	
	SOUND_PLAY1		     	= { 0.01, "Raven_SP_13ChainSlash_01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_13times_Cutting_2",		},
	},	
}
PVP_BOT_EDAN_13times_Cutting_2 = 
{
	VIEW_TARGET     = TRUE, 	
    ANIM_SPEED		= 2,
	IMMADIATE_PACKET_SEND		= TRUE,	
	ANIM_NAME				= "ST_ComboX4a",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,	
	SPEED_X = 500,
	
	ATTACK_TIME0		= { 0.03, 0.1 },
	ATTACK_TIME1		= { 0.25, 0.3 },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 0.2,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 300,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TTC_BLADE_ing", 0.001,
	},			
	SOUND_PLAY0		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_13times_Cutting_3",		},
	},	
}
PVP_BOT_EDAN_13times_Cutting_3 = 
{
	VIEW_TARGET     = TRUE, 	
    ANIM_SPEED		= 2,
	IMMADIATE_PACKET_SEND		= TRUE,	
	ANIM_NAME				= "ST_ComboX4a",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,	
	SPEED_X = 500,
	
	ATTACK_TIME0		= { 0.03, 0.1 },
	ATTACK_TIME1		= { 0.25, 0.3 },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 0.3,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 300,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TTC_BLADE_ing", 0.001,
	},			
	SOUND_PLAY0		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_13times_Cutting_4",		},
	},	
}
PVP_BOT_EDAN_13times_Cutting_4 = 
{
	VIEW_TARGET     = TRUE, 	
    ANIM_SPEED		= 2,
	IMMADIATE_PACKET_SEND		= TRUE,	
	ANIM_NAME				= "ST_ComboX4a",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,
	SPEED_X = 500,
	
	ATTACK_TIME0		= { 0.03, 0.1 },
	ATTACK_TIME1		= { 0.25, 0.3 },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 0.4,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 300,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TTC_BLADE_ing", 0.001,
	},			
	SOUND_PLAY0		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_13times_Cutting_5",		},
	},	
}
PVP_BOT_EDAN_13times_Cutting_5 = 
{
	VIEW_TARGET     = TRUE, 	
    ANIM_SPEED		= 2,
	IMMADIATE_PACKET_SEND		= TRUE,	
	ANIM_NAME				= "ST_ComboX4a",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,
	SPEED_X = 500,
	
	ATTACK_TIME0		= { 0.03, 0.1 },
	ATTACK_TIME1		= { 0.25, 0.3 },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 0.5,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 300,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TTC_BLADE_ing", 0.001,
	},		
	SOUND_PLAY0		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_13times_Cutting_6",		},
	},	
}
PVP_BOT_EDAN_13times_Cutting_6 = 
{
	VIEW_TARGET     = TRUE, 	
    ANIM_SPEED		= 2,
	IMMADIATE_PACKET_SEND		= TRUE,	
	ANIM_NAME				= "ST_ComboX4a",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,
	SPEED_X = 500,
	
	ATTACK_TIME0		= { 0.03, 0.1 },
	ATTACK_TIME1		= { 0.25, 0.3 },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 0.5,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 300,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TTC_BLADE_ing", 0.001,
	},			
	SOUND_PLAY0		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_13times_Cutting_7",		},
	},	
}
PVP_BOT_EDAN_13times_Cutting_7 = 
{
    ANIM_SPEED		= 2.0,

	ANIM_NAME				= "SI_A_RBM_ONE_FLASH",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	CAN_PASS_UNIT			= TRUE,
	
	SLASH_TRACE			= { 0.001, 1000, },

	SOUND_PLAY0		     	= { 0.01, "Raven_SP_SonicSlash_01_a.ogg" },
	
	SPEED_X  = 300,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT			= FALSE,
	
	ATTACK_TIME0		= { 0.2, 0.5 },
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		DAMAGE =
		{
			PHYSIC		= 3.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,	
		STOP_TIME_DEF			= 0.7,	
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		FORCE_DOWN				= 0,
		TECH_POINT				= 20,
	},
	
	EVENT_PROCESS =
	{
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_13times_Cutting_3",	"CT_PVP_BOT_EDAN_13times_Cutting_3",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
}

-- 컷텐던
PVP_BOT_EDAN_Cut_Tendon = 
{

	VIEW_TARGET     = TRUE, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_RST_CUT_TENDON",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	STATE_STRING		= STR_ID_4372,				-- fix!!

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	--INVINCIBLE			= { 0, 1.8, },		-- fix!!
	AFTER_IMAGE			= { 0.1, 100, },

	SLASH_TRACE			= { 0.2, 0.4, },
	ATTACK_TIME0		= { 0.29, 0.31, },

	SOUND_PLAY0			= { 0.276, "Raven_Slash3.ogg" },
	SOUND_PLAY1			= { 0.303, "Raven_Cut_Tendon.ogg" },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.5,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						7,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,

		STOP_TIME_ATT			= 0.0,
		STOP_TIME_DEF			= 0.1,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		HIT_ADD_MP     			= 3,
		TECH_POINT				= 150,
	},

	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Raven_Cut_Tendon", 0,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_ComboZ",          	"CT_PVP_BOT_EDAN_ComboZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.55,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 100,
	},
}
-- 일섬
PVP_BOT_EDAN_One_Flash = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	ANIM_NAME			= "SI_A_RBM_ONE_FLASH",
	ANIM_SPEED			= 1.15,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,

	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,

	SPEED_X  = 600,
	-- SPEED_TIME0 = { 3000, 0, 0.19, 2 },
	-- SPEED_TIME0 = { 100, 0, 0.4, 2 },

	AFTER_IMAGE			= { 0.09, 0.39, },
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.09, 0.25 },

	SOUND_PLAY0					= { 0.001, "RavenVoice_Shout09.ogg" },

	SUPER_ARMOR			= FALSE,

	STATE_STRING		= STR_ID_4863,


	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
		"Sword",
	},
	--UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_RBM_ONE_FLASH", 0,
	},
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_ComboZ",          	"CT_PVP_BOT_EDAN_ComboZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.62,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 100,
	},
}

-- 쉐도우 스텝
PVP_BOT_EDAN_SHADOW_STEP =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	ANIM_NAME			= "SI_A_RF_SHADOW_STEP",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],


	TALK_BOX =
	{
		{ RATE = 25, MESSAGE = STR_ID_12460 },
	},

	AFTER_IMAGE			= { 0, 100, },
	
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,

	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,


	PASSIVE_SPEED_X		= 1000,

	SPEED_X = 0,
	SPEED_Y = 0,


	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.01, 1.5, },


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.01,

	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_SHADOW_STEP", 0,
	},

	SOUND_PLAY0			= { 0.01, "Raven_Shadow_Step.ogg" },

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_SHADOW_STEP_THRUST",          	"CT_PVP_BOT_EDAN_SHADOW_STEP_THRUST",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_DASH_END",		},
	},
	
	CT_PVP_BOT_EDAN_SHADOW_STEP_THRUST =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
}

PVP_BOT_EDAN_SHADOW_STEP_of_EMERGENCY_ESCAPE =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	

	TALK_BOX =
	{
		{ RATE = 50, MESSAGE = STR_ID_12461 },
	},

	ANIM_NAME			= "SI_A_RF_SHADOW_STEP",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],

	AFTER_IMAGE			= { 0, 100, },
	
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,

	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,


	PASSIVE_SPEED_X		= 1000,

	SPEED_X = 0,
	SPEED_Y = 0,


	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.01, 1.5, },


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.01,

	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_SHADOW_STEP", 0,
	},

	SOUND_PLAY0			= { 0.01, "Raven_Shadow_Step.ogg" },

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EDAN_SHADOW_STEP_THRUST",          	"CT_PVP_BOT_EDAN_SHADOW_STEP_THRUST",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_DASH_END",		},
	},
	
	CT_PVP_BOT_EDAN_SHADOW_STEP_THRUST =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
}
-- 쉐도우 피어싱
PVP_BOT_EDAN_SHADOW_STEP_THRUST =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_RF_THRUST",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],

	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,

	SPEED_X				= 200,
	SPEED_Y				= 0,

	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_SHADOW_STEP_THRUST", 0,
	},



	SLASH_TRACE			= { 0.1, 0.4, },
	AFTER_IMAGE			= { 0.01, 100, },
	ATTACK_TIME0		= { 0.1, 0.3, },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 5.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WOUND"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_DASH_IMPOSSIBLE"], },
				
				BBT_CHANGE_NOW_HP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_RELATION_VALUE"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_MIX_ATTACK"],

					MULTIPLIER =
					{
						-0.3,
					},
				},
				BBT_DASH_IMPOSSIBLE =
				{
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},
		DRAIN_HP_RATE			= 0.25,
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,

		STOP_TIME_ATT			= 0.0,
		STOP_TIME_DEF			= 0.0,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},
        SOUND_PLAY0			= { 0.01, "Raven_Thrust.ogg" },
		SOUND_PLAY1			= { 0.01, "Raven_Slash1.ogg" },
		SOUND_PLAY2			= { 0.013, "RavenVoice_Shout09.ogg" },

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_ComboZ",	"CT_PVP_BOT_EDAN_ComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_ComboZ =
	{
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 100,
	},
}

-- 메모 버서커 블레이드
PVP_BOT_EDAN_Berserker_Blade =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "ST_SP1a_BerserkerBlade",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	AFTER_IMAGE			= { 0, 100, },
	
	LAND_CONNECT			= FALSE,
	INVINCIBLE				= { 0, 1.5, },

    SOUND_PLAY0			= { 0.01, "RavenVoice_BerserkerBlade.ogg" },
	SOUND_PLAY1			= { 0.01, "Energy.ogg" },
	SOUND_PLAY2			= { 0.663, "Raven_ST_SP1_BerserkerBlade1.ogg" },
	SOUND_PLAY3			= { 0.663, "Raven_Slash1.ogg" },
	SOUND_PLAY4			= { 0.863, "Raven_ST_SP1_BerserkerBlade2.ogg" },
	SOUND_PLAY5			= { 0.863, "Raven_Slash2.ogg" },
	SOUND_PLAY6			= { 1.023, "Raven_ST_SP1_BerserkerBlade3.ogg" },

	STOP_OTHER_UNIT0			= { 0.06, 0.7, },
	STATE_STRING			= STR_ID_4289,

	EFFECT_SET_LIST =
	{
		"EffectSet_PVP_BOT_BERSERKER_BLADE", 0.6,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_WAIT",												},
	},

}

-- 쇼크 웨이브
PVP_BOT_EDAN_Shock_Wave =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_RST_SHOCKWAVE",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_END = 1.5,

	PASSIVE_SPEED_Y		= 5,
	
	VIEW_TARGET			= TRUE,
	
	INVINCIBLE			= { 0, 1.8, },		-- fix!!
	AFTER_IMAGE			= { 0.1, 100, },

	SOUND_PLAY0			= { 0.01, "RavenVoice_ShockWave.ogg" },
	SOUND_PLAY1			= { 0.001, "Energy.ogg" },

	STATE_STRING		= STR_ID_4295,
	STOP_OTHER_UNIT0		= { 0.02, 1.0, },

	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_SHOCKWAVE", 0,
	},
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],							"PVP_BOT_EDAN_WAIT",												},
	},

}

-- 울프 팽
PVP_BOT_EDAN_Wolf_Pang_Rush =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	ANIM_NAME			= "SI_SA_RBM_WOLF_FANG_Start",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	INVINCIBLE					= { 0, 100, },

	--CAN_PUSH_UNIT		= FALSE,
	--CAN_PASS_UNIT		= TRUE,

	AFTER_IMAGE			= { 0.09, 0.39, },
	SUPER_ARMOR			= FALSE,

	SOUND_PLAY0					= { 0.001, "RavenVoice_WolfFang.ogg" },
	SOUND_PLAY1					= { 0.001, "Energy.ogg" },
	SOUND_PLAY2					= { 0.101, "Raven_RBM_Wolf_Fang1.ogg" },

	PASSIVE_SPEED_X		= 450,
	SPEED_Y				= 1000,

	STOP_OTHER_UNIT0		= { 0.02, 0.5, },
	STATE_STRING		= STR_ID_4864,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,

	ATTACK_TIME0		= { 0.01, 100.0 },


	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		ATTACK_TYPE		= ATTACK_TYPE["AT_SPECIAL"],

		DAMAGE =
		{
			PHYSIC		= 1.3,
		},

        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		STOP_TIME_DEF			= 0.8,

		BACK_SPEED_X			= 500,
		BACK_SPEED_Y			= 0.0,

		--FORCE_DOWN			= 7,

		HIT_ADD_MP     			= 1,
		TECH_POINT				= 71,
	},

	-- DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_RBM_WolfFang", 0,
	},
	
	EVENT_PROCESS = 
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_Wolf_Pang_Hit",	"CT_PVP_BOT_EDAN_Wolf_Pang_Hit",	},		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_Wolf_Pang_Failed",		},
	},
	CT_PVP_BOT_EDAN_Wolf_Pang_Hit =
	{
		ATTACK_SUCCESS				= TRUE, 
		RATE						= 100,
	},
}
PVP_BOT_EDAN_Wolf_Pang_Failed =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	ANIM_NAME			= "SI_SA_RBM_WOLF_FANG_StartLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_DASH_END",		},
	},
}
PVP_BOT_EDAN_Wolf_Pang_Hit =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_RBM_WOLF_FANG_Hit",
	ANIM_SPEED			= 0.8,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	INVINCIBLE					= { 0, 1000, },

	SPEED_Y = 1800,
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,

	SUPER_ARMOR			= TRUE,

	SPEED_TIME0			= { 300, 900, 0.01, 2 },
	SPEED_TIME1			= { 300, 700, 0.2, 1 },
	SPEED_TIME2			= { 0, 700, 0.214, 1 },
	SPEED_TIME3			= { 0, -1500, 0.57, 2 },

	--UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,

	EFFECT_SET_LIST =
	{
		"EffectSet_RBM_WolfFang_Hit", 0,
	},
	HYPER_EFFECT_SET = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_Wolf_Pang_Hit_End",		},
	},
}
PVP_BOT_EDAN_Wolf_Pang_Hit_End =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_RBM_WOLF_FANG_HitLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	--CAN_PUSH_UNIT		= FALSE,
	--CAN_PASS_UNIT		= TRUE,

	SUPER_ARMOR			= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_DASH_END",		},
	},
}

-- 플라잉 임팩트
PVP_BOT_EDAN_Flying_Impact_Ready =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	ANIM_NAME				= "ST_SP2a_ArcEnemy",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	AFTER_IMAGE			= { 0, 100, },

    SOUND_PLAY0			= { 0.01, "RavenVoice_FlyingImpact.ogg" },
	SOUND_PLAY1			= { 0.01, "Energy.ogg" },
	SOUND_PLAY2			= { 0.523, "Raven_ST_SP2_ArcEnemy1.ogg" },
	SOUND_PLAY3			= { 0.920, "Raven_ST_SP2_ArcEnemy2.ogg" },
	SOUND_PLAY4			= { 1.427, "Raven_ST_SP2_ArcEnemy3.ogg" },

	LAND_CONNECT			= FALSE,
	INVINCIBLE				= { 0, 2.83, },

	STOP_OTHER_UNIT0			= { 0.06, 0.8, },
	STATE_STRING			= STR_ID_4290,

	
	EFFECT_SET_LIST =
	{
		"EffectSet_PVP_BOT_FLYING_IMPACT", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	STATE_STRING		= STR_ID_9745,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
}

-- 각성합니다
PVP_BOT_EDAN_BOOST_POWER =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	

	TALK_BOX =
	{
		{ RATE = 40, MESSAGE = STR_ID_12464 },
		{ RATE = 40, MESSAGE = STR_ID_12465 },
	},

	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	
	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.1, 100, },
		
	--STOP_ALL_UNIT0		= { 0.08, 1.6, 0.5 },
	STOP_OTHER_UNIT0  = { 0.08, 0.88, },
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.83, "Break.ogg" },	
	SOUND_PLAY3			= { 0.83, "Change.ogg" },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_WAIT",												},
	},

}

--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Combo
-- UP 공격에 대한 콤보 구현 부분입니다.

PVP_BOT_EDAN_Combo_for_Upper_Attack =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.01,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",														},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_ComboZ",    		 	"CT_PVP_BOT_EDAN_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DashJumpComboZ_for_COMBO",    		 	"CT_PVP_BOT_EDAN_DashComboZ",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_WAIT",												},
		  		
	},	
	-- 잡자!
	
	CT_PVP_BOT_EDAN_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_EDAN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 40,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 30,
	},
}
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- (damaged) react
-- 리액트에 대한 구현 부분입니다.



PVP_BOT_EDAN_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12462 },
		{ RATE = 4, MESSAGE = STR_ID_12463 },
	},


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 3,
	},
	
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12462 },
		{ RATE = 4, MESSAGE = STR_ID_12463 },
	},



	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_SHADOW_STEP_of_EMERGENCY_ESCAPE",	"CT_PVP_BOT_EDAN_SHADOW_STEP",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	CT_PVP_BOT_EDAN_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "RavenVoice_DamageScream03.ogg" , 20 },


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12462 },
		{ RATE = 4, MESSAGE = STR_ID_12463 },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "RavenVoice_DamageScream03.ogg" , 20 },

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12462 },
		{ RATE = 4, MESSAGE = STR_ID_12463 },
	},


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_SHADOW_STEP_of_EMERGENCY_ESCAPE",	"CT_PVP_BOT_EDAN_SHADOW_STEP",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_WAIT",		},
	},
	
	
	CT_PVP_BOT_EDAN_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.19, "Down.ogg" },
	SOUND_PLAY1			= { 0.19, "RavenVoice_DamageScream01.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_EDAN_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },
	SOUND_PLAY0			= { 0.32, "Down.ogg" },
 	SOUND_PLAY1			= { 0.19, "RavenVoice_DamageScream01.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_EDAN_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_EDAN_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0		= { 0.01, "RavenVoice_DamageScream02.ogg" , 30 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0		= { 0.01, "RavenVoice_DamageScream02.ogg" , 30 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_SHADOW_STEP_of_EMERGENCY_ESCAPE",	"CT_PVP_BOT_EDAN_SHADOW_STEP",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_DAMAGE_DOWN_BACK",	},
	},
	
	
	CT_PVP_BOT_EDAN_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 2,
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0		= { 0.01, "RavenVoice_DamageScream02.ogg" , 30 },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0		= { 0.01, "RavenVoice_DamageScream02.ogg" },


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_EDAN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_EDAN_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0		= { 0.029, "Down.ogg" },
	SOUND_PLAY1		= { 0.46, "Down.ogg" },
	SOUND_PLAY2		= { 0.1, "RavenVoice_DamageScream04.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_EDAN_STAND_UP_FRONT",		},
	},

}

-- 마나브레이크(기폭) 테스트입니다.
--------------------------------------------------------------------------
PVP_BOT_EPIK_MANA_BREAK_FRONT =
{
	ANIM_SPEED					= 0.001,
	ANIM_NAME					= "NONE",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X = 1,
	PASSIVE_SPEED_Y	= 1,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EPIK_MANA_BREAK_BACK =
{
	ANIM_SPEED					= 0.001,
	ANIM_NAME					= "NONE",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	PASSIVE_SPEED_X = 1,
	PASSIVE_SPEED_Y	= 1,
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EDAN_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_STAND_UP_FRONT =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_RF_GET_CHANCE_FRONT",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.23, 0.4, },


	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,

	SOUND_PLAY0			= { 0.492, "Raven_Slash1.ogg" },

	INVINCIBLE			= { 0, 100, },

	DAMAGE_DATA =
	{

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_STANDUP_WAIT",	"CT_PVP_BOT_EDAN_WAIT",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
	},
	CT_PVP_BOT_EDAN_WAIT =
	{
		ANIM_PLAY_COUNT				= 1,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_EDAN_STAND_UP_BACK =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_RF_GET_CHANCE_BACK",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	
	FLIP_DIR_END		= TRUE,		-- 상태가 끝날 때 캐릭터의 방향을 반대로 바꿔버린다


	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.23, 0.4, },

	INVINCIBLE			= { 0, 100, },


	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,

	SOUND_PLAY0			= { 0.477, "Raven_Slash1.ogg" },
	SOUND_PLAY1			= { 0.973, "Raven_Slash2.ogg" },

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_EDAN_STANDUP_WAIT",	"CT_PVP_BOT_EDAN_WAIT",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_EDAN_JUMP_DOWN_ACT",	},
	},
	CT_PVP_BOT_EDAN_WAIT =
	{
		ANIM_PLAY_COUNT				= 1,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_EDAN_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		


	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_EDAN_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		


	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_EDAN_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
		
	end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
		
	end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
		
	end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		local pos = pNPCUnit:GetLandPosition_LUA()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		pos.y = pos.y + 5
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		local pParticle = pMinorParticle:CreateSequence_LUA( "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetLandPosition( pos.y - 5 )
		end

		if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
			pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
		end

	elseif pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	-- local pos = pNPCUnit:GetPos()
	-- pos.y = pos.y + 100.0
	-- local GetMinorParticle = pX2Game:GetMinorParticle()

	-- local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	-- if pSeq ~= nil then
		-- pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		-- pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	-- end
	-- pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end
--------------------------------------------------------------------------
function PVP_BOT_EDAN_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
		
end
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos
end


function PVP_BOT_EDAN_13times_Cutting_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 40)
	end
	  
end	

function PVP_BOT_EDAN_Cut_Tendon_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_EDAN_One_Flash_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_EDAN_SHADOW_STEP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
		-- pNPCUnit:SetShow(false) 	
end	

function PVP_BOT_EDAN_SHADOW_STEP_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
		pNPCUnit:SetShow(true) 
end	

function PVP_BOT_EDAN_SHADOW_STEP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_EDAN_SHADOW_STEP_THRUST_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 10)
	end
	  
end	

function PVP_BOT_EDAN_PULL_SOUL_WEAPON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 40)
	end
	  
end	

function PVP_BOT_EDAN_Berserker_Blade_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end	
end	

function PVP_BOT_EDAN_Shock_Wave_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end	
end	

function PVP_BOT_EDAN_Wolf_Pang_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end	
end	

-- function PVP_BOT_EDAN_Hyper_Sonic_Stab_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	-- pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	-- if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		-- pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		-- local p1EffectSet = pX2Game:GetEffectSet()
		-- -- local h1Effect = p1EffectSet:PlayEffectSet_LUA( "EffectSet_OutLine_image", pNPCUnit )
		
		-- if pNPCUnit:GetIsRight() then	
			-- local pEffectSet = pX2Game:GetEffectSet()
			-- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_Talk_Right_for_BOT", pNPCUnit )
			-- -- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_for_BOT_EVE", pNPCUnit )
		-- else	
			-- pMinorParticle = pX2Game:GetMinorParticle()
			-- local pEffectSet = pX2Game:GetEffectSet()
			-- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_Talk_Left_for_BOT", pNPCUnit )
			-- -- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_for_BOT_EVE_LEFT", pNPCUnit )
		
		-- end
		-- local nowMp = pNPCUnit:GetNowMP() 
		-- pNPCUnit:SetNowMP(nowMp - 300)
	-- end	
-- end	

function PVP_BOT_EDAN_Flying_Impact_Ready_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end	
end	
function PVP_BOT_EDAN_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	pX2Game:SetWorldColor_LUA( D3DXCOLOR( 0.1, 0.1, 0.1, 1 ) )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pNPCUnit:PlaySound_LUA( "Energy.ogg" )
		
		bonePos = pNPCUnit:GetBonePos_LUA("Bip01")	
		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pMajorParticle:CreateSequence_LUA( "SpecialEnergyCenter",	bonePos, D3DXVECTOR2(20,40), D3DXVECTOR2(10,-1) )
		pParticle = pMajorParticle:CreateSequence_LUA( "SpecialEnergyLine",		bonePos, D3DXVECTOR2(40,80), D3DXVECTOR2(20,-1) )
		pParticle:SetBlackHolePosition( bonePos )
		pParticle:UseLookPoint( true )
		pParticle:SetLookPoint( bonePos )
	
	end	

		
	if pNPCUnit:AnimEventTimer_LUA( 1.042 ) then
	
		pNPCUnit:ChangeHyperMode_LUA()
		pNPCUnit:PlaySound_LUA( "Change.ogg" )
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.742 ) then
	
		pNPCUnit:ChangeHyperMode_LUA()
		pNPCUnit:PlaySound_LUA( "Break.ogg" )
		
		bonePos = pNPCUnit:GetBonePos_LUA("Bip01")	
		pMinorParticle = pX2Game:GetMinorParticle()	
		pMinorParticle:CreateSequence_LUA( "STR_ToKang_for_BOT", bonePos, D3DXVECTOR2(100,150), D3DXVECTOR2(1,-1) )
		pMinorParticle:CreateSequence_LUA( "GroundShockWave", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pMinorParticle:CreateSequence_LUA( "WhiteShockWave", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pMinorParticle:CreateSequence_LUA( "ImpactTick", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
	end

end

	

function CF_PVP_BOT_EDAN_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )
	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
	if fRemainHPRate < 0.5 then		
		if pNPCUnit:GetHyperModeCount() > 0 then		
			return true			
		end	
	end
end





function PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )			
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then	
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end	
end	