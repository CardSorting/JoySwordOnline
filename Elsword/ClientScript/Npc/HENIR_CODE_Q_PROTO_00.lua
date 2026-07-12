-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ / 2011/5/11 / 코드:Q-PROTO_00/
	 
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
		"Black_Circle01.dds",
		"SpreadLight02_Gray.dds",
		"Eve_Sp3a_BackPack01.tga",
		"Whitecircle02.dds",
		"AeroTornado04.dds",
		"Condense_Light01.dds",
		"Explosion_Light02.dds",
		"ColorBallGray.dds",
		"CutTendon_Slash01.dds",
		"Star.dds",
		"SlashLight.dds",
		"GroundShockWave.dds",
		"Condense_Pulse02.dds",
		"Eve_TriangleJin01.tga",
	},
	READY_SOUND =
	{
		"Step.ogg",
		"Eve_Attack1.ogg",
		"Eve_Attack2.ogg",
		"Eve_Attack5.ogg",
		"Eve_Attack6.ogg",
		"Eve_Attack7.ogg",
		"EveVoice_Shout01.ogg",
		"EveVoice_Shout03.ogg",
		"EveVoice_Shout04.ogg",
		"EveVoice_Shout10.ogg",
		"EveVoice_Shout11.ogg",
		"EveVoice_Shout12.ogg",
		"EveVoice_Shout14.ogg",
		"Eve_CheekAttack.ogg",
		"Eve_FireShot2_Ready.ogg",
		"Eve_BladeShot.ogg",
		"Eve_MEB_Mega_Electronball.ogg",
		"Eve_Metal_Dust_Aura.ogg",
		"Energy.ogg",
		"EveVoice_SP3_GenerateBlackHole.ogg",
		"Eve_SP3_GenerateBlackHole_Spin.ogg",
		"Eve_SP3_GenerateBlackHole_Ready.ogg",
		"Eve_SP3_GenerateBlackHole_Explosion.ogg",
		"Eve_SP3_GenerateBlackHole_End.ogg",
		"EveVoice_JunkBreak.ogg",
		"Eve_JunkBreak.ogg",
		"Eve_IronScraps.ogg",
		"EveVoice_IronScraps.ogg",
		"Eve_NS_Atomic_Blaster.ogg",
		"EveVoice_AtomicBlaster.ogg",
		"EveVoice_DamageScream01.ogg",
		"EveVoice_DamageScream02.ogg",
		"EveVoice_DamageScream03.ogg",
		"EveVoice_DieScream1.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
		"IronScraps_Mesh01.Y",		
		"Eve_Atomic_Blaster_GunFire01.Y",
	},
	READY_XSKIN_MESH = 
	{
		"Eve_AT_ComboZ5a_Mesh.X",
		"Eve_AT_ComboX5a_mesh.X",
		"Eve_Guardian_BladeWave01.X",
		"Eve_AT_DashComboZ2_mesh.X",
		"Eve_Sp3aA_GBH_Mesh01.X",
		"Eve_Sp3aA_GBH_Mesh02.X",
		"Eve_Sp3aA_GBH_Mesh03.X",
		"GuardianStrike02.X",	
		"SI_A_EEG_METAL_DUST_AURA_Effect.x",
		"SI_SA_EEG_JUNK_BREAK_Effect_Drill_Main.X",
		"SI_SA_EEG_JUNK_BREAK_Effect_Drill_Side.X",
		"Spin_Liner03.X",
		"Eve_SI_SA_ENS_Atomic_Blaster_Mesh01.X",
		"Eve_SI_SA_ENS_Atomic_Blaster_Mesh02.X",
		"Eve_Triangle_Spin_Mesh01.X",
	},	
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_Q-PROTO_00.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -3500,
	
	-- 이속/점속이 +10~30% 입니다.
	WALK_SPEED			= 500,
	RUN_SPEED			= 725,
	JUMP_SPEED			= 1500,
	--DASH_JUMP_SPEED		= 2200,
	DASH_JUMP_SPEED		= 450,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	-- 초당 MP 1가 회복됩니다.
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 300,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = FALSE,
	
	-- 헤니르 보정으로 공속 다운
	DEFAULT_ANIM_SPEED = 0.95,
	
	HYPER_MODE_COUNT	= 1,
	MAX_HYPER_MODE_TIME	= 999,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

    --MIND_FLAG_HEIGHT		= 230,

	HYPER_BOOST_RIGHT	= "HyperBoostRightEve",
	HYPER_BOOST_LEFT	= "HyperBoostLeftEve",
	HYPER_MODE_COLOR_R = 1.0,
	HYPER_MODE_COLOR_G = 0.8,
	HYPER_MODE_COLOR_B = 0.8,
	HYPER_MODE_COLOR_A = 1.0,
	
	
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
	
 	INVISIBLE =
	{
		MAX_ALPHA = 3,
		MIN_ALPHA = -2,
		SPEED = 0.5,

		ALPHA_LOWER_BOUND = 0.33,
	},

	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Eve_Cash_Weapon50_Sorted_A.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Eve_Cash_Weapon50_Sorted_B.X",
		WEAPON_BONE_NAME			= "Dummy2_Lhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON2 = 
	{
		WEAPON_FILE_NAME	= "EG_SP3a_QueensThrone_Wing_Weapon1.X",
		WEAPON_BONE_NAME	= "Bip01_Spine1",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON3 = 
	{
		WEAPON_FILE_NAME	= "EG_SP3a_QueensThrone_Wing_Weapon2.X",
		WEAPON_BONE_NAME	= "Bip01_Spine1",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON4 = 
	{
		WEAPON_FILE_NAME			= "Hyper_Mesh_Eve_AC_Upbody_131014_Sorted.X",
		WEAPON_BONE_NAME			= "Bip01_Spine",
	},
	WEAPON5 = 
	{
		WEAPON_FILE_NAME	= "Mesh_Common_Elite_AC_ARM_132807_Sorted_A.X",
		WEAPON_XET_NAME				= "PVP_HERO_Q-PROTO_00.xet",
		WEAPON_BONE_NAME	= "Bip01_R_Forearm",
		Z_ENABLE_FOR_THIS_WEAPON  = TRUE,
		ALPHA_OBJECT		= TRUE,
		WEAPON_DEST_BLEND	= D3DBLEND["D3DBLEND_DESTALPHA"],
	},
	WEAPON6 = 
	{
		WEAPON_FILE_NAME	= "Mesh_Common_Elite_AC_ARM_132807_Sorted_A.X",
		WEAPON_XET_NAME				= "PVP_HERO_Q-PROTO_00.xet",
		WEAPON_BONE_NAME	= "Bip01_L_Forearm",
		Z_ENABLE_FOR_THIS_WEAPON  = TRUE,
		ALPHA_OBJECT		= TRUE,
		WEAPON_DEST_BLEND	= D3DBLEND["D3DBLEND_DESTALPHA"],
	},
	-- WEAPON7 = 
	-- {
		-- WEAPON_FILE_NAME	= "Mesh_Eve_AC_Face2_130394_Sorted.Y",
		-- WEAPON_XET_NAME				= "PVP_HERO_Q-PROTO_00.xet",
		-- WEAPON_BONE_NAME	= "Bip01_Head",
		-- Z_ENABLE_FOR_THIS_WEAPON  = TRUE,
		-- ALPHA_OBJECT		= TRUE,
		-- WEAPON_DEST_BLEND	= D3DBLEND["D3DBLEND_DESTALPHA"],
	-- },
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 코드:Q-PROTO_00는 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_START",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_START_FRAME_MOVE"			},
	
	-- 승리모션입니다. 코드:Q-PROTO_00는 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_WIN",							},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_WIN2",							},
	
	-- 코드:Q-PROTO_00는 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_LOSE",							},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_WAIT",							},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_STANDUP_WAIT",							},

	-- 멀리 있는 대상을 요격하는 기모으기 금지 웨이트 모션입니다.
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",				STATE_COOL_TIME = 15,				},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2_WAIT",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_3_WAIT",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_4_WAIT",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_5_WAIT",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_6_WAIT",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_7_WAIT",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_8_WAIT",							},
	-- -- 멀리 있는 대상을 요격하는 기모으기 금지 공격 모션입니다.
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",							},
	-- { STATE_NAME = "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",							},
	
	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_WALK",							},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_DASH",							},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_FLIP_DIR",						},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_Q_PROTO_00_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지, 2단 점프) 입니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",						},
	--{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_FRONT_DASH",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_Q_PROTO_00_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",						LUA_STATE_END_FUNC = "PVP_BOT_Q_PROTO_00_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_LANDING",					},
	
	-- 피격 중 발동 공격(다운)
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_HIT_BREAK",							},
	
	-- zzzz 콤보
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboZ",							},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboZZZ",						},
	
	-- zzz↓zz 콤보
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboZZZdownZ",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboZZZdownZZ",						},
	
	-- XXX 콤보
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboX",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_ComboX_FRAME_MOVE",							},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_ComboXX_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ComboXXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_ComboXXX_FRAME_MOVE"			},
	
	-- 대시점프 Z
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJump",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_FRONT_DASH_A",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_FRONT_DASH_B",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJump_A2",						},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_FRONT_DASH_A2",						},
	--{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJumpComboZ",									},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJumpComboZZ",							},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashJumpComboZZZ",							},

	-- 대시 x 공격
	--{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DashX_FRAME_MOVE",					},
	
	-- 대시 zz 콤보
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashComboZ",									},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashComboZZ",					},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DashComboZZZ",					},
	
	-- 점프 z 공격
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JumpZ",										},
		
	-- 점프 x 공격 
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_JumpX",							},
		
	-- 노차지 풀충전 메가 일렉트론볼을 시전합니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL_FRAME_MOVE",			STATE_COOL_TIME = 7,					},
	
	-- 메탈 더스트 오라를 시전합니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_METAL_DUST_AURA",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_METAL_DUST_AURA_FRAME_MOVE",			STATE_COOL_TIME = 20,					},
	
	-- 쏜즈 일루전을 시전합니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_THORNS_ILLUSION_FRAME_MOVE",			STATE_COOL_TIME = 15,					},
	
	-- 제네레이트 블랙홀! : 헤니르에서 사용하지 않습니다.
	-- { STATE_NAME = "PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE_FRAME_MOVE",			STATE_COOL_TIME = 30,					},
	
	-- 정크 브레이크! : 헤니르에서 사용하지 않습니다.
	-- { STATE_NAME = "PVP_BOT_Q_PROTO_00_JUNK_BREAK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_JUNK_BREAK_FRAME_MOVE",			STATE_COOL_TIME = 30,					},
	
	-- 아토믹 블래스터!
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER_FRAME_MOVE",			STATE_COOL_TIME = 7,					},
	
	-- 아이언 스크랩스! : 헤니르에서 사용하지 않습니다.
	-- { STATE_NAME = "PVP_BOT_Q_PROTO_00_JUMP_UP_DIR_for_IRON_SCRAPS",					},	-- 아이언 스크랩스를 정통으로 먹이기 위해 점프합니다.
	-- { STATE_NAME = "PVP_BOT_Q_PROTO_00_IRON_SCRAPS",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_IRON_SCRAPS_FRAME_MOVE",			STATE_COOL_TIME = 10,					},
	
	-- -- 각성을 합니다 '투캉!' : 항상 각성상태입니다.
	-- { STATE_NAME = "PVP_BOT_Q_PROTO_00_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_BOOST_POWER_FRAME_MOVE"	},
	
	-- 띄우는 공격을 행하였을 때 기다렸다가 발차기나 여타 스킬로 이어갈 수 있도록 해주는 콤보 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_Combo_for_Upper_Attack",										},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_Q_PROTO_00_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_Q_PROTO_00_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_Q_PROTO_00_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DAMAGE_REVENGE",				},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_Q_PROTO_00_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_Q_PROTO_00_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_Q_PROTO_00_DYING_LAND_STATE_START",			},

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_Q_PROTO_00_START",
	WAIT_STATE					= "PVP_BOT_Q_PROTO_00_WAIT",
	WIN_STATE					= "PVP_BOT_Q_PROTO_00_WIN",
	LOSE_STATE					= "PVP_BOT_Q_PROTO_00_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_Q_PROTO_00_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_Q_PROTO_00_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_Q_PROTO_00_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_Q_PROTO_00_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_Q_PROTO_00_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_Q_PROTO_00_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_Q_PROTO_00_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_Q_PROTO_00_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_Q_PROTO_00_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_Q_PROTO_00_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_Q_PROTO_00_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN","PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL",
	"PVP_BOT_Q_PROTO_00_STAND_UP_FRONT","PVP_BOT_Q_PROTO_00_STAND_UP_BACK",
	"PVP_BOT_Q_PROTO_00_JUMP_DOWN","PVP_BOT_Q_PROTO_00_JUMP_LANDING",},	
	WAIT_STATES                 = { "PVP_BOT_Q_PROTO_00_STANDUP_WAIT", },	

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_Q_PROTO_00_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_Q_PROTO_00_DYING_BACK",
	DYING_SKY					= "PVP_BOT_Q_PROTO_00_DYING_FRONT",

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
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
PVP_BOT_Q_PROTO_00_WIN =
{
	ANIM_NAME					= "NS_Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },
	
	
	EFFECT_SET_LIST = 
	{
		"Eve_NS_Win", 0, 
	},
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12498 },
		{ RATE = 33, MESSAGE = STR_ID_12497 },
	},

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_WIN2 =
{
	ANIM_NAME					= "EG_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12498 },
		{ RATE = 33, MESSAGE = STR_ID_12497 },
	},

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_EVE_EG_WIN2", 0, 
	},
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	NORMAL_CAMERA0_RATE			= 0,
	NORMAL_CAMERA1_RATE			= 50,
	NORMAL_CAMERA2_RATE			= 50,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_Q_PROTO_00_LOSE =
{
	ANIM_NAME					= "EG_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12499 },
		{ RATE = 33, MESSAGE = STR_ID_12500 },
	},

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_LOSE2 =
{
	ANIM_NAME					= "EG_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
		
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12499 },
		{ RATE = 33, MESSAGE = STR_ID_12500 },
	},

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_START =
{
	ANIM_NAME					= "EG_SP3a_QueensThrone",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
		

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
}

-- 멀리 도망간 유저에게서 HP와 MP를 흡수하는 스테이트 입니다.
--------------------------------------------------------------------------
-- PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT =
-- {
	-- ANIM_NAME	= "Wait",
	-- PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	-- TRANSITION	= TRUE,

	-- CAN_PUSH_UNIT	= TRUE,
	-- CAN_PASS_UNIT	= FALSE,

	-- SPEED_X	= 0,
	-- SPEED_Y	= 0,

	-- VIEW_TARGET     = TRUE, 
		
	-- PASSIVE_SPEED_X	= 0,

	-- IMMADIATE_PACKET_SEND	= TRUE,
	
	-- -- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	-- EVENT_INTERVAL_TIME0	= 0.1,

	-- EVENT_PROCESS =
	-- {
		-- -- 대상과의 거리를 체크 합니다. 안오면 몸에서 기운을 내뿜어 MP와 HP를 드레인합니다.
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2_WAIT",												},
	-- },

	-- CT_PVP_BOT_EPIK_WAIT =
	-- {
		-- EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 850,	
		-- RATE						= 100,
	-- },
-- }
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",    		 					"CT_PVP_BOT_EPIK_WAIT",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_2",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_Q_PROTO_00_WAIT",	}
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
	STOP_ALL_UNIT0  = { 0.08, 1.38, 0.5 },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_EPIK_INSANE_INTAKE_LEVEL_1", 0.9,
	},		
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.9, "Chung_Pandemonium3.ogg" },
	SOUND_PLAY3			= { 0.9, "EveVoice_Shout04.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
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
	STOP_ALL_UNIT0  = { 0.08, 1.38, 0.5 },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_EPIK_INSANE_INTAKE_LEVEL_2", 0.9,
	},		
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.9, "Chung_Pandemonium3.ogg" },
	SOUND_PLAY3			= { 0.9, "EveVoice_Shout01.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},

}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",													},

		-- { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_Q_PROTO_00_BOOST_POWER",	"CF_PVP_BOT_Q_PROTO_00_BOOST_POWER",									},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_Q_PROTO_00_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_Q_PROTO_00_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",															},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",     	"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",   	},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",     	"CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_IRON_SCRAPS",     	"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUNK_BREAK",     	"CT_PVP_BOT_Q_PROTO_00_JUNK_BREAK",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",     	"CT_PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_METAL_DUST_AURA",     		"CT_PVP_BOT_Q_PROTO_00_METAL_DUST_AURA",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",     		"CT_PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     				"CT_PVP_BOT_Q_PROTO_00_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",  "CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",     	"CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashComboZ",     			"CT_PVP_BOT_Q_PROTO_00_DashComboZ",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WALK",         				"CT_PVP_BOT_Q_PROTO_00_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DASH",         				"CT_PVP_BOT_Q_PROTO_00_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",         		"CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUMP_UP",         			"CT_PVP_BOT_Q_PROTO_00_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump",          		"CT_PVP_BOT_Q_PROTO_00_DashJump",      			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboX",     				"CT_PVP_BOT_Q_PROTO_00_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     				"CT_PVP_BOT_Q_PROTO_00_ComboZ2",       	     	},
		
	},

	
	-- 공격은 강렬하게!
	
	CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_Q_PROTO_00_JUNK_BREAK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 299,
		RATE						= 40,
	},
	CT_PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2500,
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_METAL_DUST_AURA =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_THORNS_ILLUSION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_MP_MORE_THAN				= 50,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		RATE						= 15,
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 650,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 15,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 10,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 15,
	},
			
	CT_PVP_BOT_Q_PROTO_00_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 25,
	},
		
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	-- CT_PVP_BOT_Q_PROTO_00_ComboZ =
	CT_PVP_BOT_Q_PROTO_00_ComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 100,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_STANDUP_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	INVINCIBLE = { -1, -1, 0.7, 0.7 },
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",													},

		-- { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_Q_PROTO_00_BOOST_POWER",	"CF_PVP_BOT_Q_PROTO_00_BOOST_POWER",									},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_Q_PROTO_00_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_Q_PROTO_00_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",															},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",     	"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",   	},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",     		"CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_IRON_SCRAPS",     			"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUNK_BREAK",     			"CT_PVP_BOT_Q_PROTO_00_JUNK_BREAK",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",     	"CT_PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_METAL_DUST_AURA",     		"CT_PVP_BOT_Q_PROTO_00_METAL_DUST_AURA",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",     		"CT_PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     				"CT_PVP_BOT_Q_PROTO_00_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",  "CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",     	"CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashComboZ",     			"CT_PVP_BOT_Q_PROTO_00_DashComboZ",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WALK",         				"CT_PVP_BOT_Q_PROTO_00_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DASH",         				"CT_PVP_BOT_Q_PROTO_00_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",         		"CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUMP_UP",         			"CT_PVP_BOT_Q_PROTO_00_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump",          		"CT_PVP_BOT_Q_PROTO_00_DashJump",      			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboX",     				"CT_PVP_BOT_Q_PROTO_00_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     				"CT_PVP_BOT_Q_PROTO_00_ComboZ2",       	     	},
		
	},

	
	-- 공격은 강렬하게!
	
	CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		MY_MP_MORE_THAN				= 100,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_JUNK_BREAK =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 900,
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2500,
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_METAL_DUST_AURA =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		MY_MP_MORE_THAN				= 40,
		RATE						= 75,
	},
	CT_PVP_BOT_Q_PROTO_00_THORNS_ILLUSION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_MP_MORE_THAN				= 50,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 20,
	},
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		RATE						= 15,
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 650,	
		RATE						= 60,
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 30,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 15,
	},
			
	CT_PVP_BOT_Q_PROTO_00_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 25,
	},
		
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	-- CT_PVP_BOT_Q_PROTO_00_ComboZ =
	CT_PVP_BOT_Q_PROTO_00_ComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 100,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_WALK =
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",													},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_Q_PROTO_00_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_Q_PROTO_00_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",															},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",     	"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",   },
		
		-- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",     		"CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_IRON_SCRAPS",     			"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUNK_BREAK",     			"CT_PVP_BOT_Q_PROTO_00_JUNK_BREAK",       	     	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",     	"CT_PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashComboZ",     			"CT_PVP_BOT_Q_PROTO_00_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",     		"CT_PVP_BOT_Q_PROTO_00_THORNS_ILLUSION",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",     	"CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     				"CT_PVP_BOT_Q_PROTO_00_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboX",     				"CT_PVP_BOT_Q_PROTO_00_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",         				"CT_PVP_BOT_Q_PROTO_00_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",  "CT_PVP_BOT_Q_PROTO_00_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",         		"CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_JUMP_UP",         			"CT_PVP_BOT_Q_PROTO_00_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DASH",         				"CT_PVP_BOT_Q_PROTO_00_DASH",       		    },
		
		
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
	
	-- 일반 공격
	CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		MY_MP_MORE_THAN				= 100,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_Q_PROTO_00_JUNK_BREAK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		MY_MP_MORE_THAN				= 299,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2500,
		MY_MP_MORE_THAN				= 299,
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		-- RATE						= 40,
		RATE						= 80,
	},
	
	CT_PVP_BOT_Q_PROTO_00_THORNS_ILLUSION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		MY_MP_MORE_THAN				= 50,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},
	
	CT_PVP_BOT_Q_PROTO_00_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 650,	
		RATE						= 50,
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 25,
	},
				
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 15,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 750,
		RATE						= 25,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 100,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DASH =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_FRONT_DASH_A2",	},

		
		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_Q_PROTO_00_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_Q_PROTO_00_DashJump",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",														},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",     	"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",   },
		
		-- 거리를 벌리지 못하도록 강제하는 스킬동작입니다.
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_A",           	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT",    		 	"CT_PVP_BOT_EPIK_INSANE_INTAKE_LEVEL_1_WAIT_B",           	},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashComboZ",     			"CT_PVP_BOT_Q_PROTO_00_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",          		"CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",          		"CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ",          		"CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ3",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump",          		"CT_PVP_BOT_Q_PROTO_00_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     			"CT_PVP_BOT_Q_PROTO_00_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump",          		"CT_PVP_BOT_Q_PROTO_00_DashJump2",      		},
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DASH_END",          		"CT_PVP_BOT_Q_PROTO_00_DASH_END",      		},
		
				
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
	
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		-- RATE						= 40,
		RATE						= 80,
	},
			
	CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 35,
	},
	CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 35,
	},
			
	CT_PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		RATE						= 35,
	},
	CT_PVP_BOT_Q_PROTO_00_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 650,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 80,
	},
}

-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_BACKWARD_DASH",	"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_FRONT_DASH_A2",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_Q_PROTO_00_BACKWARD_DASH = 
{

	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1,

	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_Q_PROTO_00_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY5",       	     	},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashJump",          		"CT_PVP_BOT_Q_PROTO_00_DashJump",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
				
	CT_PVP_BOT_Q_PROTO_00_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 5,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 699,
		DISTANCE_OVER_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 899,
		DISTANCE_OVER_TARGET_NEAR		= 700,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 999,
		DISTANCE_OVER_TARGET_NEAR		= 900,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
}

PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH_READY = 
{

	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET     = TRUE, 
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_Q_PROTO_00_DashJump",	"CF_PVP_BOT_CHECK_BACK_ESCAPE",									},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_WAIT",	"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_Q_PROTO_00_BACKWARD_DASH_FINISH = 
{

	ANIM_NAME			= "Walk",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET     = TRUE, 
	
	ALLOW_DIR_CHANGE			= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",     "CT_PVP_BOT_Q_PROTO_00_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",     "CT_PVP_BOT_Q_PROTO_00_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",     "CT_PVP_BOT_Q_PROTO_00_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",     "CT_PVP_BOT_Q_PROTO_00_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",     "CT_PVP_BOT_Q_PROTO_00_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DASH",     "CT_PVP_BOT_Q_PROTO_00_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,	
		RATE						= 80,
	},
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_Q_PROTO_00_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 70,
	},
	CT_PVP_BOT_Q_PROTO_00_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 80,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_Q_PROTO_00_DASH =
	{
		ANIM_EVENT_TIMER			= 0.4,
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
PVP_BOT_Q_PROTO_00_DASH_END =
{
	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",			},
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
PVP_BOT_Q_PROTO_00_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SPEED_X			= 0,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_IRON_SCRAPS",          		"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",         "CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpZ",          			"CT_PVP_BOT_Q_PROTO_00_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpX",          			"CT_PVP_BOT_Q_PROTO_00_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_A",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		DISTANCE_TO_TARGET_NEAR		= 450,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,
		RATE						= 30,
	},	
	CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.1,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 350,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		TARGET_BELOW_ME			 	= TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE, 
		RATE						= 30,
	},
}

--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	
	SPEED_X			= 0,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_IRON_SCRAPS",          	"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpX",          	"CT_PVP_BOT_Q_PROTO_00_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",          	"CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpZ",          	"CT_PVP_BOT_Q_PROTO_00_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpZ",          	"CT_PVP_BOT_Q_PROTO_00_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpX",          	"CT_PVP_BOT_Q_PROTO_00_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_A",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.133,
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		ANIM_EVENT_TIMER			= 0.133,
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX2 =
	{
		ANIM_EVENT_TIMER			= 0.233,
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.35,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 75,
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
}

PVP_BOT_Q_PROTO_00_JUMP_DOWN =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SPEED_X = 0,


	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
	},
}
PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SPEED_X = 0,


	IMMADIATE_PACKET_SEND		= TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_IRON_SCRAPS",          		"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",         "CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpZ",          			"CT_PVP_BOT_Q_PROTO_00_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpX",          			"CT_PVP_BOT_Q_PROTO_00_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_A",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		DISTANCE_TO_TARGET_NEAR		= 450,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,
		RATE						= 30,
	},	
	CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.333,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 350,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		TARGET_BELOW_ME			 	= TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE, 
		RATE						= 30,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_JUMP_UP_DIR_for_IRON_SCRAPS =
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y					= 45,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_IRON_SCRAPS",          	"CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS",      		},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
		
	},
	
	
	CT_PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_JUMP_UP_DIR =
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y					= 45,

	IMMADIATE_PACKET_SEND		= TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",         "CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpZ",          			"CT_PVP_BOT_Q_PROTO_00_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpX",          			"CT_PVP_BOT_Q_PROTO_00_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_A",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	
	CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.333,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 350,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		TARGET_BELOW_ME			 	= TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE, 
		RATE						= 30,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR =
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	IMMADIATE_PACKET_SEND		= TRUE,
	
	HEAD_IK = TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",         "CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpZ",          			"CT_PVP_BOT_Q_PROTO_00_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_JumpX",          			"CT_PVP_BOT_Q_PROTO_00_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_A",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
	},
	
	
	CT_PVP_BOT_Q_PROTO_00_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.333,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 350,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		TARGET_BELOW_ME			 	= TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE, 
		RATE						= 30,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_JUMP_LANDING =
{
	ANIM_NAME			= "JumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	HEAD_IK = TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
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

PVP_BOT_Q_PROTO_00_DashJump = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ADD_POS_Y		= 45,
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 850,
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJumpComboZ",	"CT_PVP_BOT_Q_PROTO_00_DashJumpComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_DashJumpComboZ =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
}
-- 유저처럼 잠깐 텀을 두고(키 입력 사이)소폭 낙하합니다.
PVP_BOT_Q_PROTO_00_FRONT_DASH_A = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	


	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_B",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_B",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_Q_PROTO_00_FRONT_DASH_B",          	"CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_B2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_B =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	CT_PVP_BOT_Q_PROTO_00_FRONT_DASH_B2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_Q_PROTO_00_FRONT_DASH_B = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 1,
		
	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_END = 100,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN3",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN2 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN3 =
	{
		STATE_TIME_OVER				= 0.8,
	},
}
-- 전방으로 대시하다가 대각위로 떠오르는 대시입니다.

PVP_BOT_Q_PROTO_00_FRONT_DASH_A2 = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 1,
		
	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_END = 100,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JumpX",	"CT_PVP_BOT_Q_PROTO_00_JumpX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJump_A2",	"CT_PVP_BOT_Q_PROTO_00_DashJump_A2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJump_A2",	"CT_PVP_BOT_Q_PROTO_00_DashJump_A2_2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJump_A2",	"CT_PVP_BOT_Q_PROTO_00_DashJump_A2_3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN3",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
		DISTANCE_TO_TARGET_NEAR		= 500,
	},
	CT_PVP_BOT_Q_PROTO_00_DashJump_A2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_DashJump_A2_2 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_DashJump_A2_3 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN3 =
	{
		STATE_TIME_OVER				= 0.8,
	},
}
PVP_BOT_Q_PROTO_00_DashJump_A2 = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ADD_POS_Y		= 45,
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 850,
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JumpX",	"CT_PVP_BOT_Q_PROTO_00_JumpX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	"CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN3",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_JumpX =
	{
		ANIM_EVENT_TIMER			= 0.2,
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN2 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_Q_PROTO_00_JUMP_DOWN3 =
	{
		STATE_TIME_OVER				= 0.5,
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

-- 뒤로 돌아봅니다.

PVP_BOT_Q_PROTO_00_FLIP_DIR = {

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_WAIT",	"CT_PVP_BOT_Q_PROTO_00_WAIT",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
-- hit break
PVP_BOT_Q_PROTO_00_HIT_BREAK = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR		=	TRUE,
	
	ANIM_NAME			= "ComboX4Front",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.26, 0.52 },

	DEFENCE						= { 0, 100, 70, }, 
	
	VIEW_TARGET					= TRUE,
	
	
    SOUND_PLAY0			= { 0.26, "Eve_Attack6.ogg" },
    SOUND_PLAY1			= { 0.26, "EveVoice_Shout11.ogg" },
 	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE			= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE			= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE			= REACT_TYPE["RT_DOWN"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= 1000,
		BACK_SPEED_Y			= 1000,
		
        		
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		TECH_POINT				= 20,
		
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
}


-- zzzz 콤보 입니다.
PVP_BOT_Q_PROTO_00_ComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.13, 0.2 },

	VIEW_TARGET					= TRUE,
		
    SOUND_PLAY0			= { 0.138, "Eve_Attack1.ogg" },
 	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_Z1", 0,
	},		
	DISABLE_ATTACK_BOX = 
	{
		"Creature1",
	},
		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE			= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE			= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE			= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= 600,
		
        		
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		TECH_POINT				= 20,
		
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZZ",	"CT_PVP_BOT_Q_PROTO_00_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY", 		"CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY",  	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.235,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.5,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_Q_PROTO_00_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.2, 0.3 },
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 1, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 1, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_Z2", 0,
	},		
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
    SOUND_PLAY0			= { 0.209, "Eve_Attack2.ogg" },

	DISABLE_ATTACK_BOX = 
	{
		"Creature2",
	},

		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= 600,
		
		
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 20,
		
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZZZ",	"CT_PVP_BOT_Q_PROTO_00_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.35,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_Q_PROTO_00_ComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },

    SOUND_PLAY0			= { 0.293, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.296, "Eve_Attack2.ogg" },
	
	ATTACK_TIME0		= { 0.3, 0.4 },
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_Z3", 0,
	},		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= 600,
		
		
		
		STOP_TIME_ATT			= 0.05,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		FORCE_DOWN			= 15,
		
		TECH_POINT				= 75,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER", 	"CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashComboZ", 	"CT_PVP_BOT_Q_PROTO_00_DashComboZ", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_METAL_DUST_AURA", 	"CT_PVP_BOT_Q_PROTO_00_METAL_DUST_AURA", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL", 	"CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZZZdownZ", 	"CT_PVP_BOT_Q_PROTO_00_ComboZZZdownZ", 	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		MY_MP_MORE_THAN				= 150,
		RATE						= 20,
	},
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 80,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 40,
		RATE						= 20,
	},
	CT_PVP_BOT_Q_PROTO_00_ComboZZZdownZ =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_Q_PROTO_00_METAL_DUST_AURA =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 40,
		RATE						= 20,
	},
	
	
}



PVP_BOT_Q_PROTO_00_ComboZZZdownZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4Down",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	
	IS_ATTACK_STATE		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
		
	SPEED_X				= 900,				-- fix!! test 앞으로 밀기 테스트
		
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EG_ZZZdownZ", 0.351,
	},		
	
    SOUND_PLAY0			= { 0.412, "Eve_Attack2.ogg" },
    SOUND_PLAY1			= { 0.120, "EveVoice_Shout12.ogg" },

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZ",	"CT_PVP_BOT_Q_PROTO_00_ComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZZZdownZZ", 	"CT_PVP_BOT_Q_PROTO_00_ComboZZZdownZZ", 	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.57,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 5,
	},
	CT_PVP_BOT_Q_PROTO_00_ComboZZZdownZZ =
	{
		ANIM_EVENT_TIMER			= 0.57,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}

PVP_BOT_Q_PROTO_00_ComboZZZdownZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ5Down",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	
	IS_ATTACK_STATE		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	TALK_BOX =
	{
		{ RATE = 1, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 1, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 1, MESSAGE = STR_ID_12493 },
	},

	SPEED_X				= 0,

    SOUND_PLAY0			= { 0.291, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.121, "EveVoice_Shout04.ogg" },

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EG_ZZZdownZZ", 0.001,
	},		
	
	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_JUMP_UP_DIR_for_IRON_SCRAPS",	"CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR_for_IRON_SCRAPS",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZ",	"CT_PVP_BOT_Q_PROTO_00_ComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_JUMP_UP_DIR_for_IRON_SCRAPS =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.85,
		RATE						= 30,
	},
}


PVP_BOT_Q_PROTO_00_ComboZZZX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 1000,
	SPEED_Y				= 0,


	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	
	--SLASH_TRACE0		= { 0.01, 0.7, 0, 1 },
	--SLASH_TRACE1		= { 0.01, 0.7, 1, 1 },
	ATTACK_TIME0		= { 0.3, 0.36 },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
		"Rfoot",
	},
	
	DISABLE_ATTACK_BOX = 
	{
		"Creature1",
		"Creature2",
	},
	
	
    SOUND_PLAY0			= { 0.287, "Eve_CheekAttack.ogg" },
    SOUND_PLAY1			= { 0.288, "EveVoice_Shout10.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_SLAP"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			MAGIC		= 1,
		},
		
		
        -- CRITICAL_RATE			= 0.75,
		
		
		BACK_SPEED_X			= -1000,
		BACK_SPEED_Y			= 0,
				
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		CAN_REVENGE				= TRUE,
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.1,	
		
		TECH_POINT				= 50,
		
		FLIP_DIR				= TRUE,
	},
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashComboZ",	"CT_PVP_BOT_Q_PROTO_00_DashComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",	"CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		DISTANCE_TO_TARGET_NEAR		= 450,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	
}

-- xxx 콤보입니다.
PVP_BOT_Q_PROTO_00_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX1",
	ANIM_SPEED			= 1.2,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	IS_ATTACK_STATE		= TRUE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET					= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboXX",	"CT_PVP_BOT_Q_PROTO_00_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	
	CT_PVP_BOT_Q_PROTO_00_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.4,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_Q_PROTO_00_ComboXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	--LAND_CONNECT		= FALSE,
	LAND_CONNECT		= TRUE,
	
	CHANGE_TIME			= 0.3,
	SKIP_TIME			= 0.6,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboXXX",	"CT_PVP_BOT_Q_PROTO_00_ComboXXX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashComboZ",	"CT_PVP_BOT_Q_PROTO_00_DashComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.55,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		ANIM_EVENT_TIMER			= 0.8,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_Q_PROTO_00_ComboXXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	ANIM_NAME			= "ComboX3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	
	
    SOUND_PLAY0			= { 0.251, "Eve_FireShot2_Ready.ogg" },
    SOUND_PLAY1			= { 0.616, "EveVoice_Shout11.ogg" },	
	
	IS_ATTACK_STATE		= TRUE,
		
	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	
}

	
-- 점프z 공격입니다.
PVP_BOT_Q_PROTO_00_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	SPEED_Y				= 400.0,
	
	VIEW_TARGET					= TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_JUMP_ATTACK_Z", 0,
	},		
	SLASH_TRACE0		= { 0.01, 0.47, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.47, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	ATTACK_TIME0		= { 0.19, 0.4, },
	
    SOUND_PLAY0			= { 0.183, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.300, "Eve_Attack2.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE			= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE			= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE			= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		FORCE_DOWN			= 15,
		
		TECH_POINT				= 20,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
	},
}

-- 점프x 공격입니다.
PVP_BOT_Q_PROTO_00_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_JUMP_ATTACK_X", 0,
	},		
	SPEED_Y				= 500.0,

	SLASH_TRACE0		= { 0.01, 1.0, 0, 2 },
	SLASH_TRACE1		= { 0.01, 1.0, 1, 2 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	

	ATTACK_TIME0		= { 0.06, 0.27, },
	
    SOUND_PLAY0			= { 0.093, "Eve_Attack5.ogg" },
    SOUND_PLAY1			= { 0.200, "Eve_Attack5.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE			= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE			= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE			= REACT_TYPE["RT_DOWN"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,
					
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.1,
		
		RATE_MODIFIER			= 0.5,
		
		TECH_POINT				= 80,
	},		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
	},
}


-- 대시Z 공격입니다.
PVP_BOT_Q_PROTO_00_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_EG_DASH_COMBO_Z", 0.23,
	},		
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	--SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	IS_ATTACK_STATE		= TRUE,
	
	SOUND_PLAY0			= { 0.219, "EveVoice_Shout12.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashComboZZ",	"CT_PVP_BOT_Q_PROTO_00_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.35,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
		
}

PVP_BOT_Q_PROTO_00_DashComboZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "EG_DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	--SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	IS_ATTACK_STATE		= TRUE,
	
	SOUND_PLAY0			= { 0.17, "EveVoice_Shout03.ogg" },
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_EG_DASH_COMBO_ZZ", 0.001,
	},		
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashComboZZZ",	"CT_PVP_BOT_Q_PROTO_00_DashComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.41,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
		
}
PVP_BOT_Q_PROTO_00_DashComboZZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "EG_DashComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	--SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	IS_ATTACK_STATE		= TRUE,
	
	SOUND_PLAY0			= { 0.24, "EveVoice_Shout04.ogg" },
	SOUND_PLAY1			= { 0.44, "Eve_BladeShot.ogg" },
	SOUND_PLAY2			= { 0.65, "Eve_BladeShot.ogg" },
	SOUND_PLAY3			= { 0.83, "Eve_BladeShot.ogg" },
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_EG_DASH_COMBO_ZZZ", 0.001,
	},		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
}

-- 대시점프 z 입니다.

-- 지상에서 바로 사용합니다.
PVP_BOT_Q_PROTO_00_DashJump_for_DashJumpZZZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.1, 0.3, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 1200.0,

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_DASH_JUMP_COMBO_Z1", 0,
	},		
    SOUND_PLAY0			= { 0.110, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.152, "Eve_Attack2.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 400,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 50,
		
		FORCE_DOWN			= 18,
	},	 

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJumpComboZZ",	"CT_PVP_BOT_Q_PROTO_00_DashJumpComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJumpComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
PVP_BOT_Q_PROTO_00_DashJumpComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.1, 0.3, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 500.0,

    SOUND_PLAY0			= { 0.110, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.152, "Eve_Attack2.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_DASH_JUMP_COMBO_Z1", 0,
	},		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 400,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 50,
		
		FORCE_DOWN			= 18,
	},	 

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJumpComboZZ",	"CT_PVP_BOT_Q_PROTO_00_DashJumpComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJumpComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
}

PVP_BOT_Q_PROTO_00_DashJumpComboZZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.133, 0.266, },
	
	SPEED_X				= 200.0,
	SPEED_Y				= 700.0,

	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

    SOUND_PLAY0			= { 0.149, "Eve_Attack6.ogg" },

	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_DASH_JUMP_COMBO_Z2", 0,
	},		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 400,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 50,
	},	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_DashJumpComboZZZ",	"CT_PVP_BOT_Q_PROTO_00_DashJumpComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_Q_PROTO_00_DashJumpComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_Q_PROTO_00_DashJumpComboZZZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	SLASH_TRACE2		= { 0, 100, 2, },
	SLASH_TRACE3		= { 0, 100, 3, },
	
	ATTACK_TIME0		= { 0.2, 0.333, },
	
	SPEED_X				= 200.0,
	SPEED_Y				= 600.0,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_ENS_DASH_JUMP_COMBO_Z3", 0,
	},		

    SOUND_PLAY0			= { 0.282, "Eve_Attack7.ogg" },
    SOUND_PLAY1			= { 0.210, "EveVoice_Shout14.ogg" },

	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        -- CRITICAL_RATE			= 0.75,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= -1000,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 200,
	},	
	
	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_JUMP_LANDING",	},
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


-- 노충전 풀차지 메가일렉트론볼, 메가볼
PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET					= TRUE,
	
	ANIM_NAME			= "SI_A_EN_MEGA_ELECTRONBALL",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	TRANSITION				= FALSE,
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,

    SOUND_PLAY0			= { 0.02, "Eve_MEB_Mega_Electronball.ogg" },

	PASSIVE_SPEED_X		= 0,
	PASSIVE_SPEED_Y		= 0,

	CHANGE_TIME			= 0.66,
	SKIP_TIME			= 0.66,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_MEGA_ELECTRON_BALL", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
}
-- 메탈 더스트 오라
PVP_BOT_Q_PROTO_00_METAL_DUST_AURA =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET					= TRUE,
	
	ANIM_NAME			= "SI_A_EEG_METAL_DUST_AURA",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
		
	STATE_STRING		= STR_ID_4368,

	SOUND_PLAY0			= { 0.012, "Eve_Metal_Dust_Aura.ogg" },

	-- EFFECT_SET_LIST = 
	-- {
		-- "EffectSet_PVP_BOT_METAL_DUST_AURA", 0,
	-- },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
	
}
-- 쏜즈 일루전
PVP_BOT_Q_PROTO_00_THORNS_ILLUSION =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED			= 0.8,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET					= TRUE,
	
	DEFENCE						= { 0, 100, 90, }, 
	
	SUPER_ARMOR			= TRUE,
	
	SOUND_PLAY0			= { 0.012, "EveVoice_Shout01.ogg" },
	
	ANIM_NAME			= "NS_ATOMIC_SHIELD",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	TRANSITION				= FALSE,
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,

	PASSIVE_SPEED_X		= 0,
	PASSIVE_SPEED_Y		= 0,

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_THORNS_ILLUSION", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
	
}
-- 제네레이트 블랙홀
PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED	=	1.0,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET					= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	ANIM_NAME				= "SP3a_GenerateBlackHole",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,
	
	INVINCIBLE				= { 0, 3.5, },

    SOUND_PLAY0			= { 0.001, "Energy.ogg" },
    SOUND_PLAY1			= { 0.001, "EveVoice_SP3_GenerateBlackHole.ogg" },
    SOUND_PLAY2			= { 0.256, "Eve_SP3_GenerateBlackHole_Spin.ogg" },
    SOUND_PLAY3			= { 0.270, "Eve_SP3_GenerateBlackHole_Ready.ogg" },
    SOUND_PLAY4			= { 2.700, "Eve_SP3_GenerateBlackHole_Explosion.ogg" },
    SOUND_PLAY5			= { 3.158, "Eve_SP3_GenerateBlackHole_End.ogg" },

	
	--STOP_ALL_UNIT0			= { 0.01, 0.6, 0.6 },		-- note!! 멈추면 애들이 안 빨려듬
	STATE_STRING			= STR_ID_4299,

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_GENERATE_BLACKHOLE", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
	
}
-- 정크 브레이크
PVP_BOT_Q_PROTO_00_JUNK_BREAK =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED	=	1.0,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	VIEW_TARGET					= TRUE,
	
	ANIM_NAME			= "SI_SA_EEG_JUNK_BREAK",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	
	INVINCIBLE			= { 0, 4.66, },		-- fix!!
	STOP_ALL_UNIT0		= { 0.02, 1.9, 0.5 },
	--STOP_MY_UNIT0		= { 0.08, 0.5, },
	--STOP_OTHER_UNIT0	= { 0.01, 1.0, },

	SOUND_PLAY0			= { 0.001, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.001, "EveVoice_JunkBreak.ogg" },
	SOUND_PLAY2			= { 0.611, "Eve_JunkBreak.ogg" },
		
	
	STATE_STRING		= STR_ID_4509,	
	

	EFFECT_SET_LIST = 
	{
		"EffectSet_EVE_JUNK_BREAK_for_BOT", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
	
}
-- 아이언 스크랩스
-- PVP_BOT_Q_PROTO_00_IRON_SCRAPS =
-- {
	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- ANIM_SPEED	=	1.0,
		
	-- PASSIVE_SPEED_Y = 10,
	
	-- SLASH_TRACE0		= { 0, 100, 2, },
	-- SLASH_TRACE1		= { 0, 100, 3, },
	
	-- VIEW_TARGET					= TRUE,
	
	-- ANIM_NAME			= "SI_SA_EEG_IRONSCRAPS",
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION			= FALSE,
	-- LAND_CONNECT		= FALSE,
	
	-- INVINCIBLE			= { 0, 1.8, },		-- fix!!
	-- AFTER_IMAGE			= { 0.1, 100, },
	
	-- STATE_STRING		= STR_ID_4309,
	-- STOP_ALL_UNIT0		= { 0.04, 1.6, 0.6 },
	
	-- SOUND_PLAY0			= { 0.247, "Eve_IronScraps.ogg" },
	-- SOUND_PLAY1			= { 0.01, "EveVoice_IronScraps.ogg" },
	-- SOUND_PLAY2			= { 0.001, "Energy.ogg" },

	-- DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	-- EFFECT_SET_LIST = 
	-- {
		-- "EffectSet_EVE_EG_IronScraps", 0,
	-- },	
	
	-- EVENT_PROCESS = 
	-- {
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	-- },
	
-- }
-- 아토믹 블래스터
PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_SPEED	=	1.0,
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	VIEW_TARGET					= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 2, MESSAGE = STR_ID_12489 },
		{ RATE = 2, MESSAGE = STR_ID_12490 },
		{ RATE = 2, MESSAGE = STR_ID_12491 },
		{ RATE = 2, MESSAGE = STR_ID_12492 },
		{ RATE = 2, MESSAGE = STR_ID_12493 },
	},

	ANIM_NAME			= "SI_SA_ENS_ATOMIC_BLASTER",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SPEED_TIME0			= { -500, 0, 0.45, 2 },
	
	INVINCIBLE			= { 0, 1.733, },
	STOP_ALL_UNIT0		= { 0.03, 1.5, 0.5 },
	
	
	
	STATE_STRING		= STR_ID_4879,

	SOUND_PLAY0			= { 0.208, "Eve_NS_Atomic_Blaster.ogg" },
	SOUND_PLAY1			= { 0.001, "Energy.ogg" },
	SOUND_PLAY2			= { 0.01, "EveVoice_AtomicBlaster.ogg" },

	
	IS_ATTACK_STATE		= TRUE,
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_Eve_ATOMIC_BLASTER", 0.15,
	},	
	
	EVENT_PROCESS = 
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_ComboZ",	"CT_PVP_BOT_Q_PROTO_00_ComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
	
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
	{
		ANIM_EVENT_TIMER			= 1.68,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 70,
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

PVP_BOT_Q_PROTO_00_Combo_for_Upper_Attack =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",														},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_ComboZ",    		 	"CT_PVP_BOT_Q_PROTO_00_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DashComboZ",    		 	"CT_PVP_BOT_Q_PROTO_00_DashComboZ",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
		  		
	},	
	-- 잡자!
	
	CT_PVP_BOT_Q_PROTO_00_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_Q_PROTO_00_ComboZ =
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



PVP_BOT_Q_PROTO_00_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 3, MESSAGE = STR_ID_12494 },
		{ RATE = 3, MESSAGE = STR_ID_12495 },
		{ RATE = 3, MESSAGE = STR_ID_12496 },
	},

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_HIT_BREAK",	"CT_PVP_BOT_Q_PROTO_00_HIT_BREAK",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
	CT_PVP_BOT_Q_PROTO_00_HIT_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.33,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 2,
	},	
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 3, MESSAGE = STR_ID_12494 },
		{ RATE = 3, MESSAGE = STR_ID_12495 },
		{ RATE = 3, MESSAGE = STR_ID_12496 },
	},

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,



	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_HIT_BREAK",	"CT_PVP_BOT_Q_PROTO_00_HIT_BREAK",	},
		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	CT_PVP_BOT_Q_PROTO_00_HIT_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.33,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 3,
	},	
	
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	

	TALK_BOX =
	{
		{ RATE = 3, MESSAGE = STR_ID_12494 },
		{ RATE = 3, MESSAGE = STR_ID_12495 },
		{ RATE = 3, MESSAGE = STR_ID_12496 },
	},

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "EveVoice_DamageScream03.ogg" , 20 },


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_HIT_BREAK",	"CT_PVP_BOT_Q_PROTO_00_HIT_BREAK",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
	CT_PVP_BOT_Q_PROTO_00_HIT_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.33,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 4,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 3, MESSAGE = STR_ID_12494 },
		{ RATE = 3, MESSAGE = STR_ID_12495 },
		{ RATE = 3, MESSAGE = STR_ID_12496 },
	},

	SOUND_PLAY0			= { 0.07, "EveVoice_DamageScream03.ogg" , 20 },


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_Q_PROTO_00_HIT_BREAK",	"CT_PVP_BOT_Q_PROTO_00_HIT_BREAK",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_WAIT",		},
	},
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
	
	CT_PVP_BOT_Q_PROTO_00_HIT_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.33,
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 5,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	INVINCIBLE			= { 0, 100, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.19, "Down.ogg" },
	SOUND_PLAY1			= { 0.19, "EveVoice_DamageScream01.ogg" },
		
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SOUND_PLAY0			= { 0.32, "Down.ogg" },
 	SOUND_PLAY1			= { 0.19, "EveVoice_DamageScream01.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_Q_PROTO_00_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING",	},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK",	},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	SOUND_PLAY0		= { 0.109, "Down.ogg" },
	SOUND_PLAY1		= { 0.498, "Down.ogg" },	
	SOUND_PLAY2		= { 0.1, "EveVoice_DamageScream03.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_STAND_UP_FRONT",		},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_STAND_UP_FRONT =
{
	ANIM_NAME					= "StandUpRollingFrontBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	INVINCIBLE			= { 0, 100, },

	ALLOW_DIR_CHANGE			= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_STANDUP_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_Q_PROTO_00_STAND_UP_BACK =
{
	ANIM_NAME					= "StandUpRollingBackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	ALLOW_DIR_CHANGE			= TRUE,
	
    --SOUND_PLAY0			= { 0.283, "PVP_BOT_Q_PROTO_00_StandUp.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_Q_PROTO_00_JUMP_DOWN_ACT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_Q_PROTO_00_STANDUP_WAIT",      },
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_Q_PROTO_00_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,

	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
		
	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12499 },
		{ RATE = 33, MESSAGE = STR_ID_12500 },
	},

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "EveVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_Q_PROTO_00_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12499 },
		{ RATE = 33, MESSAGE = STR_ID_12500 },
	},

	SLASH_TRACE0		= { 0, 100, 2, },
	SLASH_TRACE1		= { 0, 100, 3, },
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "EveVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_Q_PROTO_00_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_Q_PROTO_00_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos
end

function PVP_BOT_Q_PROTO_00_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	  
	pX2Game:SetWorldColor_LUA( D3DXCOLOR( 1.0, 0.1, 0.1, 1 ) )

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

	if pNPCUnit:AnimEventTimer_LUA( 1.542 ) then
	
		pNPCUnit:ChangeHyperMode_LUA()
		pNPCUnit:PlaySound_LUA( "Change.ogg" )
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.542 ) then
	
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





function PVP_BOT_Q_PROTO_00_ComboX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.33 ) then	
		
		if pNPCUnit:GetNowMP() < 15.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_EVE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_EVE_ELECTRONBALL", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 15)
		end
	end
end	

function PVP_BOT_Q_PROTO_00_ComboXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.43 ) then	
		
		if pNPCUnit:GetNowMP() < 15.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_EVE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_EVE_ELECTRONBALL", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 15)
		end
	end
end	

function PVP_BOT_Q_PROTO_00_ComboXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.47 ) then	
		
		if pNPCUnit:GetNowMP() < 10.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_EVE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_EVE_TRIANGLE_BY_QUEENS", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 10)
		end
	end
end	

function PVP_BOT_Q_PROTO_00_THORNS_ILLUSION_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end


function PVP_BOT_Q_PROTO_00_MEGA_ELECTRONBALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end

function PVP_BOT_Q_PROTO_00_METAL_DUST_AURA_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_METAL_DUST_AURA", pNPCUnit )	
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end
function PVP_BOT_Q_PROTO_00_GENERATE_BLACKHOLE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(1.0,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 300)
	end	
end	

function PVP_BOT_Q_PROTO_00_JUNK_BREAK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(1.0,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 300)
	end	
end	

function PVP_BOT_Q_PROTO_00_IRON_SCRAPS_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(1.0,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end	
end	

function PVP_BOT_Q_PROTO_00_ATOMIC_BLASTER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(1.0,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
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