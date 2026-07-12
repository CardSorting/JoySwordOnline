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
	
	HYPER_MODE_COUNT	= 1,
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

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_BOOST_POWER",	"CF_PVP_BOT_APPLE_BOOST_POWER",									},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_APPLE_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP",																},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CT_PVP_BOT_APPLE_BACKWARD_DASH_READY",   	},
		
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
		RATE						= 10,
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
		RATE						= 25,
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

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_APPLE_BOOST_POWER",	"CF_PVP_BOT_APPLE_BOOST_POWER",									},

		-- 걷고 뛰고 올라가고 내려가고 자동 AI
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_APPLE_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_APPLE_JUMP_UP",																},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_APPLE_BACKWARD_DASH_READY",     	"CT_PVP_BOT_APPLE_BACKWARD_DASH_READY",   	},
		
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
		RATE						= 10,
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
		RATE						= 25,
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
		RATE						= 10,
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
		RATE						= 25,
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
		RATE						= 20,
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
		RATE						= 20,
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_APPLE_ComboZZZ",	"CT_PVP_BOT_APPLE_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_APPLE_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_APPLE_WAIT",		},
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_APPLE_WAIT",												},
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
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
function CF_PVP_BOT_APPLE_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if fRemainHPRate < 0.5 then	
	
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