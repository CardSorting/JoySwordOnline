-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ Lenoas / 2011/5/9 / 대전용 대련 도우미 bot (레나)/
	 
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
	MOTION_FILE_NAME	= "Npc_RENA_02.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4500,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 725,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2200,
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

	HYPER_BOOST_RIGHT	= "HyperBoostRightGreen",
	HYPER_BOOST_LEFT	= "HyperBoostLeftGreen",
	HYPER_MODE_COLOR_R = 0.3,
	HYPER_MODE_COLOR_G = 1.0,
	HYPER_MODE_COLOR_B = 0.3,
	HYPER_MODE_COLOR_A = 1.0,
	
	
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
		WEAPON_FILE_NAME			= "Mesh_Lire_Basic_Weapon_Long_Bow.X",
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
	-- 시작모션입니다. 노전직 레나는 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_RENA_START",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_START_FRAME_MOVE"			},
	
	-- 승리모션입니다. 노전직 레나는 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_RENA_WIN",							},
    { STATE_NAME = "PVP_BOT_RENA_WIN2",							},
	
	-- 승리모션입니다. 노전직 레나는 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_RENA_LOSE",							},
    { STATE_NAME = "PVP_BOT_RENA_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_RENA_WAIT",							},
	{ STATE_NAME = "PVP_BOT_RENA_ST_WAIT",							},

	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_RENA_WALK",							},
    { STATE_NAME = "PVP_BOT_RENA_DASH",							},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_MOVE_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_MOVE",					},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_MOVE_FINISH",			},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_RENA_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_RENA_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지, 2단 점프) 입니다.
	{ STATE_NAME = "PVP_BOT_RENA_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_RENA_DOUBLE_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_RENA_DASH_DOUBLE_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_RENA_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_RENA_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_RENA_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_RENA_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_RENA_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_RENA_JUMP_LANDING",					},
	
	-- 2단 점프 z 공격
	{ STATE_NAME = "PVP_BOT_RENA_DOUBLE_JumpAttackZ",					STATE_COOL_TIME = 3,							},
	{ STATE_NAME = "PVP_BOT_RENA_DOUBLE_JumpAttackZ_LANDING",						},

	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_RENA_ComboZ",					STATE_COOL_TIME = 2,							},
	{ STATE_NAME = "PVP_BOT_RENA_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_RENA_ComboZZZ",						},
	{ STATE_NAME = "PVP_BOT_RENA_ComboZZZZ",			},
	
	-- zzz↑z 콤보
	{ STATE_NAME = "PVP_BOT_RENA_ComboZZZupZ",						},
	
	-- xxxx 콤보
	{ STATE_NAME = "PVP_BOT_RENA_ComboX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_ComboX_FRAME_MOVE",			STATE_COOL_TIME = 5,							},
	{ STATE_NAME = "PVP_BOT_RENA_ComboXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_ComboXX_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_RENA_ComboXXX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_ComboXXX_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_RENA_ComboXXXX",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_ComboXXXX_FRAME_MOVE"		},
	
	-- 대시점프 Z
	{ STATE_NAME = "PVP_BOT_RENA_DashJump",						},
	{ STATE_NAME = "PVP_BOT_RENA_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_RENA_DashJumpComboZ",							STATE_COOL_TIME = 3,				},

	-- 대시 x 공격
	{ STATE_NAME = "PVP_BOT_RENA_DashX",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DashX_FRAME_MOVE",			STATE_COOL_TIME = 5,					},
	
	-- 대시 zz 콤보 (z에서 zz으로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_RENA_DashComboZ",								STATE_COOL_TIME = 3,					},
	{ STATE_NAME = "PVP_BOT_RENA_DashComboZZ",					},
	
	-- 점프 z 공격 (위협적이기 보다는 뜬금없이 시행합니다.)
	{ STATE_NAME = "PVP_BOT_RENA_JumpZ",										STATE_COOL_TIME = 3,					},
		
	-- 점프 x 공격 (xxxx하다가 뒤로 밀려 떨어질 때 주로 시행합니다.)
	{ STATE_NAME = "PVP_BOT_RENA_JumpX",					LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_JumpX_FRAME_MOVE",					STATE_COOL_TIME = 3,					},
	
	-- 스페셜 액티브 '레일 스팅어'를 사용합니다.
	{ STATE_NAME = "PVP_BOT_RENA_Rail_Stinger",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_Rail_Stinger_FRAME_MOVE"	 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_RENA_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_BOOST_POWER_FRAME_MOVE"	},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_RENA_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_RENA_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_RENA_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_RENA_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RENA_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_RENA_DAMAGE_REVENGE",				},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_RENA_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_RENA_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_RENA_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_RENA_DYING_LAND_STATE_START",			},

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_RENA_START",
	WAIT_STATE					= "PVP_BOT_RENA_WAIT",
	WIN_STATE					= "PVP_BOT_RENA_WIN",
	LOSE_STATE					= "PVP_BOT_RENA_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_RENA_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_RENA_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_RENA_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_RENA_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_RENA_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_RENA_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_RENA_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_RENA_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_RENA_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_RENA_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_RENA_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_RENA_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_RENA_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"PVP_BOT_RENA_DAMAGE_AIR_DOWN","PVP_BOT_RENA_DAMAGE_AIR_FALL",
	"PVP_BOT_RENA_STAND_UP_FRONT","PVP_BOT_RENA_STAND_UP_BACK",
	"PVP_BOT_RENA_JUMP_DOWN","PVP_BOT_RENA_JUMP_LANDING",},	
	WAIT_STATES                 = { "PVP_BOT_RENA_ST_WAIT", },				

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_RENA_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_RENA_DYING_BACK",
	DYING_SKY					= "PVP_BOT_RENA_DYING_FRONT",

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
PVP_BOT_RENA_WIN =
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
PVP_BOT_RENA_WIN2 =
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
PVP_BOT_RENA_LOSE =
{
	ANIM_NAME					= "LobbyLose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
PVP_BOT_RENA_LOSE2 =
{
	ANIM_NAME					= "Lose",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	RIGHT						= TRUE,
		
	RIGHT						= TRUE,
	INVINCIBLE					= { 0, 100, },	

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_RENA_START =
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	APPLY_ANIM_SPEED_BY_ITEM_ABILITY	= FALSE,
		
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		

	IMMADIATE_PACKET_SEND	= TRUE,

	-- 시작 모션 후 5초 뒤 부터 행동을 시작합니다.
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_WAIT",		"CT_PVP_BOT_RENA_WAIT"	},
	},
	CT_PVP_BOT_RENA_WAIT =
	{
		STATE_TIME_OVER	= 5.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_RENA_BOOST_POWER",	"CF_PVP_BOT_RENA_BOOST_POWER",									},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RENA_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RENA_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RENA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RENA_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RENA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RENA_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RENA_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashX",     				"CT_PVP_BOT_RENA_DashX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_ComboZ",     				"CT_PVP_BOT_RENA_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_ComboX",     				"CT_PVP_BOT_RENA_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WALK",         			"CT_PVP_BOT_RENA_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DASH",         			"CT_PVP_BOT_RENA_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_JUMP_UP_DIR",         		"CT_PVP_BOT_RENA_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_JUMP_UP",         			"CT_PVP_BOT_RENA_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashJump",          		"CT_PVP_BOT_RENA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_Rail_Stinger",          		"CT_PVP_BOT_RENA_Rail_Stinger",      		},
		
	},

	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	
	CT_PVP_BOT_RENA_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 33,
	},
	CT_PVP_BOT_RENA_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 30,
	},
	
	CT_PVP_BOT_RENA_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
	
	CT_PVP_BOT_RENA_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_RENA_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},
		
	CT_PVP_BOT_RENA_Rail_Stinger =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
		-- RATE						= 20,
	},		
	
	CT_PVP_BOT_RENA_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_RENA_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RENA_ST_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	INVINCIBLE = { -1, -1, 0.5, 0.5 },

	VIEW_TARGET     = TRUE, 
		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	-- 0.5초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_INTERVAL_TIME0	= 0.5,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_RENA_BOOST_POWER",	"CF_PVP_BOT_RENA_BOOST_POWER",									},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RENA_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RENA_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RENA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RENA_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RENA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RENA_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RENA_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashX",     				"CT_PVP_BOT_RENA_DashX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_ComboZ",     				"CT_PVP_BOT_RENA_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_ComboX",     				"CT_PVP_BOT_RENA_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WALK",         			"CT_PVP_BOT_RENA_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DASH",         			"CT_PVP_BOT_RENA_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_JUMP_UP_DIR",         		"CT_PVP_BOT_RENA_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_JUMP_UP",         			"CT_PVP_BOT_RENA_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashJump",          		"CT_PVP_BOT_RENA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_Rail_Stinger",          		"CT_PVP_BOT_RENA_Rail_Stinger",      		},
		
	},

	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	
	CT_PVP_BOT_RENA_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 33,
	},
	CT_PVP_BOT_RENA_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,	
		RATE						= 30,
	},
	
	CT_PVP_BOT_RENA_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 20,
	},
	
	CT_PVP_BOT_RENA_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_RENA_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 20,
	},
		
	CT_PVP_BOT_RENA_Rail_Stinger =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
		-- RATE						= 20,
	},		
	
	CT_PVP_BOT_RENA_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_RENA_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RENA_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",													},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RENA_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RENA_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RENA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RENA_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RENA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RENA_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RENA_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_ComboZ",     				"CT_PVP_BOT_RENA_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_ComboX",     				"CT_PVP_BOT_RENA_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",         			"CT_PVP_BOT_RENA_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DASH",         			"CT_PVP_BOT_RENA_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashJump",          		"CT_PVP_BOT_RENA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_JUMP_UP_DIR",         		"CT_PVP_BOT_RENA_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_JUMP_UP",         			"CT_PVP_BOT_RENA_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_Rail_Stinger",          		"CT_PVP_BOT_RENA_Rail_Stinger",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_RENA_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 75,
	},
	
	CT_PVP_BOT_RENA_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,	
		RATE						= 50,
	},
	
	CT_PVP_BOT_RENA_Rail_Stinger =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 33,
	},
			
	CT_PVP_BOT_RENA_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_RENA_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 25,
	},
	
	
	CT_PVP_BOT_RENA_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
		
	CT_PVP_BOT_RENA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 15,
	},
	
	CT_PVP_BOT_RENA_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 33,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_RENA_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashComboZ",     			"CT_PVP_BOT_RENA_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashX",         			"CT_PVP_BOT_RENA_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashJump",          		"CT_PVP_BOT_RENA_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DashJump",          		"CT_PVP_BOT_RENA_DashJump2",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RENA_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RENA_BACKWARD_DASH_READY",   },
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DASH_END",          		"CT_PVP_BOT_RENA_DASH_END",      		},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RENA_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RENA_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RENA_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RENA_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RENA_JUMP_DOWN_DIR",														},
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_RENA_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
		
	CT_PVP_BOT_RENA_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	
	CT_PVP_BOT_RENA_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	
	CT_PVP_BOT_RENA_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	
	
	CT_PVP_BOT_RENA_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RENA_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 80,
	},
}

-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 걸어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_RENA_BACKWARD_MOVE_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_BACKWARD_MOVE",	"CT_PVP_BOT_RENA_BACKWARD_MOVE",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_BACKWARD_MOVE =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_RENA_BACKWARD_MOVE = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY5",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY6",       	     	},
		
		
	},
	
	
	-- 적당히 걸어갔다가 뒤를 돌아봅니다.
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 10,
	},
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 15,
	},
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY3 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 20,
	},
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY4 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		RATE						= 40,
	},
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY5 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		RATE						= 60,
	},
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY6 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		RATE						= 80,
	},
	

}

PVP_BOT_RENA_BACKWARD_MOVE_FINISH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_BACKWARD_MOVE_FINISH",	"CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_BACKWARD_MOVE_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},


}
PVP_BOT_RENA_BACKWARD_MOVE_FINISH = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT5",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WALK",     "CT_PVP_BOT_RENA_WALK",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_RENA_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_RENA_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 40,
	},
	CT_PVP_BOT_RENA_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 50,
	},
	CT_PVP_BOT_RENA_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 60,
	},
	
	CT_PVP_BOT_RENA_WAIT5 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
	},
	-- 그냥 앞으로 걸어가 버립니다.
	CT_PVP_BOT_RENA_WALK =
	{
		ANIM_EVENT_TIMER			= 0.6,
		RATE						= 100,
	},

}


-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_RENA_BACKWARD_DASH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_BACKWARD_DASH",	"CT_PVP_BOT_RENA_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_RENA_BACKWARD_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY4",       	     	},
		
	},
	
	
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 15,
	},
	CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 20,
	},
	CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY3 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 25,
	},
	CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY4 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		RATE						= 30,
	},
	

}

PVP_BOT_RENA_BACKWARD_DASH_FINISH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_BACKWARD_DASH_FINISH",	"CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_RENA_BACKWARD_DASH_FINISH = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_WAIT",     "CT_PVP_BOT_RENA_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RENA_DASH",     "CT_PVP_BOT_RENA_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_RENA_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_RENA_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	CT_PVP_BOT_RENA_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 70,
	},
	CT_PVP_BOT_RENA_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 80,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_RENA_DASH =
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
PVP_BOT_RENA_DASH_END =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",			},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_JUMP_UP =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpZ",          	"CT_PVP_BOT_RENA_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpZ",          	"CT_PVP_BOT_RENA_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpX",          	"CT_PVP_BOT_RENA_JumpX",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_RENA_DOUBLE_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_RENA_JUMP_DOWN",		},
	},
	
	CT_PVP_BOT_RENA_JumpX =
	{
		ANIM_EVENT_TIMER			= 0.333,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_RENA_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.333,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	CT_PVP_BOT_RENA_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	CT_PVP_BOT_RENA_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
}

PVP_BOT_RENA_JUMP_DOWN =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpZ",          	"CT_PVP_BOT_RENA_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_RENA_DOUBLE_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_RENA_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
	CT_PVP_BOT_RENA_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 15,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_JUMP_UP_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpZ",          	"CT_PVP_BOT_RENA_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpZ",          	"CT_PVP_BOT_RENA_JumpZ2",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_RENA_DOUBLE_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_RENA_JUMP_DOWN_DIR",	},
	},
	
	CT_PVP_BOT_RENA_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	CT_PVP_BOT_RENA_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	CT_PVP_BOT_RENA_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.4,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_JUMP_DOWN_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_JumpZ",          	"CT_PVP_BOT_RENA_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_RENA_DOUBLE_JUMP_UP",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_RENA_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
	CT_PVP_BOT_RENA_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 15,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_JUMP_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
}

--------------------------------------------------------------------------
-- 레나 2단 점프 입니다.(일반)
PVP_BOT_RENA_DOUBLE_JUMP_UP =
{
	ANIM_NAME			= "DoubleJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	ANIM_SPEED			= 1.3,
	LAND_CONNECT		= FALSE,
	
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"],
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JumpAttackZ",          	"CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JumpAttackZ",          	"CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ =
	{
		ANIM_EVENT_TIMER			= 0.233,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
	CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ2 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
}

-- 레나 2단 점프 입니다.(대시 중)
PVP_BOT_RENA_DASH_DOUBLE_JUMP_UP =
{
	ANIM_NAME			= "DoubleJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	ANIM_SPEED			= 1.3,
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"] * 1.1,
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"],
	
	
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JumpAttackZ",          	"CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RENA_DOUBLE_JumpAttackZ",          	"CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ =
	{
		ANIM_EVENT_TIMER			= 0.2,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
	CT_PVP_BOT_RENA_DOUBLE_JumpAttackZ2 =
	{
		ANIM_EVENT_TIMER			= 0.55,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
}

--------------------------------------------------------------------------
-- 대시 점프

PVP_BOT_RENA_DashJump = 
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
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_DashJumpComboX",	"CT_PVP_BOT_RENA_DashJumpComboX1",	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_DashJumpComboX",	"CT_PVP_BOT_RENA_DashJumpComboX2",	},
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_DashJumpComboX",	"CT_PVP_BOT_RENA_DashJumpComboX3",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_DASH_DOUBLE_JUMP_UP",          	"CT_PVP_BOT_RENA_DASH_DOUBLE_JUMP_UP",      		},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_RENA_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_RENA_DashJumpComboX1 =
	{
		ANIM_EVENT_TIMER			= 0.033,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	CT_PVP_BOT_RENA_DashJumpComboX2 =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_RENA_DashJumpComboX3 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 60,
	},
	CT_PVP_BOT_RENA_DASH_DOUBLE_JUMP_UP =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_RENA_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",											},
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

-- 2단점프 z 입니다.

PVP_BOT_RENA_DOUBLE_JumpAttackZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DoubleJumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	SPEED_X				= 0,
	SPEED_Y				= 0,
	
	SOUND_PLAY0			= { 0.1, "FootAttack.ogg" },
	SOUND_PLAY1			= { 0.05, "LenaVoice_Shout04.ogg" },

	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	ATTACK_TIME0		= { 0.03, 100 },
	
	DAMAGE_DATA = 
	{
					
		
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.2,
		},
		

		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
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
		
	
	},		
	
	UNIT_SLASH_TRACE0 = { 1, 0.02, 100, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },        

	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_DOUBLE_JumpAttackZ_LANDING",	},
	},
}

PVP_BOT_RENA_DOUBLE_JumpAttackZ_LANDING = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DoubleJumpAttackZLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	TRANSITION			= FALSE,
	
	SOUND_PLAY0			= { 0.01, "Step.ogg" },    

	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
}
-- 대시점프 z 입니다.

PVP_BOT_RENA_DashJumpComboZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	ANIM_NAME			= "DashJumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 2.0,
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 0.3,
	
	ATTACK_TIME0		= { 0.18, 0.258, },
		
	SOUND_PLAY0			= { 0.02, "FootAttack.ogg" },
	
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.2,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.5,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 0.5,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		
		STOP_TIME_ATT			= 0.05,
		STOP_TIME_DEF			= 0.05,
		
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 440,
		

	},
	
	UNIT_SLASH_TRACE0 = { 1, 0.1, 0.37, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },    

	EVENT_PROCESS =
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_DashJump_landing",	},
	},
}


-- zzzz 콤보 입니다.
PVP_BOT_RENA_ComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ1",
	ANIM_SPEED			= 1.03,
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
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
			
		FORCE_DOWN			= 7,
		STOP_TIME_DEF			= 0.05,
			
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
	    TECH_POINT				= 22,
	},
	
	UNIT_SLASH_TRACE0 = { 2, 0.13, 0.24, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },   

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboZZ",	"CT_PVP_BOT_RENA_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboZZ",	"CT_PVP_BOT_RENA_ComboZZ2",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.31,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_RENA_ComboZZ2 =
	{
		ANIM_EVENT_TIMER			= 0.31,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},
}

PVP_BOT_RENA_ComboZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ2",
	ANIM_SPEED			= 1.2,
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
		
		FORCE_DOWN			= 7,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		STOP_TIME_ATT			= 0.05,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
	    TECH_POINT				= 26,
	},
	
	UNIT_SLASH_TRACE0 = { 1, 0.29, 0.4, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },      

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboZZZ",	"CT_PVP_BOT_RENA_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.54,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_RENA_ComboZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	ANIM_NAME			= "ComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SOUND_PLAY0			= { 0.125, "FootAttack.ogg" },
	
	ATTACK_TIME0		= { 0.158, 0.185 },	
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	CHANGE_TIME			= 0.4,
	SKIP_TIME			= 0.4,
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.3,
		},
		
		FORCE_DOWN			= 15,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.1,
		STOP_TIME_DEF			= 0.05,
			
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		CLEAR_SCREEN			= 1,
		
	    TECH_POINT				= 65,
	},
	
	COMBO_GUIDE         = { "Z", "ZZZ" },
	
	UNIT_SLASH_TRACE0 = { 2, 0.11, 0.28, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },       


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboZZZupZ", 	"CT_PVP_BOT_RENA_ComboZZZupZ", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboZZZZ",	"CT_PVP_BOT_RENA_ComboZZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_ComboZZZupZ =
	{
		ANIM_EVENT_TIMER			= 0.55,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 25,
	},
	CT_PVP_BOT_RENA_ComboZZZZ =
	{
		ANIM_EVENT_TIMER			= 0.56,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}


PVP_BOT_RENA_ComboZZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	SKIP_TIME			= 0.7,
	
	ATTACK_TIME0		= { 0.339, 0.365 },	
	
	SOUND_PLAY0			= { 0.27, "FootAttack2.ogg" },
	SOUND_PLAY1			= { 0.32, "LenaVoice_Shout03.ogg" },
	
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
			PHYSIC		= 1.9,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.1,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		CLEAR_SCREEN			= 1,		
		
		TECH_POINT				= 152,
	},
		
	UNIT_SLASH_TRACE0 = { 2, 0.28, 0.38, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },    

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
}



PVP_BOT_RENA_ComboZZZupZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4Up",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	ANIM_TIME			= 0.8,
	
	LAND_CONNECT		= FALSE,
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	
	
	SKIP_TIME			= 0.55,
		
	SOUND_PLAY0			= { 0.24, "FootAttack2.ogg" },
	SOUND_PLAY1			= { 0.24, "LenaVoice_Shout03.ogg" },
	
	ATTACK_TIME0		= { 0.29, 0.32 },	
	
	ENABLE_ATTACK_BOX = 
	{
		"Rfoot",
	},
	
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_SLASH2"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.4
		},
		
		FORCE_DOWN			= 10,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 2.0,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.3,
			
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 240,
	},
	
	COMBO_GUIDE         = { "Z", "ZZZUpZ" },

	UNIT_SLASH_TRACE0 = { 2, 0.24, 0.33, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },      

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
}

-- xxxx 콤보입니다.
PVP_BOT_RENA_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	--LAND_CONNECT		= FALSE,
	LAND_CONNECT		= TRUE,
	CHANGE_TIME			= 0.3,
	SKIP_TIME			= 0.6,


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboXX",	"CT_PVP_BOT_RENA_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	CT_PVP_BOT_RENA_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.35,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_RENA_ComboXX =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboXXX",	"CT_PVP_BOT_RENA_ComboXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.35,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_RENA_ComboXXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	CHANGE_TIME			= 0.6,
	SKIP_TIME			= 0.8,
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_ComboXXXX",	"CT_PVP_BOT_RENA_ComboXXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JumpX",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_ComboXXXX =
	{
		ANIM_EVENT_TIMER			= 0.75,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_RENA_ComboXXXX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboX4",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	--LAND_CONNECT		= FALSE,
	LAND_CONNECT		= TRUE,

	SOUND_PLAY0			= { 0.391, "LenaVoice_Shout01.ogg" },
	
	SKIP_TIME			= 1.3,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
}
	
-- 점프z 공격입니다.
PVP_BOT_RENA_JumpZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0		= { 0.177, 100, },
	
	ANIM_NAME			= "JumpAttackZ",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	
	LAND_CONNECT		= FALSE,
		
	SOUND_PLAY0			= { 0.06, "FootAttack.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"Lfoot",
	},
	
	ATTACK_TIME0		= { 0.16, 100 },
		
	DAMAGE_DATA = 
	{
					
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_KICK_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		
		FORCE_DOWN			= 15,
		TECH_POINT				= 24,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_JUMP_LANDING",	},
	},
}

-- 점프x 공격입니다.
PVP_BOT_RENA_JumpX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "JumpAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= 0.01,
	SPEED_Y				= 0.01,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_JUMP_LANDING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PVP_BOT_RENA_JUMP_DOWN",	},
	},
}

-- 대시X 공격입니다.
PVP_BOT_RENA_DashX =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashAttackX",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	CAN_PASS_UNIT		= TRUE,
	CAN_PUSH_UNIT		= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
}


-- 대시ZZ 콤보 공격입니다.
PVP_BOT_RENA_DashComboZ =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "SLIDE_KICK_Start",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.21, "sliding.ogg" },
	
	ENABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE2_Lfoot",
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
			PHYSIC		= 1.3,
		},
		
		FORCE_DOWN			= 10,
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_DashComboZZ",	"CT_PVP_BOT_RENA_DashComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_DashComboZZ",	"CT_PVP_BOT_RENA_DashComboZZ2",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	CT_PVP_BOT_RENA_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.5,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},
	
	CT_PVP_BOT_RENA_DashComboZZ2 =
	{
		ANIM_EVENT_TIMER			= 0.49,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
	
	
	
}

PVP_BOT_RENA_DashComboZZ =
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
		
		FORCE_DOWN			= 15,
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.3,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
				
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 300,
	},
	
	COMBO_GUIDE         = { "R", "RZZ" },
	
	
	UNIT_SLASH_TRACE0 = { 2, 0.16, 0.37, SLASH_TRACE_TYPE["STT_CONSTANT_WIDTH"], SLASH_TRACE_CONDITION["STC_RENA_NATURE_FORCE"], },       
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
}


-- 레일 스팅어!

PVP_BOT_RENA_Rail_Stinger = 
{

	ANIM_NAME			= "SP1a_PierceArrow",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	
	INVINCIBLE			= { 0, 0.75, },
	
	SPEED_X				= 0.0,
	SPEED_Y				= 0.0,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PVP_BOT_RAIL_STINGER", 0.48,
	},		
	
	AFTER_IMAGE			= { 0, 100, },
		
	STOP_ALL_UNIT0		= { 0.08, 1.2, 0.6 },
	
	SOUND_PLAY0			= { 0.06, "Energy.ogg" },
	SOUND_PLAY1			= { 0.06, "LenaVoice_RailStinger.ogg" },

	STATE_STRING		= STR_ID_4269,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
}



PVP_BOT_RENA_BOOST_POWER =
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
	
	
	SOUND_PLAY0			= { 0.01, "Energy.ogg" },	
	SOUND_PLAY1			= { 0.2, "Slash.ogg" },	
	SOUND_PLAY2			= { 0.83, "Break.ogg" },	
	SOUND_PLAY3			= { 0.83, "Change.ogg" },	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RENA_WAIT",												},
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



PVP_BOT_RENA_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RENA_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RENA_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	CT_PVP_BOT_RENA_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,



	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RENA_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	CT_PVP_BOT_RENA_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_BIG_FRONT =
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
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RENA_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	CT_PVP_BOT_RENA_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_BIG_BACK =
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
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RENA_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RENA_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_WAIT",		},
	},
	
	
	CT_PVP_BOT_RENA_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_DOWN_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_RENA_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RENA_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_DOWN_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_RENA_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RENA_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_FLY_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_FLY_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_AIR_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_RENA_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_RENA_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_STAND_UP_FRONT",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_RENA_STAND_UP_FRONT =
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE			= { 0, 100, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_ST_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RENA_STAND_UP_BACK =
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },

    --SOUND_PLAY0			= { 0.283, "PVP_BOT_RENA_StandUp.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RENA_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RENA_ST_WAIT",      },
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_RENA_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,

	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.19, "Down.ogg" }, 
	SOUND_PLAY1	            	= { 0.19, "LenaVoice_DieScream1.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_RENA_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
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
function PVP_BOT_RENA_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_RENA_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_RENA_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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

-- 레나 시작 시 엠 50을 채워줍니다.
function PVP_BOT_RENA_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp +50)
	end		     
	  
end	



function PVP_BOT_RENA_Rail_Stinger_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

		
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_CutIn_Lena_1.dds", 655, 655, 192, 496, 0)

		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
        
	  
end	


function PVP_BOT_RENA_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
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


function PVP_BOT_RENA_ComboX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_RENA_ARROW", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
end	

function PVP_BOT_RENA_ComboXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_RENA_ARROW", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
end	

function PVP_BOT_RENA_ComboXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_LOW_DEGREE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_RENA_ARROW_LOW_DEGREE", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
end	

function PVP_BOT_RENA_ComboXXXX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	if pNPCUnit:AnimEventTimer_LUA( 0.391 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_RENA_ARROW_POWER", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	

function PVP_BOT_RENA_DashX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.31 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL_REVERSE", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_RENA_ARROW_REVERSE", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	


function PVP_BOT_RENA_JumpX_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.21 ) then	
		
		if pNPCUnit:GetNowMP() < 4.0 then
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_MAGIC_FAIL", pNPCUnit )		
		else
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_PVP_BOT_RENA_ARROW", pNPCUnit )
			nowMp = pNPCUnit:GetNowMP()
			pNPCUnit:SetNowMP(nowMp - 4)
		end
	end
	
end	

function CF_PVP_BOT_RENA_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if fRemainHPRate < 0.1 then	
	
		if pNPCUnit:GetHyperModeCount() > 0 then
		
			return true
			
		end
	
	end

	return false

end


