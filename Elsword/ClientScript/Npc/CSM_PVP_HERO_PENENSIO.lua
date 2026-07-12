-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[  / 2011/5/25 / 붉은 기사단 십부장 페넨시오 /
	 
--]]

-- 바운딩 박스와 캐릭터의 크기 배율을 결정합니다.
INIT_SYSTEM =
{
	UNIT_WIDTH		= 88.0,
	UNIT_HEIGHT		= 187.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.25,
}
--------------------------------------------------------------------------
-- 미리 로딩할 텍스쳐와 사운드, 메시를 결정합니다.
INIT_DEVICE =
{
	READY_TEXTURE =
	{
		"smoke02.dds",
		"Arme_Ring2.dds",
		"ColorBallFire.dds",
		"DarkSmoke01.dds",
		"RB_Slash01.tga",
		"Mesh_LUNA_BLADE.tga",
		"Lightning02_LB.tga",
		"ColorBallBlue_LB.tga",
	},
	READY_SOUND =
	{
		"Step.ogg",
		"Slash.ogg",
		"Elsword_RS_DashJumpComboXa.ogg",
		"Elsword_SI_A_ComboX3a2.ogg",
		"Elsword_SI_A_ComboX3a3.ogg",
		"PowerSlash.ogg",
		"Elsword_Kick.ogg",
		"Elsword_Big_Burst_Ready.ogg",
		"RevengeReady.ogg",
		"fire3.ogg",
		"HitIce.wav",
		"spriggan_light_ball_start.ogg",
		"Energy.ogg",
		"Elsword_StormBlade1.ogg",
		"Elsword_BladeOut.ogg",
		"Elsword_StormBlade2.ogg",
		"Elsword_StormBlade3.ogg",
		"Elsword_LunaBlade_Shot.ogg",
		"Elsword_SI_SA_Splash_Explosion1.ogg",
		"Elsword_SI_SA_Splash_Explosion2.ogg",
		"Break.ogg",
		"Change.ogg",
		"Down.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
	},
	READY_XSKIN_MESH = 
	{
		"StormBlade_Blade01.x",
		"StormBlade_MagicSquare00.x",
		"StormBlade_SmallBlade01.x",
		"Elsword_RS_DashJumpComboXa_Mesh01.X",
		"SI_SA_ERS_LUNA_BLADE_BLADE.X",
		"SI_SA_ERS_LUNA_BLADE_Light.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_PENENSIO.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500*1.1,
	RUN_SPEED			= 740*1.1,
	JUMP_SPEED			= 1500*1.1,
	DASH_JUMP_SPEED		= 2300*1.1,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	-- 최대MP가 300이고 초당 MP가 5씩 회복됩니다.
	MP_CHANGE_RATE		= 3.5,
	MP_CHARGE_RATE		= 300,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = FALSE,

	-- 기본 속도가 27% 증가로 유저보다 빠릅니다.
	DEFAULT_ANIM_SPEED = 1.27,
	
	HYPER_MODE_COUNT	= 1,
	MAX_HYPER_MODE_TIME	= 30,
	
	FORCE_DOWN_GAGE_MAX = 100,
	-- NOT_EXTRA_DAMAGE	= TRUE,
	
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
	
	DIE_FLY			= FALSE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "PVP_HERO_PENENSIO_Weapon.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Hyper_Mesh_Elsword_AC_Upbody_130646_Sorted.X",
		WEAPON_XET_NAME				= "PVP_HERO_PENENSIO.xet",
		WEAPON_BONE_NAME			= "Bip01_Spine",
			
	},
	-- WEAPON2 = 
	-- {
		-- WEAPON_FILE_NAME			= "MESH_COMMON_AC_LOWBODY_130722_SORTED.Y",
		-- WEAPON_BONE_NAME			= "Bip01",
			
	-- },
	
	SUMMON_TIME				= 180,

}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 페넨시오는 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_START",							},
	
	-- 승리모션입니다. 페넨시오는 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_PENENSIO_WIN",							},
    { STATE_NAME = "PVP_BOT_PENENSIO_WIN2",							},
	
	-- 승리모션입니다. 페넨시오는 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_PENENSIO_LOSE",							},
    { STATE_NAME = "PVP_BOT_PENENSIO_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_PENENSIO_WAIT",							},
	-- 기상 시 무적을 만들어주는 wait 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_STANDUP_WAIT",							},

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
	{ STATE_NAME = "PVP_BOT_PENENSIO_WALK",							},
    { STATE_NAME = "PVP_BOT_PENENSIO_DASH",							},
    --{ STATE_NAME = "PVP_BOT_PENENSIO_FLIP_DIR",						},
    { STATE_NAME = "PVP_BOT_PENENSIO_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_PENENSIO_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",	},
    --{ STATE_NAME = "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_PENENSIO_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지) 입니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_PENENSIO_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_DOWN_ACT",					LUA_STATE_END_FUNC = "PVP_BOT_PENENSIO_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",				LUA_STATE_END_FUNC = "PVP_BOT_PENENSIO_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_PENENSIO_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JUMP_LANDING",					},

	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboZ",									},
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboZZZ",						},
	--{ STATE_NAME = "PVP_BOT_PENENSIO_ComboZZZZ",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_ComboZZZZ_FRAME_MOVE"		},
	
	-- xzz 콤보
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboX",									},
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboXZ",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_ComboXZ_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboXZZ",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_ComboXZZ_FRAME_MOVE"		},
	-- xxz 콤보 (이걸로 띄우면 점프 z로 다시 잡고 콤보를 이어나갑니다.)
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboXX",						},
	{ STATE_NAME = "PVP_BOT_PENENSIO_ComboXXZ",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_ComboXXZ_FRAME_MOVE"		},
	
	-- { STATE_NAME = "PVP_BOT_PENENSIO_ComboXXX",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_ComboXXX_FRAME_MOVE"		},
	
	-- 대시점프 x 콤보
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJump",						},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboX",								},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboXZ",				},--	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DashJumpComboXZ_FRAME_MOVE"							},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboXZZ",				},--	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DashJumpComboXZZ_FRAME_MOVE"							},
	
	-- { STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboXX",				},
	-- { STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboXX_landing",		},	

	-- 대시 x 공격
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashX",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DashX_FRAME_MOVE",					},
	
	-- 대시 z 콤보
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashComboZ",								},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashComboZZ",					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashComboZZX",					},--	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DashComboZZX_FRAME_MOVE",				},
	
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO2",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJumpComboX_for_COMBO",				},
	--PVP_BOT_PENENSIO_DASHJUMP_UP_DIR_for_DASHJump_X
	
	-- 점프 z 공격 (간보기 및 콤보 연계용)
	{ STATE_NAME = "PVP_BOT_PENENSIO_JumpZ",											},
	{ STATE_NAME = "PVP_BOT_PENENSIO_JumpX",											},
	
	-- 발차기를 시전합니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_Kick",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Kick_FRAME_MOVE"	 },
	
	-- 대폭살을 시전합니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_Big_Burst",					STATE_COOL_TIME = 6,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Big_Burst_FRAME_MOVE"	 },
	
	-- 반격을 시전합니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_RevengeReady",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_RevengeReady_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_PENENSIO_RevengeAttack",					 },
	
	-- 광명의 룬을 시전합니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_Rune_Guard",					STATE_COOL_TIME = 12,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Rune_Guard_FRAME_MOVE"	 },
	
	-- 초열의 룬을 시전합니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_Rune_Guard_FIRE",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Rune_Guard_FIRE_FRAME_MOVE"	 },
	
	-- 한빙의 룬을 시전합니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_Rune_Guard_ICE",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Rune_Guard_ICE_FRAME_MOVE"	 },
	
	-- 스톰 블레이드!
	{ STATE_NAME = "PVP_BOT_PENENSIO_Storm_Blade",					STATE_COOL_TIME = 30,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Storm_Blade_FRAME_MOVE"	 },
	
	-- 루나 블레이드!
	{ STATE_NAME = "PVP_BOT_PENENSIO_Luna_Blade",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Luna_Blade_FRAME_MOVE"	 },
	
	-- 스플래시 익스플로전!
	{ STATE_NAME = "PVP_BOT_PENENSIO_Splash_Explosion",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_Splash_Explosion_FRAME_MOVE"	 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_PENENSIO_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_BOOST_POWER_FRAME_MOVE"	},
	
	
	-- 띄우는 공격을 행하였을 때 기다렸다가 발차기나 여타 스킬로 이어갈 수 있도록 해주는 콤보 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_Combo_for_Upper_Attack",										},
	{ STATE_NAME = "PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",										},
	
	
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_PENENSIO_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_STAND_UP_BACK",					},
	{ STATE_NAME = "PVP_BOT_PENENSIO_STANDUP_ROLLING_BACK_FRONT",				},
	{ STATE_NAME = "PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK",					},
	--{ STATE_NAME = "PVP_BOT_PENENSIO_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_PENENSIO_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_PENENSIO_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_DAMAGE_REVENGE",				},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_PENENSIO_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_PENENSIO_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_PENENSIO_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_PENENSIO_DYING_LAND_STATE_START",			},
	
	{ STATE_NAME = "PVP_BOT_PENENSIO_DashJump_Down", },

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_PENENSIO_START",
	WAIT_STATE					= "PVP_BOT_PENENSIO_WAIT",
	WIN_STATE					= "PVP_BOT_PENENSIO_WIN",
	LOSE_STATE					= "PVP_BOT_PENENSIO_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_PENENSIO_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_PENENSIO_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_PENENSIO_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_PENENSIO_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_PENENSIO_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_PENENSIO_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_PENENSIO_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_PENENSIO_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_PENENSIO_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_PENENSIO_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_PENENSIO_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_PENENSIO_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN","PVP_BOT_PENENSIO_DAMAGE_AIR_FALL","PVP_BOT_PENENSIO_STAND_UP_FRONT","PVP_BOT_PENENSIO_STAND_UP_BACK",
	"PVP_BOT_PENENSIO_STANDUP_ROLLING_BACK_FRONT","PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK",
	"PVP_BOT_PENENSIO_JUMP_DOWN_NOACT","PVP_BOT_PENENSIO_JUMP_DOWN","PVP_BOT_PENENSIO_JUMP_LANDING",},	
	WAIT_STATES = { "PVP_BOT_PENENSIO_STANDUP_WAIT", },
	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_PENENSIO_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_PENENSIO_DYING_BACK",
	SUMMON_END_STATE			= "PVP_BOT_PENENSIO_DYING_FRONT",
	DYING_SKY					= "PVP_BOT_PENENSIO_DYING_FRONT",

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
	
		MOVE_SPLIT_RANGE	= 9999,
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
PVP_BOT_PENENSIO_WIN =
{
	ANIM_NAME					= "MagicKnight_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },
	

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12383 },
		{ RATE = 30, MESSAGE = STR_ID_12384 },
		{ RATE = 30, MESSAGE = STR_ID_12385 },
	},

	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_Start", 0,
	},	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 500,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}


--------------------------------------------------------------------------
PVP_BOT_PENENSIO_WIN2 =
{
	ANIM_NAME					= "MagicKnight_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },
	

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12383 },
		{ RATE = 30, MESSAGE = STR_ID_12384 },
		{ RATE = 30, MESSAGE = STR_ID_12385 },
	},

	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_Start", 0,
	},	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_PENENSIO_LOSE =
{
	ANIM_NAME					= "RS_Lose",
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12386 },
		{ RATE = 30, MESSAGE = STR_ID_12387 },
		{ RATE = 30, MESSAGE = STR_ID_12388 },
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
PVP_BOT_PENENSIO_LOSE2 =
{
	ANIM_NAME					= "RS_Lose",
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12386 },
		{ RATE = 30, MESSAGE = STR_ID_12387 },
		{ RATE = 30, MESSAGE = STR_ID_12388 },
	},

	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,	

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_PENENSIO_START =
{
	ANIM_NAME					= "RS_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_Start", 0,
	},	

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_WAIT",		"CT_PVP_BOT_PENENSIO_WAIT"	},
	},
	CT_PVP_BOT_PENENSIO_WAIT =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_PENENSIO_WAIT",	}
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
	SOUND_PLAY1			= { 0.9, "Chung_Pandemonium3.ogg" },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_WAIT",												},
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
	SOUND_PLAY1			= { 0.9, "Chung_Pandemonium3.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_WAIT",												},
	},

}

--------------------------------------------------------------------------
PVP_BOT_PENENSIO_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_PENENSIO_BOOST_POWER",	"CF_PVP_BOT_PENENSIO_BOOST_POWER",									},

		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_READY",     	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY",   },
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_PENENSIO_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_PENENSIO_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_PENENSIO_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_PENENSIO_JUMP_DOWN_DIR",														},
				
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_RevengeReady",     		"CT_PVP_BOT_PENENSIO_RevengeReady",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Splash_Explosion",     	"CT_PVP_BOT_PENENSIO_Splash_Explosion",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Luna_Blade",     			"CT_PVP_BOT_PENENSIO_Luna_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Storm_Blade",     		"CT_PVP_BOT_PENENSIO_Storm_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_FIRE",     	"CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard",     			"CT_PVP_BOT_PENENSIO_Rune_Guard",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_ICE",     		"CT_PVP_BOT_PENENSIO_Rune_Guard_ICE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboZ",     				"CT_PVP_BOT_PENENSIO_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboX",     				"CT_PVP_BOT_PENENSIO_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WALK",         			"CT_PVP_BOT_PENENSIO_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DASH",         			"CT_PVP_BOT_PENENSIO_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_JUMP_UP_DIR",         	"CT_PVP_BOT_PENENSIO_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_JUMP_UP",         		"CT_PVP_BOT_PENENSIO_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJump",          		"CT_PVP_BOT_PENENSIO_DashJump",      		},
	},

	
	-- 좀 어렵네요.
	
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 150,	
		MY_MP_MORE_THAN				= 50,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 3,
	},
	CT_PVP_BOT_PENENSIO_Splash_Explosion =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		MY_MP_MORE_THAN				= 100,	
		RATE						= 5,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_PENENSIO_Luna_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 230,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 30,
	},
	CT_PVP_BOT_PENENSIO_Storm_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 299,	
		RATE						= 100,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_ICE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		SAME_LINE_WITH_TARGET		= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		SAME_LINE_WITH_TARGET		= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	
	CT_PVP_BOT_PENENSIO_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,	
		RATE						= 85,
		IS_ANOTHER_TEAM				= TRUE,
	},
	
	CT_PVP_BOT_PENENSIO_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	
	CT_PVP_BOT_PENENSIO_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 20,
	},
	-- CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 0,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 40,
	-- },	
	CT_PVP_BOT_PENENSIO_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 7,
	},
		
	CT_PVP_BOT_PENENSIO_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
		
	CT_PVP_BOT_PENENSIO_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	
	CT_PVP_BOT_PENENSIO_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
		IS_ANOTHER_TEAM				= TRUE,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_STANDUP_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	INVINCIBLE = { -1, -1, 0.7, 0.7 },
	
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_PENENSIO_BOOST_POWER",	"CF_PVP_BOT_PENENSIO_BOOST_POWER",									},

		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_READY",     	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY",   },
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_PENENSIO_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_PENENSIO_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_PENENSIO_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_PENENSIO_JUMP_DOWN_DIR",														},
				
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_RevengeReady",     		"CT_PVP_BOT_PENENSIO_RevengeReady",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Splash_Explosion",     	"CT_PVP_BOT_PENENSIO_Splash_Explosion",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Luna_Blade",     			"CT_PVP_BOT_PENENSIO_Luna_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Storm_Blade",     		"CT_PVP_BOT_PENENSIO_Storm_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_FIRE",     	"CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard",     			"CT_PVP_BOT_PENENSIO_Rune_Guard",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_ICE",     		"CT_PVP_BOT_PENENSIO_Rune_Guard_ICE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboZ",     				"CT_PVP_BOT_PENENSIO_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboX",     				"CT_PVP_BOT_PENENSIO_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_JUMP_UP_DIR",         	"CT_PVP_BOT_PENENSIO_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_JUMP_UP",         		"CT_PVP_BOT_PENENSIO_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJump",          		"CT_PVP_BOT_PENENSIO_DashJump",      		},
	},

	
	-- 좀 어렵네요.
	
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 150,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 3,
	},
	CT_PVP_BOT_PENENSIO_Splash_Explosion =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,	
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_Luna_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 230,	
		RATE						= 30,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_PENENSIO_Storm_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 299,	
		RATE						= 100,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_ICE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	
	CT_PVP_BOT_PENENSIO_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 85,
	},
	
	CT_PVP_BOT_PENENSIO_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		RATE						= 20,
		IS_ANOTHER_TEAM				= TRUE,
	},
	
	CT_PVP_BOT_PENENSIO_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
		IS_ANOTHER_TEAM				= TRUE,
	},
	-- CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 0,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 40,
	-- },	
		
	CT_PVP_BOT_PENENSIO_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_PENENSIO_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_WALK =
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


	-- 0.5초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.5,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",													},

		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_PENENSIO_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_PENENSIO_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_PENENSIO_JUMP_DOWN_DIR",														},
		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_READY",     	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY",   },
		
		-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		-- 일반 스테이트
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_RevengeReady",     		"CT_PVP_BOT_PENENSIO_RevengeReady",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Splash_Explosion",     	"CT_PVP_BOT_PENENSIO_Splash_Explosion",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Luna_Blade",     			"CT_PVP_BOT_PENENSIO_Luna_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Storm_Blade",     		"CT_PVP_BOT_PENENSIO_Storm_Blade",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_FIRE",     	"CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard",     			"CT_PVP_BOT_PENENSIO_Rune_Guard",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_ICE",     		"CT_PVP_BOT_PENENSIO_Rune_Guard_ICE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboZ",     				"CT_PVP_BOT_PENENSIO_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboX",     				"CT_PVP_BOT_PENENSIO_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_JUMP_UP_DIR",         	"CT_PVP_BOT_PENENSIO_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_JUMP_UP",         		"CT_PVP_BOT_PENENSIO_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJump",          		"CT_PVP_BOT_PENENSIO_DashJump",      		},
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
	
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 150,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 3,
	},
	CT_PVP_BOT_PENENSIO_Splash_Explosion =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,	
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_Luna_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 230,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 30,
	},
	CT_PVP_BOT_PENENSIO_Storm_Blade =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 299,	
		RATE						= 100,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_ICE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		SAME_LINE_WITH_TARGET		= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		SAME_LINE_WITH_TARGET		= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 85,
	},
	
	CT_PVP_BOT_PENENSIO_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	
	CT_PVP_BOT_PENENSIO_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 20,
	},
	-- CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 40,
	-- },	
	CT_PVP_BOT_PENENSIO_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_PENENSIO_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	
}

--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",													},

		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO",     			"CT_PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJumpComboX_for_COMBO",         			"CT_PVP_BOT_PENENSIO_DashJumpComboX_for_COMBO",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_FIRE",     	"CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard",     			"CT_PVP_BOT_PENENSIO_Rune_Guard",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Rune_Guard_ICE",     		"CT_PVP_BOT_PENENSIO_Rune_Guard_ICE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashComboZ",     			"CT_PVP_BOT_PENENSIO_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashX",         			"CT_PVP_BOT_PENENSIO_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJump",          		"CT_PVP_BOT_PENENSIO_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashJump",          		"CT_PVP_BOT_PENENSIO_DashJump2",      		},
		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_READY",     	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY",   },
		
		-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DASH_END",          		"CT_PVP_BOT_PENENSIO_DASH_END",      		},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_PENENSIO_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_PENENSIO_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_PENENSIO_DashJump",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_PENENSIO_JUMP_DOWN_DIR",														},
	},
	
	-- -- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
	-- CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- TARGET_ABOVE_ME 			= TRUE,
		-- DISTANCE_OVER_TARGET_NEAR	= 1000,	
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 50,
	-- },
	-- CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_OVER_TARGET_NEAR	= 1500,	
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 50,
	-- },
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_PENENSIO_Rune_Guard =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_ICE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	CT_PVP_BOT_PENENSIO_Rune_Guard_FIRE =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 70,	
		RATE						= 15,
	},
	
	CT_PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 20,
		IS_ANOTHER_TEAM				= TRUE,
	},
	
	CT_PVP_BOT_PENENSIO_DashJumpComboX_for_COMBO =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
		
	CT_PVP_BOT_PENENSIO_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 40,
	},
	
	CT_PVP_BOT_PENENSIO_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 60,
	},
		
	CT_PVP_BOT_PENENSIO_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 20,
	},
		
	
	CT_PVP_BOT_PENENSIO_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
	
	
	-- CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- IS_ANOTHER_TEAM				= TRUE,
		-- RATE						= 40,
	-- },
	
	CT_PVP_BOT_PENENSIO_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 80,
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
PVP_BOT_PENENSIO_BACKWARD_DASH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_BACKWARD_DASH",	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_PENENSIO_BACKWARD_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",													},

		
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_PENENSIO_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_PENENSIO_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_PENENSIO_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY5",       	     	},
		
	},
	
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 699,
		DISTANCE_OVER_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 899,
		DISTANCE_OVER_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 999,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR		= 900,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
}

PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	VIEW_TARGET     = TRUE, 
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_PENENSIO_DashJump",	"CF_PVP_BOT_CHECK_BACK_ESCAPE",									},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_WAIT",	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
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
-- move & jump
-- 이동 및 점프에 관한 동작 구현부분입니다.

--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DASH_END =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",			},
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		IS_ANOTHER_TEAM				= TRUE,
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
PVP_BOT_PENENSIO_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X			= 300,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ1",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_PENENSIO_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 275,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_ABOVE_ME				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_JumpZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_PENENSIO_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
}

PVP_BOT_PENENSIO_JUMP_DOWN =
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
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_Sharp_Fall",    "CT_PVP_BOT_PENENSIO_Sharp_Fall",     },
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_DOUBLE_JUMP_UP",    "CT_PVP_BOT_PENENSIO_DOUBLE_JUMP_UP",     },
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX",      		},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX2",      		},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_JUMP_LANDING",	},
	},
	
	
	CT_PVP_BOT_PENENSIO_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 275,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_ABOVE_ME				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_PENENSIO_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_PENENSIO_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_PENENSIO_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}
PVP_BOT_PENENSIO_JUMP_DOWN_ACT =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ1",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_JUMP_LANDING",	},
	},
	CT_PVP_BOT_PENENSIO_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		TARGET_ABOVE_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 33,
	},
	CT_PVP_BOT_PENENSIO_JumpZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 10,
	},
}
PVP_BOT_PENENSIO_JUMP_DOWN_NOACT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_JUMP_UP_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ1",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_PENENSIO_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_JumpZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_PENENSIO_JumpZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_JUMP_DOWN_DIR =
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

	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpX",          	"CT_PVP_BOT_PENENSIO_JumpX3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ1",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_JUMP_LANDING",	},
	},
	CT_PVP_BOT_PENENSIO_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 33,
	},
	CT_PVP_BOT_PENENSIO_JumpZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_JumpZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 10,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_JUMP_LANDING =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JUMP_UP",          	"CT_PVP_BOT_PENENSIO_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	CT_PVP_BOT_PENENSIO_JUMP_UP =
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
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 50,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_TURN_WAIT_POSITION2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
		IS_ANOTHER_TEAM				= TRUE,
	},
}

--------------------------------------------------------------------------
-- 대시 점프

PVP_BOT_PENENSIO_DashJump = 
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
	EVENT_INTERVAL_TIME0	= 0.1,


	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboZ",	"CT_PVP_BOT_PENENSIO_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX1",	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboZ",	"CT_PVP_BOT_PENENSIO_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX3",	},
	
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PVP_BOT_PENENSIO_DashJump_Down",		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_PENENSIO_DashJump_landing",											},
	},
	
	
	CT_PVP_BOT_PENENSIO_DashJumpComboZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboZ2=
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 5,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 10,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 15,
	},
}

PVP_BOT_PENENSIO_DashJump_Down = 
{
	ANIM_NAME					= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	
	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJump_landing",	"CT_PVP_BOT_PENENSIO_DashJump_landing",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX",	"CT_PVP_BOT_PENENSIO_DashJumpComboX6",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_PENENSIO_DashJump_landing",											},
	},
	
	CT_PVP_BOT_PENENSIO_DashJumpComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		TARGET_BELOW_ME				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 25,
	},
	CT_PVP_BOT_PENENSIO_DashJumpComboX6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		IS_ANOTHER_TEAM				= TRUE,
		TARGET_BELOW_ME				= TRUE,
		RATE						= 12,
	},
	CT_PVP_BOT_PENENSIO_DashJump_landing =
	{
		FOOT_ON_LINE				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_PENENSIO_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",											},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
	},
	CT_PVP_BOT_TURN_WAIT_POSITION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		IS_ANOTHER_TEAM				= TRUE,
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

--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.1, 0.18, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 750.0,
	
	SOUND_PLAY0			= { 0.1, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		FORCE_DOWN			= 20,
		TECH_POINT				= 50,
	},	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO2",	},
	},
	
}
PVP_BOT_PENENSIO_DashJumpComboX_for_COMBO = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	ANIM_NAME			= "DashJumpComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.1333, 0.2, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 900.0,
	
	
	SOUND_PLAY0			= { 0.1333, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 0.4,
		
		STOP_TIME_ATT			= 0.15,		
		STOP_TIME_DEF			= 0.1,	
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,	
		
		FORCE_DOWN			= 30,
		TECH_POINT				= 250,
	},	
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboXZ",	"CT_PVP_BOT_PENENSIO_DashJumpComboXZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DashJump_landing",	},
	},
	
	CT_PVP_BOT_PENENSIO_DashJumpComboXZ =
	{
		-- ATTACK_SUCCESS				= TRUE,
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}
PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO2 = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboZ",	"CT_PVP_BOT_PENENSIO_ComboZ",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PVP_BOT_PENENSIO_ComboZ",	},
	},
	
	CT_PVP_BOT_PENENSIO_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
	
}
-- 대시점프 x 콤보입니다.
PVP_BOT_PENENSIO_DashJumpComboX = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	ANIM_NAME			= "DashJumpComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.1333, 0.2, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 600.0,
	
	
	SOUND_PLAY0			= { 0.1333, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 0.4,
		
		STOP_TIME_ATT			= 0.15,		
		STOP_TIME_DEF			= 0.1,	
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,	
		
		FORCE_DOWN			= 30,
		TECH_POINT				= 250,
	},	
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboXZ",	"CT_PVP_BOT_PENENSIO_DashJumpComboXZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DashJump_landing",	},
	},
	
	CT_PVP_BOT_PENENSIO_DashJumpComboXZ =
	{
		-- ATTACK_SUCCESS				= TRUE,
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}

PVP_BOT_PENENSIO_DashJumpComboXZ =
{
	ANIM_NAME			= "RS_DashJumpComboXa1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SOUND_PLAY0			= { 0.335, "Elsword_RS_DashJumpComboXa.ogg" },
	
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_Y				= 10,	
	
	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_START = 1,
	
	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_DASHJUMP_COMBO_XZ_for_BOT", 0.335,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboXZZ",	"CT_PVP_BOT_PENENSIO_DashJumpComboXZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboXZZ",	"CT_PVP_BOT_PENENSIO_DashJumpComboXZZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",	"CT_PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PVP_BOT_PENENSIO_DashJumpComboXZZ",	},
	},
	
	CT_PVP_BOT_PENENSIO_DashJumpComboXZZ =
	{
		ANIM_EVENT_TIMER			= 0.4,
		DISTANCE_OVER_TARGET_NEAR	= 600,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},	
	CT_PVP_BOT_PENENSIO_DashJumpComboXZZ2 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		DISTANCE_TO_TARGET_NEAR		= 600,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_PENENSIO_JUMP_DOWN_NOACT =
	{
		ANIM_EVENT_TIMER			= 0.48,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
}

PVP_BOT_PENENSIO_DashJumpComboXZZ =
{
	ANIM_NAME			= "RS_DashJumpComboXa2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SPEED_X				= -800,	
	SPEED_Y				= 800,	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_DASHJUMP_COMBO_XZZ_for_BOT", 0,
	},
		
		
	LAND_CONNECT		= FALSE,	
	
	--SOUND_PLAY0			= { 0.420, "Elsword_RS_DashJumpComboXa.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DashJump_landing",	},
	},
}

-- PVP_BOT_PENENSIO_DashJumpComboXX = 
-- {

	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- ANIM_NAME			= "DashJumpComboX2",
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION			= FALSE,
	
	-- LAND_CONNECT		= FALSE,
	-- SLASH_TRACE			= { 0, 100, },
	
	-- ATTACK_TIME0		= { 0.1333, 100, },
	
	-- SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	-- SPEED_Y				= 500.0,
	
	-- SOUND_PLAY0			= { 0.23, "PowerSlash.ogg" },
	-- SOUND_PLAY1			= { 0.23, "ElswordVoice_Shout01.ogg" },
		
		
		
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		-- REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 2.4,
		-- },
		

		
		-- BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		-- BACK_SPEED_Y			= 500,
							
		-- CAMERA_CRASH_GAP		= 10.0,	
		-- CAMERA_CRASH_TIME		= 0.3,
		-- CLEAR_SCREEN			= 1,	
		
		-- TECH_POINT				= 480,
	-- },	

	-- EVENT_PROCESS =
	-- {
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_PENENSIO_DashJumpComboXX_landing",	},
	-- },
	
-- }

-- PVP_BOT_PENENSIO_DashJumpComboXX_landing = 
-- {

	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- ANIM_NAME			= "DashJumpComboX2Landing",
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
		

	-- EVENT_PROCESS =
	-- {	
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	-- },
	
-- }

-- z 콤보 입니다.
PVP_BOT_PENENSIO_ComboZ = 
{
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE			= { 0.07, 100 },
	ATTACK_TIME0		= { 0.1, 0.2 },

	SOUND_PLAY0			=	{ 0.1, "Slash.ogg" },
	
	VIEW_TARGET     = TRUE, 
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
				
        CRITICAL_RATE			= 0.4,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		FORCE_DOWN			= 5,
		TECH_POINT				= 20,
		--FORCE_DOWN			= 100,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboZZ",	"CT_PVP_BOT_PENENSIO_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_BACKWARD_DASH_READY",	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeReady",	"CT_PVP_BOT_PENENSIO_RevengeReady",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 95,
		IS_ANOTHER_TEAM				= TRUE,
	},
	
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.58,
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 80,
	},
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		ANIM_EVENT_TIMER			= 0.58,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 40,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
}

PVP_BOT_PENENSIO_ComboZZ =
{

	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0		= { 0.2, 0.24 },
	
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 1.5,
	SPEED_Y				= 0.0,
	
	SLASH_TRACE			= { 0, 100, },
	
	SOUND_PLAY0			={ 0.13, "Slash.ogg" },

	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		
		STOP_TIME_ATT			= 0.05,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		FORCE_DOWN			= 3,
		TECH_POINT				= 24,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboZZZ",	"CT_PVP_BOT_PENENSIO_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.366,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_PENENSIO_ComboZZZ =
{

	ANIM_NAME			= "ComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 1.5,
	SPEED_Y				= 0.0,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.2, 0.2666, },
	
	SOUND_PLAY0			= { 0.18, "Slash.ogg" },

	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		
		STOP_TIME_ATT			= 0.1,	
		STOP_TIME_DEF			= 0.05,	
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 6,
		TECH_POINT				= 60,
	},	


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboX_for_COMBO", 	"CT_PVP_BOT_PENENSIO_DashJumpX", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_Splash_Explosion", 	"CT_PVP_BOT_PENENSIO_Splash_Explosion", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_Big_Burst", 	"CT_PVP_BOT_PENENSIO_Big_Burst", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_Kick", 	"CT_PVP_BOT_PENENSIO_Kick", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashJumpComboZ_for_COMBO", 	"CT_PVP_BOT_PENENSIO_DashJumpZ", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeReady", 	"CT_PVP_BOT_PENENSIO_RevengeReady", 	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_Splash_Explosion =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},
	CT_PVP_BOT_PENENSIO_Big_Burst =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_PENENSIO_Kick =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 40,
		RATE						= 33,
	},
	CT_PVP_BOT_PENENSIO_DashJumpX =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_PENENSIO_DashJumpZ =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		ANIM_EVENT_TIMER			= 0.5,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 40,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
	
}


-- PVP_BOT_PENENSIO_ComboZZZZ =
-- {

	-- ANIM_NAME			= "ComboZ4",
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION			= FALSE,
	
	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 1.5,
	-- SPEED_Y				= 0.0,
	
	-- SLASH_TRACE			= { 0, 100, },
	-- ATTACK_TIME0		= { 0.4, 0.466, "STR_ChaAAk" },
	
	-- SOUND_PLAY0			= { 0.4, "PowerSlash.ogg" },
	-- SOUND_PLAY1			= { 0.4, "ElswordVoice_Shout01.ogg" },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		-- REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.4,
		-- },
		
		-- BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		
		-- STOP_TIME_ATT			= 0.2,	
		-- CAMERA_CRASH_GAP		= 10.0,	
		-- CAMERA_CRASH_TIME		= 0.2,
		-- CLEAR_SCREEN			= 1,
		
		-- TECH_POINT				= 112,
	-- },
	

	-- EVENT_PROCESS =
	-- {
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	-- },
	
-- }


-- x 콤보입니다.
PVP_BOT_PENENSIO_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.2, 0.266, },
	
	VIEW_TARGET     = TRUE, 
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},
			
        CRITICAL_RATE			= 0.4,
		
		STOP_TIME_ATT			= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 10,
		TECH_POINT				= 80,
	},
	
	SOUND_PLAY0			= { 0.2, "Slash.ogg" },


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboXZ",	"CT_PVP_BOT_PENENSIO_ComboXZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboXX",	"CT_PVP_BOT_PENENSIO_ComboXX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_BACKWARD_DASH_READY",	"CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeReady",	"CT_PVP_BOT_PENENSIO_RevengeReady",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_ComboXZ =
	{
		ANIM_EVENT_TIMER			= 0.38,
		ATTACK_SUCCESS				= TRUE, 
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 70,
	},
	
	CT_PVP_BOT_PENENSIO_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.38,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},
	
	CT_PVP_BOT_PENENSIO_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.65,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 80,
	},
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		ANIM_EVENT_TIMER			= 0.65,
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 40,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
	
	
}

PVP_BOT_PENENSIO_ComboXZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "RS_ComboX2a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT = FALSE,
	
	SOUND_PLAY0			= { 0.418, "Elsword_SI_A_ComboX3a2.ogg" },
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboXZZ",	"CT_PVP_BOT_PENENSIO_ComboXZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboX",	"CT_PVP_BOT_PENENSIO_ComboX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_ComboXZZ =
	{
		ANIM_EVENT_TIMER			= 0.55,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_PENENSIO_ComboX =
	{
		ANIM_EVENT_TIMER			= 0.7,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},

}


PVP_BOT_PENENSIO_ComboXZZ =
{

	ANIM_NAME			= "RS_ComboX3a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	SOUND_PLAY0  		= { 0.470, "Elsword_SI_A_ComboX3a3.ogg" },
	
	LAND_CONNECT = FALSE,
	
	

	EVENT_PROCESS =
	{	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboZ",	"CT_PVP_BOT_PENENSIO_ComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.766,
		IS_ANOTHER_TEAM				= TRUE,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
	
}
	
	
	
	
	
PVP_BOT_PENENSIO_ComboXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.333, 0.4, },
	
	SOUND_PLAY0			= { 0.31, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.1,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
			
		STOP_TIME_ATT			= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 15,
		
		TECH_POINT				= 105,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_ComboXXZ",	"CT_PVP_BOT_PENENSIO_ComboXXZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_ComboXXZ =
	{
		ANIM_EVENT_TIMER			= 0.5,
		IS_ANOTHER_TEAM				= TRUE,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}

-- PVP_BOT_PENENSIO_ComboXXX =
-- {
	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- ANIM_NAME			= "ComboX3",
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION			= FALSE,
	
	-- SLASH_TRACE			= { 0, 100, },
	-- ATTACK_TIME0		= { 0.29, 0.37, "STR_ChaAAk" },
	
	-- SOUND_PLAY0			= { 0.3, "Slash.ogg" },
	-- SOUND_PLAY1			= { 0.3, "ElswordVoice_Shout04.ogg" },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		-- REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 2.4,
		-- },
		
		-- BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		-- BACK_SPEED_Y			= 0,
			
		-- CAMERA_CRASH_GAP		= 10.0,	
		-- CAMERA_CRASH_TIME		= 0.2,
		-- CLEAR_SCREEN			= 1,
		
		-- TECH_POINT				= 192,
	-- },
	
	-- EVENT_PROCESS =
	-- {
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	-- },
-- }

-- XX에서 이어지는 XXZ 콤보입니다.
PVP_BOT_PENENSIO_ComboXXZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX3a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.3, 0.4, "STR_KuaAng" },
	
	SOUND_PLAY0			= { 0.3, "PowerSlash.ogg" },
	-- SOUND_PLAY1			= { 0.35, "ElswordVoice_Shout01.ogg" },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.8,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.2,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 7,
		TECH_POINT				= 180,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",	"CT_PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_Combo_for_Upper_Attack",		},
	},
	
	CT_PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
}
	
-- 점프z 공격입니다.
PVP_BOT_PENENSIO_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SPEED_X = 0,
	SPEED_Y = 0,
	
	VIEW_TARGET     = TRUE, 
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.08, 100, },
	
	SOUND_PLAY0			= { 0.08, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
					
        CRITICAL_RATE			= 0.4,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		FORCE_DOWN			= 15,
		TECH_POINT				= 20,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_WAIT",	},
	},
}

-- 점프x 공격입니다.
PVP_BOT_PENENSIO_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.1, 0.2666, },
	
	SOUND_PLAY0			= { 0.1, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.8,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
					
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 144,
	},	
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_WAIT",	},
	},
}
-- 대시X 공격입니다.
PVP_BOT_PENENSIO_DashX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.26, 0.37, "STR_KuaAng" },
	
	SOUND_PLAY0			= { 0.26, "Slash.ogg" },
	-- SOUND_PLAY1			= { 0.24, "ElswordVoice_Shout05.ogg" },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.3,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 15,
		TECH_POINT				= 150,
	},	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",	"CT_PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_Combo_for_Upper_Attack",		},
	},
	
	CT_PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP =
	{
		ANIM_EVENT_TIMER			= 0.43,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 20,
	},
}


-- 대시ZZ 콤보 공격입니다.
PVP_BOT_PENENSIO_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.2, 0.27, },
	
	SOUND_PLAY0			= { 0.23, "Slash.ogg" },
--	SOUND_PLAY1			= { 0.23, "ElswordVoice_Shout01.ogg" },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		FORCE_DOWN            = 7,
		
		TECH_POINT				= 90,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashComboZZ",	"CT_PVP_BOT_PENENSIO_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.38,
		IS_ANOTHER_TEAM				= TRUE,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_PENENSIO_DashComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	

	ANIM_NAME			= "DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.2, 0.27, },
	
	SOUND_PLAY0			= { 0.23, "Slash.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0,
			
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		-- 상연 대시콤보 --
		FORCE_DOWN            = 8,

		
		FORCE_DOWN			= 20,
		TECH_POINT				= 120,
	},	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_DashComboZZX",	"CT_PVP_BOT_PENENSIO_DashComboZZX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_DashComboZZX =
	{
		ANIM_EVENT_TIMER			= 0.38,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}


PVP_BOT_PENENSIO_DashComboZZX =
{
	ANIM_NAME			= "MagicKnight_DashComboZ3a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	FLIP_DIR_END		= TRUE,	
	
	CAN_PASS_UNIT		= TRUE,
	CAN_PUSH_UNIT		= FALSE,	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.7,	
	
	-- SOUND_PLAY0			= { 0.52, "ElswordVoice_Shout06.ogg" },

	
	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_DASH_COMBO_ZZX_for_BOT", 0.52,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_DASH",		},
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



-- 발차기 입니다.
PVP_BOT_PENENSIO_Kick =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_ES_KICK",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	DISABLE_ATTACK_BOX = 
	{
		"Sword",
	},	
	
	ATTACK_TIME0		= { 0.155, 0.22, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		FORCE_DOWN           	= -50,
		
		STOP_TIME_ATT			= 0.1,
		STOP_TIME_DEF			= 0.2,
		
		
		
		CAMERA_SHAKE_TYPE		= DAMAGE_EFFECT_CRASH_TYPE["DECT_LEFT_RIGHT"],
		CAMERA_CRASH_GAP		= 50, 
		CAMERA_CRASH_TIME		= 0.3,
		
		
		CUSTOM_HIT_PARTICLE0 = 
		{
			PARTICLE_NAME = "Light_Impact_SI_A_ES_KICK01",
		},
		
		CUSTOM_HIT_PARTICLE1 = 
		{
			PARTICLE_NAME = "Flare_SI_A_ES_KICK01",
		},
		
	},
	
	SOUND_PLAY0			= { 0.01, "Elsword_Kick.ogg" },	
	-- SOUND_PLAY1			= { 0.163, "ElswordVoice_Shout07.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_WAIT",												},
	},
}

-- 대폭살 입니다.
PVP_BOT_PENENSIO_Big_Burst =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_EMK_BIG_BURST",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= TRUE,
	LAND_CONNECT		= FALSE,
	
	STATE_STRING			= STR_ID_4367,
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	SOUND_PLAY0			= { 0.124, "Elsword_Big_Burst_Ready.ogg" },	
	
	ATTACK_TIME0		= { 0.26, 0.33, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
					
        CRITICAL_RATE			= 0.4,
		
		STOP_TIME_ATT			= 0.1,		
		STOP_TIME_DEF			= 0.5,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,
		CLEAR_SCREEN			= 0,
		
		HIT_ADD_MP     			= 1,
		TECH_POINT				= 40,

		CAN_REVENGE				= FALSE,
	},
	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_ELSWORD_MNK_BIG_BURST", 0,
		"EffectSet_PVP_BOT_BIG_BURST", 0.62,
	},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_DASH",												},
	},

}


-- 반격 입니다.
PVP_BOT_PENENSIO_RevengeReady =
{
	ANIM_NAME			= "RevengeWait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	CAN_PUSH_UNIT		= FALSE,

	VIEW_TARGET     = TRUE, 
		
	REVENGE				= { 0.06, 0.7, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_REVENGE_READY", 0.06,
	},
	SOUND_PLAY0			= { 0.09, "RevengeReady.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeAttack",	"CT_PVP_BOT_PENENSIO_RevengeAttack",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_PENENSIO_RevengeAttack =
	{
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 100,
	},

}

PVP_BOT_PENENSIO_RevengeAttack = 
{
	ANIM_NAME			= "RevengeAttack",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,	
	SLASH_TRACE			= { 0, 100, },
	INVINCIBLE			= { 0, 100, },
	
	STOP_MY_UNIT0		= { 0.15, 0.3 },
	ATTACK_TIME0		= { 0.23, 0.33, },
	
	SOUND_PLAY0			= { 0.23, "Slash.ogg" },
	-- SOUND_PLAY1			= { 0.20, "ElswordVoice_Shout05.ogg" },
	
	TALK_BOX =
	{
		{ RATE = 40, MESSAGE = STR_ID_12379 },
		{ RATE = 40, MESSAGE = STR_ID_12380 },
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.8,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= INIT_PHYSIC["DASH_JUMP_SPEED"]*0.8,
		
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.5,
		CLEAR_SCREEN			= 1,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,	
		
		TECH_POINT				= 200,
	},
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_Combo_for_Upper_Attack",												},
	},
}


-- 초열의 룬 입니다.
PVP_BOT_PENENSIO_Rune_Guard_FIRE =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED			= 2.3,
	
	VIEW_TARGET     = TRUE, 
		
	SOUND_PLAY0			= { 0.4, "fire3.ogg" },
	

	TALK_BOX =
	{
		{ RATE = 20, MESSAGE = STR_ID_12372 },
		{ RATE = 20, MESSAGE = STR_ID_12373 },
		{ RATE = 20, MESSAGE = STR_ID_12374 },
	},
	ANIM_NAME			= "SP1a_WindBlade",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PENENSIO_RUNE_GUARD_FIRE", 0.4,
	},
	AFTER_IMAGE			= { 0.1, 100, },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_DASH",												},
	},

}



-- 한빙의 룬 입니다.
PVP_BOT_PENENSIO_Rune_Guard_ICE =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED			= 2.3,
	
	VIEW_TARGET     = TRUE, 
		
	SOUND_PLAY0			= { 0.4, "HitIce.wav" },
	

	TALK_BOX =
	{
		{ RATE = 25, MESSAGE = STR_ID_12375 },
		{ RATE = 25, MESSAGE = STR_ID_12376 },
	},
	
	ANIM_NAME			= "SP1a_WindBlade",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PENENSIO_RUNE_GUARD_ICE", 0.4,
	},
	AFTER_IMAGE			= { 0.1, 100, },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_DASH",												},
	},

}




-- 광명의 룬 입니다.
PVP_BOT_PENENSIO_Rune_Guard =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED			= 2.3,
	
	VIEW_TARGET     = TRUE, 
		
	SOUND_PLAY0			= { 0.4, "spriggan_light_ball_start.ogg" },
	
	TALK_BOX =
	{
		{ RATE = 25, MESSAGE = STR_ID_12370 },
		{ RATE = 25, MESSAGE = STR_ID_12371 },
	},
	
	ANIM_NAME			= "SP1a_WindBlade",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	AFTER_IMAGE			= { 0.1, 100, },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_DASH",												},
	},

}


-- 스톰 블레이드
PVP_BOT_PENENSIO_Storm_Blade =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "SP3a_StormBlade",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	
	LAND_CONNECT			= FALSE,   
	INVINCIBLE				= { 0, 3, },
	AFTER_IMAGE				= { 0.1, 100, },
	SLASH_TRACE				= { 0.1, 100, },
		
	TALK_BOX =
	{
		{ RATE = 25, MESSAGE = STR_ID_12377 },
		{ RATE = 25, MESSAGE = STR_ID_12378 },
	},
	
	STOP_OTHER_UNIT0			= { 0.2, 0.6, },
	STATE_STRING			= STR_ID_4267,
		
	SOUND_PLAY0				= { 0.1,	"Energy.ogg" },
	-- SOUND_PLAY1				= { 0.2,	"ElswordVoice_StormBlade.ogg" },
	SOUND_PLAY2				= { 0.37,	"Elsword_StormBlade1.ogg" },
	SOUND_PLAY3				= { 0.37,	"Elsword_StormBlade1.ogg" },
	SOUND_PLAY4				= { 0.4, 	"Elsword_BladeOut.ogg" },			
	SOUND_PLAY5				= { 0.4, 	"Elsword_BladeOut.ogg" },			
	SOUND_PLAY6				= { 0.72,	"Elsword_StormBlade2.ogg" },
	SOUND_PLAY7				= { 0.76, 	"Elsword_BladeOut.ogg" },			
	SOUND_PLAY8				= { 1.24,	"Elsword_StormBlade3.ogg" },
	SOUND_PLAY9				= { 1.24,	"Elsword_StormBlade3.ogg" },
			
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_STORM_BLADE", 0.4,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_WAIT",												},
	},

}

-- 루나 블레이드
PVP_BOT_PENENSIO_Luna_Blade =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "RS_LUNA_BLADE",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	
	VIEW_TARGET     = TRUE, 
		
	LAND_CONNECT			= FALSE,   
	INVINCIBLE				= { 0, 1.0, },
	AFTER_IMAGE				= { 0.1, 100, },
	SLASH_TRACE				= { 0.1, 100, },
		
	STOP_OTHER_UNIT0			= { 0.06, 1.4, },
	STATE_STRING			= STR_ID_4260,
	
	SOUND_PLAY0				= { 0.004,	"Energy.ogg" },
	-- SOUND_PLAY1	    	    = { 0.01, "ElswordVoice_LunaBlade.ogg" },
	SOUND_PLAY2	    	    = { 1.01, "Elsword_LunaBlade_Shot.ogg" },
			
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_LUNA_BLADE", 0.1,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_DASH",												},
	},

}

-- 스플래시 익스플로전!
PVP_BOT_PENENSIO_Splash_Explosion =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME				= "SI_SA_ERS_SPLASH_EXPLOSION",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	
	VIEW_TARGET     = TRUE, 
		
	LAND_CONNECT			= FALSE,   
	INVINCIBLE				= { 0, 3, },
	AFTER_IMAGE				= { 0.1, 100, },
	SLASH_TRACE				= { 0.1, 100, },
		
	SKIP_TIME				= 1.4,
			
	STOP_OTHER_UNIT0			= { 0.1, 0.6, },
	STATE_STRING			= STR_ID_4640,
	
	
	SOUND_PLAY0				= { 0.001, "Energy.ogg" },
	-- SOUND_PLAY1				= { 0.015, "ElswordVoice_SplashExplosion.ogg" },
	SOUND_PLAY2				= { 0.368, "Elsword_SI_SA_Splash_Explosion1.ogg" },
	SOUND_PLAY3				= { 1.253, "Elsword_SI_SA_Splash_Explosion2.ogg" },
	
	SPEED_X				= 1000,
	

	EFFECT_SET_LIST = 
	{
		"EffectSet_ELSWORD_SPLASH_EXPLOSION", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_ComboZ",												},
	},

}

-- 각성
PVP_BOT_PENENSIO_BOOST_POWER =
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
		{ RATE = 40, MESSAGE = STR_ID_12381 },
		{ RATE = 40, MESSAGE = STR_ID_12382 },
	},
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_WAIT",												},
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

PVP_BOT_PENENSIO_Combo_for_Upper_Attack =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",														},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_ComboZ",    		 	"CT_PVP_BOT_PENENSIO_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DashComboZ",    		 	"CT_PVP_BOT_PENENSIO_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",    		 	"CT_PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_WAIT",												},
		  		
	},	
	-- 잡자!
	
	CT_PVP_BOT_PENENSIO_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		IS_ANOTHER_TEAM				= TRUE,
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_PENENSIO_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
		IS_ANOTHER_TEAM				= TRUE,
	},
	CT_PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP =
	{
		EVENT_INTERVAL_ID			= 0,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 450,
		RATE						= 5,
	},
}

PVP_BOT_PENENSIO_Combo_for_Upper_Attack_JumpZ_JUMP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X			= 300,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_PENENSIO_JumpZ",          	"CT_PVP_BOT_PENENSIO_JumpZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_PENENSIO_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.03,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
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
-- (damaged) react
-- 리액트에 대한 구현 부분입니다.



PVP_BOT_PENENSIO_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeReady",	"CT_PVP_BOT_PENENSIO_RevengeReady",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_RevengeReady",												},
	},
	
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		ANIM_EVENT_TIMER			= 0.45,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,	
		MY_MP_MORE_THAN				= 30,
		RATE						= 85,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_SMALL_FRONT =
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
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeReady",	"CT_PVP_BOT_PENENSIO_RevengeReady",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 3,
	},
	
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.62,
		DISTANCE_TO_TARGET_NEAR		= 250,
		EVENT_INTERVAL_ID			= 0,	
		MY_MP_MORE_THAN				= 30,
		RATE						= 50,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_SMALL_BACK =
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
		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
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
PVP_BOT_PENENSIO_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- SOUND_PLAY0			= { 0.07, "ElswordVoice_DamageScream04.ogg" , 20 },


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_RevengeReady",	"CT_PVP_BOT_PENENSIO_RevengeReady",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
	},
	
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		IS_ANOTHER_TEAM				= TRUE,
		RATE						= 3,
	},
	
	CT_PVP_BOT_PENENSIO_RevengeReady =
	{
		ANIM_EVENT_TIMER			= 0.82,
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 250,
		EVENT_INTERVAL_ID			= 0,	
		MY_MP_MORE_THAN				= 30,
		RATE						= 50,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	-- SOUND_PLAY0			= { 0.07, "ElswordVoice_DamageScream04.ogg" , 20 },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_WAIT",		},
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
PVP_BOT_PENENSIO_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },


	SOUND_PLAY0			= { 0.19, "Down.ogg" },
	-- SOUND_PLAY1			= { 0.19, "ElswordVoice_DamageScream03.ogg" },
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
	},
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK",	"CT_PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_PENENSIO_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_STAND_UP_FRONT",	},
	},
	
	
	
	CT_PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK =
	{
		ANIM_EVENT_TIMER			= 1.1,
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.32, "Down.ogg" },
	-- SOUND_PLAY1			= { 0.19, "ElswordVoice_DamageScream03.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_STANDUP_ROLLING_BACK_FRONT",	"CT_PVP_BOT_PENENSIO_STANDUP_ROLLING_BACK_FRONT",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_PENENSIO_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_STAND_UP_BACK",	},
	},
	
	
	
	CT_PVP_BOT_PENENSIO_STANDUP_ROLLING_BACK_FRONT =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 1.1,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 33,
	},

}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	-- SOUND_PLAY0		= { 0.1, "ElswordVoice_DamageScream01.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING",	},
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
PVP_BOT_PENENSIO_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	-- SOUND_PLAY0		= { 0.1, "ElswordVoice_DamageScream01.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK",	},
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
PVP_BOT_PENENSIO_DAMAGE_AIR =
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_WAIT",	},
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
PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,


	-- SOUND_PLAY0		= { 0.1, "ElswordVoice_DamageScream01.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_PENENSIO_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_PENENSIO_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY1		= { 0.029, "Down.ogg" },
	SOUND_PLAY2		= { 0.46, "Down.ogg" },	
	-- SOUND_PLAY3		= { 0.1, "ElswordVoice_DamageScream02.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK",	"CT_PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_PENENSIO_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_PENENSIO_STAND_UP_FRONT",	},
	},
	
	
	
	CT_PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 1.1,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 60,
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
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

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X = 1,
	PASSIVE_SPEED_Y	= 1,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_STAND_UP_FRONT =
{
	ANIM_NAME			= "SI_A_EL_GET_CHANCE_FRONT",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	SOUND_PLAY0			= { 0.33, "Slash.ogg" },
	
	INVINCIBLE			= { 0, 100, },

	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.23, 0.4, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_STANDUP_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_PENENSIO_STAND_UP_BACK =
{
	ANIM_NAME			= "SI_A_EL_GET_CHANCE_BACK",		
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	FLIP_DIR_END		= TRUE,		-- 상태가 끝날 때 캐릭터의 방향을 반대로 바꿔버린다
	
	SOUND_PLAY0			= { 0.43, "Slash.ogg" },
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.23, 0.4, },
	
	
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
		
        CRITICAL_RATE			= 0.4,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
			
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
	},

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_STANDUP_WAIT",      },
	},
}


PVP_BOT_PENENSIO_STANDUP_ROLLING_FRONT_BACK =
{
	ANIM_NAME			= "StandUpRollingFrontBack",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	CAN_PASS_UNIT		= TRUE,
	
	INVINCIBLE			= { 0, 100, },

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_STANDUP_WAIT",      },
	},
}

PVP_BOT_PENENSIO_STANDUP_ROLLING_BACK_FRONT =
{
	ANIM_NAME			= "StandUpRollingBackFront",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	CAN_PASS_UNIT		= TRUE,
	
	INVINCIBLE			= { 0, 100, },

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_PENENSIO_JUMP_DOWN_ACT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_PENENSIO_STANDUP_WAIT",      },
	},
}

--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_PENENSIO_DYING_FRONT = 
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

PVP_BOT_PENENSIO_DYING_BACK = 
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
function PVP_BOT_PENENSIO_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.87 ) then
         local pDamageEffect = pX2Game:GetDamageEffect()
         local vPos = pNPCUnit:GetPos()
         local vLandPos = pNPCUnit:GetLandPosition_LUA()

         if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "PVP_BOT_PENENSIO_ATTACK_A", vPos, vLandPos.y )
         end
	end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_PENENSIO_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_PENENSIO_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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


function PVP_BOT_PENENSIO_Mega_Slash_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_Unit = false
	end
		
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_Unit == false then
			if pNPCUnit:GetIsRight() then	
				local p2EffectSet = pX2Game:GetEffectSet()
				local h2Effect = p2EffectSet:PlayEffectSet_LUA( "EffectSet_STR_KAAng_for_BOT", pNPCUnit )
				hit_Unit = true
			else	
				local p2EffectSet = pX2Game:GetEffectSet()
				local h2Effect = p2EffectSet:PlayEffectSet_LUA( "EffectSet_STR_KAAng_for_BOT_LEFT", pNPCUnit )
				hit_Unit = true
			end
		end
	end		
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		local p1EffectSet = pX2Game:GetEffectSet()
		-- local h1Effect = p1EffectSet:PlayEffectSet_LUA( "EffectSet_OutLine_image", pNPCUnit )
		
		if pNPCUnit:GetIsRight() then	
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_Talk_Right_for_BOT", pNPCUnit )
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_for_BOT_ELSWORD", pNPCUnit )
		else	
			pMinorParticle = pX2Game:GetMinorParticle()
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_Talk_Left_for_BOT", pNPCUnit )
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CutIn_for_BOT_ELSWORD_LEFT", pNPCUnit )
		
		end
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
        
	  
end	


function PVP_BOT_PENENSIO_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
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


function CF_PVP_BOT_PENENSIO_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if fRemainHPRate < 0.4 then	
	
		if pNPCUnit:GetHyperModeCount() > 0 then
		
			return true
			
		end
	
	end

	return false

end

function PVP_BOT_PENENSIO_ComboZZZZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_Unit = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_Unit == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_ChaAAk_for_BOT", pNPCUnit )
				hit_Unit = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_ChaAAk_for_BOT_LEFT", pNPCUnit )
				hit_Unit = true
			end
		end
	end		

end

function PVP_BOT_PENENSIO_ComboXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_Unit = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_Unit == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_KuaAng_for_BOT", pNPCUnit )
				hit_Unit = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_KuaAng_for_BOT_LEFT", pNPCUnit )
				hit_Unit = true
			end
		end
	end		
	  

end
function PVP_BOT_PENENSIO_ComboXXZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_Unit = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_Unit == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_KuaAng_for_BOT", pNPCUnit )
				hit_Unit = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_KuaAng_for_BOT_LEFT", pNPCUnit )
				hit_Unit = true
			end
		end
	end		
end

function PVP_BOT_PENENSIO_DashX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_Unit = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_Unit == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_KuaAng_for_BOT", pNPCUnit )
				hit_Unit = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_KuaAng_for_BOT_LEFT", pNPCUnit )
				hit_Unit = true
			end
		end
	end		

end



-- 에러 방지용 임시 프레임 무브 펑션입니다. 수정하시오!


-- function PVP_BOT_PENENSIO_DashJumpComboXZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- if pNPCUnit:AnimEventTimer_LUA( 0.335 ) then	
		
		-- if pNPCUnit:GetNowMP() < 4.0 then
			-- local pEffectSet = pX2Game:GetEffectSet()
			-- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		-- else
			-- local pEffectSet = pX2Game:GetEffectSet()
			-- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_ERS_DASHJUMP_COMBO_XZ_for_BOT", pNPCUnit )
			-- nowMp = pNPCUnit:GetNowMP()
			-- pNPCUnit:SetNowMP(nowMp - 2)
		-- end
	-- end
	
-- end	
-- --ELSWORD_RUNE_SLAYER_DASH_JUMP_XZZ
-- function PVP_BOT_PENENSIO_DashJumpComboXZZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then	
		
		-- if pNPCUnit:GetNowMP() < 4.0 then
			-- local pEffectSet = pX2Game:GetEffectSet()
			-- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		-- else
			-- local vRot = pNPCUnit:GetRotateDegree()
				
			-- local pDamageEffect = pX2Game:GetDamageEffect()
			
			-- local landPos = pNPCUnit:GetLandPosition_LUA()
			-- local LHandPos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" )
			
			-- pCEffect = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "ELSWORD_RUNE_SLAYER_DASH_JUMP_XZZ_for_BOT", LHandPos, landPos.y, vRot )
			-- -- local pEffectSet = pX2Game:GetEffectSet()
			-- -- local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_ERS_DASHJUMP_COMBO_XZZ_for_BOT", pNPCUnit )
			-- nowMp = pNPCUnit:GetNowMP()
			-- pNPCUnit:SetNowMP(nowMp - 3)
		-- end
	-- end
	
-- end	


function PVP_BOT_PENENSIO_ComboXZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_ERS_COMBO_XZ_for_BOT", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 3)
		end
	end
	
end	

function PVP_BOT_PENENSIO_ComboXZZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_ERS_COMBO_XZZ_for_BOT", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	
--ELSWORD_RUNE_SLAYER_DASH_ZZX
function PVP_BOT_PENENSIO_DashComboZZX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.52 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
		
		
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_ERS_DASH_COMBO_ZZX_for_BOT", pNPCUnit )
			else				
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_ERS_DASH_COMBO_ZZX_for_BOT_REVERSE", pNPCUnit )
			end
			
			
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	

function PVP_BOT_PENENSIO_Kick_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 18)
	end
	
end	

function PVP_BOT_PENENSIO_Big_Burst_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.68 ) then		
	pNPCUnit:SetSpeedX(-1000)
	end
	
end	


function PVP_BOT_PENENSIO_RevengeReady_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 20)
	end
	
end	

function PVP_BOT_PENENSIO_Rune_Guard_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then		
		local viewPos = 1
		if pNPCUnit:GetIsRight() == false then
			viewPos = -1
		end
	    
		local pos = pNPCUnit:GetPos()
		pos.x = pos.x + (300 * viewPos)
		
		-- pos.y = pos.y + 150
		-- "NUI_PVP_RUNE_GUARD" NPC를 소환합니다.
		pX2Game:CreateNPCReqAlly( NPC_UNIT_ID["NUI_PVP_RUNE_GUARD"], pNPCUnit:GetHardLevel(), false, pos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), false, TEAM_NUM["TN_RED"]  )
	end
end	

function PVP_BOT_PENENSIO_Rune_Guard_FIRE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 20)
	end
end	
function PVP_BOT_PENENSIO_Rune_Guard_ICE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end	

function PVP_BOT_PENENSIO_Splash_Explosion_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
        
	  
end	

function PVP_BOT_PENENSIO_Luna_Blade_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end		
        
	  
end	



function PVP_BOT_PENENSIO_Storm_Blade_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 300)
	end		
        
	  
end	



function CF_PVP_BOT_CHECK_BACK_ESCAPE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() < 0.1 then
		return false 
	end
	
	
 	local bIsRight = pNPCUnit:GetIsRight()
	local vStartPos = pNPCUnit:GetLineGroupStartPos()
	local vEndPos = pNPCUnit:GetLineGroupEndPos()

 	
 	if bIsRight == true and pNPCUnit:GetDistanceFrom(vEndPos) < 280.0 then
 	
 	    return true
 	    
   	end
   	
   	if bIsRight == false and pNPCUnit:GetDistanceFrom(vStartPos) < 280.0 then

		return true
  	
    end
    
    return false 	

end


function PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )			
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then	
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end	
end	