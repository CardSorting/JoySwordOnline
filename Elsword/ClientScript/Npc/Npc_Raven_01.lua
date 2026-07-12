-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ Lenoas / 2011/5/4 / 대전용 대련 도우미 bot (레이븐)/
	 
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
		"ElswordVoice_DieScream1.ogg",
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
	MOTION_FILE_NAME	= "Npc_Raven_01.x",
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

	HYPER_BOOST_RIGHT	= "HyperBoostRight",
	HYPER_BOOST_LEFT	= "HyperBoostLeft",
	
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
		WEAPON_FILE_NAME			= "Mesh_Raven_Base_Weapon_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
			
		USE_SLASH_TRACE				= TRUE,						
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 노전직 레이븐은 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_START",							},
	
	-- 승리모션입니다. 노전직 레이븐은 2개의 승리포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_RAVEN_WIN",							},
    { STATE_NAME = "PVP_BOT_RAVEN_WIN2",							},
	
	-- 승리모션입니다. 노전직 레이븐은 2개의 패배포즈를 가지고 있습니다.
    { STATE_NAME = "PVP_BOT_RAVEN_LOSE",							},
    { STATE_NAME = "PVP_BOT_RAVEN_LOSE2",							},
	
	{ STATE_NAME = "PVP_BOT_RAVEN_WAIT",							},
	-- 기상시 무적이 되는 WAIT 입니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_STANDUP_WAIT",							},

	-- 이동과 관련된 동작(걷기, 뛰기, 타격 실패시 뒤돌아보기, 뛰다 멈추기, 뒤로 걸어가기, 뒤로 대시) 입니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_WALK",							},
    { STATE_NAME = "PVP_BOT_RAVEN_DASH",							},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_MOVE_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_MOVE",					},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH",			},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_DASH_READY",										STATE_COOL_TIME = 1,					},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_DASH",					},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY",	},
    { STATE_NAME = "PVP_BOT_RAVEN_BACKWARD_DASH_FINISH",			},
    { STATE_NAME = "PVP_BOT_RAVEN_DASH_END",						LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DASH_STATE_END",						},

	-- 점프와 관련된 동작(뛰어오르기, 뛰어내리기, 착지) 입니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_JUMP_UP",						},
	{ STATE_NAME = "PVP_BOT_RAVEN_JUMP_DOWN",						LUA_STATE_END_FUNC = "PVP_BOT_RAVEN_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "PVP_BOT_RAVEN_JUMP_UP_DIR",					},
	{ STATE_NAME = "PVP_BOT_RAVEN_JUMP_DOWN_DIR",					LUA_STATE_END_FUNC = "PVP_BOT_RAVEN_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "PVP_BOT_RAVEN_JUMP_LANDING",					},

	-- zzzz 콤보 (멈추거나 타격을 체크하지 않습니다. zzz을 사용한 후 낮은 확률로 대시점프 xx를 시전합니다.)
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboZ",					STATE_COOL_TIME = 2,							},
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboZZ",						},
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboZZZ",						},
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboZZZZ",					},
	
	-- zzxx 콤보
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboZZX",						},
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboZZXX",						},
	
	-- xxx 콤보 (xx에서 xxx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboX",					STATE_COOL_TIME = 4,							},
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboXX",						},
	{ STATE_NAME = "PVP_BOT_RAVEN_ComboXXX",			},
	
	-- 대시점프 xx 콤보 (x에서 xx로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_RAVEN_DashJump",						},
	{ STATE_NAME = "PVP_BOT_RAVEN_DashJump_landing",				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DashJumpComboZ",							STATE_COOL_TIME = 5,				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DashJumpComboZZ",				},

	-- 대시 x 공격
	{ STATE_NAME = "PVP_BOT_RAVEN_DashX",						STATE_COOL_TIME = 3,			},
	
	-- 대시 zz 콤보 (z에서 zz으로 넘어가지 않고 멈추기도 합니다.)
	{ STATE_NAME = "PVP_BOT_RAVEN_DashComboZ",								STATE_COOL_TIME = 5,					},
	{ STATE_NAME = "PVP_BOT_RAVEN_DashComboZZ",					},
	
	-- 점프 z 공격 (위협적이기 보다는 뜬금없이 시행합니다.)
	{ STATE_NAME = "PVP_BOT_RAVEN_JumpZ",										STATE_COOL_TIME = 3,					},
	
	-- 스페셜 액티브 '메가 슬래시'를 사용합니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_Maximum_Cannon",					STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_Maximum_Cannon_FRAME_MOVE"	 },
	
	-- 각성을 합니다 '투캉!'
	{ STATE_NAME = "PVP_BOT_RAVEN_BOOST_POWER",					STATE_COOL_TIME = 5,											LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_BOOST_POWER_FRAME_MOVE"	},
	
	-- 리액션 관련
	-- 정면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_SMALL_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_FRONT_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_DOWN_FRONT",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_FLY_FRONT",				},
	
	-- 후면에서 맞았을 때의 리액션 입니다. (small, big, down, fly)
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_BACK_FRAME_MOVE"				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_DOWN_BACK",				LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_DOWN_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_FLY_BACK",				},
	
	-- 공중에서 맞았을 때의 리액션 입니다. (바닥에 팽개쳐질 때(down), 아래로 추락할 때(fall), 위로 띄워질 때(up), 팽개쳐저서 바닥에 튕기는 모션(down_landing)
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_AIR",					},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_AIR_DOWN",				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_AIR_UP",					},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_AIR_FALL",				},
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING",		LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	-- 기상과 관련된 동작 입니다.(앞뒤 일반기상, 앞뒤 기상공격)
	{ STATE_NAME = "PVP_BOT_RAVEN_STAND_UP_FRONT",				},
	{ STATE_NAME = "PVP_BOT_RAVEN_STAND_UP_BACK",					},
	--{ STATE_NAME = "PVP_BOT_RAVEN_STAND_UP_ATTACK_FRONT",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_STAND_UP_ATTACK_FRONT_FRAME_MOVE"  	},
    --{ STATE_NAME = "PVP_BOT_RAVEN_STAND_UP_ATTACK_BACK",			LUA_FRAME_MOVE_FUNC = "PVP_BOT_RAVEN_STAND_UP_ATTACK_BACK_FRAME_MOVE"   	},

	-- 반격에 당했을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_DAMAGE_REVENGE",				},

	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "PVP_BOT_RAVEN_DYING_FRONT",					LUA_STATE_START_FUNC = "PVP_BOT_RAVEN_DYING_LAND_STATE_START",			},
	{ STATE_NAME = "PVP_BOT_RAVEN_DYING_BACK",					LUA_STATE_START_FUNC = "PVP_BOT_RAVEN_DYING_LAND_STATE_START",			},

	-- NPC 리액트별 state 연결
	START_STATE					= "PVP_BOT_RAVEN_START",
	WAIT_STATE					= "PVP_BOT_RAVEN_WAIT",
	WIN_STATE					= "PVP_BOT_RAVEN_WIN",
	LOSE_STATE					= "PVP_BOT_RAVEN_LOSE",

	SMALL_DAMAGE_LAND_FRONT		= "PVP_BOT_RAVEN_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PVP_BOT_RAVEN_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PVP_BOT_RAVEN_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PVP_BOT_RAVEN_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PVP_BOT_RAVEN_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PVP_BOT_RAVEN_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "PVP_BOT_RAVEN_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "PVP_BOT_RAVEN_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "PVP_BOT_RAVEN_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "PVP_BOT_RAVEN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "PVP_BOT_RAVEN_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "PVP_BOT_RAVEN_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "PVP_BOT_RAVEN_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = { "PVP_BOT_RAVEN_DAMAGE_AIR_DOWN","PVP_BOT_RAVEN_DAMAGE_AIR_FALL","PVP_BOT_RAVEN_STAND_UP_FRONT","PVP_BOT_RAVEN_STAND_UP_BACK",
		"PVP_BOT_RAVEN_JUMP_DOWN","PVP_BOT_RAVEN_JUMP_LANDING",},	
	WAIT_STATES                 = { "PVP_BOT_RAVEN_STANDUP_WAIT", },		

	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "PVP_BOT_RAVEN_DYING_FRONT",
	DYING_LAND_BACK				= "PVP_BOT_RAVEN_DYING_BACK",
	DYING_SKY					= "PVP_BOT_RAVEN_DYING_FRONT",

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
PVP_BOT_RAVEN_WIN =
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
PVP_BOT_RAVEN_WIN2 =
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

PVP_BOT_RAVEN_LOSE =
{
	ANIM_NAME					= "LobbyLose",
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
PVP_BOT_RAVEN_LOSE2 =
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
PVP_BOT_RAVEN_START =
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_WAIT",		"CT_PVP_BOT_RAVEN_WAIT"	},
	},
	CT_PVP_BOT_RAVEN_WAIT =
	{
		STATE_TIME_OVER	= 5.0,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",													},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RAVEN_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RAVEN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RAVEN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RAVEN_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RAVEN_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_ComboZ",     				"CT_PVP_BOT_RAVEN_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_ComboX",     				"CT_PVP_BOT_RAVEN_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WALK",         			"CT_PVP_BOT_RAVEN_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DASH",         			"CT_PVP_BOT_RAVEN_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_JUMP_UP_DIR",         		"CT_PVP_BOT_RAVEN_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_JUMP_UP",         			"CT_PVP_BOT_RAVEN_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashJump",          		"CT_PVP_BOT_RAVEN_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_Maximum_Cannon",          		"CT_PVP_BOT_RAVEN_Maximum_Cannon",      		},
		
	},

	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	
	CT_PVP_BOT_RAVEN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 33,
	},
	
	CT_PVP_BOT_RAVEN_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 475,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_RAVEN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 25,
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_RAVEN_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
		
	CT_PVP_BOT_RAVEN_Maximum_Cannon =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 20,
	},		
	
	CT_PVP_BOT_RAVEN_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_RAVEN_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_STANDUP_WAIT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",													},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RAVEN_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RAVEN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RAVEN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RAVEN_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RAVEN_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_ComboZ",     				"CT_PVP_BOT_RAVEN_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_ComboX",     				"CT_PVP_BOT_RAVEN_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WALK",         			"CT_PVP_BOT_RAVEN_WALK",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DASH",         			"CT_PVP_BOT_RAVEN_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_JUMP_UP_DIR",         		"CT_PVP_BOT_RAVEN_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_JUMP_UP",         			"CT_PVP_BOT_RAVEN_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashJump",          		"CT_PVP_BOT_RAVEN_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_Maximum_Cannon",          		"CT_PVP_BOT_RAVEN_Maximum_Cannon",      		},
		
	},

	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	
	CT_PVP_BOT_RAVEN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 525,	
		RATE						= 33,
	},
	
	CT_PVP_BOT_RAVEN_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 475,	
		RATE						= 25,
	},
	
	CT_PVP_BOT_RAVEN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 25,
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_WALK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 7,
	},
		
	CT_PVP_BOT_RAVEN_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 400,
		RATE						= 33,
	},
		
	CT_PVP_BOT_RAVEN_Maximum_Cannon =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 20,
	},		
	
	CT_PVP_BOT_RAVEN_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_RAVEN_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_WALK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",													},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"PVP_BOT_RAVEN_BOOST_POWER",	"CF_PVP_BOT_RAVEN_BOOST_POWER",									},

		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY",   },
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RAVEN_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RAVEN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RAVEN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RAVEN_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RAVEN_JUMP_DOWN_DIR",														},
		
		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_ComboZ",     				"CT_PVP_BOT_RAVEN_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_ComboX",     				"CT_PVP_BOT_RAVEN_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",         			"CT_PVP_BOT_RAVEN_WAIT",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DASH",         			"CT_PVP_BOT_RAVEN_DASH",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashJump",          		"CT_PVP_BOT_RAVEN_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_JUMP_UP_DIR",         		"CT_PVP_BOT_RAVEN_JUMP_UP_DIR",     	 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_JUMP_UP",         			"CT_PVP_BOT_RAVEN_JUMP_UP",     		 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_Maximum_Cannon",          		"CT_PVP_BOT_RAVEN_Maximum_Cannon",      		},
		
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_RAVEN_WAIT =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 75,
	},
	
	CT_PVP_BOT_RAVEN_ComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,	
		RATE						= 45,
	},
	
	CT_PVP_BOT_RAVEN_ComboX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,	
		RATE						= 50,
	},
	
	CT_PVP_BOT_RAVEN_Maximum_Cannon =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_MP_MORE_THAN				= 100,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 20,
	},
			
	CT_PVP_BOT_RAVEN_JUMP_UP_DIR =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 20,
	},
	
	CT_PVP_BOT_RAVEN_JUMP_UP =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 25,
	},
	
	
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
		
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 15,
	},
	
	CT_PVP_BOT_RAVEN_DASH =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 800,
		RATE						= 33,
	},
		
}

--------------------------------------------------------------------------
PVP_BOT_RAVEN_DASH =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashComboZ",     			"CT_PVP_BOT_RAVEN_DashComboZ",           	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashX",         			"CT_PVP_BOT_RAVEN_DashX",       		    },
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashJump",          		"CT_PVP_BOT_RAVEN_DashJump",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DashJump",          		"CT_PVP_BOT_RAVEN_DashJump2",      		},
		
		-- 뒤로 돌아 걷거나 뛰며 거리를 벌리는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_READY", 		"CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY",  	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_READY",     	"CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY",   },
		
		-- 달려가다가 일정 거리 안이 되면 달리기를 멈추는 동작입니다.
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DASH_END",          		"CT_PVP_BOT_RAVEN_DASH_END",      		},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"PVP_BOT_RAVEN_WALK",																	},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"PVP_BOT_RAVEN_JUMP_UP",																},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"PVP_BOT_RAVEN_JUMP_UP_DIR",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"PVP_BOT_RAVEN_JUMP_DOWN",															},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"PVP_BOT_RAVEN_JUMP_DOWN_DIR",														},
	},
	
	
	-- 공격은 거리가 좀 멀어도 적당히 공격하기 시작합니다.
	
	CT_PVP_BOT_RAVEN_DashComboZ =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 60,
	},
		
	CT_PVP_BOT_RAVEN_DashJump =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 20,
	},
		
	
	CT_PVP_BOT_RAVEN_DASH_END =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	
	
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_READY =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	
	CT_PVP_BOT_RAVEN_DashJump2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 80,
	},
}

-- 보다 자연스러운 움직임을 위한 부분입니다.

-- 뒤로 걸어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_RAVEN_BACKWARD_MOVE_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_BACKWARD_MOVE",	"CT_PVP_BOT_RAVEN_BACKWARD_MOVE",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_RAVEN_BACKWARD_MOVE = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY5",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY6",       	     	},
		
		
	},
	
	
	-- 적당히 걸어갔다가 뒤를 돌아봅니다.
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 10,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 15,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY3 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 20,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY4 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		RATE						= 40,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY5 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		RATE						= 60,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY6 =
	{
		ANIM_EVENT_TIMER			= 0.6,
		RATE						= 80,
	},
	

}

PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH",	"CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},


}
PVP_BOT_RAVEN_BACKWARD_MOVE_FINISH = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT5",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WALK",     "CT_PVP_BOT_RAVEN_WALK",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_RAVEN_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_RAVEN_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 40,
	},
	CT_PVP_BOT_RAVEN_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 50,
	},
	CT_PVP_BOT_RAVEN_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 60,
	},
	
	CT_PVP_BOT_RAVEN_WAIT5 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 325,	
		RATE						= 100,
	},
	-- 그냥 앞으로 걸어가 버립니다.
	CT_PVP_BOT_RAVEN_WALK =
	{
		ANIM_EVENT_TIMER			= 0.6,
		RATE						= 100,
	},

}


-- 뒤로 뛰어가는 패턴입니다. 거리를 조금 벌려서 다시 앞을 바라보게 됩니다.
PVP_BOT_RAVEN_BACKWARD_DASH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_BACKWARD_DASH",	"CT_PVP_BOT_RAVEN_BACKWARD_DASH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_DASH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_RAVEN_BACKWARD_DASH = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",													},

		-- 정지하고 있을 때는 다음의 행동을 수행할 수 있습니다. (z입력, 걷기, 뛰기, 대시점프, 걷기와 뛰기는 강제로 수행 시키는 부분입니다.)
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY",     "CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY4",       	     	},
		
	},
	
	
	-- 뒤로 어느 정도 뛴 다음 멈춰서 앞을 바라보게 됩니다.
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 15,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY2 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 20,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY3 =
	{
		ANIM_EVENT_TIMER			= 0.3,
		RATE						= 25,
	},
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY4 =
	{
		ANIM_EVENT_TIMER			= 0.4,
		RATE						= 30,
	},
	

}

PVP_BOT_RAVEN_BACKWARD_DASH_FINISH_READY = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_BACKWARD_DASH_FINISH",	"CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_BACKWARD_DASH_FINISH =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

}
PVP_BOT_RAVEN_BACKWARD_DASH_FINISH = 
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
	
	LAND_CONNECT		= FALSE,
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT2",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT3",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_WAIT",     "CT_PVP_BOT_RAVEN_WAIT4",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "PVP_BOT_RAVEN_DASH",     "CT_PVP_BOT_RAVEN_DASH",       	     	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	-- 자연스러운 키입력처럼 보이기 위해 조금 앞으로 걸어갑니다.
	CT_PVP_BOT_RAVEN_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.1,
		RATE						= 30,
	},
	CT_PVP_BOT_RAVEN_WAIT2 =
	{
		ANIM_EVENT_TIMER			= 0.15,
		RATE						= 50,
	},
	CT_PVP_BOT_RAVEN_WAIT3 =
	{
		ANIM_EVENT_TIMER			= 0.2,
		RATE						= 70,
	},
	CT_PVP_BOT_RAVEN_WAIT4 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		RATE						= 80,
	},
	-- 그냥 앞으로 달려버립니다.
	CT_PVP_BOT_RAVEN_DASH =
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
PVP_BOT_RAVEN_DASH_END =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",			},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_JUMP_UP =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_JumpZ",          	"CT_PVP_BOT_RAVEN_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_JumpZ",          	"CT_PVP_BOT_RAVEN_JumpZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_RAVEN_JUMP_DOWN",		},
	},
	
	CT_PVP_BOT_RAVEN_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.333,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	CT_PVP_BOT_RAVEN_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
}

PVP_BOT_RAVEN_JUMP_DOWN =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_JumpZ",          	"CT_PVP_BOT_RAVEN_JumpZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_RAVEN_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_JUMP_UP_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_JumpZ",          	"CT_PVP_BOT_RAVEN_JumpZ",      		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_JumpZ",          	"CT_PVP_BOT_RAVEN_JumpZ2",      		},
		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_RAVEN_JUMP_DOWN_DIR",	},
	},
	
	CT_PVP_BOT_RAVEN_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.3,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 20,
	},
	CT_PVP_BOT_RAVEN_JumpZ2 =
	{
		ANIM_EVENT_TIMER			= 0.5,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_JUMP_DOWN_DIR =
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"PVP_BOT_RAVEN_JumpZ",          	"CT_PVP_BOT_RAVEN_JumpZ",      		},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_JUMP_LANDING",	},
	},
	
	CT_PVP_BOT_RAVEN_JumpZ =
	{
		ANIM_EVENT_TIMER			= 0.133,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 33,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_JUMP_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
}

--------------------------------------------------------------------------
-- 대시 점프

PVP_BOT_RAVEN_DashJump = 
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashJumpComboZ",	"CT_PVP_BOT_RAVEN_DashJumpComboZ1",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashJumpComboZ",	"CT_PVP_BOT_RAVEN_DashJumpComboZ2",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashJumpComboZ",	"CT_PVP_BOT_RAVEN_DashJumpComboZ3",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_RAVEN_DashJump_landing",											},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_JUMP_DOWN_DIR",											},
	},
	
	CT_PVP_BOT_RAVEN_DashJumpComboZ1 =
	{
		ANIM_EVENT_TIMER			= 0.033,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 30,
	},
	CT_PVP_BOT_RAVEN_DashJumpComboZ2 =
	{
		ANIM_EVENT_TIMER			= 0.1,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 50,
	},
	CT_PVP_BOT_RAVEN_DashJumpComboZ3 =
	{
		ANIM_EVENT_TIMER			= 0.25,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 60,
	},
}

-- 대시 점프 랜딩모션 입니다.
PVP_BOT_RAVEN_DashJump_landing = 
{
	ANIM_NAME			= "DashJumpLanding",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= FALSE,
	
	SOUND_PLAY0			= { 0.02, "Step.ogg" },	
	
	TRANSITION			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",											},
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

PVP_BOT_RAVEN_DashJumpComboZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	UNIT_SLASH_TRACE0 = { 0, 0, 100, SLASH_TRACE_TYPE["STT_DEFAULT"], },        -- HAND_SLASH_TRACE	= TRUE,
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

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 20,
		TECH_POINT				= 50,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashJumpComboZZ",	"CT_PVP_BOT_RAVEN_DashJumpComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_DashJump_landing",	},
	},
	
	CT_PVP_BOT_RAVEN_DashJumpComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.28,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 90,
	},
}

PVP_BOT_RAVEN_DashJumpComboZZ = 
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "DashJumpComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,

	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },

	SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.3,
	SPEED_Y				= 800.0,

	SOUND_PLAY0			= { 0.250, "Raven_Slash1.ogg" },
	SOUND_PLAY1			= { 0.17, "RavenVoice_Shout05.ogg" },

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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PVP_BOT_RAVEN_DashJump_landing",	},
	},
	
}


-- zzzz 콤보 입니다.
PVP_BOT_RAVEN_ComboZ = 
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

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

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 7,

		TECH_POINT				= 20,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboZZ",	"CT_PVP_BOT_RAVEN_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboZZ",	"CT_PVP_BOT_RAVEN_ComboZZ2",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_ComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.27,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	CT_PVP_BOT_RAVEN_ComboZZ2 =
	{
		ANIM_EVENT_TIMER			= 0.27,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
}

PVP_BOT_RAVEN_ComboZZ =
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

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],

		DAMAGE =
		{
			PHYSIC		= 1.0,
		},

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 7,

		TECH_POINT				= 20,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboZZZ",	"CT_PVP_BOT_RAVEN_ComboZZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboZZX",	"CT_PVP_BOT_RAVEN_ComboZZX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_ComboZZX =
	{
		ANIM_EVENT_TIMER			= 0.44,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_PVP_BOT_RAVEN_ComboZZZ =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

PVP_BOT_RAVEN_ComboZZZ =
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

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 15,

		TECH_POINT				= 60,
	},


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashJump", 	"CT_PVP_BOT_RAVEN_DashJump", 	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashX",		"CT_PVP_BOT_RAVEN_DashX",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboZZZZ",	"CT_PVP_BOT_RAVEN_ComboZZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_DashJump =
	{
		ANIM_EVENT_TIMER			= 0.46,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 10,
	},
	
	CT_PVP_BOT_RAVEN_DashX =
	{
		EVENT_INTERVAL_ID			= 0,
		ANIM_EVENT_TIMER			= 0.46,
		ATTACK_SUCCESS				= TRUE, 
		RATE						= 33,
	},
	
	CT_PVP_BOT_RAVEN_ComboZZZZ =
	{
		ANIM_EVENT_TIMER			= 0.47,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}


PVP_BOT_RAVEN_ComboZZZZ =
{

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ANIM_NAME			= "ComboZ4",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	LAND_CONNECT		= FALSE,

	SLASH_TRACE			= { 0, 100 },
	ATTACK_TIME0		= { 0.36, 0.43 },


	SOUND_PLAY0			=	{ 0.125, "Raven_Slash3.ogg" },
	SOUND_PLAY1			=	{ 0.358, "Raven_Slash1.ogg" },

	BLADE_MASTERY		= TRUE,

	DISABLE_ATTACK_BOX =
	{
		"Lhand1",
	},

	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],

		DAMAGE =
		{
			PHYSIC		= 2.0,
		},

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		--FORCE_DOWN			= 7,

		TECH_POINT				= 160,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
}

-- ZZ에서 이어지는 ZZXX 콤보입니다.
PVP_BOT_RAVEN_ComboZZX =
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

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],

		STOP_TIME_ATT			= 0.05,
		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 10,

		TECH_POINT				= 50,
	},


	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboZZXX",	"CT_PVP_BOT_RAVEN_ComboZZXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_ComboZZXX =
	{
		ANIM_EVENT_TIMER			= 0.45,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
	

PVP_BOT_RAVEN_ComboZZXX =
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

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"] * 1.3,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 1.2,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 15,
		FORCE_FLY				= TRUE,

		TECH_POINT				= 200,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
}


-- xxx 콤보입니다.
PVP_BOT_RAVEN_ComboX =
{
	IMMADIATE_PACKET_SEND		= TRUE,
	
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

		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 15,

		TECH_POINT				= 100,
	},

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboXX",	"CT_PVP_BOT_RAVEN_ComboXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	CT_PVP_BOT_RAVEN_ComboXX =
	{
		ANIM_EVENT_TIMER			= 0.53,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_RAVEN_ComboXX =
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

		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0,

		STOP_TIME_ATT			= 0.1,
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 15,

		TECH_POINT				= 100,
	},
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_ComboXXX",	"CT_PVP_BOT_RAVEN_ComboXXX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	CT_PVP_BOT_RAVEN_ComboXXX =
	{
		ANIM_EVENT_TIMER			= 0.58,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
	
}

PVP_BOT_RAVEN_ComboXXX =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
}

-- 점프z 공격입니다.
PVP_BOT_RAVEN_JumpZ =
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

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		FORCE_DOWN			= 15,
		TECH_POINT				= 20,
	},

	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_JUMP_LANDING",	},
	},
}

-- 대시X 공격입니다.
PVP_BOT_RAVEN_DashX =
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

		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 0,

		RE_ATTACK				= TRUE,	
		HIT_GAP					= 0.3,		
		STOP_TIME_DEF			= 0.4,

		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		FORCE_DOWN			= 12.5,

		TECH_POINT				= 75,

	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
}


-- 대시ZZ 콤보 공격입니다.
PVP_BOT_RAVEN_DashComboZ =
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

		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0,

		FORCE_DOWN			= 7,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 75,
	},
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_DashComboZZ",	"CT_PVP_BOT_RAVEN_DashComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	CT_PVP_BOT_RAVEN_DashComboZZ =
	{
		ANIM_EVENT_TIMER			= 0.42,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
}

PVP_BOT_RAVEN_DashComboZZ =
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

		BACK_SPEED_X			= 1700,
		BACK_SPEED_Y			= -1000,

		CAMERA_CRASH_GAP		= 10.0,
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,

		TECH_POINT				= 120,
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
}


-- 맥시멈 캐논!

PVP_BOT_RAVEN_Maximum_Cannon = 
{
	VIEW_TARGET     = TRUE, 
	
    APPLY_ANIM_SPEED_BY_ITEM_ABILITY = FALSE,

	ANIM_NAME				= "SP1a_MaximumCanon",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,

	LAND_CONNECT			= FALSE,
	INVINCIBLE				= { 0, 1.4, },

	STOP_ALL_UNIT0			= { 0.06, 1.4, 0.6 },
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
}



PVP_BOT_RAVEN_BOOST_POWER =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RAVEN_WAIT",												},
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



PVP_BOT_RAVEN_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RAVEN_WAIT",												},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,



	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_BIG_FRONT =
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
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_BIG_BACK =
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
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	"CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_WAIT",		},
	},
	
	
	CT_PVP_BOT_RAVEN_SPECIAL_ATTACK_A =
	{
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_DOWN_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_RAVEN_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RAVEN_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_DOWN_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"PVP_BOT_RAVEN_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PVP_BOT_RAVEN_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_FLY_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_FLY_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_AIR_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_AIR_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"PVP_BOT_RAVEN_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"PVP_BOT_RAVEN_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_STAND_UP_FRONT",		},
	},

}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_STAND_UP_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_STANDUP_WAIT",		},
	},
}
--------------------------------------------------------------------------
PVP_BOT_RAVEN_STAND_UP_BACK =
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE			= { 0, 100, },
	
    --SOUND_PLAY0			= { 0.283, "PVP_BOT_RAVEN_StandUp.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PVP_BOT_RAVEN_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PVP_BOT_RAVEN_STANDUP_WAIT",      },
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


PVP_BOT_RAVEN_DYING_FRONT = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "RavenVoice_DieScream1.ogg" },
 	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

PVP_BOT_RAVEN_DYING_BACK = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
	SOUND_PLAY1					= { 0.19, "RavenVoice_DieScream1.ogg" },
 	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function PVP_BOT_RAVEN_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp + 3)
	end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
function PVP_BOT_RAVEN_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function PVP_BOT_RAVEN_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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


function PVP_BOT_RAVEN_Maximum_Cannon_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
	
		pNPCUnit:ActiveSkillShow_LUA( "HQ_CutIn_Raven_1.dds", 654, 654, 207, 442, 0)

			
		local nowMp = pNPCUnit:GetNowMP() 
		pNPCUnit:SetNowMP(nowMp - 100)
	end		
    
	  
end	


function PVP_BOT_RAVEN_BOOST_POWER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
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

	

function CF_PVP_BOT_RAVEN_BOOST_POWER( pKTDXApp, pX2Game, pNPCUnit )

	fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
		
	
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		if fRemainHPRate < 0.2 then	
	
			if pNPCUnit:GetHyperModeCount() > 0 then
		
				return true
			
			end
	
		end
	end
	
	return false

end
