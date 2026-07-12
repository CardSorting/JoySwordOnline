-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ / 2011/5/24 / 푸른 숲의 라임/
	 
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
		"Smoke.dds",
		"GroundShockWave02.dds",
		"AeroTornado04.dds",
		"Whitecircle02.dds",
		"Condense_Light01.dds",
		"GroundShockWave.dds",
		"Lire_Kick_Impact01.dds",
		"Ground_Wind_Effect02.tga",
		"SlideKick_Impact01.tga",
		"Lire_Leaf01.tga",
		"Moon_MagicSquare01.dds",
	},
	READY_SOUND =
	{
		"FootAttack.ogg",
		"FootAttack2.ogg",
		"Lena_WS_ComboZ3.ogg",
		"Lena_WS_ComboZ4.ogg",
		"Lena_WS_ComboZ5.ogg",
		"LenaVoice_Shout01.ogg",
		"LenaVoice_Shout02.ogg",
		"LenaVoice_Shout05.ogg",
		"Lena_WS_DashComboX2.ogg",
		"sliding.ogg",
		"Lena_SI_SA_WS_Slide_Kick.ogg",
		"LenaVoce_SlideDoubleKick.ogg",
		"Lena_SI_SA_WS_Slide_Kick2.ogg",
		"Lena_SharpFall.ogg",
		"LenaVoice_SharpFall.ogg",
		"Lena_SharpFallLanding.ogg",
		"LenaVoice_AireLinna.ogg",
		"Lena_MackJump_Shot.ogg",
		"Lena_WS_Nature_Force1.ogg",
		"Lena_WS_Nature_Force2.ogg",
		"Lena_ReflexMagic.ogg",
		"LenaVoice_DamageScream01.ogg",
		"LenaVoice_DamageScream02.ogg",
		"LenaVoice_DamageScream03.ogg",
		"LenaVoice_DamageScream04.ogg",
		"LenaVoice_DieScream1.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
		"Lire_FeatherA.Y",
		"Lire_Leaf01.Y",
	},
	READY_XSKIN_MESH = 
	{	
		"Lena_SI_A_LE_BACKJUMP_SHOT01.X",
		"Lena_SI_A_LE_Reflex_Magic_Mesh01.X",
		"Lire_SI_SA_SharpFall_Mesh01.X",
		"Lire_SI_A_Low_Kick_Mesh02.X",
		"Slide_Ground_Wind01.X",
		"Wind_Liner02.X",
		"Lire_SI_SA_Slide_Kick_Mesh03.X",
		"Lire_SI_SA_Slide_Kick_Mesh02.X",
		"Lire_SI_A_Lws_Nature_Force_Mesh01.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_LIME.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 700,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2200,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 300,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = FALSE,

	HYPER_MODE_COUNT	= 1,
	MAX_HYPER_MODE_TIME	= 60,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Red.TGA",

    --MIND_FLAG_HEIGHT		= 230,

	HYPER_BOOST_RIGHT	= "HyperBoostRightGreen",
	HYPER_BOOST_LEFT	= "HyperBoostLeftGreen",
	HYPER_MODE_COLOR_R = 0.3,
	HYPER_MODE_COLOR_G = 1.0,
	HYPER_MODE_COLOR_B = 0.3,
	HYPER_MODE_COLOR_A = 1.0,
	
	AFTER_IMAGE_LAYER = X2_LAYER["XL_SKY_WORLD_OBJECT_2"],
	
	AFTER_IMAGE_COLOR_R = 0.5, 
	AFTER_IMAGE_COLOR_G = 0.5, 
	AFTER_IMAGE_COLOR_B = 0.5,
	AFTER_IMAGE_COLOR_A = 0.5,
	
	AFTER_IMAGE_DEST_ALPHA_BLEND = TRUE,
	
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DIE_FLY			= FALSE,
		
	FORCE_DOWN_GAGE_MAX = 100,
	-- NOT_EXTRA_DAMAGE	= TRUE,
	
	DEFENCE_RATE	= 30,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Lire_Elite_Weapon_180016_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy2_Lhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	
	-- pvp_bot : y 악세서리 추가
	ATTACH_MESH0 =
	{
		ATTACH_MESH_NAME = "MESH_PVP_HERO_LIME_AC.Y",
		ATTACH_BONE_NAME = "Bip01_Spine1",
		-- -- ATTACH_SCALE  = 2.0,
		-- ATTACH_OFFSET_X = -10.0,    
		-- ATTACH_ROTATE_Z = -50.0,    
	},
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 라임은 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_LIME_START",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_START_FRAME_MOVE"			},
	
	-- 승리모션입니다. 라임은 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_LIME_WIN",							},
    { STATE_NAME = "PVP_BOT_LIME_WIN2",							},
	
	-- 승리모션입니다. 라임은 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_LIME_LOSE",							},
    { STATE_NAME = "PVP_BOT_LIME_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_LIME_WAIT",							},
	-- 기상 시 무적을 주는 wait 상태입니다.
	{ STATE_NAME = "PVP_BOT_LIME_STANDUP_WAIT",							},

	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_LIME_WALK",							},
    { STATE_NAME = "PVP_BOT_LIME_DASH",							},
    --{ STATE_NAME = "PVP_BOT_LIME_FLIP_DIR",						},
    -- { STATE_NAME = "PVP_BOT_LIME_BACKWARD_DASH_READY",										},
    -- { STATE_NAME = "PVP_BOT_LIME_BACKWARD_DASH",					},
    -- { STATE_NAME = "PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",	},
    -- { STATE_NAME = "PVP_BOT_LIME_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_LIME_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지, 2단 점프) 입니다.
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_LIME_DOUBLE_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_LIME_DASH_DOUBLE_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_LIME_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_DOWN_ACT",					LUA_STATE_END_FUNC = "PVP_BOT_LIME_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_DOWN_NOACT",				LUA_STATE_END_FUNC = "PVP_BOT_LIME_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",					},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_LIME_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_LIME_JUMP_LANDING",					},
	
	-- zzzz 콤보
	{ STATE_NAME = "PVP_BOT_LIME_ComboZ",										},
	--{ STATE_NAME = "PVP_BOT_LIME_ComboZ_for_Nature_Force",										},
	{ STATE_NAME = "PVP_BOT_LIME_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_LIME_ComboZZfrontZ",						},
	{ STATE_NAME = "PVP_BOT_LIME_ComboZZfrontZZ",			},
	{ STATE_NAME = "PVP_BOT_LIME_ComboZZfrontZZZ",			},
	{ STATE_NAME = "PVP_BOT_LIME_ComboZZfrontZZZ_Landing",			},
	
	-- xxxx 콤보 (라임은 적이 멀리 있을 때만 xx 짤짤이를 합니다)
	{ STATE_NAME = "PVP_BOT_LIME_ComboX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_ComboX_FRAME_MOVE",							},
	{ STATE_NAME = "PVP_BOT_LIME_ComboXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_ComboXX_FRAME_MOVE"			},
	
	-- 대시점프 Z
	{ STATE_NAME = "PVP_BOT_LIME_DashJump",						},
	{ STATE_NAME = "PVP_BOT_LIME_DashJump_Down",						},
	{ STATE_NAME = "PVP_BOT_LIME_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_LIME_DashJumpComboZ_Direct",								},
	{ STATE_NAME = "PVP_BOT_LIME_DashJumpComboZ",								},
	{ STATE_NAME = "PVP_BOT_LIME_DashJumpComboZZ",								},
	{ STATE_NAME = "PVP_BOT_LIME_DashJumpComboZZZ",								},

	-- 대시 xz 공격(막타 중간에 끊어서 쓰러트리지 않고 콤보를 이어갑니다.
	{ STATE_NAME = "PVP_BOT_LIME_DashX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DashX_FRAME_MOVE",					},
	{ STATE_NAME = "PVP_BOT_LIME_DashXZ",						},
	{ STATE_NAME = "PVP_BOT_LIME_BACKWARD_DashX",								},
	{ STATE_NAME = "PVP_BOT_LIME_BACKWARD_DashX_02",								},
	{ STATE_NAME = "PVP_BOT_LIME_BACKWARD_DashComboZ",								},
	{ STATE_NAME = "PVP_BOT_LIME_BACKWARD_DashComboZ_02",								},
	
	-- 대시 zzz 콤보
	{ STATE_NAME = "PVP_BOT_LIME_BACK_DashComboZ",										},
	{ STATE_NAME = "PVP_BOT_LIME_DashComboZ",										},
	{ STATE_NAME = "PVP_BOT_LIME_DashComboZZ",					},
	{ STATE_NAME = "PVP_BOT_LIME_DashComboZZZ",					},
	
	-- 점프 x 공격
	{ STATE_NAME = "PVP_BOT_LIME_JumpX",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_JumpX_FRAME_MOVE",						},
	-- 상대가 점프중이거나 높은 곳에 위치하고 있을 때, 점프 x로 견제합니다.
	--{ STATE_NAME = "PVP_BOT_LIME_JumpX_for_Check",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_JumpX_FRAME_MOVE",						},
	
	-- xx 짤짤이를 기본으로 하며 스페셜 액티브 스킬을 사용할엠이 부족할 것으로 예상됩니다.
	-- 슬라이드 더블 킥!
	{ STATE_NAME = "PVP_BOT_LIME_Slide_Double_Kick_Start",					STATE_COOL_TIME = 5,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Slide_Double_Kick_S_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_LIME_Slide_Double_Kick_Pass",					},
	{ STATE_NAME = "PVP_BOT_LIME_Slide_Double_Kick_Passing",					},
	{ STATE_NAME = "PVP_BOT_LIME_Slide_Double_Kick_Attack",					},
	{ STATE_NAME = "PVP_BOT_LIME_Slide_Double_Kick_Fail",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Slide_Double_Kick_F_FRAME_MOVE"	 },
	
	-- 샤프 폴!
	{ STATE_NAME = "PVP_BOT_LIME_Sharp_Fall",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Sharp_Fall_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_LIME_Sharp_Fall_Landing",				 },
	
	-- 아이레린나! : 아이레린나 피격 이펙트 구현 취소되었습니다. 일리피아 이펙트로 시도해보기로 합니다.
	{ STATE_NAME = "PVP_BOT_LIME_Airelinna",					STATE_COOL_TIME = 30,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Airelinna_FRAME_MOVE"	 },
	
	-- 리플렉트 킥을 시전합니다
	{ STATE_NAME = "PVP_BOT_LIME_Reflect_Kick_READY",					STATE_COOL_TIME = 5,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Reflect_Kick_FRAME_MOVE"	 },
	{ STATE_NAME = "PVP_BOT_LIME_Reflect_Kick",					 },
	
	-- 로우킥을 시전합니다 : 로우킥 구현 취소되었습니다. EDT가 걸리지 않는공격으로 변경됩니다.
	{ STATE_NAME = "PVP_BOT_LIME_Low_Kick",					STATE_COOL_TIME = 12,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Low_Kick_FRAME_MOVE"	 },
	
	-- 네이처 포스를 시전합니다
	{ STATE_NAME = "PVP_BOT_LIME_Nature_Force",					STATE_COOL_TIME = 12,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Nature_Force_FRAME_MOVE"	 },
	
	-- 풀링 애로우를 시전합니다
	{ STATE_NAME = "PVP_BOT_LIME_Pulling_Arrow",					STATE_COOL_TIME = 7,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Pulling_Arrow_FRAME_MOVE"	 },
	
	-- 백덤블링샷을 시전합니다
	{ STATE_NAME = "PVP_BOT_LIME_Back_Tumbling_Shot",					STATE_COOL_TIME = 5,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_Back_Tumbling_Shot_FRAME_MOVE"	 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_LIME_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_BOOST_POWER_FRAME_MOVE"	},
	
	
	-- 띄우는 공격을 행하였을 때 기다렸다가 발차기나 여타 스킬로 이어갈 수 있도록 해주는 콤보 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_LIME_Combo_for_Upper_Attack",										},
	-- 대시z로 띄웠을 때 화살 한발로 잡고 다시 때리기 시작합니다.
	{ STATE_NAME = "PVP_BOT_LIME_Combo_for_Upper_Attack_JumpX_JUMP",										},
	
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_LIME_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_LIME_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_LIME_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_LIME_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_LIME_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_LIME_DAMAGE_REVENGE",				},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_LIME_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_LIME_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_LIME_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_LIME_DYING_LAND_STATE_START",			},

	{ STATE_NAME = "PVP_BOT_LIME_DOUBLE_JumpAttackX", },

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_LIME_START",
	WAIT_STATE					= "PVP_BOT_LIME_WAIT",
	WIN_STATE					= "PVP_BOT_LIME_WIN",
	LOSE_STATE					= "PVP_BOT_LIME_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_LIME_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_LIME_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_LIME_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_LIME_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_LIME_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_LIME_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_LIME_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_LIME_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_LIME_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_LIME_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_LIME_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_LIME_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_LIME_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"PVP_BOT_LIME_DAMAGE_AIR_DOWN","PVP_BOT_LIME_DAMAGE_AIR_FALL","PVP_BOT_LIME_STAND_UP_FRONT","PVP_BOT_LIME_STAND_UP_BACK",
	"PVP_BOT_LIME_JUMP_DOWN_NOACT","PVP_BOT_LIME_JUMP_DOWN","PVP_BOT_LIME_JUMP_LANDING",	},	
	WAIT_STATES = { "PVP_BOT_LIME_STANDUP_WAIT", },
	
	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_LIME_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_LIME_DYING_BACK",
	DYING_SKY					= "PVP_BOT_LIME_DYING_FRONT",

	REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
-- 기본 AI 설정입니다.
INIT_AI =
{
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
	
		DEST_GAP			= 700,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 300,
		
		DIR_CHANGE_INTERVAL = 0.2,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   --  70,
		FAR_WALK_RATE		= 0,   -- 30,
		
		

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 40, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 100,

		LINE_END_RANGE		= 100,	-- cm
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
PVP_BOT_LIME_WIN =
{
	ANIM_SPEED					= 1,
	
	ANIM_NAME					= "LWS_Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12434 },
		{ RATE = 30, MESSAGE = STR_ID_12435 },
		{ RATE = 30, MESSAGE = STR_ID_12436 },
	},
	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_LIME_WIN2 =
{
	ANIM_SPEED					= 1,
	
	ANIM_NAME					= "LWS_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12434 },
		{ RATE = 30, MESSAGE = STR_ID_12435 },
		{ RATE = 30, MESSAGE = STR_ID_12436 },
	},
	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_LIME_LOSE =
{
	ANIM_SPEED					= 1,
	
	ANIM_NAME					= "LWS_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
		

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12437 },
		{ RATE = 30, MESSAGE = STR_ID_12438 },
		{ RATE = 30, MESSAGE = STR_ID_12439 },
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
PVP_BOT_LIME_LOSE2 =
{
	ANIM_SPEED					= 1,
	
	ANIM_NAME					= "LWS_Lose2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12437 },
		{ RATE = 30, MESSAGE = STR_ID_12438 },
		{ RATE = 30, MESSAGE = STR_ID_12439 },
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
PVP_BOT_LIME_START =
{
	ANIM_SPEED					= 1,
	
	ANIM_NAME					= "LWS_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
		
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_23990 },
		{ RATE = 33, MESSAGE = STR_ID_23991 },
		{ RATE = 34, MESSAGE = STR_ID_23992 },
	},
	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_WAIT",		"CT_PVP_BOT_LIME_WAIT"	},
	},
	CT_PVP_BOT_LIME_WAIT =
	{
		STATE_TIME_OVER	= 4.0,
	},
}
-- 라임 시작 시 엠 50을 채워줍니다.
function PVP_BOT_LIME_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp +50)
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_FRIENDSHIP_NATURE", pNPCUnit )
	end		     
	  
end	
--------------------------------------------------------------------------
PVP_BOT_LIME_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",														},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_LIME_BOOST_POWER",	"CF_PVP_BOT_LIME_BOOST_POWER",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_LIME_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_LIME_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_LIME_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_LIME_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_LIME_JUMP_DOWN_DIR",															},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Airelinna",   		  		"CT_PVP_BOT_LIME_Airelinna",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Pulling_Arrow",    		 	"CT_PVP_BOT_LIME_Pulling_Arrow",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Slide_Double_Kick_Start",    	"CT_PVP_BOT_LIME_Slide_Double_Kick_Start",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Reflect_Kick_READY",     		"CT_PVP_BOT_LIME_Reflect_Kick",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Back_Tumbling_Shot",    	 	"CT_PVP_BOT_LIME_Back_Tumbling_Shot",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboX",     					"CT_PVP_BOT_LIME_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboZ",     					"CT_PVP_BOT_LIME_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",   	"CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashComboZ",     				"CT_PVP_BOT_LIME_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DashX",     			"CT_PVP_BOT_LIME_BACKWARD_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJumpComboZ_Direct",    	"CT_PVP_BOT_LIME_DashJumpComboZ_Direct",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DASH",         				"CT_PVP_BOT_LIME_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP_DIR",         		"CT_PVP_BOT_LIME_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP",         			"CT_PVP_BOT_LIME_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJump",          			"CT_PVP_BOT_LIME_DashJump",      			},
		  		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_READY",     	"CT_PVP_BOT_LIME_BACKWARD_DASH_READY",   	},
		
	},

	
	-- 가랏 길라임!
	
	CT_PVP_BOT_LIME_Airelinna =
	{
		EVENT_INTERVAL_ID			= 0,	
		MY_MP_MORE_THAN				= 170,
		RATE						= 3,
	},
	CT_PVP_BOT_LIME_Pulling_Arrow =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1250,	
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 40,
		RATE						= 75,
	},
	CT_PVP_BOT_LIME_Slide_Double_Kick_Start =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,	
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},	
	CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X =
	{
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_Reflect_Kick =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 30,
	},
	CT_PVP_BOT_LIME_Back_Tumbling_Shot =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},	
	CT_PVP_BOT_LIME_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 275,	
		RATE						= 90,
	},
	CT_PVP_BOT_LIME_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ_Direct =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 900,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,	
		RATE						= 40,
	},	
	CT_PVP_BOT_LIME_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 50,
	},
	
	CT_PVP_BOT_LIME_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_LIME_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_LIME_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_LIME_STANDUP_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",														},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_LIME_BOOST_POWER",	"CF_PVP_BOT_LIME_BOOST_POWER",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_LIME_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_LIME_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_LIME_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_LIME_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_LIME_JUMP_DOWN_DIR",															},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Airelinna",   		  		"CT_PVP_BOT_LIME_Airelinna",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Pulling_Arrow",    		 	"CT_PVP_BOT_LIME_Pulling_Arrow",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Slide_Double_Kick_Start",    	"CT_PVP_BOT_LIME_Slide_Double_Kick_Start",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Reflect_Kick_READY",     		"CT_PVP_BOT_LIME_Reflect_Kick",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Back_Tumbling_Shot",    	 	"CT_PVP_BOT_LIME_Back_Tumbling_Shot",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboX",     					"CT_PVP_BOT_LIME_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboZ",     					"CT_PVP_BOT_LIME_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",   	"CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashComboZ",     				"CT_PVP_BOT_LIME_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DashX",     			"CT_PVP_BOT_LIME_BACKWARD_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJumpComboZ_Direct",    	"CT_PVP_BOT_LIME_DashJumpComboZ_Direct",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DASH",         				"CT_PVP_BOT_LIME_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP_DIR",         		"CT_PVP_BOT_LIME_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP",         			"CT_PVP_BOT_LIME_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJump",          			"CT_PVP_BOT_LIME_DashJump",      			},
		  		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_READY",     	"CT_PVP_BOT_LIME_BACKWARD_DASH_READY",   	},
		
	},

	
	-- 가랏 길라임!
	
	CT_PVP_BOT_LIME_Airelinna =
	{
		EVENT_INTERVAL_ID			= 0,	
		MY_MP_MORE_THAN				= 170,
		RATE						= 3,
	},
	CT_PVP_BOT_LIME_Pulling_Arrow =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1250,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 75,
	},
	CT_PVP_BOT_LIME_Slide_Double_Kick_Start =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,	
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},	
	CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X =
	{
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_Reflect_Kick =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 30,
	},
	CT_PVP_BOT_LIME_Back_Tumbling_Shot =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},	
	CT_PVP_BOT_LIME_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 275,	
		RATE						= 90,
	},
	CT_PVP_BOT_LIME_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ_Direct =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 900,
		RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,	
		RATE						= 40,
	},	
	CT_PVP_BOT_LIME_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 50,
	},
	
	CT_PVP_BOT_LIME_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_LIME_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_LIME_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_LIME_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_LIME_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_LIME_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_LIME_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_LIME_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_LIME_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_LIME_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Airelinna",   		  		"CT_PVP_BOT_LIME_Airelinna",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Pulling_Arrow",    		 	"CT_PVP_BOT_LIME_Pulling_Arrow",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Slide_Double_Kick_Start",    	"CT_PVP_BOT_LIME_Slide_Double_Kick_Start",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Reflect_Kick_READY",     		"CT_PVP_BOT_LIME_Reflect_Kick",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Back_Tumbling_Shot",    	 	"CT_PVP_BOT_LIME_Back_Tumbling_Shot",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboX",     					"CT_PVP_BOT_LIME_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboZ",     					"CT_PVP_BOT_LIME_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",   	"CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashComboZ",     				"CT_PVP_BOT_LIME_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DashX",     			"CT_PVP_BOT_LIME_BACKWARD_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJumpComboZ_Direct",    	"CT_PVP_BOT_LIME_DashJumpComboZ_Direct",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DASH",         				"CT_PVP_BOT_LIME_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP_DIR",         		"CT_PVP_BOT_LIME_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_JUMP_UP",         			"CT_PVP_BOT_LIME_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJump",          			"CT_PVP_BOT_LIME_DashJump",      			},
		  		
		-- -- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        ---- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_READY",     	"CT_PVP_BOT_LIME_BACKWARD_DASH_READY",   },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Pulling_Arrow",    		 	"CT_PVP_BOT_LIME_Pulling_Arrow",           	},
		
	},

	
	-- 가랏 길라임!
	
	CT_PVP_BOT_LIME_Airelinna =
	{
		EVENT_INTERVAL_ID			= 0,	
		MY_MP_MORE_THAN				= 170,
		RATE						= 3,
	},
	CT_PVP_BOT_LIME_Pulling_Arrow =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		DISTANCE_TO_TARGET_NEAR		= 1250,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 75,
	},
	CT_PVP_BOT_LIME_Slide_Double_Kick_Start =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,	
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 10,
	},	
	CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X =
	{
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,	
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_Reflect_Kick =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 30,
	},
	CT_PVP_BOT_LIME_Back_Tumbling_Shot =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},	
	CT_PVP_BOT_LIME_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 275,	
		RATE						= 90,
	},
	CT_PVP_BOT_LIME_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ_Direct =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 900,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,	
		RATE						= 40,
	},	
	CT_PVP_BOT_LIME_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 50,
	},
	
	CT_PVP_BOT_LIME_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_LIME_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_LIME_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_LIME_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",													},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_READY",     	"CT_PVP_BOT_LIME_BACKWARD_DASH_READY",   },
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DASH_END",          		"CT_PVP_BOT_LIME_DASH_END",      		},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],			"PVP_BOT_LIME_DASH",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_LIME_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_LIME_DashJump",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_LIME_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_LIME_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashComboZ",     			"CT_PVP_BOT_LIME_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DashX",     		"CT_PVP_BOT_LIME_BACKWARD_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashX",         			"CT_PVP_BOT_LIME_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJump",          		"CT_PVP_BOT_LIME_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJump",          		"CT_PVP_BOT_LIME_DashJump2",      		},
		
	},
	
	
	-- 슬라이딩! 슬라이딩!
	
	CT_PVP_BOT_LIME_DASH_JUMP_UP_for_DashJump_X =
	{
		TARGET_BELOW_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 550,	
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 50,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	CT_PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X =
	{
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 50,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	CT_PVP_BOT_LIME_Pulling_Arrow =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,	
		DISTANCE_TO_TARGET_NEAR		= 1250,	
		MY_MP_MORE_THAN				= 80,
		RATE						= 30,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	CT_PVP_BOT_LIME_Aero_Strafe =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
	CT_PVP_BOT_LIME_Airelinna =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 5,
	},
	CT_PVP_BOT_LIME_Slide_Double_Kick_Start =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 299,
		RATE						= 80,
		SAME_LINE_WITH_TARGET		= TRUE,
	},	
	CT_PVP_BOT_LIME_Reflect_Kick =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 60,
	},
	CT_PVP_BOT_LIME_Back_Tumbling_Shot =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 50,
		SAME_LINE_WITH_TARGET		= TRUE,
	},	
	CT_PVP_BOT_LIME_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 40,
		SAME_LINE_WITH_TARGET		= TRUE,
	},	
	
	CT_PVP_BOT_LIME_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	
	CT_PVP_BOT_LIME_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		RATE						= 40,
	},
		
	CT_PVP_BOT_LIME_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	
	CT_PVP_BOT_LIME_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 100,
	},
		
	CT_PVP_BOT_LIME_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_LIME_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
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
PVP_BOT_LIME_BACKWARD_DASH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DASH",	"CT_PVP_BOT_LIME_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_LIME_BACKWARD_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_LIME_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_LIME_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_LIME_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_LIME_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY5",       	     	},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashJump",          		"CT_PVP_BOT_LIME_DashJump",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
				
	CT_PVP_BOT_LIME_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 5,
	},
	CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 699,
		DISTANCE_OVER_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 899,
		DISTANCE_OVER_TARGET_NEAR		= 700,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 999,
		DISTANCE_OVER_TARGET_NEAR		= 900,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},

}

PVP_BOT_LIME_BACKWARD_DASH_FINISH_READY = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_LIME_DashJump",	"CF_PVP_BOT_CHECK_BACK_ESCAPE",									},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_WAIT",	"CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
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
-- move & jump
-- 이동 및 점프에 관한 동작 구현부분입니다.

--------------------------------------------------------------------------
PVP_BOT_LIME_DASH_END =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",			},
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
PVP_BOT_LIME_JUMP_UP =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX1",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 5,
	},
	CT_PVP_BOT_LIME_JumpX1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		RATE						= 5,
	},
	CT_PVP_BOT_LIME_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}

PVP_BOT_LIME_JUMP_DOWN =
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
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX2",      		},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
	},
	
	
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 15,
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}
PVP_BOT_LIME_JUMP_DOWN_ACT =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
	},
	
	
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 15,
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}
PVP_BOT_LIME_JUMP_DOWN_NOACT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_JUMP_UP_DIR_for_Jump_X =
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

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_LIME_JUMP_DOWN_DIR",		},
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 5,
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_JUMP_UP_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX1",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_LIME_JUMP_DOWN_DIR",		},
	},
	
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 15,
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 5,
	},
	CT_PVP_BOT_LIME_JumpX1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		RATE						= 5,
	},
	CT_PVP_BOT_LIME_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_JUMP_DOWN_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
	},
	
	
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 15,
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_JUMP_LANDING =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JUMP_UP",          	"CT_PVP_BOT_LIME_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	CT_PVP_BOT_LIME_JUMP_UP =
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

PVP_BOT_LIME_DashJump = 
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
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DashJumpComboZ",    "CT_PVP_BOT_LIME_DashJumpComboZ",     },
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DashJump_X",    "CT_PVP_BOT_LIME_DashJump_X",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DASH_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ6",	},
	
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PVP_BOT_LIME_DashJump_Down",		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_LIME_DashJump_landing",											},
	},
	
	
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_DashJump_Z =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJump_X =
	{
		TARGET_BELOW_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 75,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}

PVP_BOT_LIME_DashJump_Down = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_Sharp_Fall",    "CT_PVP_BOT_LIME_Sharp_Fall",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DASH_DOUBLE_JUMP_UP",    "CT_PVP_BOT_LIME_DOUBLE_JUMP_UP",     },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJump_landing",	"CT_PVP_BOT_LIME_DashJump_landing",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashJumpComboZ",	"CT_PVP_BOT_LIME_DashJumpComboZ6",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_LIME_DashJump_landing",											},
	},
	
	CT_PVP_BOT_LIME_DOUBLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME				= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		RATE						= 20,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_LIME_DashJumpComboZ6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
	CT_PVP_BOT_LIME_DashJump_landing =
	{
		FOOT_ON_LINE				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_Sharp_Fall =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 33,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_LIME_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",											},
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
-- 라임 2단 점프 입니다.(일반)
PVP_BOT_LIME_DOUBLE_JUMP_UP =
{
	ANIM_NAME			= "DoubleJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	ANIM_SPEED			= 1.3,
	LAND_CONNECT		= FALSE,
	
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"],
	
	IMMADIATE_PACKET_SEND	= TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JumpAttackX",          	"CT_PVP_BOT_LIME_DOUBLE_JumpAttackX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JumpAttackX",          	"CT_PVP_BOT_LIME_DOUBLE_JumpAttackX2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_LIME_DOUBLE_JumpAttackX =
	{
		TARGET_BELOW_ME				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
	CT_PVP_BOT_LIME_DOUBLE_JumpAttackX2 =
	{
		TARGET_BELOW_ME				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,
		RATE						= 15,
	},
}

-- 라임 2단 점프 입니다.(대시 중)
PVP_BOT_LIME_DASH_DOUBLE_JUMP_UP =
{
	ANIM_NAME			= "DoubleJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	ANIM_SPEED			= 1.3,
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"] * 1.1,
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"],
	
	
	IMMADIATE_PACKET_SEND	= TRUE,

	
	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JumpAttackX",          	"CT_PVP_BOT_LIME_DOUBLE_JumpAttackX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DOUBLE_JumpAttackX",          	"CT_PVP_BOT_LIME_DOUBLE_JumpAttackX2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_LIME_DOUBLE_JumpAttackX =
	{
		TARGET_BELOW_ME				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
	CT_PVP_BOT_LIME_DOUBLE_JumpAttackX2 =
	{
		TARGET_BELOW_ME				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,
		RATE						= 15,
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

-- 2단점프 x입니다.

PVP_BOT_LIME_DOUBLE_JumpAttackX = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SR_DoubleJumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	SPEED_X				= 0,
	SPEED_Y				= 0,      

	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_JUMP_DOWN_NOACT",		},
	},
}

-- 대시점프 z 입니다.

PVP_BOT_LIME_DashJumpComboZ_Direct = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	ATTACK_TIME0		= { 0.1, 0.35 },	
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 2.0,
	SPEED_Y				= 1250,
	
	SOUND_PLAY0			= { 0.12, "FootAttack.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
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
		
		FORCE_DOWN			= 20,
		
		TECH_POINT				= 50,
	
	},	
	
	UNIT_SLASH_TRACE0 = { 1, 0.1, 0.37, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },     

	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DashJump_landing",	},
	},
}

PVP_BOT_LIME_DashJumpComboZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	ATTACK_TIME0		= { 0.1, 0.35 },	
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 2.0,
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 0.3,
	
	SOUND_PLAY0			= { 0.12, "FootAttack.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
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
		
		FORCE_DOWN			= 20,
		
		TECH_POINT				= 50,
	
	},	
	
	UNIT_SLASH_TRACE0 = { 1, 0.1, 0.37, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },     

	EVENT_PROCESS =
	{	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DashJumpComboZZ",          	"CT_PVP_BOT_LIME_DashJumpComboZZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DashJump_landing",	},
	},
	CT_PVP_BOT_LIME_DashJumpComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.44,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_DashJumpComboZZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "CR_DashJumpComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	ATTACK_TIME0		= { 0.17, 0.29, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.6,
	SPEED_Y				= 600.0,
	
	SOUND_PLAY0			= { 0.17, "FootAttack2.ogg" },
	
	
	
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 60,
		
		
	},	
	
	
	UNIT_SLASH_TRACE0 = { 2, 0.18, 0.31, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },         

	EVENT_PROCESS =
	{	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_DashJumpComboZZZ",          	"CT_PVP_BOT_LIME_DashJumpComboZZZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DashJump_landing",	},
	},
	CT_PVP_BOT_LIME_DashJumpComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.46,
		TARGET_ABOVE_ME				= TRUE, 
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_DashJumpComboZZZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "CR_DashJumpComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	ATTACK_TIME0		= { 0.15, 0.32, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.5,
	SPEED_Y				= 700.0,
	
	SOUND_PLAY0			= { 0.15, "FootAttack2.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		BACK_SPEED_Y			= 200,
		
		STOP_TIME_ATT			= 0.1,		
		STOP_TIME_DEF			= 0.15,	
					
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,
		CLEAR_SCREEN			= 1,	
		
		TECH_POINT				= 320,
	},	
	
	
	UNIT_SLASH_TRACE0 = { 2, 0.2, 0.36, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },         

	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DashJump_landing",	},
	},
}
-- 뒤로 도망갑니다.

PVP_BOT_LIME_BACKWARD_DashX = 
{

	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	ALLOW_DIR_CHANGE			= TRUE,
		
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashX_02",	"CT_PVP_BOT_LIME_BACKWARD_DashX_02",	},
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DashX_02 =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_BACKWARD_DashX_02 = 
{

	ANIM_NAME			= "ChargeSoul",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
		
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashX",	"CT_PVP_BOT_LIME_DashX",	},
	},
	
	CT_PVP_BOT_LIME_DashX =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_BACKWARD_DashComboZ = 
{

	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	ALLOW_DIR_CHANGE			= TRUE,
		
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashComboZ_02",	"CT_PVP_BOT_LIME_BACKWARD_DashComboZ_02",	},
	},
	
	CT_PVP_BOT_LIME_BACKWARD_DashComboZ_02 =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_BACKWARD_DashComboZ_02 = 
{

	ANIM_NAME			= "ChargeSoul",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
		
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACK_DashComboZ",	"CT_PVP_BOT_LIME_DashComboZ",	},
	},
	
	CT_PVP_BOT_LIME_DashComboZ =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

--ZZfrontZZZ 콤보 입니다.
PVP_BOT_LIME_ComboZ = 
{
	TALK_BOX =
	{
		{ RATE = 1, MESSAGE = STR_ID_23993 },
		{ RATE = 1, MESSAGE = STR_ID_23994 },
		{ RATE = 1, MESSAGE = STR_ID_23995 },
	},
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ1",
	ANIM_SPEED			= 1.03 * 1.25,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	VIEW_TARGET			= TRUE,
	
	
	
	ATTACK_TIME0		= { 0.1, 0.35 },	
	
	LAND_CONNECT		= FALSE,
	
	CHANGE_TIME			= 0.3,
	
	SOUND_PLAY0			= { 0.06, "FootAttack.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.1,
		},
			
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 6,
		STOP_TIME_DEF			= 0.05,
			
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
	    TECH_POINT				= 22,
	},
	
	UNIT_SLASH_TRACE0 = { 2, 0.13, 0.24, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },   

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboZZ",	"CT_PVP_BOT_LIME_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashComboZ",	"CT_PVP_BOT_LIME_BACKWARD_DashComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.31,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashComboZ = 
	{
		ANIM_EVENT_TIMER			= 0.35,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	ANIM_SPEED			= 1.2 * 1.25,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	ATTACK_TIME0		= { 0.35, 0.41, },
		
	
	
	LAND_CONNECT		= FALSE,
	CHANGE_TIME			= 0.5,
	SKIP_TIME			= 0.65,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0			= { 0.31, "FootAttack.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
		
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 5,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		STOP_TIME_ATT			= 0.05,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
	    TECH_POINT				= 26,
	},
	
	UNIT_SLASH_TRACE0 = { 1, 0.29, 0.4, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },      

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboZZfrontZ",	"CT_PVP_BOT_LIME_ComboZZfrontZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashComboZ",	"CT_PVP_BOT_LIME_BACKWARD_DashComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_ComboZZfrontZ =
	{
		ANIM_EVENT_TIMER			= 0.63,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashComboZ = 
	{
		ANIM_EVENT_TIMER			= 0.65,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_LIME_ComboZZfrontZ = 
{
	ANIM_NAME			= "LWS_ComboZ3Front",
	ANIM_SPEED			= 1.2 * 1.25,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	--SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0			= { 0.353, "Lena_WS_ComboZ3.ogg" },	
	
	

	UNIT_SLASH_TRACE0 = { 2, 0.41, 0.55, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },       
	
	
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},

	--ATTACK_TIME0		= { 0.43, 0.53 },		-- 모션 바뀌기 전
	ATTACK_TIME0		= { 0.4, 0.47 },
	
	DAMAGE_DATA = 
	{
		
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.1,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		--BACK_SPEED_Y			= 0,
		
		STOP_TIME_DEF = 0.2,
				
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,
		HIT_GAP					= 10,	
		
		TECH_POINT				= 105,
		FORCE_DOWN				= 12,
	},
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboZZfrontZZ",	"CT_PVP_BOT_LIME_ComboZZfrontZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashComboZ",	"CT_PVP_BOT_LIME_BACKWARD_DashComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_ComboZZfrontZZ =
	{
		ANIM_EVENT_TIMER			= 0.76,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashComboZ = 
	{
		ANIM_EVENT_TIMER			= 0.8,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}


PVP_BOT_LIME_ComboZZfrontZZ = 
{
	ANIM_NAME			= "LWS_ComboZ4Front",
	ANIM_SPEED			= 1.2 * 1.25,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	--SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0			= { 0.177, "Lena_WS_ComboZ4.ogg" },	
	
		
	UNIT_SLASH_TRACE0 = { 1, 0.27, 0.41, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },    
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},

	-- ATTACK_TIME0		= { 0.3, 0.4 },			-- 모션 바뀌기 전
	ATTACK_TIME0		= { 0.36, 0.46 },
	
	DAMAGE_DATA = 
	{
		
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.4,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		--BACK_SPEED_Y			= 0,
		
		STOP_TIME_DEF = 0.15,
				
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,
		HIT_GAP					= 10,	
		
		TECH_POINT				= 120,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_Nature_Force",		"CT_PVP_BOT_LIME_Nature_Force",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_Low_Kick",			"CT_PVP_BOT_LIME_Low_Kick",			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboZ",				"CT_PVP_BOT_LIME_ComboZ",			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboZZfrontZZZ",		"CT_PVP_BOT_LIME_ComboZZfrontZZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashComboZ",	"CT_PVP_BOT_LIME_BACKWARD_DashComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_Nature_Force =
	{
		ANIM_EVENT_TIMER			= 0.85,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_LIME_Low_Kick =
	{
		ANIM_EVENT_TIMER			= 0.85,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_LIME_ComboZZfrontZZZ =
	{
		ANIM_EVENT_TIMER			= 0.7,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 15,
	},
	CT_PVP_BOT_LIME_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.85,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_BACKWARD_DashComboZ = 
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}



PVP_BOT_LIME_ComboZZfrontZZZ = 
{
	ANIM_NAME			= "LWS_ComboZ5Front",
	ANIM_SPEED			= 1.15 * 1.25,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	--SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0			= { 0.432, "Lena_WS_ComboZ5.ogg" },
	SOUND_PLAY1			= { 0.522, "LenaVoice_Shout01.ogg" },
	
	
	
	
	UNIT_SLASH_TRACE0 = { 1, 0.53, 0.79, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },       
	UNIT_SLASH_TRACE1 = { 2, 0.53, 0.79, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },   
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},

	ATTACK_TIME0		= { 0.53, 0.7 },
	
	DAMAGE_DATA = 
	{
		
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 3.0,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 1500,
		BACK_SPEED_Y			= 1450,
		
		STOP_TIME_ATT = 0.13,
		STOP_TIME_DEF = 0.15,

				
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,
		HIT_GAP					= 10,	
		
		TECH_POINT				= 240,
	},
	
	EVENT_PROCESS =
	{
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_ComboZZfrontZZZ_Landing",		},
	},
	
}
PVP_BOT_LIME_ComboZZfrontZZZ_Landing = 
{
	ANIM_NAME			= "LWS_ComboZ5Front_Landing",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_BACKWARD_DashComboZ",	"CT_PVP_BOT_LIME_BACKWARD_DashComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	CT_PVP_BOT_LIME_BACKWARD_DashComboZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
}


-- xxxx 콤보입니다.
PVP_BOT_LIME_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET			= TRUE,
	
	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	--LAND_CONNECT		= FALSE,
	LAND_CONNECT		= TRUE,
	CHANGE_TIME			= 0.3,
	SKIP_TIME			= 0.6,


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboXX",	"CT_PVP_BOT_LIME_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	
	CT_PVP_BOT_LIME_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.35,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_LIME_ComboXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	--LAND_CONNECT		= FALSE,
	LAND_CONNECT		= TRUE,
	
	CHANGE_TIME			= 0.3,
	SKIP_TIME			= 0.6,

	EVENT_PROCESS =
	{
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboXXX",	"CT_PVP_BOT_LIME_ComboXXX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_WAIT",	"CT_PVP_BOT_LIME_WAIT2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_WAIT",	"CT_PVP_BOT_LIME_WAIT3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_ComboX",	"CT_PVP_BOT_LIME_ComboX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		TARGET_BELOW_ME				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		TARGET_ABOVE_ME				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_LIME_ComboX =
	{
		ANIM_EVENT_TIMER			= 0.6,
		-- ATTACK_SUCCESS				= TRUE, 
		DISTANCE_OVER_TARGET_NEAR	= 200,
		DISTANCE_TO_TARGET_NEAR		= 1200,	 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}


-- 점프x 공격입니다.
PVP_BOT_LIME_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET			= TRUE,
	
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 0,
	SPEED_Y				= 700,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PVP_BOT_LIME_JUMP_DOWN_NOACT",	},
	},
}

-- 대시X 공격입니다.
PVP_BOT_LIME_DashX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	CAN_PASS_UNIT		= TRUE,
	CAN_PUSH_UNIT		= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	FLIP_DIR_END		= TRUE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashXZ",	"CT_PVP_BOT_LIME_DashXZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_DashXZ =
	{
		ANIM_EVENT_TIMER			= 0.47,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}


-- 대시XZ 공격입니다.
PVP_BOT_LIME_DashXZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "LWS_DashComboX2",
	ANIM_SPEED			= 1.15,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	--CAN_PASS_UNIT		= FALSE,
	--CAN_PUSH_UNIT		= FALSE,
	
	--SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0			= { 0.401, "Lena_WS_DashComboX2.ogg" },
	
	
	
	--CHANGE_TIME			= 0.4,
	
	UNIT_SLASH_TRACE0 = { 1, 0.38, 0.56, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },       
	UNIT_SLASH_TRACE1 = { 2, 0.38, 0.56, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },       
		
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},

	ATTACK_TIME0		= { 0.4, 0.5 },
	
	DAMAGE_DATA = 
	{
		
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.1,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 600,
		BACK_SPEED_Y			= 0,
		
		STOP_TIME_ATT = 0.13,
		STOP_TIME_DEF = 0.15,

				
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		CAN_REVENGE				= TRUE,
		RE_ATTACK				= FALSE,
		HIT_GAP					= 10,	
		
		TECH_POINT				= 157,
		FORCE_DOWN				= 15,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
}

-- 대시ZZZ 콤보 공격입니다.
PVP_BOT_LIME_BACK_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.21, "sliding.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	ATTACK_TIME0		= { 0.1, 0.36 },
		
	CHANGE_TIME			= 0.5,
	SKIP_TIME			= 0.55,	
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
		
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 7,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		
		STOP_TIME_ATT			= 0.05,
		STOP_TIME_DEF			= 0.05,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
			
		HIT_GAP					= 0.1,	
		
		TECH_POINT				= 97,
		
	},
	
	UNIT_SLASH_TRACE0 = { 1, 0.12, 0.6, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },  
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashComboZZ",	"CT_PVP_BOT_LIME_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.5,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},	
}
PVP_BOT_LIME_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.21, "sliding.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	ATTACK_TIME0		= { 0.1, 0.36 },
		
	CHANGE_TIME			= 0.5,
	SKIP_TIME			= 0.55,	
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
		
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 7,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		
		STOP_TIME_ATT			= 0.05,
		STOP_TIME_DEF			= 0.05,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
			
		HIT_GAP					= 0.1,	
		
		TECH_POINT				= 97,
		
	},
	
	UNIT_SLASH_TRACE0 = { 1, 0.12, 0.6, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },  
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashComboZZ",	"CT_PVP_BOT_LIME_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},	
}
PVP_BOT_LIME_DashComboZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
		
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.21, "sliding.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	ATTACK_TIME0		= { 0.1, 0.36 },
		
	CHANGE_TIME			= 0.56,
	SKIP_TIME			= 0.6,	
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},
		
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 5,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		
		STOP_TIME_ATT			= 0.05,
		STOP_TIME_DEF			= 0.05,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
			
		HIT_GAP					= 0.1,	
		
		TECH_POINT				= 120,
		
	},
	
	
	UNIT_SLASH_TRACE0 = { 1, 0.12, 0.6, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },        
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_DashComboZZZ",	"CT_PVP_BOT_LIME_DashComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
	CT_PVP_BOT_LIME_DashComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.5,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},	
}


PVP_BOT_LIME_DashComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.2,
	
	SOUND_PLAY0			= { 0.10, "FootAttack2.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	ATTACK_TIME0		= { 0.19, 0.26 },	
	SKIP_TIME			= 0.65,
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 10,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
				
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 300,
	},
	
	COMBO_GUIDE         = { "R", "RZZ" },
	
	
	UNIT_SLASH_TRACE0 = { 2, 0.16, 0.37, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },           
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_Combo_for_Upper_Attack_JumpX_JUMP",	"CT_PVP_BOT_LIME_Combo_for_Upper_Attack_JumpX_JUMP",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Combo_for_Upper_Attack",		},
	},
	
	
	CT_PVP_BOT_LIME_Combo_for_Upper_Attack_JumpX_JUMP = 
	{
		ANIM_EVENT_TIMER			= 0.7,
		RATE						= 20,
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

-- 슬라이드 더블 킥!
PVP_BOT_LIME_Slide_Double_Kick_Start = 
{

	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LWS_SLIDE_KICK_Start",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	STATE_STRING		= STR_ID_4786,
	
	INVINCIBLE			= { 0, 1.5, },
	SLASH_TRACE			= { 0.1, 100, },
	AFTER_IMAGE			= { 0.1, 100, },
			
	STOP_OTHER_UNIT0		= { 0.0, 0.6, },
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.01, "Energy.ogg" },
	SOUND_PLAY1			= { 0.160, "Lena_SI_SA_WS_Slide_Kick.ogg" },
	SOUND_PLAY2			= { 0.012, "LenaVoce_SlideDoubleKick.ogg" },


	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_Slide_Kick_Start", 0.1,
	},		

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_Slide_Double_Kick_Pass",	"CT_PVP_BOT_LIME_Slide_Double_Kick_Pass",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Slide_Double_Kick_Fail",		},
	},
	
	CT_PVP_BOT_LIME_Slide_Double_Kick_Pass = 
	{
		ANIM_EVENT_TIMER			= 0.31,
		RATE						= 100,
	},
	
}
PVP_BOT_LIME_Slide_Double_Kick_Pass = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LWS_SLIDE_KICK_Pass",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT		= TRUE,
	CAN_PASS_UNIT		= TRUE,
	
	
	
	SPEED_X = 1200,
	
	CHANGE_TIME = 0.175,		-- 최대 0.3초
	
	INVINCIBLE			= { 0, 100, },
	
	ATTACK_TIME0		= { 0.01, 100 },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
		"Rfoot",
	},
		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		ATTACK_TYPE		= ATTACK_TYPE["AT_SPECIAL"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.77,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= -450.0,
		BACK_SPEED_Y			= 0.0,
		
		
		
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 0.0,	
		CAMERA_CRASH_TIME		= 0.0,

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 10.0,		
		
		HIT_ADD_MP     			= 3,
		TECH_POINT				= 125,
		--FORCE_DOWN				= 20, 
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_Slide_Kick_Start", 0.01,
		"EffectSet_Rena_Slide_Kick_for_BOT", 0.13,
	},	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_Slide_Double_Kick_Passing",	"CT_PVP_BOT_LIME_Slide_Double_Kick_Passing",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Slide_Double_Kick_Fail",		},
	},
	
	CT_PVP_BOT_LIME_Slide_Double_Kick_Passing =
	{
		ATTACK_SUCCESS				= TRUE, 
		RATE						= 100,
	},
	
}
PVP_BOT_LIME_Slide_Double_Kick_Passing = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LWS_SLIDE_KICK_Pass",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT		= TRUE,
	CAN_PASS_UNIT		= TRUE,
	
	SPEED_X = 1200,
	
	INVINCIBLE			= { 0, 100, },
	
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_Slide_Kick_for_BOT", 0.01,
	},	
	

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_LIME_Slide_Double_Kick_Attack",	"CT_PVP_BOT_LIME_Slide_Double_Kick_Attack",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Slide_Double_Kick_Attack",		},
	},
	
	CT_PVP_BOT_LIME_Slide_Double_Kick_Attack =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 100,
	},
	
}

PVP_BOT_LIME_Slide_Double_Kick_Attack = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LWS_SLIDE_KICK_Finish",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	STATE_STRING		= STR_ID_4786,
	
	FLIP_DIR_END		= TRUE,
	
	CAN_PUSH_UNIT		= TRUE,
	SPEED_X = -300,
	
	INVINCIBLE			= { 0, 1.2, },
	
	SOUND_PLAY0			= { 0.322, "Lena_SI_SA_WS_Slide_Kick2.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_Slide_Kick_Heel", 0.43, 
		"EffectSet_Rena_Slide_Kick_Finish", 0.89,
	},	
	
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
}
PVP_BOT_LIME_Slide_Double_Kick_Fail = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LWS_SLIDE_KICK_End",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,	
	
	SKIP_TIME = 0.27,	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Combo_for_Upper_Attack",		},
	},
	
}

-- 샤프 폴!
PVP_BOT_LIME_Sharp_Fall = 
{

	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LCR_SHARPFALL",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	INVINCIBLE			= { 0, 1.8, },		-- fix!!
	AFTER_IMAGE			= { 0.1, 100, },
	
	STATE_STRING		= STR_ID_4281,
	STOP_OTHER_UNIT0		= { 0.0, 1.0, },
	
	SOUND_PLAY0			= { 0.104, "Lena_SharpFall.ogg" },	
	SOUND_PLAY1			= { 0.001, "LenaVoice_SharpFall.ogg" },	
	SOUND_PLAY2			= { 0.001, "Energy.ogg" },
	
	SPEED_Y = 800,

	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_SharpFall", 0,
	},
		
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
		"Rfoot",
	},
		
	ATTACK_TIME0		= { 0.2, 0.7 },
	
	DAMAGE_DATA = 
	{
					
		ATTACK_TYPE		= ATTACK_TYPE["AT_SPECIAL"],
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= -300,
		
		STOP_RESERVE_TIME_ATT	= 0.0,
		STOP_RESERVE_TIME_DEF	= 0.0,
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		CAN_REVENGE				= FALSE,		-- 엘소드 반격 가능
		CAN_REFLEX              = FALSE,		-- 레나 리플렉트킥 가능
		RE_ATTACK				= TRUE,		-- 이 이펙트가 한 타격을 때린 후, 다시 그 타겟을 때리는지의 여부.
		HIT_GAP					= 0.05,		-- RE_ATTACK = TRUE일 경우 작동. 몇초에 한번씩 때릴것인가. (단위 : Sec)
		FORCE_DOWN				= 0,		-- 다운 수치
		HIT_ADD_MP     			= 0,		-- MP회복
		TECH_POINT				= 0,		-- 테크 포인트
		FORCE_FLY				= TRUE,		-- 날리는 공격인가? 
	},
	
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],				"PVP_BOT_LIME_Sharp_Fall_Landing",		},
	},
	
}

PVP_BOT_LIME_Sharp_Fall_Landing = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_LCR_SHARPFALL_Landing",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_SharpFallLanding", 0,
	},
	
	SOUND_PLAY0			= { 0.002, "Lena_SharpFallLanding.ogg" },	
		
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
}

-- 아이레린나!
PVP_BOT_LIME_Airelinna = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET			= TRUE,
	
	ANIM_NAME			= "SI_SA_LWS_AIRELINNA",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	STATE_STRING		= STR_ID_9743,
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,
	
	INVINCIBLE			= { 0, 1.5, },
	SLASH_TRACE			= { 0.1, 100, },
	AFTER_IMAGE			= { 0.1, 100, },
			
	STOP_OTHER_UNIT0		= { 0.0, 0.7, },
	

	SOUND_PLAY0			= { 0.001, "Energy.ogg" },
	SOUND_PLAY1	    	= { 0.01, "LenaVoice_AireLinna.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_AIRELINNA", 0,
		"EffectSet_PVP_BOT_AIRELINNA_Heal", 0.68,
	},		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
}

-- 로우킥을 시전합니다.
PVP_BOT_LIME_Low_Kick = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_LCR_LOW_KICK",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,	
	
	STATE_STRING		= STR_ID_4371,

	SOUND_PLAY0					= { 0.248, "FootAttack2.ogg" }, 
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	ATTACK_TIME0		= { 0.26, 0.46 },
	
	UNIT_SLASH_TRACE0 = { 0, 0.15, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        
	
	DAMAGE_DATA = 
	{
					
		
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_MOTION_SLOWDOWN"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_ANIM_SPEED"], },
		
				BBT_CHANGE_ANIM_SPEED =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_PERCENT"],
					BUFF_RELATION_TYPE = BUFF_RELATION_TYPE["BRT_END"],
					PERCENT =
					{
						0.80,
					},
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
		
		BACK_SPEED_X			= 0.0,
		BACK_SPEED_Y			= 0.0,
		
		STOP_RESERVE_TIME_ATT	= 0.0,
		STOP_RESERVE_TIME_DEF	= 0.0,
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 0.0,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,		
		
		TECH_POINT				= 3,
		TECH_POINT				= 150,
	
	    CUSTOM_HIT_PARTICLE0 = 
		{
			PARTICLE_NAME = "ShockWave_Lire_SI_A_Low_Kick01",
		},
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST = 
	{
		"EffectSet_LowKick", 0,
	},
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
	
}

-- 백덤블링샷을 시전합니다.
PVP_BOT_LIME_Back_Tumbling_Shot = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
    ANIM_NAME			= "SI_A_LE_BACKJUMP_SHOT",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
		
	VIEW_TARGET			= TRUE,
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	INVINCIBLE			= { 0, 1.0, },
	AFTER_IMAGE			= { 0, 4, },
	
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 0.8,
	
	SOUND_PLAY0			= { 0.01, "Lena_MackJump_Shot.ogg" },
	SOUND_PLAY1			= { 0.421, "LenaVoice_Shout02.ogg" },	

	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_Count", 0,
	},		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_DashComboZ",		},
	},
	
}


-- 네이처 포스를 시전합니다.
PVP_BOT_LIME_Nature_Force = 
{
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_LWS_NATURE_FORCE",
	ANIM_SPEED			= 1.2,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	STATE_STRING		= STR_ID_4816,
	
	SOUND_PLAY0			= { 0.196, "Lena_WS_Nature_Force1.ogg" },
	SOUND_PLAY1			= { 0.834, "Lena_WS_Nature_Force2.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Rena_WindSneaker", 0.133,
		"EffectSet_Rena_WindSneakerGound", 0.833,
	},	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_WAIT",		},
	},
}

-- 풀링 애로우를 시전합니다.
PVP_BOT_LIME_Pulling_Arrow = 
{
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
    ANIM_NAME			= "SP1a_PierceArrow",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
		
    SOUND_PLAY0			= { 0.5, "LenaVoice_Shout01.ogg" },	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_DashComboZ",		},
	},
}

-- 리플렉트 킥을 시전합니다.
PVP_BOT_LIME_Reflect_Kick_READY = 
{
	VIEW_TARGET			= TRUE,
	
    ANIM_NAME			= "SI_A_LE_REFLEX_MAGIC_Ready",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Reflect_Kick",		},
	},
}

PVP_BOT_LIME_Reflect_Kick = 
{
    ANIM_NAME			= "SI_A_LE_REFLEX_MAGIC",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	SPEED_X				= 0,
	
	REFLECT_MAGIC = { 0.05, 0.475, },
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_Reflect_Kick", 0,
	},	
	
    SOUND_PLAY0			= { 0.01, "Lena_ReflexMagic.ogg" },	
    SOUND_PLAY1			= { 0.198, "LenaVoice_Shout05.ogg" },	
		
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_Combo_for_Upper_Attack",		},
	},
}

-- 각성
PVP_BOT_LIME_BOOST_POWER =
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
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.83, "Break.ogg" },	
	SOUND_PLAY3			= { 0.83, "Change.ogg" },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_LIME_WAIT",												},
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

PVP_BOT_LIME_Combo_for_Upper_Attack =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",														},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_ComboZ",    		 	"CT_PVP_BOT_LIME_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_Nature_Force",    		 	"CT_PVP_BOT_LIME_Nature_Force",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DashComboZ",    		 	"CT_PVP_BOT_LIME_DashComboZ",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_LIME_WAIT",												},
		  		
	},	
	-- 잡자!
	
	CT_PVP_BOT_LIME_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_LIME_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_LIME_Nature_Force =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 5,
	},
}

PVP_BOT_LIME_Combo_for_Upper_Attack_JumpX_JUMP =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_LIME_JumpX",          	"CT_PVP_BOT_LIME_JumpX",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_LIME_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_LIME_JumpX =
	{
		ANIM_EVENT_TIMER			= 0.03,
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



PVP_BOT_LIME_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_LIME_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_SMALL_FRONT =
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_JUMP_UP_DIR",		},
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
PVP_BOT_LIME_DAMAGE_SMALL_BACK =
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
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_JUMP_UP_DIR",		},
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
PVP_BOT_LIME_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0	    	= { 0.1, "LenaVoice_DamageScream04.ogg" , 20 },
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_JUMP_UP_DIR",		},
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
PVP_BOT_LIME_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0	    	= { 0.1, "LenaVoice_DamageScream04.ogg" , 20 },
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_JUMP_DOWN_NOACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_JUMP_UP_DIR",		},
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
PVP_BOT_LIME_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },



	SOUND_PLAY0			= { 0.19, "Down.ogg" },
	SOUND_PLAY1	    	= { 0.1, "LenaVoice_DamageScream03.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_LIME_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_LIME_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.32, "Down.ogg" },
	SOUND_PLAY1	    	= { 0.1, "LenaVoice_DamageScream03.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_LIME_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_LIME_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0	    	= { 0.1, "LenaVoice_DamageScream01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING",	},
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
PVP_BOT_LIME_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0	    	= { 0.1, "LenaVoice_DamageScream01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DAMAGE_DOWN_BACK",	},
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
PVP_BOT_LIME_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0	    	= { 0.1, "LenaVoice_DamageScream01.ogg" },
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_LIME_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_LIME_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.029, "Down.ogg" },
	SOUND_PLAY1			= { 0.46, "Down.ogg" },
	SOUND_PLAY2	    	= { 0.1, "LenaVoice_DamageScream02.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_LIME_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_STAND_UP_FRONT",		},
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

	PASSIVE_SPEED_X = 1,
	PASSIVE_SPEED_Y	= 1,
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_LIME_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_STAND_UP_FRONT =
{
	ANIM_NAME			= "StandUpRollingFrontBack",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	INVINCIBLE			= { 0, 100, },
	
	CAN_PASS_UNIT		= TRUE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_STANDUP_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_LIME_STAND_UP_BACK =
{
	ANIM_NAME			= "StandUpRollingBackFront",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	INVINCIBLE			= { 0, 100, },
	
	CAN_PASS_UNIT		= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_LIME_STANDUP_WAIT",      },
	},
}
--------------------------------------------------------------------------


PVP_BOT_LIME_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,

	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_23996 },
		{ RATE = 33, MESSAGE = STR_ID_23997 },
		{ RATE = 34, MESSAGE = STR_ID_23998 },
	},

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" }, 
	SOUND_PLAY1	            	= { 0.19, "LenaVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_LIME_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_23996 },
		{ RATE = 33, MESSAGE = STR_ID_23997 },
		{ RATE = 34, MESSAGE = STR_ID_23998 },
	},


	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.32, "Down.ogg" }, 
	SOUND_PLAY1	            	= { 0.19, "LenaVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_LIME_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_LIME_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_LIME_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	-- 소환문에 사망 전달
	local pSummonGate = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_GOD_GATE_ALLY"] )
	
	if nil ~= pSummonGate then
	
		local vSummonUserNPC = pSummonGate:GetVector_LUA( 3 )
		pSummonGate:SetVector_LUA( 3,  D3DXVECTOR3( vSummonUserNPC.x, 1.0, vSummonUserNPC.z ) )
	
	end
end
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos
end


function PVP_BOT_LIME_Airelinna_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	-- pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 150)
	end		
        
	  
end	

function PVP_BOT_LIME_Slide_Double_Kick_S_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	-- pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
        
	  
end	

function PVP_BOT_LIME_Slide_Double_Kick_F_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	-- pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 50)
	end		
        
	  
end	

function PVP_BOT_LIME_Sharp_Fall_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	-- pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end		
        
	  
end	

function PVP_BOT_LIME_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	-- pX2Game:SetWorldColor_LUA( D3DXCOLOR( 0.1, 0.1, 0.1, 1 ) )

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


function PVP_BOT_LIME_ComboX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_ARROW", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
end	

function PVP_BOT_LIME_ComboXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_ARROW", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
end	

function PVP_BOT_LIME_DashX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.31 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_REVERSE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_ARROW_REVERSE", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	

function PVP_BOT_LIME_DashJump_X_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.31 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_DASHJUMP_X", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	

function PVP_BOT_LIME_DashJump_XXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.31 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_DASHJUMP_XXX", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 10)
		end
	end
	
end	

function PVP_BOT_LIME_JumpX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.21 ) then	
		pNPCUnit:SetSpeedY(400)
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_ARROW", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	

function PVP_BOT_LIME_Back_Tumbling_Shot_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 20)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
		pNPCUnit:SetSpeedY(700)
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_BACK_TUMBLING_ARROW", pNPCUnit )
	end
	
end	

function PVP_BOT_LIME_DOUBLE_JumpAttackX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 10)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.15 ) then
		pNPCUnit:SetSpeedY(500)
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_DOUBLE_JUMP_X", pNPCUnit )
	end
	
end	

function PVP_BOT_LIME_Pulling_Arrow_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then	
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 20)
		
	
		vRot = pNPCUnit:GetRotateDegree()
		if pNPCUnit:GetIsRight() == false then
			vRot.y = vRot.y + 180.0
		end
	
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then
						
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_LIME_PULLING_ARROW", pNPCUnit )

	end
	
end	

function PVP_BOT_LIME_Nature_Force_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 50)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		-- pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_NPC_PHYSIC_ATTACK_ACCEL"] )
		pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_PVP_HERO_NPC_PHYSIC_ATTACK_ACCEL"] )
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NATURE_FORCE", pNPCUnit )
	end
	
end	

function PVP_BOT_LIME_Low_Kick_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 40)
	end
	
end	
function PVP_BOT_LIME_Reflect_Kick_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.0001 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
	
end	

function CF_PVP_BOT_LIME_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if fRemainHPRate < 0.3 then	
	
		if pNPCUnit:GetHyperModeCount() > 0 then
		
			return true
			
		end
	
	end

	return false

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