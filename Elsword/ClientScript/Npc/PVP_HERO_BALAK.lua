-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[  / 2011/5/13 / 고통의 군주 발락/
	 
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
		"Break_Impact01.dds",
		"stone.dds",
		"CenterLight_Gray01.dds",
		"Condense_Light01.dds",
		"Lire_01_SpinningKick05.tga",
		"WC_01.tga",
	},
	READY_SOUND =
	{
		"Step.ogg",
		"Raven_PunchAttack1.ogg",
		"Raven_PunchAttack2.ogg",
		"Raven_Slash1.ogg",
		"Raven_Slash2.ogg",
		"Raven_Slash3.ogg",
		"RavenVoice_Shout01.ogg",
		"RavenVoice_Shout03.ogg",
		"RavenVoice_Shout06.ogg",
		"RavenVoice_Shout08.ogg",
		"RavenVoice_Shout09.ogg",
		"Raven_ComboX2Explosion.ogg",
		"Raven_DashAttack.ogg",
		"Raven_DashAttack2.ogg",
		"Energy.ogg",
		"RavenVoice_MaximumCanon.ogg",
		"Raven_SP_Maximum_Cannon.ogg",
		"Raven_RRF_X_Crash1.ogg",
		"Raven_RRF_X_Crash2.ogg",
		"Raven_Weapon_Break.ogg",
		"Raven_RRF_Ground_Impact.ogg",
		"Raven_Shadow_Step.ogg",
		"Raven_Thrust.ogg",
		"RavenVoice_ChargedBolt.ogg",
		"Raven_ValkyriesJavelin.ogg",
		"RavenVoice_ValkyriesJavelin.ogg",
		"Raven_ValkyriesJavelin_Landing.ogg",
		"RavenVoice_Nuclear.ogg",
		"Raven_Nuclear1.ogg",
		"Raven_Nuclear2.ogg",
		"RavenVoice_WildCharge.ogg",
		"Raven_WildCharge_Ready.ogg",
		"Raven_WildCharge.ogg",
		"RavenVoice_DamageScream01.ogg",
		"RavenVoice_DamageScream02.ogg",
		"RavenVoice_DamageScream03.ogg",
		"RavenVoice_DamageScream04.ogg",
		"RavenVoice_DieScream1.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
		"Thief_Fat_JumpAttackA_Stone02.Y",
		"Up_Impact01.Y",
	},
	READY_XSKIN_MESH = 
	{	
		"Raven_SI_A_RF_Shadow_Step_Mesh01.X",
		"Raven_SI_A_RF_Thrust_Mesh01.X",
		"Raven_SI_SA_ROT_VKJ_Mesh01.X",
		"Raven_SI_SA_ROT_VKJ_Spear_Mesh01.X",
		"SI_SA_ROT_NUCLEAR_Effect_Nuclear.X",
		"SI_SA_ROT_NUCLEAR_Effect_Bottom_Light.X",
		"SI_SA_ROT_NUCLEAR_Effect_Explosion_Light.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Body.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Head.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Body_A.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Head_A.X",
		"SI_SA_ROT_NUCLEAR_Effect_Mushroom_Body.X",
		"SI_SA_ROT_NUCLEAR_Effect_Mushroom_Head.X",
		"SI_SA_ROT_NUCLEAR_Effect_Mushroom_Head.X",
		"SI_SA_ROT_NUCLEAR_Effect_Dust01.X",
		"SI_SA_ROT_NUCLEAR_Effect_Dust02.X",
		"Raven_RRF_Ground_Impact_AttackBox01.X",
		"Elsword_Double_Slash_Mesh004.X",
		"Raven_SI_A_RF_Thrust_Mesh01.X",
		"SpinningKick02.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_BALAK.x",
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
	-- 초당 MP5.5가 회복됩니다.
	MP_CHANGE_RATE		= 4,
	MP_CHARGE_RATE		= 300,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = TRUE,
	
	-- 기본 속도가 28% 증가로 유저보다 매우 빠릅니다.
	DEFAULT_ANIM_SPEED = 1.28,
	
	-- 최대 10번의 각성을 합니다.
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
	
	
	FORCE_DOWN_GAGE_MAX = 100,
	-- NOT_EXTRA_DAMAGE	= TRUE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DIE_FLY			= FALSE,
	
	AFTER_IMAGE_LAYER = X2_LAYER["XL_SKY_WORLD_OBJECT_2"],
	
	AFTER_IMAGE_COLOR_R = 0.5, 
	AFTER_IMAGE_COLOR_G = 0.5, 
	AFTER_IMAGE_COLOR_B = 0.5,
	AFTER_IMAGE_COLOR_A = 0.5,
	
	AFTER_IMAGE_DEST_ALPHA_BLEND = TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Raven_Event_Weapon10_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Raven_AC_ARM_133249_Sorted.X",
		WEAPON_BONE_NAME			= "Bip01_L_Forearm",			
	},
	
	
	-- pvp_bot : y 악세서리 추가
	ATTACH_MESH0 =
	{
		ATTACH_MESH_NAME = "MESH_PVP_HERO_BALAK_AC.X",
		ATTACH_BONE_NAME = "Bip01_Spine",
	},
	ATTACH_MESH1 =
	{
		ATTACH_MESH_NAME = "Mesh_Raven_AC_Face2_133243_Sorted.Y",
		ATTACH_BONE_NAME = "Bip01_Head",
	},
	
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 노전직 레이븐은 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_BALAK_START",							},
	
	-- 승리모션입니다. 노전직 레이븐은 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_BALAK_WIN",							},
    { STATE_NAME = "PVP_BOT_BALAK_WIN2",							},
	
	-- 승리모션입니다. 노전직 레이븐은 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_BALAK_LOSE",							},
    { STATE_NAME = "PVP_BOT_BALAK_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_BALAK_WAIT",							},
	-- 기상 후 무적을 갖게 하는 wait 상태 입니다.
	{ STATE_NAME = "PVP_BOT_BALAK_STANDUP_WAIT",							},

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
	{ STATE_NAME = "PVP_BOT_BALAK_WALK",							},
    { STATE_NAME = "PVP_BOT_BALAK_DASH",							},
    { STATE_NAME = "PVP_BOT_BALAK_FLIP_DIR",						},
	-- 뒤로 걷는것 따위 하지 않겠습니다. 별이 5개 짜리임.
    -- { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_MOVE_READY",										STATE_COOL_TIME = 1,					},
    -- { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_MOVE",					},
    -- { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_MOVE_FINISH_READY",	},
    -- { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_MOVE_FINISH",			},
    { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_DASH_READY",											},
    { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_BALAK_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_BALAK_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지) 입니다.
	{ STATE_NAME = "PVP_BOT_BALAK_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_BALAK_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_BALAK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_BALAK_JUMP_DOWN_ACT",						LUA_STATE_END_FUNC = "PVP_BOT_BALAK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_BALAK_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_BALAK_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_BALAK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_BALAK_JUMP_LANDING",					},

	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_BALAK_ComboZ",									},
	{ STATE_NAME = "PVP_BOT_BALAK_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_BALAK_ComboZZZ",						},
	
	-- zzxx 콤보
	{ STATE_NAME = "PVP_BOT_BALAK_ComboZZX",						},
	{ STATE_NAME = "PVP_BOT_BALAK_ComboZZXX",						},
	
	-- xxx 콤보 (xx에서 xxx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_BALAK_ComboX",										},
	{ STATE_NAME = "PVP_BOT_BALAK_ComboXX",						},
	{ STATE_NAME = "PVP_BOT_BALAK_ComboXXX",			},
	
	-- 대시점프 xx 콤보 (x에서 xx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_BALAK_DashJump",						},
	{ STATE_NAME = "PVP_BOT_BALAK_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_BALAK_DashJumpComboZ",						},
	--{ STATE_NAME = "PVP_BOT_BALAK_DashJumpComboZZ",				},
	{ STATE_NAME = "PVP_BOT_BALAK_DashJumpComboZ_for_COMBO",				},
	{ STATE_NAME = "PVP_BOT_BALAK_DashJumpComboZ_for_COMBO2",				},

	-- 대시 x 공격
	{ STATE_NAME = "PVP_BOT_BALAK_DashX",							},
	
	-- 대시 zz 콤보 (z에서 zz으로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_BALAK_DashComboZ",										},
	{ STATE_NAME = "PVP_BOT_BALAK_DashComboZZ",					},
	
	-- 점프 z 공격 
	{ STATE_NAME = "PVP_BOT_BALAK_JumpZ",												},
	
	-- 맥시멈 캐논을 슈아 통상기로 사용합니다.
	{ STATE_NAME = "PVP_BOT_BALAK_Maximum_Cannon",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Maximum_Cannon_FRAME_MOVE"	 },
	
	-- 웨폰 브레이크를 시전합니다.
	{ STATE_NAME = "PVP_BOT_BALAK_Weapon_Break",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Weapon_Break_FRAME_MOVE"	 },
	
	-- 그라운드 임팩트를 시전합니다.
	{ STATE_NAME = "PVP_BOT_BALAK_Ground_Impact",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Ground_Impact_FRAME_MOVE"	 },
	
	-- 쉐도우 스텝 ~ 피어싱 까지
	{ STATE_NAME = "PVP_BOT_BALAK_SHADOW_STEP",					STATE_COOL_TIME = 5,	LUA_STATE_START_FUNC = "PVP_BOT_BALAK_SHADOW_STEP_STATE_START",
																						LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_SHADOW_STEP_FRAME_MOVE",
																						LUA_STATE_END_FUNC = "PVP_BOT_BALAK_SHADOW_STEP_STATE_END",},
	{ STATE_NAME = "PVP_BOT_BALAK_SHADOW_STEP_THRUST",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_SHADOW_STEP_THRUST_FRAME_MOVE"	 },
	
	-- 고통의 낙인을 시전합니다.
	{ STATE_NAME = "PVP_BOT_BALAK_Stigma_of_Pain_1",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Stigma_of_Pain_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_BALAK_Stigma_of_Pain_2",						},
	{ STATE_NAME = "PVP_BOT_BALAK_Stigma_of_Pain_3",						},
	{ STATE_NAME = "PVP_BOT_BALAK_Stigma_of_Pain_4",						},
	{ STATE_NAME = "PVP_BOT_BALAK_Stigma_of_Pain_5",						},
	
	-- 메모 차지드 볼트!(크기가 크고 강합니다.)
	{ STATE_NAME = "PVP_BOT_BALAK_Charged_Bolt",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Charged_Bolt_FRAME_MOVE"	 },
	
	-- 발키리스 자벨린!
	{ STATE_NAME = "PVP_BOT_BALAK_Valkyries_Javelin",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Valkyries_Javelin_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_BALAK_Valkyries_Javelin_Landing",			 },
	
	-- 뉴클리어!
	{ STATE_NAME = "PVP_BOT_BALAK_Nuclear",					STATE_COOL_TIME = 30,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Nuclear_FRAME_MOVE"	 },
	
	-- 와일드 차지!(노충전으로 바로 사용합니다.)
	{ STATE_NAME = "PVP_BOT_BALAK_Wild_Charge_Ready",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_Wild_Charge_Ready_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_BALAK_Wild_Charge_Attack",					 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_BALAK_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_BOOST_POWER_FRAME_MOVE"	},
	
	-- 띄우는 공격을 행하였을 때 기다렸다가 발차기나 여타 스킬로 이어갈 수 있도록 해주는 콤보 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_BALAK_Combo_for_Upper_Attack",										},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_BALAK_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_BALAK_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_BALAK_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_BALAK_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_BALAK_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_BALAK_DAMAGE_REVENGE",				},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_BALAK_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_BALAK_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_BALAK_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_BALAK_DYING_LAND_STATE_START",			},

{ STATE_NAME = "PVP_BOT_BALAK_DashJump_Down", },

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_BALAK_START",
	WAIT_STATE					= "PVP_BOT_BALAK_WAIT",
	WIN_STATE					= "PVP_BOT_BALAK_WIN",
	LOSE_STATE					= "PVP_BOT_BALAK_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_BALAK_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_BALAK_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_BALAK_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_BALAK_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_BALAK_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_BALAK_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_BALAK_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_BALAK_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_BALAK_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_BALAK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_BALAK_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_BALAK_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_BALAK_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "PVP_BOT_BALAK_DAMAGE_AIR_DOWN","PVP_BOT_BALAK_DAMAGE_AIR_FALL","PVP_BOT_BALAK_STAND_UP_FRONT",	"PVP_BOT_BALAK_STAND_UP_BACK",
		"PVP_BOT_BALAK_JUMP_DOWN","PVP_BOT_BALAK_JUMP_LANDING",},	
	WAIT_STATES                 = { "PVP_BOT_BALAK_STANDUP_WAIT", },	
	
	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_BALAK_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_BALAK_DYING_BACK",
	DYING_SKY					= "PVP_BOT_BALAK_DYING_FRONT",

	REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
-- 기본 AI 설정입니다.
INIT_AI =
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 50, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 2000,
		DEST_GAP			= 250,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 270,
		
		DIR_CHANGE_INTERVAL = 0.3,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   --  10,
		FAR_WALK_RATE		= 0,   -- 10,
		
		JUMP_INTERVAL		= 30,
		UP_JUMP_RATE		= 100, -- 10,
		UP_DOWN_RATE		= 100,
		DOWN_JUMP_RATE		= 100,    --  10,
		DOWN_DOWN_RATE		= 100,
		
		LINE_END_RANGE		= 80,	-- cm
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
PVP_BOT_BALAK_WIN =
{
	ANIM_NAME					= "RRF_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12484 },
		{ RATE = 30, MESSAGE = STR_ID_12485 },
		{ RATE = 30, MESSAGE = STR_ID_12486 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_BALAK_WIN2 =
{
	ANIM_NAME					= "RRF_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12484 },
		{ RATE = 30, MESSAGE = STR_ID_12485 },
		{ RATE = 30, MESSAGE = STR_ID_12486 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_BALAK_LOSE =
{
	ANIM_NAME					= "RRF_Lose2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12487 },
		{ RATE = 33, MESSAGE = STR_ID_12488 },
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
PVP_BOT_BALAK_LOSE2 =
{
	ANIM_NAME					= "RRF_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12487 },
		{ RATE = 33, MESSAGE = STR_ID_12488 },
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
PVP_BOT_BALAK_START =
{
	ANIM_NAME					= "RRF_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_WAIT",		"CT_PVP_BOT_BALAK_WAIT"	},
	},
	CT_PVP_BOT_BALAK_WAIT =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_BALAK_WAIT",	}
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
	STOP_OTHER_UNIT0  = { 0.0, 0.88, },
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
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
	STOP_OTHER_UNIT0  = { 0.0, 0.88, },
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
	},

}
--------------------------------------------------------------------------
PVP_BOT_BALAK_WAIT =
{
	ANIM_NAME	= "Fatal",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_BALAK_BOOST_POWER",			"CF_PVP_BOT_BALAK_BOOST_POWER",									},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_BALAK_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_BALAK_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_BALAK_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_BALAK_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_BALAK_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Charged_Bolt",     			"CT_PVP_BOT_BALAK_Charged_Bolt",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Valkyries_Javelin",     		"CT_PVP_BOT_BALAK_Valkyries_Javelin",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Wild_Charge_Ready",     		"CT_PVP_BOT_BALAK_Wild_Charge_Ready",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_SHADOW_STEP",     			"CT_PVP_BOT_BALAK_SHADOW_STEP",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_ComboZ",     				"CT_PVP_BOT_BALAK_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH",         				"CT_PVP_BOT_BALAK_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH",         				"CT_PVP_BOT_BALAK_DASH2",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_JUMP_UP_DIR",         		"CT_PVP_BOT_BALAK_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_JUMP_UP",         			"CT_PVP_BOT_BALAK_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJump",          			"CT_PVP_BOT_BALAK_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WALK",         				"CT_PVP_BOT_BALAK_WALK",       		    },
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_READY",     	"CT_PVP_BOT_BALAK_BACKWARD_DASH_READY",   },
		
	},
	
	-- 공격은 호쾌하게!!
	
	CT_PVP_BOT_BALAK_Charged_Bolt =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},
	
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 25,
	},
	
	
	CT_PVP_BOT_BALAK_Wild_Charge_Ready =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 200,
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME 			= FALSE, 
		RATE						= 33,
	},
	
	CT_PVP_BOT_BALAK_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 20,
	},
		
	CT_PVP_BOT_BALAK_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_BALAK_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_BALAK_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 40,
	},
	
	CT_PVP_BOT_BALAK_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 100,
	},
		
	CT_PVP_BOT_BALAK_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
			
	CT_PVP_BOT_BALAK_DASH2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		RATE						= 99,
	},
	
	CT_PVP_BOT_BALAK_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_BALAK_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 10,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_STANDUP_WAIT =
{
	ANIM_NAME	= "Fatal",
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_BALAK_BOOST_POWER",			"CF_PVP_BOT_BALAK_BOOST_POWER",									},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_BALAK_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_BALAK_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_BALAK_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_BALAK_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_BALAK_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Charged_Bolt",     			"CT_PVP_BOT_BALAK_Charged_Bolt",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Valkyries_Javelin",     		"CT_PVP_BOT_BALAK_Valkyries_Javelin",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Wild_Charge_Ready",     		"CT_PVP_BOT_BALAK_Wild_Charge_Ready",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_SHADOW_STEP",     			"CT_PVP_BOT_BALAK_SHADOW_STEP",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_ComboZ",     				"CT_PVP_BOT_BALAK_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH",         				"CT_PVP_BOT_BALAK_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH",         				"CT_PVP_BOT_BALAK_DASH2",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_JUMP_UP_DIR",         		"CT_PVP_BOT_BALAK_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_JUMP_UP",         			"CT_PVP_BOT_BALAK_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJump",          			"CT_PVP_BOT_BALAK_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WALK",         				"CT_PVP_BOT_BALAK_WALK",       		    },
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_READY",     	"CT_PVP_BOT_BALAK_BACKWARD_DASH_READY",   },
		
	},
	
	-- 공격은 호쾌하게!!
	
	CT_PVP_BOT_BALAK_Charged_Bolt =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},
	
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 25,
	},
	
	
	CT_PVP_BOT_BALAK_Wild_Charge_Ready =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 200,
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME 			= FALSE, 
		RATE						= 33,
	},
	
	CT_PVP_BOT_BALAK_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 20,
	},
		
	CT_PVP_BOT_BALAK_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_BALAK_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_BALAK_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 40,
	},
	
	CT_PVP_BOT_BALAK_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 100,
	},
		
	CT_PVP_BOT_BALAK_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
			
	CT_PVP_BOT_BALAK_DASH2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		RATE						= 99,
	},
	
	CT_PVP_BOT_BALAK_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_BALAK_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 10,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_BALAK_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_BALAK_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_BALAK_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_BALAK_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_BALAK_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_BALAK_JUMP_DOWN_DIR",														},
		
		-- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Charged_Bolt",     			"CT_PVP_BOT_BALAK_Charged_Bolt",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Valkyries_Javelin",     		"CT_PVP_BOT_BALAK_Valkyries_Javelin",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Wild_Charge_Ready",     		"CT_PVP_BOT_BALAK_Wild_Charge_Ready",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_SHADOW_STEP",     			"CT_PVP_BOT_BALAK_SHADOW_STEP",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Weapon_Break",     			"CT_PVP_BOT_BALAK_Weapon_Break",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Ground_Impact",     			"CT_PVP_BOT_BALAK_Ground_Impact",       	     	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Stigma_of_Pain_1",     		"CT_PVP_BOT_BALAK_Stigma_of_Pain",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_ComboZ",     				"CT_PVP_BOT_BALAK_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         				"CT_PVP_BOT_BALAK_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH",         				"CT_PVP_BOT_BALAK_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJump",          			"CT_PVP_BOT_BALAK_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_JUMP_UP_DIR",         		"CT_PVP_BOT_BALAK_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_JUMP_UP",         			"CT_PVP_BOT_BALAK_JUMP_UP",     		 	},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_READY",     	"CT_PVP_BOT_BALAK_BACKWARD_DASH_READY",   },
		
	},
	
	-- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
	CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 1000,	
		RATE						= 50,
	},
	CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1500,	
		RATE						= 50,
	},
	
	-- 공격은 호쾌하게!!
	
	CT_PVP_BOT_BALAK_Charged_Bolt =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 15,
	},
	
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,		
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 20,
	},
		
	CT_PVP_BOT_BALAK_Wild_Charge_Ready =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 200,
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME 			= FALSE, 
		RATE						= 33,
	},
	
	CT_PVP_BOT_BALAK_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
	},
	
	CT_PVP_BOT_BALAK_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 40,
	},
	
				
	CT_PVP_BOT_BALAK_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 40,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_BALAK_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 25,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
			
	CT_PVP_BOT_BALAK_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 15,
	},
	
	CT_PVP_BOT_BALAK_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 15,
	},
	
	CT_PVP_BOT_BALAK_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 33,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_BALAK_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_BALAK_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_BALAK_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_BALAK_DashJump",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_BALAK_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_BALAK_JUMP_DOWN_DIR",														},
		
		
		-- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_SHADOW_STEP",     			"CT_PVP_BOT_BALAK_SHADOW_STEP",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Stigma_of_Pain_1",     			"CT_PVP_BOT_BALAK_Stigma_of_Pain",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_Wild_Charge_Ready",     			"CT_PVP_BOT_BALAK_Wild_Charge_Ready",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashComboZ",     			"CT_PVP_BOT_BALAK_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashX",         			"CT_PVP_BOT_BALAK_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJump",          		"CT_PVP_BOT_BALAK_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJump",          		"CT_PVP_BOT_BALAK_DashJump2",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_READY",     	"CT_PVP_BOT_BALAK_BACKWARD_DASH_READY",   },
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH_END",          		"CT_PVP_BOT_BALAK_DASH_END",      		},
		
		
	},
	
	-- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
	CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 1000,	
		RATE						= 50,
	},
	CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1500,	
		RATE						= 50,
	},
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_BALAK_SHADOW_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 70,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 30,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_BALAK_Stigma_of_Pain =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 70,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
		
	CT_PVP_BOT_BALAK_Wild_Charge_Ready =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME 			= FALSE, 
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_BALAK_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 10,
	},
	
	CT_PVP_BOT_BALAK_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 20,
	},
		
	CT_PVP_BOT_BALAK_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
			
	CT_PVP_BOT_BALAK_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 80,
	},
	
	CT_PVP_BOT_BALAK_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
	
	
	CT_PVP_BOT_BALAK_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
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
-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_BALAK_BACKWARD_DASH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_BACKWARD_DASH",	"CT_PVP_BOT_BALAK_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_BALAK_BACKWARD_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_BALAK_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_BALAK_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_BALAK_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_BALAK_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY5",       	     	},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJump",          		"CT_PVP_BOT_BALAK_DashJump",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
				
	CT_PVP_BOT_BALAK_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
		
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 5,
	},
	CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 699,
		DISTANCE_OVER_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 899,
		DISTANCE_OVER_TARGET_NEAR		= 700,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 999,
		DISTANCE_OVER_TARGET_NEAR		= 900,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	

}

PVP_BOT_BALAK_BACKWARD_DASH_FINISH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_WAIT",	"CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_BALAK_BACKWARD_DASH_FINISH = 
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
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_BALAK_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_BALAK_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_BALAK_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_BALAK_JUMP_DOWN_DIR",														},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",     "CT_PVP_BOT_BALAK_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",     "CT_PVP_BOT_BALAK_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DASH",     "CT_PVP_BOT_BALAK_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_BALAK_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_BALAK_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_BALAK_DASH =
	{
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
PVP_BOT_BALAK_DASH_END =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",			},
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_JUMP_UP =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_Valkyries_Javelin",          	"CT_PVP_BOT_BALAK_Valkyries_Javelin",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_BALAK_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 75,
	},
	CT_PVP_BOT_BALAK_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		SAME_LINE_WITH_TARGET		= TRUE,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
}

PVP_BOT_BALAK_JUMP_DOWN =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_JUMP_LANDING",	},
	},
}
PVP_BOT_BALAK_JUMP_DOWN_ACT =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_Valkyries_Javelin",          	"CT_PVP_BOT_BALAK_Valkyries_Javelin",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_BALAK_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 75,
	},
	CT_PVP_BOT_BALAK_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_JUMP_UP_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_Valkyries_Javelin",          	"CT_PVP_BOT_BALAK_Valkyries_Javelin",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_BALAK_JUMP_DOWN_DIR",		},
	},
	
	CT_PVP_BOT_BALAK_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 75,
	},
	-- CT_PVP_BOT_BALAK_JumpZ2 =
	CT_PVP_BOT_BALAK_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_JUMP_DOWN_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JumpZ",          	"CT_PVP_BOT_BALAK_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_Valkyries_Javelin",          	"CT_PVP_BOT_BALAK_Valkyries_Javelin",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_BALAK_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 60,
	},
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_JUMP_LANDING =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_JUMP_UP",          	"CT_PVP_BOT_BALAK_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	CT_PVP_BOT_BALAK_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 20,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
}

--------------------------------------------------------------------------
-- 대시 점프

PVP_BOT_BALAK_DashJump = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ6",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Valkyries_Javelin",          	"CT_PVP_BOT_BALAK_Valkyries_Javelin",      		},
	
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PVP_BOT_BALAK_DashJump_Down",		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_BALAK_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_BALAK_DashJumpComboZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 75,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 25,
	},
}

PVP_BOT_BALAK_DashJump_Down = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ",	"CT_PVP_BOT_BALAK_DashJumpComboZ6",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Valkyries_Javelin",          	"CT_PVP_BOT_BALAK_Valkyries_Javelin",      		},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_BALAK_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_BALAK_DashJumpComboZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 75,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
	CT_PVP_BOT_BALAK_Valkyries_Javelin =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,	
		TARGET_BELOW_ME				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_BALAK_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",											},
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
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

PVP_BOT_BALAK_DashJumpComboZ_for_COMBO = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	VIEW_TARGET			= TRUE,
	
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

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 10,
		TECH_POINT				= 50,
        IGNORE_DEFENCE			= TRUE,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_DashJumpComboZ_for_COMBO2",	},
	},
	
}
PVP_BOT_BALAK_DashJumpComboZ_for_COMBO2 = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PVP_BOT_BALAK_ComboZ",	},
	},
	
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}

PVP_BOT_BALAK_DashJumpComboZ = 
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

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 10,
		TECH_POINT				= 50,
        IGNORE_DEFENCE			= TRUE,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboX",	"CT_PVP_BOT_BALAK_ComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_WAIT",	"CT_PVP_BOT_BALAK_WAIT",	},
	},
	CT_PVP_BOT_BALAK_ComboX =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 10,
	},
	CT_PVP_BOT_BALAK_ComboZ =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_WAIT =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}


-- 상대가 타격을 받지 않았을 때 방향을 뒤집습니다.

PVP_BOT_BALAK_FLIP_DIR = {

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_WAIT",	"CT_PVP_BOT_BALAK_WAIT",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

-- zzzz 콤보 입니다.
PVP_BOT_BALAK_ComboZ = 
{
	VIEW_TARGET     = TRUE, 
		
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.11, 0.18 },

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],

	SOUND_PLAY0			=	{ 0.15, "Raven_Slash1.ogg" },

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

        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 3,

		TECH_POINT				= 20,
        IGNORE_DEFENCE			= TRUE,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZZ",	"CT_PVP_BOT_BALAK_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_BACKWARD_DASH_READY",	"CT_PVP_BOT_BALAK_BACKWARD_DASH_READY",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.27,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.29,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_BALAK_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.2, 0.25 },

	SOUND_PLAY0			=	{ 0.329, "Raven_Slash2.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12480 },
		{ RATE = 4, MESSAGE = STR_ID_12481 },
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

        CRITICAL_RATE			= 0.33,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 4,

		TECH_POINT				= 20,
        IGNORE_DEFENCE			= TRUE,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZZX",	"CT_PVP_BOT_BALAK_ComboZZX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZZZ",	"CT_PVP_BOT_BALAK_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_ComboZZX =
	{
		ANIM_EVENT_TIMER			= 0.44,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	CT_PVP_BOT_BALAK_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_BALAK_ComboZZZ =
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
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 7,

		TECH_POINT				= 60,
        IGNORE_DEFENCE			= TRUE,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Weapon_Break", 	"CT_PVP_BOT_BALAK_Weapon_Break", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Ground_Impact", 	"CT_PVP_BOT_BALAK_Ground_Impact", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Stigma_of_Pain_1", 	"CT_PVP_BOT_BALAK_Stigma_of_Pain", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Charged_Bolt", 	"CT_PVP_BOT_BALAK_Charged_Bolt", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashJumpComboZ_for_COMBO", 	"CT_PVP_BOT_BALAK_DashJumpComboZ_for_COMBO", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Maximum_Cannon", 	"CT_PVP_BOT_BALAK_Maximum_Cannon", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashX",		"CT_PVP_BOT_BALAK_DashX",		},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_Weapon_Break =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_BALAK_Ground_Impact =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},
	CT_PVP_BOT_BALAK_Stigma_of_Pain =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 70,
		RATE						= 20,
	},
	CT_PVP_BOT_BALAK_Charged_Bolt =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},
	CT_PVP_BOT_BALAK_DashJumpComboZ_for_COMBO =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	CT_PVP_BOT_BALAK_Maximum_Cannon =
	{
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 70,
		RATE						= 30,
	},
	
	CT_PVP_BOT_BALAK_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		RATE						= 70,
	},
	
	
}


-- ZZ에서 이어지는 ZZXX 콤보입니다.
PVP_BOT_BALAK_ComboZZX =
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

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 5,

		TECH_POINT				= 50,
        IGNORE_DEFENCE			= TRUE,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Nuclear",	"CT_PVP_BOT_BALAK_Nuclear",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZZXX",	"CT_PVP_BOT_BALAK_ComboZZXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 80,
	},
	CT_PVP_BOT_BALAK_ComboZZXX =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_Nuclear =
	{
		ANIM_EVENT_TIMER			= 0.45,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
}
	

PVP_BOT_BALAK_ComboZZXX =
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

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.3,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.2,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 8,
		FORCE_FLY				= TRUE,

		TECH_POINT				= 200,
        IGNORE_DEFENCE			= TRUE,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
}


-- xxx 콤보입니다.
PVP_BOT_BALAK_ComboX =
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

        CRITICAL_RATE			= 0.33,
		
		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 7,

		TECH_POINT				= 100,
        IGNORE_DEFENCE			= TRUE,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboXX",	"CT_PVP_BOT_BALAK_ComboXX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_BACKWARD_DASH_READY",	"CT_PVP_BOT_BALAK_BACKWARD_DASH_READY",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	
	CT_PVP_BOT_BALAK_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.53,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.54,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},
	
	
}

PVP_BOT_BALAK_ComboXX =
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


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12480 },
		{ RATE = 4, MESSAGE = STR_ID_12481 },
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

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,

		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 8,

		TECH_POINT				= 100,
        IGNORE_DEFENCE			= TRUE,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboXXX",	"CT_PVP_BOT_BALAK_ComboXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	
	CT_PVP_BOT_BALAK_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.58,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
	
}

PVP_BOT_BALAK_ComboXXX =
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
		"EffectSet_PVP_BOT_RAVEN_ComboXXX", 0.19,
	},		
	
	BURNING_NASOD_HAND_POSSIBLE = TRUE,

	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
}

-- 점프z 공격입니다.
PVP_BOT_BALAK_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.11, 100, },

	VIEW_TARGET			= TRUE,
	
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

        CRITICAL_RATE			= 0.33,
		
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 7,
		TECH_POINT				= 20,
        IGNORE_DEFENCE			= TRUE,
	},

	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.01,

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboX",	"CT_PVP_BOT_BALAK_ComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_WAIT",	"CT_PVP_BOT_BALAK_WAIT",	},
	},
	CT_PVP_BOT_BALAK_ComboX =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 10,
	},
	CT_PVP_BOT_BALAK_ComboZ =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_WAIT =
	{
		FOOT_ON_LINE				= TRUE,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

-- 대시X 공격입니다.
PVP_BOT_BALAK_DashX =
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
        IGNORE_DEFENCE			= TRUE,

	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboX",	"CT_PVP_BOT_BALAK_ComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Nuclear",	"CT_PVP_BOT_BALAK_Nuclear",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_EVENT_TIMER			= 1.0,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_ComboX =
	{
		ANIM_EVENT_TIMER			= 0.9,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 10,
	},
	CT_PVP_BOT_BALAK_Nuclear =
	{
		ANIM_EVENT_TIMER			= 0.9,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
}


-- 대시ZZ 콤보 공격입니다.
PVP_BOT_BALAK_DashComboZ =
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

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0,

		FORCE_DOWN			= 3,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 75,
        IGNORE_DEFENCE			= TRUE,
	},
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_DashComboZZ",	"CT_PVP_BOT_BALAK_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.42,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_BALAK_DashComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	

	ANIM_NAME			= "DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.1,

	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.33, 0.42 },

	SOUND_PLAY0			=	{ 0.305, "Raven_Slash2.ogg" },

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1,
		},

        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 1700,
		BACK_SPEED_Y			= -1000,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 120,
        IGNORE_DEFENCE			= TRUE,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
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

PVP_BOT_BALAK_Maximum_Cannon = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
}



-- 고통의 낙인입니다.
PVP_BOT_BALAK_Stigma_of_Pain_1 = 
{
	VIEW_TARGET     = TRUE, 
	
    ANIM_SPEED		= 1.5,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12472 },
		{ RATE = 30, MESSAGE = STR_ID_12473 },
		{ RATE = 30, MESSAGE = STR_ID_12474 },
	},

	ANIM_NAME				= "SI_SA_RRF_X_CRASH",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_STIGMA_OF_PAIN_01", 0.3,
	},		
	
	SOUND_PLAY0		     	= { 0.1, "Raven_SP_StigmaOfPain_01.ogg" },
	SOUND_PLAY1		     	= { 0.3, "Raven_RRF_X_Crash1.ogg" },
	SOUND_PLAY2		     	= { 0.1, "Raven_SP_StigmaOfPain_01.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Stigma_of_Pain_2",	"CT_PVP_BOT_BALAK_Stigma_of_Pain_2",	},
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_Stigma_of_Pain_2",		},
	},
	
	CT_PVP_BOT_BALAK_Stigma_of_Pain_2 =
	{
		ANIM_EVENT_TIMER			= 0.526,	--원래는 0.789입니다.
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
PVP_BOT_BALAK_Stigma_of_Pain_2 = 
{
    ANIM_SPEED		= 3,

	ANIM_NAME				= "ComboX1",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT			= FALSE,
	
	SOUND_PLAY0		     	= { 0.1, "Raven_RRF_X_Crash2.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_STIGMA_OF_PAIN_02", 0.1,
	},		
	
	
	EVENT_PROCESS =
	{
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Stigma_of_Pain_3",	"CT_PVP_BOT_BALAK_Stigma_of_Pain_3",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_Stigma_of_Pain_3",		},
	},
	
	CT_PVP_BOT_BALAK_Stigma_of_Pain_3 =
	{
		ANIM_EVENT_TIMER			= 0.458,	--원래는 0.612입니다.
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
PVP_BOT_BALAK_Stigma_of_Pain_3 = 
{
    ANIM_SPEED		= 4,

	ANIM_NAME				= "OT_ComboX3Front",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0		     	= { 0.1, "Raven_RRF_X_Crash2.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_STIGMA_OF_PAIN_03", 0.1,
	},		
	
	
	EVENT_PROCESS =
	{
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_Stigma_of_Pain_4",	"CT_PVP_BOT_BALAK_Stigma_of_Pain_4",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_Stigma_of_Pain_4",		},
	},
	
	CT_PVP_BOT_BALAK_Stigma_of_Pain_4 =
	{
		ANIM_EVENT_TIMER			= 0.49,	--원래는 0.66입니다.
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
PVP_BOT_BALAK_Stigma_of_Pain_4 = 
{
    ANIM_SPEED		= 1.5,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "SI_SA_ROT_VALKYRIESJAVELIN",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	
	SOUND_PLAY0		     	= { 0.35, "Raven_RRF_X_Crash1.ogg" },
	SOUND_PLAY1		     	= { 0.1, "RavenVoice_Shout03.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_STIGMA_OF_PAIN_04", 0.35,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_Stigma_of_Pain_5",		},
	},
}
PVP_BOT_BALAK_Stigma_of_Pain_5 = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
    ANIM_SPEED		= 1.3,

	ANIM_NAME				= "SI_SA_ROT_VALKYRIESJAVELIN_Landing",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	
	SOUND_PLAY0		     	= { 0.1, "Raven_SP_StigmaOfPain_02.ogg" },
	SOUND_PLAY1		     	= { 0.1, "Raven_SP_StigmaOfPain_02.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_STIGMA_OF_PAIN_05", 0.25,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
}

-- 웨폰 브레이크
PVP_BOT_BALAK_Weapon_Break = 
{

	VIEW_TARGET     = TRUE, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_ROT_WEAPON_BREAK",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	STATE_STRING		= STR_ID_4373,				-- fix!!

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },      
	HAND_SLASH_TRACE	= TRUE,
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	DISABLE_ATTACK_BOX =
	{
		"Sword",
	},
	SOUND_PLAY0			= { 0.263, "Raven_Slash3.ogg" },
	SOUND_PLAY1			= { 0.315, "Raven_Weapon_Break.ogg" },

	ATTACK_TIME0		= { 0.29, 0.31 },
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
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_WEAPON_BREAK"],
			RATE	=
			{
				1.0,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_PHYSIC_ATTACK"],
								BUFF_BEHAVIOR_TYPE["BBT_CHANGE_MAGIC_ATTACK"], },
				
				BBT_CHANGE_PHYSIC_ATTACK =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_PERCENT"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
					PERCENT =
					{
						0.5,
					},
				},
				BBT_CHANGE_MAGIC_ATTACK =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_PERCENT"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
					PERCENT = 0.5,
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
						10,
					},
				},
			},
		},

        CRITICAL_RATE			= 0.33,
		
		STOP_TIME_ATT			= 0.0,
		STOP_TIME_DEF			= 0.1,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0,

		HIT_ADD_MP     			= 3,
		TECH_POINT				= 150,

	},


	EFFECT_SET_LIST =
	{
		"EffectSet_Raven_Weapon_Break", 0,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_ComboZ",          	"CT_PVP_BOT_BALAK_ComboZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.55,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 100,
	},
}
-- 그라운드 임팩트
PVP_BOT_BALAK_Ground_Impact = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	ANIM_NAME			= "SI_A_RRF_GROUND_IMPACT",
	ANIM_SPEED			= 1.4,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= TRUE,
	LAND_CONNECT		= FALSE,

	STATE_STRING		= STR_ID_4861,

	SOUND_PLAY0			=	{ 0.209, "Raven_RRF_Ground_Impact.ogg" },

	EFFECT_SET_LIST = 
	{
		"EffectSet_RAVEN_GROUND_IMPACT_for_BOT", 0.25,
	},		
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_ComboZ",          	"CT_PVP_BOT_BALAK_ComboZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.62,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 100,
	},
}

-- 쉐도우 스텝
PVP_BOT_BALAK_SHADOW_STEP =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	ANIM_NAME			= "SI_A_RF_SHADOW_STEP",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_BALAK_SHADOW_STEP_THRUST",          	"CT_PVP_BOT_BALAK_SHADOW_STEP_THRUST",      		},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_DASH_END",		},
	},
	
	CT_PVP_BOT_BALAK_SHADOW_STEP_THRUST =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
}

-- 쉐도우 피어싱
PVP_BOT_BALAK_SHADOW_STEP_THRUST =
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
			PHYSIC		= 1.0,
		},

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 100,
	},
}

-- 메모 차지드 볼트
PVP_BOT_BALAK_Charged_Bolt =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "OT_SP1a_ChargedBolt",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12478 },
		{ RATE = 33, MESSAGE = STR_ID_12479 },
	},

	LAND_CONNECT			= FALSE,
	INVINCIBLE				= { 0, 1.5, },

    SOUND_PLAY0			= { 0.01, "RavenVoice_ChargedBolt.ogg" },
	SOUND_PLAY1			= { 0.01, "Energy.ogg" },

	EFFECT_SET_LIST =
	{
		"EffectSet_PVP_BOT_RAVEN_CHARGED_BOLT", 0.5,
	},

	STOP_OTHER_UNIT0			= { 0.0, 0.8, },
	STATE_STRING			= STR_ID_4292,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
	},

}

-- 발키리스 자벨린
PVP_BOT_BALAK_Valkyries_Javelin =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_ROT_VALKYRIESJAVELIN",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	TALK_BOX =
	{
		{ RATE = 50, MESSAGE = STR_ID_12477 },
	},
	
	INVINCIBLE			= { 0, 1.8, },		-- fix!!
	AFTER_IMAGE			= { 0.1, 100, },

	SOUND_PLAY0			= { 0.070, "Raven_ValkyriesJavelin.ogg" },
	SOUND_PLAY1			= { 0.01, "RavenVoice_ValkyriesJavelin.ogg" },
	SOUND_PLAY2			= { 0.001, "Energy.ogg" },

	STATE_STRING		= STR_ID_4296,
	STOP_OTHER_UNIT0		= { 0.0, 1.0, },

	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_VJAVELIN", 0,
	},
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],							"PVP_BOT_BALAK_Valkyries_Javelin_Landing",												},
	},

}

PVP_BOT_BALAK_Valkyries_Javelin_Landing =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_ROT_VALKYRIESJAVELIN_Landing",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SOUND_PLAY0			= { 0.045, "Raven_ValkyriesJavelin_Landing.ogg" },

	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_VJAVELIN_LAND", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
	},
}
-- 뉴클리어
PVP_BOT_BALAK_Nuclear =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12476 },
	},

	ANIM_NAME			= "SI_SA_ROT_NUCLEAR",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= TRUE,
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= TRUE,

	INVINCIBLE			= { 0, 4.66, },
	STOP_OTHER_UNIT0		= { 0.0, 2.0, },
	STATE_STRING		= STR_ID_4508,

	SOUND_PLAY0			= { 0.001, "RavenVoice_Nuclear.ogg" },
	SOUND_PLAY1			= { 0.003, "Energy.ogg" },
    SOUND_PLAY2			= { 1.139, "Raven_Nuclear1.ogg" },
	SOUND_PLAY3			= { 2.341, "Raven_Nuclear2.ogg" },

	EFFECT_SET_LIST =
	{
		"EffectSet_RAVEN_NUCLEAR", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
	},

}

-- 와일드 차지
PVP_BOT_BALAK_Wild_Charge_Ready =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,

	ANIM_NAME			= "RF_WILD_CHARGE_Ready",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SUPER_ARMOR			= TRUE,
	
	SPEED_X				=	0,

	--CAN_PUSH_UNIT		= FALSE,
	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.001, "Energy.ogg" },
	SOUND_PLAY1	    	= { 0.001, "RavenVoice_WildCharge.ogg" },
	SOUND_PLAY2	    	= { 0.001, "Raven_WildCharge_Ready.ogg" },
	
	--STOP_ALL_UNIT0		= { 0.6, 1.2, 0.2 },
	STOP_OTHER_UNIT0	= { 0.0, 1.2, },
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},
	
		--[[
				IMMUNITY_LIST_AT_THIS_STATE =
				{
					EXTRA_DAMAGE_TYPE["EDT_WATER_HOLD"],
					-- EXTRA_DAMAGE_TYPE["EDT_Y_PRESSED"],
					EXTRA_DAMAGE_TYPE["EDT_FROZEN"],
					-- EXTRA_DAMAGE_TYPE["EDT_STUN"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_FROZEN_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_POISON_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_BLAZE_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_MASTER_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_BLAZE_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_POISON_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_FROZEN_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_BLAZE_DOUBLE_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_FROZEN_DOUBLE_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_POISON_DOUBLE_SHOCK"],
					EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_MASTER_SHOCK"],
				},
		--]]
	
	EFFECT_SET_LIST =
	{
		"EffectSet_RF_WILD_CHARGE_CHARGING", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	STATE_STRING		= STR_ID_9745,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_Wild_Charge_Attack",		},
	},
}
-- 와일드 차지 어택
PVP_BOT_BALAK_Wild_Charge_Attack =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,

	ANIM_NAME			= "RF_WILD_CHARGE_Attack",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= TRUE,

	SPEED_TIME0 = { 3000, 0, 0.03, 2 },
	SPEED_TIME1 = { 0, 0, 0.36, 2 },
	
	AFTER_IMAGE			= { 0.09, 0.59, },
	
	INVINCIBLE			= { 0, 100, },
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},

	--[[
			IMMUNITY_LIST_AT_THIS_STATE =
			{
				EXTRA_DAMAGE_TYPE["EDT_WATER_HOLD"],
				-- EXTRA_DAMAGE_TYPE["EDT_Y_PRESSED"],
				EXTRA_DAMAGE_TYPE["EDT_FROZEN"],
				-- EXTRA_DAMAGE_TYPE["EDT_STUN"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_FROZEN_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_POISON_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_BLAZE_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_MASTER_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_BLAZE_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_POISON_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_FROZEN_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_BLAZE_DOUBLE_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_FROZEN_DOUBLE_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_POISON_DOUBLE_SHOCK"],
				EXTRA_DAMAGE_TYPE["EDT_ENCHANT_DOUBLE_MASTER_SHOCK"],
			},
	--]]

	SOUND_PLAY0			= { 0.001, "Raven_WildCharge.ogg" },
	SOUND_PLAY1			= { 0.001, "RavenVoice_Shout06.ogg" },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_RF_WILD_CHARGE_CHARGE_ATTACK", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
	},

}

-- 각성합니다
PVP_BOT_BALAK_BOOST_POWER =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12482 },
		{ RATE = 33, MESSAGE = STR_ID_12483 },
	},

	
	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.1, 100, },
		
	--STOP_ALL_UNIT0		= { 0.08, 1.6, 0.5 },
	STOP_OTHER_UNIT0  = { 0.0, 0.88, },
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.83, "Break.ogg" },	
	SOUND_PLAY3			= { 0.83, "Change.ogg" },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
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

PVP_BOT_BALAK_Combo_for_Upper_Attack =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",														},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_ComboZ",    		 	"CT_PVP_BOT_BALAK_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DashJumpComboZ_for_COMBO",    		 	"CT_PVP_BOT_BALAK_DashComboZ",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
		  		
	},	
	-- 잡자!
	
	CT_PVP_BOT_BALAK_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_BALAK_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 40,
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



PVP_BOT_BALAK_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 5,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 5,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "RavenVoice_DamageScream03.ogg" , 20 },


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK_FRONT"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	-- CT_PVP_BOT_EPIK_MANA_BREAK =
	CT_PVP_BOT_EPIK_MANA_BREAK_FRONT =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 5,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "RavenVoice_DamageScream03.ogg" , 20 },


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK_BACK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_WAIT",		},
	},
	
	-- CT_PVP_BOT_EPIK_MANA_BREAK =
	CT_PVP_BOT_EPIK_MANA_BREAK_BACK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 5,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_DOWN_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_BALAK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_DOWN_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_BALAK_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_BALAK_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_FLY_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_FLY_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK_FRONT"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_WAIT",	},
	},
	
	-- CT_PVP_BOT_EPIK_MANA_BREAK =
	CT_PVP_BOT_EPIK_MANA_BREAK_FRONT =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 5,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_AIR_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_AIR_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_BALAK_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_BALAK_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_BALAK_STAND_UP_FRONT",		},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_BALAK_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}



--------------------------------------------------------------------------
PVP_BOT_BALAK_STAND_UP_FRONT =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_RF_GET_CHANCE_FRONT",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	INVINCIBLE			= { 0, 100, },
	

	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.23, 0.4, },


	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,

	SOUND_PLAY0			= { 0.492, "Raven_Slash1.ogg" },

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_STANDUP_WAIT",	"CT_PVP_BOT_BALAK_WAIT",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
	},
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_PLAY_COUNT				= 1,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_WAIT =
	{
		ANIM_PLAY_COUNT				= 1,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_BALAK_STAND_UP_BACK =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_RF_GET_CHANCE_BACK",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	INVINCIBLE			= { 0, 100, },
	
	FLIP_DIR_END		= TRUE,		-- 상태가 끝날 때 캐릭터의 방향을 반대로 바꿔버린다


	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.23, 0.4, },


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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_ComboZ",	"CT_PVP_BOT_BALAK_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_BALAK_STANDUP_WAIT",	"CT_PVP_BOT_BALAK_WAIT",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_BALAK_JUMP_DOWN_ACT",	},
	},
	CT_PVP_BOT_BALAK_ComboZ =
	{
		ANIM_PLAY_COUNT				= 1,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_BALAK_WAIT =
	{
		ANIM_PLAY_COUNT				= 1,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_BALAK_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "RavenVoice_DieScream1.ogg" },
 	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12487 },
		{ RATE = 33, MESSAGE = STR_ID_12488 },
	},


	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_BALAK_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12487 },
		{ RATE = 33, MESSAGE = STR_ID_12488 },
	},

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "RavenVoice_DieScream1.ogg" },
 	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_BALAK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_BALAK_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos
end


function PVP_BOT_BALAK_Maximum_Cannon_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 50)
	end
end	

function PVP_BOT_BALAK_Stigma_of_Pain_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 40)
	end
	  
end	

function PVP_BOT_BALAK_Weapon_Break_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_BALAK_Ground_Impact_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_BALAK_SHADOW_STEP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
		pNPCUnit:SetShow(false) 	
end	

function PVP_BOT_BALAK_SHADOW_STEP_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
		pNPCUnit:SetShow(true) 
end	

function PVP_BOT_BALAK_SHADOW_STEP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_BALAK_SHADOW_STEP_THRUST_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 10)
	end
	  
end	


function PVP_BOT_BALAK_Charged_Bolt_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end	
end	

function PVP_BOT_BALAK_Valkyries_Javelin_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end	
end	

function PVP_BOT_BALAK_Nuclear_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 300)
	end	
end	

function PVP_BOT_BALAK_Wild_Charge_Ready_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end	
end	
function PVP_BOT_BALAK_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	pX2Game:SetWorldColor_LUA( D3DXCOLOR( 0.1, 0.1, 0.1, 1 ) )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pNPCUnit:PlaySound_LUA( "Energy.ogg" )
		
		bonePos = pNPCUnit:GetBonePos_LUA("Bip01")	
		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SpecialEnergyCenter",	bonePos, D3DXVECTOR2(20,40), D3DXVECTOR2(10,-1) )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SpecialEnergyLine",		bonePos, D3DXVECTOR2(40,80), D3DXVECTOR2(20,-1) )
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
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "STR_ToKang_for_BOT", bonePos, D3DXVECTOR2(100,150), D3DXVECTOR2(1,-1) )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WhiteShockWave", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ImpactTick", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
	end

end

	

function CF_PVP_BOT_BALAK_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )
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
