-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ Lenoas / 2011/1/12 / 이벤트용 도전자 몬스터/
	 
--]]

INIT_SYSTEM =
{
	UNIT_WIDTH		= 180.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.5,
}
--------------------------------------------------------------------------
INIT_DEVICE =
{
	READY_TEXTURE =
	{
        "npc_bodyA.tga",
        "npc_bodyB.tga",
        "npc_bodyC.tga",
        "npc_bodyD.tga",
	},
	READY_SOUND =
	{
		"Down.ogg",
		"REDKNIGHT_Voice_Flame_Geyser.ogg",
		"REDKNIGHT_Voice_Rising_Slash.ogg",
		"REDKNIGHT_Voice_Rising_Wave.ogg",
		"REDKNIGHT_Voice_dying.ogg",
		"REDKNIGHT_Voice_damage_01.ogg",
		"REDKNIGHT_Voice_damage_02.ogg",
		"REDKNIGHT_Voice_hit_01.ogg",
		"REDKNIGHT_Voice_hit_02.ogg",
		"REDKNIGHT_Voice_hit_03.ogg",




	},
	READY_XMESH = 
	{
	 "Wind_Liner02.Y",
	},
}
--------------------------------------------------------------------------
INIT_MOTION =
{
	MOTION_FILE_NAME	= "Motion_RedKnightB.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 740,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MP_CHANGE_RATE		= 6,
	MP_CHARGE_RATE		= 100,
	DRAW_SMALL_MP_BAR	= FALSE,
    USE_SLASH_TRACE     = FALSE,

	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
    --MIND_FLAG_HEIGHT		= 230,

	RAGE_COUNT_MAX	    	= 25,
	RAGE_TIME_MAX		    = 3,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DIE_FLY			= FALSE,
	
	SUMMON_TIME			= 180,
}
--------------------------------------------------------------------------
INIT_STATE =
{
	{ STATE_NAME = "CMS_red_knight_rune_slayer_START",						},
    { STATE_NAME = "CMS_red_knight_rune_slayer_WIN",						},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_WAIT",						},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_WaitHabit",					},

	{ STATE_NAME = "CMS_red_knight_rune_slayer_WALK",						},
    { STATE_NAME = "CMS_red_knight_rune_slayer_DASH",						},
    { STATE_NAME = "CMS_red_knight_rune_slayer_DASH_END",								LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DASH_STATE_END",		},

	{ STATE_NAME = "CMS_red_knight_rune_slayer_JUMP_UP",					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_JUMP_DOWN",					LUA_STATE_END_FUNC = "CMS_red_knight_rune_slayer_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_JUMP_UP_DIR",				},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "CMS_red_knight_rune_slayer_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_JUMP_LANDING",				},


	--{ STATE_NAME = "CMS_red_knight_rune_slayer_DashJump",					STATE_COOL_TIME = 5,		},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DashJumpComboZ",				},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DashJumpComboZZ",			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_ComboX",						STATE_COOL_TIME = 5,		},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_ComboXZ",					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_ComboXZZ",					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_ComboZ",						STATE_COOL_TIME = 3,		},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_FLIP_DIR",					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_ComboZZ",					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_ComboZZZ",					},
	-- { STATE_NAME = "CMS_red_knight_rune_slayer_Flame_geyser",				STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_Flame_geyser_FRAME_MOVE"	 },
	-- { STATE_NAME = "CMS_red_knight_rune_slayer_Rising_slash",			STATE_COOL_TIME = 10,	LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_Rising_slash_FRAME_MOVE"	 },
	{ STATE_NAME = "CMS_red_knight_rune_slayer_Rising_wave",			STATE_COOL_TIME = 20,	LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_Rising_wave_FRAME_MOVE"	 },
	
	{ STATE_NAME = "CMS_red_knight_rune_slayer_END",						},
	
	
	--리액션 관련
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_SMALL_FRONT",				LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_SMALL_BACK",				LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_BIG_FRONT",				LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_FRONT_FRAME_MOVE"			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_BIG_BACK",				LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_BACK_FRAME_MOVE"			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_DOWN_FRONT",			LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_DOWN_FRONT_FRAME_MOVE"		},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_DOWN_BACK",			LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_DOWN_BACK_FRAME_MOVE"		},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_FLY_FRONT",			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_FLY_BACK",			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_AIR",					},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN",			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_AIR_UP",				},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL",			},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING",	LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE"	},

	{ STATE_NAME = "CMS_red_knight_rune_slayer_STAND_UP_FRONT",				},
	{ STATE_NAME = "CMS_red_knight_rune_slayer_STAND_UP_BACK",				},
	--{ STATE_NAME = "CMS_red_knight_rune_slayer_STAND_UP_ATTACK_FRONT",		LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_STAND_UP_ATTACK_FRONT_FRAME_MOVE"   },
    --{ STATE_NAME = "CMS_red_knight_rune_slayer_STAND_UP_ATTACK_BACK",		LUA_FRAME_MOVE_FUNC = "CMS_red_knight_rune_slayer_STAND_UP_ATTACK_BACK_FRAME_MOVE"   },

	{ STATE_NAME = "CMS_red_knight_rune_slayer_DAMAGE_REVENGE",				},

	{ STATE_NAME = "CMS_red_knight_rune_slayer_DYING",			LUA_STATE_START_FUNC = "CMS_red_knight_rune_slayer_DYING_LAND_STATE_START",},

	START_STATE					= "CMS_red_knight_rune_slayer_START",
	WAIT_STATE					= "CMS_red_knight_rune_slayer_WAIT",
	SUMMON_END_STATE			= "CMS_red_knight_rune_slayer_END",

	SMALL_DAMAGE_LAND_FRONT		= "CMS_red_knight_rune_slayer_DAMAGE_SMALL_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CMS_red_knight_rune_slayer_DAMAGE_SMALL_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CMS_red_knight_rune_slayer_DAMAGE_BIG_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CMS_red_knight_rune_slayer_DAMAGE_BIG_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CMS_red_knight_rune_slayer_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CMS_red_knight_rune_slayer_DAMAGE_DOWN_BACK",
	FLY_DAMAGE_FRONT			= "CMS_red_knight_rune_slayer_DAMAGE_FLY_FRONT",
	FLY_DAMAGE_BACK				= "CMS_red_knight_rune_slayer_DAMAGE_FLY_BACK",
	SMALL_DAMAGE_AIR			= "CMS_red_knight_rune_slayer_DAMAGE_AIR",
	BIG_DAMAGE_AIR				= "CMS_red_knight_rune_slayer_DAMAGE_AIR",
	DOWN_DAMAGE_AIR				= "CMS_red_knight_rune_slayer_DAMAGE_AIR",
	DOWN_DAMAGE_AIR_LANDING		= "CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING",
	UP_DAMAGE					= "CMS_red_knight_rune_slayer_DAMAGE_AIR_UP",
	DAMAGE_REVENGE				= "CMS_red_knight_rune_slayer_DAMAGE_REVENGE",
	
	DAMAGE_EXTRA_STATES         = {"CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN","CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL",
	"CMS_red_knight_rune_slayer_STAND_UP_FRONT","CMS_red_knight_rune_slayer_STAND_UP_BACK", "CMS_red_knight_rune_slayer_JUMP_DOWN","CMS_red_knight_rune_slayer_JUMP_LANDING",},	

	DYING_LAND_FRONT			= "CMS_red_knight_rune_slayer_DYING",
	DYING_LAND_BACK				= "CMS_red_knight_rune_slayer_DYING",
	DYING_SKY					= "CMS_red_knight_rune_slayer_DYING",

	REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
INIT_AI =
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1400,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1400,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},

	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	

	CHASE_MOVE =
	{
	
		DEST_GAP			= 250,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 0,
		
		DIR_CHANGE_INTERVAL = 0.2,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   --  70,
		FAR_WALK_RATE		= 0,   -- 30,
		
		

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,

		--LINE_END_RANGE		= 100,	-- cm
	},

	PATROL_MOVE =
	{
		PATROL_BEGIN_RATE		= 0, --50,
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
--[[
	ESCAPE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 10,	-- 이 거리 보다 멀어지면 도망 성공

		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 30,   --  10,
		FAR_WALK_RATE		= 50,   -- 10,

		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,

		--LINE_END_RANGE		= 80,	-- cm
	},
	]]--
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_WIN =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, },

    --SOUND_PLAY0			= { 0.448, "AirShip_SwordMan_Slash1.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
}
function CF_CMS_red_knight_rune_slayer_WIN( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_START =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
		
	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_13481 },
		{ RATE = 10, MESSAGE = STR_ID_13482 },
		{ RATE = 10, MESSAGE = STR_ID_13483 },
	},

	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",			},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CMS_red_knight_rune_slayer_WAIT",		"CT_CMS_red_knight_rune_slayer_WAIT"	},
	},
--[[
	CT_CMS_red_knight_rune_slayer_WAIT =
	{
		STATE_TIME_OVER	= 2.33,
	},
	]]--
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_WAIT =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

		
	PASSIVE_SPEED_X	= 0,

	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 0.5,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",			},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"CMS_red_knight_rune_slayer_WIN",	"CF_CMS_red_knight_rune_slayer_WIN",	},

        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CMS_red_knight_rune_slayer_ComboZ",     					"CT_CMS_red_knight_rune_slayer_ComboZ",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CMS_red_knight_rune_slayer_ComboX",     					"CT_CMS_red_knight_rune_slayer_ComboX",       	     	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CMS_red_knight_rune_slayer_Rising_wave",    					"CT_CMS_red_knight_rune_slayer_Rising_wave",   	       	},
		
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"CMS_red_knight_rune_slayer_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"CMS_red_knight_rune_slayer_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"CMS_red_knight_rune_slayer_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"CMS_red_knight_rune_slayer_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"CMS_red_knight_rune_slayer_JUMP_DOWN_DIR",		},
	},
	
	
	CT_CMS_red_knight_rune_slayer_ComboX =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 250,	
		RATE						= 100,
	},
	
	
	CT_CMS_red_knight_rune_slayer_ComboZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 250,	
		RATE						= 100,
	},
	
		
	
	CT_CMS_red_knight_rune_slayer_Rising_wave =
	{
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},

	
	CT_CMS_red_knight_rune_slayer_WaitHabit =
	{
		EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}	
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_WALK =
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


	EVENT_INTERVAL_TIME0	= 0.33,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"CMS_red_knight_rune_slayer_WIN",	"CF_CMS_red_knight_rune_slayer_WIN",	},

        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CMS_red_knight_rune_slayer_Rising_wave",    					"CT_CMS_red_knight_rune_slayer_Rising_wave",   	       	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CMS_red_knight_rune_slayer_ComboX",     					"CT_CMS_red_knight_rune_slayer_ComboX",       	     	},	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "CMS_red_knight_rune_slayer_ComboZ",     					"CT_CMS_red_knight_rune_slayer_ComboZ",       	     	},	
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],			"CMS_red_knight_rune_slayer_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"CMS_red_knight_rune_slayer_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"CMS_red_knight_rune_slayer_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"CMS_red_knight_rune_slayer_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"CMS_red_knight_rune_slayer_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"CMS_red_knight_rune_slayer_JUMP_DOWN_DIR",		},
	},		
	
	CT_CMS_red_knight_rune_slayer_Rising_wave =
	{
		IS_ANOTHER_TEAM				= TRUE,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	
		
	CT_CMS_red_knight_rune_slayer_ComboX =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 250,	
		RATE						= 100,
	},
	
	CT_CMS_red_knight_rune_slayer_ComboZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 200,	
		RATE						= 100,
	},
	
		
	CT_CMS_red_knight_rune_slayer_WaitHabit =
	{
		EVENT_INTERVAL_ID			= 0,
		-- DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 3,
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DASH =
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

	EVENT_INTERVAL_TIME0		= 0.33,

	EVENT_PROCESS =
	{

		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"CMS_red_knight_rune_slayer_WIN",	"CF_CMS_red_knight_rune_slayer_WIN",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],			"CMS_red_knight_rune_slayer_DASH_END",			},
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],			"CMS_red_knight_rune_slayer_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],			"CMS_red_knight_rune_slayer_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],		"CMS_red_knight_rune_slayer_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],			"CMS_red_knight_rune_slayer_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],		"CMS_red_knight_rune_slayer_JUMP_DOWN_DIR",		},
	},
	
	
	
	
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DASH_END =
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= INIT_PHYSIC["RUN_SPEED"]*0.75,

	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",			},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_JUMP_UP =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",		},
	},

}

CMS_red_knight_rune_slayer_JUMP_DOWN =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_JUMP_UP_DIR =
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CMS_red_knight_rune_slayer_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_JUMP_DOWN_DIR =
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_JUMP_LANDING =
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.043, "Dark_Sentinel_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
}

--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_WaitHabit =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	TALK_BOX =
	{
		{ RATE = 10, MESSAGE = STR_ID_13478 },
		{ RATE = 10, MESSAGE = STR_ID_13479 },
		{ RATE = 10, MESSAGE = STR_ID_13480 },
	},
	
	PASSIVE_SPEED_X						= 0,
	PASSIVE_SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
}

------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------




-- 엘소드 zzzz 시작

CMS_red_knight_rune_slayer_FLIP_DIR = {

	ANIM_SPEED			= 1.1,
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
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_WAIT",	"CT_CMS_red_knight_rune_slayer_WAIT",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	CT_CMS_red_knight_rune_slayer_WAIT =
	{
		ANIM_EVENT_TIMER			= 0.001,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

CMS_red_knight_rune_slayer_ComboZ =
{
	ANIM_SPEED			= 1.1,

	ANIM_NAME			= "ComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SLASH_TRACE			= { 0.07, 100 },
	ATTACK_TIME0		= { 0.15, 0.433 },

	SOUND_PLAY0			=	{ 0.1, "Slash.ogg" },
	SOUND_PLAY1			=	{ 0.08, "REDKNIGHT_Voice_hit_02.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.4,
		},		
				
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		TECH_POINT				= 20,
		--FORCE_DOWN			= 100,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_ComboZZ",	"CT_CMS_red_knight_rune_slayer_ComboZZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_FLIP_DIR",	"CT_CMS_red_knight_rune_slayer_FLIP_DIR",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
			
	CT_CMS_red_knight_rune_slayer_ComboZZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.3,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	CT_CMS_red_knight_rune_slayer_FLIP_DIR =
	{
		ANIM_EVENT_TIMER			= 0.3,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

CMS_red_knight_rune_slayer_ComboZZ =
{
	ANIM_SPEED			= 1.1,

	ANIM_NAME			= "ComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	TALK_BOX =
	{
		{ RATE = 5, MESSAGE = STR_ID_13484 },
		{ RATE = 5, MESSAGE = STR_ID_13485 },
		{ RATE = 5, MESSAGE = STR_ID_13486 },
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0		= { 0.2, 0.24 },
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 1.5,
	SPEED_Y				= 0.0,
	
	SLASH_TRACE			= { 0, 100, },
	
	SOUND_PLAY0			={ 0.13, "Slash.ogg" },

	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.4,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		
		STOP_TIME_ATT			= 0.05,	
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		

		TECH_POINT				= 24,
	},
	

	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_ComboZZZ",	"CT_CMS_red_knight_rune_slayer_ComboZZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	CT_CMS_red_knight_rune_slayer_ComboZZZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.366,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

CMS_red_knight_rune_slayer_ComboZZZ =
{
	ANIM_SPEED			= 1.1,

	ANIM_NAME			= "ComboZ3",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SPEED_X				= INIT_PHYSIC["WALK_SPEED"] * 1.5,
	SPEED_Y				= 0.0,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.2, 0.2666, },
	
	SOUND_PLAY0			= { 0.18, "Slash.ogg" },
	SOUND_PLAY1			= { 0.15, "REDKNIGHT_Voice_hit_03.ogg" },

	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.4,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		
		STOP_TIME_ATT			= 0.1,	
		STOP_TIME_DEF			= 0.05,	
		CAMERA_CRASH_GAP		= 15.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 60,
	},	

	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_DashJumpComboZ",	"CT_CMS_red_knight_rune_slayer_DashJumpComboZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], 		"CMS_red_knight_rune_slayer_Rising_wave",    	"CT_CMS_red_knight_rune_slayer_Rising_wave",   	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	CT_CMS_red_knight_rune_slayer_Rising_wave =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.4,
		ATTACK_SUCCESS				= TRUE, 
		MY_MP_MORE_THAN				= 90,
		EVENT_INTERVAL_ID			= 0,
		RATE						= 33,
	},
		
		
	CT_CMS_red_knight_rune_slayer_DashJumpComboZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.4,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 80,
	},
	
}



-- 엘소드 xzz 시작

CMS_red_knight_rune_slayer_ComboX =
{
	ANIM_SPEED			= 1.1,

	ANIM_NAME			= "ComboX1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.2, 0.266, },
	
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.6,
		},
			
		STOP_TIME_ATT			= 0.1,	
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 80,
	},
	
	SOUND_PLAY0			= { 0.2, "Slash.ogg" },
	SOUND_PLAY1			= { 0.23, "REDKNIGHT_Voice_hit_01.ogg" },
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_ComboXZ",	"CT_CMS_red_knight_rune_slayer_ComboXZ",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_FLIP_DIR",	"CT_CMS_red_knight_rune_slayer_FLIP_DIR",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},

	CT_CMS_red_knight_rune_slayer_ComboXZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.48,
		ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
	
	CT_CMS_red_knight_rune_slayer_FLIP_DIR =
	{
		ANIM_EVENT_TIMER			= 0.48,
		ATTACK_SUCCESS				= FALSE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

CMS_red_knight_rune_slayer_ComboXZ =
{
	ANIM_SPEED			= 1.1,

	ANIM_NAME			= "RS_ComboX2a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT = FALSE,
	
	SOUND_PLAY0			= { 0.418, "Elsword_SI_A_ComboX3a2.ogg" },
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_ERS_COMBO_XZ", 0.4,
	},
	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_ComboXZZ",	"CT_CMS_red_knight_rune_slayer_ComboX",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	CT_CMS_red_knight_rune_slayer_ComboX =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.7,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 60,
	},

}


CMS_red_knight_rune_slayer_ComboXZZ =
{
	ANIM_SPEED			= 1.1,
	
	ANIM_NAME			= "RS_ComboX3a",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	

	TALK_BOX =
	{
		{ RATE = 5, MESSAGE = STR_ID_13484 },
		{ RATE = 5, MESSAGE = STR_ID_13485 },
		{ RATE = 5, MESSAGE = STR_ID_13486 },
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_CSM_ERS_COMBO_XZZ", 0,
	},
	
	SOUND_PLAY0  		= { 0.470, "Elsword_SI_A_ComboX3a3.ogg" },
	
	LAND_CONNECT = FALSE,
	
	

	EVENT_PROCESS =
	{	
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_ComboZ",	"CT_CMS_red_knight_rune_slayer_ComboZ",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	CT_CMS_red_knight_rune_slayer_ComboZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.766,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 75,
	},
	
}


-- zzz 대시 점프zz 콤보

CMS_red_knight_rune_slayer_DashJumpComboZ = 
{
	ANIM_NAME			= "DashJumpComboZ1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.1, 0.18, },
	
	SPEED_X				= 500,
	SPEED_Y				= 800,
	
	SOUND_PLAY0			= { 0.1, "Slash.ogg" },
	
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
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
		
		TECH_POINT				= 50,
	},	
	
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_DashJumpComboZZ",	"CT_CMS_red_knight_rune_slayer_Jumpdown_for_DashJumpComboZZ",	},
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_JUMP_LANDING",	},
	},
	
	CT_CMS_red_knight_rune_slayer_Jumpdown_for_DashJumpComboZZ =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.285,
		-- ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}

CMS_red_knight_rune_slayer_DashJumpComboZZ = 
{
	ANIM_SPEED			= 1.1,
	ANIM_NAME			= "DashJumpComboZ2",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION			= FALSE,
	
	LAND_CONNECT		= FALSE,
	SLASH_TRACE			= { 0, 100, },
	ATTACK_TIME0		= { 0.1, 0.18, },
	
	SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= 200.0,
	
	SOUND_PLAY0			= { 0.1, "Slash.ogg" },
	SOUND_PLAY1			= { 0.1, "REDKNIGHT_Voice_hit_03.ogg" },
	
	
	DISABLE_ATTACK_BOX = 
	{
		"ATTACK_SPHERE1_Rfoot",
		"ATTACK_SPHERE2_Lfoot",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.2,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 200,
					
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
		CLEAR_SCREEN			= 1,
		
		TECH_POINT				= 60,
	},	
	
	EVENT_PROCESS =
	{
	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_JUMP_LANDING",	},
	},
}


-- 라이징 웨이브

CMS_red_knight_rune_slayer_Rising_wave =
{

	ANIM_NAME				= "SP2a_RisingSlash",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	
	LAND_CONNECT			= FALSE,   
	INVINCIBLE				= { 0, 1.1, },
	AFTER_IMAGE				= { 0.1, 100, },
	SLASH_TRACE				= { 0.1, 100, },
		
	STATE_STRING			= STR_ID_4266,
		
	SOUND_PLAY0				= { 0.1,	"Energy.ogg" },
	SOUND_PLAY1				= { 0.001,	"REDKNIGHT_Voice_Rising_Wave.ogg" },
	SOUND_PLAY2				= { 0.7,	"Elsword_RisingSlash2.ogg" },
	SOUND_PLAY3				= { 0.74, 	"Elsword_BladeOut.ogg" },			
	
	EFFECT_SET_LIST = 
	{
		"Effect_CSM_red_knight_lord_knight_Rising_wave_sword", 0,
	},
	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WaitHabit",		},
	},
	
}

------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------



CMS_red_knight_rune_slayer_DAMAGE_REVENGE =
{
	ANIM_NAME					= "DamageRevenge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CMS_red_knight_rune_slayer_WAIT",												},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_SMALL_FRONT =
{
	ANIM_NAME					= "DamageSmallFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	"CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	
	CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_SMALL_BACK =
{
	ANIM_NAME					= "DamageSmallBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,



	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	"CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	
	CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_BIG_FRONT =
{
	ANIM_NAME					= "DamageBigFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

 	SOUND_PLAY0					= { 0.09, "REDKNIGHT_Voice_damage_02.ogg", 40 },

	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	"CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	
	CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_BIG_BACK =
{
	ANIM_NAME					= "DamageBigBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

 	SOUND_PLAY0					= { 0.09, "REDKNIGHT_Voice_damage_02.ogg", 40 },
	

	EVENT_PROCESS =
	{
        --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	"CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
	
	
	CT_CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A =
	{
		IS_ANOTHER_TEAM				= TRUE,
		ANIM_EVENT_TIMER			= 0.33,
		--ATTACK_SUCCESS				= TRUE, 
		EVENT_INTERVAL_ID			= 0,	
		RATE						= 7,
	},
	
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_DOWN_FRONT =
{
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

 	SOUND_PLAY0					= { 0.09, "REDKNIGHT_Voice_damage_01.ogg", 40 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CMS_red_knight_rune_slayer_STAND_UP_FRONT",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_DOWN_BACK =
{
	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

    SOUND_PLAY0			= { 0.01, "REDKNIGHT_Voice_damage_01.ogg" , 40 },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CMS_red_knight_rune_slayer_STAND_UP_BACK",		},
	},

}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_FLY_FRONT =
{
	ANIM_NAME					= "DamageAirFlyFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_FLY_BACK =
{
	ANIM_NAME					= "DamageAirFlyBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_DAMAGE_DOWN_BACK",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_AIR =
{
	ANIM_NAME					= "DamageAirSmall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_WAIT",	},
	},

	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN =
{
	ANIM_NAME					= "DamageAirDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],			"CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_AIR_UP =
{
	ANIM_NAME					= "DamageAirUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL =
{
	ANIM_NAME					= "DamageAirFall",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],	"CMS_red_knight_rune_slayer_DAMAGE_AIR_UP",			    },
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING",	},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING =
{
	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

	SOUND_PLAY0					= { 0.11, "REDKNIGHT_Voice_damage_02.ogg", 80 },

	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_DAMAGE_AIR_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_STAND_UP_FRONT",		},
	},

}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_STAND_UP_FRONT =
{
	ANIM_NAME					= "DamageStandUpFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",		},
	},
}
--------------------------------------------------------------------------
CMS_red_knight_rune_slayer_STAND_UP_BACK =
{
	ANIM_NAME					= "DamageStandUpBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },

    --SOUND_PLAY0			= { 0.283, "CMS_red_knight_rune_slayer_StandUp.ogg" },

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CMS_red_knight_rune_slayer_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CMS_red_knight_rune_slayer_WAIT",      },
	},
}
--------------------------------------------------------------------------

--------------------------------------------------------------------------


CMS_red_knight_rune_slayer_DYING = 
{
	ANIM_SPEED					= 0.3,
	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	SOUND_PLAY0					= { 0.19, "Down.ogg" },
 	SOUND_PLAY1					= { 0.09, "REDKNIGHT_Voice_dying.ogg" },
	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DASH_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.166 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.87 ) then
         local pDamageEffect = pX2Game:GetDamageEffect()
         local vPos = pNPCUnit:GetPos()
         local vLandPos = pNPCUnit:GetLandPosition_LUA()

         if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "CMS_red_knight_rune_slayer_ATTACK_A", vPos, vLandPos.y )
         end
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.58 ) then
         local pDamageEffect =  pX2Game:GetDamageEffect()
         local vPos = pNPCUnit:GetPos()
         local vLandPos = pNPCUnit:GetLandPosition_LUA()

         if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "CMS_red_knight_rune_slayer_ATTACK_B", vPos, vLandPos.y )
         end
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DAMAGE_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DAMAGE_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.06 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.634 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DAMAGE_DOWN_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.620 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		local pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:CreateSequence_LUA( "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DAMAGE_AIR_DOWN_LANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
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
	end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_STAND_UP_ATTACK_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_STAND_UP_ATTACK_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 0.35 ) then
        local pMinorParticle = pX2Game:GetMinorParticle()
        pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end
end
--------------------------------------------------------------------------
function CMS_red_knight_rune_slayer_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
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



function CMS_red_knight_rune_slayer_Flame_geyser_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	local NowMp = pNPCUnit:GetNowMP()
	NowMp = NowMp - 85
	
	
	pNPCUnit:SetNowMP(NowMp)
	
end



function CMS_red_knight_rune_slayer_Rising_slash_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	local NowMp = pNPCUnit:GetNowMP()
	NowMp = NowMp - 60
	
	
	pNPCUnit:SetNowMP(NowMp)
	
end



function CMS_red_knight_rune_slayer_Rising_wave_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.1,0.1,0.1,3) )
	
	local NowMp = pNPCUnit:GetNowMP()
	NowMp = NowMp - 60
	
	
	pNPCUnit:SetNowMP(NowMp)
	
end













