-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ / 2011/5/18 / 근위대장 얼음공주 노아/
	 
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
		"CenterLight_Gray01.dds",
		"SpreadLight02_Gray.dds",
		"Ice_Particle01.dds",
		"Arme_Lightning01.tga",
		"Arme_FireballB1-1_ICE.tga",
		"Arme_FireballB2_ICE.tga",
		"Arme_FireballS1-1_ICE.tga",
		"Arme_FireballS1-2_ICE.tga",
		"Arme_FireballS2_ICE.tga",
	},
	READY_SOUND =
	{
		"Stickslash1.ogg",
		"Sound_Arme_shout2.ogg",
		"Sound_Arme_shout1.ogg",
		"Aisha_Circle_Flame.ogg",
		"Sound_Arme_shout5.ogg",
		"Arme_BlizzardShower.ogg",
		"AishaVoice_BlizzardShower.ogg",
		"Sound_Arme_shout4.ogg",
		"Aisha_BlazeStep.ogg",
		"Lena_SI_SA_GA_Freezing_arrowHit.ogg",
		"AishaVoice_MagicMissile.ogg",
		"Arme_GuideDarkBall2.ogg",		
		"AishaVoice_DamageScream01.ogg",
		"AishaVoice_DamageScream02.ogg",
		"AishaVoice_DamageScream03.ogg",
		"AishaVoice_DamageScream04.ogg",
		"AISHAVoice_DieScream1.ogg",
	},
	READY_XMESH = 
	{
		"Wind_Liner02.Y",
		"Lightning02.Y",
	},
	READY_XSKIN_MESH = 
	{	
		"Arme_SI_A_AV_Circle_Flame_4_CMesh01.X",
		"Arme_SI_A_AV_Circle_Flame_4_CMesh02.X",
		"Arme_SI_A_AV_Circle_Flame_4_CMesh03.X",
		"Arme_SI_A_AV_Circle_Flame_4_CMesh04.X",
		"FrozenMissile01.X",
		"Arme_SI_SA_BlizzardShower_Spin_Mesh01.X",
		"Arme_EM_Combo_XZZ_Mesh01.X",
		"Wind_Liner03.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_PVP_HERO_NOA.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -2000,
	
	--모든 기본 이/점속이 10% 향상되어 있습니다.
	WALK_SPEED			= 500*1.1,
	RUN_SPEED			= 700*1.1,
	JUMP_SPEED			= 1500*1.1,
	DASH_JUMP_SPEED		= 2300*1.1,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	-- 최대MP가 400이고 초당 MP가 11씩 회복됩니다.
	MP_CHANGE_RATE		= 11,
	MP_CHARGE_RATE		= 400,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = FALSE,

	
	-- 기본 속도가 22% 증가로 유저보다 조금 빠릅니다.
	DEFAULT_ANIM_SPEED = 1.22,
	
	HYPER_MODE_COUNT	= 1,
	MAX_HYPER_MODE_TIME	= 60,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

    --MIND_FLAG_HEIGHT		= 230,

	HYPER_BOOST_RIGHT	= "HyperBoostRightViolet",
	HYPER_BOOST_LEFT	= "HyperBoostLeftViolet",
	HYPER_MODE_COLOR_R = 0.7,
	HYPER_MODE_COLOR_G = 0.2,
	HYPER_MODE_COLOR_B = 0.6,
	HYPER_MODE_COLOR_A = 1.0,
	
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DIE_FLY			= FALSE,
	
	FORCE_DOWN_GAGE_MAX = 100,
	-- NOT_EXTRA_DAMAGE	= TRUE,
	
	AFTER_IMAGE_LAYER = X2_LAYER["XL_SKY_WORLD_OBJECT_2"],
	
	AFTER_IMAGE_COLOR_R = 0.5, 
	AFTER_IMAGE_COLOR_G = 0.5, 
	AFTER_IMAGE_COLOR_B = 0.5,
	AFTER_IMAGE_COLOR_A = 0.5,
	
	AFTER_IMAGE_DEST_ALPHA_BLEND = TRUE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Arme_Event_Weapon08_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Arme_AC_Upbody_132208_Sorted.X",
		WEAPON_BONE_NAME			= "Bip01_Spine",
	},
	
	
	-- pvp_bot : y 악세서리 추가
	ATTACH_MESH0 =
	{
		ATTACH_MESH_NAME = "Mesh_Arme_AC_FACE1_132090_Sorted.Y",
		ATTACH_BONE_NAME = "Bip01_Head",
		-- ATTACH_SCALE  = 2.0,
		-- ATTACH_OFFSET_X = -50.0,    
		-- ATTACH_ROTATE_X = 90.0,    
	},
	ATTACH_MESH1 =
	{
		ATTACH_MESH_NAME = "MESH_PVP_HERO_NOA_AC.Y",
		ATTACH_BONE_NAME = "Bip01_L_Forearm",
		-- ATTACH_SCALE  = 2.0,
		-- ATTACH_OFFSET_X = -50.0,    
		-- ATTACH_ROTATE_X = 90.0,    
	},
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 노아는 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_NOA_START",							LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_START_FRAME_MOVE"					},
	
	-- 승리모션입니다. 노아는 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_NOA_WIN",							},
    { STATE_NAME = "PVP_BOT_NOA_WIN2",							},
	
	-- 승리모션입니다. 노아는 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_NOA_LOSE",							},
    { STATE_NAME = "PVP_BOT_NOA_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_NOA_WAIT",							},
	
	-- 심심하면 잠깐씩 엠을 모읍니다.
	{ STATE_NAME = "PVP_BOT_NOA_CHARGE_MANA",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_CHARGE_MANA_FRAME_MOVE",				},
	
	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_NOA_WALK",							},
    { STATE_NAME = "PVP_BOT_NOA_DASH",							},
    --{ STATE_NAME = "PVP_BOT_NOA_BACKWARD_MOVE_READY",			},
    --{ STATE_NAME = "PVP_BOT_NOA_BACKWARD_MOVE",				},
    --{ STATE_NAME = "PVP_BOT_NOA_BACKWARD_MOVE_FINISH_READY",	},
    --{ STATE_NAME = "PVP_BOT_NOA_BACKWARD_MOVE_FINISH",		},
    { STATE_NAME = "PVP_BOT_NOA_BACKWARD_DASH_READY",			},
    { STATE_NAME = "PVP_BOT_NOA_BACKWARD_DASH",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DASH_STATE_END",						},
    { STATE_NAME = "PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_NOA_BACKWARD_DASH_FINISH",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DASH_STATE_END",					},
    { STATE_NAME = "PVP_BOT_NOA_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지, 2단 점프) 입니다.
	{ STATE_NAME = "PVP_BOT_NOA_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_NOA_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_NOA_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_NOA_JUMP_DOWN_ACT",						LUA_STATE_END_FUNC = "PVP_BOT_NOA_JUMP_DOWN_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_NOA_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_NOA_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_NOA_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_NOA_JUMP_LANDING",					},
	
	-- xxx 콤보
	{ STATE_NAME = "PVP_BOT_NOA_ComboX",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboX_FRAME_MOVE",					},
	{ STATE_NAME = "PVP_BOT_NOA_ComboXX",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboXX_FRAME_MOVE"					},
	{ STATE_NAME = "PVP_BOT_NOA_ComboXXX",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboXXX_FRAME_MOVE"					},
	{ STATE_NAME = "PVP_BOT_NOA_ComboXXbackX",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboXXbackX_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_NOA_ComboXZ",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboXZ_FRAME_MOVE"					},
	{ STATE_NAME = "PVP_BOT_NOA_ComboXZZ",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboXZZ_FRAME_MOVE"					},
	
	-- 대시점프 X
	{ STATE_NAME = "PVP_BOT_NOA_DashJump",						LUA_STATE_END_FUNC = "PVP_BOT_NOA_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_NOA_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_NOA_DashJumpComboX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DashJumpComboX_FRAME_MOVE",			},
	{ STATE_NAME = "PVP_BOT_NOA_DashJumpComboXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DashJumpComboXX_FRAME_MOVE",			},

	-- 대시 x 공격
	{ STATE_NAME = "PVP_BOT_NOA_BACKWARD_DashX",				},
	{ STATE_NAME = "PVP_BOT_NOA_BACKWARD_DashX_02",				},
	{ STATE_NAME = "PVP_BOT_NOA_DashX",							LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DashX_FRAME_MOVE",					},
	{ STATE_NAME = "PVP_BOT_NOA_DashXX",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ComboXXX_FRAME_MOVE"					},
	
	-- 대시 zz 콤보 (z에서 zz으로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_NOA_DashComboZ",					},
	{ STATE_NAME = "PVP_BOT_NOA_DashComboZZ",					},
	
	-- 점프 z 공격 (위협적이기 보다는 뜬금없이 시행합니다.)
	{ STATE_NAME = "PVP_BOT_NOA_JumpZ",							},
		
	-- 점프 x 공격 (xxx하다가 뒤로 밀려 떨어질 때 주로 시행합니다.)
	{ STATE_NAME = "PVP_BOT_NOA_JumpX",							LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_JumpX_FRAME_MOVE",				STATE_COOL_TIME = 3,			},
		
	-- 메모 서클 플레임을 시전합니다.
	{ STATE_NAME = "PVP_BOT_NOA_CIRCLE_FLAME",					STATE_COOL_TIME = 6,				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_CIRCLE_FLAME_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_NOA_CIRCLE_FLAME_FIRE",				},
	
	-- 텔레포트를 시전합니다.
	{ STATE_NAME = "PVP_BOT_NOA_TELEPORT_READY",				STATE_COOL_TIME = 2,				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_TELEPORT_READY_FRAME_MOVE"	},
	{ STATE_NAME = "PVP_BOT_NOA_TELEPORT_FINISH",				LUA_STATE_START_FUNC = "PVP_BOT_NOA_TELEPORT_FINISH_STATE_START"									},
	
	-- 아이스버그(빙산)를 시전합니다.
	{ STATE_NAME = "PVP_BOT_NOA_ICEBERG",						STATE_COOL_TIME = 6,				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_ICEBERG_FRAME_MOVE"			},
	
	-- 바인딩 서클!
	--{ STATE_NAME = "PVP_BOT_NOA_BINDING_CIRCLE",				STATE_COOL_TIME = 5, 				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_BINDING_CIRCLE_FRAME_MOVE"	},
	
	-- 블리자드 샤워!
	{ STATE_NAME = "PVP_BOT_NOA_BLIZZARD_SHOWER",				STATE_COOL_TIME = 10,				
																LUA_STATE_START_FUNC    = "PVP_BOT_NOA_BLIZZARD_SHOWER_FRAME_START",
																LUA_FRAME_MOVE_FUNC		= "PVP_BOT_NOA_BLIZZARD_SHOWER_FRAME_MOVE"									},
	
	-- 프로즌 스텝!
	{ STATE_NAME = "PVP_BOT_NOA_FROZEN_STEP",					STATE_COOL_TIME = 30,				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_FROZEN_STEP_FRAME_MOVE"		},
	
	-- 매직 미사일!
	{ STATE_NAME = "PVP_BOT_NOA_MAGIC_MISSILE",					STATE_COOL_TIME = 10,				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_MAGIC_MISSILE_FRAME_MOVE"	},
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_NOA_BOOST_POWER",					STATE_COOL_TIME = 5,				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_BOOST_POWER_FRAME_MOVE"		},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_NOA_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_NOA_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_NOA_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_NOA_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_NOA_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_NOA_DAMAGE_REVENGE",				},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_NOA_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_NOA_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_NOA_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_NOA_DYING_LAND_STATE_START",			},

	-- 마나 브레이크(기폭) 테스트 입니다.
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 				},
	{ STATE_NAME = "PVP_BOT_EPIK_MANA_BREAK_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_EPIK_MANA_BREAK_FRAME_MOVE" 				},

	{ STATE_NAME = "PVP_BOT_NOA_DashJump_Down", },

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_NOA_START",
	WAIT_STATE					= "PVP_BOT_NOA_WAIT",
	WIN_STATE					= "PVP_BOT_NOA_WIN",
	LOSE_STATE					= "PVP_BOT_NOA_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_NOA_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_NOA_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_NOA_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_NOA_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_NOA_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_NOA_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_NOA_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_NOA_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_NOA_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_NOA_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_NOA_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_NOA_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_NOA_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "PVP_BOT_NOA_DAMAGE_AIR_DOWN","PVP_BOT_NOA_DAMAGE_AIR_FALL","PVP_BOT_NOA_STAND_UP_FRONT","PVP_BOT_NOA_STAND_UP_BACK",
		"PVP_BOT_NOA_JUMP_DOWN","PVP_BOT_NOA_JUMP_LANDING",	},	

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_NOA_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_NOA_DYING_BACK",
	DYING_SKY					= "PVP_BOT_NOA_DYING_FRONT",

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
PVP_BOT_NOA_WIN =
{
	ANIM_NAME					= "EM_Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
		
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,


	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12399 },
		{ RATE = 30, MESSAGE = STR_ID_12400 },
		{ RATE = 30, MESSAGE = STR_ID_12401 },
	},

		
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_AEM_Win", 0, 
	},	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_NOA_WIN2 =
{
	ANIM_NAME					= "EM_Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
		

	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12399 },
		{ RATE = 30, MESSAGE = STR_ID_12400 },
		{ RATE = 30, MESSAGE = STR_ID_12401 },
	},

	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,


	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_NOA_LOSE =
{
	ANIM_NAME					= "EM_Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12402 },
		{ RATE = 30, MESSAGE = STR_ID_12403 },
		{ RATE = 30, MESSAGE = STR_ID_12404 },
	},

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_NOA_LOSE2 =
{
	ANIM_NAME					= "EM_Lose2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12402 },
		{ RATE = 30, MESSAGE = STR_ID_12403 },
		{ RATE = 30, MESSAGE = STR_ID_12404 },
	},

	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_NOA_START =
{
	ANIM_NAME					= "EM_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_AEM_Start", 0, 
	},	

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_WAIT",		"CT_PVP_BOT_NOA_WAIT"	},
	},
	CT_PVP_BOT_NOA_WAIT =
	{
		STATE_TIME_OVER	= 4.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	DEFENCE						= { 0, 100, 50, }, 
	
	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_NOA_BOOST_POWER",	"CF_PVP_BOT_NOA_BOOST_POWER",									},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_NOA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_NOA_TELEPORT_READY",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_NOA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_NOA_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_NOA_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_TELEPORT_READY",     			"CT_PVP_BOT_NOA_TELEPORT_READY",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_TELEPORT_READY",     			"CT_PVP_BOT_NOA_TELEPORT_READY2",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BLIZZARD_SHOWER",     			"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_MAGIC_MISSILE",     			"CT_PVP_BOT_NOA_MAGIC_MISSILE",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_MAGIC_MISSILE",     			"CT_PVP_BOT_NOA_MAGIC_MISSILE2",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_FROZEN_STEP",     			"CT_PVP_BOT_NOA_FROZEN_STEP",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_CIRCLE_FLAME",     			"CT_PVP_BOT_NOA_CIRCLE_FLAME",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DashX",     			"CT_PVP_BOT_NOA_BACKWARD_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashX",     			"CT_PVP_BOT_NOA_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashComboZ",     			"CT_PVP_BOT_NOA_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_ComboX",     				"CT_PVP_BOT_NOA_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WALK",         				"CT_PVP_BOT_NOA_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DASH",         				"CT_PVP_BOT_NOA_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashJump",          			"CT_PVP_BOT_NOA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_ICEBERG",          		"CT_PVP_BOT_NOA_ICEBERG",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_CHARGE_MANA",          		"CT_PVP_BOT_NOA_CHARGE_MANA",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_CHARGE_MANA",          		"CT_PVP_BOT_NOA_CHARGE_MANA2",      		},

		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_NOA_BACKWARD_DASH_READY",   },
		
	},

	
	-- 도망가도 소용없다 -_-

	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1200,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 33,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 7,
	},
	CT_PVP_BOT_NOA_FROZEN_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 750,	
		MY_MP_MORE_THAN				= 299,
		RATE						= 50,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_NOA_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_NOA_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 15,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	
	CT_PVP_BOT_NOA_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 50,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_NOA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
		
	CT_PVP_BOT_NOA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 30,
	},
	
	CT_PVP_BOT_NOA_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 5,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
		
	CT_PVP_BOT_NOA_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},
		
	CT_PVP_BOT_NOA_ICEBERG =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 50,
		-- RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},		
	
	CT_PVP_BOT_NOA_CHARGE_MANA2 =
	{
		-- ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_NOA_CHARGE_MANA =
	{
		-- ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1500,
		RATE						= 100,
	},

}
--------------------------------------------------------------------------
PVP_BOT_NOA_WALK =
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_NOA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_NOA_TELEPORT_READY",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_NOA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_NOA_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_NOA_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_TELEPORT_READY",     			"CT_PVP_BOT_NOA_TELEPORT_READY",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_TELEPORT_READY",     			"CT_PVP_BOT_NOA_TELEPORT_READY2",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BLIZZARD_SHOWER",     			"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_MAGIC_MISSILE",     			"CT_PVP_BOT_NOA_MAGIC_MISSILE",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_MAGIC_MISSILE",     			"CT_PVP_BOT_NOA_MAGIC_MISSILE2",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_FROZEN_STEP",     			"CT_PVP_BOT_NOA_FROZEN_STEP",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_CIRCLE_FLAME",     			"CT_PVP_BOT_NOA_CIRCLE_FLAME",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DashX",     				"CT_PVP_BOT_NOA_BACKWARD_DashX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_ComboX",     				"CT_PVP_BOT_NOA_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_NOA_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DASH",         			"CT_PVP_BOT_NOA_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashJump",          		"CT_PVP_BOT_NOA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_ICEBERG",          		"CT_PVP_BOT_NOA_ICEBERG",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_NOA_BACKWARD_DASH_READY",   },
		
	},
	
	
	-- 맞지 말아라!
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR		= 700,	
		RATE						= 30,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1200,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 33,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 7,
	},
	CT_PVP_BOT_NOA_FROZEN_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 750,	
		MY_MP_MORE_THAN				= 299,
		RATE						= 10,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 100,
	},
	
	CT_PVP_BOT_NOA_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_NOA_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 50,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_NOA_ICEBERG =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 50,
		-- RATE						= 20,
		SAME_LINE_WITH_TARGET		= TRUE,
	},		
					
	CT_PVP_BOT_NOA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_NOA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 20,
	},
	
	CT_PVP_BOT_NOA_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 33,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_NOA_DASH =
{
	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1,

	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,


	-- 0.1초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.1,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",													},

		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DASH_END",          		"CT_PVP_BOT_NOA_DASH_END",      		},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_NOA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_NOA_TELEPORT_READY",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_NOA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_NOA_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_NOA_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_TELEPORT_READY",     			"CT_PVP_BOT_NOA_TELEPORT_READY",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BLIZZARD_SHOWER",     			"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_MAGIC_MISSILE",     			"CT_PVP_BOT_NOA_MAGIC_MISSILE",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_MAGIC_MISSILE",     			"CT_PVP_BOT_NOA_MAGIC_MISSILE2",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_FROZEN_STEP",     			"CT_PVP_BOT_NOA_FROZEN_STEP",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_CIRCLE_FLAME",     			"CT_PVP_BOT_NOA_CIRCLE_FLAME",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DashX",     			"CT_PVP_BOT_NOA_BACKWARD_DashX",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashComboZ",     			"CT_PVP_BOT_NOA_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashJump",          		"CT_PVP_BOT_NOA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashJump",          		"CT_PVP_BOT_NOA_DashJump2",      		},
		

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_NOA_BACKWARD_DASH_READY",   },
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1200,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 33,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 7,
	},
	CT_PVP_BOT_NOA_FROZEN_STEP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 750,	
		MY_MP_MORE_THAN				= 299,
		RATE						= 10,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
	
	CT_PVP_BOT_NOA_BACKWARD_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 30,
	},
	
	CT_PVP_BOT_NOA_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
			
	CT_PVP_BOT_NOA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	
	CT_PVP_BOT_NOA_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
		
	CT_PVP_BOT_NOA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_NOA_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 80,
		SAME_LINE_WITH_TARGET		= TRUE,
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
PVP_BOT_NOA_BACKWARD_DASH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BACKWARD_DASH",	"CT_PVP_BOT_NOA_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_NOA_BACKWARD_DASH = 
{

	ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	ANIM_SPEED					= 1,

	DEFENCE						= { 0, 100, 50, }, 
	
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",													},

		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_NOA_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_NOA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_NOA_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_NOA_JUMP_DOWN_DIR",														},
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY5",       	     	},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DashJump",          		"CT_PVP_BOT_NOA_DashJump",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
				
	CT_PVP_BOT_NOA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
		
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY =
	{
		DISTANCE_TO_TARGET_NEAR		= 300,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY2 =
	{
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 15,
	},
	CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY3 =
	{
		DISTANCE_TO_TARGET_NEAR		= 700,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY4 =
	{
		DISTANCE_TO_TARGET_NEAR		= 900,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY5 =
	{
		DISTANCE_OVER_TARGET_NEAR	= 1000,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
	

}

PVP_BOT_NOA_BACKWARD_DASH_FINISH_READY = 
{

	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_NOA_DashJump",	"CF_PVP_BOT_CHECK_BACK_ESCAPE",									},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BACKWARD_DASH_FINISH",	"CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_NOA_BACKWARD_DASH_FINISH = 
{

	ANIM_NAME			= "Walk",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	VIEW_TARGET     = TRUE, 
	
	ALLOW_DIR_CHANGE			= TRUE,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_NOA_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_NOA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_NOA_JUMP_DOWN_ACT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_NOA_JUMP_DOWN_DIR",														},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",     "CT_PVP_BOT_NOA_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",     "CT_PVP_BOT_NOA_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DASH",     "CT_PVP_BOT_NOA_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_NOA_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_NOA_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_NOA_DASH =
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
PVP_BOT_NOA_DASH_END =
{
	ANIM_NAME			= "DashEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",			},
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
PVP_BOT_NOA_JUMP_UP =
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	SPEED_X			= 300,
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],

	ADD_POS_Y		= 45,


	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BLIZZARD_SHOWER",	"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_CIRCLE_FLAME",	"CT_PVP_BOT_NOA_CIRCLE_FLAME",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpZ",          	"CT_PVP_BOT_NOA_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",		},
	},
	
	CT_PVP_BOT_NOA_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	CT_PVP_BOT_NOA_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 5,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 5,
	},
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
}

PVP_BOT_NOA_JUMP_DOWN =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_JUMP_LANDING",	},
	},
}
PVP_BOT_NOA_JUMP_DOWN_ACT =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_NOA_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_NOA_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_JUMP_UP_DIR =
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BLIZZARD_SHOWER",	"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_CIRCLE_FLAME",	"CT_PVP_BOT_NOA_CIRCLE_FLAME",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpZ",          	"CT_PVP_BOT_NOA_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpX",          	"CT_PVP_BOT_NOA_JumpX3",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_NOA_JUMP_DOWN_DIR",		},
	},
	
	CT_PVP_BOT_NOA_JumpZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	CT_PVP_BOT_NOA_JumpX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 350,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_JumpX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 10,
	},
	-- CT_PVP_BOT_NOA_JumpX2 =
	CT_PVP_BOT_NOA_JumpX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 5,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 5,
	},
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_JUMP_DOWN_DIR =
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	IMMADIATE_PACKET_SEND		= TRUE,
	
	HEAD_IK = TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JumpZ",          	"CT_PVP_BOT_NOA_JumpZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_NOA_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_JUMP_LANDING =
{
	ANIM_NAME			= "JumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_NOA_JUMP_UP",          	"CT_PVP_BOT_NOA_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	CT_PVP_BOT_NOA_JUMP_UP =
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

PVP_BOT_NOA_DashJump = 
{
	ANIM_NAME					= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ADD_POS_Y		= 45,
	PASSIVE_SPEED_X = INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y = INIT_PHYSIC["DASH_JUMP_SPEED"]*0.6,
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	
	-- 0.05초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BLIZZARD_SHOWER",	"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_CIRCLE_FLAME",	"CT_PVP_BOT_NOA_CIRCLE_FLAME",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX6",	},
	
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PVP_BOT_NOA_DashJump_Down",		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_NOA_DashJump_landing",											},
	},
	
	CT_PVP_BOT_NOA_DashJumpComboX1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 75,
	},
	CT_PVP_BOT_NOA_DashJumpComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_PVP_BOT_NOA_DashJumpComboX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_DashJumpComboX4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_NOA_DashJumpComboX5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_DashJumpComboX6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 5,
	},
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 20,
	},
}

PVP_BOT_NOA_DashJump_Down = 
{
	ANIM_NAME					= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	--SPEED_TIME0 = { INIT_PHYSIC["RUN_SPEED"] * 5, INIT_PHYSIC["JUMP_SPEED"]*5, 0.033, 1, },
	
	
	-- 0.01초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.05,


	EVENT_PROCESS =
	{
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BLIZZARD_SHOWER",	"CT_PVP_BOT_NOA_BLIZZARD_SHOWER",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_CIRCLE_FLAME",	"CT_PVP_BOT_NOA_CIRCLE_FLAME",	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJump_landing",	"CT_PVP_BOT_NOA_DashJump_landing",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboX",	"CT_PVP_BOT_NOA_DashJumpComboX6",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_NOA_DashJump_landing",											},
	},
	
	CT_PVP_BOT_NOA_DashJumpComboX2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 50,
	},
	CT_PVP_BOT_NOA_DashJumpComboX3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_DashJumpComboX4 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_NOA_DashJumpComboX5 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_DashJumpComboX6 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 12,
	},
	CT_PVP_BOT_NOA_DashJump_landing =
	{
		FOOT_ON_LINE				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_NOA_BLIZZARD_SHOWER =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		MY_MP_MORE_THAN				= 229,
		RATE						= 5,
	},
	CT_PVP_BOT_NOA_CIRCLE_FLAME =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 10,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_NOA_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	DEFENCE						= { 0, 100, 50, }, 
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_WAIT",         			"CT_PVP_BOT_TURN_WAIT_POSITION2",       		    },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",											},
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

-- 마나를 채웁니다.
PVP_BOT_NOA_CHARGE_MANA =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ChargeSoul",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	CAN_PUSH_UNIT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_CHARGE_MANA", 0.001,
	},		
	
	-- 0.5초 간격으로 다음에 할 행동을 결정합니다. 
	EVENT_INTERVAL_TIME0	= 0.5,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_WAIT",	"CT_PVP_BOT_NOA_WAIT",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_WAIT",	"CT_PVP_BOT_NOA_WAIT2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_WAIT",	"CT_PVP_BOT_NOA_WAIT3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_WAIT",	"CT_PVP_BOT_NOA_WAIT4",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_WAIT",	"CT_PVP_BOT_NOA_WAIT5",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_MAGIC_MISSILE",	"CT_PVP_BOT_NOA_MAGIC_MISSILE",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_CHARGE_MANA",		},
	},
	CT_PVP_BOT_NOA_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 70,
	},
	CT_PVP_BOT_NOA_WAIT2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 55,
	},
	CT_PVP_BOT_NOA_WAIT3 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,
		RATE						= 40,
	},
	CT_PVP_BOT_NOA_WAIT4 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1100,
		RATE						= 25,
	},
	CT_PVP_BOT_NOA_WAIT5 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 10,
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 50,
	},
	CT_PVP_BOT_NOA_MAGIC_MISSILE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 1200,	
		MY_MP_MORE_THAN				= 199,
		RATE						= 33,
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

-- 대시점프 X 입니다.

PVP_BOT_NOA_DashJumpComboX = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 500.0,
	SPEED_Y				= 800,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashJumpComboXX",	"CT_PVP_BOT_NOA_DashJumpComboXX",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"PVP_BOT_NOA_DashJumpComboXX",											},
	},
	CT_PVP_BOT_NOA_DashJumpComboXX =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}
PVP_BOT_NOA_DashJumpComboXX = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "DashJumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 500.0,
	SPEED_Y				= 800,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],				"PVP_BOT_NOA_JUMP_LANDING",		},
	},
	
}


-- 뒤로 도망갑니다.
PVP_BOT_NOA_BACKWARD_DashX = 
{

	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	VIEW_TARGET     = TRUE, 
	ALLOW_DIR_CHANGE			= TRUE,
		
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_BACKWARD_DashX_02",	"CT_PVP_BOT_NOA_BACKWARD_DashX_02",	},
	},
	
	CT_PVP_BOT_NOA_BACKWARD_DashX_02 =
	{
		ANIM_EVENT_TIMER			= 0.001,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_NOA_BACKWARD_DashX_02 = 
{

	ANIM_NAME			= "ChargeSoul",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
		
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashX",	"CT_PVP_BOT_NOA_DashX",	},
	},
	
	CT_PVP_BOT_NOA_DashX =
	{
		ANIM_EVENT_TIMER			= 0.04,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

-- zzz 콤보 입니다. (노아는 z커맨드를 사용하지 않습니다. 파이어볼만 죽어라 쏴댑니다.)
-- PVP_BOT_NOA_ComboZ = 
-- {
	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- ANIM_NAME			= "ComboZ1",
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION			= FALSE,
	
	-- LAND_CONNECT		= TRUE,
	
	-- SPEED_X				= 0,
	-- SPEED_Y				= 0,
	
	-- SLASH_TRACE			= { 0, 100, },
	-- ATTACK_TIME0		= { 0.15, 0.2, },
	
	-- SOUND_PLAY0			= { 0.15, "Stickslash1.ogg" },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		-- REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 0.9,
		-- },
		
		-- BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		-- BACK_SPEED_Y			= 0.0,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,
		-- CLEAR_SCREEN			= 0,	
		
		-- STOP_TIME_DEF			= 0.03,
		
		-- FORCE_DOWN			= 7,
		-- TECH_POINT				= 18,
	-- },
	
	-- EVENT_PROCESS =
	-- {
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboZZ",	"CT_PVP_BOT_NOA_ComboZZ",	},
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboZZ",	"CT_PVP_BOT_NOA_ComboZZ2",	},
	
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	-- },
	
	-- CT_PVP_BOT_NOA_ComboZZ =
	-- {
		-- ANIM_EVENT_TIMER			= 0.33,
		-- ATTACK_SUCCESS				= TRUE, 
		-- EVENT_INTERVAL_ID			= 0,
		-- RATE						= 100,
	-- },
	-- CT_PVP_BOT_NOA_ComboZZ2 =
	-- {
		-- ANIM_EVENT_TIMER			= 0.34,
		-- ATTACK_SUCCESS				= FALSE, 
		-- EVENT_INTERVAL_ID			= 0,
		-- RATE						= 90,
	-- },
-- }

-- PVP_BOT_NOA_ComboZZ =
-- {

	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- ANIM_NAME			= "ComboZ2",
	-- ANIM_SPEED			= 1.2,
	-- PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION			= FALSE,
	
	-- LAND_CONNECT		= TRUE,
	
	-- SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 1.5,
	-- SPEED_Y				= 0,
	
	-- SLASH_TRACE			= { 0, 100, },
	-- ATTACK_TIME0		= { 0.3, 0.4, },
	
	-- SOUND_PLAY0			= { 0.3, "Stickslash1.ogg" },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		-- REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		-- DAMAGE = 
		-- {
			-- PHYSIC		= 1.2,
		-- },
		
		-- BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		-- BACK_SPEED_Y			= 0.0,
		
		-- STOP_TIME_DEF			= 0.05,
		
		-- CAMERA_CRASH_GAP		= 10.0,	
		-- CAMERA_CRASH_TIME		= 0.2,
		-- CLEAR_SCREEN			= 0,	
		
		
		-- FORCE_DOWN			= 7,
		-- TECH_POINT				= 24,
	-- },
	
	-- EVENT_PROCESS =
	-- {
        -- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboZZZ",	"CT_PVP_BOT_NOA_ComboZZZ",	},
	
		-- { STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	-- },
	
	-- CT_PVP_BOT_NOA_ComboZZZ =
	-- {
		-- ANIM_EVENT_TIMER			= 0.456,
		-- EVENT_INTERVAL_ID			= 0,
		-- RATE						= 100,
	-- },
-- }

-- xxx 콤보입니다.
PVP_BOT_NOA_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	VIEW_TARGET     = TRUE, 
		
	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED			= 1.4,
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 100,
	SPEED_Y				= 0,
	
	SLASH_TRACE			= { 0, 100, },
	
	SOUND_PLAY0			= { 0.25, "Stickslash1.ogg" },

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboXZ",	"CT_PVP_BOT_NOA_ComboXZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboXX",	"CT_PVP_BOT_NOA_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	
	CT_PVP_BOT_NOA_ComboXZ =
	{
		ANIM_EVENT_TIMER			= 0.4,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	CT_PVP_BOT_NOA_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_NOA_ComboXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED			= 1.4,
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y				= 0,
	
	SLASH_TRACE			= { 0, 100, },	
	
	SOUND_PLAY0			= { 0.48, "Stickslash1.ogg" },
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboXXbackX",	"CT_PVP_BOT_NOA_ComboXXbackX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboXXX",	"CT_PVP_BOT_NOA_ComboXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_ComboXXbackX =
	{
		ANIM_EVENT_TIMER			= 0.6,		
		DISTANCE_TO_TARGET_NEAR		= 400,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_NOA_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.6,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_NOA_ComboXXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	SPEED_X				= 0,
	SPEED_Y				= 0,
	
	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	
}

PVP_BOT_NOA_ComboXXbackX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	LAND_CONNECT		= FALSE,
	
	AFTER_IMAGE			= { 0, 100, },
	INVINCIBLE			= { 0, 0.35, },
	
	CAN_PASS_UNIT		= TRUE,
	CAN_PUSH_UNIT		= FALSE,
	
	SPEED_X				= 1200,
	
	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	
}
PVP_BOT_NOA_ComboXZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "EM_Combo_Xz",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y				= 0,
	
	SLASH_TRACE			= { 0, 100, },	
	
	NORMAL_CAMERA0_RATE			= 95,
	NORMAL_CAMERA1_RATE			= 5,
	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_Elemental_Master_XZ", 0.25,
	},		
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_ComboXZZ",	"CT_PVP_BOT_NOA_ComboXZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_ComboXZZ =
	{
		ANIM_EVENT_TIMER			= 0.8,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_NOA_ComboXZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "EM_Combo_Xzz",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 0,
	SPEED_Y				= 0,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_Elemental_Master_XZZ", 0,
	},		
	
	
	SLASH_TRACE			= { 0, 100, },	
	
	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	
}
	
--점프z 공격입니다.
PVP_BOT_NOA_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.13, 100, },
	
	SOUND_PLAY0			= { 0.1, "Stickslash1.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
					
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 15,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		
		STOP_TIME_DEF			= 0.05,
		
		--TECH_POINT				= 40,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_JUMP_LANDING",	},
	},
}

-- 점프x 공격입니다.
PVP_BOT_NOA_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	VIEW_TARGET     = TRUE, 
		
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SPEED_X = -500,
	SPEED_Y = 700,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 0.01,
	SPEED_Y				= 0.01,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_JUMP_LANDING",	},
	},
}

-- 대시X 공격입니다.
PVP_BOT_NOA_DashX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	FLIP_DIR_END				= TRUE,
	
 	CAN_PASS_UNIT		= TRUE,
	CAN_PUSH_UNIT		= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashXX",	"CT_PVP_BOT_NOA_DashXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_DashXX =
	{
		ANIM_EVENT_TIMER			= 0.35,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_NOA_DashXX = 
{
	ANIM_NAME			= "ComboX3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= -700,
	SPEED_Y				= 0,
		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
}


-- 대시ZZ 공격입니다.
PVP_BOT_NOA_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0.13, 0.54, },
	ATTACK_TIME0		= { 0.13, 0.2, },
	
	DEFENCE						= { 0, 100, 50, }, 
	
	SOUND_PLAY0			= { 0.05, "Stickslash1.ogg" },		--
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X	= 580,
		
		STOP_TIME_DEF			= 0.1,
		
		FORCE_DOWN        = 7,
		
		TECH_POINT				= 112,			
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_DashComboZZ",	"CT_PVP_BOT_NOA_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.4,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
		
}

PVP_BOT_NOA_DashComboZZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "DashComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 0.27, },
	ATTACK_TIME0		= { 0.1, 0.16, },
	
	
	SOUND_PLAY0			= { 0.01, "Stickslash1.ogg" },		--
	SOUND_PLAY1			= { 0.067, "Sound_Arme_shout1.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.2,
		},
		
        CRITICAL_RATE			= 0.33,
		
		FORCE_DOWN			= 7,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.3,
					
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,	
		
		
		TECH_POINT				= 220,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
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

-- 텔레포트를 시전합니다.
PVP_BOT_NOA_TELEPORT_READY = 
{
	ANIM_NAME			= "EvasionStart",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	DEFENCE						= { 0, 100, 50, }, 
	
	INVINCIBLE = { -1, -1, 0.5, 0.5 },
	
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	CAN_PASS_UNIT		= TRUE,
	
	SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,	
	
	MOVE_TIME			= 0.8,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_TELEPORT_FINISH",		},
	},
}

PVP_BOT_NOA_TELEPORT_FINISH = 
{
	ANIM_NAME			= "EvasionEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	DEFENCE						= { 0, 100, 50, }, 
	
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TELEPORT_EFFECT", 0.1,
	},	
	SPEED_X				= 0,
	SPEED_Y				= 0,
	
	SLASH_TRACE			= { 0, 100, },
	INVINCIBLE			= { 0, 0.4, },
	
	SOUND_PLAY0			= { 0.03, "Sound_Arme_shout2.ogg" },
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
}


-- 체인 파이어볼!
PVP_BOT_NOA_CHAIN_FIREBALL =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "SP1a_ChainFireBall",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	INVINCIBLE			= { 0, 1.5, },
	AFTER_IMAGE			= { 0.1, 100, },
		
	STOP_OTHER_UNIT0		= { 0.0, 0.6, },
	STATE_STRING		= STR_ID_4244,
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },
	SOUND_PLAY1			= { 0.01, "AishaVoice_ChainFireBall.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_AISHA_CHAIN_FIREBALL", 0.3,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
}

-- 서클 플레임을 시전합니다.
PVP_BOT_NOA_CIRCLE_FLAME = 
{	
	ANIM_NAME			= "SI_A_AV_CIRCLE_FLAME_Ready",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 1,
	
	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_START = 1,
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_CIRCLE_FLAME_FIRE",		},
	},	
}
PVP_BOT_NOA_CIRCLE_FLAME_FIRE = 
{	
	ANIM_NAME			= "SI_A_AV_CIRCLE_FLAME",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 10,
	

	DISABLE_GRAVITY_TIME_START = 0,
	DISABLE_GRAVITY_TIME_START = 1,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_NOA_Circle_Flame_ICE", 0.12,
	},	
	
	SOUND_PLAY0			= { 0.01, "Aisha_Circle_Flame.ogg" },	
	SOUND_PLAY1			= { 0.22, "Sound_Arme_shout5.ogg" },	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PVP_BOT_NOA_JUMP_DOWN_ACT",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
}

-- 아이스 버그를 시전합니다.
PVP_BOT_NOA_ICEBERG =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_A_AEM_STONE_WALL",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12389 },
		{ RATE = 33, MESSAGE = STR_ID_12390 },
	},
	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,	

	SOUND_PLAY0			= { 0.422, "Sound_Arme_shout2.ogg" },	
    SOUND_PLAY1			= { 0.373, "Arme_BlizzardShower.ogg" },	
	
	SKIP_TIME = 0.66,
	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_NOA_ICE_NOVA", 0.3,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
}


-- 블리자드 샤워!
PVP_BOT_NOA_BLIZZARD_SHOWER =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_AHM_BLIZZARDSHOWER",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 

	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12391 },
		{ RATE = 33, MESSAGE = STR_ID_12392 },
	},
	
	INVINCIBLE			= { 0, 1.8, },		-- fix!!
	AFTER_IMAGE			= { 0.1, 100, },
	
	SOUND_PLAY0			= { 0.023, "Arme_BlizzardShower.ogg" },	
	SOUND_PLAY1			= { 0.01, "AishaVoice_BlizzardShower.ogg" },
    SOUND_PLAY2			= { 0.001, "Energy.ogg" },
    
	STATE_STRING		= STR_ID_4253,
	STOP_OTHER_UNIT0		= { 0.0, 1.0, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_BlizzardShowerNoDamage", 0,
	},		
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
}


-- 프로즌 스텝!
PVP_BOT_NOA_FROZEN_STEP =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
    ANIM_NAME			= "SI_SA_AHM_BLAZE_STEP",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,	
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12393 },
		{ RATE = 33, MESSAGE = STR_ID_12394 },
	},
	
	INVINCIBLE			= { 0, 100, },
	
	STATE_STRING		= STR_ID_4503,
	STOP_OTHER_UNIT0		= { 0.0, 1.0, },
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE, 
	
	SOUND_PLAY1			= { 0.001, "Energy.ogg" },	
	SOUND_PLAY2			= { 0.002, "Sound_Arme_shout4.ogg" },	
	SOUND_PLAY3			= { 0.092, "Aisha_BlazeStep.ogg" },	
	SOUND_PLAY4			= { 0.092, "Lena_SI_SA_GA_Freezing_arrowHit.ogg" },	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Aisha_Frozen_step", 0,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
}


-- 매직 미사일!
PVP_BOT_NOA_MAGIC_MISSILE =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME			= "SP2a_GuideDarkBall",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	INVINCIBLE			= { 0, 1.3, },
	AFTER_IMAGE			= { 0.1, 100, },
	
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12397 },
		{ RATE = 33, MESSAGE = STR_ID_12398 },
	},

	STOP_OTHER_UNIT0		= { 0.0, 0.6, },
	STATE_STRING		= STR_ID_4246,	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },
	SOUND_PLAY1			= { 0.1, "AishaVoice_MagicMissile.ogg" },
	SOUND_PLAY2			= { 0.540, "Arme_GuideDarkBall2.ogg" },
	
	-- EFFECT_SET_LIST =
	-- {
		-- "EffectSet_PVP_BOT_NOA_MAGIC_MISSILE", 0.5,
	-- },
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
}

PVP_BOT_NOA_BOOST_POWER =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	DEFENCE						= { 0, 100, 50, }, 
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_NOA_WAIT",												},
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



PVP_BOT_NOA_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_NOA_WAIT",												},
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12395 },
		{ RATE = 4, MESSAGE = STR_ID_12396 },
	},


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
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
PVP_BOT_NOA_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12395 },
		{ RATE = 4, MESSAGE = STR_ID_12396 },
	},


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 0.52,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
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
PVP_BOT_NOA_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12395 },
		{ RATE = 4, MESSAGE = STR_ID_12396 },
	},


	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0		= { 0.1, "AishaVoice_DamageScream04.ogg" , 20 },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 0.9,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
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
PVP_BOT_NOA_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	

	TALK_BOX =
	{
		{ RATE = 4, MESSAGE = STR_ID_12395 },
		{ RATE = 4, MESSAGE = STR_ID_12396 },
	},


	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0		= { 0.1, "AishaVoice_DamageScream04.ogg" , 20 },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 0.79,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
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
PVP_BOT_NOA_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },
	
	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	SOUND_PLAY0			= { 0.19, "Down.ogg" },
	SOUND_PLAY1	    	= { 0.19, "AishaVoice_DamageScream03.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_NOA_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_NOA_STAND_UP_FRONT",	},
	},
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 1.19,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	
	SOUND_PLAY0			= { 0.32, "Down.ogg" },
	SOUND_PLAY1	    	= { 0.19, "AishaVoice_DamageScream03.ogg" },
	
	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_NOA_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_NOA_STAND_UP_BACK",		},
	},
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 1.19,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	

}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0		= { 0.1, "AishaVoice_DamageScream01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING",	},
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
PVP_BOT_NOA_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	SOUND_PLAY0		= { 0.1, "AishaVoice_DamageScream01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_BACK",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_DAMAGE_DOWN_BACK",	},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 50,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_EPIK_MANA_BREAK_FRONT",		"CT_PVP_BOT_EPIK_MANA_BREAK"	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_WAIT",	},
	},
	CT_PVP_BOT_EPIK_MANA_BREAK =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		RATE						= 3,
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Aisha_ManaShield_Hit", 0,
	},		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0		= { 0.1, "AishaVoice_DamageScream01.ogg" },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_NOA_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	DEFENCE						= { 0, 100, 50, }, 
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_NOA_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	DEFENCE						= { 0, 100, 50, }, 
	
	
	SOUND_PLAY0			= { 0.029, "Down.ogg" },
	SOUND_PLAY1			= { 0.46, "Down.ogg" },
	SOUND_PLAY2	        = { 0.1, "AishaVoice_DamageScream02.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_NOA_TELEPORT_READY",	"CT_PVP_BOT_NOA_TELEPORT_READY",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_STAND_UP_FRONT",		},
	},
	
	CT_PVP_BOT_NOA_TELEPORT_READY =
	{
		ANIM_EVENT_TIMER			= 1.22,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	

}
--------------------------------------------------------------------------


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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DAMAGE_DOWN_FRONT",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_FRONT",           	},
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_NOA_DAMAGE_DOWN_BACK",     			"CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK",           	},
	},
	CT_PVP_BOT_EPIK_DAMAGE_DOWN_BACK =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_STAND_UP_FRONT =
{
	ANIM_NAME			= "EvasionEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	INVINCIBLE = { -1, -1, 0.5, 0.5 },
	
	SPEED_X				= 0,
	SPEED_Y				= 0,
	
	SLASH_TRACE			= { 0, 100, },
	
	SOUND_PLAY0			= { 0.03, "Sound_Arme_shout2.ogg" },
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TELEPORT_EFFECT", 0.1,
	},	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			MAGIC		= 1.7,			
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_RESERVE_TIME_ATT	= 0.0,
		STOP_RESERVE_TIME_DEF	= 0.0,
		STOP_TIME_ATT			= 0.2,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.0,
		
		--TECH_POINT				= 40,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_NOA_STAND_UP_BACK =
{
	
	ANIM_NAME			= "EvasionEnd",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	DEFENCE						= { 0, 100, 50, }, 
	
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	SPEED_X				= 0,
	SPEED_Y				= 0,
	
	INVINCIBLE = { -1, -1, 0.5, 0.5 },
	
	SLASH_TRACE			= { 0, 100, },
	
	SOUND_PLAY0			= { 0.03, "Sound_Arme_shout2.ogg" },
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_TELEPORT_EFFECT", 0.1,
	},	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			MAGIC		= 1.7,			
		},
		
        CRITICAL_RATE			= 0.33,
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		STOP_RESERVE_TIME_ATT	= 0.0,
		STOP_RESERVE_TIME_DEF	= 0.0,
		STOP_TIME_ATT			= 0.2,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,	
		CLEAR_SCREEN_COLOR_A	= 0.0,
		CLEAR_SCREEN_COLOR_R	= 1.0,
		CLEAR_SCREEN_COLOR_G	= 1.0,
		CLEAR_SCREEN_COLOR_B	= 1.0,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.0,
		
		--TECH_POINT				= 40,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_NOA_JUMP_DOWN_ACT", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_NOA_WAIT",      },
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_NOA_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,

	DEFENCE						= { 0, 100, 50, }, 
	
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
		
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12402 },
		{ RATE = 30, MESSAGE = STR_ID_12403 },
		{ RATE = 30, MESSAGE = STR_ID_12404 },
	},

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "AISHAVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_NOA_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	
	DEFENCE						= { 0, 100, 50, }, 
	
	TALK_BOX =
	{
		{ RATE = 30, MESSAGE = STR_ID_12402 },
		{ RATE = 30, MESSAGE = STR_ID_12403 },
		{ RATE = 30, MESSAGE = STR_ID_12404 },
	},

	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "AISHAVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_NOA_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.87 ) then
         local pDamageEffect = pX2Game:GetDamageEffect()
         local vPos = pNPCUnit:GetPos()
         local vLandPos = pNPCUnit:GetLandPosition_LUA()

         if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "PVP_BOT_NOA_ATTACK_A", vPos, vLandPos.y )
         end
	end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 6)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_NOA_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_NOA_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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

-- 아이샤 시작 시 엠 50을 채워줍니다.
function PVP_BOT_NOA_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp +50)
	end		     
	  
end	


function PVP_BOT_NOA_CHAIN_FIREBALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
        
	  
end	

function PVP_BOT_NOA_ICEBERG_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then		
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp -50)
	end
	  
end	

function PVP_BOT_NOA_CIRCLE_FLAME_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	
		pNPCUnit:SetSpeedY(500)
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp -40)
	end
	  
end	

function PVP_BOT_NOA_FROZEN_STEP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 300)
	end		
        
	  
end	


function PVP_BOT_NOA_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
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


function PVP_BOT_NOA_ComboX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.32 ) then	
		
		if pNPCUnit:GetNowMP() < 7.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_FIREBALL_SHORT", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 7)
		end
	end
end	

function PVP_BOT_NOA_ComboXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.38 ) then	
		
		if pNPCUnit:GetNowMP() < 7.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_FIREBALL_SHORT", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 7)
		end
	end
end	

function PVP_BOT_NOA_ComboXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.38 ) then	
		
		if pNPCUnit:GetNowMP() < 6.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_FIREBALL_BIG", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 6)
		end
	end
end	

function PVP_BOT_NOA_DashX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then	
		
		if pNPCUnit:GetNowMP() < 5.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_REVERSE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_FIREBALL_SHORT_REVERSE", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 5)
		end
	end
	
end	

function PVP_BOT_NOA_ComboXXbackX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then	
		
		if pNPCUnit:GetNowMP() < 5.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_REVERSE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_FIREBALL_BIG_NoDown", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 5)
		end
	end
end	
function PVP_BOT_NOA_JumpX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then			
		pNPCUnit:SetSpeedY(500)
		if pNPCUnit:GetNowMP() < 5.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_FIREBALL_SHORT", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 5)
		end
	end
	
end	

function PVP_BOT_NOA_ComboXZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 3)
	end
	
end	
function PVP_BOT_NOA_ComboXZZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then			
		nowMp = pNPCUnit:GetNowMP()
		pNPCUnit:SetNowMP(nowMp - 5)
	end
	
end	
function PVP_BOT_NOA_DashJumpComboX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.16 ) then	
		
		if pNPCUnit:GetNowMP() < 5.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_DASH_COMBO_X_FIREBALL", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 5)
		end
	end
	
end	
function PVP_BOT_NOA_DashJumpComboXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.16 ) then	
		
		if pNPCUnit:GetNowMP() < 5.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_NOA_DASH_COMBO_X_FIREBALL_Down", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 5)
		end
	end
	
end	
																	
function PVP_BOT_NOA_BLIZZARD_SHOWER_FRAME_START( pKTDXApp, pX2Game, pNPCUnit )

    -- 블리자드 샤워가 떨어질 위치를 결정한다.
    
    vDirVector	= pNPCUnit:GetDirVector()	
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1300)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 700.0
	pNPCUnit:SetVector_LUA(0, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(0, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1100)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 800.0
	pNPCUnit:SetVector_LUA(1, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(1, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -900)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 500.0
	pNPCUnit:SetVector_LUA(2, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(2, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -600)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 800.0
	pNPCUnit:SetVector_LUA(3, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(3, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -300)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 650.0
	pNPCUnit:SetVector_LUA(4, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(4, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -580)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1000.0
	pNPCUnit:SetVector_LUA(5, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(5, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -400)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 750.0
	pNPCUnit:SetVector_LUA(6, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(6, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1500)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1500.0
	pNPCUnit:SetVector_LUA(7, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(7, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1200)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1300.0
	pNPCUnit:SetVector_LUA(8, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(8, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1450)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1000.0
	pNPCUnit:SetVector_LUA(9, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(9, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1320)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 900.0
	pNPCUnit:SetVector_LUA(10, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(10, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1200)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1000.0
	pNPCUnit:SetVector_LUA(11, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(11, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -800)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1100.0
	pNPCUnit:SetVector_LUA(12, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(12, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -1000)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1050.0
	pNPCUnit:SetVector_LUA(13, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(13, randInx)
	
	landPos1 = pNPCUnit:GetLandPosition_LUA()		
	landPos1 = MovePos(landPos1, vDirVector, -500)	
	posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos1, 300, true, false )
	posR.y = posR.y + 1200.0
	pNPCUnit:SetVector_LUA(14, posR)
	randInx = (pNPCUnit:GetRandVal() % 14) + 1 
	pNPCUnit:SetInt_LUA(14, randInx)
	
	
end

function PVP_BOT_NOA_BLIZZARD_SHOWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    pDamageEffect = pX2Game:GetDamageEffect()
    	
	landPos = pNPCUnit:GetLandPosition_LUA()	
	
	vRot = pNPCUnit:GetRotateDegree()
	if pNPCUnit:GetIsRight() == false then
		vRot.y = vRot.y + 180.0
	end
	    
	
    for i = 0, 4 do        
		if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then 
			posR = pNPCUnit:GetVector_LUA(i)
			pDamageEffect:CreateInstance_LUA2( pNPCUnit, "AISHA_BLIZZARD_SHOWER_for_BOT", posR, landPos.y + (((pNPCUnit:GetRandVal()* 1.4141561) % 3) * 700) -350, vRot)
		end	               
	end    
	
    for i = 5, 9 do        
		if pNPCUnit:AnimEventTimer_LUA( 1.10 ) then 
			posR = pNPCUnit:GetVector_LUA(i)
			pDamageEffect:CreateInstance_LUA2( pNPCUnit, "AISHA_BLIZZARD_SHOWER_for_BOT", posR, landPos.y + (((pNPCUnit:GetRandVal()* 1.4141561) % 3) * 700) -350, vRot)
		end	               
	end    
    for i = 10, 14 do        
		if pNPCUnit:AnimEventTimer_LUA( 1.3 ) then 
			posR = pNPCUnit:GetVector_LUA(i)
			pDamageEffect:CreateInstance_LUA2( pNPCUnit, "AISHA_BLIZZARD_SHOWER_for_BOT", posR, landPos.y + (((pNPCUnit:GetRandVal()* 1.4141561) % 3) * 700) -350, vRot)
		end	               
	end    
	if pNPCUnit:AnimEventTimer_LUA( 0.000001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 230)
	end		
        
end	
function PVP_BOT_NOA_CHARGE_MANA_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	-- 대전 도우미 아이샤보다 제자리에서 엠 채우는 속도가 2배입니다.
	local nowMp = pNPCUnit:GetNowMP()
	pNPCUnit:SetNowMP(nowMp + 0.2)
	
end	

function CF_PVP_BOT_NOA_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	local fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if fRemainHPRate < 0.4 then	
	
		if pNPCUnit:GetHyperModeCount() > 0 then
		
			return true
			
		end
	
	end

	return false

end

function PVP_BOT_NOA_MAGIC_MISSILE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

			
		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then

		pDamageEffect = pX2Game:GetDamageEffect()
		
		landPos = pNPCUnit:GetLandPosition_LUA()
		LHandPos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" )
		
		pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "GUIDE_FIRE_BALL_MEMO", LHandPos, landPos.y )
			
		if pCEffect ~= nil then
		
			pNPCUnit:SetLockOnTarget( pCEffect )
		
		end
		
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.000001) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_Dungeon_Clear_Elsword.tga", 1, 1, 9999, 9999, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 200)
	end		
        
	  
	-- if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then		
		-- local landPos = pNPCUnit:GetLandPosition_LUA()
		-- local rotDegree = pNPCUnit:GetRotateDegree()				
		-- local pDamageEffect = pX2Game:GetDamageEffect()
		-- local LHandPos 	= pNPCUnit:GetBonePos_LUA("Bip01_R_Hand")
		-- local RightMissile = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "GUIDE_FIRE_BALL_MEMO", RHandPos, landPos.y, rotDegree )		
		-- pNPCUnit:SetLockOn( RightMissile, 0 )	
	-- end
end	



function PVP_BOT_NOA_TELEPORT_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.12 ) then
		pNPCUnit:SetShow(false) 
		pNPCUnit:SetSpeedX(28000)
		pNPCUnit:SetSpeedY(15000)
	end
	
end



function PVP_BOT_NOA_TELEPORT_FINISH_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetShow(true) 
	pNPCUnit:SetSpeedX(0)
	pNPCUnit:SetSpeedY(0)

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