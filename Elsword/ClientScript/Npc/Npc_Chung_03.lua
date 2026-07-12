-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ Lenoas / 2011/5/6 / 대전용 대련 도우미 bot (청)/
	 
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
	},
	READY_SOUND =
	{
		"Down.ogg",
	},
	READY_XMESH = 
	{
	 "Wind_Liner02.Y",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Npc_CHUNG_03.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000 * 1.30,		-- 전진 속도 감쇄율
	G_ACCEL				= 4500 * 1.05,
	MAX_G_SPEED			= -2000 * 1.05,
	
	WALK_SPEED			= 400 * 0.97,
	RUN_SPEED			= 700 * 0.97,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300 * 1.05,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 300,
	-- DRAW_SMALL_MP_BAR	= TRUE,
    USE_SLASH_TRACE     = FALSE,

	
	HYPER_MODE_COUNT	= 1,
	MAX_HYPER_MODE_TIME	= 30,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

    --MIND_FLAG_HEIGHT		= 230,

	HYPER_BOOST_RIGHT	= "HyperBoostRightBlue",
	HYPER_BOOST_LEFT	= "HyperBoostLeftBlue",
	
	USE_AFTER_IMAGE = TRUE,
	
	AFTER_IMAGE_LAYER = X2_LAYER["XL_SKY_WORLD_OBJECT_2"],
	
	AFTER_IMAGE_COLOR_R = 0.5, 
	AFTER_IMAGE_COLOR_G = 0.5, 
	AFTER_IMAGE_COLOR_B = 0.5,
	AFTER_IMAGE_COLOR_A = 0.5,
	
	AFTER_IMAGE_DEST_ALPHA_BLEND = TRUE,
	
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DIE_FLY			= FALSE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "Mesh_Chung_Cash_Weapon430_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	
}
-----------------------------------------------------------
INIT_PERSONAL_INFO =
{
	CHUNG_STATE_ID_LIST_ABLE_TO_BE_CHANGED_TO_GUARD_STATE =	-- 가드 상태로 변경될 수 있는 상태ID 목록
	{
		CHUNG_STATE_ID["PVP_BOT_CHUNG_ComboZZZ"],
		CHUNG_STATE_ID["PVP_BOT_CHUNG_ComboXX"],
		CHUNG_STATE_ID["PVP_BOT_CHUNG_ComboXXX"],
		CHUNG_STATE_ID["CSI_COMBO_ZZdownZ"],
		
		CHUNG_STATE_ID["CSI_GUARD"],	-- 이 스테이트는 반드시 있어야 합니다.
		
	},
	
	CANNON_BALL_COUNT_AT_DUNGEON_OR_PVP_START = 3,	-- 기본으로 충전되어 있을 캐논볼 갯수
	DAMAGE_REDUCE_PERCENT_AT_GUARD_STATE = 67,		-- 가드 상태로 변경될 수 있는 상태에서의 데미지 감소율(정수)
	BASIC_MAX_CANNON_BALL_COUNT	= 6,				-- 기본적으로 최대로 차지할 수 있는 캐논볼의 갯수
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 노전직 청은 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_CHUNG_START",							},
	
	-- 승리모션입니다. 노전직 청은 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_CHUNG_WIN",							},
    { STATE_NAME = "PVP_BOT_CHUNG_WIN2",							},
	
	-- 승리모션입니다. 노전직 청은 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_CHUNG_LOSE",							},
    { STATE_NAME = "PVP_BOT_CHUNG_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_CHUNG_WAIT",							},

	{ STATE_NAME = "PVP_BOT_CHUNG_CHARGE_CANNON_BALL1",							},
	{ STATE_NAME = "PVP_BOT_CHUNG_CHARGE_CANNON_BALL2",							},
	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_CHUNG_WALK",							},
    { STATE_NAME = "PVP_BOT_CHUNG_DASH",							},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_MOVE_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_MOVE",					},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH",			},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_CHUNG_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_CHUNG_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지) 입니다.
	{ STATE_NAME = "PVP_BOT_CHUNG_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_CHUNG_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_CHUNG_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_CHUNG_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_CHUNG_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_CHUNG_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_JUMP_LANDING",					},
	--{ STATE_NAME = "PVP_BOT_CHUNG_JUMP_POWER_LANDING",					},

	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboZ",					STATE_COOL_TIME = 2,							},
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboZZZ",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_GUARD_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboZZZZ",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_ComboZZZZ_FRAME_MOVE"		},
	
	-- zzdownZZ 콤보
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboZZdownZ",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_GUARD_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboZZdownZZ",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_ComboZZdownZZ_FRAME_MOVE"			},
	
	-- xxx 콤보 (xx에서 xxx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboX",					STATE_COOL_TIME = 4,							},
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_GUARD_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_ComboXXX",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_ComboXXX_FRAME_MOVE"	},
	
	-- 대시점프 z, x
	{ STATE_NAME = "PVP_BOT_CHUNG_DashJump",						},
	{ STATE_NAME = "PVP_BOT_CHUNG_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DashJumpComboZ",							STATE_COOL_TIME = 5,				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DashJumpComboX",							STATE_COOL_TIME = 5,				},
	
	-- 대시 z
	{ STATE_NAME = "PVP_BOT_CHUNG_DashComboZ",								STATE_COOL_TIME = 5,					},
	
	-- 점프 z 공격 (위협적이기 보다는 뜬금없이 시행합니다.)
	{ STATE_NAME = "PVP_BOT_CHUNG_JumpZ",										STATE_COOL_TIME = 3,					},
	
	-- 스페셜 액티브 '브루탈 스윙'를 사용합니다.
	{ STATE_NAME = "PVP_BOT_CHUNG_Brutal_Swing",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_Brutal_Swing_FRAME_MOVE"	 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_CHUNG_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_BOOST_POWER_FRAME_MOVE"	},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_CHUNG_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_CHUNG_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_CHUNG_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_CHUNG_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_CHUNG_DAMAGE_REVENGE",				},

	-- 헤비스탠스입니다. (외곽선 처리 안됐습니다)
	{ STATE_NAME = "PVP_BOT_CHUNG_GUARD",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_CHUNG_GUARD_FRAME_MOVE"  		},
	{ STATE_NAME = "PVP_BOT_CHUNG_GUARD_ATTACK_Z",			},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_CHUNG_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_CHUNG_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_CHUNG_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_CHUNG_DYING_LAND_STATE_START",			},

	{ STATE_NAME = "PVP_BOT_CHUNG_DashX", },

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_CHUNG_START",
	WAIT_STATE					= "PVP_BOT_CHUNG_WAIT",
	WIN_STATE					= "PVP_BOT_CHUNG_WIN",
	LOSE_STATE					= "PVP_BOT_CHUNG_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_CHUNG_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_CHUNG_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_CHUNG_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_CHUNG_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_CHUNG_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_CHUNG_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_CHUNG_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_CHUNG_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_CHUNG_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_CHUNG_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_CHUNG_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_CHUNG_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_CHUNG_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"PVP_BOT_CHUNG_DAMAGE_AIR_DOWN","PVP_BOT_CHUNG_DAMAGE_AIR_FALL",	"PVP_BOT_CHUNG_STAND_UP_FRONT","PVP_BOT_CHUNG_STAND_UP_BACK",
	"PVP_BOT_CHUNG_JUMP_DOWN","PVP_BOT_CHUNG_JUMP_LANDING",},	

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_CHUNG_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_CHUNG_DYING_BACK",
	DYING_SKY					= "PVP_BOT_CHUNG_DYING_FRONT",

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
PVP_BOT_CHUNG_WIN =
{
	ANIM_NAME					= "Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_CHUNG_WIN2 =
{
	ANIM_NAME					= "Win2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_CHUNG_LOSE =
{
	ANIM_NAME					= "Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_CHUNG_LOSE2 =
{
	ANIM_NAME					= "Lose2",			-- fix, Lose2
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_CHUNG_START =
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_WAIT",		"CT_PVP_BOT_CHUNG_WAIT"	},
	},
	CT_PVP_BOT_CHUNG_WAIT =
	{
		STATE_TIME_OVER	= 5.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_WAIT =
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
	EVENT_INTERVAL_TIME0	= 0.5,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_CHUNG_BOOST_POWER",	"CF_PVP_BOT_CHUNG_BOOST_POWER",									},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_ComboZ",     				"CT_PVP_BOT_CHUNG_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_ComboX",     				"CT_PVP_BOT_CHUNG_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WALK",         			"CT_PVP_BOT_CHUNG_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DASH",         			"CT_PVP_BOT_CHUNG_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_JUMP_UP_DIR",         		"CT_PVP_BOT_CHUNG_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_JUMP_UP",         			"CT_PVP_BOT_CHUNG_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashJump",          		"CT_PVP_BOT_CHUNG_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_Brutal_Swing",          		"CT_PVP_BOT_CHUNG_Brutal_Swing",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_CHUNG_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_READY",     	"CT_PVP_BOT_CHUNG_BACKWARD_DASH_READY",   },
		
		-- 캐논볼을 충전하는 동작입니다. 사실 무의미합니다 -_-;;
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_CHARGE_CANNON_BALL1", 		"CT_PVP_BOT_CHUNG_CHARGE_CANNON_BALL1",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_CHARGE_CANNON_BALL2",     	"CT_PVP_BOT_CHUNG_CHARGE_CANNON_BALL2",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_CHUNG_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_CHUNG_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_CHUNG_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_CHUNG_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_CHUNG_JUMP_DOWN_DIR",														},
	},

	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	
	CT_PVP_BOT_CHUNG_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 550,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_CHUNG_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 15,
	},
	
	CT_PVP_BOT_CHUNG_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_CHUNG_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
		
	CT_PVP_BOT_CHUNG_Brutal_Swing =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
		-- RATE						= 20,
	},		
	
	CT_PVP_BOT_CHUNG_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_CHUNG_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_CHUNG_CHARGE_CANNON_BALL1 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 10,
	},
	CT_PVP_BOT_CHUNG_CHARGE_CANNON_BALL2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 15,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_ComboZ",     				"CT_PVP_BOT_CHUNG_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_ComboX",     				"CT_PVP_BOT_CHUNG_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",         			"CT_PVP_BOT_CHUNG_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DASH",         			"CT_PVP_BOT_CHUNG_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashJump",          		"CT_PVP_BOT_CHUNG_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_JUMP_UP_DIR",         		"CT_PVP_BOT_CHUNG_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_JUMP_UP",         			"CT_PVP_BOT_CHUNG_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_Brutal_Swing",          		"CT_PVP_BOT_CHUNG_Brutal_Swing",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_CHUNG_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_READY",     	"CT_PVP_BOT_CHUNG_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_CHUNG_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_CHUNG_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_CHUNG_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_CHUNG_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_CHUNG_JUMP_DOWN_DIR",														},
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_CHUNG_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
	},
	
	CT_PVP_BOT_CHUNG_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_Brutal_Swing =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 20,
	},
			
	CT_PVP_BOT_CHUNG_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_CHUNG_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 25,
	},
	
	
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
		
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 30,
	},
	
	CT_PVP_BOT_CHUNG_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 700,
		RATE						= 40,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_CHUNG_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashComboZ",     			"CT_PVP_BOT_CHUNG_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashX",         			"CT_PVP_BOT_CHUNG_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashJump",          		"CT_PVP_BOT_CHUNG_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashJump",          		"CT_PVP_BOT_CHUNG_DashJump2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DashJump",          		"CT_PVP_BOT_CHUNG_DashJump3",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_CHUNG_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_READY",     	"CT_PVP_BOT_CHUNG_BACKWARD_DASH_READY",   },
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DASH_END",          		"CT_PVP_BOT_CHUNG_DASH_END",      		},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_CHUNG_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_CHUNG_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_CHUNG_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_CHUNG_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_CHUNG_JUMP_DOWN_DIR",														},
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_CHUNG_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},
		
	CT_PVP_BOT_CHUNG_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	CT_PVP_BOT_CHUNG_DashJump3 =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 375,
		RATE						= 100,
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	
	
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_CHUNG_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 80,
	},
}

-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 걸어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_CHUNG_BACKWARD_MOVE_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_BACKWARD_MOVE",	"CT_PVP_BOT_CHUNG_BACKWARD_MOVE",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_CHUNG_BACKWARD_MOVE = 
{

	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	LAND_CONNECT		= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY5",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY6",       	     	},
		
		
	},
	
	
	-- 적당히 걸어갔다가 뒤를 돌아봅니다.
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 10,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 15,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY3 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 20,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY4 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		RATE						= 40,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY5 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		RATE						= 60,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY6 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		RATE						= 80,
	},
	

}

PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH",	"CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},


}
PVP_BOT_CHUNG_BACKWARD_MOVE_FINISH = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT5",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WALK",     "CT_PVP_BOT_CHUNG_WALK",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_CHUNG_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_CHUNG_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 40,
	},
	CT_PVP_BOT_CHUNG_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 50,
	},
	CT_PVP_BOT_CHUNG_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 60,
	},
	
	CT_PVP_BOT_CHUNG_WAIT5 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
	},
	-- 그냥 앞으로 걸어가 버립니다.
	CT_PVP_BOT_CHUNG_WALK =
	{
		ANIM_EVENT_TIMER			= 0.6,
		RATE						= 100,
	},

}


-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_CHUNG_BACKWARD_DASH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_BACKWARD_DASH",	"CT_PVP_BOT_CHUNG_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_CHUNG_BACKWARD_DASH = 
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


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",													},

		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY4",       	     	},
		
	},
	
	
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 15,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 20,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY3 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 25,
	},
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY4 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		RATE						= 30,
	},
	

}

PVP_BOT_CHUNG_BACKWARD_DASH_FINISH_READY = 
{

	ANIM_NAME			= "Wait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLIP_DIR_END				= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	
	SPEED_X						= -300,
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_BACKWARD_DASH_FINISH",	"CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_CHUNG_BACKWARD_DASH_FINISH = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_WAIT",     "CT_PVP_BOT_CHUNG_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_CHUNG_DASH",     "CT_PVP_BOT_CHUNG_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_CHUNG_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_CHUNG_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	CT_PVP_BOT_CHUNG_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 70,
	},
	CT_PVP_BOT_CHUNG_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 80,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_CHUNG_DASH =
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
PVP_BOT_CHUNG_DASH_END =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",			},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_JUMP_UP =
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

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_JumpZ",          	"CT_PVP_BOT_CHUNG_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_JumpZ",          	"CT_PVP_BOT_CHUNG_JumpZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_CHUNG_JUMP_DOWN",		},
	},
	
	CT_PVP_BOT_CHUNG_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.333,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	CT_PVP_BOT_CHUNG_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
}

PVP_BOT_CHUNG_JUMP_DOWN =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_JumpZ",          	"CT_PVP_BOT_CHUNG_JumpZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_CHUNG_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_JUMP_UP_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_JumpZ",          	"CT_PVP_BOT_CHUNG_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_JumpZ",          	"CT_PVP_BOT_CHUNG_JumpZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_CHUNG_JUMP_DOWN_DIR",	},
	},
	
	CT_PVP_BOT_CHUNG_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	CT_PVP_BOT_CHUNG_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_JUMP_DOWN_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_CHUNG_JumpZ",          	"CT_PVP_BOT_CHUNG_JumpZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_CHUNG_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_JUMP_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
}

--------------------------------------------------------------------------
-- 대시 점프

PVP_BOT_CHUNG_DashJump = 
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
	
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_DashJumpComboX",	"CT_PVP_BOT_CHUNG_DashJumpComboX",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_DashJumpComboX",	"CT_PVP_BOT_CHUNG_DashJumpComboX2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_DashJumpComboZ",	"CT_PVP_BOT_CHUNG_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_DashJumpComboZ",	"CT_PVP_BOT_CHUNG_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_DashJumpComboZ",	"CT_PVP_BOT_CHUNG_DashJumpComboZ3",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_CHUNG_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_CHUNG_DashJumpComboX =
	{
		ANIM_EVENT_TIMER			= 0.5,
		DISTANCE_OVER_TARGET_NEAR	= 700,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	CT_PVP_BOT_CHUNG_DashJumpComboX2 =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_PVP_BOT_CHUNG_DashJumpComboZ1 =
	{
		ANIM_EVENT_TIMER			= 0.043,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	CT_PVP_BOT_CHUNG_DashJumpComboZ2 =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_CHUNG_DashJumpComboZ3 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 60,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_CHUNG_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",											},
	},
}

PVP_BOT_CHUNG_CHARGE_CANNON_BALL1 =
{
	ANIM_NAME			= "ChargeCannonball01",
	ANIM_SPEED			= 1.4,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	SPEED_X = 0,
	SPEED_Y = 0,
	
    SOUND_PLAY0			= { 0.691, "Chung_CannonGun_Reload.ogg" },
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_WALK",	"CT_PVP_BOT_CHUNG_WALK",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_WALK",	"CT_PVP_BOT_CHUNG_WALK2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_WALK",	"CT_PVP_BOT_CHUNG_WALK3",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",											},
	},
	
	CT_PVP_BOT_CHUNG_WALK =
	{
		ANIM_EVENT_TIMER			= 0.4,
		DISTANCE_TO_TARGET_NEAR		= 400,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
	CT_PVP_BOT_CHUNG_WALK2 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		DISTANCE_OVER_TARGET_NEAR	= 600,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	CT_PVP_BOT_CHUNG_WALK3 =
	{
		ANIM_EVENT_TIMER			= 0.8,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
}
PVP_BOT_CHUNG_CHARGE_CANNON_BALL2 =
{
	ANIM_NAME			= "ChargeCannonball02",
	ANIM_SPEED			= 1.4,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	SPEED_X = 0,
	SPEED_Y = 0,
	
    SOUND_PLAY0			= { 0.691, "Chung_CannonGun_Reload.ogg" },
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_WALK",	"CT_PVP_BOT_CHUNG_WALK",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_WALK",	"CT_PVP_BOT_CHUNG_WALK2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_WALK",	"CT_PVP_BOT_CHUNG_WALK3",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",											},
	},
	
	CT_PVP_BOT_CHUNG_WALK =
	{
		ANIM_EVENT_TIMER			= 0.4,
		DISTANCE_TO_TARGET_NEAR		= 400,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
	CT_PVP_BOT_CHUNG_WALK2 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		DISTANCE_OVER_TARGET_NEAR	= 600,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	CT_PVP_BOT_CHUNG_WALK3 =
	{
		ANIM_EVENT_TIMER			= 0.8,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
}


PVP_BOT_CHUNG_GUARD = -- 헤비스탠스
{
	ANIM_NAME			= "Guard",
	ANIM_SPEED			= 0.6,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],

	SOUND_PLAY0			= { 0.044, "Chung_HitGuard.ogg" },
	
	GUARD_DEFENCE               = 67,
	GUARD_DEFENCE_FRONT			= TRUE,
	GUARD_DEFENCE_BACK			= FALSE,	
	
	SPEED_X = 0,
	SPEED_Y = 0,
	
	HITTED_TYPE_AT_STATE	= HITTED_TYPE["HTD_GUARD_1"],
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_GUARD_ATTACK_Z",	"CT_PVP_BOT_CHUNG_GUARD_ATTACK_Z",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_GUARD_ATTACK_Z =
	{
		ANIM_EVENT_TIMER			= 0.15,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 70,
	},

}

PVP_BOT_CHUNG_GUARD_ATTACK_Z =	-- GuardAttackZ
{
	ANIM_NAME			= "GuardAttackZ",
	ANIM_SPEED			= 1.5,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	--SUPER_ARMOR			= TRUE,
	
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.133, 0.266 },
	
	INVINCIBLE			= { 0 , 0.266, },
	
	DISABLE_ATTACK_BOX =
	{
		"Back01",
	},

	SOUND_PLAY0			= { 0.198, "Chung_Attack4.ogg" },	
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},		
		
		BACK_SPEED_X	= 1500,
		BACK_SPEED_Y	= 1000,
								
		STOP_TIME_ATT	= 0.25,	
		STOP_TIME_DEF	= 0.2,
		
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.333,
		CLEAR_SCREEN			= 1,
		
		--FORCE_DOWN			= 7,
		TECH_POINT				= 150,
		FORCE_FLY				= TRUE,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
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

-- 대시점프 z

PVP_BOT_CHUNG_DashJumpComboZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpAttackZ1",
	ANIM_SPEED			= 1.1,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.1, 0.233, },
	
	SOUND_PLAY0			= { 0.147, "Chung_Attack2.ogg" },
	SOUND_PLAY1			= { 0.107, "ChungVoice_Shout04.ogg" },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"]*1.1,
	SPEED_Y				= 600.0,
	
	DISABLE_ATTACK_BOX =
	{
		"Back01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,
		
		STOP_TIME_ATT = 0.133,
		STOP_TIME_DEF = 0.166,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.33,
		
		FORCE_DOWN			= 20,
		TECH_POINT				= 50,
	},
	
	

	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_DashJump_landing",	},
	},
	
}

PVP_BOT_CHUNG_DashJumpComboX = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SOUND_PLAY0			=	{ 0.184, "Chung_CannonGun_Trigger.ogg" },
	SOUND_PLAY1			=	{ 0.124, "ChungVoice_Shout07.ogg" },
	
	SPEED_X 			= -350,
	SPEED_Y				= 2300,
		
	EFFECT_SET_LIST =
	{
		"EffectSet_CSI_ATTACK_DASH_JUMP_X", 0.001,
	},
	

	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_DashJump_landing",	},
	},
	
}
PVP_BOT_CHUNG_DashJumpComboZZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.3,
	SPEED_Y				= 800.0,

	SOUND_PLAY0			= { 0.250, "CHUNG_Slash1.ogg" },
	SOUND_PLAY1			= { 0.17, "CHUNGVoice_Shout05.ogg" },

	ATTACK_TIME0		= { 0.166, 0.3, },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 1,
		},

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		BACK_SPEED_Y			= 200,

		STOP_TIME_ATT			= 0.1,
		STOP_TIME_DEF			= 0.15,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.3,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 200,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_CHUNG_DashJump_landing",	},
	},
	
}


-- zzzz 콤보 입니다.
PVP_BOT_CHUNG_ComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.133, 0.2 },

	SOUND_PLAY0			=	{ 0.112, "Chung_Attack1.ogg" },
	
	DISABLE_ATTACK_BOX =
	{
		"Back01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
						
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.333,
		--CLEAR_SCREEN			= 1,	
		
		FORCE_DOWN			= 7,
		TECH_POINT				= 20,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboZZ",	"CT_PVP_BOT_CHUNG_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboZZ",	"CT_PVP_BOT_CHUNG_ComboZZ2",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_BACKWARD_MOVE_READY",		},
	},
	
	CT_PVP_BOT_CHUNG_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.35,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_CHUNG_ComboZZ2 =
	{
		ANIM_EVENT_TIMER			= 0.35,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 85,
	},
}

PVP_BOT_CHUNG_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.20, 0.233 },

	SOUND_PLAY0			=	{ 0.223, "Chung_Attack2.ogg" },
	
	SPEED_X				= 600,
	
	-- DISABLE_ATTACK_BOX =
	-- {
		-- "Back01",
	-- },
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.1,
		},		
		
		BACK_SPEED_X	= 600,
		
		STOP_TIME_ATT	= 0.17,		
		STOP_TIME_DEF	= 0.35,	
						
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.333,
		--CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 7,
		TECH_POINT				= 22,
	},
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboZZZ",	"CT_PVP_BOT_CHUNG_ComboZZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboZZdownZ",	"CT_PVP_BOT_CHUNG_ComboZZdownZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_ComboZZdownZ =
	{
		ANIM_EVENT_TIMER			= 0.44,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_CHUNG_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_CHUNG_ComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3",
	ANIM_SPEED			= 1.33,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.466, 0.533 },

	SOUND_PLAY0			=	{ 0.487, "Chung_Attack3.ogg" },
	SOUND_PLAY1			=	{ 0.387, "ChungVoice_Shout04.ogg" },
	
	SPEED_X				= 400,
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH3"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},	
		
		BACK_SPEED_X	= 800,
		
		STOP_TIME_ATT	= 0.25,		
		STOP_TIME_DEF	= 0.35,		
						
		CAMERA_CRASH_GAP		= 30.0,	
		CAMERA_CRASH_TIME		= 0.666,
		--CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 15,
		TECH_POINT				= 65,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboZZZZ",	"CT_PVP_BOT_CHUNG_ComboZZZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_DashJump", 	"CT_PVP_BOT_CHUNG_DashJump", 	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_DashJump =
	{
		ANIM_EVENT_TIMER			= 0.58,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
	
	CT_PVP_BOT_CHUNG_ComboZZZZ =
	{
		ANIM_EVENT_TIMER			= 0.59,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}


PVP_BOT_CHUNG_ComboZZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.533, 0.6, "STR_Tuung" },

	SOUND_PLAY0			=	{ 0.518, "Chung_Attack1.ogg" },
	SOUND_PLAY1			=	{ 0.418, "ChungVoice_Shout05.ogg" },

	SPEED_X				= 300,
	
	-- DISABLE_ATTACK_BOX =
	-- {
		-- "Back01",
	-- },
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.4,
		},
		
		BACK_SPEED_X	= 1500,
		BACK_SPEED_Y	= -1000,
								
		STOP_TIME_ATT	= 0.3,		
		STOP_TIME_DEF	= 0.25,
		
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.333,
		CLEAR_SCREEN			= 1,
		
		--FORCE_DOWN			= 7,
		TECH_POINT				= 70,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
}

-- ZZ에서 이어지는 ZZdownZZ 콤보입니다.
PVP_BOT_CHUNG_ComboZZdownZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ3Down",
	ANIM_SPEED			= 1.66,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.7, 0.766 },

	SOUND_PLAY0			=	{ 0.602, "Chung_Attack3.ogg" },
	SOUND_PLAY1			=	{ 0.698, "Chung_HitGround.ogg" },
	SOUND_PLAY2			=	{ 0.676, "Chung_CannonGun_Reload.ogg" },
	SOUND_PLAY3			=	{ 0.676, "ChungVoice_Reload.ogg" },
	
	SPEED_X				= 300,
	
	SPEED_TIME0 = { 800, 0, 0.2, 1 },
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},
	
	DISABLE_ATTACK_BOX =
	{
		"Front01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH3"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.4,
		},		
		
		BACK_SPEED_X	= 900,
		BACK_SPEED_Y	= 1200,
								
		STOP_TIME_DEF	= 0.4,
		STOP_TIME_ATT	= 0.1,
		
		CAMERA_CRASH_GAP		= 30.0,	
		CAMERA_CRASH_TIME		= 0.666,
		--CLEAR_SCREEN			= 1,
		
		FORCE_FLY			= TRUE,
		FORCE_DOWN			= 15,
		TECH_POINT				= 70,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_CSI_COMBO_ZZdownZ", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END	= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboZZdownZZ",	"CT_PVP_BOT_CHUNG_ComboZZdownZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	CT_PVP_BOT_CHUNG_ComboZZdownZZ =
	{
		ANIM_EVENT_TIMER			= 0.93,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
	

PVP_BOT_CHUNG_ComboZZdownZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,
	
	ANIM_NAME			= "ComboZ4Down",
	ANIM_SPEED			= 1.3,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.733, 0.8, "STR_Tuung" },
	
	SPEED_TIME0 = { 800, 0, 0.1, 1 },

	SOUND_PLAY0			=	{ 0.7, "Chung_Attack1.ogg" },
	SOUND_PLAY1			=	{ 0.5, "ChungVoice_Shout05.ogg" },
	
	-- DISABLE_ATTACK_BOX =
	-- {
		-- "Back01",
	-- },
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH3"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},		
		
		BACK_SPEED_X	= 1700,
		BACK_SPEED_Y	= 1300,
								
		STOP_TIME_ATT	= 0.3,	
		STOP_TIME_DEF	= 0.3,
		
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.333,
		CLEAR_SCREEN			= 1,
		
		--FORCE_DOWN			= 7,
		TECH_POINT				= 150,
		FORCE_FLY				= TRUE,
	},
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
}


-- xxx 콤보입니다.
PVP_BOT_CHUNG_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.233, 0.266 },
	
	SPEED_TIME0 = { 700, 0, 0.12, 1 },

	SOUND_PLAY0			=	{ 0.21, "Chung_Attack1.ogg" },
	SOUND_PLAY1			=	{ 0.290, "Chung_HitGround.ogg" },
	
	DISABLE_ATTACK_BOX =
	{
		"Front01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},		
		
		BACK_SPEED_X	= 500,
										
		STOP_TIME_ATT	= 0.17,	
		STOP_TIME_DEF	= 0.2,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.333,
		--CLEAR_SCREEN			= 1,
		
		FORCE_DOWN		= 15,
		TECH_POINT		= 80,
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_CSI_COMBO_X", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END	= TRUE,
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboXX",	"CT_PVP_BOT_CHUNG_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	CT_PVP_BOT_CHUNG_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.53,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_CHUNG_ComboXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX2",
	ANIM_SPEED			= 1.2,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	
	ATTACK_TIME0		= { 0.11, 0.25 },
	ATTACK_TIME1		= { 0.53, 0.65 },
	
	
 	SOUND_PLAY0			=	{ 0.17, "Chung_Attack2.ogg" },
    SOUND_PLAY1			= { 0.438, "Chung_CannonGun_Reload.ogg" },
    SOUND_PLAY2			= { 0.438, "ChungVoice_Reload.ogg" },
    SOUND_PLAY3			= { 0.478, "Chung_HitGround.ogg" },
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},
	
	--DAMAGE_DATA_CHANGE_TIME = 0.3,
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X	= 800,
										
		STOP_TIME_ATT	= 0.1,	
		STOP_TIME_DEF	= 0.35,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.333,
		-- CLEAR_SCREEN			= 1,
		
		RE_ATTACK		= TRUE,
		HIT_GAP			= 0.33,
		
		FORCE_DOWN			= 7,
		TECH_POINT			= 50,
		
		RATE_MODIFIER			= 0.5,
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_CSI_COMBO_XX", 0.001,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END	= TRUE,
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_ComboXXX",	"CT_PVP_BOT_CHUNG_ComboXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	CT_PVP_BOT_CHUNG_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.58,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
	
}

PVP_BOT_CHUNG_ComboXXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX3",
	ANIM_SPEED			= 1.1,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },

	SOUND_PLAY0			=	{ 0.695, "Chung_CannonGun_Trigger.ogg" },
	SOUND_PLAY1			=	{ 0.495, "ChungVoice_Shout03.ogg" },
	--SPEED_X				= 0,
	--SPEED_Y				= 0,
	SPEED_TIME0 = { -600, 0, 0.633, 2, },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_CSI_COMBO_XXX", 0.001,
	},
	
	IMMUNITY_LIST_AT_THIS_STATE =
	{
		BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
		BUFF_TEMPLET_ID["BTI_DEBUFF_STUN"],
	},	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
}

-- 점프z 공격입니다.
PVP_BOT_CHUNG_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.1, 100, },
	
	SOUND_PLAY0			= { 0.106, "Chung_Attack2.ogg" },	
	
	DISABLE_ATTACK_BOX =
	{
		"Back01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH1"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.333,
		
		FORCE_DOWN			= 15,
		TECH_POINT				= 20,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_JUMP_LANDING",	},
	},
}

-- 대시X 공격입니다.
PVP_BOT_CHUNG_DashX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.166, 0.4 },
	
	SOUND_PLAY0			=	{ 0.2, "ChungVoice_Shout06.ogg" },
	SOUND_PLAY1			=	{ 0.333, "Chung_CannonGun_Trigger.ogg" },
	
	CAN_PASS_UNIT		= TRUE,
	--CAN_PUSH_UNIT		= FALSE,
	
	SPEED_X				= 1100,
	
	DISABLE_ATTACK_BOX =
	{
		"Front02",
		"Back01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH3"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X = 300,
		BACK_SPEED_Y = 1100,		
		
		STOP_TIME_ATT	= 0.15,	
		STOP_TIME_DEF	= 0.18,	
		
		TECH_POINT			= 300,
	},
		
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
}


-- 대시Z 공격입니다.
PVP_BOT_CHUNG_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashComboZ1",
	--ANIM_SPEED			= 1.4,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE			= { 0.033, 100 },
	ATTACK_TIME0		= { 0.233, 0.333, "STR_Tuung" },

	SOUND_PLAY0			=	{ 0.227, "Chung_Attack3.ogg" },

	SPEED_X				= 900,
	
	--SPEED_TIME0 = { 0, 1300, 0.166, 1 },
	
	DISABLE_ATTACK_BOX =
	{
		"Back01",
	},
	
	DAMAGE_DATA = 
	{
		   

		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},		
		
		BACK_SPEED_X	= 900,
		BACK_SPEED_Y	= 1400,
										
		STOP_TIME_ATT	= 0.07,	
		STOP_TIME_DEF	= 0.15,
		
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.333,
		--CLEAR_SCREEN			= 1,
		
		FORCE_DOWN			= 7,
		TECH_POINT			= 90,
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},	
	
}


-- 브루탈 스윙!

PVP_BOT_CHUNG_Brutal_Swing = 
{
	VIEW_TARGET     = TRUE, 
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SI_SA_CHUNG_BRUTAL_SWING",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,
	
	SLASH_TRACE			= { 0.94, 100 },
	ATTACK_TIME0		= { 0.09, 0.330, },
	
	
	INVINCIBLE			= { 0, 100, },
	
	STATE_STRING		= STR_ID_10028,
	
	SOUND_PLAY0			= { 0.001, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.01, "ChungVoice_BrutalSwing.ogg" },	
	SOUND_PLAY2			= { 0.125, "Chung_BrutalSwing_Ready.ogg" },	
	SOUND_PLAY3			= { 0.842, "Chung_BrutalSwing_Attack.ogg" },	
	
	--SPEED_X = 800,
	--SPEED_Y = 0,
	
	--CAN_PUSH_UNIT		= FALSE,
	--CAN_PASS_UNIT		= FALSE,
	
	STOP_ALL_UNIT0		= { 0.05, 1.0, 0.3 },
	
	SPEED_TIME0 = { 3000, 0, 0.133, 2, },
	SPEED_TIME1 = { 1200, 0, 0.299, 2, },
	SPEED_TIME2 = { 1000, 0, 0.833,1, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		ATTACK_TYPE		= ATTACK_TYPE["AT_SPECIAL"],
		HIT_TYPE		= HIT_TYPE["HT_CHUNG_SLASH3"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 3.24,
		},
		
		BACK_SPEED_X = 900,
		--BACK_SPEED_Y = 1000,
		
		STOP_TIME_ATT = 0.35,
		STOP_TIME_DEF = 0.35,
					
		CAN_REVENGE				= FALSE,
		
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.333,
		--CLEAR_SCREEN			= 1,
		
		HIT_ADD_MP				= 5,
		
		--FORCE_DOWN			= 15,
		TECH_POINT				= 200,
		--FORCE_FLY				= TRUE,
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_CSI_SI_SA_CHUNG_BRUTAL_SWING", 0,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
}



PVP_BOT_CHUNG_BOOST_POWER =
{
	ANIM_NAME			= "BoostPower",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	
	LAND_CONNECT		= FALSE,
	CAN_PUSH_UNIT		= FALSE,
	CAN_PASS_UNIT		= FALSE,
	
	INVINCIBLE			= { 0, 100, },
	AFTER_IMAGE			= { 0.1, 100, },

	SOUND_PLAY0			= { 0.001, "Energy.ogg" },
	SOUND_PLAY1			= { 0.191, "Break.ogg" },
	SOUND_PLAY2			= { 0.2, "Change.ogg" },
	--SOUND_PLAY3			= { 0.3, "ChungVoice_BoostPower.ogg" }, -- 광폭화 때만 나오도록 수정
	
	STOP_MY_UNIT0		= { 0.08, 0.5, },
	STOP_OTHER_UNIT0	= { 0.01, 2.4, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_CHUNG_WAIT",												},
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



PVP_BOT_CHUNG_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_CHUNG_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	"CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,



	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	"CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.2, "ChungVoice_DamageScream4.ogg", 30,  },	
	

	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	"CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.2, "ChungVoice_DamageScream4.ogg", 30,  },	
	

	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	"CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
	
	
	CT_PVP_BOT_CHUNG_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },


	SOUND_PLAY0			= { 0.2, "ChungVoice_DamageScream4.ogg", 30,  },	
	SOUND_PLAY1			= { 0.457, "Down.ogg" },
	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_CHUNG_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_CHUNG_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0			= { 0.2, "ChungVoice_DamageScream4.ogg", 30,  },	
	SOUND_PLAY1			= { 0.31, "Down.ogg" },

	INVINCIBLE			= { 0, 100, },

    SOUND_PLAY0			= { 0.01, "DARKSENTINELVoice_Damage.ogg" , 30 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_CHUNG_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_CHUNG_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0			= { 0.001, "ChungVoice_DamageScream3.ogg", 30,  },	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0			= { 0.001, "ChungVoice_DamageScream3.ogg", 30,  },	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SOUND_PLAY0			= { 0.01, "ChungVoice_DamageScream1.ogg", 25, },	

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_CHUNG_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_CHUNG_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

	SOUND_PLAY0			= { 0.01, "ChungVoice_DamageScream2.ogg", 30,  },	
	SOUND_PLAY1			= { 0.097, "Down.ogg" },


	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_STAND_UP_FRONT",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_STAND_UP_FRONT =
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE = { -1, -1, 0.5, 0.5 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_CHUNG_STAND_UP_BACK =
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE = { -1, -1, 0.5, 0.5 },

    --SOUND_PLAY0			= { 0.283, "PVP_BOT_CHUNG_StandUp.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_CHUNG_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_CHUNG_WAIT",      },
	},
}
--------------------------------------------------------------------------

PVP_BOT_CHUNG_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY0			= { 0.41, "ChungVoice_DieScream1.ogg" },	
 	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_CHUNG_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY0			= { 0.41, "ChungVoice_DieScream1.ogg" },	
 	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_CHUNG_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_CHUNG_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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

--------------------------------------------------------------------------
-- xxx 콤보에서 쾅! 이미지가 뜹니다.
function PVP_BOT_CHUNG_ComboXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.45 ) then
	
		
		if pNPCUnit:GetIsRight() then	
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_Kwang_for_BOT", pNPCUnit )
		else	
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_Kwang_for_BOT_LEFT", pNPCUnit )
		
		end
	end		
	  
end	

-- ZZdownZZ 콤보에서 텅! 이미지가 뜹니다.
function PVP_BOT_CHUNG_ComboZZdownZZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_ComboZZdownZZ = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_ComboZZdownZZ == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_Tuung_for_BOT", pNPCUnit )
				hit_ComboZZdownZZ = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_Tuung_for_BOT_LEFT", pNPCUnit )
				hit_ComboZZdownZZ = true
			end
		end
	end		
	  
end	

-- zzzz 콤보에서 텅! 이미지가 뜹니다.
function PVP_BOT_CHUNG_ComboZZZZ_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:GetUnitCondition_bHit() then
	else
		hit_ComboZZZZ = false
	end
	
	
	if pNPCUnit:GetUnitCondition_bHit() then
		if hit_ComboZZZZ == false then
			if pNPCUnit:GetIsRight() then	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_Tuung_for_BOT", pNPCUnit )
				hit_ComboZZZZ = true
			else	
				local pEffectSet = pX2Game:GetEffectSet()
				local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_STR_Tuung_for_BOT_LEFT", pNPCUnit )
				hit_ComboZZZZ = true
			end
		end
	end		
	
	  
end	

--------------------------------------------------------------------------
function PVP_BOT_CHUNG_Brutal_Swing_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_CutIn_Chung_normal.dds", 703, 703, 318, 559, 0)

		
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
   
	  
end	


function PVP_BOT_CHUNG_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	pX2Game:SetWorldColor_LUA( D3DXCOLOR( 0.1, 0.1, 0.1, 1 ) )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
			
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
	
	if pNPCUnit:AnimEventTimer_LUA( 0.21 ) then
	
		pNPCUnit:ChangeHyperMode_LUA()
		
		bonePos = pNPCUnit:GetBonePos_LUA("Bip01")	
		pMinorParticle = pX2Game:GetMinorParticle()	
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "STR_ToKang_for_BOT", bonePos, D3DXVECTOR2(100,150), D3DXVECTOR2(1,-1) )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "WhiteShockWave", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ImpactTick", bonePos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
		
	end

end

	

function CF_PVP_BOT_CHUNG_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if fRemainHPRate < 0.5 then	
	
		if pNPCUnit:GetHyperModeCount() > 0 then
		
			return true
			
		end
	
	end

	return false

end


function PVP_BOT_CHUNG_GUARD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetDamagedThisFrame() then 
		pNPCUnit:StateChange_LUA("PVP_BOT_CHUNG_GUARD", true)		
	end

end
