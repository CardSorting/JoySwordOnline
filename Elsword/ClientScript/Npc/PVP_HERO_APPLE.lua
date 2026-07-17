-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ / 2011/5/11 / 고대 나소드 공주 애플/
	 
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
		"ColorBallGray.dds",
		"ColorBallFire.dds",
		"smoke02.dds",
		"DarkCloud02.dds",
		"Arme_Damage_Center.dds",
		"Lightning_Piercing02.dds",
		"ColorBallGray.dds",
		"Arme_Ring2.dds",
		"Explosion_Sphere.dds",
		"GroundShockWave.dds",
		"Lire_Kick_Impact01.dds",
		"Nasod_King_Laser03.dds",
		"GuideArrow02.dds",
		"ColorBallGray.dds",
		"Mesh_ASSUALT_SPEAR.tga",
		"APPLE_Guardian_Ophelia_Face.tga",
		"APPLE_Guardian_Ophelia_Lowbody.tga",
		"APPLE_Guardian_Ophelia_Upbody.tga",
		"GUARDIAN_APPLE_Hair.tga",
		"GUARDIAN_APPLE_Hand.tga",
		"GUARDIAN_APPLE_Lowbody.tga",
		"GUARDIAN_APPLE_Upbody.tga",
	},
	READY_SOUND =
	{
		"Step.ogg",
		"Eve_Attack1.ogg",
		"Eve_Attack2.ogg",
		"Eve_Attack5.ogg",
		"Eve_Attack6.ogg",
		"Eve_Attack7.ogg",
		"EveVoice_Shout04.ogg",
		"EveVoice_Shout10.ogg",
		"EveVoice_Shout12.ogg",
		"EveVoice_Shout14.ogg",
		"Eve_CheekAttack.ogg",
		"Eve_Guardian_Disappear2.ogg",
		"Eve_Guardian_Voice1.ogg",
		"Eve_Conversion.ogg",
		"Eve_MEB_Mega_Electronball.ogg",
		"Eve_EP_Spit_Fire.ogg",
		"Eve_SpaceWrench.ogg",
		"EveVoice_SpaceWrench.ogg",
		"Energy.ogg",
		"EveVoice_AssualtSpear.ogg",
		"Eve_AssualtSpear_Ready.ogg",
		"Eve_AssualtSpear_Shot.ogg",
		"Eve_AssualtSpear_Explosion.ogg",
		"Eve_Guardian_Disappear3.ogg",
		"EveVoice_HeavensFist.ogg",
		"Eve_HeavensFist.ogg",
		"EveVoice_ElectronicField.ogg",
		"Eve_EP_Ele_Field.ogg",
		"Slash.ogg",
		"Break.ogg",
		"Change.ogg",
		"EveVoice_DamageScream01.ogg",
		"EveVoice_DamageScream02.ogg",
		"EveVoice_DamageScream03.ogg",
		"Down.ogg",
		"EveVoice_DieScream1.ogg",
		"DieLight.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
		"Eve_Barrier_SideLine01.Y",
		"Eve_Barrier_Plane01.Y",
		"Eve_Barrier01.Y",
		"Lightning_Liner01.Y",
	},	
	READY_XSKIN_MESH = 
	{
		"Eve_AT_ComboZ5a_Mesh.X",
		"Eve_AT_ComboX5a_mesh.X",
		"Eve_Guardian_BladeWave01.X",
		"Eve_AT_DashComboZ2_mesh.X",
		"Eve_SI_A_Oberon_Guard_Oberon_Mesh01.x",
		"Eve_Guardian_BladeWave01.X",
		"Eve_EP_DashComboZ3_Mesh01.X",
		"Eve_EP_DashComboZ3_Mesh02.X",
		"Eve_EP_JumpAttackZX_Mesh02.X",
		"Eve_EP_ComboX2DX_Mesh01.X",
		"Eve_EP_ComboX2DX_Mesh02.X",
		"Eve_EP_Grenade_Mesh01.X",
		"Eve_EP_SI_SA_Electronic_Field_Mesh01.X",
		"Eve_EP_SI_SA_Spit_Fire_Mesh01.X",
		"Eve_EP_SI_SA_Spit_Fire_Mesh02.X",
		"Sp2a_Oberon01.X",
		"Sp2a_Ophelia01.X",
		"Sp2a_Spear.X",
		"Sp2a_Spear_Explosion.X",
		"Sp2a_Spear_Fly.X",
		"Sp2a_Spear_Ready.X",
		"SI_SA_EAT_HEAVENS_FIST_Effect_King_Hand.X",
		"SI_SA_EAT_HEAVENS_FIST_Effect_Light01.X",
		"SI_SA_EAT_HEAVENS_FIST_Effect_Light02.X",
		"SI_SA_EAT_HEAVENS_FIST_Effect_Bottom_Light.X",
		"SI_SA_EAT_HEAVENS_FIST_Effect_Hole.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_APPLE.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -3500,
	
	-- 이속/점속이 +10% 입니다.
	WALK_SPEED			= 500*1.1,
	RUN_SPEED			= 725*1.1,
	JUMP_SPEED			= 1500*1.1,
	--DASH_JUMP_SPEED		= 2200,
	DASH_JUMP_SPEED		= 450*1.1,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	-- 최대 MP가 400이고 초당 MP3.5가 회복됩니다.
	MP_CHANGE_RATE		= 2.5,
	MP_CHARGE_RATE		= 400,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = FALSE,
	
	-- 기본 속도가 22% 증가로 유저보다 빠릅니다.
	DEFAULT_ANIM_SPEED = 1.22,
	
	HYPER_MODE_COUNT	= 3,
	MAX_HYPER_MODE_TIME	= 30,
	
	
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
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Eve_Cash_Weapon_Sorted_A.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Eve_Cash_Weapon_Sorted_B.X",
		WEAPON_BONE_NAME			= "Dummy2_Lhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 고대 나소드 공주 애플는 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_APPLE_START",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_START_FRAME_MOVE"			},
	
	-- 승리모션입니다. 고대 나소드 공주 애플는 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_APPLE_WIN",							},
    { STATE_NAME = "PVP_BOT_APPLE_WIN2",							},
	
	-- 승리모션입니다. 고대 나소드 공주 애플는 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_APPLE_LOSE",							},
    { STATE_NAME = "PVP_BOT_APPLE_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_APPLE_WAIT",							},
	-- 기상 시 무적상태를 만들어 주는 wait 스테이트 입니다.
	{ STATE_NAME = "PVP_BOT_APPLE_STANDUP_WAIT",							},

	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_APPLE_WALK",							},
    { STATE_NAME = "PVP_BOT_APPLE_DASH",							},
    { STATE_NAME = "PVP_BOT_APPLE_FLIP_DIR",						},
    { STATE_NAME = "PVP_BOT_APPLE_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_APPLE_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_APPLE_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_APPLE_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지, 2단 점프) 입니다.
	{ STATE_NAME = "PVP_BOT_APPLE_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_APPLE_DOUBLE_JUMP_UP",						},
	--{ STATE_NAME = "PVP_BOT_APPLE_JUMP_FRONT_DASH",						},
	{ STATE_NAME = "PVP_BOT_APPLE_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_APPLE_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_APPLE_JUMP_DOWN_ACT",						LUA_STATE_END_FUNC = "PVP_BOT_APPLE_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_APPLE_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_APPLE_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_APPLE_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_APPLE_JUMP_LANDING",					},
	
	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_APPLE_ComboZ",							},
	{ STATE_NAME = "PVP_BOT_APPLE_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_APPLE_ComboZZZ",						},
	
	-- zzz↓z 콤보
	{ STATE_NAME = "PVP_BOT_APPLE_ComboZZZdownZ",						},
	{ STATE_NAME = "PVP_BOT_APPLE_ComboZZZdownZZ",						},
	
	-- zzzx 콤보
	{ STATE_NAME = "PVP_BOT_APPLE_ComboZZZX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_ComboZZZX_FRAME_MOVE",				},
	
	-- XXZ, XXdownX 콤보
	{ STATE_NAME = "PVP_BOT_APPLE_ComboX",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_ComboX_FRAME_MOVE",							},
	{ STATE_NAME = "PVP_BOT_APPLE_ComboXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_ComboXX_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_APPLE_ComboXXZ",				},
	{ STATE_NAME = "PVP_BOT_APPLE_ComboXXdownX",				},
	
	-- 대시점프 Z
	{ STATE_NAME = "PVP_BOT_APPLE_DashJump",						},
	{ STATE_NAME = "PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",			},
	{ STATE_NAME = "PVP_BOT_APPLE_FRONT_DASH_A",						},
	{ STATE_NAME = "PVP_BOT_APPLE_FRONT_DASH_B",						},
	--{ STATE_NAME = "PVP_BOT_APPLE_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_APPLE_DashJumpComboZ",						},
	{ STATE_NAME = "PVP_BOT_APPLE_DashJumpComboZZ",							},
	{ STATE_NAME = "PVP_BOT_APPLE_DashJumpComboZZZ",							},

	-- 대시 zzz 콤보
	{ STATE_NAME = "PVP_BOT_APPLE_FLIP_DashComboZ",							},
	{ STATE_NAME = "PVP_BOT_APPLE_DashComboZ",							},
	{ STATE_NAME = "PVP_BOT_APPLE_DashComboZZ",					},
	{ STATE_NAME = "PVP_BOT_APPLE_DashComboZZZ",					},
	
	-- 점프 z 공격
	{ STATE_NAME = "PVP_BOT_APPLE_JumpZ",										},
		
	-- 점프 x 공격 
	{ STATE_NAME = "PVP_BOT_APPLE_JumpX",					},
		
	-- HP소모가 없는 마력전환을 시전합니다.
	{ STATE_NAME = "PVP_BOT_APPLE_MP_CONVERSION",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_MP_CONVERSION_FRAME_MOVE",			STATE_COOL_TIME = 15,					},
	
	-- 노차지 풀충전 메가 일렉트론볼을 시전합니다.
	{ STATE_NAME = "PVP_BOT_APPLE_MEGA_ELECTRONBALL",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_MEGA_ELECTRONBALL_FRAME_MOVE",			STATE_COOL_TIME = 7,					},
	
	-- 스핏파이어를 시전합니다.
	{ STATE_NAME = "PVP_BOT_APPLE_SPIT_FIRE",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_SPIT_FIRE_FRAME_MOVE",			STATE_COOL_TIME = 7,					},
	
	-- 오베론 가드를 시전합니다.
	{ STATE_NAME = "PVP_BOT_APPLE_OBERON_GUARD",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_OBERON_GUARD_FRAME_MOVE",			STATE_COOL_TIME = 10,					},
	
	-- 헤븐즈 피스트!
	{ STATE_NAME = "PVP_BOT_APPLE_Heavens_Fist",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_Heavens_Fist_FRAME_MOVE",			STATE_COOL_TIME = 30,					},
	
	-- 스페이스 렌치!
	{ STATE_NAME = "PVP_BOT_APPLE_SPACE_WRENCH",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_SPACE_WRENCH_FRAME_MOVE",			STATE_COOL_TIME = 10,					},
	
	-- 어설트 스피어!
	{ STATE_NAME = "PVP_BOT_APPLE_Assault_Spear",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_Assault_Spear_FRAME_MOVE",			STATE_COOL_TIME = 10,					},
	
	-- 일렉트로닉 필드!
	{ STATE_NAME = "PVP_BOT_APPLE_ELECTRONIC_FIELD",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_ELECTRONIC_FIELD_FRAME_MOVE",			STATE_COOL_TIME = 7,					},
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_APPLE_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_BOOST_POWER_FRAME_MOVE"	},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_APPLE_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_APPLE_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_APPLE_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_APPLE_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_APPLE_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_APPLE_DAMAGE_REVENGE",				},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 		},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_APPLE_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_APPLE_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_APPLE_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_APPLE_DYING_LAND_STATE_START",			},

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_APPLE_START",
	WAIT_STATE					= "PVP_BOT_APPLE_WAIT",
	WIN_STATE					= "PVP_BOT_APPLE_WIN",
	LOSE_STATE					= "PVP_BOT_APPLE_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_APPLE_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_APPLE_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_APPLE_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_APPLE_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_APPLE_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_APPLE_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_APPLE_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_APPLE_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_APPLE_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_APPLE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_APPLE_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_APPLE_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_APPLE_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "PVP_BOT_APPLE_DAMAGE_AIR_DOWN","PVP_BOT_APPLE_DAMAGE_AIR_FALL","PVP_BOT_APPLE_STAND_UP_FRONT","PVP_BOT_APPLE_STAND_UP_BACK",
	"PVP_BOT_APPLE_JUMP_DOWN","PVP_BOT_APPLE_JUMP_LANDING",},	

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_APPLE_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_APPLE_DYING_BACK",
	DYING_SKY					= "PVP_BOT_APPLE_DYING_FRONT",

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
PVP_BOT_APPLE_WIN =
{
	ANIM_NAME					= "EP_Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },
	

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12513 },
		{ RATE = 30, MESSAGE = STR_ID_12514 },
		{ RATE = 30, MESSAGE = STR_ID_12515 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Eve_EP_Win_for_BOT", 0, 
	},	
}

--------------------------------------------------------------------------
PVP_BOT_APPLE_WIN2 =
{
	ANIM_NAME					= "EP_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },
	

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12513 },
		{ RATE = 30, MESSAGE = STR_ID_12514 },
		{ RATE = 30, MESSAGE = STR_ID_12515 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	NORMAL_CAMERA0_RATE			= 0,
	NORMAL_CAMERA1_RATE			= 50,
	NORMAL_CAMERA2_RATE			= 50,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Eve_EP_Win2_for_BOT", 0, 
	},		
}

PVP_BOT_APPLE_LOSE =
{
	ANIM_NAME					= "EP_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_Eve_EP_Lose_for_BOT", 0, 
	},
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12516 },
		{ RATE = 33, MESSAGE = STR_ID_12517 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_APPLE_LOSE2 =
{
	ANIM_NAME					= "EP_Lose2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_Eve_EP_Lose2_for_BOT", 0,
	},
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12516 },
		{ RATE = 33, MESSAGE = STR_ID_12517 },
	},

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
		
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_APPLE_START =
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
		

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_WAIT",		"CT_PVP_BOT_APPLE_WAIT"	},
	},
	CT_PVP_BOT_APPLE_WAIT =
	{
		STATE_TIME_OVER	= 4.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_WAIT =
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
	
	-- 0.5초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_WAIT",	"CF_PVP_BOT_APPLE_AI_TICK",										},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_BOOST_POWER",	"CF_PVP_BOT_APPLE_BOOST_POWER",									},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR2",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR3",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_Assault_Spear",				"CF_PVP_BOT_APPLE_ASSAULT_SPEAR",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_ComboZ",     				"CF_PVP_BOT_APPLE_COMBO_ENTRY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_ComboX",     				"CF_PVP_BOT_APPLE_COMBO_X_CLOSE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_ComboX",     				"CF_PVP_BOT_APPLE_COMBO_X_RANGE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_Heavens_Fist",     			"CF_PVP_BOT_APPLE_HEAVENS_FIST",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_SPACE_WRENCH",     			"CF_PVP_BOT_APPLE_SPACE_WRENCH",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_OBERON_GUARD",     			"CF_PVP_BOT_APPLE_OBERON_GUARD",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_MEGA_ELECTRONBALL",     		"CF_PVP_BOT_APPLE_MEGA_ELECTRONBALL",     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_MP_CONVERSION",     			"CF_PVP_BOT_APPLE_MP_CONVERSION",          },
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DashComboZ",     			"CF_PVP_BOT_APPLE_DASH_CATCH",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WALK",         				"CT_PVP_BOT_APPLE_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DASH",         				"CF_PVP_BOT_APPLE_ADVANCE",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP",         			"CT_PVP_BOT_APPLE_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DashJump",          			"CF_PVP_BOT_APPLE_AERIAL_ENTRY",      			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",   "CF_PVP_BOT_APPLE_AERIAL_COMBO",      			},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CF_PVP_BOT_APPLE_BACKWARD_DASH",   	},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_APPLE_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_APPLE_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_APPLE_JUMP_DOWN_DIR",															},

		
	},

	
	-- 공격은 강렬하게!
	
	CT_PVP_BOT_APPLE_Assault_Spear =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR2 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		RATE						= 50,
	},	
	CT_PVP_BOT_APPLE_JUMP_UP_DIR3 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		RATE						= 15,
	},	
	CT_PVP_BOT_APPLE_SPACE_WRENCH =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	CT_PVP_BOT_APPLE_Heavens_Fist =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_OBERON_GUARD =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 45,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_MP_CONVERSION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 650,	
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_APPLE_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 60,
	},
	
	CT_PVP_BOT_APPLE_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 25,
	},
	
	CT_PVP_BOT_APPLE_ComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 550,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 80,
	},
	
	CT_PVP_BOT_APPLE_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 750,
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 25,
	},	
	CT_PVP_BOT_APPLE_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 25,
	},			
	CT_PVP_BOT_APPLE_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		SAME_LINE_WITH_TARGET		= TRUE,
		RATE						= 20,
	},	
	CT_PVP_BOT_APPLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_STANDUP_WAIT =
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
	
	-- 0.5초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_STANDUP_WAIT",	"CF_PVP_BOT_APPLE_AI_TICK",								},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_BOOST_POWER",	"CF_PVP_BOT_APPLE_BOOST_POWER",									},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR2",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR3",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_Assault_Spear",				"CF_PVP_BOT_APPLE_ASSAULT_SPEAR",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_ComboZ",     				"CF_PVP_BOT_APPLE_COMBO_ENTRY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_ComboX",     				"CF_PVP_BOT_APPLE_COMBO_X_CLOSE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_ComboX",     				"CF_PVP_BOT_APPLE_COMBO_X_RANGE",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_Heavens_Fist",     			"CF_PVP_BOT_APPLE_HEAVENS_FIST",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_SPACE_WRENCH",     			"CF_PVP_BOT_APPLE_SPACE_WRENCH",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_OBERON_GUARD",     			"CF_PVP_BOT_APPLE_OBERON_GUARD",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_MEGA_ELECTRONBALL",     		"CF_PVP_BOT_APPLE_MEGA_ELECTRONBALL",     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_MP_CONVERSION",     			"CF_PVP_BOT_APPLE_MP_CONVERSION",          },
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DashComboZ",     			"CF_PVP_BOT_APPLE_DASH_CATCH",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WALK",         				"CT_PVP_BOT_APPLE_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DASH",         				"CF_PVP_BOT_APPLE_ADVANCE",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP",         			"CT_PVP_BOT_APPLE_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DashJump",          			"CF_PVP_BOT_APPLE_AERIAL_ENTRY",      			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",   "CF_PVP_BOT_APPLE_AERIAL_COMBO",      			},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"], "PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CF_PVP_BOT_APPLE_BACKWARD_DASH",   	},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_APPLE_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_APPLE_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_APPLE_JUMP_DOWN_DIR",															},

		
	},

	
	-- 공격은 강렬하게!
	
	CT_PVP_BOT_APPLE_Assault_Spear =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR2 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		RATE						= 50,
	},	
	CT_PVP_BOT_APPLE_JUMP_UP_DIR3 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		RATE						= 15,
	},	
	CT_PVP_BOT_APPLE_SPACE_WRENCH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	CT_PVP_BOT_APPLE_Heavens_Fist =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		DISTANCE_OVER_TARGET_NEAR	= 300,
		SAME_LINE_WITH_TARGET		= TRUE,
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_OBERON_GUARD =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 45,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_MP_CONVERSION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 650,	
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_APPLE_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 60,
	},
	
	CT_PVP_BOT_APPLE_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 25,
	},
	
	CT_PVP_BOT_APPLE_ComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 550,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,
		RATE						= 80,
	},
	
	CT_PVP_BOT_APPLE_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 750,
		RATE						= 25,
	},	
	CT_PVP_BOT_APPLE_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 25,
	},			
	CT_PVP_BOT_APPLE_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},	
	CT_PVP_BOT_APPLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_WALK =
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


	-- 0.3초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",													},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_APPLE_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_APPLE_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",																},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_APPLE_JUMP_DOWN_DIR",															},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR2",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR3",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"PVP_BOT_APPLE_Assault_Spear",				"CT_PVP_BOT_APPLE_Assault_Spear",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_ComboZ",     				"CT_PVP_BOT_APPLE_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_ComboX",     				"CT_PVP_BOT_APPLE_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_ComboX",     				"CT_PVP_BOT_APPLE_ComboX2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_Heavens_Fist",     			"CT_PVP_BOT_APPLE_Heavens_Fist",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_SPACE_WRENCH",     			"CT_PVP_BOT_APPLE_SPACE_WRENCH",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_OBERON_GUARD",     			"CT_PVP_BOT_APPLE_OBERON_GUARD",     			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_MEGA_ELECTRONBALL",     		"CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_MP_CONVERSION",     			"CT_PVP_BOT_APPLE_MP_CONVERSION",          },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashComboZ",     			"CT_PVP_BOT_APPLE_DashComboZ",           	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WALK",         				"CT_PVP_BOT_APPLE_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DASH",         				"CT_PVP_BOT_APPLE_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP_DIR",         		"CT_PVP_BOT_APPLE_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_JUMP_UP",         			"CT_PVP_BOT_APPLE_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashJump",          			"CT_PVP_BOT_APPLE_DashJump",      			},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",   "CT_PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",      			},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CT_PVP_BOT_APPLE_BACKWARD_DASH_READY",   },
		
	},

	
	-- 공격은 강렬하게!
	
	CT_PVP_BOT_APPLE_Assault_Spear =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR2 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 600,	
		RATE						= 50,
	},	
	CT_PVP_BOT_APPLE_SPACE_WRENCH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR3 =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		RATE						= 15,
	},	
	CT_PVP_BOT_APPLE_Heavens_Fist =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		DISTANCE_OVER_TARGET_NEAR	= 300,
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_OBERON_GUARD =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 45,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET		= TRUE,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_MP_CONVERSION =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		-- SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_APPLE_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 60,
	},
	
	CT_PVP_BOT_APPLE_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		MY_MP_MORE_THAN				= 60,
		RATE						= 25,
	},
	
	CT_PVP_BOT_APPLE_ComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_OVER_TARGET_NEAR	= 550,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 850,
		RATE						= 80,
	},
	
	CT_PVP_BOT_APPLE_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		SAME_LINE_WITH_TARGET		= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 750,
		RATE						= 25,
	},	
	CT_PVP_BOT_APPLE_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 25,
	},			
	CT_PVP_BOT_APPLE_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},	
	CT_PVP_BOT_APPLE_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
		
}

--------------------------------------------------------------------------
PVP_BOT_APPLE_DASH =
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


	-- 0.3초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.3,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",													},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_APPLE_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP_DIR",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_APPLE_DashJump",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_APPLE_JUMP_DOWN_DIR",														},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CT_PVP_BOT_APPLE_BACKWARD_DASH_READY",   },
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"PVP_BOT_APPLE_Assault_Spear",				"CT_PVP_BOT_APPLE_Assault_Spear",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashComboZ",     			"CT_PVP_BOT_APPLE_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",   "CT_PVP_BOT_APPLE_DashJump_for_DashJumpZZZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashJump",          		"CT_PVP_BOT_APPLE_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashJump",          		"CT_PVP_BOT_APPLE_DashJump2",      		},
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DASH_END",          		"CT_PVP_BOT_APPLE_DASH_END",      		},
		
	},
	
	
	CT_PVP_BOT_APPLE_Assault_Spear =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_APPLE_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		-- RATE						= 40,
		RATE						= 100,
	},
			
	CT_PVP_BOT_APPLE_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 80,
	},
		
	CT_PVP_BOT_APPLE_SPACE_WRENCH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
	
	CT_PVP_BOT_APPLE_DashJump_for_DashJumpZZZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 33,
	},
		
	CT_PVP_BOT_APPLE_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	
	CT_PVP_BOT_APPLE_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_APPLE_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 80,
	},
}

-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_APPLE_BACKWARD_DASH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_BACKWARD_DASH",	"CT_PVP_BOT_APPLE_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_APPLE_BACKWARD_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_APPLE_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_APPLE_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY5",       	     	},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashJump",          		"CT_PVP_BOT_APPLE_DashJump",      		},
		
	},
	
				
	CT_PVP_BOT_APPLE_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 80,
	},
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 5,
	},
	CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 699,
		DISTANCE_OVER_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 899,
		DISTANCE_OVER_TARGET_NEAR		= 700,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 999,
		DISTANCE_OVER_TARGET_NEAR		= 900,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_TO_TARGET_NEAR		= 2000,
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	

}

PVP_BOT_APPLE_BACKWARD_DASH_FINISH_READY = 
{

	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_WAIT",	"CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_APPLE_BACKWARD_DASH_FINISH = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_DashJump",	"CF_PVP_BOT_CHECK_BACK_ESCAPE",									},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",     "CT_PVP_BOT_APPLE_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",     "CT_PVP_BOT_APPLE_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",     "CT_PVP_BOT_APPLE_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DASH",     "CT_PVP_BOT_APPLE_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_APPLE_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 70,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_APPLE_DASH =
	{
		ANIM_EVENT_TIMER			= 0.4,
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
PVP_BOT_APPLE_DASH_END =
{
	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",			},
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
PVP_BOT_APPLE_JUMP_UP =
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

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_DOUBLE_JUMP_UP",         "CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_MEGA_ELECTRONBALL",      "CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpZ",          		"CT_PVP_BOT_APPLE_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpX",          		"CT_PVP_BOT_APPLE_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_A",          	"CT_PVP_BOT_APPLE_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.3,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_APPLE_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 250,
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
}

--------------------------------------------------------------------------
PVP_BOT_APPLE_DOUBLE_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	
	SPEED_X			= 0,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_MEGA_ELECTRONBALL",      "CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpZ",          		"CT_PVP_BOT_APPLE_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpX",          		"CT_PVP_BOT_APPLE_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_A",          	"CT_PVP_BOT_APPLE_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_JUMP_DOWN",		},
	},
	
	CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.1,
		DISTANCE_OVER_TARGET_NEAR	= 150,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_APPLE_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 250,
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
}

PVP_BOT_APPLE_JUMP_DOWN =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X = 0,


	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
}
PVP_BOT_APPLE_JUMP_DOWN_ACT =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X = 0,


	IMMADIATE_PACKET_SEND		= TRUE,

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_DOUBLE_JUMP_UP",         "CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_MEGA_ELECTRONBALL",      "CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpZ",          		"CT_PVP_BOT_APPLE_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpX",          		"CT_PVP_BOT_APPLE_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_A",          	"CT_PVP_BOT_APPLE_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.3,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_APPLE_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 250,
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_JUMP_UP_DIR =
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

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_DOUBLE_JUMP_UP",         "CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_MEGA_ELECTRONBALL",      "CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpZ",          		"CT_PVP_BOT_APPLE_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpX",          		"CT_PVP_BOT_APPLE_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_A",          	"CT_PVP_BOT_APPLE_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.1,
		DISTANCE_OVER_TARGET_NEAR	= 150,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_APPLE_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 250,
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_JUMP_DOWN_DIR =
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_DOUBLE_JUMP_UP",         "CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_MEGA_ELECTRONBALL",      "CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpZ",          		"CT_PVP_BOT_APPLE_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpX",          		"CT_PVP_BOT_APPLE_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_A",          	"CT_PVP_BOT_APPLE_FRONT_DASH_A",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_APPLE_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.3,
		DISTANCE_OVER_TARGET_NEAR	= 300,
		EVENT_INTERVAL_ID			= 0,
		TARGET_ABOVE_ME 			= TRUE,
		-- TARGET_BELOW_ME = TRUE, 
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		MY_MP_MORE_THAN				= 50,
		RATE						= 33,
	},
	CT_PVP_BOT_APPLE_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 250,
		TARGET_ABOVE_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		TARGET_BELOW_ME 			= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_A =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_JUMP_LANDING =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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

PVP_BOT_APPLE_DashJump = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ADD_POS_Y		= 45,
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 850,
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",	"CT_PVP_BOT_APPLE_JUMP_DOWN",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",	"CT_PVP_BOT_APPLE_JUMP_DOWN2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZ",	"CT_PVP_BOT_APPLE_DashJumpComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_APPLE_JUMP_DOWN =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_APPLE_JUMP_DOWN2 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_DashJumpComboZ =
	{
		TARGET_BELOW_ME 			= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 30,
	},
}
PVP_BOT_APPLE_DashJump_for_DashJumpZZZ = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ADD_POS_Y		= 45,
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 850,
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_FRONT_DASH_A",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZ",	"CT_PVP_BOT_APPLE_DashJumpComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",	"CT_PVP_BOT_APPLE_JUMP_DOWN",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",	"CT_PVP_BOT_APPLE_JUMP_DOWN2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",	"CT_PVP_BOT_APPLE_JUMP_DOWN3",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
	CT_PVP_BOT_APPLE_JUMP_DOWN =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_APPLE_JUMP_DOWN2 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_APPLE_JUMP_DOWN3 =
	{
		STATE_TIME_OVER				= 0.5,
	},
	CT_PVP_BOT_APPLE_DashJumpComboZ =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
-- 유저처럼 잠깐 텀을 두고(키 입력 사이)소폭 낙하합니다.
PVP_BOT_APPLE_FRONT_DASH_A = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },


	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_JumpX",          	"CT_PVP_BOT_APPLE_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_B",          	"CT_PVP_BOT_APPLE_FRONT_DASH_B",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_APPLE_FRONT_DASH_B",          	"CT_PVP_BOT_APPLE_FRONT_DASH_B2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_APPLE_JumpX =
	{
		DISTANCE_TO_TARGET_NEAR		= 400,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_B =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	CT_PVP_BOT_APPLE_FRONT_DASH_B2 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_APPLE_FRONT_DASH_B = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X = 1200,
	PASSIVE_SPEED_Y = 1,
		
	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_END = 100,

	-- 0.3초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZ",	"CT_PVP_BOT_APPLE_DashJumpComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZ",	"CT_PVP_BOT_APPLE_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_JUMP_DOWN_ACT",	"CT_PVP_BOT_APPLE_JUMP_DOWN",	},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_JumpX",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	CT_PVP_BOT_APPLE_DashJumpComboZ =
	{
		DISTANCE_TO_TARGET_NEAR		= 300,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 70,
	},
	CT_PVP_BOT_APPLE_DashJumpComboZ2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 450,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_APPLE_JUMP_DOWN =
	{
		DISTANCE_OVER_TARGET_NEAR	= 300,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
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

-- 대시점프 z 입니다.

-- 지상에서 바로 사용합니다.
PVP_BOT_APPLE_DashJump_for_DashJumpZZZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	ATTACK_TIME0		= { 0.1, 0.3, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 1200.0,

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
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 400,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 50,
		
		FORCE_DOWN			= 18,
	},	 

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZZ",	"CT_PVP_BOT_APPLE_DashJumpComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_APPLE_DashJumpComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
}

PVP_BOT_APPLE_DashJumpComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	ATTACK_TIME0		= { 0.1, 0.3, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 500.0,

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
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 400,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 50,
		
		FORCE_DOWN			= 18,
	},	 

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZZ",	"CT_PVP_BOT_APPLE_DashJumpComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_APPLE_DashJumpComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
}

PVP_BOT_APPLE_DashJumpComboZZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	ATTACK_TIME0		= { 0.133, 0.266, },
	
	SPEED_X				= 200.0,
	SPEED_Y				= 700.0,

    SOUND_PLAY0			= { 0.149, "Eve_Attack6.ogg" },

	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 400,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 50,
	},	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashJumpComboZZZ",	"CT_PVP_BOT_APPLE_DashJumpComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_APPLE_DashJumpComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_APPLE_DashJumpComboZZZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0.01, 0.36, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.36, 1, 1 },
	ATTACK_TIME0		= { 0.2, 0.333, },
	
	SPEED_X				= 200.0,
	SPEED_Y				= 600.0,
	

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
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= -1000,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 200,
	},	
	
	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
}

-- 뒤로 돌며 오베론 가드 공격을 합니다.

PVP_BOT_APPLE_FLIP_DIR = {

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_OBERON_GUARD",	"CT_PVP_BOT_APPLE_OBERON_GUARD",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_WAIT",	"CT_PVP_BOT_APPLE_WAIT",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_OBERON_GUARD =
	{
		ANIM_EVENT_TIMER			= 0.04,
		MY_MP_MORE_THAN				= 30,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

-- 뒤로 돌며 대시z 공격을 합니다.

PVP_BOT_APPLE_FLIP_DashComboZ = {

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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashComboZ",	"CT_PVP_BOT_APPLE_DashComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_WAIT",	"CT_PVP_BOT_APPLE_WAIT",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_DashComboZ =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
-- zzzz 콤보 입니다.
PVP_BOT_APPLE_ComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	
	ATTACK_TIME0		= { 0.13, 0.2 },

	VIEW_TARGET					= TRUE,
	
	
    SOUND_PLAY0			= { 0.138, "Eve_Attack1.ogg" },
 	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

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
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= 600,
		
        		
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		TECH_POINT				= 20,
		
		FORCE_DOWN			= 9,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZZ",	"CT_PVP_BOT_APPLE_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_BACKWARD_DASH_READY", 		"CT_PVP_BOT_APPLE_BACKWARD_DASH_READY",  	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_BACKWARD_DASH_READY",		},
	},
	
	CT_PVP_BOT_APPLE_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.235,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_APPLE_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.5,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_APPLE_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	
	ATTACK_TIME0		= { 0.2, 0.3 },
	
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
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= 600,
		
		
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		TECH_POINT				= 20,
		
		FORCE_DOWN			= 7,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"PVP_BOT_APPLE_BACKWARD_DASH_READY",	"CF_PVP_BOT_APPLE_COMBO_RESET",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZZZ",	"CT_PVP_BOT_APPLE_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_BACKWARD_DASH_READY",		},
	},
	
	CT_PVP_BOT_APPLE_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.35,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_APPLE_ComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },

    SOUND_PLAY0			= { 0.293, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.296, "Eve_Attack2.ogg" },
	
	ATTACK_TIME0		= { 0.3, 0.4 },
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= 600,
		
		
		
		STOP_TIME_ATT			= 0.05,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		FORCE_DOWN			= 15,
		
		TECH_POINT				= 75,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_FLIP_DIR", 	"CT_PVP_BOT_APPLE_FLIP_DIR", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPIT_FIRE", 	"CT_PVP_BOT_APPLE_SPIT_FIRE", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_MEGA_ELECTRONBALL", 	"CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZZZX", 	"CT_PVP_BOT_APPLE_ComboZZZX", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZZZdownZ", 	"CT_PVP_BOT_APPLE_ComboZZZdownZ", 	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_BACKWARD_DASH_READY",		},
	},
	
	CT_PVP_BOT_APPLE_FLIP_DIR =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 7,
	},
	CT_PVP_BOT_APPLE_SPIT_FIRE =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 40,
		RATE						= 60,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 40,
		RATE						= 60,
	},
	CT_PVP_BOT_APPLE_ComboZZZX =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		RATE						= 75,
	},
	CT_PVP_BOT_APPLE_ComboZZZdownZ =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}



PVP_BOT_APPLE_ComboZZZdownZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4Down",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	
	IS_ATTACK_STATE		= TRUE,
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	
	SPEED_X				= 900,				-- fix!! test 앞으로 밀기 테스트
		
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_ZZZdownZ", 0.351,
	},		
	
    SOUND_PLAY0			= { 0.412, "Eve_Attack2.ogg" },
    SOUND_PLAY1			= { 0.120, "EveVoice_Shout12.ogg" },

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZZZdownZZ", 	"CT_PVP_BOT_APPLE_ComboZZZdownZZ", 	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_ComboZZZdownZZ =
	{
		ANIM_EVENT_TIMER			= 0.57,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}

PVP_BOT_APPLE_ComboZZZdownZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ5Down",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	
	IS_ATTACK_STATE		= TRUE,
	
	
	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },

	SPEED_X				= 0,

    SOUND_PLAY0			= { 0.291, "Eve_Attack1.ogg" },
    SOUND_PLAY1			= { 0.121, "EveVoice_Shout04.ogg" },

	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EEP_ZZZdownZZ", 0.001,
	},		
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_MEGA_ELECTRONBALL",	"CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPACE_WRENCH",	"CT_PVP_BOT_APPLE_SPACE_WRENCH",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_Assault_Spear",	"CT_PVP_BOT_APPLE_Assault_Spear",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_APPLE_Assault_Spear =
	{
		ANIM_EVENT_TIMER			= 0.75,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 5,
	},
	CT_PVP_BOT_APPLE_SPACE_WRENCH =
	{
		ANIM_EVENT_TIMER			= 0.75,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 200,
		RATE						= 10,
	},
}


PVP_BOT_APPLE_ComboZZZX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 1000,
	SPEED_Y				= 0,


	
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
		
		
        CRITICAL_RATE			= 0.25,
		
		
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPIT_FIRE",	"CT_PVP_BOT_APPLE_SPIT_FIRE",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_MEGA_ELECTRONBALL",	"CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	CT_PVP_BOT_APPLE_SPIT_FIRE =
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		DISTANCE_TO_TARGET_NEAR		= 450,	
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	
}

-- xxx 콤보입니다.
PVP_BOT_APPLE_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX1",
	ANIM_SPEED			= 1.2,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	IS_ATTACK_STATE		= TRUE,

	VIEW_TARGET					= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboXX",	"CT_PVP_BOT_APPLE_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_BACKWARD_DASH_READY",		},
	},
	
	
	CT_PVP_BOT_APPLE_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.4,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_APPLE_ComboXX =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboXXZ",	"CT_PVP_BOT_APPLE_ComboXXZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboXXdownX",	"CT_PVP_BOT_APPLE_ComboXXdownX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_BACKWARD_DASH_READY",		},
	},
	
	CT_PVP_BOT_APPLE_ComboXXZ =
	{
		ANIM_EVENT_TIMER			= 0.55,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_APPLE_ComboXXdownX =
	{
		ANIM_EVENT_TIMER			= 0.55,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_APPLE_ComboXXZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "AT_ComboX3a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= TRUE,
	
	IS_ATTACK_STATE		= TRUE,

    SOUND_PLAY0			= { 0.06, "Eve_Guardian_Disappear2.ogg" },
    SOUND_PLAY1			= { 0.001, "Eve_Guardian_Voice1.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EEP_COMBO_XXZ", 0.001,
	},		
	
	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_BACKWARD_DASH_READY",		},
	},
	
	
}

PVP_BOT_APPLE_ComboXXdownX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "EP_ComboX2DownX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	EFFECT_SET_LIFE_TIME = 2.0,
	DELETE_EFFECT_SET_ON_STATE_END = FALSE, 
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_HERO_APPLE_XXdownX", 0.001,
	},		
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ELECTRONIC_FIELD",	"CT_PVP_BOT_APPLE_ELECTRONIC_FIELD",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPIT_FIRE",	"CT_PVP_BOT_APPLE_SPIT_FIRE",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_MEGA_ELECTRONBALL",	"CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		 	"PVP_BOT_APPLE_ComboZ",     				"CT_PVP_BOT_APPLE_ComboZ",   	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 		"PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CT_PVP_BOT_APPLE_BACKWARD_DASH_READY",   	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_ELECTRONIC_FIELD =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 30,
	},
	
	CT_PVP_BOT_APPLE_BACKWARD_DASH_READY =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
	CT_PVP_BOT_APPLE_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 50,
	},
		
	CT_PVP_BOT_APPLE_SPIT_FIRE =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 50,
		RATE						= 40,
	},
	
}

	
-- 점프z 공격입니다.
PVP_BOT_APPLE_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	SPEED_Y				= 400.0,
	
	VIEW_TARGET					= TRUE,
	
	SLASH_TRACE0		= { 0.01, 0.47, 0, 1 },
	SLASH_TRACE1		= { 0.01, 0.47, 1, 1 },

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
		
        CRITICAL_RATE			= 0.25,
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		
		FORCE_DOWN			= 15,
		
		TECH_POINT				= 20,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
}

-- 점프x 공격입니다.
PVP_BOT_APPLE_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	
	SPEED_Y				= 500.0,

	SLASH_TRACE0		= { 0.01, 1.0, 0, 2 },
	SLASH_TRACE1		= { 0.01, 1.0, 1, 2 },

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
		
        CRITICAL_RATE			= 0.25,
		
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_JUMP_LANDING",	},
	},
}


-- 대시Z 공격입니다.
PVP_BOT_APPLE_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EEP_DashAttackZ", 0.23,
	},		
	
	--SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	IS_ATTACK_STATE		= TRUE,
	
	SOUND_PLAY0			= { 0.219, "EveVoice_Shout12.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashComboZZ",	"CT_PVP_BOT_APPLE_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.35,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
		
}

PVP_BOT_APPLE_DashComboZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "EP_DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	EFFECT_SET_LIFE_TIME = 1.2,
	DELETE_EFFECT_SET_ON_STATE_END = FALSE, 
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Eve_Code_Empress_DashZZ_for_BOT", 0,
	},		
	
	IS_ATTACK_STATE		= TRUE,
		
	SOUND_PLAY0			= { 0.219, "EveVoice_Shout12.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_DashComboZZZ",	"CT_PVP_BOT_APPLE_DashComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_DashComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.41,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
		
}
PVP_BOT_APPLE_DashComboZZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "EP_DashComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	EFFECT_SET_LIFE_TIME = 2.0,
	DELETE_EFFECT_SET_ON_STATE_END = FALSE, 
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_APPLE_DashZZZ", 0,
	},		
	
	IS_ATTACK_STATE		= TRUE,
	
	SOUND_PLAY0			= { 0.219, "EveVoice_Shout12.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_MEGA_ELECTRONBALL",	"CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ELECTRONIC_FIELD",	"CT_PVP_BOT_APPLE_ELECTRONIC_FIELD",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZ",	"CT_PVP_BOT_APPLE_ComboZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
	
	CT_PVP_BOT_APPLE_ComboZ =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 70,
	},
	CT_PVP_BOT_APPLE_ELECTRONIC_FIELD =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		MY_MP_MORE_THAN				= 100,
		RATE						= 25,
	},
	CT_PVP_BOT_APPLE_MEGA_ELECTRONBALL =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 60,
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
-- special ablilities(active, special active skills)
-- 액티브, 스페셜 액티브 스킬들에 대한 정의입니다.


-- 마력 전환
PVP_BOT_APPLE_MP_CONVERSION =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	ANIM_NAME			= "SI_A_EN_CONVERSION",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	--INVINCIBLE			= { 0, 0.9, },
	

	
	EFFECT_SET_LIST = 
	{
		"EffectSet_EVE_CONVERSION", 0,
	},
	SOUND_PLAY0			= { 0.025, "Eve_Conversion.ogg" },
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_BACKWARD_DASH_READY",												},
	},
}
-- 노충전 풀차지 메가일렉트론볼, 메가볼
PVP_BOT_APPLE_MEGA_ELECTRONBALL =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 오베론 가드
PVP_BOT_APPLE_OBERON_GUARD =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_EAT_OBERON_GUARD",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12501 },
		{ RATE = 30, MESSAGE = STR_ID_12502 },
		{ RATE = 30, MESSAGE = STR_ID_12503 },
	},

	
	--INVINCIBLE			= { 0, 1.2, },		-- fix!!
	
	STATE_STRING		= STR_ID_4369,

	SLASH_TRACE0		= { 0, 100, 0, 1 },
	SLASH_TRACE1		= { 0, 100, 1, 1 },
	
	ATTACK_TIME0		= { 0.26, 0.33 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_EVE_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
        
        CRITICAL_RATE			= 0.25,
		
		
		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 150,
		
		FORCE_DOWN			= 5,
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_Oberon_Guard", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 스핏 파이어
PVP_BOT_APPLE_SPIT_FIRE =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET					= TRUE,
	
	ANIM_NAME			= "SI_A_EEP_SPIT_FIRE",
	ANIM_SPEED			= 1.15,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT			= FALSE,

	STATE_STRING			= STR_ID_4881,
	
	SOUND_PLAY0			= { 0.001, "Eve_EP_Spit_Fire.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_HERO_APPLE_SPIT_FIRE", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 스페이스 렌치
PVP_BOT_APPLE_SPACE_WRENCH =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_EAT_SPACE_WRENCH",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12506 },
		{ RATE = 33, MESSAGE = STR_ID_12507 },
	},

	VIEW_TARGET					= TRUE,
	
	INVINCIBLE			= { 0, 1.8, },		-- fix!!
	AFTER_IMAGE			= { 0.1, 100, },
	
	SOUND_PLAY0			= { 0.806, "Eve_SpaceWrench.ogg" },
	SOUND_PLAY1			= { 0.01, "EveVoice_SpaceWrench.ogg" },
	SOUND_PLAY2			= { 0.001, "Energy.ogg" },
	
	STATE_STRING		= STR_ID_4310,
	STOP_OTHER_UNIT0		= { 0.0, 1.0, },
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_AT_SPACE_WRENCH", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 어설트 스피어
PVP_BOT_APPLE_Assault_Spear =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "EP_ASSUALT_SPEAR",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12508 },
		{ RATE = 30, MESSAGE = STR_ID_12509 },
		{ RATE = 30, MESSAGE = STR_ID_12510 },
	},

	VIEW_TARGET					= TRUE,
	
	INVINCIBLE			= { 0, 3.066, },
	STOP_OTHER_UNIT0		= { 0.0, 2.566, },
	
	STATE_STRING		= STR_ID_9748,
	
	SOUND_PLAY0			= { 0.001, "Energy.ogg" },
	SOUND_PLAY1			= { 0.01, "EveVoice_AssualtSpear.ogg" },
	SOUND_PLAY2			= { 0.25, "Eve_AssualtSpear_Ready.ogg" },
	SOUND_PLAY3			= { 1.38, "Eve_AssualtSpear_Shot.ogg" },
	SOUND_PLAY4			= { 1.9, "Eve_AssualtSpear_Explosion.ogg" },
	SOUND_PLAY5			= { 2.1, "Eve_Guardian_Disappear3.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_EVE_ASSAULT_SPEAR", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 헤븐즈 피스트
PVP_BOT_APPLE_Heavens_Fist =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_EAT_HEAVENS_FIST",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,


	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12504 },
		{ RATE = 33, MESSAGE = STR_ID_12505 },
	},

	VIEW_TARGET					= TRUE,
	
	
	INVINCIBLE			= { 0, 2.66, },		-- fix!!
	STOP_OTHER_UNIT0		= { 0.0, 1.7, },
	--STOP_MY_UNIT0		= { 0.08, 0.5, },
	--STOP_OTHER_UNIT0	= { 0.01, 1.5, },
	
	STATE_STRING		= STR_ID_4510,	

	SOUND_PLAY0			= { 0.001, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.01, "EveVoice_HeavensFist.ogg" },
	SOUND_PLAY2			= { 0.741, "Eve_HeavensFist.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_EPIK_APPLE_HEAVENS_FIST", 0.1,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 일렉트로닉 필드
PVP_BOT_APPLE_ELECTRONIC_FIELD =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	ANIM_NAME			= "SI_SA_EEP_ELECTRONIC_FIELD",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT			= FALSE,

	VIEW_TARGET					= TRUE,
	
	INVINCIBLE			= { 0, 1.733, },
	STOP_OTHER_UNIT0		= { 0.0, 1.3, },--시간 늘리기

	SOUND_PLAY0			= { 0.001, "Energy.ogg" },
	SOUND_PLAY1			= { 0.01, "EveVoice_ElectronicField.ogg" },
	SOUND_PLAY2			= { 0.451, "Eve_EP_Ele_Field.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_HERO_APPLE_ELECTRONIC_FIELD", 0.1,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
	},
}
-- 각성
PVP_BOT_APPLE_BOOST_POWER =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	VIEW_TARGET					= TRUE,
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
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

PVP_BOT_APPLE_Combo_for_Upper_Attack =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",														},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_ComboZ",    		 	"CT_PVP_BOT_APPLE_ComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DashComboZ",    		 	"CT_PVP_BOT_APPLE_DashComboZ",           	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
		  		
	},	
	-- 잡자!
	
	CT_PVP_BOT_APPLE_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,	
		MY_MP_MORE_THAN				= 40,
		RATE						= 30,
	},
	CT_PVP_BOT_APPLE_ComboZ =
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



PVP_BOT_APPLE_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_BACKWARD_DASH_READY",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12511 },
		{ RATE = 4, MESSAGE = STR_ID_12512 },
	},


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPECIAL_ATTACK_A",	"CT_PVP_BOT_APPLE_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
PVP_BOT_APPLE_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12511 },
		{ RATE = 4, MESSAGE = STR_ID_12512 },
	},



	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPECIAL_ATTACK_A",	"CT_PVP_BOT_APPLE_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
PVP_BOT_APPLE_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "EveVoice_DamageScream03.ogg" , 20 },

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12511 },
		{ RATE = 4, MESSAGE = STR_ID_12512 },
	},



	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPECIAL_ATTACK_A",	"CT_PVP_BOT_APPLE_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
PVP_BOT_APPLE_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.07, "EveVoice_DamageScream03.ogg" , 20 },


	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12511 },
		{ RATE = 4, MESSAGE = STR_ID_12512 },
	},


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_SPECIAL_ATTACK_A",	"CT_PVP_BOT_APPLE_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
PVP_BOT_APPLE_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.19, "Down.ogg" },
	SOUND_PLAY1			= { 0.19, "EveVoice_DamageScream01.ogg" },
		
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_APPLE_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.32, "Down.ogg" },
 	SOUND_PLAY1			= { 0.19, "EveVoice_DamageScream01.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_APPLE_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_APPLE_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING",	},
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
PVP_BOT_APPLE_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_DAMAGE_DOWN_BACK",	},
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
PVP_BOT_APPLE_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_APPLE_BOOST_POWER",		"CF_PVP_BOT_APPLE_BOOST_POWER"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CF_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_WAIT",	},
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
PVP_BOT_APPLE_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" , 30 },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0		= { 0.01, "EveVoice_DamageScream02.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_APPLE_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_APPLE_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0		= { 0.109, "Down.ogg" },
	SOUND_PLAY1		= { 0.498, "Down.ogg" },	
	SOUND_PLAY2		= { 0.1, "EveVoice_DamageScream03.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_STAND_UP_FRONT",		},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_STAND_UP_FRONT =
{
	ANIM_NAME					= "StandUpRollingFrontBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	INVINCIBLE			= { 0, 100, },

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_APPLE_STAND_UP_BACK =
{
	ANIM_NAME					= "StandUpRollingBackFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	ALLOW_DIR_CHANGE			= TRUE,
	
	INVINCIBLE			= { 0, 100, },

    --SOUND_PLAY0			= { 0.283, "PVP_BOT_APPLE_StandUp.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	EVENT_PROCESS =
	{
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",      },
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_APPLE_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,

	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12516 },
		{ RATE = 33, MESSAGE = STR_ID_12517 },
	},

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "EveVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_APPLE_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12516 },
		{ RATE = 33, MESSAGE = STR_ID_12517 },
	},

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "EveVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_APPLE_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_APPLE_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_APPLE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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

-- 이브 시작 시 엠 50을 채워줍니다.
function PVP_BOT_APPLE_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp +50)
	end		     
	  
end	




function PVP_BOT_APPLE_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
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


function PVP_BOT_APPLE_ComboX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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

function PVP_BOT_APPLE_ComboXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
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

function PVP_BOT_APPLE_ComboXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.47 ) then	
		
		if pNPCUnit:GetNowMP() < 10.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_EVE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_EVE_TRIANGLE", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 10)
		end
	end
end	

function PVP_BOT_APPLE_DashX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.238 ) then	
		
		if pNPCUnit:GetNowMP() < 15.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_HIGH_DEGREE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_EVE_UPPER_ELECTRONBALL", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 15)
		end
	end
	
end	

function PVP_BOT_APPLE_ComboZZZX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_Unit = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_Unit == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_ChalSSak_for_BOT", pNPCUnit )
				hit_Unit = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_ChalSSak_for_BOT_LEFT", pNPCUnit )
				hit_Unit = true
			end
		end
	end		

end

function PVP_BOT_APPLE_MP_CONVERSION_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.23 ) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp + 50)
	end
end


function PVP_BOT_APPLE_OBERON_GUARD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.23 ) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end

function PVP_BOT_APPLE_SPIT_FIRE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 30)
	end
end


function PVP_BOT_APPLE_MEGA_ELECTRONBALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 40)
	end
end

function PVP_BOT_APPLE_SPACE_WRENCH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end		
end	


function PVP_BOT_APPLE_Assault_Spear_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end	
end	

function PVP_BOT_APPLE_Heavens_Fist_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 300)
	end	
end	
function PVP_BOT_APPLE_ELECTRONIC_FIELD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
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

-- Antigravity Custom Human-Like AI Callbacks

function CF_PVP_BOT_APPLE_BACKWARD_DASH( pKTDXApp, pX2Game, pNPCUnit )
	local dist = GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() )
	if dist < 250 then
		return math.random(100) <= 45
	end
	return false
end

function CF_PVP_BOT_EPIK_MANA_BREAK( pKTDXApp, pX2Game, pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	if mp < 100 then return false end
	local hp_rate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
	if hp_rate < 0.25 then
		return math.random(100) <= 95
	end
	if mp >= 200 then
		return math.random(100) <= 80
	elseif mp >= 100 then
		return math.random(100) <= 30
	end
	return false
end

function CF_PVP_BOT_CHECK_ROLL_STANDUP( pKTDXApp, pX2Game, pNPCUnit )
	local dist = GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() )
	if dist < 200 then
		return math.random(100) <= 80
	else
		return math.random(100) <= 15
	end
end

function CF_PVP_BOT_APPLE_COMBO_RESET( pKTDXApp, pX2Game, pNPCUnit )
	return math.random(100) <= 40
end

-- Antigravity Custom Pro-Player Tactical Awakening Callback
function CF_PVP_BOT_APPLE_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetHyperModeCount() <= 0 then return false end

	local hp_rate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()

	-- Comeback Rage: HP is below 60%
	if hp_rate < 0.60 then
		return true
	end

	-- Offensive Catch: if target is close, freeze them to start a combo
	local dist = GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() )
	if dist < 350 then
		-- 45% chance to trigger offensive awakening catch freeze
		return math.random(100) <= 45
	end

	return false
end

--------------------------------------------------------------------------
-- Adaptive PvP intelligence layer

PVP_PRO_AI_MEMORY = PVP_PRO_AI_MEMORY or setmetatable( {}, { __mode = "k" } )

function PVP_PRO_AI_GET( pNPCUnit )
	local memory = PVP_PRO_AI_MEMORY[pNPCUnit]
	if memory == nil then
		memory =
		{
			tick = 0,
			pressure = 0,
			close_read = 0,
			far_read = 0,
			action_count = 0,
			tempo = 0,
			last_damage_tick = 0,
			last_used = {},
			last_considered = {},
			once = {},
		}
		PVP_PRO_AI_MEMORY[pNPCUnit] = memory
	end
	return memory
end

function PVP_PRO_AI_HP_RATE( pNPCUnit )
	local maxHP = pNPCUnit:GetMaxHP()
	if maxHP <= 0 then return 1 end
	return pNPCUnit:GetNowHP() / maxHP
end

function PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	return GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() )
end

function PVP_PRO_AI_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	memory.tick = memory.tick + 1
	memory.reaction_min = reactionMin
	memory.reaction_max = reactionMax
	memory.once = {}

	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	if memory.hp_rate ~= nil then
		local damageTaken = memory.hp_rate - hpRate
		if damageTaken > 0.008 then
			memory.pressure = math.min( 8, memory.pressure + 1 + math.floor( damageTaken * 20 ) )
			memory.last_damage_tick = memory.tick
		elseif memory.tick - memory.last_damage_tick > 4 then
			memory.pressure = math.max( 0, memory.pressure - 0.25 )
		end
	end

	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	if dist < 320 then
		memory.close_read = math.min( 10, memory.close_read + 1 )
	else
		memory.close_read = math.max( 0, memory.close_read - 0.4 )
	end
	if dist > 850 then
		memory.far_read = math.min( 10, memory.far_read + 1 )
	else
		memory.far_read = math.max( 0, memory.far_read - 0.35 )
	end

	memory.hp_rate = hpRate
	memory.mp = pNPCUnit:GetNowMP()
	memory.distance = dist
	return false
end

function PVP_PRO_AI_READY( pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local lastUsed = memory.last_used[action]
	local lastConsidered = memory.last_considered[action]
	reconsider = reconsider or 2

	if urgent ~= true and memory.tick < ( memory.reaction_until or 0 ) then return false end
	if lastUsed ~= nil and memory.tick - lastUsed < cooldown then return false end
	if lastConsidered ~= nil and memory.tick - lastConsidered < reconsider then return false end
	memory.last_considered[action] = memory.tick

	if urgent ~= true then
		if memory.last_action == action then
			chance = chance * 0.22
		elseif memory.previous_action == action then
			chance = chance * 0.58
		end
		if memory.last_family == family then chance = chance * 0.78 end
		if memory.tempo == 1 and family == "combo" then chance = chance + 9 end
		if memory.tempo == 1 and family == "escape" then chance = chance - 7 end
		if memory.tempo == 2 and ( family == "escape" or family == "guard" ) then chance = chance + 11 end
		if memory.tempo == 2 and family == "combo" then chance = chance - 5 end
	end

	chance = math.max( 2, math.min( 98, chance ) )
	if math.random( 1000 ) > chance * 10 then return false end

	memory.previous_action = memory.last_action
	memory.last_action = action
	memory.last_family = family
	memory.last_used[action] = memory.tick
	memory.action_count = memory.action_count + 1
	memory.tempo = math.floor( memory.action_count / 2 ) % 3
	memory.reaction_until = memory.tick + math.random( memory.reaction_min or 1, memory.reaction_max or 3 )
	return true
end

function PVP_PRO_AI_ONCE( pNPCUnit, key, chance )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local token = tostring( pNPCUnit:GetNowStateID() ) .. ":" .. key
	if memory.once[token] ~= nil then return memory.once[token] end
	memory.once[token] = math.random( 1000 ) <= math.max( 0, math.min( 100, chance ) ) * 10
	return memory.once[token]
end

function PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, neededSpace )
	if pNPCUnit:GetIsRight() == true then
		return pNPCUnit:GetDistanceFrom( pNPCUnit:GetLineGroupStartPos() ) > neededSpace
	end
	return pNPCUnit:GetDistanceFrom( pNPCUnit:GetLineGroupEndPos() ) > neededSpace
end

function PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	if dist < minDist or dist > maxDist or mp < minMP then return false end

	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	if role == "escape" then
		if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 240 ) == false then return false end
		chance = chance + memory.pressure * 6 + memory.close_read * 1.5
		if hpRate < 0.35 then chance = chance + 12 end
	elseif role == "guard" then
		chance = chance + memory.pressure * 5 + memory.close_read
	elseif role == "burst" then
		if mp >= 250 then chance = chance + 10 end
		if hpRate < 0.35 then chance = chance + 17 end
	elseif role == "control" then
		chance = chance + memory.far_read * 1.4
		if memory.pressure >= 4 then chance = chance + 8 end
	elseif role == "poke" then
		chance = chance + memory.far_read
	elseif role == "combo" then
		chance = chance + math.max( 0, 5 - memory.pressure )
	elseif role == "chase" then
		chance = chance + memory.far_read * 2
	end

	return PVP_PRO_AI_READY( pNPCUnit, action, role, chance, cooldown, 2, false )
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	if mp < 100 then return false end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local pressure = PVP_PRO_AI_GET( pNPCUnit ).pressure
	local chance = 18
	if mp >= 250 then chance = 72
	elseif mp >= 200 then chance = 54
	elseif pressure >= 5 then chance = 35
	end
	if hpRate < 0.40 then chance = chance + 18 end
	if hpRate < 0.22 then chance = 96 end
	return PVP_PRO_AI_ONCE( pNPCUnit, "mana_break", chance )
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local chance = 14
	if dist < 220 then chance = 68 + memory.pressure * 4
	elseif dist < 420 then chance = 38 + memory.pressure * 2
	end
	if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 180 ) == false then chance = chance * 0.35 end
	return PVP_PRO_AI_ONCE( pNPCUnit, "wake_roll", chance )
end

function PVP_PRO_AI_COMBO_RESET( pX2Game, pNPCUnit, resetRange, baseChance )
	if pNPCUnit:GetStateTime() < 0.32 then return false end
	if PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit ) > resetRange then return false end
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local chance = baseChance + memory.pressure * 2
	if memory.last_family == "escape" then chance = chance * 0.55 end
	return PVP_PRO_AI_ONCE( pNPCUnit, "combo_reset", chance )
end

function PVP_PRO_AI_AWAKEN( pX2Game, pNPCUnit, offensiveRange, aggression )
	if pNPCUnit:GetHyperModeCount() <= 0 then return false end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local chance = 0
	local urgent = false

	if pNPCUnit:GetUnitCondition_bHit() then
		chance = 32 + memory.pressure * 7
		if hpRate < 0.45 then chance = chance + 22 end
		if hpRate < 0.20 then
			chance = 97
			urgent = true
		end
	elseif hpRate < 0.42 then
		chance = 44 + aggression
	elseif dist < offensiveRange and memory.tempo == 1 then
		chance = 12 + aggression
	end
	if chance <= 0 then return false end
	return PVP_PRO_AI_READY( pNPCUnit, "awakening", "guard", chance, 32, 4, urgent )
end

function CF_PVP_BOT_APPLE_AI_TICK( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_TICK( pX2Game, pNPCUnit, 1, 3 )
end

function CF_PVP_BOT_APPLE_ASSAULT_SPEAR( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "assault_spear", "chase", 330, 1050, 0, 41, 10 )
end

function CF_PVP_BOT_APPLE_OBERON_GUARD( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "oberon_guard", "guard", 0, 360, 80, 34, 16 )
end

function CF_PVP_BOT_APPLE_MEGA_ELECTRONBALL( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "electron_ball", "control", 420, 1250, 60, 45, 9 )
end

function CF_PVP_BOT_APPLE_COMBO_ENTRY( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "nasod_combo", "combo", 0, 340, 0, 47, 6 )
end

function CF_PVP_BOT_APPLE_BACKWARD_DASH( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "nasod_reposition", "escape", 0, 310, 0, 25, 8 )
end

function CF_PVP_BOT_EPIK_MANA_BREAK( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_MANA_BREAK( pNPCUnit )
end

function CF_PVP_BOT_CHECK_ROLL_STANDUP( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
end

function CF_PVP_BOT_APPLE_COMBO_RESET( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_COMBO_RESET( pX2Game, pNPCUnit, 330, 29 )
end

function CF_PVP_BOT_APPLE_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_AWAKEN( pX2Game, pNPCUnit, 300, 6 )
end

--------------------------------------------------------------------------
-- Second-generation adaptive PvP intelligence layer

function PVP_PRO_AI_CLAMP( value, low, high )
	if value < low then return low end
	if value > high then return high end
	return value
end

function PVP_PRO_AI_GET( pNPCUnit )
	local memory = PVP_PRO_AI_MEMORY[pNPCUnit]
	if memory == nil then
		memory = {}
		PVP_PRO_AI_MEMORY[pNPCUnit] = memory
	end
	memory.tick = memory.tick or 0
	memory.pressure = memory.pressure or 0
	memory.close_read = memory.close_read or 0
	memory.far_read = memory.far_read or 0
	memory.approach_read = memory.approach_read or 0
	memory.retreat_read = memory.retreat_read or 0
	memory.air_read = memory.air_read or 0
	memory.lateral_read = memory.lateral_read or 0
	memory.feint_read = memory.feint_read or 0
	memory.punish_read = memory.punish_read or 0
	memory.confirm_read = memory.confirm_read or 0
	memory.whiff_read = memory.whiff_read or 0
	memory.action_count = memory.action_count or 0
	memory.tempo = memory.tempo or 0
	memory.last_damage_tick = memory.last_damage_tick or 0
	memory.last_used = memory.last_used or {}
	memory.last_considered = memory.last_considered or {}
	memory.once = memory.once or {}
	memory.action_score = memory.action_score or {}
	memory.family_score = memory.family_score or {}
	memory.punished_family = memory.punished_family or {}
	memory.pending_actions = memory.pending_actions or {}
	memory.execution = memory.execution or math.random( 94, 98 )
	memory.plan = memory.plan or "neutral"
	memory.plan_until = memory.plan_until or 0
	memory.reserve_mp = memory.reserve_mp or 45
	return memory
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	local actionDelta = -0.32
	local familyDelta = -0.08
	if success == true then
		actionDelta = 1.0
		familyDelta = 0.24
		memory.confirm_read = math.min( 8, memory.confirm_read + 1.4 )
		memory.whiff_read = math.max( 0, memory.whiff_read - 0.8 )
	else
		memory.whiff_read = math.min( 8, memory.whiff_read + 0.8 )
		memory.confirm_read = math.max( 0, memory.confirm_read - 0.35 )
	end
	memory.action_score[entry.action] = PVP_PRO_AI_CLAMP(
		( memory.action_score[entry.action] or 0 ) + actionDelta, -4, 4 )
	memory.family_score[entry.family] = PVP_PRO_AI_CLAMP(
		( memory.family_score[entry.family] or 0 ) + familyDelta, -3, 3 )
end

function PVP_PRO_AI_RESOLVE_PENDING( memory, targetHP )
	local pending = memory.pending_actions
	if targetHP ~= nil and memory.target_hp ~= nil and targetHP < memory.target_hp - 0.5 then
		for index = #pending, 1, -1 do
			if memory.tick > pending[index].tick then
				PVP_PRO_AI_LEARN( memory, pending[index], true )
				table.remove( pending, index )
				break
			end
		end
	end
	for index = #pending, 1, -1 do
		local entry = pending[index]
		if memory.tick - entry.tick >= entry.window then
			PVP_PRO_AI_LEARN( memory, entry, false )
			table.remove( pending, index )
		end
	end
end

function PVP_PRO_AI_SELECT_PLAN( memory, hpRate, mp )
	local targetRate = memory.target_hp_rate or 1
	if hpRate < 0.23 or ( memory.pressure >= 7 and mp < 170 ) then
		memory.plan = "recover"
	elseif targetRate < 0.28 then
		memory.plan = "finish"
	elseif memory.approach_read + memory.feint_read > memory.retreat_read + 2.5 then
		memory.plan = "bait"
	elseif memory.retreat_read + memory.far_read * 0.35 > memory.approach_read + 2.5 then
		memory.plan = "hunt"
	elseif memory.confirm_read >= 2.2 and memory.pressure < 4 then
		memory.plan = "pressure"
	else
		local roll = math.random( 100 )
		if roll <= 29 then memory.plan = "pressure"
		elseif roll <= 54 then memory.plan = "bait"
		elseif roll <= 76 then memory.plan = "hunt"
		else memory.plan = "neutral" end
	end
	memory.plan_until = memory.tick + math.random( 6, 11 )
	local reserve = 45
	if hpRate < 0.48 then reserve = 75 end
	if hpRate < 0.28 then reserve = 110 end
	if memory.pressure >= 5 then reserve = reserve + 20 end
	if memory.plan == "recover" then reserve = math.max( reserve, 100 )
	elseif memory.plan == "finish" then reserve = math.min( reserve, 35 )
	elseif memory.plan == "hunt" then reserve = math.max( reserve, 55 ) end
	memory.reserve_mp = math.min( 145, reserve )
end

function PVP_PRO_AI_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	memory.tick = memory.tick + 1
	memory.reaction_min = reactionMin
	memory.reaction_max = reactionMax
	memory.once = {}

	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local damageTaken = 0
	if memory.hp_rate ~= nil then damageTaken = memory.hp_rate - hpRate end
	if damageTaken > 0.004 then
		memory.pressure = math.min( 10, memory.pressure + 1 + math.floor( damageTaken * 24 ) )
		memory.last_damage_tick = memory.tick
		memory.punish_read = math.min( 8, memory.punish_read + 1 )
		if memory.last_selected_family ~= nil and memory.tick - ( memory.last_selected_tick or 0 ) <= 5 then
			local family = memory.last_selected_family
			memory.punished_family[family] = PVP_PRO_AI_CLAMP(
				( memory.punished_family[family] or 0 ) + 0.55, 0, 5 )
		end
	elseif memory.tick - memory.last_damage_tick > 4 then
		memory.pressure = math.max( 0, memory.pressure - 0.28 )
		memory.punish_read = math.max( 0, memory.punish_read - 0.14 )
	end
	for family, value in pairs( memory.punished_family ) do
		memory.punished_family[family] = math.max( 0, value - 0.04 )
	end

	local targetHP = nil
	local target = pNPCUnit:GetTargetUser()
	if target ~= nil then targetHP = target:GetNowHP() end
	if targetHP ~= nil and memory.target_hp ~= nil and targetHP > memory.target_hp + 1 and memory.target_hp <= 0 then
		memory.pending_actions = {}
		memory.confirm_read = 0
		memory.whiff_read = 0
	end
	PVP_PRO_AI_RESOLVE_PENDING( memory, targetHP )
	if targetHP ~= nil then
		if memory.target_hp_max == nil or targetHP > memory.target_hp_max then memory.target_hp_max = targetHP end
		if memory.target_hp_max > 0 then
			memory.target_hp_rate = PVP_PRO_AI_CLAMP( targetHP / memory.target_hp_max, 0, 1 )
		end
	end

	local myPos = pNPCUnit:GetPos()
	local targetPos = pX2Game:GetFocusUnitPos_LUA()
	local dist = GetDistance_LUA( myPos, targetPos )
	local oldVelocity = memory.distance_velocity or 0
	local rawVelocity = dist - ( memory.distance or dist )
	memory.distance_velocity = oldVelocity * 0.55 + rawVelocity * 0.45
	if memory.distance_velocity < -16 then
		memory.approach_read = math.min( 10, memory.approach_read + 1 )
		memory.retreat_read = math.max( 0, memory.retreat_read - 0.3 )
	elseif memory.distance_velocity > 16 then
		memory.retreat_read = math.min( 10, memory.retreat_read + 1 )
		memory.approach_read = math.max( 0, memory.approach_read - 0.3 )
	else
		memory.approach_read = math.max( 0, memory.approach_read - 0.12 )
		memory.retreat_read = math.max( 0, memory.retreat_read - 0.12 )
	end
	if ( oldVelocity < -14 and memory.distance_velocity > 14 )
		or ( oldVelocity > 14 and memory.distance_velocity < -14 ) then
		memory.feint_read = math.min( 8, memory.feint_read + 1.2 )
	else
		memory.feint_read = math.max( 0, memory.feint_read - 0.1 )
	end

	local vertical = targetPos.y - myPos.y
	local targetYStep = 0
	if memory.target_y ~= nil then targetYStep = targetPos.y - memory.target_y end
	if math.abs( vertical ) > 110 or math.abs( targetYStep ) > 32 then
		memory.air_read = math.min( 10, memory.air_read + 1 )
	else
		memory.air_read = math.max( 0, memory.air_read - 0.32 )
	end
	local targetZStep = 0
	if memory.target_z ~= nil then targetZStep = targetPos.z - memory.target_z end
	if math.abs( targetZStep ) > 28 then
		memory.lateral_read = math.min( 8, memory.lateral_read + 0.8 )
	else
		memory.lateral_read = math.max( 0, memory.lateral_read - 0.16 )
	end
	if dist < 320 then memory.close_read = math.min( 10, memory.close_read + 1 )
	else memory.close_read = math.max( 0, memory.close_read - 0.4 ) end
	if dist > 850 then memory.far_read = math.min( 10, memory.far_read + 1 )
	else memory.far_read = math.max( 0, memory.far_read - 0.35 ) end

	memory.confirm_read = math.max( 0, memory.confirm_read - 0.08 )
	memory.whiff_read = math.max( 0, memory.whiff_read - 0.06 )
	if memory.tick >= memory.plan_until or ( hpRate < 0.20 and memory.plan ~= "recover" ) then
		PVP_PRO_AI_SELECT_PLAN( memory, hpRate, pNPCUnit:GetNowMP() )
	end
	memory.hp_rate = hpRate
	memory.mp = pNPCUnit:GetNowMP()
	memory.distance = dist
	memory.vertical_offset = vertical
	memory.target_x = targetPos.x
	memory.target_y = targetPos.y
	memory.target_z = targetPos.z
	memory.target_hp = targetHP
	return false
end

function PVP_PRO_AI_READY( pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local lastUsed = memory.last_used[action]
	local lastConsidered = memory.last_considered[action]
	reconsider = reconsider or 2
	cooldown = cooldown or 0
	if urgent ~= true and memory.tick < ( memory.reaction_until or 0 ) then return false end
	if lastUsed ~= nil and memory.tick - lastUsed < cooldown then return false end
	if lastConsidered ~= nil and memory.tick - lastConsidered < reconsider then return false end
	memory.last_considered[action] = memory.tick

	if urgent ~= true then
		if memory.last_action == action then chance = chance * 0.20
		elseif memory.previous_action == action then chance = chance * 0.55 end
		if memory.last_family == family then chance = chance * 0.76 end
		chance = chance + ( memory.action_score[action] or 0 ) * 4
		chance = chance + ( memory.family_score[family] or 0 ) * 2
		chance = chance - ( memory.punished_family[family] or 0 ) * 3
		if memory.plan == "pressure" then
			if family == "combo" or family == "chase" or family == "advance" or family == "burst" then chance = chance + 11 end
			if family == "escape" then chance = chance - 8 end
		elseif memory.plan == "bait" then
			if family == "guard" or family == "escape" then chance = chance + 13 end
			if family == "poke" then chance = chance + 5 end
			if family == "combo" then chance = chance - 7 end
		elseif memory.plan == "hunt" then
			if family == "chase" or family == "advance" or family == "air"
				or family == "air_move" or family == "control" then chance = chance + 12 end
			if family == "escape" then chance = chance - 5 end
		elseif memory.plan == "finish" then
			if family == "burst" or family == "combo" or family == "chase"
				or family == "advance" then chance = chance + 16 end
			if family == "resource" then chance = chance - 16 end
		elseif memory.plan == "recover" then
			if family == "guard" or family == "escape" or family == "resource" then chance = chance + 15 end
			if family == "combo" or family == "burst" then chance = chance - 13 end
		end
		if memory.execution_check_tick ~= memory.tick then
			memory.execution_check_tick = memory.tick
			local errorChance = math.min( 10, 100 - memory.execution + memory.pressure * 0.35 )
			if math.random( 1000 ) <= errorChance * 10 then
				memory.reaction_until = memory.tick + math.random( 1, 2 )
				return false
			end
		end
	end

	local chanceCap = 97
	if urgent == true then chanceCap = 99 end
	chance = PVP_PRO_AI_CLAMP( chance, 2, chanceCap )
	if math.random( 1000 ) > chance * 10 then return false end
	memory.previous_action = memory.last_action
	memory.previous_family = memory.last_family
	memory.last_action = action
	memory.last_family = family
	memory.last_used[action] = memory.tick
	memory.last_selected_tick = memory.tick
	memory.last_selected_family = family
	memory.action_count = memory.action_count + 1
	memory.tempo = math.floor( memory.action_count / 2 ) % 3
	local minReaction = memory.reaction_min or 1
	local maxReaction = memory.reaction_max or minReaction
	if maxReaction < minReaction then maxReaction = minReaction end
	memory.reaction_until = memory.tick + math.random( minReaction, maxReaction )
	if family == "combo" or family == "chase" or family == "air"
		or family == "burst" or family == "control" or family == "poke" then
		if memory.target_hp ~= nil then
			local window = 4
			if family == "burst" or family == "control" or family == "poke" then window = 5 end
			table.insert( memory.pending_actions,
				{ action = action, family = family, tick = memory.tick, window = window } )
			while #memory.pending_actions > 3 do table.remove( memory.pending_actions, 1 ) end
		end
	end
	return true
end

function PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	if mp < minMP then return false end
	local lead = 0.58
	if role == "combo" or role == "guard" or role == "escape" then lead = 0.78 end
	if role == "chase" or role == "advance" then lead = 0.35 end
	local predictedDist = dist + ( memory.distance_velocity or 0 ) * lead
	local tolerance = 38 + math.min( 80, math.abs( memory.distance_velocity or 0 ) * 0.6 )
	if predictedDist < minDist - tolerance or predictedDist > maxDist + tolerance then return false end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local targetLow = ( memory.target_hp_rate or 1 ) < 0.30
	local vertical = math.abs( memory.vertical_offset or 0 )
	if role == "escape" then
		if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 220 ) == false then return false end
		chance = chance + memory.pressure * 5.5 + memory.approach_read * 2 + memory.feint_read
		if hpRate < 0.35 then chance = chance + 13 end
	elseif role == "guard" then
		chance = chance + memory.pressure * 4 + memory.approach_read * 2.2
			+ memory.feint_read * 1.5 + memory.punish_read
	elseif role == "burst" then
		if mp >= 250 then chance = chance + 8 end
		if hpRate < 0.34 then chance = chance + 12 end
		if targetLow then chance = chance + 17 end
		chance = chance + memory.confirm_read * 1.5
	elseif role == "control" then
		chance = chance + memory.far_read * 1.2 + memory.retreat_read * 1.5
			+ memory.air_read + memory.lateral_read
	elseif role == "poke" then
		chance = chance + memory.far_read + memory.retreat_read * 1.2
			+ memory.lateral_read * 0.7
	elseif role == "combo" then
		chance = chance + memory.approach_read * 1.4 + memory.confirm_read * 1.8
			- memory.whiff_read * 1.2 - memory.pressure * 0.5
		if targetLow then chance = chance + 9 end
		if vertical > 190 then chance = chance - 19 end
	elseif role == "chase" or role == "advance" then
		chance = chance + memory.retreat_read * 2 + memory.far_read * 1.3
			+ math.max( 0, memory.distance_velocity or 0 ) * 0.08
	elseif role == "air" or role == "air_move" then
		chance = chance + memory.air_read * 2.5 + memory.retreat_read
			+ memory.lateral_read * 0.8
		if vertical < 70 and memory.plan ~= "hunt" then chance = chance - 7 end
	elseif role == "resource" then
		chance = chance + memory.far_read * 1.8 + memory.retreat_read
			- memory.pressure * 5 - memory.approach_read * 1.5
	elseif role == "support" then
		chance = chance + memory.far_read - memory.pressure * 2
		if memory.plan == "finish" then chance = chance - 15 end
	end
	if minMP > 0 then
		local remaining = mp - minMP
		if remaining < memory.reserve_mp then
			local penalty = math.min( 28, 8 + ( memory.reserve_mp - remaining ) * 0.12 )
			if role == "burst" and ( targetLow or hpRate < 0.27 ) then chance = chance + penalty * 0.35
			else chance = chance - penalty end
		end
	end
	return PVP_PRO_AI_READY( pNPCUnit, action, role, chance, cooldown, 2, false )
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	if mp < 100 then return false end
	if memory.last_mana_break_tick ~= nil and memory.tick - memory.last_mana_break_tick < 9 then return false end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local damageTaken = math.max( 0, ( memory.hp_rate or hpRate ) - hpRate )
	local chance = 13
	if mp >= 250 then chance = 77
	elseif mp >= 200 then chance = 57
	elseif mp >= 150 then chance = 34 end
	chance = chance + memory.pressure * 3 + memory.approach_read * 1.2
	if damageTaken > 0.02 then chance = chance + 18 end
	if hpRate < 0.38 then chance = chance + 20 end
	if hpRate < 0.20 then chance = 98 end
	if hpRate > 0.45 and mp - 100 < memory.reserve_mp then chance = chance - 18 end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "mana_break_v2", chance )
	if result == true then memory.last_mana_break_tick = memory.tick end
	return result
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local predictedDist = dist + ( memory.distance_velocity or 0 ) * 0.7
	local chance = 13
	if predictedDist < 220 then chance = 66 + memory.pressure * 3 + memory.approach_read * 2
	elseif predictedDist < 430 then chance = 36 + memory.pressure * 2 + memory.feint_read end
	if memory.plan == "bait" then chance = chance + 8 end
	if memory.plan == "finish" and dist > 360 then chance = chance - 10 end
	if memory.last_roll_tick ~= nil and memory.tick - memory.last_roll_tick < 12 then chance = chance * 0.35 end
	if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 180 ) == false then chance = chance * 0.25 end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "wake_roll_v2", chance )
	if result == true then memory.last_roll_tick = memory.tick end
	return result
end

function PVP_PRO_AI_COMBO_RESET( pX2Game, pNPCUnit, resetRange, baseChance )
	if pNPCUnit:GetStateTime() < 0.32 then return false end
	if PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit ) > resetRange then return false end
	if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 170 ) == false then return false end
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local hitConfirmed = pNPCUnit:GetUnitCondition_bHit()
	local chance = baseChance
	if hitConfirmed == true then
		memory.confirm_read = math.min( 8, memory.confirm_read + 0.8 )
		chance = chance + memory.punish_read * 1.2
		if memory.plan == "pressure" then chance = chance - 10 end
		if memory.plan == "finish" then chance = chance - 20 end
		if ( memory.target_hp_rate or 1 ) < 0.30 then chance = chance - 19 end
		if memory.last_family == "combo" and memory.previous_family == "combo" then chance = chance + 8 end
	else
		memory.whiff_read = math.min( 8, memory.whiff_read + 1 )
		chance = 76 + memory.pressure * 2 + memory.approach_read * 1.5
	end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "combo_reset_v2", chance )
	if result == true then
		if hitConfirmed == true then memory.plan = "bait" else memory.plan = "recover" end
		memory.plan_until = memory.tick + 4
	end
	return result
end

function PVP_PRO_AI_AWAKEN( pX2Game, pNPCUnit, offensiveRange, aggression )
	if pNPCUnit:GetHyperModeCount() <= 0 then return false end
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local damageTaken = math.max( 0, ( memory.hp_rate or hpRate ) - hpRate )
	local predictedDist = dist + ( memory.distance_velocity or 0 ) * 0.65
	local hitConfirmed = pNPCUnit:GetUnitCondition_bHit()
	local chance = 0
	local urgent = false
	if damageTaken > 0.006 then
		chance = 38 + memory.pressure * 7 + aggression
		if hpRate < 0.42 then chance = chance + 20 end
		if hpRate < 0.17 then chance = 99; urgent = true end
	elseif hitConfirmed == true and predictedDist < offensiveRange then
		chance = 17 + aggression + memory.confirm_read * 2
	elseif predictedDist < offensiveRange
		and ( memory.plan == "pressure" or memory.plan == "finish" ) then
		chance = 13 + aggression + memory.approach_read * 1.5
	elseif hpRate < 0.30 then
		chance = 34 + aggression + memory.pressure * 3
	end
	if ( memory.target_hp_rate or 1 ) < 0.24 then chance = chance + 10 end
	if chance <= 0 then return false end
	return PVP_PRO_AI_READY( pNPCUnit, "awakening", "guard", chance, 34, 4, urgent )
end

function CF_PVP_BOT_APPLE_COMBO_X_CLOSE( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "electron_combo_close", "combo", 0, 580, 60, 40, 6 )
end

function CF_PVP_BOT_APPLE_COMBO_X_RANGE( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "electron_combo_range", "poke", 500, 860, 100, 42, 7 )
end

function CF_PVP_BOT_APPLE_HEAVENS_FIST( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "heavens_fist", "burst", 260, 1260, 299, 45, 27 )
end

function CF_PVP_BOT_APPLE_SPACE_WRENCH( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "space_wrench", "control", 220, 860, 200, 41, 20 )
end

function CF_PVP_BOT_APPLE_MP_CONVERSION( pKTDXApp, pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	local dist = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	if pNPCUnit:GetNowMP() >= 220 or dist < 650 or memory.pressure >= 4 then return false end
	return PVP_PRO_AI_DECIDE(
		pX2Game, pNPCUnit, "mp_conversion", "resource",
		650, 1600, 0,
		43 + memory.far_read * 2 + memory.retreat_read, 18 )
end

function CF_PVP_BOT_APPLE_DASH_CATCH( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "nasod_dash_catch", "chase", 260, 720, 0, 43, 7 )
end

function CF_PVP_BOT_APPLE_ADVANCE( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "nasod_advance", "advance", 360, 1600, 0, 51, 3 )
end

function CF_PVP_BOT_APPLE_AERIAL_ENTRY( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "nasod_air_entry", "air_move", 280, 1120, 0, 31, 6 )
end

function CF_PVP_BOT_APPLE_AERIAL_COMBO( pKTDXApp, pX2Game, pNPCUnit )
	return PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, "nasod_air_combo", "air", 240, 820, 0, 38, 8 )
end

-- Third-generation opponent conditioning and combat utility layer

local PVP_PRO_AI_V2_TICK = PVP_PRO_AI_TICK
local PVP_PRO_AI_V2_LEARN = PVP_PRO_AI_LEARN
local PVP_PRO_AI_V2_READY = PVP_PRO_AI_READY
local PVP_PRO_AI_V2_DECIDE = PVP_PRO_AI_DECIDE
local PVP_PRO_AI_V2_COMBO_RESET = PVP_PRO_AI_COMBO_RESET
local PVP_PRO_AI_V2_AWAKEN = PVP_PRO_AI_AWAKEN

function PVP_PRO_AI_V3_INIT( memory )
	if memory.v3_initialized == true then return end
	memory.v3_initialized = true
	memory.opponent_model = {
		aggression = 0.35, evasion = 0.25, aerial = 0.20,
		zoning = 0.25, reversal = 0.15, panic = 0.15,
	}
	memory.range_model = { close = 0.33, mid = 0.34, far = 0.33 }
	memory.role_quality = {}
	memory.context_quality = {}
	memory.sequence_quality = {}
	memory.family_exposure = {}
	memory.family_history = {}
	memory.opponent_style = "adaptive"
	memory.tactical_phase = "scout"
	memory.phase_until_v3 = 0
	memory.opponent_adaptation = 0
	memory.confidence = 0.50
	memory.composure = 0.72
	memory.fatigue = 0
	memory.family_repeat = 0
	memory.combo_intent = "safe"
	memory.route = "neutral"
	memory.route_until = 0
	memory.next_deliberation = 0
	memory.decision_hold_until = 0
	memory.profile = {
		name = "adaptive", preferred_range = 430, aggression = 1.0,
		discipline = 1.0, volatility = 3, role_bias = {},
		openers = {}, finishers = {}, mixups = {},
	}
end

function PVP_PRO_AI_V3_SMOOTH( current, sample, speed )
	return current + ( sample - current ) * speed
end

function PVP_PRO_AI_V3_BAND( distance )
	if distance < 330 then return "close" end
	if distance < 780 then return "mid" end
	return "far"
end

function PVP_PRO_AI_SET_PROFILE( pNPCUnit, profile )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	memory.profile = profile
end

function PVP_PRO_AI_V3_SELECT_PHASE( memory, hpRate )
	if hpRate < 0.22 then
		memory.tactical_phase = "clutch"
	elseif memory.tick < 12 then
		memory.tactical_phase = "scout"
	elseif memory.opponent_adaptation > 0.55 or memory.family_repeat >= 3 then
		memory.tactical_phase = "changeup"
	elseif memory.confidence > 0.58 and memory.opponent_style ~= "adaptive" then
		memory.tactical_phase = "exploit"
	else
		memory.tactical_phase = "condition"
	end
	memory.phase_until_v3 = memory.tick + math.random( 5, 9 )
	if memory.tactical_phase ~= "condition" then memory.condition_family = nil end
end

function PVP_PRO_AI_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	local previousHP = memory.hp_rate
	local previousTargetHP = memory.v3_target_hp
	local result = PVP_PRO_AI_V2_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local hpRate = memory.hp_rate or PVP_PRO_AI_HP_RATE( pNPCUnit )
	local distance = memory.distance or PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local vertical = memory.vertical_offset or 0
	local velocity = memory.distance_velocity or 0
	local damageTaken = 0
	if previousHP ~= nil then damageTaken = math.max( 0, previousHP - hpRate ) end
	local targetDamage = 0
	if previousTargetHP ~= nil and memory.target_hp ~= nil then
		targetDamage = math.max( 0, previousTargetHP - memory.target_hp )
	end

	local model = memory.opponent_model
	local aggressionSample = 0
	if velocity < -14 then aggressionSample = aggressionSample + 0.45 end
	if distance < 330 then aggressionSample = aggressionSample + 0.28 end
	if damageTaken > 0.004 then aggressionSample = aggressionSample + 0.42 end
	local evasionSample = 0
	if velocity > 14 then evasionSample = evasionSample + 0.55 end
	if memory.feint_read > 1.5 then evasionSample = evasionSample + 0.30 end
	local aerialSample = 0
	if math.abs( vertical ) > 110 then aerialSample = 0.75 end
	if memory.air_read > 3 then aerialSample = math.max( aerialSample, 0.65 ) end
	local zoningSample = 0
	if distance > 780 then zoningSample = zoningSample + 0.55 end
	if velocity > 12 then zoningSample = zoningSample + 0.30 end
	local reversalSample = 0
	if damageTaken > 0.004 and memory.last_confirm_tick_v3 ~= nil
		and memory.tick - memory.last_confirm_tick_v3 <= 4 then
		reversalSample = 1
	end

	if targetDamage > 0.5 then
		memory.last_confirm_tick_v3 = memory.tick
		memory.escape_watch_until = memory.tick + 4
		memory.escape_watch_distance = distance
		memory.escape_watch_vertical = vertical
	end
	local panicSample = 0
	if memory.escape_watch_until ~= nil and memory.tick <= memory.escape_watch_until then
		if distance > ( memory.escape_watch_distance or distance ) + 120
			or math.abs( vertical ) > math.abs( memory.escape_watch_vertical or 0 ) + 85 then
			panicSample = 1
		end
	end

	model.aggression = PVP_PRO_AI_V3_SMOOTH( model.aggression, PVP_PRO_AI_CLAMP( aggressionSample, 0, 1 ), 0.16 )
	model.evasion = PVP_PRO_AI_V3_SMOOTH( model.evasion, PVP_PRO_AI_CLAMP( evasionSample, 0, 1 ), 0.14 )
	model.aerial = PVP_PRO_AI_V3_SMOOTH( model.aerial, aerialSample, 0.12 )
	model.zoning = PVP_PRO_AI_V3_SMOOTH( model.zoning, PVP_PRO_AI_CLAMP( zoningSample, 0, 1 ), 0.13 )
	model.reversal = PVP_PRO_AI_V3_SMOOTH( model.reversal, reversalSample, 0.10 )
	model.panic = PVP_PRO_AI_V3_SMOOTH( model.panic, panicSample, 0.10 )

	local band = PVP_PRO_AI_V3_BAND( distance )
	for name, value in pairs( memory.range_model ) do
		memory.range_model[name] = PVP_PRO_AI_V3_SMOOTH( value, name == band and 1 or 0, 0.10 )
	end

	if memory.tick % 5 == 0 then
		local scores = {
			rushdown = ( model.aggression + memory.range_model.close ) * 0.5,
			zoner = ( model.zoning + memory.range_model.far ) * 0.5,
			aerial = ( model.aerial + math.min( 1, memory.air_read / 7 ) ) * 0.5,
			evasive = ( model.evasion + model.panic ) * 0.5,
			counter = ( model.reversal + math.min( 1, memory.feint_read / 6 ) ) * 0.5,
		}
		local bestStyle, bestScore = "adaptive", 0.47
		for style, score in pairs( scores ) do
			if score > bestScore then bestStyle, bestScore = style, score end
		end
		memory.opponent_style = bestStyle
		memory.style_certainty = bestScore
	end

	if damageTaken > 0.02 then memory.composure = math.max( 0.20, memory.composure - 0.06 )
	elseif targetDamage > 0.5 then memory.composure = math.min( 0.95, memory.composure + 0.025 )
	else memory.composure = memory.composure + ( 0.72 - memory.composure ) * 0.025 end
	if memory.pressure < 2 and distance > 500 then
		memory.fatigue = math.max( 0, memory.fatigue - 0.015 )
	else
		memory.fatigue = math.min( 1, memory.fatigue + 0.005 )
	end
	for family, exposure in pairs( memory.family_exposure ) do
		memory.family_exposure[family] = math.max( 0, exposure - 0.025 )
	end
	memory.opponent_adaptation = math.max( 0, memory.opponent_adaptation - 0.008 )

	if memory.tick >= memory.phase_until_v3 or hpRate < 0.22 then
		PVP_PRO_AI_V3_SELECT_PHASE( memory, hpRate )
	end
	if memory.tick >= memory.next_deliberation then
		memory.next_deliberation = memory.tick + math.random( 6, 11 )
		local hesitation = 3 + ( 1 - memory.composure ) * 8 + memory.fatigue * 5
		if memory.tactical_phase == "scout" then hesitation = hesitation + 4 end
		if math.random( 1000 ) <= hesitation * 10 then
			memory.decision_hold_until = memory.tick + 1
		end
	end
	memory.v3_target_hp = memory.target_hp
	return result
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	PVP_PRO_AI_V3_INIT( memory )
	PVP_PRO_AI_V2_LEARN( memory, entry, success )
	local outcome = success == true and 1 or -0.45
	local family = entry.family or "unknown"
	memory.role_quality[family] = ( memory.role_quality[family] or 0 ) * 0.78 + outcome * 0.22
	if entry.band ~= nil then
		local contextKey = entry.action .. "@" .. entry.band
		memory.context_quality[contextKey] =
			( memory.context_quality[contextKey] or 0 ) * 0.80 + outcome * 0.20
	end
	if entry.previous_family ~= nil then
		local sequenceKey = entry.previous_family .. ">" .. family
		memory.sequence_quality[sequenceKey] =
			( memory.sequence_quality[sequenceKey] or 0 ) * 0.82 + outcome * 0.18
	end
	if success == true then
		memory.confidence = math.min( 0.95, memory.confidence + 0.045 )
		memory.opponent_adaptation = math.max( 0, memory.opponent_adaptation - 0.04 )
		local profile = memory.profile
		if profile.openers[entry.action] ~= nil then
			memory.route, memory.route_until = "convert", memory.tick + 6
		elseif profile.finishers[entry.action] ~= nil then
			memory.route, memory.route_until = "reset", memory.tick + 4
		end
	else
		memory.confidence = math.max( 0.18, memory.confidence - 0.035 )
		if ( memory.family_exposure[family] or 0 ) >= 1.8 then
			memory.opponent_adaptation = math.min( 1, memory.opponent_adaptation + 0.14 )
		end
	end
end

function PVP_PRO_AI_V3_UTILITY( memory, action, role, distance, minMP )
	local profile = memory.profile
	local model = memory.opponent_model
	local utility = ( profile.role_bias[role] or 0 )
	local preferred = profile.preferred_range or 430
	if distance > preferred + 240 and ( role == "chase" or role == "advance" or role == "air_move" ) then utility = utility + 8 end
	if distance < preferred - 180 and ( role == "escape" or role == "guard" ) then utility = utility + 7 end
	if math.abs( distance - preferred ) < 190 and ( role == "poke" or role == "control" ) then utility = utility + 4 end
	if role == "combo" or role == "chase" or role == "advance" or role == "burst" then
		utility = utility + ( ( profile.aggression or 1 ) - 1 ) * 12
	elseif role == "guard" or role == "escape" or role == "resource" then
		utility = utility + ( ( profile.discipline or 1 ) - 1 ) * 10
	end

	if memory.opponent_style == "rushdown" then
		if role == "guard" or role == "control" then utility = utility + 11 end
		if role == "escape" or role == "poke" then utility = utility + 6 end
		if role == "resource" then utility = utility - 12 end
	elseif memory.opponent_style == "zoner" then
		if role == "chase" or role == "advance" then utility = utility + 12 end
		if role == "air_move" or role == "control" then utility = utility + 7 end
	elseif memory.opponent_style == "aerial" then
		if role == "air" or role == "control" or role == "poke" then utility = utility + 10 end
		if role == "combo" then utility = utility - 7 end
	elseif memory.opponent_style == "evasive" then
		if role == "control" or role == "chase" then utility = utility + 11 end
		if role == "poke" then utility = utility + 6 end
	elseif memory.opponent_style == "counter" then
		if role == "poke" or role == "control" or role == "guard" then utility = utility + 8 end
		if role == "combo" and memory.confirm_read < 1 then utility = utility - 8 end
	end

	if memory.tactical_phase == "scout" then
		if role == "poke" or role == "guard" or role == "air_move" then utility = utility + 7 end
		if role == "burst" and memory.confirm_read < 1 then utility = utility - 12 end
	elseif memory.tactical_phase == "condition" then
		if memory.condition_family == role then utility = utility + 6 end
	elseif memory.tactical_phase == "exploit" then
		if role == "control" or role == "chase" or role == "burst" then utility = utility + 7 end
	elseif memory.tactical_phase == "changeup" then
		if role ~= memory.last_family then utility = utility + 10 else utility = utility - 13 end
	elseif memory.tactical_phase == "clutch" then
		if role == "guard" or role == "escape" or role == "burst" then utility = utility + 12 end
		if role == "resource" then utility = utility - 12 end
	end

	if model.panic > 0.48 and ( role == "chase" or role == "control" ) then utility = utility + 8 end
	if model.reversal > 0.48 and role == "combo" and memory.confirm_read < 1 then utility = utility - 9 end
	if memory.route == "convert" and memory.tick <= memory.route_until then
		if profile.finishers[action] ~= nil then utility = utility + profile.finishers[action] end
		if role == "combo" or role == "chase" then utility = utility + 5 end
	elseif memory.route == "reset" and memory.tick <= memory.route_until then
		if role == "escape" or role == "control" or role == "poke" then utility = utility + 6 end
	end
	if profile.openers[action] ~= nil and memory.confirm_read < 1.5 then utility = utility + profile.openers[action] end
	if profile.finishers[action] ~= nil and ( memory.target_hp_rate or 1 ) < 0.38 then
		utility = utility + profile.finishers[action]
	end
	if profile.mixups[action] ~= nil and memory.tactical_phase == "changeup" then
		utility = utility + profile.mixups[action]
	end
	if minMP >= 200 and memory.confirm_read < 1 and memory.route ~= "convert" then utility = utility - 5 end
	utility = utility + math.random( -( profile.volatility or 3 ), profile.volatility or 3 )
	return PVP_PRO_AI_CLAMP( utility, -28, 34 )
end

function PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	local distance = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	memory.v3_context = {
		band = PVP_PRO_AI_V3_BAND( distance ),
		previous_family = memory.last_family,
		phase = memory.tactical_phase,
		style = memory.opponent_style,
	}
	chance = chance + PVP_PRO_AI_V3_UTILITY( memory, action, role, distance, minMP )
	local result = PVP_PRO_AI_V2_DECIDE(
		pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	memory.v3_context = nil
	return result
end

function PVP_PRO_AI_READY( pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	if urgent ~= true and memory.tick < memory.decision_hold_until
		and family ~= "guard" and family ~= "escape" then
		return false
	end
	local context = memory.v3_context or {
		band = PVP_PRO_AI_V3_BAND( memory.distance or 500 ),
		previous_family = memory.last_family,
	}
	local previousFamily = memory.last_family
	local contextKey = action .. "@" .. context.band
	local sequenceKey = ( context.previous_family or "open" ) .. ">" .. family
	chance = chance + ( memory.role_quality[family] or 0 ) * 7
	chance = chance + ( memory.context_quality[contextKey] or 0 ) * 5
	chance = chance + ( memory.sequence_quality[sequenceKey] or 0 ) * 4
	if previousFamily == family then
		if memory.tactical_phase == "condition" and memory.family_repeat < 2 then chance = chance + 4
		else chance = chance - 6 - memory.family_repeat * 3 end
	end
	if memory.opponent_adaptation > 0.45 and previousFamily == family then chance = chance - 9 end
	chance = chance + ( memory.composure - 0.5 ) * 6 - memory.fatigue * 5

	local result = PVP_PRO_AI_V2_READY(
		pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	if result == true then
		if previousFamily == family then memory.family_repeat = memory.family_repeat + 1
		else memory.family_repeat = 1 end
		memory.family_exposure[family] = math.min( 5, ( memory.family_exposure[family] or 0 ) + 1 )
		table.insert( memory.family_history, family )
		while #memory.family_history > 4 do table.remove( memory.family_history, 1 ) end
		if memory.tactical_phase == "condition" and memory.condition_family == nil then
			memory.condition_family = family
		end
		local pending = memory.pending_actions[#memory.pending_actions]
		if pending ~= nil and pending.tick == memory.tick and pending.action == action then
			pending.band = context.band
			pending.previous_family = context.previous_family
			pending.phase = memory.tactical_phase
			pending.style = memory.opponent_style
		end
		if family == "combo" or family == "chase" or family == "air" then
			if ( memory.target_hp_rate or 1 ) < 0.30 then memory.combo_intent = "cashout"
			elseif memory.opponent_model.reversal > 0.48 then memory.combo_intent = "bait"
			elseif memory.opponent_model.panic > 0.50 then memory.combo_intent = "chase"
			elseif memory.tactical_phase == "condition" then memory.combo_intent = "reset"
			elseif memory.confidence > 0.62 then memory.combo_intent = "damage"
			else memory.combo_intent = "safe" end
		end
		memory.fatigue = math.min( 1, memory.fatigue + 0.02 )
	end
	return result
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	local mp = pNPCUnit:GetNowMP()
	if mp < 100 then return false end
	if memory.last_mana_break_tick ~= nil and memory.tick - memory.last_mana_break_tick < 10 then return false end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local damageTaken = math.max( 0, ( memory.hp_rate or hpRate ) - hpRate )
	local chance = 8
	if mp >= 250 then chance = 68 elseif mp >= 200 then chance = 49 elseif mp >= 150 then chance = 27 end
	chance = chance + memory.pressure * 3.2
		+ memory.opponent_model.aggression * 15 + memory.opponent_model.reversal * 8
	if damageTaken > 0.018 then chance = chance + 20 end
	if hpRate < 0.40 then chance = chance + 18 end
	if hpRate < 0.20 then chance = 99 end
	if memory.tactical_phase == "clutch" then chance = chance + 10 end
	if ( memory.target_hp_rate or 1 ) < 0.25 and mp < 200 then chance = chance - 14 end
	if hpRate > 0.58 and mp - 100 < memory.reserve_mp then chance = chance - 20 end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "mana_break_v3", chance )
	if result == true then
		memory.last_mana_break_tick = memory.tick
		memory.composure = math.min( 0.95, memory.composure + 0.08 )
	end
	return result
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 180 ) == false then return false end
	local distance = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local predicted = distance + ( memory.distance_velocity or 0 ) * 0.7
	local chance = 12
	if predicted < 220 then chance = 58 + memory.pressure * 3
	elseif predicted < 430 then chance = 31 + memory.pressure * 2 end
	chance = chance + memory.opponent_model.aggression * 15
	if memory.opponent_model.reversal > 0.55 then chance = chance - 8 end
	if memory.tactical_phase == "changeup" then chance = chance - 6 end
	if memory.last_roll_tick ~= nil and memory.tick - memory.last_roll_tick < 14 then chance = chance * 0.28 end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "wake_roll_v3", chance )
	if result == true then memory.last_roll_tick = memory.tick end
	return result
end

function PVP_PRO_AI_COMBO_RESET( pX2Game, pNPCUnit, resetRange, baseChance )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	local adjusted = baseChance
	if pNPCUnit:GetUnitCondition_bHit() == true then
		if memory.combo_intent == "cashout" then adjusted = adjusted - 28
		elseif memory.combo_intent == "damage" then adjusted = adjusted - 15
		elseif memory.combo_intent == "bait" then adjusted = adjusted + 20
		elseif memory.combo_intent == "reset" then adjusted = adjusted + 13
		elseif memory.combo_intent == "chase" then adjusted = adjusted - 10 end
		adjusted = adjusted + memory.opponent_model.reversal * 12
			- memory.opponent_model.panic * 8
	else
		adjusted = math.max( adjusted, 82 )
	end
	local result = PVP_PRO_AI_V2_COMBO_RESET(
		pX2Game, pNPCUnit, resetRange, PVP_PRO_AI_CLAMP( adjusted, 4, 92 ) )
	if result == true then memory.route, memory.route_until = "reset", memory.tick + 4 end
	return result
end

function PVP_PRO_AI_AWAKEN( pX2Game, pNPCUnit, offensiveRange, aggression )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V3_INIT( memory )
	local adjusted = aggression
	if pNPCUnit:GetHyperModeCount() == 1 and PVP_PRO_AI_HP_RATE( pNPCUnit ) > 0.48
		and memory.confirm_read < 1 and ( memory.target_hp_rate or 1 ) > 0.30 then
		adjusted = adjusted - 14
	end
	if memory.opponent_model.reversal > 0.50 then adjusted = adjusted + 8 end
	if memory.tactical_phase == "clutch" then adjusted = adjusted + 10 end
	if memory.route == "convert" and memory.tick <= memory.route_until then adjusted = adjusted + 6 end
	return PVP_PRO_AI_V2_AWAKEN( pX2Game, pNPCUnit, offensiveRange, adjusted )
end

PVP_PRO_AI_PROFILE_APPLE = {
	name = "control_engineer",
	preferred_range = 520,
	aggression = 1.02,
	discipline = 1.20,
	volatility = 3,
	role_bias = { control = 7, poke = 4, guard = 4, resource = 3, combo = 2, chase = 2, air = 2 },
	openers = { electron_ball = 5, assault_spear = 4, nasod_combo = 4, electron_combo_range = 3 },
	finishers = { heavens_fist = 12, space_wrench = 8 },
	mixups = { oberon_guard = 7, mp_conversion = 5, nasod_air_combo = 5, electron_combo_close = 4 },
}

function CF_PVP_BOT_APPLE_AI_TICK( pKTDXApp, pX2Game, pNPCUnit )
	PVP_PRO_AI_SET_PROFILE( pNPCUnit, PVP_PRO_AI_PROFILE_APPLE )
	return PVP_PRO_AI_TICK( pX2Game, pNPCUnit, 1, 3 )
end

-- Fourth-generation temporal reads, engagement planning, and combo routing

local PVP_PRO_AI_V3_TICK_IMPL = PVP_PRO_AI_TICK
local PVP_PRO_AI_V3_LEARN_IMPL = PVP_PRO_AI_LEARN
local PVP_PRO_AI_V3_READY_IMPL = PVP_PRO_AI_READY
local PVP_PRO_AI_V3_DECIDE_IMPL = PVP_PRO_AI_DECIDE
local PVP_PRO_AI_V3_COMBO_RESET_IMPL = PVP_PRO_AI_COMBO_RESET
local PVP_PRO_AI_V3_AWAKEN_IMPL = PVP_PRO_AI_AWAKEN

PVP_PRO_AI_V4_OPTIONS = { "approach", "retreat", "jump", "feint", "hold" }
PVP_PRO_AI_V4_ROLE_COST = {
	combo = 18, chase = 16, burst = 28, control = 17, poke = 9,
	guard = 8, escape = 7, resource = 12, advance = 8,
	air = 13, air_move = 8, support = 12,
}
PVP_PRO_AI_V4_DEFAULT_COUNTER = {
	approach = "guard", retreat = "chase", jump = "air",
	feint = "poke", hold = "control",
}
PVP_PRO_AI_V4_DEFAULT_SECONDARY = {
	approach = "escape", retreat = "control", jump = "control",
	feint = "guard", hold = "poke",
}

function PVP_PRO_AI_V4_INIT( memory )
	if memory.v4_initialized == true then return end
	memory.v4_initialized = true
	memory.option_transition = {}
	memory.option_frequency = {}
	for _, fromOption in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		memory.option_transition[fromOption] = {}
		memory.option_frequency[fromOption] = 0.4
		for _, toOption in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
			memory.option_transition[fromOption][toOption] = 0.35
		end
	end
	memory.option_history_v4 = {}
	memory.action_history_v4 = {}
	memory.observed_option = "hold"
	memory.previous_observed_option = "hold"
	memory.predicted_option = "hold"
	memory.second_option = "approach"
	memory.covered_option = "hold"
	memory.read_confidence = 0.18
	memory.read_accuracy = 0.50
	memory.pattern_lock = 0.20
	memory.prediction_attempts = 0
	memory.prediction_hits = 0
	memory.next_prediction_tick = 0
	memory.engagement = "probe"
	memory.engagement_until = 0
	memory.engagement_step = 1
	memory.engagement_roles = { "poke", "control", "escape" }
	memory.commitment_budget = 42
	memory.commitment_spent = 0
	memory.initiative = 0
	memory.momentum_v4 = 0
	memory.route_v4 = "neutral"
	memory.route_until_v4 = 0
	memory.combo_route = "safe"
	memory.action_damage = {}
	memory.action_value_v4 = {}
	memory.sequence_value_v4 = {}
	memory.action_attempts_v4 = {}
	memory.action_hits_v4 = {}
	memory.condition_reps_v4 = 0
	memory.next_engagement_tick = 0
	memory.pace = "measured"
	memory.wakeup_roll_exposure = 0
	memory.meta_profile = {
		name = "adaptive_professional", patience = 1.0, risk = 1.0,
		creativity = 3, condition_limit = 2, finisher_threshold = 0.28,
		probe_role = "poke", contest_role = "control",
		conversion_role = "combo", cashout_role = "burst",
		reset_role = "escape", counter_roles = {},
		secondary_roles = {}, signature = {}, engagement_bias = {},
	}
end

function PVP_PRO_AI_SET_META_PROFILE( pNPCUnit, profile )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	memory.meta_profile = profile
end

function PVP_PRO_AI_V4_OBSERVE( memory, previousVelocity )
	local velocity = memory.distance_velocity or 0
	local vertical = math.abs( memory.vertical_offset or 0 )
	local option = "hold"
	if vertical > 115 or memory.air_read > 4.5 then
		option = "jump"
	elseif previousVelocity < -13 and velocity > 14
		or previousVelocity > 13 and velocity < -14 then
		option = "feint"
	elseif velocity < -17 then
		option = "approach"
	elseif velocity > 17 then
		option = "retreat"
	end

	local previous = memory.observed_option or "hold"
	if memory.prediction_armed == true then
		memory.prediction_attempts = memory.prediction_attempts + 1
		local correct = option == memory.predicted_option
		if correct then memory.prediction_hits = memory.prediction_hits + 1 end
		memory.read_accuracy = PVP_PRO_AI_V3_SMOOTH(
			memory.read_accuracy, correct and 1 or 0, 0.08 )
	end
	memory.prediction_armed = true
	memory.previous_observed_option = previous
	memory.observed_option = option
	memory.option_transition[previous][option] =
		memory.option_transition[previous][option] + 1
	memory.option_frequency[option] = memory.option_frequency[option] + 1
	table.insert( memory.option_history_v4, option )
	while #memory.option_history_v4 > 10 do table.remove( memory.option_history_v4, 1 ) end

	local counts = {}
	local most = 0
	for _, name in ipairs( PVP_PRO_AI_V4_OPTIONS ) do counts[name] = 0 end
	for _, name in ipairs( memory.option_history_v4 ) do
		counts[name] = counts[name] + 1
		if counts[name] > most then most = counts[name] end
	end
	if #memory.option_history_v4 > 0 then
		memory.pattern_lock = most / #memory.option_history_v4
	end

	if memory.tick % 8 == 0 then
		for _, fromOption in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
			for _, toOption in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
				memory.option_transition[fromOption][toOption] =
					memory.option_transition[fromOption][toOption] * 0.965 + 0.012
			end
			memory.option_frequency[fromOption] =
				memory.option_frequency[fromOption] * 0.98 + 0.01
		end
	end
end

function PVP_PRO_AI_V4_PREDICT( memory )
	if memory.tick < memory.next_prediction_tick then return end
	memory.next_prediction_tick = memory.tick + math.random( 2, 3 )
	local row = memory.option_transition[memory.observed_option or "hold"]
	local model = memory.opponent_model
	local scores = {}
	local total = 0
	for _, option in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		local score = row[option] + memory.option_frequency[option] * 0.035
		if option == "approach" then score = score + model.aggression * 1.10
		elseif option == "retreat" then score = score + ( model.evasion + model.zoning ) * 0.62
		elseif option == "jump" then score = score + model.aerial * 0.95
		elseif option == "feint" then score = score + math.min( 1, memory.feint_read / 7 ) * 0.72
		else score = score + 0.38 end
		scores[option] = score
		total = total + score
	end

	local best, second = "hold", "approach"
	local bestScore, secondScore = -1, -1
	for _, option in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		local score = scores[option]
		if score > bestScore then
			second, secondScore = best, bestScore
			best, bestScore = option, score
		elseif score > secondScore then
			second, secondScore = option, score
		end
	end
	local separation = 0
	if total > 0 then separation = ( bestScore - math.max( 0, secondScore ) ) / total end
	local confidence = PVP_PRO_AI_CLAMP(
		0.16 + separation * 2.6 + ( memory.pattern_lock - 0.20 ) * 0.55, 0.12, 0.86 )
	confidence = confidence * ( 0.78 + memory.read_accuracy * 0.35 )

	local ambiguity = math.floor( ( 1 - confidence ) * 24 )
	local humanError = math.max( 3, 100 - ( memory.execution or 95 ) )
	local selected = best
	if math.random( 100 ) <= ambiguity + humanError then selected = second end
	memory.predicted_option = selected
	memory.second_option = selected == best and second or best
	memory.covered_option = selected
	memory.read_confidence = PVP_PRO_AI_CLAMP( confidence, 0.10, 0.88 )
end

function PVP_PRO_AI_V4_COUNTER_ROLE( memory, option )
	local profile = memory.meta_profile
	return profile.counter_roles[option]
		or PVP_PRO_AI_V4_DEFAULT_COUNTER[option] or "control"
end

function PVP_PRO_AI_V4_SECONDARY_ROLE( memory, option )
	local profile = memory.meta_profile
	return profile.secondary_roles[option]
		or PVP_PRO_AI_V4_DEFAULT_SECONDARY[option] or "poke"
end

function PVP_PRO_AI_V4_SELECT_ENGAGEMENT( memory, hpRate, mp )
	local profile = memory.meta_profile
	local targetRate = memory.target_hp_rate or 1
	local distance = memory.distance or 500
	local state = "contest"
	if hpRate < 0.24 and ( memory.initiative < -0.10 or memory.pressure > 5 ) then
		state = "disengage"
	elseif targetRate <= ( profile.finisher_threshold or 0.28 )
		and ( mp >= 170 or memory.confirm_read > 1.5 ) then
		state = "cashout"
	elseif memory.route_v4 == "convert" and memory.tick <= memory.route_until_v4 then
		state = "convert"
	elseif distance < 280 and math.abs( memory.distance_velocity or 0 ) < 22
		and memory.read_confidence < 0.34 then
		state = "scramble"
	elseif memory.read_confidence > 0.42 and memory.pattern_lock > 0.34 then
		state = "trap"
	elseif memory.tick < 16 or memory.read_confidence < 0.25 then
		state = "probe"
	end

	local limit = profile.condition_limit or 2
	if memory.condition_reps_v4 >= limit
		or memory.opponent_adaptation > 0.58 then
		state = "changeup"
		memory.condition_reps_v4 = 0
	end
	if state == "contest" then
		local trapWeight = memory.read_confidence > 0.32
			and math.max( 0, profile.engagement_bias.trap or 0 ) or 0
		local convertWeight = ( memory.initiative > 0.08 or memory.confirm_read > 1 )
			and math.max( 0, profile.engagement_bias.convert or 0 ) or 0
		local probeWeight = memory.read_confidence < 0.38
			and math.max( 0, profile.engagement_bias.probe or 0 ) or 0
		local scrambleWeight = distance < 360
			and math.max( 0, profile.engagement_bias.scramble or 0 ) or 0
		local changeWeight = ( memory.opponent_adaptation > 0.34 or memory.family_repeat >= 2 )
			and math.max( 0, profile.engagement_bias.changeup or 0 ) or 0
		local totalWeight = 12 + trapWeight + convertWeight + probeWeight
			+ scrambleWeight + changeWeight
		local roll = math.random( totalWeight )
		if roll > 12 then
			roll = roll - 12
			if roll <= trapWeight then state = "trap"
			elseif roll <= trapWeight + convertWeight then state = "convert"
			elseif roll <= trapWeight + convertWeight + probeWeight then state = "probe"
			elseif roll <= trapWeight + convertWeight + probeWeight + scrambleWeight then state = "scramble"
			else state = "changeup" end
		end
	end
	local bias = profile.engagement_bias[state] or 0
	if bias < 0 and math.random( 100 ) <= math.min( 45, -bias * 5 ) then state = "contest" end

	local primary = PVP_PRO_AI_V4_COUNTER_ROLE( memory, memory.covered_option )
	local secondary = PVP_PRO_AI_V4_SECONDARY_ROLE( memory, memory.covered_option )
	local finisher = profile.cashout_role or "burst"
	if state == "probe" then
		primary = profile.probe_role or "poke"
		secondary = profile.contest_role or "control"
	elseif state == "contest" then
		primary = profile.contest_role or primary
	elseif state == "convert" then
		primary = profile.conversion_role or "combo"
		secondary = memory.opponent_model.panic > 0.48 and "chase" or "control"
	elseif state == "cashout" then
		primary = profile.cashout_role or "burst"
		secondary = profile.conversion_role or "combo"
	elseif state == "disengage" then
		primary, secondary, finisher = "escape", "guard", "resource"
	elseif state == "scramble" then
		primary, secondary, finisher = "guard", "combo", "escape"
	elseif state == "changeup" then
		primary = profile.reset_role or "escape"
		secondary = memory.last_family == "control" and "chase" or "control"
	end

	memory.engagement = state
	memory.engagement_bias_v4 = profile.engagement_bias[state] or 0
	memory.engagement_roles = { primary, secondary, finisher }
	memory.engagement_step = 1
	memory.commitment_spent = 0
	local risk = profile.risk or 1
	local budget = 39 + risk * 18 + memory.initiative * 12
		+ math.min( 12, mp * 0.04 ) - memory.pressure * 1.5
		+ math.max( 0, memory.engagement_bias_v4 ) * 0.7
	if state == "cashout" then budget = budget + 18
	elseif state == "disengage" then budget = budget - 8
	elseif state == "probe" then budget = budget - 5 end
	memory.commitment_budget = PVP_PRO_AI_CLAMP( budget, 26, 86 )
	local duration = math.random( 5, 8 ) + math.floor( ( profile.patience or 1 ) * 2 )
		+ math.floor( math.max( 0, memory.engagement_bias_v4 ) * 0.25 )
	memory.engagement_until = memory.tick + duration
	memory.next_engagement_tick = memory.engagement_until
	if state == "cashout" or state == "convert" then memory.pace = "explosive"
	elseif state == "disengage" or state == "probe" then memory.pace = "patient"
	else memory.pace = "measured" end
end

function PVP_PRO_AI_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	local previousVelocity = memory.distance_velocity or 0
	local previousHP = memory.hp_rate
	local previousTargetHP = memory.v4_target_hp
	local result = PVP_PRO_AI_V3_TICK_IMPL(
		pX2Game, pNPCUnit, reactionMin, reactionMax )
	local hpRate = memory.hp_rate or PVP_PRO_AI_HP_RATE( pNPCUnit )
	local ownDamage = 0
	if previousHP ~= nil then ownDamage = math.max( 0, previousHP - hpRate ) end
	local targetDamage = 0
	if previousTargetHP ~= nil and memory.target_hp ~= nil then
		targetDamage = math.max( 0, previousTargetHP - memory.target_hp )
	end
	local targetMax = math.max( 1, memory.target_hp_max or 1 )
	local exchange = targetDamage / targetMax * 8 - ownDamage * 8
	memory.initiative = PVP_PRO_AI_CLAMP(
		memory.initiative * 0.84 + exchange, -1, 1 )
	if targetDamage > 0.5 then
		memory.momentum_v4 = math.min( 1, memory.momentum_v4 + 0.16 )
	elseif ownDamage > 0.004 then
		memory.momentum_v4 = math.max( -1, memory.momentum_v4 - 0.20 )
	else
		memory.momentum_v4 = memory.momentum_v4 * 0.96
	end

	if previousTargetHP ~= nil and previousTargetHP <= 0
		and memory.target_hp ~= nil and memory.target_hp > 1 then
		memory.engagement = "probe"
		memory.engagement_until = 0
		memory.initiative = 0
		memory.momentum_v4 = 0
		memory.route_v4 = "neutral"
		memory.condition_reps_v4 = 0
	end

	PVP_PRO_AI_V4_OBSERVE( memory, previousVelocity )
	PVP_PRO_AI_V4_PREDICT( memory )
	if memory.tick >= memory.engagement_until
		or ( hpRate < 0.22 and memory.engagement ~= "disengage" )
		or ( memory.target_hp_rate or 1 ) < 0.22 and memory.engagement ~= "cashout" then
		PVP_PRO_AI_V4_SELECT_ENGAGEMENT(
			memory, hpRate, pNPCUnit:GetNowMP() )
	end
	memory.v4_target_hp = memory.target_hp
	return result
end

function PVP_PRO_AI_RESOLVE_PENDING( memory, targetHP )
	local pending = memory.pending_actions
	if targetHP ~= nil and memory.target_hp ~= nil
		and targetHP < memory.target_hp - 0.5 then
		for index = #pending, 1, -1 do
			local entry = pending[index]
			if memory.tick > entry.tick then
				entry.damage = math.max( 0,
					( entry.start_hp or memory.target_hp ) - targetHP )
				entry.remaining_hp = targetHP
				PVP_PRO_AI_LEARN( memory, entry, true )
				table.remove( pending, index )
				break
			end
		end
	end
	for index = #pending, 1, -1 do
		local entry = pending[index]
		if memory.tick - entry.tick >= entry.window then
			entry.damage = 0
			PVP_PRO_AI_LEARN( memory, entry, false )
			table.remove( pending, index )
		end
	end
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	PVP_PRO_AI_V4_INIT( memory )
	PVP_PRO_AI_V3_LEARN_IMPL( memory, entry, success )
	local action = entry.action
	local family = entry.family or "unknown"
	local damage = entry.damage or 0
	local targetMax = math.max( 1, memory.target_hp_max or 1 )
	local damageRate = damage / targetMax
	memory.action_attempts_v4[action] = ( memory.action_attempts_v4[action] or 0 ) + 1
	if success == true then
		memory.action_hits_v4[action] = ( memory.action_hits_v4[action] or 0 ) + 1
	end
	local sampleValue = success == true and ( 0.65 + math.min( 1.8, damageRate * 9 ) ) or -0.48
	memory.action_value_v4[action] = PVP_PRO_AI_V3_SMOOTH(
		memory.action_value_v4[action] or 0, sampleValue, 0.22 )
	if success == true then
		memory.action_damage[action] = PVP_PRO_AI_V3_SMOOTH(
			memory.action_damage[action] or damage, damage, 0.24 )
	end
	if entry.previous_family ~= nil then
		local sequence = entry.previous_family .. ">" .. family
		memory.sequence_value_v4[sequence] = PVP_PRO_AI_V3_SMOOTH(
			memory.sequence_value_v4[sequence] or 0, sampleValue, 0.18 )
	end

	if success == true then
		memory.engagement_step = math.min( 3, memory.engagement_step + 1 )
		memory.initiative = math.min( 1, memory.initiative + 0.12 )
		local targetRate = entry.remaining_hp ~= nil
			and PVP_PRO_AI_CLAMP( entry.remaining_hp / targetMax, 0, 1 )
			or ( memory.target_hp_rate or 1 )
		local expected = memory.action_damage[action] or damage
		local remainingHP = entry.remaining_hp or memory.target_hp
		local canFinish = remainingHP ~= nil and expected >= remainingHP * 0.75
		if targetRate <= ( memory.meta_profile.finisher_threshold or 0.28 ) or canFinish then
			memory.combo_route = "cashout"
		elseif memory.opponent_model.reversal > 0.50 then
			memory.combo_route = "bait"
		elseif memory.opponent_model.panic > 0.48 then
			memory.combo_route = "chase"
		elseif memory.commitment_spent < memory.commitment_budget * 0.72 then
			memory.combo_route = "extend"
		else
			memory.combo_route = "reset"
		end
		memory.route_v4 = "convert"
		memory.route_until_v4 = memory.tick + math.random( 4, 7 )
	else
		memory.engagement_step = 1
		memory.initiative = math.max( -1, memory.initiative - 0.08 )
		if ( memory.action_attempts_v4[action] or 0 ) >= 3
			and ( memory.action_hits_v4[action] or 0 )
				/ memory.action_attempts_v4[action] < 0.34 then
			memory.opponent_adaptation = math.min( 1, memory.opponent_adaptation + 0.12 )
		end
		if memory.commitment_spent > memory.commitment_budget * 0.65 then
			memory.combo_route = "reset"
			memory.engagement = "changeup"
			memory.engagement_until = memory.tick + 3
		end
	end
end

function PVP_PRO_AI_V4_UTILITY( memory, action, role, minMP )
	local profile = memory.meta_profile
	local utility = 0
	local stepRole = memory.engagement_roles[memory.engagement_step]
		or memory.engagement_roles[1]
	if role == stepRole then
		utility = utility + 13 + math.min( 6,
			math.max( 0, memory.engagement_bias_v4 or 0 ) * 0.7 )
	elseif role == memory.engagement_roles[1] then utility = utility + 7
	elseif role == memory.engagement_roles[2] then utility = utility + 4 end

	local counterRole = PVP_PRO_AI_V4_COUNTER_ROLE( memory, memory.covered_option )
	local secondaryRole = PVP_PRO_AI_V4_SECONDARY_ROLE( memory, memory.covered_option )
	if role == counterRole then utility = utility + memory.read_confidence * 17
	elseif role == secondaryRole then utility = utility + memory.read_confidence * 8 end
	if memory.read_confidence < 0.25 and role == counterRole then utility = utility - 5 end

	if memory.engagement == "probe" then
		if role == "poke" or role == "control" or role == "guard" then utility = utility + 6 end
		if role == "burst" then utility = utility - 12 end
	elseif memory.engagement == "trap" then
		if role == counterRole then utility = utility + 9 end
	elseif memory.engagement == "convert" then
		if role == "combo" or role == "chase" or role == "burst" then utility = utility + 9 end
	elseif memory.engagement == "cashout" then
		if role == "burst" or role == "combo" then utility = utility + 15 end
		if role == "resource" or role == "support" then utility = utility - 18 end
	elseif memory.engagement == "disengage" then
		if role == "escape" or role == "guard" or role == "resource" then utility = utility + 15 end
		if role == "combo" or role == "burst" or role == "advance" then utility = utility - 15 end
	elseif memory.engagement == "scramble" then
		if role == "guard" or role == "combo" or role == "escape" then utility = utility + 8 end
	elseif memory.engagement == "changeup" then
		if role ~= memory.last_family then utility = utility + 10 else utility = utility - 15 end
	end

	if memory.initiative > 0.22 then
		if role == "combo" or role == "chase" or role == "burst" then
			utility = utility + memory.initiative * 9
		end
	elseif memory.initiative < -0.18 then
		if role == "guard" or role == "escape" or role == "control" then
			utility = utility + -memory.initiative * 10
		end
		if role == "burst" then utility = utility + memory.initiative * 7 end
	end

	if memory.combo_route == "cashout" then
		if role == "burst" or role == "combo" then utility = utility + 13 end
	elseif memory.combo_route == "extend" then
		if role == "combo" or role == "chase" or role == "air" then utility = utility + 9 end
	elseif memory.combo_route == "bait" then
		if role == "guard" or role == "escape" or role == "poke" then utility = utility + 10 end
	elseif memory.combo_route == "chase" then
		if role == "chase" or role == "control" or role == "advance" then utility = utility + 10 end
	elseif memory.combo_route == "reset" then
		if role == "escape" or role == "control" or role == "poke" then utility = utility + 9 end
	end

	utility = utility + ( memory.action_value_v4[action] or 0 ) * 7
	local sequence = ( memory.last_family or "open" ) .. ">" .. role
	utility = utility + ( memory.sequence_value_v4[sequence] or 0 ) * 5
	if profile.signature[action] ~= nil then utility = utility + profile.signature[action] end
	local expectedDamage = memory.action_damage[action] or 0
	if expectedDamage > 0 and memory.target_hp ~= nil
		and expectedDamage >= memory.target_hp * 0.75 then
		utility = utility + 12
	end

	local cost = PVP_PRO_AI_V4_ROLE_COST[role] or 10
	if minMP >= 200 then cost = cost + 8 elseif minMP >= 100 then cost = cost + 4 end
	local remaining = memory.commitment_budget - memory.commitment_spent
	if cost > remaining then
		local over = cost - remaining
		if memory.engagement == "cashout" or memory.combo_route == "cashout" then
			utility = utility - over * 0.18
		else
			utility = utility - math.min( 24, over * 0.65 )
		end
	end
	if memory.pace == "patient" then
		if role == "poke" or role == "guard" or role == "control" then utility = utility + 4 end
		if role == "burst" then utility = utility - 5 end
	elseif memory.pace == "explosive" then
		if role == "combo" or role == "chase" or role == "burst" then utility = utility + 5 end
	end

	local repeats = 0
	for _, usedAction in ipairs( memory.action_history_v4 ) do
		if usedAction == action then repeats = repeats + 1 end
	end
	utility = utility - repeats * 3
	local creativity = profile.creativity or 3
	utility = utility + math.random( -creativity, creativity )
	return PVP_PRO_AI_CLAMP( utility, -32, 38 )
end

function PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	memory.v4_context = {
		action = action, role = role,
		cost = ( PVP_PRO_AI_V4_ROLE_COST[role] or 10 )
			+ ( minMP >= 200 and 8 or ( minMP >= 100 and 4 or 0 ) ),
		predicted_option = memory.covered_option,
		engagement = memory.engagement,
	}
	chance = chance + PVP_PRO_AI_V4_UTILITY( memory, action, role, minMP )
	local result = PVP_PRO_AI_V3_DECIDE_IMPL(
		pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	memory.v4_context = nil
	return result
end

function PVP_PRO_AI_READY( pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	local context = memory.v4_context or {
		action = action, role = family,
		cost = PVP_PRO_AI_V4_ROLE_COST[family] or 10,
		predicted_option = memory.covered_option,
		engagement = memory.engagement,
	}
	if memory.v4_context == nil then
		local stepRole = memory.engagement_roles[memory.engagement_step]
			or memory.engagement_roles[1]
		if family == stepRole then chance = chance + 10
		elseif family == memory.engagement_roles[2] then chance = chance + 4 end
	end
	if urgent ~= true then
		if memory.pace == "patient" and family == "burst" then chance = chance - 5 end
		if memory.read_confidence < 0.22 and family == "guard"
			and memory.engagement ~= "scramble" then chance = chance - 4 end
		if memory.engagement == "changeup" and family == memory.last_family then
			chance = chance - 10
		end
	end
	local result = PVP_PRO_AI_V3_READY_IMPL(
		pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	if result == true then
		memory.commitment_spent = memory.commitment_spent + context.cost
		table.insert( memory.action_history_v4, action )
		while #memory.action_history_v4 > 6 do table.remove( memory.action_history_v4, 1 ) end
		if family == memory.engagement_roles[1] then
			memory.condition_reps_v4 = memory.condition_reps_v4 + 1
		end
		local pending = memory.pending_actions[#memory.pending_actions]
		if pending ~= nil and pending.tick == memory.tick and pending.action == action then
			pending.start_hp = memory.target_hp
			pending.predicted_option = context.predicted_option
			pending.engagement = context.engagement
			pending.engagement_step = memory.engagement_step
		end
	end
	return result
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	local mp = pNPCUnit:GetNowMP()
	if mp < 100 then return false end
	if memory.last_mana_break_tick ~= nil
		and memory.tick - memory.last_mana_break_tick < 10 then return false end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local damageTaken = math.max( 0, ( memory.hp_rate or hpRate ) - hpRate )
	local chance = 7
	if mp >= 250 then chance = 64 elseif mp >= 200 then chance = 46 elseif mp >= 150 then chance = 25 end
	chance = chance + memory.pressure * 3
		+ memory.opponent_model.aggression * 13 - memory.initiative * 8
	if damageTaken > 0.018 then chance = chance + 19 end
	if hpRate < 0.38 then chance = chance + 18 end
	if hpRate < 0.19 then chance = 99 end
	if memory.engagement == "disengage" then chance = chance + 12 end
	if memory.covered_option == "approach" and memory.read_confidence > 0.45 then chance = chance + 7 end
	if ( memory.target_hp_rate or 1 ) < 0.24 and mp < 200 then chance = chance - 15 end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "mana_break_v4", chance )
	if result == true then
		memory.last_mana_break_tick = memory.tick
		memory.engagement = "changeup"
		memory.engagement_until = memory.tick + 4
		memory.combo_route = "reset"
	end
	return result
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	if PVP_PRO_AI_HAS_BACK_SPACE( pNPCUnit, 180 ) == false then return false end
	local distance = PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local predicted = distance + ( memory.distance_velocity or 0 ) * 0.7
	local chance = 10
	if predicted < 220 then chance = 55 + memory.pressure * 3
	elseif predicted < 430 then chance = 29 + memory.pressure * 2 end
	chance = chance + memory.opponent_model.aggression * 14
	if memory.covered_option == "hold" or memory.opponent_model.reversal > 0.52 then chance = chance - 8 end
	if memory.engagement == "changeup" then chance = chance - 9 end
	chance = chance - memory.wakeup_roll_exposure * 11
	if memory.last_roll_tick ~= nil and memory.tick - memory.last_roll_tick < 14 then chance = chance * 0.25 end
	local result = PVP_PRO_AI_ONCE( pNPCUnit, "wake_roll_v4", chance )
	if result == true then
		memory.last_roll_tick = memory.tick
		memory.wakeup_roll_exposure = math.min( 1, memory.wakeup_roll_exposure + 0.30 )
	else
		memory.wakeup_roll_exposure = math.max( 0, memory.wakeup_roll_exposure - 0.04 )
	end
	return result
end

function PVP_PRO_AI_COMBO_RESET( pX2Game, pNPCUnit, resetRange, baseChance )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	local adjusted = baseChance
	if pNPCUnit:GetUnitCondition_bHit() == true then
		if memory.combo_route == "cashout" then adjusted = adjusted - 34
		elseif memory.combo_route == "extend" then adjusted = adjusted - 20
		elseif memory.combo_route == "chase" then adjusted = adjusted - 13
		elseif memory.combo_route == "bait" then adjusted = adjusted + 24
		elseif memory.combo_route == "reset" then adjusted = adjusted + 18 end
		if memory.commitment_spent > memory.commitment_budget then adjusted = adjusted + 16 end
		if memory.opponent_model.reversal > 0.52 then adjusted = adjusted + 12 end
		if memory.opponent_model.panic > 0.52 then adjusted = adjusted - 9 end
	else
		adjusted = math.max( adjusted, 86 )
	end
	local result = PVP_PRO_AI_V3_COMBO_RESET_IMPL(
		pX2Game, pNPCUnit, resetRange, PVP_PRO_AI_CLAMP( adjusted, 3, 95 ) )
	if result == true then
		memory.route_v4 = "reset"
		memory.route_until_v4 = memory.tick + 4
		memory.engagement = "changeup"
		memory.engagement_until = memory.tick + 4
	end
	return result
end

function PVP_PRO_AI_AWAKEN( pX2Game, pNPCUnit, offensiveRange, aggression )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V4_INIT( memory )
	local adjusted = aggression
	if memory.engagement == "cashout" then adjusted = adjusted + 11
	elseif memory.engagement == "disengage" then adjusted = adjusted + 5
	elseif memory.engagement == "probe" and PVP_PRO_AI_HP_RATE( pNPCUnit ) > 0.50 then
		adjusted = adjusted - 10
	end
	if memory.initiative > 0.35 and memory.combo_route == "extend" then adjusted = adjusted + 7 end
	if memory.read_confidence > 0.52 and memory.covered_option == "approach" then adjusted = adjusted + 6 end
	return PVP_PRO_AI_V3_AWAKEN_IMPL(
		pX2Game, pNPCUnit, offensiveRange, adjusted )
end

PVP_PRO_AI_V4_PROFILE_APPLE = {
	name = "setplay_engineer",
	patience = 1.28,
	risk = 0.94,
	creativity = 3,
	condition_limit = 3,
	finisher_threshold = 0.29,
	probe_role = "control",
	contest_role = "guard",
	conversion_role = "combo",
	cashout_role = "burst",
	reset_role = "resource",
	counter_roles = {
		approach = "guard", retreat = "control", jump = "control",
		feint = "poke", hold = "resource",
	},
	secondary_roles = {
		approach = "escape", retreat = "chase", jump = "air",
		feint = "guard", hold = "control",
	},
	signature = {
		space_wrench = 7, electron_ball = 5, nasod_dash_catch = 5,
		oberon_guard = 5, heavens_fist = 7, nasod_air_combo = 4,
	},
	engagement_bias = { probe = 3, trap = 6, scramble = -2 },
}

function CF_PVP_BOT_APPLE_AI_TICK( pKTDXApp, pX2Game, pNPCUnit )
	PVP_PRO_AI_SET_PROFILE( pNPCUnit, PVP_PRO_AI_PROFILE_APPLE )
	PVP_PRO_AI_SET_META_PROFILE( pNPCUnit, PVP_PRO_AI_V4_PROFILE_APPLE )
	return PVP_PRO_AI_TICK( pX2Game, pNPCUnit, 1, 3 )
end

-- Fifth-generation contextual strategy, playbooks, and combo economy

local PVP_PRO_AI_V4_TICK_IMPL = PVP_PRO_AI_TICK
local PVP_PRO_AI_V4_LEARN_IMPL = PVP_PRO_AI_LEARN
local PVP_PRO_AI_V4_READY_IMPL = PVP_PRO_AI_READY
local PVP_PRO_AI_V4_DECIDE_IMPL = PVP_PRO_AI_DECIDE
local PVP_PRO_AI_V4_MANA_BREAK_IMPL = PVP_PRO_AI_MANA_BREAK
local PVP_PRO_AI_V4_ROLL_IMPL = PVP_PRO_AI_ROLL
local PVP_PRO_AI_V4_COMBO_RESET_IMPL = PVP_PRO_AI_COMBO_RESET
local PVP_PRO_AI_V4_AWAKEN_IMPL = PVP_PRO_AI_AWAKEN

PVP_PRO_AI_V5_ATTACK_FAMILY = {
	combo = true, chase = true, air = true,
	burst = true, control = true, poke = true,
}
PVP_PRO_AI_V5_KNOCKDOWN_GAIN = {
	combo = 0.16, chase = 0.12, air = 0.15,
	burst = 0.27, control = 0.10, poke = 0.06,
}

function PVP_PRO_AI_V5_INIT( memory )
	if memory.v5_initialized == true then return end
	memory.v5_initialized = true
	memory.context_models_v5 = {}
	memory.context_actions_v5 = {}
	memory.context_totals_v5 = {}
	memory.playbook_stats_v5 = {}
	memory.goal_stats_v5 = {}
	memory.belief_distribution_v5 = {}
	memory.belief_option_v5 = "hold"
	memory.belief_second_v5 = "approach"
	memory.belief_confidence_v5 = 0.18
	memory.belief_entropy_v5 = 1
	memory.belief_until_v5 = 0
	memory.information_mode_v5 = "explore"
	memory.surprised_until_v5 = 0
	memory.strategic_goal_v5 = "download"
	memory.goal_until_v5 = 0
	memory.playbook_name_v5 = "download"
	memory.playbook_roles_v5 = { "poke", "control", "escape" }
	memory.playbook_step_v5 = 1
	memory.playbook_until_v5 = 0
	memory.playbook_branch_v5 = nil
	memory.intent_action_v5 = nil
	memory.backup_action_v5 = nil
	memory.intent_until_v5 = 0
	memory.committed_family_v5 = nil
	memory.commit_until_v5 = 0
	memory.combo_active_v5 = false
	memory.combo_hits_v5 = 0
	memory.combo_damage_v5 = 0
	memory.combo_start_tick_v5 = 0
	memory.last_combo_confirm_v5 = 0
	memory.combo_scaling_v5 = 1
	memory.knockdown_risk_v5 = 0
	memory.combo_efficiency_v5 = 0
	memory.combo_route_v5 = "safe"
	memory.round_index_v5 = 1
	memory.round_wins_v5 = 0
	memory.round_losses_v5 = 0
	memory.round_lead_v5 = 0
	memory.last_round_result_v5 = "none"
	memory.defense_exposure_v5 = {
		mana_break = 0, roll = 0, awakening = 0,
	}
	memory.strategic_profile = {
		name = "adaptive_match_player",
		read_skill = 0.82,
		exploration = 1.0,
		commitment = 1.0,
		reset_threshold = 0.66,
		creativity = 3,
		playbooks = {
			download = { "poke", "control", "escape" },
			outplay = { "control", "combo", "escape" },
			pressure = { "combo", "chase", "burst" },
			deny = { "control", "poke", "chase" },
			stabilize = { "guard", "escape", "control" },
			survive = { "escape", "guard", "control" },
			finish = { "control", "combo", "burst" },
		},
		actions = {},
		action_prior = {},
		goal_bias = {},
		finisher_actions = {},
	}
end

function PVP_PRO_AI_SET_STRATEGIC_PROFILE( pNPCUnit, profile )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	memory.strategic_profile = profile
end

function PVP_PRO_AI_V5_CONTEXT_KEY( memory, hpRate )
	local band = PVP_PRO_AI_V3_BAND( memory.distance or 500 )
	local initiative = "even"
	if memory.initiative > 0.22 then initiative = "ahead"
	elseif memory.initiative < -0.22 then initiative = "behind" end
	local phase = "stable"
	if hpRate < 0.30 then phase = "danger"
	elseif ( memory.target_hp_rate or 1 ) < 0.30 then phase = "finish" end
	return band .. "|" .. initiative .. "|" .. phase
end

function PVP_PRO_AI_V5_ENSURE_CONTEXT( memory, key )
	local model = memory.context_models_v5[key]
	if model ~= nil then return model end
	model = { transition = {}, samples = 0 }
	for _, fromOption in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		model.transition[fromOption] = {}
		for _, toOption in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
			model.transition[fromOption][toOption] = 0.24
		end
	end
	memory.context_models_v5[key] = model
	memory.context_actions_v5[key] = {}
	memory.context_totals_v5[key] = 0
	return model
end

function PVP_PRO_AI_V5_UPDATE_BELIEF( memory, hpRate )
	local key = PVP_PRO_AI_V5_CONTEXT_KEY( memory, hpRate )
	memory.context_key_v5 = key
	local model = PVP_PRO_AI_V5_ENSURE_CONTEXT( memory, key )
	local fromOption = memory.previous_observed_option or "hold"
	local toOption = memory.observed_option or "hold"
	model.transition[fromOption][toOption] =
		model.transition[fromOption][toOption] + 1
	model.samples = model.samples + 1
	memory.context_totals_v5[key] = memory.context_totals_v5[key] + 1

	if memory.tick % 14 == 0 then
		for _, fromName in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
			for _, toName in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
				model.transition[fromName][toName] =
					model.transition[fromName][toName] * 0.985 + 0.004
			end
		end
	end

	if memory.tick < memory.belief_until_v5 then
		if toOption ~= memory.belief_option_v5
			and memory.belief_confidence_v5 > 0.50 then
			memory.surprised_until_v5 = math.max(
				memory.surprised_until_v5, memory.tick + math.random( 1, 2 ) )
		end
		return
	end

	local localRow = model.transition[toOption]
	local globalRow = memory.option_transition[toOption]
	local scores, total = {}, 0
	for _, option in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		local score = localRow[option] * 0.70 + globalRow[option] * 0.30
		if option == "approach" then
			score = score + memory.opponent_model.aggression * 0.45
		elseif option == "retreat" then
			score = score + ( memory.opponent_model.evasion
				+ memory.opponent_model.zoning ) * 0.28
		elseif option == "jump" then
			score = score + memory.opponent_model.aerial * 0.42
		elseif option == "feint" then
			score = score + math.min( 1, memory.feint_read / 7 ) * 0.36
		else
			score = score + 0.18
		end
		scores[option] = score
		total = total + score
	end

	local entropy = 0
	local best, second = "hold", "approach"
	local bestValue, secondValue = -1, -1
	for _, option in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		local probability = scores[option] / math.max( 0.001, total )
		memory.belief_distribution_v5[option] = probability
		if probability > 0 then entropy = entropy - probability * math.log( probability ) end
		if probability > bestValue then
			second, secondValue = best, bestValue
			best, bestValue = option, probability
		elseif probability > secondValue then
			second, secondValue = option, probability
		end
	end
	entropy = entropy / math.log( #PVP_PRO_AI_V4_OPTIONS )
	local confidence = PVP_PRO_AI_CLAMP(
		( 1 - entropy ) * 0.68 + ( bestValue - secondValue ) * 1.25
			+ math.min( 0.12, model.samples * 0.004 ), 0.10, 0.88 )
	local profile = memory.strategic_profile
	confidence = confidence * ( profile.read_skill or 0.82 )

	local selected = best
	local misread = ( 1 - confidence ) * 18
		+ math.max( 2, 98 - ( memory.execution or 95 ) )
	if math.random( 1000 ) <= misread * 10 then selected = second end
	memory.belief_option_v5 = selected
	memory.belief_second_v5 = selected == best and second or best
	memory.belief_confidence_v5 = confidence
	memory.belief_entropy_v5 = entropy
	memory.covered_option = selected
	if confidence >= 0.52 then memory.information_mode_v5 = "exploit"
	elseif entropy >= 0.82 then memory.information_mode_v5 = "explore"
	else memory.information_mode_v5 = "hedge" end
	memory.belief_until_v5 = memory.tick + math.random( 3, 5 )
end

function PVP_PRO_AI_V5_RESET_COMBO( memory )
	memory.combo_active_v5 = false
	memory.combo_hits_v5 = 0
	memory.combo_damage_v5 = 0
	memory.combo_start_tick_v5 = memory.tick
	memory.last_combo_confirm_v5 = 0
	memory.combo_scaling_v5 = 1
	memory.knockdown_risk_v5 = 0
	memory.combo_efficiency_v5 = 0
	memory.combo_route_v5 = "safe"
end

function PVP_PRO_AI_V5_ENDER_POTENTIAL( memory )
	local profile = memory.strategic_profile
	local best = 0
	for _, action in ipairs( profile.finisher_actions or {} ) do
		local damage = memory.action_damage[action] or 0
		if damage > best then best = damage end
	end
	return best
end

function PVP_PRO_AI_V5_UPDATE_COMBO( memory, entry )
	local family = entry.family or "unknown"
	if PVP_PRO_AI_V5_ATTACK_FAMILY[family] ~= true then return end
	if memory.combo_active_v5 ~= true
		or memory.tick - memory.last_combo_confirm_v5 > 6 then
		PVP_PRO_AI_V5_RESET_COMBO( memory )
		memory.combo_active_v5 = true
		memory.combo_start_tick_v5 = memory.tick
	end
	memory.combo_hits_v5 = memory.combo_hits_v5 + 1
	memory.combo_damage_v5 = memory.combo_damage_v5 + ( entry.damage or 0 )
	memory.last_combo_confirm_v5 = memory.tick
	memory.combo_scaling_v5 = math.max(
		0.42, 1 - math.max( 0, memory.combo_hits_v5 - 1 ) * 0.075 )
	memory.knockdown_risk_v5 = PVP_PRO_AI_CLAMP(
		memory.knockdown_risk_v5
			+ ( PVP_PRO_AI_V5_KNOCKDOWN_GAIN[family] or 0.10 )
				* ( 1 + memory.combo_hits_v5 * 0.035 ), 0, 1.35 )
	memory.combo_efficiency_v5 = memory.combo_damage_v5
		/ math.max( 1, memory.commitment_spent )

	local remainingHP = entry.remaining_hp or memory.target_hp
	local ender = PVP_PRO_AI_V5_ENDER_POTENTIAL( memory )
	local resetThreshold = memory.strategic_profile.reset_threshold or 0.66
	if remainingHP ~= nil and ender > 0 and ender >= remainingHP * 0.72 then
		memory.combo_route_v5 = "cashout"
	elseif memory.knockdown_risk_v5 >= resetThreshold then
		memory.combo_route_v5 = "reset"
	elseif memory.opponent_model.reversal > 0.52 and memory.combo_hits_v5 >= 2 then
		memory.combo_route_v5 = "bait"
	elseif memory.opponent_model.panic > 0.50 then
		memory.combo_route_v5 = "chase"
	elseif memory.combo_scaling_v5 > 0.58
		and memory.commitment_spent < memory.commitment_budget * 0.88 then
		memory.combo_route_v5 = "extend"
	else
		memory.combo_route_v5 = "reset"
	end
	memory.combo_route = memory.combo_route_v5
end

function PVP_PRO_AI_V5_PICK_ACTION( memory, goal )
	local profile = memory.strategic_profile
	local candidates = profile.actions[goal] or profile.actions.outplay
	if candidates == nil or #candidates == 0 then
		memory.intent_action_v5, memory.backup_action_v5 = nil, nil
		return
	end
	local contextActions = memory.context_actions_v5[memory.context_key_v5] or {}
	local total = memory.context_totals_v5[memory.context_key_v5] or 0
	local best, second = nil, nil
	local bestScore, secondScore = -999, -999
	for _, action in ipairs( candidates ) do
		local stats = contextActions[action]
		local attempts = stats ~= nil and stats.attempts or 0
		local value = stats ~= nil and stats.value or 0
		local exploration = ( profile.exploration or 1 )
			* math.sqrt( math.log( total + 2 ) / ( attempts + 1 ) ) * 4.2
		if memory.information_mode_v5 == "exploit" then exploration = exploration * 0.45 end
		if memory.information_mode_v5 == "explore" then exploration = exploration * 1.30 end
		local score = value * 8 + exploration + ( profile.action_prior[action] or 0 )
		for _, recent in ipairs( memory.action_history_v4 ) do
			if recent == action then score = score - 2.2 end
		end
		score = score + math.random( -( profile.creativity or 3 ), profile.creativity or 3 )
		if score > bestScore then
			second, secondScore = best, bestScore
			best, bestScore = action, score
		elseif score > secondScore then
			second, secondScore = action, score
		end
	end
	memory.intent_action_v5 = best
	memory.backup_action_v5 = second
	memory.intent_until_v5 = memory.goal_until_v5
end

function PVP_PRO_AI_V5_NEUTRAL_GOAL( memory )
	local profile = memory.strategic_profile
	local candidates = { "outplay", "pressure", "deny", "download" }
	local weights, total = {}, 0
	for _, goal in ipairs( candidates ) do
		local weight = 4 + math.max( 0, profile.goal_bias[goal] or 0 )
		if goal == "download" then weight = weight + memory.belief_entropy_v5 * 5 end
		if goal == "pressure" then weight = weight + math.max( 0, memory.initiative ) * 7 end
		if goal == "deny" and ( memory.opponent_style == "zoner"
			or memory.opponent_style == "evasive" ) then weight = weight + 5 end
		if profile.playbooks[goal] == nil then weight = 0 end
		weights[goal], total = weight, total + weight
	end
	if total <= 0 then return "outplay" end
	local roll = math.random( math.max( 1, math.floor( total * 10 ) ) ) / 10
	local running = 0
	for _, goal in ipairs( candidates ) do
		running = running + weights[goal]
		if roll <= running then return goal end
	end
	return "outplay"
end

function PVP_PRO_AI_V5_SELECT_GOAL( memory, hpRate, mp )
	local profile = memory.strategic_profile
	local targetRate = memory.target_hp_rate or 1
	local goal = nil
	if hpRate < 0.24 and ( memory.initiative < 0 or memory.pressure > 4 ) then
		goal = "survive"
	elseif targetRate < ( memory.meta_profile.finisher_threshold or 0.30 )
		and ( mp >= 150 or memory.confirm_read > 1.3 ) then
		goal = "finish"
	elseif mp < 85 and memory.pressure < 3
		and profile.playbooks.resource ~= nil then
		goal = "resource"
	elseif memory.round_lead_v5 > 0 and memory.initiative < -0.18 then
		goal = "stabilize"
	elseif memory.round_lead_v5 < 0 and hpRate < 0.48 then
		goal = "pressure"
	elseif memory.belief_entropy_v5 > 0.84
		or ( memory.context_totals_v5[memory.context_key_v5] or 0 ) < 7 then
		goal = "download"
	else
		goal = PVP_PRO_AI_V5_NEUTRAL_GOAL( memory )
	end
	if profile.playbooks[goal] == nil then goal = "outplay" end

	memory.strategic_goal_v5 = goal
	memory.playbook_name_v5 = goal
	memory.playbook_roles_v5 = profile.playbooks[goal]
		or profile.playbooks.outplay or { "control", "combo", "escape" }
	memory.playbook_step_v5 = 1
	memory.playbook_branch_v5 = nil
	local duration = math.random( 7, 12 )
		+ math.max( 0, profile.goal_bias[goal] or 0 )
	if goal == "finish" or goal == "survive" then duration = math.max( 5, duration - 2 ) end
	memory.goal_until_v5 = memory.tick + duration
	memory.playbook_until_v5 = memory.goal_until_v5
	memory.commitment_budget = PVP_PRO_AI_CLAMP(
		memory.commitment_budget * ( profile.commitment or 1 )
			+ memory.round_lead_v5 * -2, 24, 92 )
	PVP_PRO_AI_V5_PICK_ACTION( memory, goal )
end

function PVP_PRO_AI_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	local previousHP = memory.hp_rate
	local previousTargetHP = memory.v5_target_hp
	local result = PVP_PRO_AI_V4_TICK_IMPL(
		pX2Game, pNPCUnit, reactionMin, reactionMax )
	local hpRate = memory.hp_rate or PVP_PRO_AI_HP_RATE( pNPCUnit )

	local roundChanged = false
	if previousTargetHP ~= nil and previousTargetHP <= 0.5
		and memory.target_hp ~= nil and memory.target_hp > 1 then
		memory.round_wins_v5 = memory.round_wins_v5 + 1
		memory.last_round_result_v5 = "win"
		roundChanged = true
	end
	if previousHP ~= nil and previousHP < 0.08 and hpRate > 0.72 then
		memory.round_losses_v5 = memory.round_losses_v5 + 1
		memory.last_round_result_v5 = "loss"
		roundChanged = true
	end
	if roundChanged == true then
		memory.round_index_v5 = memory.round_index_v5 + 1
		memory.round_lead_v5 = memory.round_wins_v5 - memory.round_losses_v5
		memory.goal_until_v5 = 0
		memory.engagement_until = 0
		memory.intent_action_v5 = nil
		PVP_PRO_AI_V5_RESET_COMBO( memory )
	end

	PVP_PRO_AI_V5_UPDATE_BELIEF( memory, hpRate )
	if memory.combo_active_v5 == true
		and memory.tick - memory.last_combo_confirm_v5 > 7 then
		PVP_PRO_AI_V5_RESET_COMBO( memory )
	end
	for choice, exposure in pairs( memory.defense_exposure_v5 ) do
		memory.defense_exposure_v5[choice] = math.max( 0, exposure - 0.018 )
	end
	if memory.tick >= memory.goal_until_v5
		or roundChanged == true
		or ( hpRate < 0.22 and memory.strategic_goal_v5 ~= "survive" )
		or ( memory.target_hp_rate or 1 ) < 0.22
			and memory.strategic_goal_v5 ~= "finish" then
		PVP_PRO_AI_V5_SELECT_GOAL( memory, hpRate, pNPCUnit:GetNowMP() )
	end
	memory.v5_target_hp = memory.target_hp
	return result
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	PVP_PRO_AI_V5_INIT( memory )
	PVP_PRO_AI_V4_LEARN_IMPL( memory, entry, success )
	local key = entry.context_v5 or memory.context_key_v5
	if key == nil then return end
	PVP_PRO_AI_V5_ENSURE_CONTEXT( memory, key )
	local actions = memory.context_actions_v5[key]
	local stats = actions[entry.action]
	if stats == nil then
		stats = { attempts = 0, hits = 0, value = 0, damage = 0 }
		actions[entry.action] = stats
	end
	if entry.counted_v5 ~= true then stats.attempts = stats.attempts + 1 end
	if success == true then
		stats.hits = stats.hits + 1
		stats.damage = PVP_PRO_AI_V3_SMOOTH(
			stats.damage, entry.damage or 0, 0.24 )
	end
	local sample = success == true
		and ( 0.65 + math.min( 1.65,
			( entry.damage or 0 ) / math.max( 1, memory.target_hp_max or 1 ) * 10 ) )
		or -0.52
	stats.value = PVP_PRO_AI_V3_SMOOTH( stats.value, sample, 0.22 )

	local playbook = entry.playbook_v5 or memory.playbook_name_v5
	local bookStats = memory.playbook_stats_v5[playbook]
	if bookStats == nil then
		bookStats = { attempts = 0, wins = 0, value = 0 }
		memory.playbook_stats_v5[playbook] = bookStats
	end
	bookStats.attempts = bookStats.attempts + 1
	if success == true then bookStats.wins = bookStats.wins + 1 end
	bookStats.value = PVP_PRO_AI_V3_SMOOTH( bookStats.value, sample, 0.16 )

	if success == true then
		PVP_PRO_AI_V5_UPDATE_COMBO( memory, entry )
		if entry.playbook_step_v5 == memory.playbook_step_v5 then
			memory.playbook_step_v5 = math.min(
				#memory.playbook_roles_v5, memory.playbook_step_v5 + 1 )
		end
		if entry.action == memory.intent_action_v5 then
			memory.intent_action_v5 = memory.backup_action_v5
			memory.backup_action_v5 = nil
		end
	else
		if entry.action == memory.intent_action_v5 then
			memory.intent_action_v5 = memory.backup_action_v5
			memory.backup_action_v5 = nil
		end
		memory.playbook_branch_v5 = "safety"
		memory.playbook_step_v5 = math.max(
			1, #memory.playbook_roles_v5 - 1 )
		if memory.commitment_spent > memory.commitment_budget * 0.70 then
			memory.goal_until_v5 = math.min( memory.goal_until_v5, memory.tick + 2 )
		end
	end
end

function PVP_PRO_AI_V5_UTILITY( memory, action, role, minMP )
	local profile = memory.strategic_profile
	local utility = 0
	local desiredRole = memory.playbook_roles_v5[memory.playbook_step_v5]
		or memory.playbook_roles_v5[1]
	if role == desiredRole then utility = utility + 15
	elseif role == memory.playbook_roles_v5[1] then utility = utility + 6
	elseif role == memory.playbook_roles_v5[#memory.playbook_roles_v5] then utility = utility + 3 end
	if memory.playbook_branch_v5 == "safety"
		and ( role == "escape" or role == "guard" or role == "control" ) then
		utility = utility + 10
	end

	if action == memory.intent_action_v5 then utility = utility + 14
	elseif action == memory.backup_action_v5 then utility = utility + 6
	elseif memory.intent_action_v5 ~= nil then utility = utility - 3 end

	local key = memory.context_key_v5
	local stats = key ~= nil and memory.context_actions_v5[key][action] or nil
	if stats ~= nil then
		utility = utility + stats.value * 8
		local total = memory.context_totals_v5[key] or 0
		local explore = ( profile.exploration or 1 )
			* math.sqrt( math.log( total + 2 ) / ( stats.attempts + 1 ) ) * 3.2
		if memory.information_mode_v5 == "explore" then explore = explore * 1.35
		elseif memory.information_mode_v5 == "exploit" then explore = explore * 0.40 end
		utility = utility + explore
	elseif memory.information_mode_v5 == "explore" then
		utility = utility + 6 * ( profile.exploration or 1 )
	end

	local coveredRole = PVP_PRO_AI_V4_COUNTER_ROLE(
		memory, memory.belief_option_v5 )
	if role == coveredRole then
		utility = utility + memory.belief_confidence_v5 * 13
	end
	if memory.information_mode_v5 == "hedge" then
		local secondRole = PVP_PRO_AI_V4_COUNTER_ROLE(
			memory, memory.belief_second_v5 )
		if role == secondRole then utility = utility + 5 end
	end

	if memory.combo_active_v5 == true then
		if memory.combo_route_v5 == "cashout"
			and ( role == "burst" or role == "combo" ) then utility = utility + 15
		elseif memory.combo_route_v5 == "extend"
			and ( role == "combo" or role == "chase" or role == "air" ) then utility = utility + 11
		elseif memory.combo_route_v5 == "bait"
			and ( role == "guard" or role == "escape" or role == "poke" ) then utility = utility + 12
		elseif memory.combo_route_v5 == "chase"
			and ( role == "chase" or role == "control" or role == "advance" ) then utility = utility + 11
		elseif memory.combo_route_v5 == "reset"
			and ( role == "escape" or role == "control" or role == "poke" ) then utility = utility + 12
		end
		if memory.knockdown_risk_v5 > ( profile.reset_threshold or 0.66 )
			and role == "combo" then utility = utility - 12 end
	end

	if minMP >= 200 and memory.strategic_goal_v5 ~= "finish"
		and memory.combo_route_v5 ~= "cashout"
		and memory.belief_confidence_v5 < 0.48 then
		utility = utility - 14
	elseif minMP >= 100 and memory.strategic_goal_v5 == "download" then
		utility = utility - 6
	end
	if memory.round_lead_v5 > 0 and ( memory.hp_rate or 1 ) < 0.42 then
		if role == "guard" or role == "escape" or role == "control" then utility = utility + 6 end
		if role == "burst" then utility = utility - 5 end
	elseif memory.round_lead_v5 < 0 and ( memory.target_hp_rate or 1 ) < 0.45 then
		if role == "combo" or role == "burst" or role == "chase" then utility = utility + 6 end
	end
	return PVP_PRO_AI_CLAMP( utility, -34, 42 )
end

function PVP_PRO_AI_DECIDE( pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	memory.v5_context = {
		action = action, role = role, min_mp = minMP,
		context = memory.context_key_v5,
		goal = memory.strategic_goal_v5,
		playbook = memory.playbook_name_v5,
		playbook_step = memory.playbook_step_v5,
	}
	chance = chance + PVP_PRO_AI_V5_UTILITY( memory, action, role, minMP )
	local result = PVP_PRO_AI_V4_DECIDE_IMPL(
		pX2Game, pNPCUnit, action, role, minDist, maxDist, minMP, chance, cooldown )
	memory.v5_context = nil
	return result
end

function PVP_PRO_AI_READY( pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	local context = memory.v5_context or {
		action = action, role = family,
		context = memory.context_key_v5,
		goal = memory.strategic_goal_v5,
		playbook = memory.playbook_name_v5,
		playbook_step = memory.playbook_step_v5,
	}
	if urgent ~= true then
		if memory.tick <= memory.surprised_until_v5
			and PVP_PRO_AI_V5_ATTACK_FAMILY[family] == true then
			return false
		end
		if memory.tick < memory.commit_until_v5
			and memory.committed_family_v5 ~= nil
			and family ~= memory.committed_family_v5 then
			chance = chance - 9
		end
		local desiredRole = memory.playbook_roles_v5[memory.playbook_step_v5]
			or memory.playbook_roles_v5[1]
		if family == desiredRole then chance = chance + 10
		elseif memory.playbook_branch_v5 == "safety"
			and ( family == "escape" or family == "guard" or family == "control" ) then
			chance = chance + 8
		end
		if action == memory.intent_action_v5 then chance = chance + 9
		elseif action == memory.backup_action_v5 then chance = chance + 4 end
	end

	local result = PVP_PRO_AI_V4_READY_IMPL(
		pNPCUnit, action, family, chance, cooldown, reconsider, urgent )
	if result == true then
		memory.committed_family_v5 = family
		memory.commit_until_v5 = memory.tick + math.random( 2, 4 )
		local key = context.context
		if key ~= nil then
			PVP_PRO_AI_V5_ENSURE_CONTEXT( memory, key )
			local stats = memory.context_actions_v5[key][action]
			if stats == nil then
				stats = { attempts = 0, hits = 0, value = 0, damage = 0 }
				memory.context_actions_v5[key][action] = stats
			end
			stats.attempts = stats.attempts + 1
			memory.context_totals_v5[key] = memory.context_totals_v5[key] + 1
		end
		local pending = memory.pending_actions[#memory.pending_actions]
		if pending ~= nil and pending.tick == memory.tick
			and pending.action == action then
			pending.context_v5 = key
			pending.goal_v5 = context.goal
			pending.playbook_v5 = context.playbook
			pending.playbook_step_v5 = context.playbook_step
			pending.counted_v5 = true
		elseif PVP_PRO_AI_V5_ATTACK_FAMILY[family] ~= true then
			memory.playbook_step_v5 = math.min(
				#memory.playbook_roles_v5, memory.playbook_step_v5 + 1 )
		end
	end
	return result
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	local exposure = memory.defense_exposure_v5.mana_break
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	if exposure > 0.62 and hpRate > 0.30
		and math.random( 100 ) <= 38 then return false end
	if memory.strategic_goal_v5 == "finish"
		and ( memory.target_hp_rate or 1 ) < 0.20
		and hpRate > 0.28 and pNPCUnit:GetNowMP() < 200 then
		return false
	end
	local result = PVP_PRO_AI_V4_MANA_BREAK_IMPL( pNPCUnit )
	if result == true then
		memory.defense_exposure_v5.mana_break =
			math.min( 1, exposure + 0.36 )
		memory.goal_until_v5 = math.min( memory.goal_until_v5, memory.tick + 2 )
	end
	return result
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	local exposure = memory.defense_exposure_v5.roll
	if exposure > 0.58 and memory.belief_option_v5 == "hold"
		and math.random( 100 ) <= 52 then return false end
	local result = PVP_PRO_AI_V4_ROLL_IMPL( pX2Game, pNPCUnit )
	if result == true then
		memory.defense_exposure_v5.roll = math.min( 1, exposure + 0.34 )
		memory.playbook_branch_v5 = "safety"
	end
	return result
end

function PVP_PRO_AI_COMBO_RESET( pX2Game, pNPCUnit, resetRange, baseChance )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	local adjusted = baseChance
	if memory.combo_active_v5 == true then
		if memory.combo_route_v5 == "cashout" then adjusted = adjusted - 32
		elseif memory.combo_route_v5 == "extend" then adjusted = adjusted - 20
		elseif memory.combo_route_v5 == "chase" then adjusted = adjusted - 12
		elseif memory.combo_route_v5 == "bait" then adjusted = adjusted + 24
		elseif memory.combo_route_v5 == "reset" then adjusted = adjusted + 22 end
		adjusted = adjusted + math.max( 0,
			memory.knockdown_risk_v5
				- ( memory.strategic_profile.reset_threshold or 0.66 ) ) * 35
	end
	local result = PVP_PRO_AI_V4_COMBO_RESET_IMPL(
		pX2Game, pNPCUnit, resetRange, PVP_PRO_AI_CLAMP( adjusted, 2, 96 ) )
	if result == true then
		PVP_PRO_AI_V5_RESET_COMBO( memory )
		memory.playbook_branch_v5 = "safety"
	end
	return result
end

function PVP_PRO_AI_AWAKEN( pX2Game, pNPCUnit, offensiveRange, aggression )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V5_INIT( memory )
	local adjusted = aggression
	if memory.strategic_goal_v5 == "finish" then adjusted = adjusted + 9
	elseif memory.strategic_goal_v5 == "download" then adjusted = adjusted - 8
	elseif memory.strategic_goal_v5 == "survive" then adjusted = adjusted + 6 end
	if memory.combo_route_v5 == "cashout" then adjusted = adjusted + 8 end
	if memory.defense_exposure_v5.awakening > 0.65
		and PVP_PRO_AI_HP_RATE( pNPCUnit ) > 0.32 then adjusted = adjusted - 10 end
	local result = PVP_PRO_AI_V4_AWAKEN_IMPL(
		pX2Game, pNPCUnit, offensiveRange, adjusted )
	if result == true then
		memory.defense_exposure_v5.awakening = math.min(
			1, memory.defense_exposure_v5.awakening + 0.42 )
	end
	return result
end

PVP_PRO_AI_V5_PROFILE_APPLE = {
	name = "tournament_setplay_engineer",
	read_skill = 0.89,
	exploration = 0.86,
	commitment = 1.00,
	reset_threshold = 0.69,
	creativity = 3,
	playbooks = {
		download = { "poke", "control", "resource" },
		outplay = { "control", "guard", "combo" },
		pressure = { "control", "chase", "burst" },
		deny = { "poke", "control", "chase" },
		resource = { "escape", "resource", "guard" },
		stabilize = { "guard", "escape", "control" },
		survive = { "escape", "guard", "resource" },
		finish = { "control", "combo", "burst" },
	},
	actions = {
		download = { "electron_combo_range", "electron_ball", "mp_conversion" },
		outplay = { "space_wrench", "oberon_guard", "electron_combo_close" },
		pressure = { "electron_ball", "nasod_dash_catch", "heavens_fist" },
		deny = { "electron_combo_range", "space_wrench", "assault_spear" },
		resource = { "nasod_reposition", "mp_conversion", "oberon_guard" },
		stabilize = { "oberon_guard", "nasod_reposition", "electron_ball" },
		survive = { "nasod_reposition", "oberon_guard", "mp_conversion" },
		finish = { "space_wrench", "electron_combo_close", "heavens_fist" },
	},
	action_prior = {
		electron_ball = 4, space_wrench = 6, oberon_guard = 4,
		nasod_dash_catch = 5, heavens_fist = 7, mp_conversion = 2,
	},
	goal_bias = {
		download = 3, outplay = 4, pressure = 3, deny = 4,
		resource = 4, stabilize = 3, finish = 4,
	},
	finisher_actions = { "heavens_fist", "space_wrench", "assault_spear" },
}

function CF_PVP_BOT_APPLE_AI_TICK( pKTDXApp, pX2Game, pNPCUnit )
	PVP_PRO_AI_SET_PROFILE( pNPCUnit, PVP_PRO_AI_PROFILE_APPLE )
	PVP_PRO_AI_SET_META_PROFILE( pNPCUnit, PVP_PRO_AI_V4_PROFILE_APPLE )
	PVP_PRO_AI_SET_STRATEGIC_PROFILE( pNPCUnit, PVP_PRO_AI_V5_PROFILE_APPLE )
	return PVP_PRO_AI_TICK( pX2Game, pNPCUnit, 1, 3 )
end

-- Sixth-generation competitive cognition and arena-calibration layer
--
-- V6 deliberately extends the established DECIDE -> READY -> pending action
-- -> LEARN path.  V2-V5 remain compatibility observations and priors; this
-- layer owns the final strategy, exchange plan, tactical intention, motor
-- weighting, and outcome trace.

local PVP_PRO_AI_V5_TICK_IMPL = PVP_PRO_AI_TICK
local PVP_PRO_AI_V5_LEARN_IMPL = PVP_PRO_AI_LEARN
local PVP_PRO_AI_V5_READY_IMPL = PVP_PRO_AI_READY
local PVP_PRO_AI_V5_DECIDE_IMPL = PVP_PRO_AI_DECIDE
local PVP_PRO_AI_V5_MANA_BREAK_IMPL = PVP_PRO_AI_MANA_BREAK
local PVP_PRO_AI_V5_ROLL_IMPL = PVP_PRO_AI_ROLL
local PVP_PRO_AI_V5_COMBO_RESET_IMPL = PVP_PRO_AI_COMBO_RESET
local PVP_PRO_AI_V5_AWAKEN_IMPL = PVP_PRO_AI_AWAKEN

PVP_PRO_AI_V6_TELEMETRY_ENABLED =
	PVP_PRO_AI_V6_TELEMETRY_ENABLED ~= false
PVP_PRO_AI_V6_TELEMETRY_PRINT =
	PVP_PRO_AI_V6_TELEMETRY_PRINT == true
PVP_PRO_AI_V6_TELEMETRY_LIMIT = 96

PVP_PRO_AI_V6_HYPOTHESIS_NAMES = {
	"aggressive_opener",
	"defensive_opener",
	"reactive_counter",
	"movement_heavy",
	"panic_escape",
	"delayed_defense",
	"habitual_roller",
	"early_mana_break",
	"late_mana_break",
	"wakeup_attacker",
	"wakeup_evader",
	"corner_averse",
	"resource_hoarder",
	"burst_spender",
	"repetitive_approach",
	"adapts_after_punish",
}

PVP_PRO_AI_V6_CONFIRM_TYPES = {
	clean = true, late = true, air = true, counter_like = true,
	partial = true, trade = true, resisted = true, whiff = true,
	interrupted = true, uncertain = true,
}

PVP_PRO_AI_V6_PHASE_ROLES = {
	observation = {
		poke = true, guard = true, control = true,
		resource = true, support = true,
	},
	positioning = {
		advance = true, escape = true, air_move = true, poke = true,
		resource = true, support = true,
	},
	threat = {
		poke = true, control = true, guard = true, advance = true,
	},
	commitment = {
		combo = true, chase = true, air = true, burst = true,
		control = true,
	},
	confirmation = {
		combo = true, chase = true, guard = true, escape = true,
	},
	conversion = {
		combo = true, chase = true, air = true, control = true,
		burst = true,
	},
	extension = {
		combo = true, chase = true, air = true, burst = true,
		control = true, poke = true,
	},
	disengagement = {
		escape = true, guard = true, poke = true, control = true,
		resource = true, support = true,
	},
	learning = {
		poke = true, guard = true, escape = true, control = true,
		resource = true, support = true,
	},
}

function PVP_PRO_AI_V6_COPY_FIELDS( source )
	local copy = {}
	if source == nil then return copy end
	local copied = 0
	for key, value in pairs( source ) do
		if copied >= 12 then break end
		local valueType = type( value )
		if valueType == "string" or valueType == "number"
			or valueType == "boolean" then
			copy[key] = value
			copied = copied + 1
		end
	end
	return copy
end

function PVP_PRO_AI_V6_EVENT( memory, eventName, detail )
	if PVP_PRO_AI_V6_TELEMETRY_ENABLED ~= true then return end
	local telemetry = memory.telemetry_v6
	if telemetry == nil then return end
	local event = {
		tick = memory.tick or 0,
		round = memory.round_index_v5 or 1,
		character = memory.competitive_profile_v6 ~= nil
			and memory.competitive_profile_v6.character or "unknown",
		event = eventName,
		strategy = memory.match_strategy_v6 or "none",
		plan = memory.exchange_plan_v6 or "none",
		intention = memory.tactical_intention_v6 or "none",
		phase = memory.engagement_phase_v6 or "observation",
		detail = PVP_PRO_AI_V6_COPY_FIELDS( detail ),
	}
	table.insert( telemetry.events, event )
	while #telemetry.events > PVP_PRO_AI_V6_TELEMETRY_LIMIT do
		table.remove( telemetry.events, 1 )
	end
	telemetry.counters[eventName] =
		( telemetry.counters[eventName] or 0 ) + 1

	if PVP_PRO_AI_V6_TELEMETRY_PRINT == true
		and type( print ) == "function" then
		local message = "[PVP_AI_V6] character=" .. event.character
			.. " tick=" .. tostring( event.tick )
			.. " round=" .. tostring( event.round )
			.. " event=" .. eventName
			.. " strategy=" .. event.strategy
			.. " plan=" .. event.plan
			.. " intention=" .. event.intention
			.. " phase=" .. event.phase
		pcall( print, message )
	end
end

function PVP_PRO_AI_V6_NEW_HYPOTHESIS( name )
	return {
		name = name,
		confidence = 0.20,
		historical_confidence = 0.20,
		support = 0,
		contradiction = 0,
		last_tick = 0,
		last_confirmation_tick = -99,
		confirmations = 0,
		tested = false,
		test_count = 0,
		deception = 0,
		changed = false,
		change_tick = 0,
		recency = 0,
		status = "unknown",
		context = {
			opener = { support = 0, contradiction = 0 },
			neutral = { support = 0, contradiction = 0 },
			pressure = { support = 0, contradiction = 0 },
			low_health = { support = 0, contradiction = 0 },
		},
	}
end

function PVP_PRO_AI_V6_INIT( memory )
	if memory.v6_initialized == true then return end
	memory.v6_initialized = true
	memory.competitive_profile_v6 = {
		character = "unknown",
		identity = "adaptive_tournament_player",
		identity_mode = "tournament_all_rounder",
		probe_style = "adaptive",
		preferred_min = 300,
		preferred_max = 720,
		vertical_tolerance = 160,
		adaptation_rate = 1,
		strategy_hysteresis = 5,
		strategy_order = {},
		strategies = {},
		plans = {},
		intentions = {},
		action_traits = {},
		probes = {},
		probe_order = {},
		conditioning_breaks = {},
		fallback_intention = nil,
		error_profile = {},
	}

	memory.hypotheses_v6 = {}
	for _, name in ipairs( PVP_PRO_AI_V6_HYPOTHESIS_NAMES ) do
		memory.hypotheses_v6[name] =
			PVP_PRO_AI_V6_NEW_HYPOTHESIS( name )
	end
	memory.recent_observations_v6 = {}
	memory.option_baseline_v6 = {
		approach = 0.20, retreat = 0.20, jump = 0.20,
		feint = 0.20, hold = 0.20,
	}
	memory.behavior_epoch_v6 = 1
	memory.behavior_change_score_v6 = 0
	memory.behavior_changed_v6 = false
	memory.behavior_change_tick_v6 = 0
	memory.behavior_change_candidate_v6 = nil
	memory.behavior_change_candidate_hits_v6 = 0
	memory.behavior_signatures_v6 = {}
	memory.pending_change_probe_v6 = false

	memory.match_strategy_v6 = nil
	memory.strategy_since_v6 = 0
	memory.strategy_until_v6 = 0
	memory.strategy_failures_v6 = 0
	memory.strategy_successes_v6 = 0
	memory.strategy_transition_reason_v6 = "initialization"
	memory.strategy_scores_v6 = {}
	memory.strategy_stats_v6 = {}
	memory.last_resource_band_v6 = "low"

	memory.exchange_plan_v6 = nil
	memory.plan_since_v6 = 0
	memory.plan_until_v6 = 0
	memory.plan_failures_v6 = 0
	memory.plan_successes_v6 = 0
	memory.plan_transition_reason_v6 = "initialization"
	memory.plan_stats_v6 = {}

	memory.tactical_intention_v6 = nil
	memory.intention_since_v6 = 0
	memory.intention_until_v6 = 0
	memory.intention_step_v6 = 1
	memory.intention_failures_v6 = 0
	memory.intention_successes_v6 = 0
	memory.motor_action_v6 = nil
	memory.motor_role_v6 = nil
	memory.motor_trace_v6 = {}

	memory.engagement_phase_v6 = "observation"
	memory.phase_since_v6 = 0
	memory.engagement_id_v6 = 1
	memory.engagement_damage_v6 = 0
	memory.engagement_damage_taken_v6 = 0
	memory.engagement_start_hp_v6 = 1
	memory.engagement_start_target_hp_v6 = 1
	memory.engagement_initiation_reason_v6 = "initial_observation"

	memory.initiative_state_v6 = "neither_committed"
	memory.initiative_facets_v6 = {}
	memory.tempo_state_v6 = "measured_neutral"
	memory.tempo_since_v6 = 0
	memory.tempo_control_ticks_v6 = 0
	memory.tempo_surrender_ticks_v6 = 0
	memory.neutral_geometry_v6 = "unknown"
	memory.movement_intent_v6 = "hold"

	memory.active_probe_v6 = nil
	memory.probe_cooldown_until_v6 = 0
	memory.probe_counts_v6 = {}
	memory.conditioning_v6 = {}
	memory.conditioning_break_action_v6 = nil

	memory.combo_goal_v6 = "maximum_reliable_damage"
	memory.combo_goal_since_v6 = 0
	memory.combo_goal_hold_until_v6 = 0
	memory.route_stats_v6 = {}
	memory.route_keys_v6 = {}
	memory.route_stats_limit_v6 = 48
	memory.last_confirm_type_v6 = "uncertain"
	memory.inferred_defense_resource_v6 = 0.55

	memory.defense_plan_v6 = "reclaim_neutral"
	memory.defense_plan_since_v6 = 0
	memory.defense_stats_v6 = {
		mana_break = { attempts = 0, success = 0, covered = 0, punished = 0 },
		roll = { attempts = 0, success = 0, covered = 0, punished = 0 },
		awakening = { attempts = 0, success = 0, covered = 0, punished = 0 },
		hold = { attempts = 0, success = 0, covered = 0, punished = 0 },
	}
	memory.pending_defense_v6 = nil

	memory.error_mode_v6 = "none"
	memory.error_until_v6 = 0
	memory.surprise_v6 = 0
	memory.cognitive_load_v6 = 0
	memory.overconfidence_v6 = 0
	memory.last_unexpected_tick_v6 = -99

	memory.telemetry_v6 = {
		events = {},
		counters = {},
		action_considered = {},
		action_selected = {},
		action_confirm = {},
		strategy_ticks = {},
		plan_ticks = {},
		initiative_ticks = {},
		tempo_ticks = {},
		resource_spend = 0,
		lethal_attempts = 0,
		combo_cashouts = 0,
		combo_extensions = 0,
		combo_resets = 0,
	}
	memory.v6_profile_initialized = nil
	memory.v6_previous_round = memory.round_index_v5 or 1
	memory.v6_previous_hp = memory.hp_rate or 1
	memory.v6_previous_target_hp = memory.target_hp
end

function PVP_PRO_AI_SET_COMPETITIVE_PROFILE( pNPCUnit, profile )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	memory.competitive_profile_v6 = profile
	if memory.v6_profile_initialized == profile.character then return end
	memory.v6_profile_initialized = profile.character
	for action, _ in pairs( profile.action_traits or {} ) do
		memory.telemetry_v6.action_considered[action] =
			memory.telemetry_v6.action_considered[action] or 0
		memory.telemetry_v6.action_selected[action] =
			memory.telemetry_v6.action_selected[action] or 0
		memory.conditioning_v6[action] = memory.conditioning_v6[action] or {
			shown = 0, intentional = 0, incidental = 0,
			failures = 0, anticipated = 0, last_tick = 0,
		}
	end
	PVP_PRO_AI_V6_EVENT( memory, "profile_initialized", {
		identity = profile.identity or "unknown",
	} )
end

function PVP_PRO_AI_V6_IDENTITY_MODE( memory )
	local profile = memory.competitive_profile_v6 or {}
	return profile.identity_mode or "tournament_all_rounder"
end

function PVP_PRO_AI_V6_CONTEXT( memory )
	if memory.tick <= 20 then return "opener" end
	if ( memory.target_hp_rate or 1 ) < 0.30 then return "low_health" end
	if memory.combo_active_v5 == true or memory.engagement_phase_v6 == "conversion"
		or memory.engagement_phase_v6 == "extension" then
		return "pressure"
	end
	return "neutral"
end

function PVP_PRO_AI_V6_REFRESH_HYPOTHESIS( memory, hypothesis )
	local evidence = hypothesis.support + hypothesis.contradiction
	local balance = 0
	if evidence > 0 then
		balance = ( hypothesis.support - hypothesis.contradiction * 0.72 )
			/ ( evidence + 2.8 )
	end
	local confidence = 0.20 + balance * 0.72
		+ math.min( 0.12, hypothesis.confirmations * 0.035 )
	confidence = confidence * ( 1 - hypothesis.deception * 0.22 )
	local cap = 0.55
	if hypothesis.confirmations >= 2 then cap = 0.72 end
	if hypothesis.confirmations >= 3 then cap = 0.88 end
	hypothesis.confidence = PVP_PRO_AI_CLAMP( confidence, 0.06, cap )

	if hypothesis.changed == true
		and memory.tick - hypothesis.change_tick <= 45 then
		hypothesis.status = "recently_changed"
	elseif hypothesis.deception >= 0.45 then
		hypothesis.status = "possible_deception"
	elseif hypothesis.confirmations >= 3
		and hypothesis.confidence >= 0.66 then
		local strongestContext, strongestValue = "neutral", 0
		for contextName, contextData in pairs( hypothesis.context ) do
			local value = contextData.support - contextData.contradiction
			if value > strongestValue then
				strongestContext, strongestValue = contextName, value
			end
		end
		if strongestValue >= hypothesis.support * 0.58 then
			hypothesis.status = "contextual_habit:" .. strongestContext
		else
			hypothesis.status = "reliable_habit"
		end
	elseif hypothesis.confirmations >= 1
		and hypothesis.confidence >= 0.38 then
		hypothesis.status = "weak_tendency"
	elseif hypothesis.tested == true then
		hypothesis.status = "insufficient_evidence"
	else
		hypothesis.status = "unknown"
	end
end

function PVP_PRO_AI_V6_EVIDENCE(
	memory, name, support, weight, contextName, independent )
	local hypothesis = memory.hypotheses_v6[name]
	if hypothesis == nil then return end
	weight = math.max( 0.05, math.min( 1.5, weight or 0.25 ) )
	contextName = contextName or PVP_PRO_AI_V6_CONTEXT( memory )
	local context = hypothesis.context[contextName]
		or hypothesis.context.neutral
	if support == true then
		hypothesis.support = math.min( 24, hypothesis.support + weight )
		context.support = math.min( 12, context.support + weight )
		if independent == true
			and memory.tick - hypothesis.last_confirmation_tick >= 4 then
			hypothesis.confirmations = math.min(
				8, hypothesis.confirmations + 1 )
			hypothesis.last_confirmation_tick = memory.tick
		end
	else
		hypothesis.contradiction =
			math.min( 24, hypothesis.contradiction + weight )
		context.contradiction =
			math.min( 12, context.contradiction + weight )
		if hypothesis.confidence > 0.54
			and memory.tick - hypothesis.last_tick <= 10 then
			hypothesis.deception =
				math.min( 1, hypothesis.deception + weight * 0.12 )
			memory.surprise_v6 =
				math.min( 1, memory.surprise_v6 + weight * 0.18 )
			memory.last_unexpected_tick_v6 = memory.tick
		end
	end
	hypothesis.last_tick = memory.tick
	hypothesis.recency = 1
	PVP_PRO_AI_V6_REFRESH_HYPOTHESIS( memory, hypothesis )
end

function PVP_PRO_AI_V6_DECAY_HYPOTHESES( memory )
	if memory.tick % 18 ~= 0 then return end
	for _, name in ipairs( PVP_PRO_AI_V6_HYPOTHESIS_NAMES ) do
		local hypothesis = memory.hypotheses_v6[name]
		hypothesis.support = hypothesis.support * 0.985
		hypothesis.contradiction = hypothesis.contradiction * 0.985
		hypothesis.deception = hypothesis.deception * 0.975
		hypothesis.recency = hypothesis.recency * 0.82
		for _, context in pairs( hypothesis.context ) do
			context.support = context.support * 0.988
			context.contradiction = context.contradiction * 0.988
		end
		PVP_PRO_AI_V6_REFRESH_HYPOTHESIS( memory, hypothesis )
	end
end

function PVP_PRO_AI_V6_OBSERVE_HYPOTHESES(
	memory, ownDamage, targetDamage )
	local option = memory.observed_option or "hold"
	local context = PVP_PRO_AI_V6_CONTEXT( memory )
	local opener = memory.tick <= 20
	if opener and option == "approach" then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "aggressive_opener", true, 0.34, "opener", true )
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "defensive_opener", false, 0.18, "opener", false )
	elseif opener and ( option == "hold" or option == "retreat" ) then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "defensive_opener", true, 0.30, "opener", true )
	end

	if option == "jump" or option == "feint" then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "movement_heavy", true, 0.20, context, false )
	elseif option == "hold" then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "movement_heavy", false, 0.08, context, false )
	end

	local approachCount = 0
	for _, observed in ipairs( memory.recent_observations_v6 ) do
		if observed.option == "approach" then
			approachCount = approachCount + 1
		end
	end
	if approachCount >= 5 then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "repetitive_approach", true, 0.42, context, true )
	elseif #memory.recent_observations_v6 >= 9 and approachCount <= 2 then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "repetitive_approach", false, 0.22, context, false )
	end

	if ownDamage > 0.004 and memory.last_selected_tick ~= nil
		and memory.tick - memory.last_selected_tick <= 5 then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "reactive_counter", true, 0.38, context, true )
	end
	if targetDamage > 0.5 then
		memory.v6_escape_watch_tick = memory.tick
		memory.v6_escape_watch_distance = memory.distance or 0
		memory.v6_escape_watch_option = option
	end
	if memory.v6_escape_watch_tick ~= nil
		and memory.tick - memory.v6_escape_watch_tick <= 5 then
		local escaped = ( memory.distance or 0 )
			> ( memory.v6_escape_watch_distance or 0 ) + 105
			or math.abs( memory.vertical_offset or 0 ) > 145
		if escaped then
			PVP_PRO_AI_V6_EVIDENCE(
				memory, "panic_escape", true, 0.38, "pressure", true )
		elseif memory.tick - memory.v6_escape_watch_tick == 5 then
			PVP_PRO_AI_V6_EVIDENCE(
				memory, "panic_escape", false, 0.18, "pressure", false )
		end
	end

	if targetDamage > 0.5 and option ~= memory.v6_pre_punish_option then
		memory.v6_pre_punish_option = option
		memory.v6_punish_change_tick = memory.tick
	elseif memory.v6_punish_change_tick ~= nil
		and memory.tick - memory.v6_punish_change_tick <= 7
		and option ~= ( memory.v6_pre_punish_option or option ) then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, "adapts_after_punish", true, 0.34, context, true )
	end

	table.insert( memory.recent_observations_v6, {
		option = option, context = context, tick = memory.tick,
	} )
	while #memory.recent_observations_v6 > 12 do
		table.remove( memory.recent_observations_v6, 1 )
	end
end

function PVP_PRO_AI_V6_DETECT_CHANGE( memory )
	if #memory.recent_observations_v6 < 10
		or memory.tick % 4 ~= 0 then return end
	if memory.behavior_changed_v6 == true
		and memory.tick - memory.behavior_change_tick_v6 <= 55 then
		return
	end
	local oldCounts = {
		approach = 0, retreat = 0, jump = 0, feint = 0, hold = 0,
	}
	local newCounts = {
		approach = 0, retreat = 0, jump = 0, feint = 0, hold = 0,
	}
	for index, observed in ipairs( memory.recent_observations_v6 ) do
		if index <= 6 then
			oldCounts[observed.option] = oldCounts[observed.option] + 1
		else
			newCounts[observed.option] = newCounts[observed.option] + 1
		end
	end
	local divergence = 0
	local oldDominant, newDominant = "hold", "hold"
	local oldMaximum, newMaximum = -1, -1
	for _, option in ipairs( PVP_PRO_AI_V4_OPTIONS ) do
		divergence = divergence
			+ math.abs( oldCounts[option] / 6 - newCounts[option] / 6 )
		if oldCounts[option] > oldMaximum then
			oldDominant, oldMaximum = option, oldCounts[option]
		end
		if newCounts[option] > newMaximum then
			newDominant, newMaximum = option, newCounts[option]
		end
	end
	divergence = divergence * 0.5
	local candidate = oldDominant .. ">" .. newDominant
	local meaningful = divergence >= 0.52
		and oldDominant ~= newDominant
		and oldMaximum >= 4 and newMaximum >= 4
	local candidateTarget = nil
	if memory.behavior_change_candidate_v6 ~= nil then
		candidateTarget = string.match(
			memory.behavior_change_candidate_v6, ">(.+)$" )
	end
	local confirmsCandidate = candidateTarget ~= nil
		and newDominant == candidateTarget and newMaximum >= 4
	if meaningful == true then
		if candidate == memory.behavior_change_candidate_v6 then
			memory.behavior_change_candidate_hits_v6 =
				memory.behavior_change_candidate_hits_v6 + 1
		else
			memory.behavior_change_candidate_v6 = candidate
			memory.behavior_change_candidate_hits_v6 = 1
		end
		memory.behavior_change_score_v6 =
			math.min( 3, memory.behavior_change_score_v6 + 1 )
	elseif confirmsCandidate == true then
		memory.behavior_change_candidate_hits_v6 =
			memory.behavior_change_candidate_hits_v6 + 1
		memory.behavior_change_score_v6 =
			math.min( 3, memory.behavior_change_score_v6 + 0.75 )
	else
		memory.behavior_change_score_v6 =
			math.max( 0, memory.behavior_change_score_v6 - 0.5 )
		memory.behavior_change_candidate_hits_v6 =
			math.max( 0, memory.behavior_change_candidate_hits_v6 - 1 )
	end
	local activeCandidate =
		memory.behavior_change_candidate_v6 or candidate
	local repeatedSignature = false
	for _, observedSignature in ipairs(
		memory.behavior_signatures_v6 ) do
		if observedSignature.name == activeCandidate
			then
			repeatedSignature = true
			break
		end
	end
	if repeatedSignature == true then
		memory.behavior_change_score_v6 = 0
		memory.behavior_change_candidate_hits_v6 = 0
	end
	if memory.behavior_change_score_v6 >= 2.5
		and memory.behavior_change_candidate_hits_v6 >= 3
		and repeatedSignature ~= true
		and memory.tick - memory.behavior_change_tick_v6 >= 55 then
		memory.behavior_changed_v6 = true
		memory.behavior_change_tick_v6 = memory.tick
		memory.behavior_epoch_v6 = memory.behavior_epoch_v6 + 1
		memory.pending_change_probe_v6 = true
		table.insert( memory.behavior_signatures_v6, {
			name = activeCandidate, tick = memory.tick,
		} )
		while #memory.behavior_signatures_v6 > 6 do
			table.remove( memory.behavior_signatures_v6, 1 )
		end
		for _, name in ipairs( PVP_PRO_AI_V6_HYPOTHESIS_NAMES ) do
			local hypothesis = memory.hypotheses_v6[name]
			if hypothesis.confidence >= 0.42 then
				hypothesis.historical_confidence = hypothesis.confidence
				hypothesis.confidence =
					math.max( 0.18, hypothesis.confidence * 0.72 )
				hypothesis.changed = true
				hypothesis.change_tick = memory.tick
				PVP_PRO_AI_V6_REFRESH_HYPOTHESIS(
					memory, hypothesis )
			end
		end
		PVP_PRO_AI_V6_EVENT( memory, "opponent_change_detected", {
			divergence = divergence,
			epoch = memory.behavior_epoch_v6,
			signature = activeCandidate,
		} )
	end
	if memory.behavior_changed_v6 == true
		and memory.tick - memory.behavior_change_tick_v6 > 55 then
		memory.behavior_changed_v6 = false
	end
end

function PVP_PRO_AI_V6_ENTROPY( memory )
	local entropy = memory.belief_entropy_v5 or 1
	local reliable = 0
	for _, name in ipairs( PVP_PRO_AI_V6_HYPOTHESIS_NAMES ) do
		local confidence = memory.hypotheses_v6[name].confidence
		if confidence >= 0.52 then reliable = reliable + 1 end
	end
	return PVP_PRO_AI_CLAMP(
		entropy * 0.78 + ( 1 - math.min( 1, reliable / 5 ) ) * 0.22,
		0, 1 )
end

function PVP_PRO_AI_V6_RESOURCE_BAND( mp )
	if mp >= 250 then return "full" end
	if mp >= 170 then return "high" end
	if mp >= 90 then return "mid" end
	return "low"
end

function PVP_PRO_AI_V6_UPDATE_GEOMETRY( memory )
	local profile = memory.competitive_profile_v6
	local distance = memory.distance or 500
	local vertical = math.abs( memory.vertical_offset or 0 )
	local velocity = memory.distance_velocity or 0
	local preferredMin = profile.preferred_min or 300
	local preferredMax = profile.preferred_max or 720
	local verticalTolerance = profile.vertical_tolerance or 160

	if vertical > verticalTolerance then
		memory.neutral_geometry_v6 = "vertical_misalignment"
		memory.movement_intent_v6 = "reposition_vertically"
	elseif distance < preferredMin * 0.72 then
		memory.neutral_geometry_v6 = "compressed"
		memory.movement_intent_v6 = "give_space"
	elseif distance < preferredMin then
		memory.neutral_geometry_v6 = "close_edge"
		memory.movement_intent_v6 = velocity < -12 and "retreat" or "drift"
	elseif distance <= preferredMax then
		memory.neutral_geometry_v6 = "preferred_band"
		if math.abs( velocity ) < 12 then
			memory.movement_intent_v6 = "hold"
		elseif velocity < 0 then
			memory.movement_intent_v6 = "shadow"
		else
			memory.movement_intent_v6 = "cutoff"
		end
	else
		memory.neutral_geometry_v6 = "outside_band"
		memory.movement_intent_v6 =
			velocity > 14 and "cutoff" or "advance"
	end
end

function PVP_PRO_AI_V6_UPDATE_INITIATIVE(
	memory, pNPCUnit, ownDamage, targetDamage )
	local profile = memory.competitive_profile_v6
	local hpRate = memory.hp_rate or PVP_PRO_AI_HP_RATE( pNPCUnit )
	local targetRate = memory.target_hp_rate or 1
	local mp = pNPCUnit:GetNowMP()
	local previous = memory.initiative_state_v6
	local state = "neither_committed"
	local botHit = false
	local ok, value = pcall(
		function() return pNPCUnit:GetUnitCondition_bHit() end )
	if ok == true then botHit = value == true end

	memory.initiative_facets_v6 = {
		frame = "even",
		position = memory.neutral_geometry_v6 == "preferred_band"
			and "bot" or "contested",
		resource = mp >= 200 and "bot_ready" or "limited",
		health = hpRate > targetRate + 0.10 and "bot"
			or ( targetRate > hpRate + 0.10 and "opponent" or "even" ),
	}
	if ownDamage > 0.004 or botHit == true then
		state = "opponent_controls_exchange"
		memory.initiative_facets_v6.frame = "opponent"
	elseif targetDamage > 0.5 then
		state = "bot_controls_exchange"
		memory.initiative_facets_v6.frame = "bot"
	elseif memory.exchange_plan_v6 ~= nil then
		local plan = profile.plans[memory.exchange_plan_v6]
		if plan ~= nil and plan.yield_initiative == true then
			state = "intentionally_yielded"
		elseif memory.neutral_geometry_v6 == "preferred_band" then
			state = "bot_positional_only"
		elseif math.abs( memory.distance_velocity or 0 ) > 18 then
			state = "contested"
		end
	end
	if state == "neither_committed" and mp >= 200 and hpRate >= targetRate then
		state = "bot_resource_initiative"
	elseif state == "neither_committed" and hpRate > targetRate + 0.16 then
		state = "bot_health_lead_initiative"
	end
	memory.initiative_state_v6 = state
	if state == "bot_controls_exchange"
		or state == "bot_positional_only"
		or state == "bot_resource_initiative"
		or state == "bot_health_lead_initiative" then
		memory.tempo_control_ticks_v6 =
			memory.tempo_control_ticks_v6 + 1
	elseif state == "opponent_controls_exchange"
		or state == "intentionally_yielded" then
		memory.tempo_surrender_ticks_v6 =
			memory.tempo_surrender_ticks_v6 + 1
	end
	if previous ~= state then
		PVP_PRO_AI_V6_EVENT( memory, "initiative_changed", {
			from = previous, to = state,
		} )
	end
end

function PVP_PRO_AI_V6_DESIRED_TEMPO( memory, hpRate )
	local profile = memory.competitive_profile_v6
	local strategy = profile.strategies[memory.match_strategy_v6 or ""]
	local plan = profile.plans[memory.exchange_plan_v6 or ""]
	local mode = PVP_PRO_AI_V6_IDENTITY_MODE( memory )
	local targetRate = memory.target_hp_rate or 1
	if hpRate < 0.25 and targetRate > hpRate + 0.12 then
		return "desperation_acceleration"
	end
	if hpRate > targetRate + 0.16
		and memory.round_lead_v5 >= 0 then
		return "lead_preserving_slowdown"
	end
	if memory.engagement_phase_v6 == "disengagement"
		or memory.engagement_phase_v6 == "learning" then
		return "controlled_reset"
	end
	if mode == "patient_analyst"
		and ( memory.engagement_phase_v6 == "observation"
			or memory.engagement_phase_v6 == "positioning" )
		and PVP_PRO_AI_V6_ENTROPY( memory ) >= 0.34 then
		return "slow_observation"
	elseif mode == "conversion_optimizer"
		and ( memory.combo_active_v5 == true
			or memory.engagement_phase_v6 == "confirmation"
			or memory.engagement_phase_v6 == "conversion" ) then
		return "sustained_pressure"
	elseif mode == "movement_technician"
		and memory.neutral_geometry_v6 == "compressed" then
		return "controlled_reset"
	elseif mode == "relentless_pressure"
		and memory.initiative_state_v6 ~= "opponent_controls_exchange"
		and hpRate >= 0.30 then
		return "sustained_pressure"
	elseif mode == "defensive_survivor"
		and ( memory.initiative_state_v6 == "opponent_controls_exchange"
			or ( memory.mp or 0 ) < ( profile.resource_target or 170 ) ) then
		return "controlled_reset"
	elseif mode == "volatile_momentum"
		and ( memory.overconfidence_v6 or 0 ) >= 0.38 then
		return "sudden_burst"
	elseif mode == "resource_controller"
		and ( memory.mp or 0 ) < ( profile.resource_target or 170 ) then
		return "slow_observation"
	elseif mode == "reactive_punisher"
		and ( memory.initiative_state_v6 == "intentionally_yielded"
			or memory.initiative_state_v6 == "opponent_controls_exchange" ) then
		return "slow_observation"
	elseif mode == "deceptive_conditioner"
		and memory.conditioning_break_action_v6 ~= nil then
		return "sudden_burst"
	end
	if memory.engagement_phase_v6 == "commitment"
		or memory.engagement_phase_v6 == "conversion" then
		return "sudden_burst"
	end
	if memory.engagement_phase_v6 == "extension" then
		return "sustained_pressure"
	end
	if plan ~= nil and plan.tempo ~= nil then return plan.tempo end
	if strategy ~= nil and strategy.tempo ~= nil then return strategy.tempo end
	return profile.default_tempo or "measured_neutral"
end

function PVP_PRO_AI_V6_UPDATE_TEMPO( memory, hpRate )
	local desired = PVP_PRO_AI_V6_DESIRED_TEMPO( memory, hpRate )
	if desired == memory.tempo_state_v6 then return end
	if memory.tick - memory.tempo_since_v6 < 4
		and desired ~= "desperation_acceleration"
		and desired ~= "controlled_reset" then return end
	local previous = memory.tempo_state_v6
	memory.tempo_state_v6 = desired
	memory.tempo_since_v6 = memory.tick
	PVP_PRO_AI_V6_EVENT( memory, "tempo_changed", {
		from = previous, to = desired,
	} )
end

function PVP_PRO_AI_V6_STRATEGY_SCORE(
	memory, name, strategy, hpRate, mp )
	local profile = memory.competitive_profile_v6
	local drivers = strategy.drivers or {}
	local targetRate = memory.target_hp_rate or 1
	local entropy = PVP_PRO_AI_V6_ENTROPY( memory )
	local score = strategy.base or 10
	score = score + ( drivers.uncertainty or 0 ) * entropy * 10
	score = score + ( drivers.spacing or 0 )
		* ( memory.neutral_geometry_v6 == "preferred_band" and 2 or 7 )
	score = score + ( drivers.resource or 0 )
		* ( mp < ( profile.resource_target or 170 ) and 8 or -2 )
	score = score + ( drivers.lead or 0 )
		* math.max( 0, hpRate - targetRate ) * 18
	score = score + ( drivers.behind or 0 )
		* math.max( 0, targetRate - hpRate ) * 18
	score = score + ( drivers.lethal or 0 )
		* ( targetRate < 0.30 and 10 or 0 )
	score = score + ( drivers.survival or 0 )
		* ( hpRate < 0.32 and 10 or 0 )
	score = score + ( drivers.change or 0 )
		* ( memory.behavior_changed_v6 and 8 or 0 )
	score = score + ( drivers.vertical or 0 )
		* ( memory.neutral_geometry_v6 == "vertical_misalignment"
			and 7 or 0 )
	score = score + ( drivers.initiative or 0 )
		* math.max( 0, memory.initiative or 0 ) * 8
	score = score + ( drivers.yield or 0 )
		* ( memory.hypotheses_v6.reactive_counter.confidence * 8 )
	if strategy.hypothesis ~= nil then
		local hypothesis = memory.hypotheses_v6[strategy.hypothesis]
		if hypothesis ~= nil then
			score = score + hypothesis.confidence
				* ( strategy.hypothesis_weight or 9 )
		end
	end
	local stats = memory.strategy_stats_v6[name]
	if stats ~= nil then
		score = score + stats.value * 5
			- math.max( 0, stats.failures - stats.successes ) * 0.8
	end
	if name == memory.match_strategy_v6 then
		score = score + ( profile.strategy_hysteresis or 5 )
	end
	return score
end

function PVP_PRO_AI_V6_TRANSITION_STRATEGY(
	memory, name, reason, score )
	local previous = memory.match_strategy_v6
	if previous == name then return end
	if previous ~= nil then
		local oldStats = memory.strategy_stats_v6[previous]
		if oldStats == nil then
			oldStats = { selections = 0, successes = 0,
				failures = 0, value = 0, ticks = 0 }
			memory.strategy_stats_v6[previous] = oldStats
		end
		oldStats.ticks = oldStats.ticks
			+ math.max( 0, memory.tick - memory.strategy_since_v6 )
	end
	local strategy = memory.competitive_profile_v6.strategies[name]
	if strategy == nil then return end
	local stats = memory.strategy_stats_v6[name]
	if stats == nil then
		stats = { selections = 0, successes = 0,
			failures = 0, value = 0, ticks = 0 }
		memory.strategy_stats_v6[name] = stats
	end
	stats.selections = stats.selections + 1
	memory.match_strategy_v6 = name
	memory.strategy_since_v6 = memory.tick
	local minimum = strategy.min_ticks or 42
	local maximum = math.max( minimum, strategy.max_ticks or 86 )
	memory.strategy_until_v6 =
		memory.tick + math.random( minimum, maximum )
	memory.strategy_failures_v6 = 0
	memory.strategy_successes_v6 = 0
	memory.strategy_transition_reason_v6 = reason
	memory.exchange_plan_v6 = nil
	memory.tactical_intention_v6 = nil
	PVP_PRO_AI_V6_EVENT( memory, "strategy_transition", {
		from = previous or "none", to = name,
		reason = reason, score = score or 0,
	} )
end

function PVP_PRO_AI_V6_SELECT_STRATEGY(
	memory, hpRate, mp, roundChanged )
	local profile = memory.competitive_profile_v6
	if #profile.strategy_order == 0 then return end
	local current = memory.match_strategy_v6
	local currentDef = current ~= nil and profile.strategies[current] or nil
	local elapsed = memory.tick - memory.strategy_since_v6
	local reason = nil
	local forced = false
	if current == nil then
		reason, forced = "initial_match_theory", true
	elseif roundChanged == true then
		reason, forced = "round_state_changed", true
	elseif hpRate < 0.20 and ( currentDef == nil
		or ( ( currentDef.drivers or {}).survival or 0 ) < 0.80 ) then
		reason, forced = "immediate_lethal_risk", true
	elseif ( memory.target_hp_rate or 1 ) < 0.20
		and ( currentDef == nil
			or ( ( currentDef.drivers or {}).lethal or 0 ) < 0.80 ) then
		reason, forced = "lethal_opportunity", true
	elseif memory.strategy_failures_v6 >= 3
		and elapsed >= ( currentDef ~= nil
			and ( currentDef.min_ticks or 42 ) or 0 ) then
		reason = "repeated_strategy_failure"
	elseif memory.behavior_changed_v6 == true
		and memory.tick - memory.behavior_change_tick_v6 >= 8
		and elapsed >= ( currentDef ~= nil
			and ( currentDef.min_ticks or 42 ) or 0 ) then
		reason = "stable_opponent_change"
	elseif memory.tick >= memory.strategy_until_v6 then
		reason = "strategy_evidence_review"
	end

	local resourceBand = PVP_PRO_AI_V6_RESOURCE_BAND( mp )
	if resourceBand ~= memory.last_resource_band_v6
		and ( resourceBand == "full" or resourceBand == "low" )
		and elapsed >= ( currentDef ~= nil
			and math.floor( ( currentDef.min_ticks or 42 ) * 0.75 ) or 0 ) then
		reason = reason or "material_resource_change"
	end
	memory.last_resource_band_v6 = resourceBand
	if reason == nil then return end

	local best, bestScore = current, -999
	local currentScore = -999
	for _, name in ipairs( profile.strategy_order ) do
		local strategy = profile.strategies[name]
		local eligible = true
		if reason == "immediate_lethal_risk" then
			eligible = ( ( strategy.drivers or {}).survival or 0 ) >= 0.80
		elseif reason == "lethal_opportunity" then
			eligible = ( ( strategy.drivers or {}).lethal or 0 ) >= 0.80
		end
		local score = eligible == true
			and PVP_PRO_AI_V6_STRATEGY_SCORE(
				memory, name, strategy, hpRate, mp ) or -999
		memory.strategy_scores_v6[name] = score
		if name == current then currentScore = score end
		if score > bestScore then
			best, bestScore = name, score
		end
	end
	if best == nil then return end
	if forced ~= true and current ~= nil
		and best ~= current
		and bestScore < currentScore
			+ ( profile.strategy_hysteresis or 5 ) * 0.65 then
		memory.strategy_until_v6 = memory.tick + 14
		PVP_PRO_AI_V6_EVENT( memory, "strategy_retained", {
			strategy = current, reason = "insufficient_evidence_margin",
			current_score = currentScore, challenger_score = bestScore,
		} )
		return
	end
	PVP_PRO_AI_V6_TRANSITION_STRATEGY(
		memory, best, reason, bestScore )
end

function PVP_PRO_AI_V6_PLAN_SCORE( memory, name, plan )
	local score = plan.base or 8
	local entropy = PVP_PRO_AI_V6_ENTROPY( memory )
	if plan.probe == true then
		score = score + entropy * 8
		if memory.active_probe_v6 ~= nil then score = score + 8 end
	end
	if plan.position == true then
		score = score + ( memory.neutral_geometry_v6 == "preferred_band"
			and -1 or 6 )
	end
	if plan.pressure == true then
		score = score + math.max( 0, memory.initiative or 0 ) * 8
	end
	if plan.reset == true then
		score = score + math.max( 0, -( memory.initiative or 0 ) ) * 8
			+ memory.pressure * 0.6
	end
	if plan.cashout == true then
		score = score + ( ( memory.target_hp_rate or 1 ) < 0.32
			and 10 or -2 )
	end
	if plan.resource == true then
		score = score + ( ( memory.mp or 0 )
			< ( memory.competitive_profile_v6.resource_target or 170 )
			and 7 or -3 )
	end
	if plan.condition == true then
		score = score + memory.hypotheses_v6.reactive_counter.confidence * 5
	end
	if plan.changeup == true and memory.behavior_changed_v6 == true then
		score = score + 7
	end
	local stats = memory.plan_stats_v6[name]
	if stats ~= nil then score = score + stats.value * 4 end
	if name == memory.exchange_plan_v6
		and memory.plan_failures_v6 >= 2 then
		score = score - 11
	end
	return score
end

function PVP_PRO_AI_V6_SELECT_PLAN( memory, reason )
	local profile = memory.competitive_profile_v6
	local strategy = profile.strategies[memory.match_strategy_v6 or ""]
	if strategy == nil or strategy.plans == nil
		or #strategy.plans == 0 then return end
	local best, bestScore = nil, -999
	for _, name in ipairs( strategy.plans ) do
		local plan = profile.plans[name]
		if plan ~= nil then
			local score = PVP_PRO_AI_V6_PLAN_SCORE(
				memory, name, plan )
			if score > bestScore then
				best, bestScore = name, score
			end
		end
	end
	if best == nil then return end
	local previous = memory.exchange_plan_v6
	if previous == best and reason ~= "plan_invalidated" then
		memory.plan_until_v6 = memory.tick
			+ math.random( 12, 20 )
		return
	end
	local plan = profile.plans[best]
	local stats = memory.plan_stats_v6[best]
	if stats == nil then
		stats = { selections = 0, successes = 0,
			failures = 0, value = 0 }
		memory.plan_stats_v6[best] = stats
	end
	stats.selections = stats.selections + 1
	memory.exchange_plan_v6 = best
	memory.plan_since_v6 = memory.tick
	memory.plan_until_v6 = memory.tick
		+ math.random( plan.min_ticks or 16, plan.max_ticks or 34 )
	memory.plan_failures_v6 = 0
	memory.plan_successes_v6 = 0
	memory.plan_transition_reason_v6 = reason or "strategy_plan_selected"
	memory.tactical_intention_v6 = nil
	PVP_PRO_AI_V6_EVENT( memory, "exchange_plan_transition", {
		from = previous or "none", to = best,
		reason = memory.plan_transition_reason_v6,
		score = bestScore,
	} )
end

function PVP_PRO_AI_V6_INTENTION_FEASIBILITY( memory, intention )
	local profile = memory.competitive_profile_v6
	local feasible = 0
	for _, action in ipairs( intention.actions or {} ) do
		local trait = profile.action_traits[action]
		if trait ~= nil then
			local distance = memory.distance or 500
			local mp = memory.mp or 0
			local vertical = math.abs( memory.vertical_offset or 0 )
			if distance >= ( trait.min_dist or 0 ) - 80
				and distance <= ( trait.max_dist or 2000 ) + 80
				and mp >= ( trait.mp or 0 )
				and vertical <= ( trait.vertical or 999 ) then
				feasible = feasible + 1
			end
		end
	end
	return feasible
end

function PVP_PRO_AI_V6_SELECT_INTENTION( memory, reason )
	local profile = memory.competitive_profile_v6
	local plan = profile.plans[memory.exchange_plan_v6 or ""]
	local names = plan ~= nil and plan.intentions or nil
	if names == nil or #names == 0 then
		if profile.fallback_intention == nil then return end
		names = { profile.fallback_intention }
	end
	local best, bestScore = nil, -999
	for _, name in ipairs( names ) do
		local intention = profile.intentions[name]
		if intention ~= nil then
			local feasible = PVP_PRO_AI_V6_INTENTION_FEASIBILITY(
				memory, intention )
			local score = ( intention.base or 7 ) + feasible * 2.8
				- ( intention.risk or 0.4 )
					* math.max( 0, memory.pressure - 3 )
			if intention.conditioning == true
				and memory.conditioning_break_action_v6 ~= nil then
				score = score + 5
			end
			if memory.error_mode_v6 == "familiar_route"
				and name == memory.last_successful_intention_v6 then
				score = score + 5
			end
			if name == memory.tactical_intention_v6
				and memory.intention_failures_v6 >= 2 then
				score = score - 10
			end
			if score > bestScore then
				best, bestScore = name, score
			end
		end
	end
	if best == nil then return end
	local previous = memory.tactical_intention_v6
	local intention = profile.intentions[best]
	memory.tactical_intention_v6 = best
	memory.intention_since_v6 = memory.tick
	memory.intention_until_v6 = memory.tick
		+ math.random( intention.min_ticks or 6,
			intention.max_ticks or 14 )
	memory.intention_step_v6 = 1
	memory.intention_failures_v6 = 0
	memory.intention_successes_v6 = 0
	PVP_PRO_AI_V6_EVENT( memory, "tactical_intention_transition", {
		from = previous or "none", to = best,
		reason = reason or "plan_implementation_selected",
		score = bestScore,
	} )
end

function PVP_PRO_AI_V6_SET_PHASE( memory, phase, reason )
	if memory.engagement_phase_v6 == phase then return end
	local previous = memory.engagement_phase_v6
	memory.engagement_phase_v6 = phase
	memory.phase_since_v6 = memory.tick
	if phase == "observation" then
		memory.engagement_id_v6 = memory.engagement_id_v6 + 1
		memory.engagement_damage_v6 = 0
		memory.engagement_damage_taken_v6 = 0
		memory.engagement_start_hp_v6 = memory.hp_rate or 1
		memory.engagement_start_target_hp_v6 =
			memory.target_hp_rate or 1
	elseif phase == "learning" then
		PVP_PRO_AI_V6_EVENT( memory, "engagement_summary", {
			engagement = memory.engagement_id_v6,
			damage = memory.engagement_damage_v6,
			damage_taken = memory.engagement_damage_taken_v6,
			reason = reason or "exchange_complete",
		} )
	end
	PVP_PRO_AI_V6_EVENT( memory, "engagement_phase", {
		from = previous, to = phase,
		reason = reason or "phase_progression",
	} )
end

function PVP_PRO_AI_V6_ADVANCE_PASSIVE_PHASE( memory )
	local elapsed = memory.tick - memory.phase_since_v6
	if memory.engagement_phase_v6 == "observation" and elapsed >= 3 then
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "positioning", "observation_window_complete" )
	elseif memory.engagement_phase_v6 == "positioning"
		and ( memory.neutral_geometry_v6 == "preferred_band"
			or elapsed >= 7 ) then
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "threat", "engagement_geometry_established" )
	elseif memory.engagement_phase_v6 == "disengagement"
		and elapsed >= 5 then
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "learning", "spacing_recovered" )
	elseif memory.engagement_phase_v6 == "learning"
		and elapsed >= 3 then
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "observation", "post_exchange_model_updated" )
	end
end

function PVP_PRO_AI_V6_SHOULD_PROBE( memory )
	if memory.active_probe_v6 ~= nil then return false end
	if memory.tick < memory.probe_cooldown_until_v6 then return false end
	if ( memory.hp_rate or 1 ) < 0.32 then return false end
	if ( memory.target_hp_rate or 1 ) < 0.28 then return false end
	if memory.combo_active_v5 == true
		or memory.engagement_phase_v6 == "conversion"
		or memory.engagement_phase_v6 == "extension" then return false end
	if memory.initiative_state_v6 == "opponent_controls_exchange" then
		return false
	end
	return PVP_PRO_AI_V6_ENTROPY( memory ) >= 0.46
		or memory.pending_change_probe_v6 == true
end

function PVP_PRO_AI_V6_SELECT_PROBE( memory )
	if PVP_PRO_AI_V6_SHOULD_PROBE( memory ) ~= true then return end
	local profile = memory.competitive_profile_v6
	local preferredStyle = profile.probe_style or "adaptive"
	local best, bestValue = nil, 0
	for _, name in ipairs( profile.probe_order or {} ) do
		local probe = profile.probes[name]
		local hypothesis = probe ~= nil
			and memory.hypotheses_v6[probe.hypothesis] or nil
		local count = memory.probe_counts_v6[name] or 0
		if probe ~= nil and hypothesis ~= nil
			and count < ( probe.max_repetitions or 2 )
			and hypothesis.confidence < ( probe.stop_confidence or 0.68 )
			and hypothesis.deception < 0.62 then
			local information = ( probe.information or 0.7 )
				* ( 1 - hypothesis.confidence )
			local value = information * 10
				- ( probe.risk or 0.2 ) * 7
				- ( probe.cost or 0.2 ) * 4
			if hypothesis.changed == true then value = value + 3 end
			if memory.pending_change_probe_v6 == true then value = value + 2 end
			if preferredStyle == "adaptive"
				or probe.style == preferredStyle then value = value + 2.5 end
			if PVP_PRO_AI_V6_IDENTITY_MODE( memory )
				== "relentless_pressure" and ( probe.risk or 0 ) < 0.18 then
				value = value - 2
			elseif PVP_PRO_AI_V6_IDENTITY_MODE( memory )
				== "defensive_survivor" then
				value = value - ( probe.risk or 0 ) * 4
			end
			if value > bestValue then
				best, bestValue = name, value
			end
		end
	end
	if best == nil then return end
	local probe = profile.probes[best]
	memory.active_probe_v6 = {
		name = best,
		question = probe.question,
		hypothesis = probe.hypothesis,
		expected = probe.expected,
		actions = probe.actions,
		step = 1,
		start_tick = memory.tick,
		expires = memory.tick + ( probe.duration or 18 ),
		risk = probe.risk,
	}
	memory.probe_counts_v6[best] =
		( memory.probe_counts_v6[best] or 0 ) + 1
	memory.hypotheses_v6[probe.hypothesis].tested = true
	memory.hypotheses_v6[probe.hypothesis].test_count =
		memory.hypotheses_v6[probe.hypothesis].test_count + 1
	memory.pending_change_probe_v6 = false
	PVP_PRO_AI_V6_EVENT( memory, "probe_started", {
		probe = best, question = probe.question,
		hypothesis = probe.hypothesis, value = bestValue,
	} )
end

function PVP_PRO_AI_V6_RESOLVE_PROBE(
	memory, entry, success, confirmType )
	local active = memory.active_probe_v6
	if active == nil then return end
	local involved = false
	for _, action in ipairs( active.actions or {} ) do
		if action == entry.action then involved = true break end
	end
	if involved ~= true then return end
	local observed = memory.observed_option or "hold"
	local matched = observed == active.expected
		or ( active.expected == "escape"
			and ( observed == "retreat" or observed == "jump" ) )
		or ( active.expected == "counter"
			and ( confirmType == "trade"
				or confirmType == "interrupted" ) )
	if matched then
		PVP_PRO_AI_V6_EVIDENCE(
			memory, active.hypothesis, true, 0.72,
			PVP_PRO_AI_V6_CONTEXT( memory ), true )
	else
		PVP_PRO_AI_V6_EVIDENCE(
			memory, active.hypothesis, false, 0.44,
			PVP_PRO_AI_V6_CONTEXT( memory ), false )
	end
	PVP_PRO_AI_V6_EVENT( memory, "probe_resolved", {
		probe = active.name,
		result = matched and "expected_response" or "contradicted",
		observed = observed,
		success = success == true,
	} )
	memory.active_probe_v6 = nil
	memory.probe_cooldown_until_v6 =
		memory.tick + math.random( 30, 48 )
end

function PVP_PRO_AI_V6_UPDATE_CONDITIONING_ON_ACTION(
	memory, action, intentional )
	local record = memory.conditioning_v6[action]
	if record == nil then return end
	record.shown = math.min( 6, record.shown + 1 )
	if intentional == true then
		record.intentional = math.min( 6, record.intentional + 1 )
	else
		record.incidental = math.min( 6, record.incidental + 1 )
	end
	record.last_tick = memory.tick
	local breaker =
		memory.competitive_profile_v6.conditioning_breaks[action]
	if breaker ~= nil and record.shown >= 2
		and ( record.anticipated >= 1 or record.shown >= 3 ) then
		memory.conditioning_break_action_v6 = breaker
	end
end

function PVP_PRO_AI_V6_DECAY_CONDITIONING( memory )
	if memory.tick % 22 ~= 0 then return end
	for _, record in pairs( memory.conditioning_v6 ) do
		record.shown = math.max( 0, record.shown - 1 )
		record.anticipated = math.max( 0, record.anticipated - 0.35 )
		record.failures = math.max( 0, record.failures - 0.25 )
	end
end

function PVP_PRO_AI_V6_ROUTE_KEY( memory, action )
	local band = PVP_PRO_AI_V3_BAND( memory.distance or 500 )
	local height = "level"
	local vertical = memory.vertical_offset or 0
	if vertical > 115 then height = "above"
	elseif vertical < -115 then height = "below" end
	local resource = PVP_PRO_AI_V6_RESOURCE_BAND( memory.mp or 0 )
	local scaling = "fresh"
	if ( memory.combo_scaling_v5 or 1 ) < 0.58 then scaling = "late"
	elseif ( memory.combo_scaling_v5 or 1 ) < 0.80 then scaling = "mid" end
	return action .. "|" .. band .. "|" .. height .. "|"
		.. resource .. "|" .. scaling
end

function PVP_PRO_AI_V6_ROUTE_STATS( memory, key )
	local stats = memory.route_stats_v6[key]
	if stats ~= nil then
		stats.last_tick = memory.tick
		return stats
	end
	if #memory.route_keys_v6 >= memory.route_stats_limit_v6 then
		local oldestIndex, oldestTick = 1, 999999999
		for index, routeKey in ipairs( memory.route_keys_v6 ) do
			local candidate = memory.route_stats_v6[routeKey]
			local candidateTick = candidate ~= nil
				and candidate.last_tick or 0
			if candidateTick < oldestTick then
				oldestIndex, oldestTick = index, candidateTick
			end
		end
		local removed = table.remove(
			memory.route_keys_v6, oldestIndex )
		memory.route_stats_v6[removed] = nil
	end
	stats = {
		attempts = 0, confirms = 0, drops = 0,
		damage = 0, value = 0, last_tick = memory.tick,
		last_drop_action = nil,
	}
	memory.route_stats_v6[key] = stats
	table.insert( memory.route_keys_v6, key )
	return stats
end

function PVP_PRO_AI_V6_SELECT_COMBO_GOAL( memory )
	if memory.combo_active_v5 ~= true then
		memory.combo_goal_v6 = "maximum_reliable_damage"
		return
	end
	if memory.tick < memory.combo_goal_hold_until_v6 then return end
	local previous = memory.combo_goal_v6
	local hpRate = memory.hp_rate or 1
	local targetRate = memory.target_hp_rate or 1
	local profile = memory.competitive_profile_v6
	local mode = PVP_PRO_AI_V6_IDENTITY_MODE( memory )
	local goal = "maximum_reliable_damage"
	if targetRate < 0.24 then
		goal = "lethal_confirmation"
	elseif hpRate < 0.28 and targetRate > hpRate + 0.14 then
		goal = "high_risk_comeback_conversion"
	elseif mode == "patient_analyst"
		and PVP_PRO_AI_V6_ENTROPY( memory ) >= 0.56 then
		goal = "low_variance_cashout"
	elseif mode == "conversion_optimizer"
		and memory.last_confirm_type_v6 == "clean" then
		goal = "maximum_reliable_damage"
	elseif mode == "movement_technician"
		and memory.neutral_geometry_v6 ~= "preferred_band" then
		goal = "positional_carry"
	elseif mode == "relentless_pressure"
		and memory.inferred_defense_resource_v6 >= 0.46 then
		goal = "defensive_resource_exhaustion"
	elseif mode == "defensive_survivor"
		and hpRate > targetRate + 0.10 then
		goal = "preserve_resources"
	elseif mode == "volatile_momentum"
		and targetRate > hpRate + 0.08 then
		goal = "high_risk_comeback_conversion"
	elseif mode == "resource_controller"
		and ( memory.mp or 0 ) < ( profile.resource_target or 170 ) then
		goal = "resource_generation"
	elseif mode == "reactive_punisher"
		and memory.hypotheses_v6.panic_escape.confidence >= 0.42 then
		goal = "bait_escape"
	elseif mode == "deceptive_conditioner"
		and memory.conditioning_break_action_v6 ~= nil then
		goal = "reset_pressure"
	elseif ( memory.knockdown_risk_v5 or 0 )
		>= ( profile.reset_threshold or 0.66 ) then
		if memory.hypotheses_v6.panic_escape.confidence >= 0.50 then
			goal = "bait_escape"
		else
			goal = "reset_pressure"
		end
	elseif ( memory.mp or 0 ) < ( profile.resource_target or 170 ) then
		goal = "resource_generation"
	elseif memory.inferred_defense_resource_v6 >= 0.62
		and memory.combo_hits_v5 >= 2 then
		goal = "defensive_resource_exhaustion"
	elseif memory.neutral_geometry_v6 ~= "preferred_band" then
		goal = "positional_carry"
	elseif memory.round_lead_v5 > 0 and hpRate > targetRate + 0.14 then
		goal = "preserve_resources"
	elseif memory.last_confirm_type_v6 == "partial"
		or memory.last_confirm_type_v6 == "late" then
		goal = "low_variance_cashout"
	end
	memory.combo_goal_v6 = goal
	memory.combo_goal_since_v6 = memory.tick
	memory.combo_goal_hold_until_v6 = memory.tick
		+ math.random( 3, 6 )
	if previous ~= goal then
		PVP_PRO_AI_V6_EVENT( memory, "combo_goal_changed", {
			from = previous, to = goal,
			scaling = memory.combo_scaling_v5 or 1,
			knockdown = memory.knockdown_risk_v5 or 0,
		} )
	end
end

function PVP_PRO_AI_V6_UPDATE_ERROR( memory, hpRate )
	if memory.tick < memory.error_until_v6 then return end
	local profile = memory.competitive_profile_v6
	local errors = profile.error_profile or {}
	local entropy = PVP_PRO_AI_V6_ENTROPY( memory )
	local pressure = math.min( 1, ( memory.pressure or 0 ) / 8 )
	local healthStress = math.max( 0, 0.42 - hpRate ) * 1.8
	local surprise = memory.surprise_v6 or 0
	local complexity = 0
	local intention =
		profile.intentions[memory.tactical_intention_v6 or ""]
	if intention ~= nil then
		complexity = math.min( 1,
			#( intention.actions or {} ) / 5
				+ ( intention.risk or 0.3 ) * 0.35 )
	end
	memory.cognitive_load_v6 = PVP_PRO_AI_CLAMP(
		entropy * 0.28 + pressure * 0.24 + healthStress * 0.18
			+ surprise * 0.20 + complexity * 0.10, 0, 1 )
	local baseChance = errors.base or 0.035
	local chance = baseChance + memory.cognitive_load_v6
		* ( errors.load_scale or 0.13 )
	if memory.tick - memory.last_unexpected_tick_v6 <= 5 then
		chance = chance + ( errors.surprise_scale or 0.05 )
	end
	if memory.overconfidence_v6 > 0.55 then
		chance = chance + ( errors.overconfidence_scale or 0.035 )
	end
	chance = PVP_PRO_AI_CLAMP( chance, 0.02, 0.22 )

	local mode = "none"
	if math.random( 10000 ) <= chance * 10000 then
		local weights = {
			{ "range_bias", errors.range_bias or 1 },
			{ "late_confirm", errors.late_confirm or 1 },
			{ "familiar_route", errors.familiar_route or 1 },
			{ "greedy_resource", errors.greedy_resource or 1 },
			{ "stale_read", errors.stale_read or 1 },
			{ "overconfident_commit", errors.overcommit or 1 },
		}
		local total = 0
		for _, item in ipairs( weights ) do total = total + item[2] end
		if total > 0 then
			local roll = math.random( 10000 ) / 10000 * total
			local running = 0
			for _, item in ipairs( weights ) do
				running = running + item[2]
				if roll <= running then mode = item[1] break end
			end
		end
	end
	memory.error_mode_v6 = mode
	memory.error_until_v6 = memory.tick
		+ ( mode == "none" and math.random( 6, 10 )
			or math.random( 3, 6 ) )
	if mode ~= "none" then
		PVP_PRO_AI_V6_EVENT( memory, "bounded_human_error", {
			mode = mode, load = memory.cognitive_load_v6,
			entropy = entropy, pressure = pressure,
		} )
	end
end

function PVP_PRO_AI_V6_EXPECTED_ACTION( memory )
	local active = memory.active_probe_v6
	if active ~= nil and memory.tick <= active.expires then
		return active.actions[active.step] or active.actions[1]
	end
	if memory.conditioning_break_action_v6 ~= nil then
		return memory.conditioning_break_action_v6
	end
	local intention = memory.competitive_profile_v6.intentions[
		memory.tactical_intention_v6 or ""]
	if intention == nil or intention.actions == nil
		or #intention.actions == 0 then return nil end
	return intention.actions[
		math.min( memory.intention_step_v6, #intention.actions )]
end

function PVP_PRO_AI_V6_APPLY_AUTHORITY( memory )
	local profile = memory.competitive_profile_v6
	local strategy = profile.strategies[memory.match_strategy_v6 or ""]
	local plan = profile.plans[memory.exchange_plan_v6 or ""]
	local intention =
		profile.intentions[memory.tactical_intention_v6 or ""]
	if strategy ~= nil and strategy.v5_goal ~= nil
		and memory.strategic_profile.playbooks[strategy.v5_goal] ~= nil then
		memory.strategic_goal_v5 = strategy.v5_goal
		memory.playbook_name_v5 = strategy.v5_goal
	end
	if intention ~= nil and intention.roles ~= nil
		and #intention.roles > 0 then
		memory.playbook_roles_v5 = intention.roles
		memory.playbook_step_v5 = math.min(
			memory.playbook_step_v5 or 1, #intention.roles )
	elseif plan ~= nil and plan.roles ~= nil and #plan.roles > 0 then
		memory.playbook_roles_v5 = plan.roles
		memory.playbook_step_v5 = math.min(
			memory.playbook_step_v5 or 1, #plan.roles )
	end
	memory.intent_action_v5 = PVP_PRO_AI_V6_EXPECTED_ACTION( memory )
	memory.goal_until_v5 = math.max(
		memory.goal_until_v5 or 0, memory.tick + 5 )
	memory.playbook_until_v5 = memory.goal_until_v5
	memory.engagement = memory.engagement_phase_v6
	if memory.tempo_state_v6 == "slow_observation"
		or memory.tempo_state_v6 == "lead_preserving_slowdown"
		or memory.tempo_state_v6 == "controlled_reset" then
		memory.pace = "patient"
	elseif memory.tempo_state_v6 == "sudden_burst"
		or memory.tempo_state_v6 == "desperation_acceleration" then
		memory.pace = "explosive"
	else
		memory.pace = "measured"
	end
end

function PVP_PRO_AI_V6_ACTION_IN( action, actions )
	if actions == nil then return false end
	for _, candidate in ipairs( actions ) do
		if candidate == action then return true end
	end
	return false
end

function PVP_PRO_AI_V6_ACTION_UTILITY(
	memory, action, role, minMP )
	local profile = memory.competitive_profile_v6
	local trait = profile.action_traits[action]
	if trait == nil then return -6 end
	local utility = 0
	local expected = PVP_PRO_AI_V6_EXPECTED_ACTION( memory )
	local intention =
		profile.intentions[memory.tactical_intention_v6 or ""]
	local plan = profile.plans[memory.exchange_plan_v6 or ""]
	if action == expected then utility = utility + 20
	elseif intention ~= nil
		and PVP_PRO_AI_V6_ACTION_IN(
			action, intention.actions ) then utility = utility + 8
	elseif expected ~= nil then utility = utility - 5 end
	if intention ~= nil and intention.roles ~= nil then
		local desiredRole = intention.roles[
			math.min( memory.intention_step_v6, #intention.roles )]
		if role == desiredRole then utility = utility + 11 end
	end
	if plan ~= nil and plan.roles ~= nil then
		for index, planRole in ipairs( plan.roles ) do
			if role == planRole then
				utility = utility + math.max( 2, 7 - index * 2 )
				break
			end
		end
	end

	local phaseRoles =
		PVP_PRO_AI_V6_PHASE_ROLES[memory.engagement_phase_v6]
	if phaseRoles ~= nil and phaseRoles[role] == true then
		utility = utility + 7
	elseif phaseRoles ~= nil then
		utility = utility - 4
	end
	if memory.engagement_phase_v6 == "observation"
		and ( trait.commitment or 0.4 ) > 0.55 then
		utility = utility - 11
	elseif memory.engagement_phase_v6 == "commitment"
		and ( trait.commitment or 0.4 ) >= 0.45 then
		utility = utility + 7
	end

	local distance = memory.distance or 500
	if memory.neutral_geometry_v6 == "compressed" then
		if role == "escape" or role == "guard" then utility = utility + 10 end
		if role == "burst" and ( memory.hp_rate or 1 ) > 0.36 then
			utility = utility - 7
		end
	elseif memory.neutral_geometry_v6 == "outside_band" then
		if role == "advance" or role == "control"
			or role == "poke" then utility = utility + 7 end
	elseif memory.neutral_geometry_v6 == "vertical_misalignment" then
		if role == "air" or role == "air_move"
			or trait.vertical_control == true then utility = utility + 11 end
	end
	if memory.movement_intent_v6 == "hold"
		and ( role == "advance" or role == "escape" ) then
		utility = utility - 5
	end

	if memory.initiative_state_v6 == "opponent_controls_exchange" then
		if role == "escape" or role == "guard"
			or role == "control" then utility = utility + 10 end
		if role == "burst" then utility = utility - 8 end
	elseif memory.initiative_state_v6 == "bot_controls_exchange" then
		if role == "combo" or role == "chase"
			or role == "burst" then utility = utility + 9 end
	elseif memory.initiative_state_v6 == "intentionally_yielded" then
		if role == "guard" or role == "escape"
			or role == "poke" then utility = utility + 8 end
		if role == "advance" then utility = utility - 7 end
	end

	if memory.tempo_state_v6 == "slow_observation" then
		if role == "poke" or role == "guard"
			or role == "control" then utility = utility + 5 end
		if role == "burst" then utility = utility - 9 end
	elseif memory.tempo_state_v6 == "sudden_burst"
		or memory.tempo_state_v6 == "desperation_acceleration" then
		if role == "combo" or role == "chase"
			or role == "burst" then utility = utility + 7 end
	elseif memory.tempo_state_v6 == "lead_preserving_slowdown" then
		if role == "escape" or role == "guard"
			or role == "poke" then utility = utility + 7 end
		if minMP >= 200 then utility = utility - 7 end
	end

	local routeKey = PVP_PRO_AI_V6_ROUTE_KEY( memory, action )
	local routeStats = memory.route_stats_v6[routeKey]
	if routeStats ~= nil and routeStats.attempts >= 2 then
		local reliability = routeStats.confirms
			/ math.max( 1, routeStats.attempts )
		utility = utility + ( reliability - 0.5 ) * 11
		if routeStats.drops >= 2 then utility = utility - 7 end
	end

	if memory.combo_active_v5 == true then
		local goal = memory.combo_goal_v6
		if goal == "lethal_confirmation" then
			if role == "burst" or role == "combo" then utility = utility + 15 end
		elseif goal == "resource_generation" then
			if ( trait.resource_gain or 0 ) > 0 then utility = utility + 10 end
			if minMP >= 200 then utility = utility - 12 end
		elseif goal == "defensive_resource_exhaustion" then
			if trait.safe_pressure == true or role == "control" then
				utility = utility + 10
			end
		elseif goal == "positional_carry" then
			utility = utility + ( trait.carry or 0 ) * 10
		elseif goal == "reset_pressure" or goal == "bait_escape" then
			if role == "escape" or role == "guard"
				or role == "control" then utility = utility + 10 end
			if ( trait.knockdown or 0 ) > 0.20 then utility = utility - 9 end
		elseif goal == "low_variance_cashout" then
			utility = utility + ( trait.reliability or 0.5 ) * 8
				- ( trait.risk or 0.4 ) * 6
		elseif goal == "preserve_resources" and minMP >= 100 then
			utility = utility - 9
		elseif goal == "high_risk_comeback_conversion" then
			utility = utility + ( trait.conversion or 0.4 ) * 10
		end
	end

	local record = memory.conditioning_v6[action]
	if record ~= nil then
		utility = utility - record.anticipated * 4
			- math.max( 0, record.shown - 2 ) * 3.2
	end
	if action == memory.conditioning_break_action_v6 then
		utility = utility + 16
	end
	if memory.active_probe_v6 ~= nil
		and PVP_PRO_AI_V6_ACTION_IN(
			action, memory.active_probe_v6.actions ) then
		utility = utility + 10
	end

	local mode = PVP_PRO_AI_V6_IDENTITY_MODE( memory )
	if mode == "patient_analyst" then
		utility = utility + ( trait.reliability or 0.5 ) * 4
			- ( trait.risk or 0.4 ) * 5
		if role == "poke" or role == "control"
			or role == "guard" then utility = utility + 3 end
	elseif mode == "conversion_optimizer" then
		utility = utility + ( trait.conversion or 0.4 ) * 7
			+ ( trait.reliability or 0.5 ) * 3
		if memory.last_confirm_type_v6 == "clean"
			and ( role == "combo" or role == "burst" ) then
			utility = utility + 6
		end
	elseif mode == "movement_technician" then
		if role == "advance" or role == "escape"
			or role == "air_move" then utility = utility + 6 end
		if trait.vertical_control == true then utility = utility + 4 end
		if memory.neutral_geometry_v6 == "preferred_band"
			and role == "burst" then utility = utility - 4 end
	elseif mode == "relentless_pressure" then
		if role == "combo" or role == "chase"
			or role == "burst" then utility = utility + 6 end
		if role == "escape" and ( memory.hp_rate or 1 ) > 0.36 then
			utility = utility - 5
		end
	elseif mode == "defensive_survivor" then
		if role == "guard" or role == "escape"
			or role == "support" then utility = utility + 7 end
		utility = utility - ( trait.risk or 0.4 ) * 5
	elseif mode == "volatile_momentum" then
		local momentum = ( memory.overconfidence_v6 or 0 )
			- math.min( 1, memory.strategy_failures_v6 * 0.25 )
		if momentum > 0.18 then
			utility = utility + ( trait.commitment or 0.4 ) * 8
		elseif role == "guard" or role == "escape" then
			utility = utility + 5
		end
	elseif mode == "resource_controller" then
		if ( memory.mp or 0 ) < ( profile.resource_target or 170 ) then
			utility = utility + ( trait.resource_gain or 0 ) * 9
			if minMP >= 100 then utility = utility - 7 end
		elseif role == "control" or role == "burst" then
			utility = utility + 4
		end
	elseif mode == "tournament_all_rounder" then
		if memory.initiative_state_v6 == "bot_controls_exchange" then
			utility = utility + ( trait.conversion or 0.4 ) * 4
		elseif memory.initiative_state_v6 == "opponent_controls_exchange" then
			utility = utility + ( trait.reliability or 0.5 ) * 3
				- ( trait.risk or 0.4 ) * 3
		end
	elseif mode == "reactive_punisher" then
		if memory.initiative_state_v6 == "opponent_controls_exchange"
			or memory.initiative_state_v6 == "intentionally_yielded" then
			if role == "guard" or role == "control"
				or role == "escape" then utility = utility + 7 end
		elseif role == "chase" or role == "combo"
			or role == "burst" then utility = utility + 5 end
	elseif mode == "deceptive_conditioner" then
		if intention ~= nil and intention.conditioning == true then
			utility = utility + 5
		end
		if record ~= nil then
			utility = utility - record.shown * 1.5
		end
		if action == memory.conditioning_break_action_v6 then
			utility = utility + 7
		end
	end

	if memory.error_mode_v6 == "range_bias" then
		local center = ( ( trait.min_dist or 0 )
			+ ( trait.max_dist or 1000 ) ) * 0.5
		if math.abs( distance - center ) > 180 then utility = utility + 5 end
	elseif memory.error_mode_v6 == "late_confirm"
		and memory.engagement_phase_v6 == "confirmation" then
		if role == "combo" or role == "chase" then utility = utility - 9 end
	elseif memory.error_mode_v6 == "greedy_resource" then
		if minMP >= 100 then utility = utility - 8 end
		if role == "poke" or role == "escape" then utility = utility + 4 end
	elseif memory.error_mode_v6 == "stale_read" then
		local staleRole = PVP_PRO_AI_V4_COUNTER_ROLE(
			memory, memory.belief_option_v5 )
		if role == staleRole then utility = utility + 5 end
	elseif memory.error_mode_v6 == "overconfident_commit" then
		utility = utility + ( trait.commitment or 0.4 ) * 8
	end
	return PVP_PRO_AI_CLAMP( utility, -38, 48 )
end

function PVP_PRO_AI_V6_CONFIRM_TYPE( memory, entry, success )
	local profile = memory.competitive_profile_v6
	local trait = profile.action_traits[entry.action] or {}
	local ownDamage = math.max( 0,
		( entry.start_own_hp_rate_v6 or memory.v6_current_hp_rate or 1 )
			- ( memory.v6_current_hp_rate or memory.hp_rate or 1 ) )
	local elapsed = memory.tick - ( entry.tick or memory.tick )
	local distance = memory.distance or entry.start_distance_v6 or 500
	local vertical = math.abs(
		entry.start_vertical_v6 or memory.vertical_offset or 0 )
	if success == true then
		if ownDamage > 0.006 then return "trade" end
		if vertical > 115 then return "air" end
		if elapsed >= math.max( 2, ( entry.window or 4 ) - 1 ) then
			return "late"
		end
		if entry.observed_option_v6 == "approach"
			and ( entry.start_velocity_v6 or 0 ) < -14 then
			return "counter_like"
		end
		local route = memory.route_stats_v6[
			entry.route_key_v6 or ""]
		local expectedDamage = route ~= nil and route.damage or 0
		if expectedDamage > 0 and ( entry.damage or 0 )
			< expectedDamage * 0.45 then return "partial" end
		return "clean"
	end
	if ownDamage > 0.006 then return "interrupted" end
	local outsideRange = distance < ( trait.min_dist or 0 ) - 95
		or distance > ( trait.max_dist or 2000 ) + 115
		or math.abs( memory.vertical_offset or 0 )
			> ( trait.vertical or 999 ) + 70
	if outsideRange then return "whiff" end
	if elapsed >= ( entry.window or 4 ) then return "resisted" end
	return "uncertain"
end

function PVP_PRO_AI_V6_UPDATE_ROUTE(
	memory, entry, success, confirmType )
	local key = entry.route_key_v6
		or PVP_PRO_AI_V6_ROUTE_KEY( memory, entry.action )
	local stats = PVP_PRO_AI_V6_ROUTE_STATS( memory, key )
	stats.attempts = stats.attempts + 1
	if success == true then
		stats.confirms = stats.confirms + 1
		stats.damage = PVP_PRO_AI_V3_SMOOTH(
			stats.damage, entry.damage or 0, 0.22 )
	else
		stats.drops = stats.drops + 1
		stats.last_drop_action = entry.action
	end
	local sample = success == true
		and ( confirmType == "clean" and 1
			or ( confirmType == "trade" and 0.30 or 0.65 ) )
		or ( confirmType == "interrupted" and -0.85 or -0.55 )
	stats.value = PVP_PRO_AI_V3_SMOOTH(
		stats.value, sample, 0.20 )
	stats.last_tick = memory.tick
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V5_LEARN_IMPL( memory, entry, success )
	local confirmType =
		PVP_PRO_AI_V6_CONFIRM_TYPE( memory, entry, success )
	entry.confirm_type_v6 = confirmType
	memory.last_confirm_type_v6 = confirmType
	PVP_PRO_AI_V6_UPDATE_ROUTE(
		memory, entry, success, confirmType )

	local damage = entry.damage or 0
	local ownDamage = math.max( 0,
		( entry.start_own_hp_rate_v6 or memory.v6_current_hp_rate or 1 )
			- ( memory.v6_current_hp_rate or memory.hp_rate or 1 ) )
	memory.engagement_damage_v6 =
		memory.engagement_damage_v6 + damage
	memory.engagement_damage_taken_v6 =
		memory.engagement_damage_taken_v6 + ownDamage
	local sample = success == true
		and ( confirmType == "clean" and 1
			or ( confirmType == "trade" and 0.25 or 0.62 ) )
		or ( confirmType == "interrupted" and -0.90 or -0.55 )

	local strategyName = entry.strategy_v6
		or memory.match_strategy_v6
	if strategyName ~= nil then
		local stats = memory.strategy_stats_v6[strategyName]
		if stats == nil then
			stats = { selections = 0, successes = 0,
				failures = 0, value = 0, ticks = 0 }
			memory.strategy_stats_v6[strategyName] = stats
		end
		if success == true then
			stats.successes = stats.successes + 1
			memory.strategy_successes_v6 =
				memory.strategy_successes_v6 + 1
		else
			stats.failures = stats.failures + 1
			memory.strategy_failures_v6 =
				memory.strategy_failures_v6 + 1
		end
		stats.value = PVP_PRO_AI_V3_SMOOTH(
			stats.value, sample, 0.12 )
	end

	local planName = entry.plan_v6 or memory.exchange_plan_v6
	if planName ~= nil then
		local stats = memory.plan_stats_v6[planName]
		if stats == nil then
			stats = { selections = 0, successes = 0,
				failures = 0, value = 0 }
			memory.plan_stats_v6[planName] = stats
		end
		if success == true then
			stats.successes = stats.successes + 1
			memory.plan_successes_v6 = memory.plan_successes_v6 + 1
		else
			stats.failures = stats.failures + 1
			memory.plan_failures_v6 = memory.plan_failures_v6 + 1
		end
		stats.value = PVP_PRO_AI_V3_SMOOTH(
			stats.value, sample, 0.16 )
	end

	local record = memory.conditioning_v6[entry.action]
	if record ~= nil then
		if success == true then
			record.failures = math.max( 0, record.failures - 0.4 )
		else
			record.failures = math.min( 6, record.failures + 1 )
			if record.shown >= 2 then
				record.anticipated =
					math.min( 4, record.anticipated + 1 )
			end
		end
	end

	if success == true then
		memory.intention_successes_v6 =
			memory.intention_successes_v6 + 1
		local intention = memory.competitive_profile_v6.intentions[
			entry.intention_v6 or memory.tactical_intention_v6 or ""]
		if intention ~= nil and intention.actions ~= nil then
			memory.intention_step_v6 = math.min(
				#intention.actions, memory.intention_step_v6 + 1 )
		end
		memory.last_successful_intention_v6 =
			entry.intention_v6 or memory.tactical_intention_v6
		memory.overconfidence_v6 =
			math.min( 1, memory.overconfidence_v6 + 0.07 )
		if memory.engagement_phase_v6 == "confirmation"
			or memory.engagement_phase_v6 == "commitment"
			or memory.engagement_phase_v6 == "threat" then
			PVP_PRO_AI_V6_SET_PHASE(
				memory, "conversion", "hit_confirmed:" .. confirmType )
		elseif memory.engagement_phase_v6 == "conversion" then
			PVP_PRO_AI_V6_SET_PHASE(
				memory, "extension", "conversion_stable" )
		end
		if confirmType == "trade" then
			PVP_PRO_AI_V6_EVIDENCE(
				memory, "reactive_counter", true, 0.48,
				PVP_PRO_AI_V6_CONTEXT( memory ), true )
		end
	else
		memory.intention_failures_v6 =
			memory.intention_failures_v6 + 1
		memory.overconfidence_v6 =
			math.max( 0, memory.overconfidence_v6 - 0.12 )
		memory.surprise_v6 =
			math.min( 1, memory.surprise_v6
				+ ( confirmType == "interrupted" and 0.22 or 0.10 ) )
		memory.last_unexpected_tick_v6 = memory.tick
		if confirmType == "interrupted" then
			PVP_PRO_AI_V6_EVIDENCE(
				memory, "reactive_counter", true, 0.54,
				PVP_PRO_AI_V6_CONTEXT( memory ), true )
		end
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "disengagement",
			"failed_commitment:" .. confirmType )
	end

	PVP_PRO_AI_V6_RESOLVE_PROBE(
		memory, entry, success, confirmType )
	PVP_PRO_AI_V6_SELECT_COMBO_GOAL( memory )
	local telemetry = memory.telemetry_v6
	telemetry.action_confirm[confirmType] =
		( telemetry.action_confirm[confirmType] or 0 ) + 1
	PVP_PRO_AI_V6_EVENT( memory, "motor_outcome", {
		action = entry.action,
		role = entry.family or "unknown",
		success = success == true,
		confirm = confirmType,
		damage = damage,
		own_damage = ownDamage,
		route = entry.route_key_v6 or "unknown",
	} )
end

function PVP_PRO_AI_V6_RESOLVE_DEFENSE( memory, pNPCUnit )
	local pending = memory.pending_defense_v6
	if pending == nil or memory.tick - pending.tick < 2 then return end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local damage = math.max( 0, pending.start_hp - hpRate )
	local hit = false
	local ok, value = pcall(
		function() return pNPCUnit:GetUnitCondition_bHit() end )
	if ok == true then hit = value == true end
	local success = damage < 0.018 and hit ~= true
	local stats = memory.defense_stats_v6[pending.option]
	if stats ~= nil then
		if success == true then
			stats.success = stats.success + 1
		else
			stats.punished = stats.punished + 1
		end
	end
	PVP_PRO_AI_V6_EVENT( memory, "defense_outcome", {
		option = pending.option,
		plan = pending.plan,
		success = success,
		damage = damage,
	} )
	memory.pending_defense_v6 = nil
end

function PVP_PRO_AI_V6_UPDATE_HIERARCHY(
	memory, hpRate, mp, roundChanged )
	PVP_PRO_AI_V6_SELECT_STRATEGY(
		memory, hpRate, mp, roundChanged )
	local profile = memory.competitive_profile_v6
	local plan = profile.plans[memory.exchange_plan_v6 or ""]
	local planElapsed = memory.tick - memory.plan_since_v6
	local planMin = plan ~= nil and ( plan.min_ticks or 16 ) or 0
	local planReason = nil
	if memory.exchange_plan_v6 == nil then
		planReason = "strategy_requires_exchange_plan"
	elseif hpRate < 0.20 and plan ~= nil
		and plan.survival ~= true then
		planReason = "severe_threat_invalidated_plan"
	elseif memory.plan_failures_v6 >= 2 and planElapsed >= planMin then
		planReason = "repeated_exchange_failure"
	elseif memory.tick >= memory.plan_until_v6 then
		planReason = "exchange_plan_complete"
	elseif memory.behavior_changed_v6 == true
		and memory.tick - memory.behavior_change_tick_v6 >= 5
		and planElapsed >= planMin then
		planReason = "opponent_response_changed"
	end
	if planReason ~= nil then
		PVP_PRO_AI_V6_SELECT_PLAN( memory, planReason )
	end

	local intention = profile.intentions[
		memory.tactical_intention_v6 or ""]
	local intentionReason = nil
	if memory.tactical_intention_v6 == nil then
		intentionReason = "plan_requires_implementation"
	elseif memory.intention_failures_v6 >= 2 then
		intentionReason = "tactical_sequence_failed"
	elseif memory.tick >= memory.intention_until_v6 then
		intentionReason = "tactical_sequence_complete"
	elseif intention ~= nil
		and PVP_PRO_AI_V6_INTENTION_FEASIBILITY(
			memory, intention ) == 0
		and memory.tick - memory.intention_since_v6 >= 4 then
		intentionReason = "tactical_actions_out_of_geometry"
	end
	if intentionReason ~= nil then
		PVP_PRO_AI_V6_SELECT_INTENTION(
			memory, intentionReason )
	end
end

function PVP_PRO_AI_TICK( pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	local previousHP = memory.hp_rate
		or PVP_PRO_AI_HP_RATE( pNPCUnit )
	local previousTargetHP = memory.target_hp
	local previousMP = memory.mp or pNPCUnit:GetNowMP()
	local previousRound = memory.round_index_v5 or 1
	memory.v6_current_hp_rate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local result = PVP_PRO_AI_V5_TICK_IMPL(
		pX2Game, pNPCUnit, reactionMin, reactionMax )
	local hpRate = memory.hp_rate
		or PVP_PRO_AI_HP_RATE( pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	local ownDamage = math.max( 0, previousHP - hpRate )
	local targetDamage = 0
	if previousTargetHP ~= nil and memory.target_hp ~= nil then
		targetDamage = math.max( 0,
			previousTargetHP - memory.target_hp )
	end
	local roundChanged =
		( memory.round_index_v5 or 1 ) ~= previousRound

	PVP_PRO_AI_V6_UPDATE_GEOMETRY( memory )
	PVP_PRO_AI_V6_UPDATE_INITIATIVE(
		memory, pNPCUnit, ownDamage, targetDamage )
	PVP_PRO_AI_V6_OBSERVE_HYPOTHESES(
		memory, ownDamage, targetDamage )
	PVP_PRO_AI_V6_DETECT_CHANGE( memory )
	PVP_PRO_AI_V6_DECAY_HYPOTHESES( memory )
	PVP_PRO_AI_V6_DECAY_CONDITIONING( memory )
	PVP_PRO_AI_V6_RESOLVE_DEFENSE( memory, pNPCUnit )
	PVP_PRO_AI_V6_SELECT_COMBO_GOAL( memory )

	if memory.active_probe_v6 ~= nil
		and memory.tick > memory.active_probe_v6.expires then
		PVP_PRO_AI_V6_EVENT( memory, "probe_resolved", {
			probe = memory.active_probe_v6.name,
			result = "expired_without_response",
		} )
		memory.active_probe_v6 = nil
		memory.probe_cooldown_until_v6 = memory.tick + 26
	end
	PVP_PRO_AI_V6_UPDATE_HIERARCHY(
		memory, hpRate, mp, roundChanged )
	PVP_PRO_AI_V6_SELECT_PROBE( memory )
	PVP_PRO_AI_V6_ADVANCE_PASSIVE_PHASE( memory )
	PVP_PRO_AI_V6_UPDATE_TEMPO( memory, hpRate )
	PVP_PRO_AI_V6_UPDATE_ERROR( memory, hpRate )
	PVP_PRO_AI_V6_APPLY_AUTHORITY( memory )

	memory.surprise_v6 = math.max(
		0, memory.surprise_v6 - 0.025 )
	memory.overconfidence_v6 = math.max(
		0, memory.overconfidence_v6 - 0.008 )
	local spent = math.max( 0, previousMP - mp )
	if spent > 0 then
		memory.telemetry_v6.resource_spend =
			memory.telemetry_v6.resource_spend + spent
	end
	local telemetry = memory.telemetry_v6
	telemetry.strategy_ticks[memory.match_strategy_v6 or "none"] =
		( telemetry.strategy_ticks[
			memory.match_strategy_v6 or "none"] or 0 ) + 1
	telemetry.plan_ticks[memory.exchange_plan_v6 or "none"] =
		( telemetry.plan_ticks[
			memory.exchange_plan_v6 or "none"] or 0 ) + 1
	telemetry.initiative_ticks[memory.initiative_state_v6] =
		( telemetry.initiative_ticks[
			memory.initiative_state_v6] or 0 ) + 1
	telemetry.tempo_ticks[memory.tempo_state_v6] =
		( telemetry.tempo_ticks[
			memory.tempo_state_v6] or 0 ) + 1
	memory.v6_previous_hp = hpRate
	memory.v6_previous_target_hp = memory.target_hp
	memory.v6_previous_round = memory.round_index_v5 or 1
	return result
end

function PVP_PRO_AI_DECIDE(
	pX2Game, pNPCUnit, action, role,
	minDist, maxDist, minMP, chance, cooldown )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	memory.telemetry_v6.action_considered[action] =
		( memory.telemetry_v6.action_considered[action] or 0 ) + 1
	memory.v6_context = {
		action = action,
		role = role,
		min_mp = minMP,
		strategy = memory.match_strategy_v6,
		plan = memory.exchange_plan_v6,
		intention = memory.tactical_intention_v6,
		phase = memory.engagement_phase_v6,
		combo_goal = memory.combo_goal_v6,
		route_key = PVP_PRO_AI_V6_ROUTE_KEY( memory, action ),
	}
	chance = chance + PVP_PRO_AI_V6_ACTION_UTILITY(
		memory, action, role, minMP )
	local result = PVP_PRO_AI_V5_DECIDE_IMPL(
		pX2Game, pNPCUnit, action, role,
		minDist, maxDist, minMP, chance, cooldown )
	memory.v6_context = nil
	return result
end

function PVP_PRO_AI_READY(
	pNPCUnit, action, family, chance,
	cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	local context = memory.v6_context or {
		action = action,
		role = family,
		min_mp = 0,
		strategy = memory.match_strategy_v6,
		plan = memory.exchange_plan_v6,
		intention = memory.tactical_intention_v6,
		phase = memory.engagement_phase_v6,
		combo_goal = memory.combo_goal_v6,
		route_key = PVP_PRO_AI_V6_ROUTE_KEY( memory, action ),
	}
	if urgent ~= true then
		if memory.error_mode_v6 == "late_confirm"
			and memory.engagement_phase_v6 == "confirmation"
			and ( family == "combo" or family == "chase" )
			and memory.v6_late_confirm_tick ~= memory.tick then
			memory.v6_late_confirm_tick = memory.tick
			return false
		end
		if memory.surprise_v6 > 0.72
			and PVP_PRO_AI_V5_ATTACK_FAMILY[family] == true then
			chance = chance - 8
		end
	end
	local result = PVP_PRO_AI_V5_READY_IMPL(
		pNPCUnit, action, family, chance,
		cooldown, reconsider, urgent )
	if result ~= true then return result end

	memory.motor_action_v6 = action
	memory.motor_role_v6 = family
	memory.motor_trace_v6 = {
		strategy = context.strategy or "none",
		plan = context.plan or "none",
		intention = context.intention or "none",
		phase = context.phase or "observation",
		action = action,
		role = family,
		reason = action == PVP_PRO_AI_V6_EXPECTED_ACTION( memory )
			and "hierarchy_expected" or "contextual_fallback",
	}
	memory.telemetry_v6.action_selected[action] =
		( memory.telemetry_v6.action_selected[action] or 0 ) + 1
	local intention = memory.competitive_profile_v6.intentions[
		context.intention or ""]
	PVP_PRO_AI_V6_UPDATE_CONDITIONING_ON_ACTION(
		memory, action,
		( intention ~= nil and intention.conditioning == true )
			or memory.active_probe_v6 ~= nil )
	if action == memory.conditioning_break_action_v6 then
		PVP_PRO_AI_V6_EVENT( memory, "conditioning_broken", {
			action = action,
			previous_pattern = memory.last_action or "unknown",
		} )
		memory.conditioning_break_action_v6 = nil
	end

	if context.phase == "threat"
		and PVP_PRO_AI_V5_ATTACK_FAMILY[family] == true then
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "commitment", "threat_converted_to_commitment" )
	end
	local pending = memory.pending_actions[
		#memory.pending_actions]
	if pending ~= nil and pending.tick == memory.tick
		and pending.action == action then
		pending.start_own_hp_rate_v6 =
			memory.v6_current_hp_rate or memory.hp_rate or 1
		pending.start_distance_v6 = memory.distance or 500
		pending.start_vertical_v6 = memory.vertical_offset or 0
		pending.start_velocity_v6 = memory.distance_velocity or 0
		pending.observed_option_v6 =
			memory.observed_option or "hold"
		pending.strategy_v6 = context.strategy
		pending.plan_v6 = context.plan
		pending.intention_v6 = context.intention
		pending.phase_v6 = context.phase
		pending.combo_goal_v6 = context.combo_goal
		pending.route_key_v6 = context.route_key
		PVP_PRO_AI_V6_ROUTE_STATS(
			memory, context.route_key )
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "confirmation", "motor_action_awaiting_confirm" )
	else
		local currentIntention =
			memory.competitive_profile_v6.intentions[
				memory.tactical_intention_v6 or ""]
		if currentIntention ~= nil
			and currentIntention.actions ~= nil then
			memory.intention_step_v6 = math.min(
				#currentIntention.actions,
				memory.intention_step_v6 + 1 )
		end
	end
	if memory.active_probe_v6 ~= nil
		and action == memory.active_probe_v6.actions[
			memory.active_probe_v6.step] then
		memory.active_probe_v6.step = math.min(
			#memory.active_probe_v6.actions,
			memory.active_probe_v6.step + 1 )
	end
	if ( memory.target_hp_rate or 1 ) < 0.25
		and PVP_PRO_AI_V5_ATTACK_FAMILY[family] == true then
		memory.telemetry_v6.lethal_attempts =
			memory.telemetry_v6.lethal_attempts + 1
	end
	PVP_PRO_AI_V6_EVENT( memory, "motor_selected", {
		action = action, role = family,
		reason = memory.motor_trace_v6.reason,
		combo_goal = memory.combo_goal_v6,
		initiative = memory.initiative_state_v6,
		tempo = memory.tempo_state_v6,
	} )
	return result
end

function PVP_PRO_AI_V6_DEFENSE_PLAN(
	memory, pNPCUnit, requestedOption )
	if memory.v6_defense_decision_tick == memory.tick
		and memory.v6_defense_requested == requestedOption then
		return memory.defense_plan_v6
	end
	local hpRate = PVP_PRO_AI_HP_RATE( pNPCUnit )
	local mp = pNPCUnit:GetNowMP()
	local mode = PVP_PRO_AI_V6_IDENTITY_MODE( memory )
	local lethalRisk = hpRate < 0.22
		or ( hpRate < 0.34 and memory.pressure >= 6 )
	local plan = "reclaim_neutral"
	if lethalRisk == true and mp >= 100 then
		plan = "immediate_lethal_break"
	elseif requestedOption == "mana_break" then
		if mode == "defensive_survivor"
			and mp < 200 and hpRate > 0.34
			and memory.pressure < 7 then
			plan = "conserve_and_absorb"
		elseif mode == "relentless_pressure"
			and hpRate < 0.44 and mp >= 100 then
			plan = "interrupt_pressure"
		elseif mode == "resource_controller"
			and mp < 180 and hpRate > 0.36 then
			plan = "late_gap_escape"
		elseif mp < 150 and hpRate > 0.42
			and memory.pressure < 5 then
			plan = "conserve_and_absorb"
		elseif memory.hypotheses_v6.delayed_defense.confidence >= 0.48
			and hpRate > 0.30 then
			plan = "late_gap_escape"
		else
			plan = "interrupt_pressure"
		end
	elseif requestedOption == "roll" then
		local stats = memory.defense_stats_v6.roll
		if mode == "reactive_punisher"
			and memory.hypotheses_v6.wakeup_attacker.confidence >= 0.48 then
			plan = "hold_wakeup"
		elseif mode == "movement_technician"
			and memory.neutral_geometry_v6 == "compressed" then
			plan = "roll_away"
		elseif stats.attempts >= 2
			and stats.punished + stats.covered >= stats.success then
			plan = "hold_wakeup"
		else
			plan = "roll_away"
		end
	elseif requestedOption == "awakening" then
		if mode == "deceptive_conditioner"
			and memory.defense_exposure_v5.awakening > 0.42
			and hpRate > 0.30 then
			plan = "delay_awakening"
		elseif mode == "volatile_momentum" and hpRate < 0.46 then
			plan = "awakening_interrupt"
		elseif memory.defense_exposure_v5.awakening > 0.62
			and hpRate > 0.34 then
			plan = "delay_awakening"
		else
			plan = "awakening_interrupt"
		end
	end
	if plan ~= memory.defense_plan_v6 then
		PVP_PRO_AI_V6_EVENT( memory, "defense_plan_changed", {
			from = memory.defense_plan_v6,
			to = plan, requested = requestedOption,
			hp = hpRate, mp = mp,
		} )
	end
	memory.defense_plan_v6 = plan
	memory.defense_plan_since_v6 = memory.tick
	memory.v6_defense_decision_tick = memory.tick
	memory.v6_defense_requested = requestedOption
	return plan
end

function PVP_PRO_AI_V6_RECORD_DEFENSE(
	memory, pNPCUnit, option, result )
	if result ~= true then return end
	local stats = memory.defense_stats_v6[option]
	if stats ~= nil then stats.attempts = stats.attempts + 1 end
	memory.pending_defense_v6 = {
		option = option,
		plan = memory.defense_plan_v6,
		tick = memory.tick,
		start_hp = PVP_PRO_AI_HP_RATE( pNPCUnit ),
		start_distance = memory.distance or 500,
	}
	PVP_PRO_AI_V6_EVENT( memory, "defense_selected", {
		option = option,
		plan = memory.defense_plan_v6,
		hp = PVP_PRO_AI_HP_RATE( pNPCUnit ),
		mp = pNPCUnit:GetNowMP(),
	} )
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	local plan = PVP_PRO_AI_V6_DEFENSE_PLAN(
		memory, pNPCUnit, "mana_break" )
	if plan == "conserve_and_absorb" then
		local stats = memory.defense_stats_v6.hold
		if memory.v6_hold_record_tick ~= memory.tick then
			stats.attempts = stats.attempts + 1
			memory.v6_hold_record_tick = memory.tick
		end
		return false
	end
	if plan == "late_gap_escape" then
		local stateTime = 0
		local ok, value = pcall(
			function() return pNPCUnit:GetStateTime() end )
		if ok == true then stateTime = value end
		if stateTime < 0.28 and PVP_PRO_AI_HP_RATE( pNPCUnit ) > 0.28 then
			return false
		end
	end
	local result = PVP_PRO_AI_V5_MANA_BREAK_IMPL( pNPCUnit )
	PVP_PRO_AI_V6_RECORD_DEFENSE(
		memory, pNPCUnit, "mana_break", result )
	return result
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	local plan = PVP_PRO_AI_V6_DEFENSE_PLAN(
		memory, pNPCUnit, "roll" )
	if plan == "hold_wakeup" then
		local stats = memory.defense_stats_v6.hold
		if memory.v6_hold_record_tick ~= memory.tick then
			stats.attempts = stats.attempts + 1
			memory.v6_hold_record_tick = memory.tick
		end
		return false
	end
	local result = PVP_PRO_AI_V5_ROLL_IMPL(
		pX2Game, pNPCUnit )
	PVP_PRO_AI_V6_RECORD_DEFENSE(
		memory, pNPCUnit, "roll", result )
	return result
end

function PVP_PRO_AI_COMBO_RESET(
	pX2Game, pNPCUnit, resetRange, baseChance )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	local adjusted = baseChance
	if memory.combo_goal_v6 == "reset_pressure"
		or memory.combo_goal_v6 == "bait_escape" then
		adjusted = adjusted + 24
	elseif memory.combo_goal_v6 == "lethal_confirmation"
		or memory.combo_goal_v6 == "high_risk_comeback_conversion" then
		adjusted = adjusted - 28
	elseif memory.combo_goal_v6 == "low_variance_cashout" then
		adjusted = adjusted - 12
	elseif memory.combo_goal_v6 == "preserve_resources" then
		adjusted = adjusted + 10
	end
	local result = PVP_PRO_AI_V5_COMBO_RESET_IMPL(
		pX2Game, pNPCUnit, resetRange,
		PVP_PRO_AI_CLAMP( adjusted, 2, 96 ) )
	if result == true then
		memory.telemetry_v6.combo_resets =
			memory.telemetry_v6.combo_resets + 1
		PVP_PRO_AI_V6_SET_PHASE(
			memory, "disengagement",
			"intentional_combo_reset:" .. memory.combo_goal_v6 )
		PVP_PRO_AI_V6_EVENT( memory, "combo_route_decision", {
			decision = "reset",
			goal = memory.combo_goal_v6,
			knockdown = memory.knockdown_risk_v5 or 0,
			scaling = memory.combo_scaling_v5 or 1,
		} )
	elseif memory.combo_goal_v6 == "lethal_confirmation"
		or memory.combo_goal_v6 == "maximum_reliable_damage" then
		memory.telemetry_v6.combo_extensions =
			memory.telemetry_v6.combo_extensions + 1
	end
	return result
end

function PVP_PRO_AI_AWAKEN(
	pX2Game, pNPCUnit, offensiveRange, aggression )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	local plan = PVP_PRO_AI_V6_DEFENSE_PLAN(
		memory, pNPCUnit, "awakening" )
	local adjusted = aggression
	if plan == "delay_awakening" then adjusted = adjusted - 18
	elseif plan == "immediate_lethal_break" then adjusted = adjusted + 18
	elseif plan == "awakening_interrupt" then adjusted = adjusted + 7 end
	if memory.active_probe_v6 ~= nil
		and PVP_PRO_AI_HP_RATE( pNPCUnit ) > 0.38 then
		adjusted = adjusted - 10
	end
	local result = PVP_PRO_AI_V5_AWAKEN_IMPL(
		pX2Game, pNPCUnit, offensiveRange, adjusted )
	PVP_PRO_AI_V6_RECORD_DEFENSE(
		memory, pNPCUnit, "awakening", result )
	return result
end

function PVP_PRO_AI_V6_TELEMETRY_SNAPSHOT( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	return memory.telemetry_v6
end

function PVP_PRO_AI_V6_DIAGNOSTIC_TRACE( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	return {
		strategy = memory.match_strategy_v6,
		strategy_reason = memory.strategy_transition_reason_v6,
		plan = memory.exchange_plan_v6,
		plan_reason = memory.plan_transition_reason_v6,
		intention = memory.tactical_intention_v6,
		phase = memory.engagement_phase_v6,
		motor = memory.motor_action_v6,
		initiative = memory.initiative_state_v6,
		tempo = memory.tempo_state_v6,
		combo_goal = memory.combo_goal_v6,
		error = memory.error_mode_v6,
	}
end

--------------------------------------------------------------------------
-- Seventh-generation runtime grounding and calibration-readiness layer

local PVP_PRO_AI_V6_TICK_IMPL = PVP_PRO_AI_TICK
local PVP_PRO_AI_V6_LEARN_IMPL = PVP_PRO_AI_LEARN
local PVP_PRO_AI_V6_READY_IMPL = PVP_PRO_AI_READY
local PVP_PRO_AI_V6_DECIDE_IMPL = PVP_PRO_AI_DECIDE
local PVP_PRO_AI_V6_MANA_BREAK_RUNTIME_IMPL = PVP_PRO_AI_MANA_BREAK
local PVP_PRO_AI_V6_ROLL_RUNTIME_IMPL = PVP_PRO_AI_ROLL
local PVP_PRO_AI_V6_COMBO_RESET_RUNTIME_IMPL = PVP_PRO_AI_COMBO_RESET
local PVP_PRO_AI_V6_AWAKEN_RUNTIME_IMPL = PVP_PRO_AI_AWAKEN
local PVP_PRO_AI_V6_ACTION_UTILITY_IMPL = PVP_PRO_AI_V6_ACTION_UTILITY

PVP_PRO_AI_V7_VERSION = 7
PVP_PRO_AI_V7_OBSERVATION_LIMIT = 32
PVP_PRO_AI_V7_TERMINAL_ACTION_LIMIT = 24
PVP_PRO_AI_V7_TRANSITION_LIMIT = 12
PVP_PRO_AI_V7_HISTORY_LIMIT = 24

PVP_PRO_AI_V7_SIGNAL_CLASSES = {
	VERIFIED_DIRECT = true,
	VERIFIED_DERIVED = true,
	HEURISTIC = true,
	UNVERIFIED = true,
	UNAVAILABLE = true,
}

function PVP_PRO_AI_V7_SIGNAL(
	classification, source, dataType, frequency,
	lifetime, staleAfter, nilable, characterSpecific,
	harness, confidence, consumers )
	return {
		classification = classification,
		source = source,
		data_type = dataType,
		update_frequency = frequency,
		persistence_lifetime = lifetime,
		stale_after = staleAfter,
		nilable = nilable,
		character_specific = characterSpecific,
		harness_simulated = harness,
		confidence = confidence,
		consumers = consumers,
	}
end

-- This is the canonical contract for every engine-facing value consumed by
-- V6/V7. UNAVAILABLE entries are documentation and diagnostic gates only;
-- they are never promoted to direct observations by gameplay code.
PVP_PRO_AI_V7_SIGNAL_CONTRACT = {
	bot_hp = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetNowHP", "number", "decision_tick",
		"decision", 1, true, false, true, 1.00,
		"health,damage,life_reset" ),
	bot_max_hp = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetMaxHP", "number", "decision_tick",
		"life", 8, true, false, true, 1.00, "health" ),
	bot_hp_rate = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "bot_hp/bot_max_hp", "number", "decision_tick",
		"decision", 1, true, false, true, 0.99,
		"strategy,defense,pressure" ),
	bot_mp = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetNowMP", "number", "decision_tick",
		"decision", 1, true, true, true, 1.00,
		"resource,action_gate" ),
	bot_hyper_count = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetHyperModeCount", "number",
		"on_defense_or_tick", "decision", 2, true, true, true, 1.00,
		"awakening_availability" ),
	bot_hit_state = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetUnitCondition_bHit", "boolean",
		"decision_tick", "decision", 1, true, false, true, 0.98,
		"interruption,defense,initiative" ),
	bot_state_id = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetNowStateID", "number_or_string",
		"decision_tick", "decision", 1, true, true, true, 0.98,
		"state_transition,action_start" ),
	bot_state_time = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetStateTime", "number",
		"decision_tick", "decision", 1, true, true, true, 0.98,
		"state_transition,timing,recovery" ),
	bot_position = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetPos", "vector", "decision_tick",
		"decision", 1, true, true, true, 0.98, "distance,vertical" ),
	focus_position = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pX2Game:GetFocusUnitPos_LUA", "vector",
		"decision_tick", "decision", 1, true, true, true, 0.94,
		"distance,vertical" ),
	target_reference = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "pNPCUnit:GetTargetUser", "engine_reference",
		"decision_tick", "decision", 1, true, true, true, 0.96,
		"target_hp,target_presence" ),
	target_hp = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "target:GetNowHP", "number", "decision_tick",
		"decision", 1, true, true, true, 0.98,
		"damage_confirm,opponent_death" ),
	target_hp_max_observed = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "maximum observed target_hp in current match",
		"number", "target_hp_update", "match", 8, true, true, true, 0.84,
		"target_hp_rate,damage_normalization" ),
	distance = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "bot_position/focus_position", "number",
		"decision_tick", "decision", 1, true, true, true, 0.91,
		"range,neutral,execution" ),
	vertical_offset = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "focus_position.y-bot_position.y", "number",
		"decision_tick", "decision", 1, true, true, true, 0.91,
		"vertical_geometry,action_gate" ),
	distance_velocity = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "distance_delta", "number", "decision_tick",
		"exchange", 2, true, true, true, 0.79,
		"relative_movement,initiative" ),
	bot_took_damage = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "bot_hp_rate_delta", "number", "decision_tick",
		"exchange", 2, true, false, true, 0.97,
		"interruption,pressure,defense" ),
	opponent_took_damage = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "target_hp_delta", "number", "decision_tick",
		"exchange", 2, true, false, true, 0.96,
		"confirmation,conversion" ),
	resource_change_observed = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "bot_mp_delta", "number", "decision_tick",
		"exchange", 2, true, true, true, 0.97,
		"resource_spend,action_start" ),
	state_transition = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "state_id_change_or_state_time_reset", "boolean",
		"decision_tick", "decision", 2, true, true, true, 0.88,
		"action_start,recovery" ),
	action_request_accepted = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DIRECT", "Lua condition callback returned true", "boolean",
		"action_callback", "action", 1, false, true, true, 1.00,
		"action_lifecycle" ),
	life_reset = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "low_hp_to_restored_hp", "boolean",
		"decision_tick", "round", 1, true, false, true, 0.92,
		"transient_reset" ),
	round_transition = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "V5 round index/health reset", "boolean",
		"decision_tick", "match", 1, true, false, true, 0.90,
		"transient_reset,occupancy" ),
	opponent_death = PVP_PRO_AI_V7_SIGNAL(
		"VERIFIED_DERIVED", "target_hp<=0", "boolean", "decision_tick",
		"round", 2, true, false, true, 0.96,
		"confirmation,round_transition" ),
	action_started = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "request plus attributable state/resource transition",
		"boolean", "decision_tick", "action", 2, true, true, true, 0.72,
		"confirmation_lifecycle" ),
	action_contact = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "character timing window", "boolean", "decision_tick",
		"action", 2, true, true, true, 0.52,
		"confirmation_lifecycle" ),
	action_recovery = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "timing window plus state progression", "boolean",
		"decision_tick", "action", 2, true, true, true, 0.58,
		"action_lifecycle" ),
	action_rejected_or_stalled = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "request without start evidence before bounded timeout",
		"boolean", "decision_tick", "action", 2, true, true, true, 0.64,
		"execution_failure" ),
	action_connected_probable = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "single pending action plus temporal damage evidence",
		"boolean", "decision_tick", "action", 2, true, true, true, 0.78,
		"confirmation_lifecycle" ),
	block_or_armor = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "contact window without damage while target remained in range",
		"categorical", "action_resolution", "exchange", 3, true, true, true,
		0.42, "confirmation,defense_inference" ),
	opponent_recovery = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "elapsed response and movement after contact",
		"boolean", "decision_tick", "exchange", 3, true, true, true, 0.34,
		"punish_timing" ),
	defensive_response = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "post-contact escape or resisted result", "categorical",
		"exchange", "round", 5, true, true, true, 0.45,
		"resource_belief,defense_plan" ),
	opponent_resource_state = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "bounded belief from observed defensive response",
		"belief", "evidence_transition", "round", 20, true, true, true, 0.38,
		"probe,resource_pressure" ),
	knockdown_estimate = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "V5 route contribution model", "number", "hit_confirm",
		"combo", 8, true, true, true, 0.55, "combo_goal" ),
	combo_scaling_estimate = PVP_PRO_AI_V7_SIGNAL(
		"HEURISTIC", "V5 hit-count scaling model", "number", "hit_confirm",
		"combo", 8, true, true, true, 0.55, "combo_goal" ),
	current_awakening_state = PVP_PRO_AI_V7_SIGNAL(
		"UNVERIFIED", "no canonical active-state callback", "boolean",
		"unknown", "decision", 1, true, true, false, 0.20,
		"diagnostic_only" ),
	scheduling_latency = PVP_PRO_AI_V7_SIGNAL(
		"UNVERIFIED", "callback arrival delta", "number", "event",
		"action", 4, true, true, true, 0.25, "diagnostic_only" ),
	callback_order = PVP_PRO_AI_V7_SIGNAL(
		"UNVERIFIED", "observed callback sequence", "sequence", "event",
		"action", 4, true, true, true, 0.30, "diagnostic_only" ),
	frame_advantage = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no engine signal", "number", "unavailable",
		"none", 0, true, true, false, 0, "never_direct_truth" ),
	opponent_cooldown_state = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no engine signal", "timer", "unavailable",
		"none", 0, true, true, false, 0, "never_direct_truth" ),
	exact_defensive_resources = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no opponent resource API", "number", "unavailable",
		"none", 0, true, true, false, 0, "never_direct_truth" ),
	terrain_context = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no canonical terrain query in cognition path", "map",
		"unavailable", "none", 0, true, true, false, 0,
		"never_direct_truth" ),
	platform_context = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no canonical platform query", "map", "unavailable",
		"none", 0, true, true, false, 0, "never_direct_truth" ),
	corner_context = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "line-edge space is local-only, not arena corner truth",
		"boolean", "unavailable", "none", 0, true, true, false, 0,
		"never_direct_truth" ),
	stable_opponent_identity = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no stable cross-match identifier", "identifier",
		"unavailable", "none", 0, true, true, false, 0,
		"no_cross_match_learning" ),
	collision_outcome = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no collision callback", "categorical", "unavailable",
		"none", 0, true, true, false, 0, "never_direct_truth" ),
	animation_cancel_window = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no cancel-window callback", "range", "unavailable",
		"none", 0, true, true, false, 0, "never_direct_truth" ),
	exact_hit_class = PVP_PRO_AI_V7_SIGNAL(
		"UNAVAILABLE", "no target block/armor/hit-class callback", "categorical",
		"unavailable", "none", 0, true, true, false, 0,
		"never_direct_truth" ),
}

PVP_PRO_AI_V7_PERSISTENCE_CONTRACT = {
	decision = {
		"v7_decision_context", "raw_snapshot_v7", "current_observations_v7",
	},
	exchange = {
		"action_execution_v7", "exchange_plan_v6", "tactical_intention_v6",
		"engagement_phase_v6", "resource_belief_v7",
	},
	life = {
		"hypotheses_v6", "route_stats_v6", "timing_stats_v7",
		"range_stats_v7", "strategy_stats_v6",
	},
	round = {
		"hypotheses_v6", "strategy_stats_v6", "occupancy_v7",
		"identity_metrics_v7", "route_stats_v6",
	},
	match = {
		"all weak-key unit memory except unresolved transient execution",
	},
	cross_match = {
		"none: stable_opponent_identity is unavailable",
	},
}

function PVP_PRO_AI_V7_TUNABLE(
	purpose, safeMin, safeMax, defaultValue, telemetrySignal )
	return {
		purpose = purpose,
		safe_min = safeMin,
		safe_max = safeMax,
		default = defaultValue,
		telemetry = telemetrySignal,
	}
end

PVP_PRO_AI_V7_TUNABLES = {
	confirmation_timeout = PVP_PRO_AI_V7_TUNABLE(
		"terminal confirmation deadline in decision ticks", 4, 18, 11,
		"confirmation_timeout" ),
	state_start_timeout = PVP_PRO_AI_V7_TUNABLE(
		"request-to-start evidence deadline", 2, 9, 4,
		"engine_rejection" ),
	strategy_min_commit = PVP_PRO_AI_V7_TUNABLE(
		"soft minimum strategy occupancy", 20, 120, 42,
		"strategy_occupancy" ),
	strategy_failure_threshold = PVP_PRO_AI_V7_TUNABLE(
		"tactical failures before strategy review", 1, 5, 2,
		"strategy_transition" ),
	exchange_timeout = PVP_PRO_AI_V7_TUNABLE(
		"soft exchange-plan occupancy ceiling", 12, 64, 36,
		"exchange_plan_completion" ),
	range_tolerance = PVP_PRO_AI_V7_TUNABLE(
		"uncertainty allowance around configured action range", 25, 180, 95,
		"range_related_failure" ),
	surprise_hesitation = PVP_PRO_AI_V7_TUNABLE(
		"bounded delay after an unexpected runtime result", 0, 4, 1,
		"uncertain_result_classification" ),
	probe_confidence = PVP_PRO_AI_V7_TUNABLE(
		"confidence above which repeated probing stops", 0.35, 0.88, 0.64,
		"probe_resolved" ),
	resource_inference_decay = PVP_PRO_AI_V7_TUNABLE(
		"per-tick decay toward unknown opponent resource state",
		0.002, 0.08, 0.018, "resource_inference_changed" ),
	route_drop_penalty = PVP_PRO_AI_V7_TUNABLE(
		"maximum runtime penalty for repeated contextual route failure",
		0, 12, 5, "combo_drop" ),
	repetition_tolerance = PVP_PRO_AI_V7_TUNABLE(
		"failed repeated actions tolerated before diagnostic penalty",
		2, 8, 4, "repeated_action_rate" ),
	defensive_option_confidence = PVP_PRO_AI_V7_TUNABLE(
		"confidence required for direct defensive-resource exploitation",
		0.35, 0.90, 0.62, "resource_inference_changed" ),
	tempo_transition_min = PVP_PRO_AI_V7_TUNABLE(
		"soft minimum tempo occupancy", 3, 20, 7,
		"identity_metric_snapshot" ),
	observation_ttl = PVP_PRO_AI_V7_TUNABLE(
		"default normalized-observation lifetime", 1, 12, 4,
		"stale_observation_expired" ),
	identity_snapshot_interval = PVP_PRO_AI_V7_TUNABLE(
		"ticks between compact identity snapshots", 20, 120, 60,
		"identity_metric_snapshot" ),
	counterfactual_noise = PVP_PRO_AI_V7_TUNABLE(
		"harmless distance perturbation for decision stability", 5, 60, 20,
		"counterfactual_decision_summary" ),
	max_action_timeout = PVP_PRO_AI_V7_TUNABLE(
		"absolute action-lifecycle bound", 6, 24, 18,
		"confirmation_timeout" ),
	range_failure_penalty = PVP_PRO_AI_V7_TUNABLE(
		"maximum utility penalty after repeated observed range failure",
		0, 12, 6, "range_related_failure" ),
}

PVP_PRO_AI_V7_ROLE_TIMINGS = {
	poke = { startup_min = 1, startup_max = 3, contact_min = 1,
		contact_max = 5, recovery_min = 2, recovery_max = 7,
		movement_min = 0, movement_max = 3, followup_min = 2,
		followup_max = 7, resource_delay_max = 3, hit_state_max = 6,
		timeout = 11, interruptible = true, callback_gap = false,
		timing_confidence = 0.30 },
	control = { startup_min = 1, startup_max = 4, contact_min = 2,
		contact_max = 7, recovery_min = 3, recovery_max = 10,
		movement_min = 0, movement_max = 4, followup_min = 3,
		followup_max = 9, resource_delay_max = 4, hit_state_max = 8,
		timeout = 14, interruptible = true, callback_gap = true,
		timing_confidence = 0.27 },
	combo = { startup_min = 1, startup_max = 3, contact_min = 1,
		contact_max = 5, recovery_min = 3, recovery_max = 8,
		movement_min = 0, movement_max = 4, followup_min = 1,
		followup_max = 6, resource_delay_max = 3, hit_state_max = 8,
		timeout = 12, interruptible = true, callback_gap = false,
		timing_confidence = 0.31 },
	chase = { startup_min = 1, startup_max = 4, contact_min = 2,
		contact_max = 7, recovery_min = 3, recovery_max = 9,
		movement_min = 1, movement_max = 6, followup_min = 2,
		followup_max = 8, resource_delay_max = 4, hit_state_max = 8,
		timeout = 14, interruptible = true, callback_gap = false,
		timing_confidence = 0.27 },
	advance = { startup_min = 1, startup_max = 3, contact_min = 2,
		contact_max = 6, recovery_min = 2, recovery_max = 7,
		movement_min = 1, movement_max = 6, followup_min = 2,
		followup_max = 7, resource_delay_max = 3, hit_state_max = 6,
		timeout = 12, interruptible = true, callback_gap = false,
		timing_confidence = 0.28 },
	air = { startup_min = 1, startup_max = 4, contact_min = 2,
		contact_max = 7, recovery_min = 3, recovery_max = 10,
		movement_min = 1, movement_max = 7, followup_min = 2,
		followup_max = 9, resource_delay_max = 4, hit_state_max = 8,
		timeout = 15, interruptible = true, callback_gap = true,
		timing_confidence = 0.24 },
	air_move = { startup_min = 1, startup_max = 3, contact_min = 2,
		contact_max = 6, recovery_min = 2, recovery_max = 8,
		movement_min = 1, movement_max = 7, followup_min = 2,
		followup_max = 8, resource_delay_max = 3, hit_state_max = 6,
		timeout = 13, interruptible = true, callback_gap = false,
		timing_confidence = 0.25 },
	burst = { startup_min = 2, startup_max = 6, contact_min = 3,
		contact_max = 9, recovery_min = 5, recovery_max = 14,
		movement_min = 0, movement_max = 5, followup_min = 4,
		followup_max = 12, resource_delay_max = 6, hit_state_max = 10,
		timeout = 18, interruptible = true, callback_gap = true,
		timing_confidence = 0.22 },
	guard = { startup_min = 1, startup_max = 4, contact_min = 1,
		contact_max = 6, recovery_min = 3, recovery_max = 10,
		movement_min = 0, movement_max = 2, followup_min = 2,
		followup_max = 9, resource_delay_max = 4, hit_state_max = 7,
		timeout = 14, interruptible = true, callback_gap = true,
		timing_confidence = 0.25 },
	escape = { startup_min = 1, startup_max = 3, contact_min = 2,
		contact_max = 5, recovery_min = 2, recovery_max = 8,
		movement_min = 1, movement_max = 7, followup_min = 2,
		followup_max = 8, resource_delay_max = 3, hit_state_max = 5,
		timeout = 12, interruptible = true, callback_gap = false,
		timing_confidence = 0.27 },
	resource = { startup_min = 1, startup_max = 5, contact_min = 2,
		contact_max = 7, recovery_min = 4, recovery_max = 12,
		movement_min = 0, movement_max = 2, followup_min = 4,
		followup_max = 11, resource_delay_max = 7, hit_state_max = 5,
		timeout = 16, interruptible = true, callback_gap = true,
		timing_confidence = 0.20 },
	support = { startup_min = 1, startup_max = 4, contact_min = 2,
		contact_max = 6, recovery_min = 3, recovery_max = 10,
		movement_min = 0, movement_max = 3, followup_min = 3,
		followup_max = 9, resource_delay_max = 5, hit_state_max = 5,
		timeout = 14, interruptible = true, callback_gap = true,
		timing_confidence = 0.20 },
}

PVP_PRO_AI_V7_DORMANT_ACTIONS = {
	ranger_air_drop = {
		character = "amelia", parent_plans = "funnel_preferred_lane,adaptation_recheck",
		parent_intention = "aerial_drop_mix",
		required = "target_below_bot,vertical<-55,distance=550..1200",
	},
	shock_wave = {
		character = "edan", parent_plans = "layered_pressure,panic_gap_test,shock_resource_turn",
		parent_intention = "gap_overload,defense_change_check,distant_closeout",
		required = "mp>=200,distance=470..1220",
	},
	fatal_fury = {
		character = "low", parent_plans = "x_route_rotation,respect_test,burst_resource_gate",
		parent_intention = "held_parry_punish,momentum_cashout,comeback_swing",
		required = "mp>=175,distance<=280,cashout_or_comeback",
	},
	revenge_parry = {
		character = "low,penensio", parent_plans = "parry_download,opponent_change_review",
		parent_intention = "parry_read,held_parry_punish,sword_layer,storm_cashout",
		required = "mp>=50,distance<=210,guard_context",
	},
	aging = {
		character = "spika", parent_plans = "trap_resource_cycle,hellstone_close",
		parent_intention = "cloud_trap,plasma_cashout",
		required = "mp>=280,distance<=680,control_or_cashout",
	},
}

function PVP_PRO_AI_V7_VALUE( memory, name )
	local spec = PVP_PRO_AI_V7_TUNABLES[name]
	if spec == nil then return 0 end
	local profile = memory.runtime_profile_v7 or {}
	local overrides = profile.calibration or {}
	local value = overrides[name]
	if type( value ) ~= "number" then value = spec.default end
	return PVP_PRO_AI_CLAMP( value, spec.safe_min, spec.safe_max )
end

function PVP_PRO_AI_V7_EVENT( memory, eventName, detail )
	local ok = pcall(
		PVP_PRO_AI_V6_EVENT, memory, eventName, detail or {} )
	if ok ~= true and memory.telemetry_v7 ~= nil then
		memory.telemetry_v7.telemetry_failures =
			( memory.telemetry_v7.telemetry_failures or 0 ) + 1
	end
end

function PVP_PRO_AI_V7_SAFE_METHOD( object, methodName )
	if object == nil then return nil, false end
	local okMethod, method = pcall(
		function() return object[methodName] end )
	if okMethod ~= true or type( method ) ~= "function" then
		return nil, false
	end
	local okValue, value = pcall( method, object )
	if okValue ~= true then return nil, false end
	return value, true
end

function PVP_PRO_AI_V7_SAFE_NUMBER( object, methodName )
	local value, ok = PVP_PRO_AI_V7_SAFE_METHOD( object, methodName )
	if ok ~= true or type( value ) ~= "number" then return nil, false end
	return value, true
end

function PVP_PRO_AI_V7_SAFE_VECTOR( object, methodName )
	local value, ok = PVP_PRO_AI_V7_SAFE_METHOD( object, methodName )
	if ok ~= true or value == nil then return nil, false end
	local okX, x = pcall( function() return value.x end )
	local okY, y = pcall( function() return value.y end )
	local okZ, z = pcall( function() return value.z end )
	if okX ~= true or okY ~= true
		or type( x ) ~= "number" or type( y ) ~= "number" then
		return nil, false
	end
	if okZ ~= true or type( z ) ~= "number" then z = 0 end
	return { x = x, y = y, z = z }, true
end

function PVP_PRO_AI_V7_VECTOR_DISTANCE( first, second )
	if first == nil or second == nil then return nil end
	local x = second.x - first.x
	local y = second.y - first.y
	local z = second.z - first.z
	return math.sqrt( x * x + y * y + z * z )
end

function PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	local raw = {}
	raw.bot_hp, raw.bot_hp_ok =
		PVP_PRO_AI_V7_SAFE_NUMBER( pNPCUnit, "GetNowHP" )
	raw.bot_max_hp, raw.bot_max_hp_ok =
		PVP_PRO_AI_V7_SAFE_NUMBER( pNPCUnit, "GetMaxHP" )
	if raw.bot_hp_ok == true and raw.bot_max_hp_ok == true
		and raw.bot_max_hp > 0 then
		raw.bot_hp_rate = PVP_PRO_AI_CLAMP(
			raw.bot_hp / raw.bot_max_hp, 0, 1 )
	end
	raw.bot_mp, raw.bot_mp_ok =
		PVP_PRO_AI_V7_SAFE_NUMBER( pNPCUnit, "GetNowMP" )
	raw.bot_hyper_count, raw.bot_hyper_ok =
		PVP_PRO_AI_V7_SAFE_NUMBER( pNPCUnit, "GetHyperModeCount" )
	local hit, hitOK = PVP_PRO_AI_V7_SAFE_METHOD(
		pNPCUnit, "GetUnitCondition_bHit" )
	if hitOK == true then raw.bot_hit_state = hit == true
	else raw.bot_hit_state = nil end
	raw.bot_hit_ok = hitOK
	raw.bot_state_id, raw.bot_state_id_ok =
		PVP_PRO_AI_V7_SAFE_METHOD( pNPCUnit, "GetNowStateID" )
	raw.bot_state_time, raw.bot_state_time_ok =
		PVP_PRO_AI_V7_SAFE_NUMBER( pNPCUnit, "GetStateTime" )
	raw.bot_position, raw.bot_position_ok =
		PVP_PRO_AI_V7_SAFE_VECTOR( pNPCUnit, "GetPos" )
	raw.focus_position, raw.focus_position_ok =
		PVP_PRO_AI_V7_SAFE_VECTOR( pX2Game, "GetFocusUnitPos_LUA" )
	raw.distance = PVP_PRO_AI_V7_VECTOR_DISTANCE(
		raw.bot_position, raw.focus_position )
	if raw.bot_position ~= nil and raw.focus_position ~= nil then
		raw.vertical_offset =
			raw.focus_position.y - raw.bot_position.y
	end
	local target, targetOK = PVP_PRO_AI_V7_SAFE_METHOD(
		pNPCUnit, "GetTargetUser" )
	raw.target_reference_ok = targetOK
	raw.has_target = targetOK == true and target ~= nil
	if raw.has_target == true then
		raw.target_hp, raw.target_hp_ok =
			PVP_PRO_AI_V7_SAFE_NUMBER( target, "GetNowHP" )
	else
		raw.target_hp, raw.target_hp_ok = nil, false
	end
	raw.critical_ok = raw.bot_hp_rate ~= nil
		and raw.bot_mp_ok == true
		and raw.bot_position_ok == true
		and raw.focus_position_ok == true
	return raw
end

function PVP_PRO_AI_V7_INIT( memory )
	if memory.v7_initialized == true then return end
	memory.v7_initialized = true
	memory.runtime_profile_v7 = {
		character = "unknown",
		identity = "runtime_grounded_default",
		calibration = {}, timing_scale = {}, role_timing = {},
		action_timing = {}, occupancy = {}, identity_targets = {},
		range_overrides = {}, dormant_actions = {},
	}
	memory.v7_profile_initialized = nil
	memory.raw_snapshot_v7 = nil
	memory.raw_availability_v7 = {}
	memory.current_observations_v7 = {}
	memory.observation_sequence_v7 = 0
	memory.action_sequence_v7 = 0
	memory.action_execution_v7 = nil
	memory.terminal_actions_v7 = {}
	memory.timing_stats_v7 = {}
	memory.range_stats_v7 = {}
	memory.failure_stats_v7 = {
		decision = {}, execution = {}, confirmation = {},
		tactical = {}, strategy = {},
	}
	memory.resource_belief_v7 = {
		state = "unknown", probability = 0.50, confidence = 0.10,
		last_tick = memory.tick or 0, last_evidence = "initialization",
		tendency = "unknown",
	}
	memory.occupancy_v7 = {
		strategy = {}, plan = {}, intention = {}, tempo = {}, initiative = {},
		current_strategy = nil, strategy_since = memory.tick or 0,
		current_plan = nil, plan_since = memory.tick or 0,
		current_intention = nil, intention_since = memory.tick or 0,
		current_tempo = nil, tempo_since = memory.tick or 0,
		current_initiative = nil, initiative_since = memory.tick or 0,
		strategy_transitions = {}, plan_transitions = {},
		plan_completions = 0, plan_aborts = 0,
		strategy_oscillations = 0,
	}
	memory.identity_metrics_v7 = {
		ticks = 0, observation_ticks = 0, commitment_ticks = 0,
		pressure_ticks = 0, retreat_actions = 0, commitment_actions = 0,
		probe_actions = 0, resets = 0, extensions = 0,
		resource_spent = 0, defensive_actions = 0,
		role_actions = {}, action_families = {}, openers = {},
		wakeups = {}, defense_choices = {}, tempo_changes = 0,
		strategy_changes = 0, last_snapshot_tick = 0,
	}
	memory.repetition_v7 = {
		actions = {}, families = {}, openers = {}, defenses = {},
		wakeups = {}, finishers = {}, movement = {}, plans = {},
		strategies = {}, conditioning = {}, max_action_run = 0,
		max_family_run = 0, necessary = 0, exploitation = 0,
		identity = 0, fallback = 0, loops = 0,
	}
	memory.counterfactual_v7 = {
		evaluations = 0, noise_stable = 0, noise_changed = 0,
		major_changed = 0, chosen_best = 0, latest = nil,
	}
	memory.dormant_v7 = {}
	memory.telemetry_v7 = {
		signal_nil = {}, signal_restored = {}, lifecycle = {},
		failures = memory.failure_stats_v7, occupancy = memory.occupancy_v7,
		range = memory.range_stats_v7, timing = memory.timing_stats_v7,
		dormant = memory.dormant_v7,
		resource = memory.resource_belief_v7,
		counterfactual = memory.counterfactual_v7,
		telemetry_failures = 0, adapter_errors = 0,
	}
	memory.v7_last_round = memory.round_index_v5 or 1
	memory.v7_inside_legacy_tick = false
	memory.v7_applying_learning = false
end

function PVP_PRO_AI_SET_RUNTIME_PROFILE( pNPCUnit, profile )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V7_INIT( memory )
	memory.runtime_profile_v7 = profile
	if memory.v7_profile_initialized == profile.character then return end
	memory.v7_profile_initialized = profile.character
	for action, _ in pairs(
		memory.competitive_profile_v6.action_traits or {} ) do
		memory.range_stats_v7[action] = memory.range_stats_v7[action] or {
			opportunities = 0, attempts = 0, starts = 0, confirms = 0,
			whiffs = 0, escaped_during_startup = 0, rejected = 0,
			range_failures = 0, distance_sum = 0,
		}
		memory.timing_stats_v7[action] =
			memory.timing_stats_v7[action] or {
				observations = 0, startup_min = nil, startup_max = nil,
				contact_min = nil, contact_max = nil,
				recovery_min = nil, recovery_max = nil,
				confidence = 0,
			}
	end
	PVP_PRO_AI_V7_EVENT( memory, "runtime_profile_initialized", {
		identity = profile.identity or "unknown",
	} )
end

function PVP_PRO_AI_V7_COPY_TIMING( source )
	local result = {}
	for key, value in pairs( source or {} ) do result[key] = value end
	return result
end

function PVP_PRO_AI_V7_TIMING( memory, action, role )
	local base = PVP_PRO_AI_V7_ROLE_TIMINGS[role]
		or PVP_PRO_AI_V7_ROLE_TIMINGS.support
	local timing = PVP_PRO_AI_V7_COPY_TIMING( base )
	local profile = memory.runtime_profile_v7 or {}
	local scale = profile.timing_scale or {}
	local function scalePair( lowName, highName, value )
		local factor = type( value ) == "number" and value or 1
		timing[lowName] = math.max( 0,
			math.floor( timing[lowName] * factor + 0.5 ) )
		timing[highName] = math.max( timing[lowName],
			math.floor( timing[highName] * factor + 0.5 ) )
	end
	scalePair( "startup_min", "startup_max", scale.startup )
	scalePair( "contact_min", "contact_max", scale.contact )
	scalePair( "recovery_min", "recovery_max", scale.recovery )
	scalePair( "movement_min", "movement_max", scale.movement )
	local roleOverride = ( profile.role_timing or {} )[role] or {}
	local actionOverride = ( profile.action_timing or {} )[action] or {}
	for key, value in pairs( roleOverride ) do
		if timing[key] ~= nil then timing[key] = value end
	end
	for key, value in pairs( actionOverride ) do
		if timing[key] ~= nil then timing[key] = value end
	end
	timing.startup_min = PVP_PRO_AI_CLAMP( timing.startup_min, 0, 8 )
	timing.startup_max = PVP_PRO_AI_CLAMP(
		math.max( timing.startup_min, timing.startup_max ), 1, 10 )
	timing.contact_min = PVP_PRO_AI_CLAMP( timing.contact_min, 0, 10 )
	timing.contact_max = PVP_PRO_AI_CLAMP(
		math.max( timing.contact_min, timing.contact_max ), 1, 14 )
	timing.recovery_min = PVP_PRO_AI_CLAMP( timing.recovery_min, 1, 14 )
	timing.recovery_max = PVP_PRO_AI_CLAMP(
		math.max( timing.recovery_min, timing.recovery_max ), 2, 20 )
	timing.timeout = PVP_PRO_AI_CLAMP(
		math.max( timing.timeout or 10,
			PVP_PRO_AI_V7_VALUE( memory, "confirmation_timeout" ),
			timing.startup_max + timing.recovery_max ),
		6, PVP_PRO_AI_V7_VALUE( memory, "max_action_timeout" ) )
	return timing
end

function PVP_PRO_AI_V7_FAILURE( memory, category, reason, detail )
	local categoryStats = memory.failure_stats_v7[category]
	if categoryStats == nil then return end
	categoryStats[reason] = ( categoryStats[reason] or 0 ) + 1
	local count = categoryStats[reason]
	if count == 1 or count % 8 == 0 then
		local eventDetail = detail or {}
		eventDetail.category = category
		eventDetail.reason = reason
		eventDetail.count = count
		PVP_PRO_AI_V7_EVENT( memory,
			category .. "_failure", eventDetail )
	end
end

function PVP_PRO_AI_V7_EMIT_OBSERVATION(
	memory, name, sourceSignal, confidence,
	expiration, relatedAction, direct, detail )
	memory.observation_sequence_v7 = memory.observation_sequence_v7 + 1
	local contract = PVP_PRO_AI_V7_SIGNAL_CONTRACT[sourceSignal]
	local observation = {
		id = memory.observation_sequence_v7,
		name = name,
		tick = memory.tick or 0,
		timestamp = memory.tick or 0,
		source_signal = sourceSignal,
		classification = contract ~= nil
			and contract.classification or "HEURISTIC",
		confidence = PVP_PRO_AI_CLAMP( confidence or 0, 0, 1 ),
		expires = ( memory.tick or 0 ) + math.max( 1,
			expiration or PVP_PRO_AI_V7_VALUE( memory, "observation_ttl" ) ),
		related_action = relatedAction,
		direct = direct == true,
		detail = PVP_PRO_AI_V6_COPY_FIELDS( detail or {} ),
	}
	table.insert( memory.current_observations_v7, observation )
	while #memory.current_observations_v7
		> PVP_PRO_AI_V7_OBSERVATION_LIMIT do
		table.remove( memory.current_observations_v7, 1 )
	end
	return observation
end

function PVP_PRO_AI_V7_EXPIRE_OBSERVATIONS( memory )
	local observations = memory.current_observations_v7
	local expired = 0
	for index = #observations, 1, -1 do
		if observations[index].expires < memory.tick then
			table.remove( observations, index )
			expired = expired + 1
		end
	end
	if expired > 0 then
		memory.telemetry_v7.stale_observations_expired =
			( memory.telemetry_v7.stale_observations_expired or 0 ) + expired
	end
end

function PVP_PRO_AI_V7_OBSERVATION(
	memory, name, relatedAction )
	for index = #memory.current_observations_v7, 1, -1 do
		local observation = memory.current_observations_v7[index]
		if observation.name == name
			and observation.expires >= memory.tick
			and ( relatedAction == nil
				or observation.related_action == relatedAction ) then
			return observation
		end
	end
	return nil
end

function PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
	memory, signalName, available )
	local previous = memory.raw_availability_v7[signalName]
	if previous == available then return end
	memory.raw_availability_v7[signalName] = available
	if available == true then
		memory.telemetry_v7.signal_restored[signalName] =
			( memory.telemetry_v7.signal_restored[signalName] or 0 ) + 1
		if previous == false then
			PVP_PRO_AI_V7_EVENT( memory, "signal_confidence_changed", {
				signal = signalName, state = "restored",
				classification = PVP_PRO_AI_V7_SIGNAL_CONTRACT[signalName]
					and PVP_PRO_AI_V7_SIGNAL_CONTRACT[signalName].classification
					or "unknown",
			} )
		end
	else
		memory.telemetry_v7.signal_nil[signalName] =
			( memory.telemetry_v7.signal_nil[signalName] or 0 ) + 1
		if previous == true then
			PVP_PRO_AI_V7_EVENT( memory, "signal_confidence_changed", {
				signal = signalName, state = "temporarily_nil",
				classification = PVP_PRO_AI_V7_SIGNAL_CONTRACT[signalName]
					and PVP_PRO_AI_V7_SIGNAL_CONTRACT[signalName].classification
					or "unknown",
			} )
		end
	end
end

function PVP_PRO_AI_V7_PROCESS_RAW( memory, raw )
	PVP_PRO_AI_V7_EXPIRE_OBSERVATIONS( memory )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_hp", raw.bot_hp_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_max_hp", raw.bot_max_hp_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_mp", raw.bot_mp_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_hit_state", raw.bot_hit_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_state_id", raw.bot_state_id_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_state_time", raw.bot_state_time_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "bot_position", raw.bot_position_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "focus_position", raw.focus_position_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "target_reference", raw.target_reference_ok == true )
	PVP_PRO_AI_V7_TRACK_SIGNAL_AVAILABILITY(
		memory, "target_hp", raw.target_hp_ok == true )

	local flags = {
		own_damage = 0, target_damage = 0, mp_spent = 0,
		state_transition = false, state_time_reset = false,
		distance_delta = 0, life_reset = false,
		round_transition = false, target_disappeared = false,
	}
	local previous = memory.raw_snapshot_v7
	local action = memory.action_execution_v7
	local actionID = action ~= nil and action.id or nil
	if previous ~= nil then
		if previous.bot_hp_rate ~= nil and raw.bot_hp_rate ~= nil then
			flags.own_damage = math.max(
				0, previous.bot_hp_rate - raw.bot_hp_rate )
			if flags.own_damage > 0.0005 then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "bot_took_damage", "bot_took_damage",
					0.97, 3, actionID, false,
					{ amount = flags.own_damage } )
			end
			if previous.bot_hp_rate < 0.08 and raw.bot_hp_rate > 0.72 then
				flags.life_reset = true
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "life_reset", "life_reset", 0.92,
					4, actionID, false, {} )
			end
		end
		if previous.target_hp ~= nil and raw.target_hp ~= nil then
			flags.target_damage = math.max(
				0, previous.target_hp - raw.target_hp )
			if flags.target_damage > 0.5 then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "opponent_took_damage", "opponent_took_damage",
					0.96, 3, actionID, false,
					{ amount = flags.target_damage } )
			end
			if previous.target_hp <= 0.5 and raw.target_hp > 1 then
				flags.round_transition = true
			end
		end
		if previous.has_target == true and raw.has_target ~= true then
			flags.target_disappeared = true
			PVP_PRO_AI_V7_EMIT_OBSERVATION(
				memory, "engagement_broken", "target_reference", 0.90,
				3, actionID, true, { reason = "target_disappeared" } )
		end
		if previous.bot_mp ~= nil and raw.bot_mp ~= nil then
			local mpDelta = raw.bot_mp - previous.bot_mp
			if math.abs( mpDelta ) > 0.01 then
				flags.mp_spent = math.max( 0, -mpDelta )
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, flags.mp_spent > 0
						and "resource_spent_confirmed"
						or "resource_change_observed",
					"resource_change_observed", 0.97, 3,
					actionID, false, { delta = mpDelta } )
			end
		end
		if previous.distance ~= nil and raw.distance ~= nil then
			flags.distance_delta = raw.distance - previous.distance
			if flags.distance_delta < -18 then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "distance_closed", "distance_velocity", 0.79,
					2, actionID, false,
					{ delta = flags.distance_delta } )
			elseif flags.distance_delta > 18 then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "distance_opened", "distance_velocity", 0.79,
					2, actionID, false,
					{ delta = flags.distance_delta } )
			end
		end
		if previous.bot_state_id_ok == true
			and raw.bot_state_id_ok == true
			and previous.bot_state_id ~= raw.bot_state_id then
			flags.state_transition = true
		end
		if previous.bot_state_time ~= nil and raw.bot_state_time ~= nil
			and raw.bot_state_time + 0.04 < previous.bot_state_time then
			flags.state_time_reset = true
			flags.state_transition = true
		end
		if flags.state_transition == true then
			PVP_PRO_AI_V7_EMIT_OBSERVATION(
				memory, "bot_state_transition", "state_transition", 0.88,
				2, actionID, false, {
					state_id_changed = previous.bot_state_id ~= raw.bot_state_id,
					state_time_reset = flags.state_time_reset,
				} )
		end
		if previous.bot_hit_ok == true and raw.bot_hit_ok == true then
			if previous.bot_hit_state ~= true and raw.bot_hit_state == true then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "opponent_entered_hit_pressure", "bot_hit_state",
					0.98, 2, actionID, true, {} )
			elseif previous.bot_hit_state == true
				and raw.bot_hit_state ~= true then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "bot_left_hit_state", "bot_hit_state",
					0.98, 2, actionID, true, {} )
			end
		end
	end
	if ( memory.round_index_v5 or 1 ) ~= ( memory.v7_last_round or 1 ) then
		flags.round_transition = true
	end
	if flags.round_transition == true then
		PVP_PRO_AI_V7_EMIT_OBSERVATION(
			memory, "round_transition", "round_transition", 0.90,
			4, actionID, false, {} )
	end
	raw.tick = memory.tick
	memory.raw_snapshot_v7 = raw
	memory.v7_last_round = memory.round_index_v5 or memory.v7_last_round or 1
	memory.v7_observation_flags = flags
	return flags
end

PVP_PRO_AI_V7_LIFECYCLE_STATES = {
	ACTION_SELECTED = true, ACTION_REQUESTED = true,
	ACTION_STARTED = true, CONTACT_WINDOW = true,
	PROBABLE_HIT = true, CONFIRMED_DAMAGE = true,
	PROBABLE_BLOCK_OR_ARMOR = true, PROBABLE_WHIFF = true,
	INTERRUPTED = true, CANCELLED = true, TIMED_OUT = true,
	ACTION_RECOVERED = true, RESULT_UNCERTAIN = true,
}

PVP_PRO_AI_V7_TERMINAL_STATES = {
	PROBABLE_HIT = true, CONFIRMED_DAMAGE = true,
	PROBABLE_BLOCK_OR_ARMOR = true,
	PROBABLE_WHIFF = true, INTERRUPTED = true, CANCELLED = true,
	TIMED_OUT = true, ACTION_RECOVERED = true, RESULT_UNCERTAIN = true,
}

PVP_PRO_AI_V7_LIFECYCLE_RANK = {
	ACTION_SELECTED = 1, ACTION_REQUESTED = 2, ACTION_STARTED = 3,
	CONTACT_WINDOW = 4, PROBABLE_HIT = 5, CONFIRMED_DAMAGE = 6,
	PROBABLE_BLOCK_OR_ARMOR = 6, PROBABLE_WHIFF = 6,
	INTERRUPTED = 6, CANCELLED = 6, TIMED_OUT = 6,
	ACTION_RECOVERED = 6, RESULT_UNCERTAIN = 6,
}

function PVP_PRO_AI_V7_TRANSITION(
	memory, execution, nextState, confidence, reason )
	if execution == nil or execution.terminal == true then return false end
	if PVP_PRO_AI_V7_LIFECYCLE_STATES[nextState] ~= true then return false end
	local previous = execution.state
	local previousRank = PVP_PRO_AI_V7_LIFECYCLE_RANK[previous] or 0
	local nextRank = PVP_PRO_AI_V7_LIFECYCLE_RANK[nextState] or 0
	if nextRank < previousRank then
		memory.telemetry_v7.callback_reordering =
			( memory.telemetry_v7.callback_reordering or 0 ) + 1
		PVP_PRO_AI_V7_EVENT( memory, "callback_delay_or_reordering", {
			action = execution.action, from = previous, to = nextState,
			reason = reason or "rank_regression_ignored",
		} )
		return false
	end
	if previous == nextState then return true end
	if nextRank - previousRank > 1 and nextState ~= "INTERRUPTED"
		and nextState ~= "CANCELLED" and nextState ~= "TIMED_OUT" then
		memory.telemetry_v7.callback_reordering =
			( memory.telemetry_v7.callback_reordering or 0 ) + 1
		PVP_PRO_AI_V7_EVENT( memory, "callback_delay_or_reordering", {
			action = execution.action, from = previous, to = nextState,
			reason = reason or "intermediate_callback_not_observed",
		} )
	end
	execution.state = nextState
	execution.state_tick = memory.tick
	execution.confirmation_confidence = PVP_PRO_AI_CLAMP(
		confidence or execution.confirmation_confidence or 0, 0, 1 )
	table.insert( execution.transitions, {
		state = nextState, tick = memory.tick,
		confidence = execution.confirmation_confidence,
		reason = reason or "unspecified",
	} )
	while #execution.transitions > PVP_PRO_AI_V7_TRANSITION_LIMIT do
		table.remove( execution.transitions, 1 )
	end
	memory.telemetry_v7.lifecycle[nextState] =
		( memory.telemetry_v7.lifecycle[nextState] or 0 ) + 1
	PVP_PRO_AI_V7_EVENT( memory, "action_lifecycle_transition", {
		action = execution.action, from = previous or "none",
		to = nextState, confidence = execution.confirmation_confidence,
		reason = reason or "unspecified", id = execution.id,
	} )
	return true
end

function PVP_PRO_AI_V7_UPDATE_TIMING_SAMPLE(
	memory, action, phase, elapsed )
	local stats = memory.timing_stats_v7[action]
	if stats == nil or type( elapsed ) ~= "number" then return end
	elapsed = PVP_PRO_AI_CLAMP( elapsed, 0, 24 )
	local minKey = phase .. "_min"
	local maxKey = phase .. "_max"
	if stats[minKey] == nil then stats[minKey] = elapsed
	else stats[minKey] = math.min( stats[minKey], elapsed ) end
	if stats[maxKey] == nil then stats[maxKey] = elapsed
	else
		stats[maxKey] = PVP_PRO_AI_V3_SMOOTH(
			stats[maxKey], math.max( stats[maxKey], elapsed ), 0.18 )
	end
	stats.observations = math.min( 200, stats.observations + 1 )
	stats.confidence = math.min(
		0.86, 0.18 + stats.observations * 0.025 )
end

function PVP_PRO_AI_V7_RANGE_STATS( memory, action )
	local stats = memory.range_stats_v7[action]
	if stats == nil then
		stats = {
			opportunities = 0, attempts = 0, starts = 0, confirms = 0,
			whiffs = 0, escaped_during_startup = 0, rejected = 0,
			range_failures = 0, distance_sum = 0,
		}
		memory.range_stats_v7[action] = stats
	end
	return stats
end

function PVP_PRO_AI_V7_ATTACH_PENDING( memory, execution )
	local pending = memory.pending_actions[
		#memory.pending_actions]
	if pending ~= nil and pending.tick == memory.tick
		and pending.action == execution.action then
		pending.execution_id_v7 = execution.id
		pending.request_tick_v7 = execution.request_tick
		pending.expected_timeout_v7 = execution.timeout_tick
		execution.legacy_entry = pending
	end
end

function PVP_PRO_AI_V7_EXPECTED_MOVEMENT( role )
	if role == "chase" or role == "advance" or role == "air_move" then
		return "close_range"
	end
	if role == "escape" then return "open_range" end
	if role == "guard" or role == "resource" then return "hold_or_drift" end
	return "limited_or_action_specific"
end

function PVP_PRO_AI_V7_NEW_EXECUTION(
	memory, action, role, context )
	local active = memory.action_execution_v7
	if active ~= nil and active.terminal ~= true then
		PVP_PRO_AI_V7_FINALIZE_ACTION(
			memory, active, "CANCELLED", 0.80,
			"superseded_by_new_engine_request", "execution" )
	end
	memory.action_sequence_v7 = memory.action_sequence_v7 + 1
	local trait = memory.competitive_profile_v6.action_traits[action] or {}
	local timing = PVP_PRO_AI_V7_TIMING( memory, action, role )
	local raw = memory.raw_snapshot_v7 or {}
	local execution = {
		id = memory.action_sequence_v7,
		action = action, role = role,
		tactical_intention = context.intention,
		exchange_plan = context.plan,
		strategy = context.strategy,
		phase = context.phase,
		selected_tick = memory.tick, request_tick = memory.tick,
		start_tick = nil, contact_tick = nil, recovery_tick = nil,
		state = nil, state_tick = memory.tick,
		transitions = {}, timing = timing,
		target_min = context.min_dist or trait.min_dist or 0,
		target_max = context.max_dist or trait.max_dist or 2000,
		expected_movement = PVP_PRO_AI_V7_EXPECTED_MOVEMENT( role ),
		start_distance = raw.distance or memory.distance,
		start_vertical = raw.vertical_offset or memory.vertical_offset,
		request_state_id = raw.bot_state_id,
		request_state_time = raw.bot_state_time,
		request_mp = raw.bot_mp or memory.mp,
		request_bot_hp_rate = raw.bot_hp_rate or memory.hp_rate,
		request_target_hp = raw.target_hp or memory.target_hp,
		confirmation_confidence = 0,
		final_result = nil, final_reason = nil,
		failure_category = nil, terminal = false,
		learning_applied = false, explicit_feedback = false,
		legacy_result = nil, legacy_damage = nil,
		timeout_tick = memory.tick + timing.timeout,
		attack = PVP_PRO_AI_V5_ATTACK_FAMILY[role] == true,
	}
	memory.action_execution_v7 = execution
	PVP_PRO_AI_V7_TRANSITION(
		memory, execution, "ACTION_SELECTED", 1.00,
		"canonical_decision_path_selected" )
	PVP_PRO_AI_V7_TRANSITION(
		memory, execution, "ACTION_REQUESTED", 1.00,
		"lua_condition_callback_returned_true" )
	PVP_PRO_AI_V7_ATTACH_PENDING( memory, execution )
	local rangeStats = PVP_PRO_AI_V7_RANGE_STATS( memory, action )
	rangeStats.attempts = rangeStats.attempts + 1
	if execution.start_distance ~= nil then
		rangeStats.distance_sum = rangeStats.distance_sum
			+ execution.start_distance
	end
	return execution
end

function PVP_PRO_AI_V7_RECORD_HISTORY( values, value, limit )
	table.insert( values, value )
	while #values > ( limit or PVP_PRO_AI_V7_HISTORY_LIMIT ) do
		table.remove( values, 1 )
	end
end

function PVP_PRO_AI_V7_REPETITION_ON_ACTION(
	memory, action, role, reason )
	local repetition = memory.repetition_v7
	PVP_PRO_AI_V7_RECORD_HISTORY( repetition.actions, action )
	PVP_PRO_AI_V7_RECORD_HISTORY( repetition.families, role )
	local actionRun, familyRun = 0, 0
	for index = #repetition.actions, 1, -1 do
		if repetition.actions[index] == action then actionRun = actionRun + 1
		else break end
	end
	for index = #repetition.families, 1, -1 do
		if repetition.families[index] == role then familyRun = familyRun + 1
		else break end
	end
	repetition.max_action_run = math.max(
		repetition.max_action_run, actionRun )
	repetition.max_family_run = math.max(
		repetition.max_family_run, familyRun )
	if actionRun >= PVP_PRO_AI_V7_VALUE(
		memory, "repetition_tolerance" ) then
		local record = memory.conditioning_v6[action]
		if record ~= nil and record.shown >= 2
			and record.failures < 1 then
			repetition.exploitation = repetition.exploitation + 1
		elseif reason == "hierarchy_expected" then
			repetition.identity = repetition.identity + 1
		else
			repetition.fallback = repetition.fallback + 1
			repetition.loops = repetition.loops + 1
			PVP_PRO_AI_V7_EVENT( memory, "repetition_pattern", {
				action = action, role = role, run = actionRun,
				classification = "possible_stuck_fallback",
			} )
		end
	end
end

function PVP_PRO_AI_V7_APPLY_LEARNING(
	memory, execution, success )
	if execution.learning_applied == true then return end
	local entry = execution.legacy_entry
	if entry == nil then return end
	execution.learning_applied = true
	entry.v7_result_class = execution.final_result
	entry.v7_result_reason = execution.final_reason
	entry.v7_confirmation_confidence = execution.confirmation_confidence
	if execution.legacy_damage ~= nil then
		entry.damage = execution.legacy_damage
	end
	memory.v7_applying_learning = true
	local ok, errorValue = pcall(
		PVP_PRO_AI_V6_LEARN_IMPL, memory, entry, success )
	memory.v7_applying_learning = false
	if ok ~= true then
		PVP_PRO_AI_V7_FAILURE( memory, "confirmation",
			"legacy_learning_error", {
				action = execution.action,
				error = tostring( errorValue ),
			} )
	end
end

function PVP_PRO_AI_V7_FINALIZE_ACTION(
	memory, execution, finalState, confidence, reason, failureCategory )
	if execution == nil or execution.terminal == true then return end
	PVP_PRO_AI_V7_TRANSITION(
		memory, execution, finalState, confidence, reason )
	execution.final_result = finalState
	execution.final_reason = reason
	execution.failure_category = failureCategory
	execution.terminal = true
	execution.terminal_tick = memory.tick
	if failureCategory ~= nil then
		PVP_PRO_AI_V7_FAILURE( memory, failureCategory, reason, {
			action = execution.action, state = finalState,
		} )
	end
	local learnSuccess = finalState == "CONFIRMED_DAMAGE"
		or ( finalState == "PROBABLE_HIT"
			and execution.explicit_feedback == true )
	local learnFailure = finalState == "PROBABLE_BLOCK_OR_ARMOR"
		or finalState == "PROBABLE_WHIFF"
		or finalState == "INTERRUPTED"
	if learnSuccess == true then
		PVP_PRO_AI_V7_APPLY_LEARNING( memory, execution, true )
	elseif learnFailure == true and execution.start_tick ~= nil then
		PVP_PRO_AI_V7_APPLY_LEARNING( memory, execution, false )
	end

	local rangeStats = PVP_PRO_AI_V7_RANGE_STATS(
		memory, execution.action )
	if finalState == "CONFIRMED_DAMAGE" then
		rangeStats.confirms = rangeStats.confirms + 1
	elseif finalState == "PROBABLE_WHIFF" then
		rangeStats.whiffs = rangeStats.whiffs + 1
		rangeStats.range_failures = rangeStats.range_failures + 1
		PVP_PRO_AI_V7_EVENT( memory, "range_related_failure", {
			action = execution.action,
			distance = memory.distance or -1,
			min = execution.target_min, max = execution.target_max,
			reason = reason,
		} )
	elseif finalState == "TIMED_OUT" and execution.start_tick == nil then
		rangeStats.rejected = rangeStats.rejected + 1
	end

	local compact = {
		id = execution.id, action = execution.action, role = execution.role,
		strategy = execution.strategy, plan = execution.exchange_plan,
		intention = execution.tactical_intention,
		request_tick = execution.request_tick,
		start_tick = execution.start_tick,
		terminal_tick = execution.terminal_tick,
		result = finalState, reason = reason,
		confidence = execution.confirmation_confidence,
		failure_category = failureCategory,
		learning_applied = execution.learning_applied,
	}
	table.insert( memory.terminal_actions_v7, compact )
	while #memory.terminal_actions_v7
		> PVP_PRO_AI_V7_TERMINAL_ACTION_LIMIT do
		table.remove( memory.terminal_actions_v7, 1 )
	end
	if memory.action_execution_v7 == execution then
		memory.action_execution_v7 = nil
	end
	if finalState == "RESULT_UNCERTAIN" then
		memory.reaction_until = math.max(
			memory.reaction_until or 0,
			memory.tick + PVP_PRO_AI_V7_VALUE(
				memory, "surprise_hesitation" ) )
		PVP_PRO_AI_V7_EVENT( memory, "uncertain_result_classification", {
			action = execution.action, reason = reason,
			confidence = confidence,
		} )
	end
end

function PVP_PRO_AI_V7_START_EVIDENCE( memory, execution, flags, raw )
	if flags.state_transition == true then
		return true, 0.82, "attributable_state_transition"
	end
	if flags.mp_spent > 0
		and memory.tick - execution.request_tick
			<= execution.timing.resource_delay_max then
		return true, 0.68, "resource_spend_after_request"
	end
	if execution.legacy_result == true then
		return true, 0.64, "legacy_feedback_before_start_callback"
	end
	return false, 0, nil
end

function PVP_PRO_AI_V7_ADVANCE_ACTION( memory, raw, flags )
	local execution = memory.action_execution_v7
	if execution == nil or execution.terminal == true then return end
	if flags.life_reset == true or flags.round_transition == true
		or flags.target_disappeared == true then
		PVP_PRO_AI_V7_FINALIZE_ACTION(
			memory, execution, "CANCELLED", 0.94,
			flags.life_reset and "life_reset"
				or ( flags.round_transition and "round_transition"
					or "target_disappeared" ), "execution" )
		return
	end

	local elapsed = memory.tick - execution.request_tick
	if flags.target_damage > 0.5
		or ( execution.legacy_damage or 0 ) > 0.5 then
		local damage = math.max(
			flags.target_damage, execution.legacy_damage or 0 )
		execution.legacy_damage = damage
		local confidence = execution.start_tick ~= nil and 0.91 or 0.74
		if execution.start_tick == nil then
			PVP_PRO_AI_V7_TRANSITION(
				memory, execution, "ACTION_STARTED", 0.66,
				"damage_callback_arrived_before_start_evidence" )
			execution.start_tick = memory.tick
		end
		PVP_PRO_AI_V7_FINALIZE_ACTION(
			memory, execution, "CONFIRMED_DAMAGE", confidence,
			"direct_target_hp_decrease_single_pending_action", nil )
		return
	end

	if execution.start_tick == nil then
		if flags.own_damage > 0.006 and raw.bot_hit_state == true then
			PVP_PRO_AI_V7_FINALIZE_ACTION(
				memory, execution, "INTERRUPTED", 0.86,
				"bot_hit_during_requested_startup", "tactical" )
			return
		end
		local started, confidence, reason =
			PVP_PRO_AI_V7_START_EVIDENCE(
				memory, execution, flags, raw )
		if started == true then
			execution.start_tick = memory.tick
			PVP_PRO_AI_V7_TRANSITION(
				memory, execution, "ACTION_STARTED", confidence, reason )
			PVP_PRO_AI_V7_UPDATE_TIMING_SAMPLE(
				memory, execution.action, "startup", elapsed )
			PVP_PRO_AI_V7_RANGE_STATS(
				memory, execution.action ).starts =
				PVP_PRO_AI_V7_RANGE_STATS(
					memory, execution.action ).starts + 1
		elseif elapsed >= math.max(
			PVP_PRO_AI_V7_VALUE( memory, "state_start_timeout" ),
			execution.timing.startup_max ) then
			local stateSignalsAvailable = raw.bot_state_id_ok == true
				or raw.bot_state_time_ok == true
			if stateSignalsAvailable == true then
				PVP_PRO_AI_V7_EMIT_OBSERVATION(
					memory, "action_rejected_or_stalled",
					"action_rejected_or_stalled", 0.64, 3,
					execution.id, false, { action = execution.action } )
				PVP_PRO_AI_V7_EVENT( memory, "engine_rejection", {
					action = execution.action, elapsed = elapsed,
				} )
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "TIMED_OUT", 0.64,
					"request_without_start_evidence", "execution" )
			else
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "RESULT_UNCERTAIN", 0.20,
					"start_signals_unavailable", "confirmation" )
			end
			return
		end
	end

	if execution.start_tick ~= nil then
		local sinceStart = memory.tick - execution.start_tick
		if flags.own_damage > 0.006 and raw.bot_hit_state == true
			and execution.timing.interruptible == true then
			PVP_PRO_AI_V7_FINALIZE_ACTION(
				memory, execution, "INTERRUPTED", 0.88,
				"bot_hit_during_started_action", "tactical" )
			return
		end
		local tolerance = PVP_PRO_AI_V7_VALUE( memory, "range_tolerance" )
		local outsideRange = raw.distance ~= nil
			and ( raw.distance < execution.target_min - tolerance
				or raw.distance > execution.target_max + tolerance )
		if outsideRange == true and execution.contact_tick == nil
			and math.abs( flags.distance_delta ) > 18 then
			local stats = PVP_PRO_AI_V7_RANGE_STATS(
				memory, execution.action )
			stats.escaped_during_startup = stats.escaped_during_startup + 1
			execution.target_escaped_during_startup = true
		end
		if execution.contact_tick == nil
			and sinceStart >= execution.timing.contact_min then
			execution.contact_tick = memory.tick
			PVP_PRO_AI_V7_TRANSITION(
				memory, execution, "CONTACT_WINDOW", 0.52,
				"configured_bounded_contact_window" )
			PVP_PRO_AI_V7_UPDATE_TIMING_SAMPLE(
				memory, execution.action, "contact", sinceStart )
			PVP_PRO_AI_V7_EMIT_OBSERVATION(
				memory, "action_contact_window", "action_contact", 0.52,
				3, execution.id, false, { action = execution.action } )
		end

		if execution.attack ~= true
			and sinceStart >= execution.timing.recovery_max then
			execution.recovery_tick = memory.tick
			PVP_PRO_AI_V7_UPDATE_TIMING_SAMPLE(
				memory, execution.action, "recovery", sinceStart )
			PVP_PRO_AI_V7_FINALIZE_ACTION(
				memory, execution, "ACTION_RECOVERED", 0.58,
				"non_attack_recovery_window_elapsed", nil )
			return
		end

		if execution.attack == true
			and sinceStart >= execution.timing.contact_max then
			if raw.target_hp_ok ~= true then
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "RESULT_UNCERTAIN", 0.24,
					"target_hp_unavailable_at_confirmation", "confirmation" )
			elseif outsideRange == true
				or execution.target_escaped_during_startup == true then
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "PROBABLE_WHIFF", 0.69,
					"target_outside_calibrated_contact_range", "tactical" )
			else
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "PROBABLE_BLOCK_OR_ARMOR", 0.42,
					"contact_without_damage_or_exact_hit_class", "tactical" )
			end
			return
		end
	end

	if memory.tick >= execution.timeout_tick then
		if execution.start_tick == nil then
			PVP_PRO_AI_V7_FINALIZE_ACTION(
				memory, execution, "TIMED_OUT", 0.62,
				"absolute_timeout_without_start", "execution" )
		else
			PVP_PRO_AI_V7_FINALIZE_ACTION(
				memory, execution, "RESULT_UNCERTAIN", 0.28,
				"absolute_timeout_after_ambiguous_execution", "confirmation" )
		end
	end
end

function PVP_PRO_AI_V7_RESET_TRANSIENT( memory, reason )
	local execution = memory.action_execution_v7
	if execution ~= nil and execution.terminal ~= true then
		PVP_PRO_AI_V7_FINALIZE_ACTION(
			memory, execution, "CANCELLED", 0.96,
			reason or "transient_reset", "execution" )
	end
	memory.current_observations_v7 = {}
	memory.v7_decision_context = nil
	memory.v7_observation_flags = nil
	memory.pending_defense_v6 = nil
	PVP_PRO_AI_V7_EVENT( memory, "runtime_transient_reset", {
		reason = reason or "unknown",
		match_memory_preserved = true,
	} )
end

function PVP_PRO_AI_V7_SET_RESOURCE_BELIEF(
	memory, state, probability, confidence, evidence )
	local belief = memory.resource_belief_v7
	local previousState = belief.state
	local previousConfidence = belief.confidence
	belief.state = state
	belief.probability = PVP_PRO_AI_CLAMP( probability, 0.10, 0.90 )
	belief.confidence = PVP_PRO_AI_CLAMP( confidence, 0.05, 0.82 )
	belief.last_tick = memory.tick
	belief.last_evidence = evidence
	if previousState ~= state
		or math.abs( previousConfidence - belief.confidence ) >= 0.12 then
		PVP_PRO_AI_V7_EVENT( memory, "resource_inference_changed", {
			from = previousState, to = state,
			probability = belief.probability,
			confidence = belief.confidence,
			evidence = evidence,
		} )
	end
end

function PVP_PRO_AI_V7_UPDATE_RESOURCE_BELIEF( memory, flags )
	local belief = memory.resource_belief_v7
	if flags.life_reset == true or flags.round_transition == true then
		PVP_PRO_AI_V7_SET_RESOURCE_BELIEF(
			memory, "unknown", 0.50, 0.10, "life_or_round_reset" )
	else
		local terminal = memory.terminal_actions_v7[
			#memory.terminal_actions_v7]
		if terminal ~= nil and terminal.terminal_tick == memory.tick then
			if terminal.result == "PROBABLE_BLOCK_OR_ARMOR" then
				PVP_PRO_AI_V7_SET_RESOURCE_BELIEF(
					memory, "resource_state_unknown", 0.48, 0.28,
					"block_armor_ambiguity" )
			elseif terminal.result == "PROBABLE_WHIFF"
				and terminal.reason == "target_outside_calibrated_contact_range" then
				PVP_PRO_AI_V7_SET_RESOURCE_BELIEF(
					memory, "possibly_spent", 0.36, 0.34,
					"escape_during_contact_window" )
			end
		end
		local decay = PVP_PRO_AI_V7_VALUE(
			memory, "resource_inference_decay" )
		belief.confidence = math.max( 0.05, belief.confidence - decay )
		belief.probability = PVP_PRO_AI_V3_SMOOTH(
			belief.probability, 0.50, decay * 0.55 )
		if belief.confidence < 0.18 then belief.state = "unknown" end
	end
	local early = memory.hypotheses_v6.early_mana_break
	local late = memory.hypotheses_v6.late_mana_break
	if early ~= nil and late ~= nil then
		if early.confidence >= 0.58 then
			belief.tendency = "early_mana_break_tendency"
		elseif late.confidence >= 0.58 then
			belief.tendency = "late_mana_break_tendency"
		else
			belief.tendency = "unknown"
		end
	end
	-- V6 receives a confidence-shrunk probability, never a fabricated exact
	-- cooldown or exact resource count.
	memory.inferred_defense_resource_v6 = PVP_PRO_AI_CLAMP(
		0.50 + ( belief.probability - 0.50 ) * belief.confidence,
		0.25, 0.75 )
end

function PVP_PRO_AI_V7_OCCUPANCY_RECORD(
	memory, dimension, name, duration )
	local dimensionStats = memory.occupancy_v7[dimension]
	if dimensionStats == nil or name == nil then return end
	local stats = dimensionStats[name]
	if stats == nil then
		stats = { visits = 0, total = 0, minimum = nil, maximum = 0 }
		dimensionStats[name] = stats
	end
	stats.visits = stats.visits + 1
	stats.total = stats.total + math.max( 0, duration )
	stats.minimum = stats.minimum == nil
		and duration or math.min( stats.minimum, duration )
	stats.maximum = math.max( stats.maximum, duration )
end

function PVP_PRO_AI_V7_OCCUPANCY_TRANSITION(
	memory, dimension, value, reason )
	local occupancy = memory.occupancy_v7
	local currentKey = "current_" .. dimension
	local sinceKey = dimension .. "_since"
	local current = occupancy[currentKey]
	if current == value then return false end
	local duration = memory.tick - ( occupancy[sinceKey] or memory.tick )
	PVP_PRO_AI_V7_OCCUPANCY_RECORD(
		memory, dimension, current, duration )
	occupancy[currentKey] = value
	occupancy[sinceKey] = memory.tick
	if dimension == "strategy" then
		memory.identity_metrics_v7.strategy_changes =
			memory.identity_metrics_v7.strategy_changes + 1
		local transition = {
			from = current, to = value, tick = memory.tick,
			duration = duration, reason = reason,
		}
		table.insert( occupancy.strategy_transitions, transition )
		while #occupancy.strategy_transitions > 16 do
			table.remove( occupancy.strategy_transitions, 1 )
		end
		local count = #occupancy.strategy_transitions
		if count >= 3 then
			local a = occupancy.strategy_transitions[count - 2]
			local b = occupancy.strategy_transitions[count - 1]
			local c = occupancy.strategy_transitions[count]
			if a.to == c.to and a.to ~= b.to
				and c.tick - a.tick <= 18 then
				occupancy.strategy_oscillations =
					occupancy.strategy_oscillations + 1
			end
		end
		local softMin = PVP_PRO_AI_V7_VALUE(
			memory, "strategy_min_commit" )
		local emergency = reason ~= nil
			and ( string.find( reason, "severe", 1, true ) ~= nil
				or string.find( reason, "lethal", 1, true ) ~= nil
				or string.find( reason, "round", 1, true ) ~= nil )
		if current ~= nil and duration < softMin and emergency ~= true then
			PVP_PRO_AI_V7_EVENT( memory, "strategy_occupancy", {
				strategy = current, duration = duration,
				classification = "below_soft_minimum", reason = reason,
			} )
		end
	elseif dimension == "plan" then
		local completed = reason == "exchange_plan_complete"
			or reason == "strategy_requires_exchange_plan"
		if current ~= nil then
			if completed == true then
				occupancy.plan_completions = occupancy.plan_completions + 1
				PVP_PRO_AI_V7_EVENT(
					memory, "exchange_plan_completion", {
						plan = current, duration = duration, reason = reason,
					} )
			else
				occupancy.plan_aborts = occupancy.plan_aborts + 1
				PVP_PRO_AI_V7_EVENT( memory, "plan_abort_reason", {
					plan = current, duration = duration,
					reason = reason or "strategy_transition",
				} )
			end
		end
		local transition = {
			from = current, to = value, tick = memory.tick,
			duration = duration, reason = reason,
		}
		table.insert( occupancy.plan_transitions, transition )
		while #occupancy.plan_transitions > 16 do
			table.remove( occupancy.plan_transitions, 1 )
		end
	elseif dimension == "tempo" then
		memory.identity_metrics_v7.tempo_changes =
			memory.identity_metrics_v7.tempo_changes + 1
		if current ~= nil and duration < PVP_PRO_AI_V7_VALUE(
			memory, "tempo_transition_min" ) then
			PVP_PRO_AI_V7_EVENT( memory, "strategy_occupancy", {
				dimension = "tempo", value = current,
				duration = duration,
				classification = "rapid_tempo_transition",
			} )
		end
	end
	return true
end

function PVP_PRO_AI_V7_UPDATE_OCCUPANCY( memory )
	PVP_PRO_AI_V7_OCCUPANCY_TRANSITION(
		memory, "strategy", memory.match_strategy_v6,
		memory.strategy_transition_reason_v6 )
	PVP_PRO_AI_V7_OCCUPANCY_TRANSITION(
		memory, "plan", memory.exchange_plan_v6,
		memory.plan_transition_reason_v6 )
	PVP_PRO_AI_V7_OCCUPANCY_TRANSITION(
		memory, "intention", memory.tactical_intention_v6,
		memory.intention_transition_reason_v6 )
	PVP_PRO_AI_V7_OCCUPANCY_TRANSITION(
		memory, "tempo", memory.tempo_state_v6,
		"tempo_runtime_transition" )
	PVP_PRO_AI_V7_OCCUPANCY_TRANSITION(
		memory, "initiative", memory.initiative_state_v6,
		"initiative_runtime_transition" )
	local occupancy = memory.occupancy_v7
	local planDuration = memory.tick - ( occupancy.plan_since or memory.tick )
	if occupancy.current_plan ~= nil
		and planDuration > PVP_PRO_AI_V7_VALUE(
			memory, "exchange_timeout" )
		and memory.v7_overdue_plan_reported ~= occupancy.current_plan then
		memory.v7_overdue_plan_reported = occupancy.current_plan
		PVP_PRO_AI_V7_EVENT( memory, "strategy_occupancy", {
			dimension = "plan", value = occupancy.current_plan,
			duration = planDuration,
			classification = "above_soft_exchange_timeout",
		} )
	end
end

function PVP_PRO_AI_V7_IDENTITY_ON_ACTION(
	memory, action, role, execution )
	local metrics = memory.identity_metrics_v7
	metrics.role_actions[role] = ( metrics.role_actions[role] or 0 ) + 1
	metrics.action_families[role] =
		( metrics.action_families[role] or 0 ) + 1
	if role == "escape" then metrics.retreat_actions = metrics.retreat_actions + 1 end
	if PVP_PRO_AI_V5_ATTACK_FAMILY[role] == true then
		metrics.commitment_actions = metrics.commitment_actions + 1
	end
	if role == "guard" or role == "escape" then
		metrics.defensive_actions = metrics.defensive_actions + 1
	end
	if memory.active_probe_v6 ~= nil then
		metrics.probe_actions = metrics.probe_actions + 1
	end
	if memory.combo_goal_v6 == "reset_pressure"
		or memory.combo_goal_v6 == "bait_escape" then
		metrics.resets = metrics.resets + 1
	elseif memory.combo_goal_v6 == "maximum_reliable_damage"
		or memory.combo_goal_v6 == "lethal_confirmation" then
		metrics.extensions = metrics.extensions + 1
	end
	if memory.v7_last_engagement_id ~= memory.engagement_id_v6 then
		memory.v7_last_engagement_id = memory.engagement_id_v6
		metrics.openers[action] = ( metrics.openers[action] or 0 ) + 1
		PVP_PRO_AI_V7_RECORD_HISTORY(
			memory.repetition_v7.openers, action, 16 )
	end
	if role == "advance" or role == "chase" or role == "air_move"
		or role == "escape" then
		PVP_PRO_AI_V7_RECORD_HISTORY(
			memory.repetition_v7.movement, role, 20 )
	end
	if execution ~= nil and execution.start_distance ~= nil then
		metrics.engagement_distance_sum =
			( metrics.engagement_distance_sum or 0 )
			+ execution.start_distance
		metrics.engagement_distance_count =
			( metrics.engagement_distance_count or 0 ) + 1
	end
end

function PVP_PRO_AI_V7_UPDATE_IDENTITY( memory, flags )
	local metrics = memory.identity_metrics_v7
	metrics.ticks = metrics.ticks + 1
	if memory.engagement_phase_v6 == "observation"
		or memory.engagement_phase_v6 == "positioning" then
		metrics.observation_ticks = metrics.observation_ticks + 1
	elseif memory.engagement_phase_v6 == "commitment"
		or memory.engagement_phase_v6 == "conversion" then
		metrics.commitment_ticks = metrics.commitment_ticks + 1
	elseif memory.engagement_phase_v6 == "extension" then
		metrics.pressure_ticks = metrics.pressure_ticks + 1
	end
	metrics.resource_spent = metrics.resource_spent + ( flags.mp_spent or 0 )
	local interval = PVP_PRO_AI_V7_VALUE(
		memory, "identity_snapshot_interval" )
	if memory.tick - metrics.last_snapshot_tick >= interval then
		metrics.last_snapshot_tick = memory.tick
		local total = math.max( 1, metrics.ticks )
		PVP_PRO_AI_V7_EVENT( memory, "identity_metric_snapshot", {
			identity = memory.runtime_profile_v7.identity or "unknown",
			observation_rate = metrics.observation_ticks / total,
			commitment_rate = metrics.commitment_ticks / total,
			pressure_rate = metrics.pressure_ticks / total,
			retreat_actions = metrics.retreat_actions,
			commitment_actions = metrics.commitment_actions,
			strategy_changes = metrics.strategy_changes,
		} )
	end
end

function PVP_PRO_AI_V7_FEASIBLE(
	memory, action, trait, distance, mp, vertical )
	if trait == nil or distance == nil or mp == nil then return false end
	local profile = memory.runtime_profile_v7 or {}
	local override = ( profile.range_overrides or {} )[action] or {}
	local minDist = override.min_dist or trait.min_dist or 0
	local maxDist = override.max_dist or trait.max_dist or 2000
	if distance < minDist or distance > maxDist
		or mp < ( trait.mp or 0 ) then return false end
	if vertical ~= nil and math.abs( vertical ) > ( trait.vertical or 999 ) then
		return false
	end
	if action == "ranger_air_drop" and ( vertical == nil or vertical >= -55 ) then
		return false
	end
	if action == "ranger_vertical_intercept"
		and ( vertical == nil or vertical <= 55 ) then return false end
	return true
end

function PVP_PRO_AI_V7_RUNTIME_UTILITY(
	memory, action, role, minMP )
	PVP_PRO_AI_V7_INIT( memory )
	local utility = 0
	local rangeStats = memory.range_stats_v7[action]
	if rangeStats ~= nil and rangeStats.attempts >= 3 then
		local rangeRate = rangeStats.range_failures
			/ math.max( 1, rangeStats.attempts )
		utility = utility - math.min(
			PVP_PRO_AI_V7_VALUE( memory, "range_failure_penalty" ),
			rangeRate * 10 )
		local rejectionRate = rangeStats.rejected
			/ math.max( 1, rangeStats.attempts )
		utility = utility - math.min( 6, rejectionRate * 8 )
	end
	local route = memory.route_stats_v6[
		PVP_PRO_AI_V6_ROUTE_KEY( memory, action )]
	if route ~= nil and route.attempts >= 3 then
		local dropRate = route.drops / math.max( 1, route.attempts )
		utility = utility - math.min(
			PVP_PRO_AI_V7_VALUE( memory, "route_drop_penalty" ),
			dropRate * 7 )
	end
	local history = memory.repetition_v7.actions
	local repeated = 0
	for index = #history, math.max( 1, #history - 3 ), -1 do
		if history[index] == action then repeated = repeated + 1 end
	end
	if repeated >= PVP_PRO_AI_V7_VALUE(
		memory, "repetition_tolerance" ) then
		local last = memory.terminal_actions_v7[
			#memory.terminal_actions_v7]
		if last ~= nil and last.action == action
			and last.result ~= "CONFIRMED_DAMAGE" then
			utility = utility - 4
		end
	end
	if #history >= 8 then
		local sameCount = 0
		for _, recentAction in ipairs( history ) do
			if recentAction == action then sameCount = sameCount + 1 end
		end
		local raw = memory.raw_snapshot_v7 or {}
		local distance = raw.distance or memory.distance
		local mp = raw.bot_mp or memory.mp
		local vertical = raw.vertical_offset or memory.vertical_offset or 0
		local feasibleAlternatives = 0
		if distance ~= nil and mp ~= nil then
			for candidate, candidateTrait in pairs(
				memory.competitive_profile_v6.action_traits or {} ) do
				if candidate ~= action and PVP_PRO_AI_V7_FEASIBLE(
					memory, candidate, candidateTrait,
					distance, mp, vertical ) then
					feasibleAlternatives = feasibleAlternatives + 1
				end
			end
		end
		if feasibleAlternatives >= 2 then
			local tolerance = PVP_PRO_AI_V7_VALUE(
				memory, "repetition_tolerance" )
			local shareThreshold = 0.38 + tolerance * 0.035
			local share = sameCount / #history
			if share > shareThreshold then
				utility = utility - math.min(
					8, ( share - shareThreshold ) * 24 )
			end
		elseif sameCount / #history > 0.62 then
			memory.repetition_v7.necessary =
				memory.repetition_v7.necessary + 1
		end
	end
	local belief = memory.resource_belief_v7
	if minMP >= 200 and belief.confidence
		< PVP_PRO_AI_V7_VALUE( memory, "defensive_option_confidence" )
		and memory.combo_goal_v6 == "defensive_resource_exhaustion" then
		utility = utility - 3
	end
	if ( memory.strategy_failures_v6 or 0 ) >= PVP_PRO_AI_V7_VALUE(
		memory, "strategy_failure_threshold" ) then
		local trait = memory.competitive_profile_v6.action_traits[action] or {}
		utility = utility - ( trait.commitment or 0.4 ) * 3
	end
	local probe = memory.active_probe_v6
	if probe ~= nil and probe.hypothesis ~= nil then
		local hypothesis = memory.hypotheses_v6[probe.hypothesis]
		if hypothesis ~= nil and hypothesis.confidence
			>= PVP_PRO_AI_V7_VALUE( memory, "probe_confidence" ) then
			for _, probeAction in ipairs( probe.actions or {} ) do
				if probeAction == action then utility = utility - 5 end
			end
		end
	end
	return PVP_PRO_AI_CLAMP( utility, -14, 6 )
end

function PVP_PRO_AI_V6_ACTION_UTILITY(
	memory, action, role, minMP )
	local base = PVP_PRO_AI_V6_ACTION_UTILITY_IMPL(
		memory, action, role, minMP )
	return PVP_PRO_AI_CLAMP(
		base + PVP_PRO_AI_V7_RUNTIME_UTILITY(
			memory, action, role, minMP ), -44, 54 )
end

function PVP_PRO_AI_V7_BEST_ACTION_AT(
	memory, distance, mp, vertical )
	local profile = memory.competitive_profile_v6
	local bestAction, bestScore = nil, -999
	local originalDistance = memory.distance
	memory.distance = distance
	for action, trait in pairs( profile.action_traits or {} ) do
		if PVP_PRO_AI_V7_FEASIBLE(
			memory, action, trait, distance, mp, vertical ) then
			local score = PVP_PRO_AI_V6_ACTION_UTILITY_IMPL(
				memory, action, trait.role, trait.mp or 0 )
				+ PVP_PRO_AI_V7_RUNTIME_UTILITY(
					memory, action, trait.role, trait.mp or 0 )
			if score > bestScore then
				bestAction, bestScore = action, score
			end
		end
	end
	memory.distance = originalDistance
	return bestAction, bestScore
end

function PVP_PRO_AI_V7_COUNTERFACTUAL( memory, selectedAction )
	local raw = memory.raw_snapshot_v7 or {}
	local distance = raw.distance or memory.distance
	local mp = raw.bot_mp or memory.mp
	local vertical = raw.vertical_offset or memory.vertical_offset or 0
	if distance == nil or mp == nil then return end
	local diagnostics = memory.counterfactual_v7
	diagnostics.evaluations = diagnostics.evaluations + 1
	local best, bestScore = PVP_PRO_AI_V7_BEST_ACTION_AT(
		memory, distance, mp, vertical )
	local noise = PVP_PRO_AI_V7_VALUE( memory, "counterfactual_noise" )
	local lowBest = PVP_PRO_AI_V7_BEST_ACTION_AT(
		memory, math.max( 0, distance - noise ), mp, vertical )
	local highBest = PVP_PRO_AI_V7_BEST_ACTION_AT(
		memory, distance + noise, mp, vertical )
	local stable = lowBest == best and highBest == best
	if stable == true then diagnostics.noise_stable = diagnostics.noise_stable + 1
	else diagnostics.noise_changed = diagnostics.noise_changed + 1 end
	local majorBest = PVP_PRO_AI_V7_BEST_ACTION_AT(
		memory, distance + noise * 3, mp, vertical )
	if majorBest ~= best then
		diagnostics.major_changed = diagnostics.major_changed + 1
	end
	if selectedAction == best then
		diagnostics.chosen_best = diagnostics.chosen_best + 1
	end
	diagnostics.latest = {
		selected = selectedAction, best = best, next_best_score = bestScore,
		low_noise = lowBest, high_noise = highBest,
		major = majorBest, stable = stable,
	}
	if stable ~= true or diagnostics.evaluations % 12 == 0 then
		PVP_PRO_AI_V7_EVENT( memory, "counterfactual_decision_summary", {
			selected = selectedAction, best = best or "none",
			low_noise = lowBest or "none", high_noise = highBest or "none",
			major = majorBest or "none", stable = stable,
		} )
	end
end

function PVP_PRO_AI_V7_DORMANT_CONSIDER(
	memory, action, feasible, selected )
	local metadata = PVP_PRO_AI_V7_DORMANT_ACTIONS[action]
	if metadata == nil then return end
	local character = memory.competitive_profile_v6.character or "unknown"
	if string.find( metadata.character, character, 1, true ) == nil then return end
	local stats = memory.dormant_v7[action]
	if stats == nil then
		stats = { considered = 0, opportunities = 0, selected = 0 }
		memory.dormant_v7[action] = stats
	end
	stats.considered = stats.considered + 1
	if feasible == true then
		stats.opportunities = stats.opportunities + 1
		if stats.opportunities == 1 then
			PVP_PRO_AI_V7_EVENT( memory, "dormant_action_opportunity", {
				action = action, required = metadata.required,
				parent = metadata.parent_intention,
			} )
		end
	end
	if selected == true then stats.selected = stats.selected + 1 end
end

-- Replace the unsafe helpers with cached, nil-guarded equivalents while
-- retaining the same public API used by every legacy generation.
function PVP_PRO_AI_HP_RATE( pNPCUnit )
	local hp, hpOK = PVP_PRO_AI_V7_SAFE_NUMBER(
		pNPCUnit, "GetNowHP" )
	local maximum, maxOK = PVP_PRO_AI_V7_SAFE_NUMBER(
		pNPCUnit, "GetMaxHP" )
	if hpOK == true and maxOK == true and maximum > 0 then
		return PVP_PRO_AI_CLAMP( hp / maximum, 0, 1 )
	end
	local memory = PVP_PRO_AI_MEMORY[pNPCUnit]
	if memory ~= nil then
		return memory.hp_rate or memory.v6_current_hp_rate or 1
	end
	return 1
end

function PVP_PRO_AI_DISTANCE( pX2Game, pNPCUnit )
	local first = PVP_PRO_AI_V7_SAFE_VECTOR( pNPCUnit, "GetPos" )
	local second = PVP_PRO_AI_V7_SAFE_VECTOR(
		pX2Game, "GetFocusUnitPos_LUA" )
	local distance = PVP_PRO_AI_V7_VECTOR_DISTANCE( first, second )
	if distance ~= nil then return distance end
	local memory = PVP_PRO_AI_MEMORY[pNPCUnit]
	return memory ~= nil and ( memory.distance or 500 ) or 500
end

function PVP_PRO_AI_LEARN( memory, entry, success )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V7_INIT( memory )
	if memory.v7_applying_learning == true then
		return PVP_PRO_AI_V6_LEARN_IMPL( memory, entry, success )
	end
	local execution = memory.action_execution_v7
	if execution ~= nil and entry ~= nil
		and entry.execution_id_v7 == execution.id then
		execution.legacy_result = success == true
		execution.legacy_damage = entry.damage or 0
		execution.legacy_entry = entry
		if memory.v7_inside_legacy_tick == true then
			return
		end
		execution.explicit_feedback = true
		if execution.start_tick == nil then
			execution.start_tick = memory.tick
			PVP_PRO_AI_V7_TRANSITION(
				memory, execution, "ACTION_STARTED", 0.72,
				"deterministic_feedback_start" )
		end
		if success == true then
			if ( entry.damage or 0 ) > 0.5 then
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "CONFIRMED_DAMAGE", 0.96,
					"explicit_deterministic_damage_feedback", nil )
			else
				PVP_PRO_AI_V7_FINALIZE_ACTION(
					memory, execution, "PROBABLE_HIT", 0.74,
					"explicit_deterministic_hit_feedback", nil )
			end
		else
			PVP_PRO_AI_V7_FINALIZE_ACTION(
				memory, execution, "PROBABLE_WHIFF", 0.72,
				"explicit_deterministic_miss_feedback", "tactical" )
		end
		return
	end
	if entry ~= nil and entry.execution_id_v7 ~= nil then
		-- A late resolver callback for an already-cancelled request cannot be
		-- reassigned to the current action or used to train strategy.
		PVP_PRO_AI_V7_EVENT( memory, "callback_delay_or_reordering", {
			action = entry.action or "unknown",
			reason = "late_feedback_for_terminal_execution",
			id = entry.execution_id_v7,
		} )
		return
	end
	-- Legacy compatibility for an action created before V7 initialized.
	return PVP_PRO_AI_V6_LEARN_IMPL( memory, entry, success )
end

function PVP_PRO_AI_READY(
	pNPCUnit, action, family, chance,
	cooldown, reconsider, urgent )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V7_INIT( memory )
	local ok, result = pcall(
		PVP_PRO_AI_V6_READY_IMPL,
		pNPCUnit, action, family, chance,
		cooldown, reconsider, urgent )
	if ok ~= true then
		PVP_PRO_AI_V7_FAILURE( memory, "decision", "ready_callback_error", {
			action = action, error = tostring( result ),
		} )
		return false
	end
	if result ~= true then return result end
	local context = memory.v7_decision_context or memory.v6_context or {
		action = action, role = family,
		strategy = memory.match_strategy_v6,
		plan = memory.exchange_plan_v6,
		intention = memory.tactical_intention_v6,
		phase = memory.engagement_phase_v6,
	}
	local execution = PVP_PRO_AI_V7_NEW_EXECUTION(
		memory, action, family, context )
	PVP_PRO_AI_V7_REPETITION_ON_ACTION(
		memory, action, family,
		memory.motor_trace_v6 ~= nil
			and memory.motor_trace_v6.reason or "unknown" )
	PVP_PRO_AI_V7_IDENTITY_ON_ACTION(
		memory, action, family, execution )
	PVP_PRO_AI_V7_COUNTERFACTUAL( memory, action )
	local trait = memory.competitive_profile_v6.action_traits[action]
	local raw = memory.raw_snapshot_v7 or {}
	PVP_PRO_AI_V7_DORMANT_CONSIDER(
		memory, action,
		PVP_PRO_AI_V7_FEASIBLE(
			memory, action, trait, raw.distance or memory.distance,
			raw.bot_mp or memory.mp,
			raw.vertical_offset or memory.vertical_offset or 0 ), true )
	return result
end

function PVP_PRO_AI_DECIDE(
	pX2Game, pNPCUnit, action, role,
	minDist, maxDist, minMP, chance, cooldown )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V7_INIT( memory )
	local raw = PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	local distance = raw.distance
	local mp = raw.bot_mp
	local trait = memory.competitive_profile_v6.action_traits[action]
	local feasible = distance ~= nil and mp ~= nil
		and PVP_PRO_AI_V7_FEASIBLE(
			memory, action, trait or {
				min_dist = minDist, max_dist = maxDist, mp = minMP,
			}, distance, mp, raw.vertical_offset or 0 )
	PVP_PRO_AI_V7_DORMANT_CONSIDER(
		memory, action, feasible, false )
	if distance == nil or mp == nil then
		PVP_PRO_AI_V7_FAILURE( memory, "decision",
			"required_runtime_signal_nil", { action = action } )
		return false
	end
	if distance < minDist or distance > maxDist then
		PVP_PRO_AI_V7_FAILURE( memory, "decision", "range_gate", {
			action = action, distance = distance,
			min = minDist, max = maxDist,
		} )
		return false
	end
	if mp < minMP then
		PVP_PRO_AI_V7_FAILURE( memory, "decision", "resource_gate", {
			action = action, mp = mp, required = minMP,
		} )
		return false
	end
	memory.v7_decision_context = {
		action = action, role = role,
		min_dist = minDist, max_dist = maxDist, min_mp = minMP,
		strategy = memory.match_strategy_v6,
		plan = memory.exchange_plan_v6,
		intention = memory.tactical_intention_v6,
		phase = memory.engagement_phase_v6,
		request_distance = distance,
	}
	local ok, result = pcall(
		PVP_PRO_AI_V6_DECIDE_IMPL,
		pX2Game, pNPCUnit, action, role,
		minDist, maxDist, minMP, chance, cooldown )
	memory.v7_decision_context = nil
	if ok ~= true then
		PVP_PRO_AI_V7_FAILURE( memory, "decision", "decision_callback_error", {
			action = action, error = tostring( result ),
		} )
		return false
	end
	if result ~= true then
		memory.telemetry_v7.policy_deferred =
			( memory.telemetry_v7.policy_deferred or 0 ) + 1
	end
	return result
end

function PVP_PRO_AI_TICK(
	pX2Game, pNPCUnit, reactionMin, reactionMax )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V7_INIT( memory )
	local beforeTick = memory.tick or 0
	local preRaw = PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	local result = false
	if preRaw.critical_ok ~= true then
		memory.tick = beforeTick + 1
		memory.once = {}
		if preRaw.bot_hp_rate ~= nil then memory.hp_rate = preRaw.bot_hp_rate end
		if preRaw.bot_mp ~= nil then memory.mp = preRaw.bot_mp end
		if preRaw.distance ~= nil then memory.distance = preRaw.distance end
		PVP_PRO_AI_V7_FAILURE( memory, "execution",
			"critical_signal_temporarily_nil", {
				bot_hp = preRaw.bot_hp_ok,
				bot_mp = preRaw.bot_mp_ok,
				bot_position = preRaw.bot_position_ok,
				focus_position = preRaw.focus_position_ok,
			} )
	else
		memory.v7_inside_legacy_tick = true
		local ok, value = pcall(
			PVP_PRO_AI_V6_TICK_IMPL,
			pX2Game, pNPCUnit, reactionMin, reactionMax )
		memory.v7_inside_legacy_tick = false
		if ok == true then result = value
		else
			memory.telemetry_v7.adapter_errors =
				memory.telemetry_v7.adapter_errors + 1
			PVP_PRO_AI_V7_FAILURE( memory, "execution",
				"legacy_tick_runtime_error", {
					error = tostring( value ),
				} )
			if memory.tick == beforeTick then memory.tick = beforeTick + 1 end
		end
	end
	local raw = PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	local flags = PVP_PRO_AI_V7_PROCESS_RAW( memory, raw )
	if flags.life_reset == true or flags.round_transition == true then
		PVP_PRO_AI_V7_RESET_TRANSIENT(
			memory, flags.life_reset and "life_reset" or "round_transition" )
	else
		PVP_PRO_AI_V7_ADVANCE_ACTION( memory, raw, flags )
	end
	PVP_PRO_AI_V7_UPDATE_RESOURCE_BELIEF( memory, flags )
	PVP_PRO_AI_V7_UPDATE_OCCUPANCY( memory )
	PVP_PRO_AI_V7_UPDATE_IDENTITY( memory, flags )
	return result
end

function PVP_PRO_AI_MANA_BREAK( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V7_INIT( memory )
	local mp, mpOK = PVP_PRO_AI_V7_SAFE_NUMBER(
		pNPCUnit, "GetNowMP" )
	if mpOK ~= true then
		PVP_PRO_AI_V7_FAILURE(
			memory, "decision", "mana_break_resource_nil", {} )
		return false
	end
	local ok, result = pcall(
		PVP_PRO_AI_V6_MANA_BREAK_RUNTIME_IMPL, pNPCUnit )
	if ok ~= true then return false end
	if result == true then
		memory.identity_metrics_v7.defense_choices.mana_break =
			( memory.identity_metrics_v7.defense_choices.mana_break or 0 ) + 1
		PVP_PRO_AI_V7_RECORD_HISTORY(
			memory.repetition_v7.defenses, "mana_break", 16 )
	end
	return result
end

function PVP_PRO_AI_ROLL( pX2Game, pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V7_INIT( memory )
	local raw = PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	if raw.distance == nil then return false end
	local ok, result = pcall(
		PVP_PRO_AI_V6_ROLL_RUNTIME_IMPL, pX2Game, pNPCUnit )
	if ok ~= true then return false end
	if result == true then
		memory.identity_metrics_v7.defense_choices.roll =
			( memory.identity_metrics_v7.defense_choices.roll or 0 ) + 1
		PVP_PRO_AI_V7_RECORD_HISTORY(
			memory.repetition_v7.defenses, "roll", 16 )
		PVP_PRO_AI_V7_RECORD_HISTORY(
			memory.repetition_v7.wakeups, "roll", 16 )
	end
	return result
end

function PVP_PRO_AI_COMBO_RESET(
	pX2Game, pNPCUnit, resetRange, baseChance )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V7_INIT( memory )
	local raw = PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	if raw.distance == nil or raw.bot_state_time_ok ~= true then return false end
	local ok, result = pcall(
		PVP_PRO_AI_V6_COMBO_RESET_RUNTIME_IMPL,
		pX2Game, pNPCUnit, resetRange, baseChance )
	if ok ~= true then return false end
	return result
end

function PVP_PRO_AI_AWAKEN(
	pX2Game, pNPCUnit, offensiveRange, aggression )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V7_INIT( memory )
	local raw = PVP_PRO_AI_V7_CAPTURE_RAW( pX2Game, pNPCUnit )
	if raw.bot_hyper_ok ~= true or raw.bot_hp_rate == nil
		or raw.distance == nil then return false end
	local ok, result = pcall(
		PVP_PRO_AI_V6_AWAKEN_RUNTIME_IMPL,
		pX2Game, pNPCUnit, offensiveRange, aggression )
	if ok ~= true then return false end
	if result == true then
		memory.identity_metrics_v7.defense_choices.awakening =
			( memory.identity_metrics_v7.defense_choices.awakening or 0 ) + 1
		PVP_PRO_AI_V7_RECORD_HISTORY(
			memory.repetition_v7.defenses, "awakening", 16 )
	end
	return result
end

function PVP_PRO_AI_V7_DIAGNOSTIC_SNAPSHOT( pNPCUnit )
	local memory = PVP_PRO_AI_GET( pNPCUnit )
	PVP_PRO_AI_V6_INIT( memory )
	PVP_PRO_AI_V7_INIT( memory )
	return {
		character = memory.competitive_profile_v6.character,
		identity = memory.runtime_profile_v7.identity,
		signals = PVP_PRO_AI_V7_SIGNAL_CONTRACT,
		active_action = memory.action_execution_v7,
		terminal_actions = memory.terminal_actions_v7,
		observations = memory.current_observations_v7,
		failures = memory.failure_stats_v7,
		timing = memory.timing_stats_v7,
		range = memory.range_stats_v7,
		resource = memory.resource_belief_v7,
		occupancy = memory.occupancy_v7,
		identity_metrics = memory.identity_metrics_v7,
		repetition = memory.repetition_v7,
		counterfactual = memory.counterfactual_v7,
		dormant = memory.dormant_v7,
		telemetry_event_count = #memory.telemetry_v6.events,
		route_memory_count = #memory.route_keys_v6,
	}
end

PVP_PRO_AI_V6_PROFILE_APPLE = {
	character = "apple",
	identity = "nasod_conversion_optimizer",
	identity_mode = "conversion_optimizer",
	probe_style = "conversion",
	preferred_min = 160,
	preferred_max = 780,
	vertical_tolerance = 180,
	resource_target = 190,
	reset_threshold = 0.68,
	adaptation_rate = 1.06,
	strategy_hysteresis = 5,
	default_tempo = "measured_neutral",
	strategy_order = {
		"route_reliability_theory",
		"defensive_resource_extraction",
		"nasod_resource_curve",
		"conversion_lead_lock",
		"route_repair_survival",
		"calculated_overdrive",
	},
	strategies = {
		route_reliability_theory = {
			base = 10,
			min_ticks = 52,
			max_ticks = 94,
			v5_goal = "deny",
			tempo = "slow_observation",
			hypothesis = "repetitive_approach",
			hypothesis_weight = 8,
			drivers = {
				uncertainty = 0.48,
				spacing = 0.62,
				vertical = 0.45,
				change = 0.35,
			},
			plans = { "starter_sampling", "air_route_catalog", "route_failure_review" },
		},
		defensive_resource_extraction = {
			base = 11,
			min_ticks = 48,
			max_ticks = 88,
			v5_goal = "outplay",
			tempo = "measured_neutral",
			hypothesis = "panic_escape",
			hypothesis_weight = 11,
			drivers = {
				initiative = 0.62,
				yield = 0.66,
				uncertainty = 0.25,
			},
			plans = { "setplay_pressure", "escape_bead_test", "electron_economy" },
		},
		nasod_resource_curve = {
			base = 10.5,
			min_ticks = 44,
			max_ticks = 82,
			v5_goal = "stabilize",
			tempo = "controlled_reset",
			drivers = {
				resource = 1.28,
				spacing = 0.42,
				survival = 0.2,
			},
			plans = { "electron_economy", "safe_route_repair", "air_route_catalog" },
		},
		conversion_lead_lock = {
			base = 9,
			min_ticks = 58,
			max_ticks = 108,
			v5_goal = "stabilize",
			tempo = "lead_preserving_slowdown",
			drivers = {
				lead = 1.38,
				spacing = 0.48,
				survival = 0.3,
			},
			plans = { "conversion_lead_lock", "starter_sampling", "route_failure_review" },
		},
		route_repair_survival = {
			base = 6,
			min_ticks = 30,
			max_ticks = 62,
			v5_goal = "survive",
			tempo = "controlled_reset",
			drivers = {
				survival = 1.55,
				resource = 0.45,
				spacing = 0.72,
			},
			plans = { "safe_route_repair", "conversion_lead_lock", "route_failure_review" },
		},
		calculated_overdrive = {
			base = 6,
			min_ticks = 28,
			max_ticks = 58,
			v5_goal = "finish",
			tempo = "sudden_burst",
			drivers = {
				lethal = 1.65,
				behind = 0.36,
				initiative = 0.52,
			},
			plans = { "guaranteed_cashout", "corner_conversion", "setplay_pressure" },
		},
	},
	plans = {
		starter_sampling = {
			base = 10,
			min_ticks = 18,
			max_ticks = 34,
			probe = true,
			position = true,
			tempo = "slow_observation",
			roles = { "combo", "combo", "chase" },
			intentions = { "close_hit_confirm", "ranged_hit_confirm" },
		},
		air_route_catalog = {
			base = 9,
			min_ticks = 19,
			max_ticks = 37,
			position = true,
			changeup = true,
			tempo = "measured_neutral",
			roles = { "air_move", "air", "chase" },
			intentions = { "air_route_verify", "guarded_conversion" },
		},
		setplay_pressure = {
			base = 9,
			min_ticks = 17,
			max_ticks = 34,
			pressure = true,
			condition = true,
			tempo = "sustained_pressure",
			roles = { "control", "control", "chase" },
			intentions = { "electron_lock_route", "dash_stop_capture" },
		},
		escape_bead_test = {
			base = 8,
			min_ticks = 16,
			max_ticks = 30,
			probe = true,
			condition = true,
			yield_initiative = true,
			tempo = "measured_neutral",
			roles = { "escape", "poke", "control" },
			intentions = { "route_repair", "resource_cycle" },
		},
		electron_economy = {
			base = 10,
			min_ticks = 19,
			max_ticks = 38,
			resource = true,
			pressure = true,
			tempo = "measured_neutral",
			roles = { "combo", "chase", "control" },
			intentions = { "corner_carry", "stable_cashout" },
		},
		safe_route_repair = {
			base = 10,
			min_ticks = 18,
			max_ticks = 38,
			resource = true,
			reset = true,
			survival = true,
			tempo = "controlled_reset",
			roles = { "air_move", "air", "burst" },
			intentions = { "air_cashout", "expectation_break" },
		},
		conversion_lead_lock = {
			base = 11,
			min_ticks = 21,
			max_ticks = 43,
			reset = true,
			survival = true,
			tempo = "lead_preserving_slowdown",
			roles = { "poke", "control", "chase" },
			intentions = { "ranged_hit_confirm", "route_repair" },
		},
		route_failure_review = {
			base = 7,
			min_ticks = 16,
			max_ticks = 30,
			probe = true,
			changeup = true,
			tempo = "slow_observation",
			roles = { "guard", "combo", "burst" },
			intentions = { "guarded_conversion", "corner_carry" },
		},
		guaranteed_cashout = {
			base = 12,
			min_ticks = 12,
			max_ticks = 25,
			cashout = true,
			pressure = true,
			tempo = "sudden_burst",
			roles = { "advance", "guard", "chase" },
			intentions = { "dash_stop_capture", "air_cashout" },
		},
		corner_conversion = {
			base = 10,
			min_ticks = 13,
			max_ticks = 27,
			cashout = true,
			pressure = true,
			tempo = "sudden_burst",
			roles = { "control", "burst", "control" },
			intentions = { "stable_cashout", "expectation_break" },
		},
	},
	intentions = {
		close_hit_confirm = {
			base = 8,
			min_ticks = 6,
			max_ticks = 12,
			risk = 0.34,
			roles = { "combo", "combo", "chase" },
			actions = { "electron_combo_close", "nasod_combo", "assault_spear" },
		},
		ranged_hit_confirm = {
			base = 9,
			min_ticks = 7,
			max_ticks = 13,
			risk = 0.27,
			roles = { "poke", "control", "chase" },
			actions = { "electron_combo_range", "electron_ball", "nasod_dash_catch" },
		},
		air_route_verify = {
			base = 10,
			min_ticks = 8,
			max_ticks = 14,
			risk = 0.41,
			roles = { "air_move", "air", "chase" },
			actions = { "nasod_air_entry", "nasod_air_combo", "assault_spear" },
		},
		guarded_conversion = {
			base = 11,
			min_ticks = 6,
			max_ticks = 15,
			risk = 0.49,
			roles = { "guard", "combo", "burst" },
			actions = { "oberon_guard", "nasod_combo", "heavens_fist" },
		},
		electron_lock_route = {
			base = 8,
			min_ticks = 7,
			max_ticks = 12,
			risk = 0.39,
			roles = { "control", "control", "chase" },
			actions = { "electron_ball", "space_wrench", "nasod_dash_catch" },
		},
		dash_stop_capture = {
			base = 9,
			min_ticks = 8,
			max_ticks = 13,
			risk = 0.32,
			conditioning = true,
			roles = { "advance", "guard", "chase" },
			actions = { "nasod_advance", "oberon_guard", "nasod_dash_catch" },
		},
		route_repair = {
			base = 10,
			min_ticks = 6,
			max_ticks = 14,
			risk = 0.22,
			roles = { "escape", "poke", "control" },
			actions = { "nasod_reposition", "electron_combo_range", "space_wrench" },
		},
		resource_cycle = {
			base = 11,
			min_ticks = 7,
			max_ticks = 15,
			risk = 0.19,
			roles = {
				"poke",
				"escape",
				"resource",
				"control",
			},
			actions = {
				"electron_combo_range",
				"nasod_reposition",
				"mp_conversion",
				"electron_ball",
			},
		},
		corner_carry = {
			base = 8,
			min_ticks = 8,
			max_ticks = 12,
			risk = 0.47,
			roles = { "combo", "chase", "control" },
			actions = { "nasod_combo", "assault_spear", "space_wrench" },
		},
		stable_cashout = {
			base = 9,
			min_ticks = 6,
			max_ticks = 13,
			risk = 0.58,
			roles = { "control", "burst", "control" },
			actions = { "electron_ball", "heavens_fist", "space_wrench" },
		},
		air_cashout = {
			base = 10,
			min_ticks = 7,
			max_ticks = 14,
			risk = 0.61,
			roles = { "air_move", "air", "burst" },
			actions = { "nasod_air_entry", "nasod_air_combo", "heavens_fist" },
		},
		expectation_break = {
			base = 11,
			min_ticks = 8,
			max_ticks = 15,
			risk = 0.36,
			conditioning = true,
			roles = { "poke", "advance", "combo" },
			actions = { "electron_combo_range", "nasod_advance", "electron_combo_close" },
		},
	},
	action_traits = {
		assault_spear = {
			role = "chase",
			min_dist = 330,
			max_dist = 1050,
			mp = 0,
			commitment = 0.5,
			reliability = 0.69,
			risk = 0.43,
			knockdown = 0.13,
			conversion = 0.76,
			carry = 0.52,
		},
		oberon_guard = {
			role = "guard",
			min_dist = 0,
			max_dist = 360,
			mp = 80,
			commitment = 0.3,
			reliability = 0.74,
			risk = 0.27,
			knockdown = 0.06,
			conversion = 0.45,
			carry = 0.2,
		},
		electron_ball = {
			role = "control",
			min_dist = 420,
			max_dist = 1250,
			mp = 60,
			commitment = 0.44,
			reliability = 0.74,
			risk = 0.35,
			knockdown = 0.12,
			conversion = 0.62,
			carry = 0.4,
			safe_pressure = true,
		},
		nasod_combo = {
			role = "combo",
			min_dist = 0,
			max_dist = 340,
			mp = 0,
			commitment = 0.56,
			reliability = 0.72,
			risk = 0.45,
			knockdown = 0.14,
			conversion = 0.88,
			carry = 0.55,
			resource_gain = 0.28,
		},
		nasod_reposition = {
			role = "escape",
			min_dist = 0,
			max_dist = 310,
			mp = 0,
			commitment = 0.16,
			reliability = 0.8,
			risk = 0.16,
			knockdown = 0,
			conversion = 0.16,
			carry = 0.1,
		},
		electron_combo_close = {
			role = "combo",
			min_dist = 0,
			max_dist = 580,
			mp = 60,
			commitment = 0.56,
			reliability = 0.72,
			risk = 0.45,
			knockdown = 0.14,
			conversion = 0.88,
			carry = 0.55,
			resource_gain = 0.28,
		},
		electron_combo_range = {
			role = "poke",
			min_dist = 500,
			max_dist = 860,
			mp = 100,
			commitment = 0.2,
			reliability = 0.82,
			risk = 0.17,
			knockdown = 0.05,
			conversion = 0.38,
			carry = 0.2,
			resource_gain = 0.5,
			safe_pressure = true,
		},
		heavens_fist = {
			role = "burst",
			min_dist = 260,
			max_dist = 1260,
			mp = 299,
			commitment = 0.82,
			reliability = 0.66,
			risk = 0.73,
			knockdown = 0.3,
			conversion = 0.94,
			carry = 0.55,
		},
		space_wrench = {
			role = "control",
			min_dist = 220,
			max_dist = 860,
			mp = 200,
			commitment = 0.44,
			reliability = 0.74,
			risk = 0.35,
			knockdown = 0.12,
			conversion = 0.62,
			carry = 0.4,
			safe_pressure = true,
		},
		mp_conversion = {
			role = "resource",
			min_dist = 650,
			max_dist = 1600,
			mp = 0,
			commitment = 0.22,
			reliability = 0.8,
			risk = 0.18,
			knockdown = 0,
			conversion = 0.2,
			carry = 0.1,
			resource_gain = 0.85,
			safe_pressure = true,
		},
		nasod_dash_catch = {
			role = "chase",
			min_dist = 260,
			max_dist = 720,
			mp = 0,
			commitment = 0.5,
			reliability = 0.69,
			risk = 0.43,
			knockdown = 0.13,
			conversion = 0.76,
			carry = 0.52,
		},
		nasod_advance = {
			role = "advance",
			min_dist = 360,
			max_dist = 1600,
			mp = 0,
			commitment = 0.32,
			reliability = 0.78,
			risk = 0.27,
			knockdown = 0,
			conversion = 0.48,
			carry = 0.25,
			resource_gain = 0.15,
		},
		nasod_air_entry = {
			role = "air_move",
			min_dist = 280,
			max_dist = 1120,
			mp = 0,
			commitment = 0.34,
			reliability = 0.7,
			risk = 0.33,
			knockdown = 0,
			conversion = 0.48,
			carry = 0.4,
			vertical = 650,
			vertical_control = true,
		},
		nasod_air_combo = {
			role = "air",
			min_dist = 240,
			max_dist = 820,
			mp = 0,
			commitment = 0.48,
			reliability = 0.68,
			risk = 0.42,
			knockdown = 0.14,
			conversion = 0.7,
			carry = 0.5,
			vertical = 650,
			vertical_control = true,
		},
	},
	probe_order = { "close_confirm_response", "escape_after_orb", "air_route_reaction" },
	probes = {
		close_confirm_response = {
			style = "conversion",
			question = "does_a_safe_close_confirm_draw_a_counter",
			hypothesis = "reactive_counter",
			expected = "counter",
			actions = { "electron_combo_range", "nasod_reposition", "nasod_combo" },
			risk = 0.22,
			information = 0.88,
			cost = 0.2,
			max_repetitions = 2,
			stop_confidence = 0.67,
			duration = 19,
		},
		escape_after_orb = {
			style = "conversion",
			question = "does_orb_pressure_force_an_escape",
			hypothesis = "panic_escape",
			expected = "escape",
			actions = { "electron_ball", "nasod_reposition", "nasod_dash_catch" },
			risk = 0.25,
			information = 0.88,
			cost = 0.2,
			max_repetitions = 2,
			stop_confidence = 0.67,
			duration = 19,
		},
		air_route_reaction = {
			style = "vertical",
			question = "does_the_opponent_jump_against_ground_setplay",
			hypothesis = "movement_heavy",
			expected = "jump",
			actions = { "nasod_air_entry", "nasod_air_combo", "oberon_guard" },
			risk = 0.24,
			information = 0.88,
			cost = 0.2,
			max_repetitions = 2,
			stop_confidence = 0.67,
			duration = 19,
		},
	},
	conditioning_breaks = {
		electron_combo_range = "nasod_advance",
		nasod_combo = "oberon_guard",
		electron_ball = "assault_spear",
		nasod_air_entry = "nasod_reposition",
		nasod_reposition = "space_wrench",
	},
	fallback_intention = "close_hit_confirm",
	error_profile = {
		base = 0.03,
		load_scale = 0.108,
		surprise_scale = 0.05,
		overconfidence_scale = 0.038,
		range_bias = 0.82,
		late_confirm = 1.34,
		familiar_route = 1.28,
		greedy_resource = 0.82,
		stale_read = 0.74,
		overcommit = 0.88,
	},
}
PVP_PRO_AI_V7_PROFILE_APPLE = {
	character = "apple",
	identity = "high_conversion_optimizer_runtime",
	calibration = {
		confirmation_timeout = 10, state_start_timeout = 4,
		strategy_min_commit = 36, strategy_failure_threshold = 2,
		exchange_timeout = 32, range_tolerance = 82,
		surprise_hesitation = 1, probe_confidence = 0.61,
		resource_inference_decay = 0.020, route_drop_penalty = 8,
		repetition_tolerance = 4, defensive_option_confidence = 0.57,
		tempo_transition_min = 6, observation_ttl = 4,
		identity_snapshot_interval = 55, counterfactual_noise = 18,
		max_action_timeout = 19, range_failure_penalty = 7,
	},
	timing_scale = { startup = 0.94, contact = 0.92, recovery = 1.04, movement = 0.96 },
	role_timing = {
		combo = { followup_min = 1, followup_max = 5 },
		burst = { resource_delay_max = 6, callback_gap = true },
	},
	action_timing = {
		heavens_fist = { startup_min = 3, startup_max = 7, contact_min = 4,
			contact_max = 10, recovery_min = 6, recovery_max = 15,
			timeout = 20, timing_confidence = 0.19 },
		nasod_combo = { startup_min = 1, startup_max = 3, contact_min = 1,
			contact_max = 5, recovery_min = 3, recovery_max = 8,
			timeout = 12, timing_confidence = 0.29 },
		electron_combo_range = { startup_min = 2, startup_max = 5,
			contact_min = 2, contact_max = 8, recovery_min = 4,
			recovery_max = 11, timeout = 17, timing_confidence = 0.23 },
	},
	occupancy = { strategy_soft_min = 36, strategy_soft_max = 88,
		plan_soft_min = 14, plan_soft_max = 34,
		preferred_observation_rate = 0.12, preferred_commitment_rate = 0.32 },
	identity_targets = { preferred_range = "mid", observation = "low_to_measured",
		commitment = "confirm_then_convert", retreat = "route_preserving",
		probe = "conversion_test", strategy_persistence = "medium",
		resource_spending = "cashout_biased", combo_extension = "high",
		defensive_patience = "medium", momentum_sensitivity = "medium" },
	range_overrides = {
		electron_combo_range = { min_dist = 260, max_dist = 980 },
		nasod_dash_catch = { min_dist = 120, max_dist = 620 },
		heavens_fist = { min_dist = 0, max_dist = 760 },
	},
	dormant_actions = {},
}

function CF_PVP_BOT_APPLE_AI_TICK(
	pKTDXApp, pX2Game, pNPCUnit )
	PVP_PRO_AI_SET_PROFILE(
		pNPCUnit, PVP_PRO_AI_PROFILE_APPLE )
	PVP_PRO_AI_SET_META_PROFILE(
		pNPCUnit, PVP_PRO_AI_V4_PROFILE_APPLE )
	PVP_PRO_AI_SET_STRATEGIC_PROFILE(
		pNPCUnit, PVP_PRO_AI_V5_PROFILE_APPLE )
	PVP_PRO_AI_SET_COMPETITIVE_PROFILE(
		pNPCUnit, PVP_PRO_AI_V6_PROFILE_APPLE )
	PVP_PRO_AI_SET_RUNTIME_PROFILE(
		pNPCUnit, PVP_PRO_AI_V7_PROFILE_APPLE )
	return PVP_PRO_AI_TICK( pX2Game, pNPCUnit, 1, 3 )
end
