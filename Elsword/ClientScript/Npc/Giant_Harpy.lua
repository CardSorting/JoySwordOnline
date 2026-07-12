-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 0.725,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	"Arme_Ring2.dds",
	"Explosion_Sphere.dds",
	},
	
	READY_SOUND = 
	{
	"Pet_Fly01.ogg",
	"Pet_Fly02.ogg",
	"Bat_Fly.ogg",
	"JumpLand2.ogg",
	"Giant_Harpy_Voice_Wait01.ogg",
	"Giant_Harpy_Voice_AttackA01.ogg",
	"Giant_Harpy_Voice_AttackB01.ogg",
	"Giant_Harpy_Voice_DamageA01.ogg",
	"Giant_Harpy_Voice_DamageB01.ogg",	
	"Giant_Harpy_Voice_Dying01.ogg",	
	},
	
	READY_XMESH = 
	{
	"Lightning03.Y",
	"SpinningKick02.Y",
	"Arme_ChargeMp2.X",
	},
	
	READY_XSKIN_MESH = 
	{
	"GIANT_HARPY_Attack_A01.x",
	"GIANT_HARPY_Attack_A02.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Giant_Harpy.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
		
	WALK_SPEED			= 400,
	RUN_SPEED			= 1000,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 1500,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	
	DAMAGE_DOWN         = FALSE,	
	--SKY_DIE             = TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "GIANT_HARPY_FLY_WAIT_START",				LUA_STATE_START_FUNC = "GIANT_HARPY_FLY_WAIT_START_STATE_START"			},
	
	-- 공중 wait
	{ STATE_NAME = "GIANT_HARPY_FLY_WAIT",						},
	
	-- 공중 이동
	{ STATE_NAME = "GIANT_HARPY_FLY_FRONT",						},
	{ STATE_NAME = "GIANT_HARPY_FLY_FRONT_UP",					},
	{ STATE_NAME = "GIANT_HARPY_FLY_FRONT_DOWN",				},
	{ STATE_NAME = "GIANT_HARPY_FLY_BACK",						},
	{ STATE_NAME = "GIANT_HARPY_FLY_BACK_UP",					},
	{ STATE_NAME = "GIANT_HARPY_FLY_BACK_DOWN",					},
    { STATE_NAME = "GIANT_HARPY_FLY_UP",					    },
    { STATE_NAME = "GIANT_HARPY_FLY_DOWN",					    },
		
	-- 지상 wait
	{ STATE_NAME = "GIANT_HARPY_LAND_WAIT",						},
	
	-- 지상 이동
	{ STATE_NAME = "GIANT_HARPY_LAND_WALK",						},
	
	{ STATE_NAME = "GIANT_HARPY_LAND_JUMP_UP",					},
	{ STATE_NAME = "GIANT_HARPY_LAND_JUMP_UP_DIR",				},
	{ STATE_NAME = "GIANT_HARPY_LAND_JUMP_DOWN",				LUA_STATE_START_FUNC = "GIANT_HARPY_LANDING_STATE_START",				},
	{ STATE_NAME = "GIANT_HARPY_LAND_JUMP_DOWN_DIR",			},
	{ STATE_NAME = "GIANT_HARPY_LAND_JUMP_DOWN_LANDING",		LUA_STATE_START_FUNC = "GIANT_HARPY_LANDING_STATE_START",				},
	
	-- 공중에서 지상으로 착지
	{ STATE_NAME = "GIANT_HARPY_START_LANDING",					LUA_STATE_START_FUNC = "GIANT_HARPY_LANDING_STATE_START", 			
																												},
	
	-- 지상에서 공중으로 비행
	{ STATE_NAME = "GIANT_HARPY_START_FLYING",					LUA_STATE_START_FUNC = "GIANT_HARPY_START_FLYING_STATE_START",
																LUA_FRAME_MOVE_FUNC = "GIANT_HARPY_START_FLYING_FRAME_MOVE", 			
																STATE_COOL_TIME	= 5, 													},
	
	-- 지상 연타 공격
	{ STATE_NAME = "GIANT_HARPY_ATTACK_A",						},
--[[	
		-- 잡고 던저버리는 공격
		{ STATE_NAME = "GIANT_HARPY_ATTACK_B_READY",				LUA_STATE_START_FUNC = "GIANT_HARPY_ATTACK_B_READY_STATE_START",																
																	STATE_COOL_TIME	= 5, 													},
		{ STATE_NAME = "GIANT_HARPY_ATTACK_B",						},
		{ STATE_NAME = "GIANT_HARPY_ATTACK_B_END",					LUA_FRAME_MOVE_FUNC = "GIANT_HARPY_ATTACK_B_END_FRMAE_MOVE",			},
--]]	
	-- 공중 낙하 공격
    { STATE_NAME = "GIANT_HARPY_DASH_ATTACK_B_READY",			STATE_COOL_TIME	= 8, 													},
	{ STATE_NAME = "GIANT_HARPY_DASH_ATTACK_B",					},
	{ STATE_NAME = "GIANT_HARPY_DASH_ATTACK_B_END",				LUA_STATE_START_FUNC = "GIANT_HARPY_DASH_ATTACK_B_END_STATE_START",
																LUA_FRAME_MOVE_FUNC = "GIANT_HARPY_DASH_ATTACK_B_END_FRAME_MOVE", 		},
	
	--리액션 관련 ( 지상 피격 )
	{ STATE_NAME = "GIANT_HARPY_LAND_DAMAGE_FRONT",				},
	{ STATE_NAME = "GIANT_HARPY_LAND_DAMAGE_BACK",				},
	{ STATE_NAME = "GIANT_HARPY_LAND_DAMAGE_DOWN_FRONT",		},
	{ STATE_NAME = "GIANT_HARPY_LAND_DAMAGE_DOWN_BACK",			},
	{ STATE_NAME = "GIANT_HARPY_LAND_STAND_UP_FRONT",			},
	{ STATE_NAME = "GIANT_HARPY_LAND_STAND_UP_BACK",			},

	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_FRONT",				LUA_STATE_START_FUNC = "GIANT_HARPY_DAMAGE_REACT_FLY_START_FUNC", 		},
	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_BACK",				LUA_STATE_START_FUNC = "GIANT_HARPY_DAMAGE_REACT_FLY_START_FUNC", 		},
	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_FRONT_LANDING",		},
	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_BACK_LANDING",		},
	
	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_UP",					LUA_STATE_START_FUNC = "GIANT_HARPY_DAMAGE_REACT_FLY_START_FUNC", 		},
	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_FALL",				},
	{ STATE_NAME = "GIANT_HARPY_FLY_DAMAGE_DOWN_LANDING",		},
	
	{ STATE_NAME = "GIANT_HARPY_LAND_AIR_DAMAGE",				},
	
	--리액션 관련 ( 공중 피격 )
	{ STATE_NAME = "GIANT_HARPY_AIR_DAMAGE_FRONT",				LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DAMAGE_START_FUNC", 			},
	{ STATE_NAME = "GIANT_HARPY_AIR_DAMAGE_BACK",				LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DAMAGE_START_FUNC", 			},		
	
	{ STATE_NAME = "GIANT_HARPY_LAND_DYING_FRONT",				LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DYING_START",},
	{ STATE_NAME = "GIANT_HARPY_LAND_DYING_BACK",				LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DYING_START",},
	
	{ STATE_NAME = "GIANT_HARPY_AIR_DYING",						LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DYING_START",},
	{ STATE_NAME = "GIANT_HARPY_AIR_DYING_FALL",				LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DYING_START",},
	{ STATE_NAME = "GIANT_HARPY_AIR_DYING_LANDING",				LUA_STATE_START_FUNC = "GIANT_HARPY_AIR_DYING_START",},
	
    START_STATE					= "GIANT_HARPY_LAND_WAIT",	
	WAIT_STATE					= "GIANT_HARPY_FLY_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "GIANT_HARPY_LAND_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "GIANT_HARPY_LAND_DAMAGE_BACK",
	SMALL_DAMAGE_AIR_FRONT		= "GIANT_HARPY_AIR_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR_BACK		= "GIANT_HARPY_AIR_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "GIANT_HARPY_AIR_DAMAGE_FRONT",
	
	BIG_DAMAGE_LAND_FRONT		= "GIANT_HARPY_LAND_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "GIANT_HARPY_LAND_DAMAGE_BACK",
	BIG_DAMAGE_AIR_FRONT		= "GIANT_HARPY_AIR_DAMAGE_FRONT",
	BIG_DAMAGE_AIR_BACK			= "GIANT_HARPY_AIR_DAMAGE_BACK",
	BIG_DAMAGE_AIR				= "GIANT_HARPY_AIR_DAMAGE_FRONT",
	
	DOWN_DAMAGE_LAND_FRONT		= "GIANT_HARPY_LAND_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GIANT_HARPY_LAND_DAMAGE_DOWN_BACK",
	DOWN_DAMAGE_AIR				= "GIANT_HARPY_AIR_DAMAGE_FRONT",
	UP_DAMAGE					= "GIANT_HARPY_FLY_DAMAGE_UP",
	
	FLY_DAMAGE_FRONT			= "GIANT_HARPY_FLY_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "GIANT_HARPY_FLY_DAMAGE_BACK",
	REVENGE_ATTACK				= "",
	--DAMAGE_FLUSH_LAND_FRONT		= "GIANT_HARPY_DAMAGE_FRONT",
	--DAMAGE_FLUSH_LAND_BACK		= "GIANT_HARPY_DAMAGE_BACK",
	DAMAGE_FLUSH_AIR			= "GIANT_HARPY_AIR_DAMAGE_FRONT",
	DAMAGE_REVENGE				= "",
	
	DAMAGE_EXTRA_STATES         = {"GIANT_HARPY_LAND_STAND_UP_FRONT","GIANT_HARPY_LAND_STAND_UP_BACK",
	"GIANT_HARPY_FLY_DAMAGE_FRONT_LANDING","GIANT_HARPY_FLY_DAMAGE_BACK_LANDING",
	"GIANT_HARPY_FLY_DAMAGE_FALL","GIANT_HARPY_FLY_DAMAGE_DOWN_LANDING", "GIANT_HARPY_LAND_AIR_DAMAGE",},	
	
	WAIT_STATES                 = { "GIANT_HARPY_LAND_WAIT", },	
	
	DYING_LAND_FRONT			= "GIANT_HARPY_LAND_DYING_FRONT",
	DYING_LAND_BACK				= "GIANT_HARPY_LAND_DYING_BACK",
	DYING_SKY					= "GIANT_HARPY_AIR_DYING_LANDING",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1600,		-- cm
		TARGET_LOST_RANGE			= 2400,		-- cm
		TARGET_SUCCESS_RATE			= 50,		-- %
		ATTACK_TARGET_RATE			= 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 300,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 400,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,		-- 70,
		FAR_WALK_RATE		= 100,		-- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 		-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,		-- 30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	FLY_CHASE_MOVE = 
	{
	    DEST_HEIGHT_GAP     = 250,  -- 타겟과 유지할 높이(세로)
	    DEST_LAND_GAP       = 250,  -- 타겟과의 유지할 가로 길이 (가로)
	    DEST_AREA       	= 100,  -- 가로 길이 (도착했다고 판단)
	    
	    FLY_MOVE_INTERVAL	= 1.0,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		ESCAPE_GAP			= 1500,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		--RATE	= 0,
		--MY_HP	= 0,
	}	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_WAIT_START = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
		
    FLY_AI                      = TRUE,
    SHOW_NAME                   = TRUE,
    PASSIVE_SPEED_Y				= 0,
    ENABLE_HEIGHT_FIX           = TRUE,
    
    SPEED_X						= 0,
	SPEED_Y						= 0,		
	NEVER_MOVE					= TRUE,
    ADD_POS_Y					= 400,
    		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_FLY_WAIT",	},
		
	},
}

function GIANT_HARPY_FLY_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )		-- 공중 채공 여부 ( 공중에서 피격시 현재 FLY 상태에 따른 스테이트를 적용시키기 위해 )

end

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_WAIT = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = TRUE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_Y				= 0,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_Wait01.ogg",30},

	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GIANT_HARPY_DASH_ATTACK_B_READY",	"CT_GIANT_HARPY_DASH_ATTACK_B_READY",	},
		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GIANT_HARPY_START_LANDING",		"CT_GIANT_HARPY_START_LANDING",			},
		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",		},
	    	 
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",				},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",				},
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",		},
	},
	
	CT_GIANT_HARPY_DASH_ATTACK_B_READY = 
	{
		HAVE_TARGET					= 1,
		RATE						= 100,
		DISTANCE_TO_TARGET_NEAR		= 800,
		EVENT_INTERVAL_ID			= 0,
	},
	
	CT_GIANT_HARPY_START_LANDING = 
	{
		RATE						= 20,
		EVENT_INTERVAL_ID			= 0,
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_FRONT = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",	},
	    
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",	},
				
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_FRONT_UP = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 3,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",	},	
			
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",	},
		
		
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_FRONT_DOWN = 
{
	ANIM_NAME					= "Walk_Fly_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= -3,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",	},
	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",		},			
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_BACK = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			},   
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",	},				
		
		
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_BACK_UP = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 3,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",	},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_BACK_DOWN = 
{
	ANIM_NAME					= "Walk_Fly_Back",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= -3,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GIANT_HARPY_FLY_DOWN",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",	},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_UP = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= 3,
		
		
	EVENT_PROCESS = 
	{	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_FLY_WAIT",			"CT_GIANT_HARPY_FLY_WAIT",	},	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				"GIANT_HARPY_FLY_DOWN",			},    	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GIANT_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],				"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],			"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],		"GIANT_HARPY_FLY_BACK_DOWN",	},
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],			"GIANT_HARPY_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],			"GIANT_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],		"GIANT_HARPY_FLY_FRONT_DOWN",	},				
	},
	
	CT_GIANT_HARPY_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DOWN = 
{
	ANIM_NAME					= "Wait_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= -3,
	
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GIANT_HARPY_FLY_WAIT",			"CT_GIANT_HARPY_FLY_WAIT",	},	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GIANT_HARPY_FLY_UP",			},	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GIANT_HARPY_FLY_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GIANT_HARPY_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GIANT_HARPY_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GIANT_HARPY_FLY_BACK_DOWN",	},    	 
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GIANT_HARPY_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GIANT_HARPY_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GIANT_HARPY_FLY_FRONT_DOWN",	},		
		
	},
	
	CT_GIANT_HARPY_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_WAIT = 
{
	ANIM_NAME					= "Wait_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_Wait01.ogg",30},
	
	EVENT_PROCESS = 
	{	    
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_HARPY_LAND_JUMP_DOWN",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_ATTACK_A",				"CT_GIANT_HARPY_ATTACK_A",	},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_START_FLYING",			"CT_GIANT_HARPY_START_FLYING",	},
	    	 
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GIANT_HARPY_LAND_WALK",			},
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GIANT_HARPY_LAND_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GIANT_HARPY_LAND_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GIANT_HARPY_LAND_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GIANT_HARPY_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GIANT_HARPY_LAND_JUMP_DOWN_DIR",	},
		
	},
	
	CT_GIANT_HARPY_ATTACK_A = 
	{
		--HAVE_TARGET					= 1,
		RATE						= 30,
		DISTANCE_TO_TARGET_NEAR		= 500,
		EVENT_INTERVAL_ID			= 0,
	},
	
	-- CT_GIANT_HARPY_START_FLYING = 
	-- {
		-- RATE						= 10,
		-- EVENT_INTERVAL_ID			= 0,
	-- },
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_WALK = 
{
	ANIM_NAME					= "Walk_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	FLY_AI                      = FALSE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_HARPY_LAND_JUMP_DOWN",		},
	    	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_ATTACK_A",				"CT_GIANT_HARPY_ATTACK_A",	},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_START_FLYING",			"CT_GIANT_HARPY_START_FLYING",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GIANT_HARPY_LAND_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GIANT_HARPY_LAND_WALK",			},
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GIANT_HARPY_LAND_WALK",			},	    
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GIANT_HARPY_LAND_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GIANT_HARPY_LAND_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GIANT_HARPY_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GIANT_HARPY_LAND_JUMP_DOWN_DIR",	},
	},	
	
	CT_GIANT_HARPY_ATTACK_A = 
	{
		HAVE_TARGET					= 1,
		RATE						= 30,
		DISTANCE_TO_TARGET_NEAR		= 300,
		EVENT_INTERVAL_ID			= 0,
	},
	
	-- CT_GIANT_HARPY_START_FLYING = 
	-- {
		-- RATE						= 10,
		-- EVENT_INTERVAL_ID			= 0,
	-- },
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GIANT_HARPY_LAND_JUMP_DOWN", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	ADD_POS_Y					= 45,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GIANT_HARPY_LAND_JUMP_DOWN_DIR", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_LAND_JUMP_DOWN_LANDING", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_LAND_JUMP_DOWN_LANDING", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_JUMP_DOWN_LANDING = 
{
	ANIM_NAME					= "JumpLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_LAND_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------
	
GIANT_HARPY_START_LANDING =
{
	ANIM_NAME					= "JumpDown_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	PASSIVE_SPEED_Y				= INIT_PHYSIC["WALK_SPEED"] * -5.0,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_LAND_JUMP_DOWN_LANDING", },
	},	
}
	
----------------------------------------------------------------------------------------------------------------------------------------	

GIANT_HARPY_START_FLYING =
{
	ANIM_NAME					= "Start_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.5, "Pet_Fly01.ogg"},
	SOUND_PLAY1 = { 1.1, "Pet_Fly02.ogg"},
	SOUND_PLAY2 = { 1.85, "Bat_Fly.ogg"},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_FLY_WAIT", },
	},
}

function GIANT_HARPY_START_FLYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )	-- 날고 있다.

end

function GIANT_HARPY_START_FLYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.328 ) then
		pNPCUnit:SetSpeedY( 1700 )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageA01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_START_FLYING",			"CT_GIANT_HARPY_START_FLYING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_HARPY_LAND_WAIT", 				},
	},	
	
	CT_GIANT_HARPY_START_FLYING = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageB01.ogg",30},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GIANT_HARPY_START_FLYING",			"CT_GIANT_HARPY_START_FLYING",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"GIANT_HARPY_LAND_WAIT", 				},
	},	
	
	CT_GIANT_HARPY_START_FLYING = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_DAMAGE_DOWN_FRONT = 
{
	ANIM_NAME					= "DamageDownFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
		
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageA01.ogg",30},
			SOUND_PLAY1 = { 0.7, "JumpLand2.ogg"},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_LAND_STAND_UP_FRONT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_DAMAGE_DOWN_BACK = 
{
	ANIM_NAME					= "DamageDownBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageB01.ogg",30},	
		SOUND_PLAY1 = { 0.7, "JumpLand2.ogg"},

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_LAND_STAND_UP_BACK", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_STAND_UP_FRONT = 
{
	ANIM_NAME					= "DamageStandUpFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_LAND_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_STAND_UP_BACK = 
{
	ANIM_NAME					= "DamageStandUpBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_LAND_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= -700,
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageA01.ogg",30},	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_LAND_DAMAGE_DOWN_FRONT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 700,
	FLY_AI                      = FALSE,

	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_LAND_DAMAGE_DOWN_BACK", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_FRONT_LANDING = 
{
	ANIM_NAME					= "Dying_Landing_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Down.ogg"},	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "GIANT_HARPY_FLY_DAMAGE_FRONT",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_HARPY_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_BACK_LANDING = 
{
	ANIM_NAME					= "Dying_Landing_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
SOUND_PLAY0 = { 0.01, "Down.ogg"},		
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "GIANT_HARPY_FLY_DAMAGE_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_HARPY_LAND_STAND_UP_BACK", 	},
	},
}


----------------------------------------------------------------------------------------------------------------------------------------
	
GIANT_HARPY_AIR_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= -700,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	FLY_AI                      = TRUE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageA01.ogg",30},
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_FLY_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_AIR_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 700,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	FLY_AI                      = TRUE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_DamageB01.ogg",30},	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_FLY_WAIT", },
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_DYING_FRONT = 
{
	ANIM_NAME					= "DamageDownFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_Dying01.ogg",30},
			SOUND_PLAY1 = { 0.7, "JumpLand2.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],  	"GIANT_HARPY_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GIANT_HARPY_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_DYING_BACK = 
{
	ANIM_NAME					= "DamageDownBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_Dying01.ogg",30},
		SOUND_PLAY1 = { 0.7, "JumpLand2.ogg"},	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],  	"GIANT_HARPY_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GIANT_HARPY_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_UP = 
{
	ANIM_NAME					= "DamageAirUp_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  	"GIANT_HARPY_FLY_DAMAGE_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_FLY_DAMAGE_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_FALL = 
{
	ANIM_NAME					= "DamageAirFall_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  	"GIANT_HARPY_FLY_DAMAGE_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_FLY_DAMAGE_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_FLY_DAMAGE_DOWN_LANDING = 
{
	ANIM_NAME					= "DamageDownLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	DEFENCE						= { 0, 100, 40, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	FLY_AI                      = FALSE,
	
			SOUND_PLAY0 = { 0.01, "JumpLand2.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],  	"GIANT_HARPY_FLY_DAMAGE_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GIANT_HARPY_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_LAND_AIR_DAMAGE =
{
	ANIM_NAME					= "DamageAir_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	FLY_AI                      = FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "GIANT_HARPY_LAND_WAIT",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_ATTACK_A =
{
	ANIM_NAME					= "Attack_A_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 250,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.2, "PunchAttack4.ogg"},
	SOUND_PLAY1 = { 0.7, "PunchAttack5.ogg"},
	SOUND_PLAY2 = { 0.2, "Pet_Fly01.ogg"},
	SOUND_PLAY3 = { 0.01, "Giant_Harpy_Voice_AttackA01.ogg",30},	
	SOUND_PLAY4 = { 0.7, "Pet_Fly02.ogg"},
	SOUND_PLAY5 = { 1.35, "Bat_Fly.ogg"},
	SOUND_PLAY6 = { 1.35, "Swing_Medium01.ogg"},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GIANT_HARPY_LAND_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GIANT_HARPY_LAND_WAIT",		},	
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_Giant_Harpy_Attack_A", 0,
	},
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.0, },
	ATTACK_TIME0				= { 0.785, 1.003, },
	ATTACK_TIME1				= { 1.543, 1.608, },
	
	
	DISABLE_ATTACK_BOX = 
	{
		"LowBody01",
		"Rfoot",
		--"Lfoot01",
		"Upbody01",
		--"R_UpperArm02",
		--"L_UpperArm01",
		--"R_Hand01",
		--"L_Hand01",
	},
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 800,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.15,		
	},
}

----------------------------------------------------------------------------------------------------------------------------------------
--[[
	GIANT_HARPY_ATTACK_B_READY = 
	{
		ANIM_NAME					= "Attack_B_Ready_Fly",
		PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
		TRANSITION					= FALSE,	
		LAND_CONNECT				= FALSE,
			
		CAN_PUSH_UNIT				= TRUE,
		CAN_PASS_UNIT				= FALSE,

		IMMADIATE_PACKET_SEND		= TRUE,
		
		ENABLE_HEIGHT_FIX           = TRUE,
			
		EVENT_INTERVAL_TIME0		= 2,
				
		SOUND_PLAY0 = { 0.60, "Giant_Harpy_Voice_AttackA01.ogg"},	
		SOUND_PLAY1 = { 0.6, "Pet_Fly01.ogg"},
		SOUND_PLAY2 = { 1.1, "Pet_Fly02.ogg"},
		
		
		EVENT_PROCESS = 
		{	
			{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_ATTACK_B",  },
		},
	}

	function GIANT_HARPY_ATTACK_B_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

		pNPCUnit:SetUserHold(true, "Bip01_Footsteps", true, D3DXVECTOR3( 0.0, -100.0, 0.0 ) )

	end
--]]
----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_ATTACK_B = 
{
	ANIM_NAME					= "Attack_B_Start_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"] * 1.3,
	PASSIVE_SPEED_Y				= -3000,
	-- SPEED_Y						= INIT_PHYSIC["RUN_SPEED"] * -3.7,
	G_ACCEL                     = 0,
    DOWN_ACCEL                  = 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_PLAY0 = { 0.01, "Bat_Fly.ogg"},	
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_HARPY_ATTACK_B_END",			"CT_GIANT_HARPY_ATTACK_B_END"			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_HARPY_DASH_ATTACK_B_END", 	"CT_GIANT_HARPY_DASH_ATTACK_B_END"		},
	},
	
	CT_GIANT_HARPY_ATTACK_B_END = 
	{
		ATTACK_SUCCESS 				= TRUE,
	},
	
	CT_GIANT_HARPY_DASH_ATTACK_B_END =
	{
		FOOT_ON_LINE				= TRUE,
	},
	

	
	ATTACK_TIME0				= { 0, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
	
		CAN_REVENGE		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC				= 2,
		},
		
		BACK_SPEED_X			= -1200,
		BACK_SPEED_Y			= 1200,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_ATTACK_B_END = 
{
	ANIM_NAME					= "Attack_B_End_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
    
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	SOUND_PLAY0 = { 0.8, "BatBig_Fly2.ogg"},
	SOUND_PLAY1 = { 1.4, "BatBig_Small_Fly2.ogg"},
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_FLY_WAIT", }	
	},	
	
	-- ATTACK_TIME0 = { 2.237, 2.284, },
	
	-- DAMAGE_DATA = 
	-- {
		-- DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		-- HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		-- REACT_TYPE		= REACT_TYPE["RT_UP"],
		-- --ATTACK_ALL_TEAM	= TRUE,
	
		-- CAN_REVENGE		= TRUE,
		
		-- DAMAGE = 
		-- {
			-- PHYSIC				= 1,
		-- },
		
		-- BACK_SPEED_X			= 2000,
		-- BACK_SPEED_Y			= 2000,
		
		-- CAMERA_CRASH_GAP		= 5.0,	
		-- CAMERA_CRASH_TIME		= 0.2,		
		
		-- RE_ATTACK				= FALSE,		
		-- HIT_GAP					= 0.15,	
	-- },
}

function GIANT_HARPY_ATTACK_B_END_FRMAE_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.257 ) then
		pNPCUnit:SetUserHoldReset()
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_DASH_ATTACK_B_READY = 
{
	ANIM_NAME					= "Dash_Attack_B_Start_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	    
	EVENT_INTERVAL_TIME0		= 2,
			
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_DASH_ATTACK_B", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_DASH_ATTACK_B = 
{
	ANIM_NAME					= "Dash_Attack_B_Roop_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	SPEED_Y                     = INIT_PHYSIC["RUN_SPEED"] * -3.7,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_HARPY_DASH_ATTACK_B_END",	"CT_GIANT_HARPY_DASH_ATTACK_B_END"	},		
	},
	
	CT_GIANT_HARPY_DASH_ATTACK_B_END = 
	{
		FOOT_ON_LINE				= TRUE,
	},
		
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_Giant_Harpy_Dash_Attack_B_Loop", 0,
	},
	ATTACK_TIME0				= { 0, 100, },
	
	DISABLE_ATTACK_BOX = 
	{
		"LowBody01",
		--"Rfoot",
		--"Lfoot01",
		"Upbody01",
		"R_UpperArm02",
		"L_UpperArm01",
		"R_Hand01",
		"L_Hand01",
	},
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		--ATTACK_ALL_TEAM	= TRUE,
	
		CAN_REVENGE		= TRUE,
		
		DAMAGE = 
		{
			PHYSIC				= 2,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 1200,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_DASH_ATTACK_B_END = 
{
	ANIM_NAME					= "Dash_Attack_B_End_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
    
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.1, "Pet_Fly01.ogg"},	
	SOUND_PLAY1 = { 0.1, "Landing_Meat03.ogg"},	
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_FLY_WAIT", }	
	},	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_Giant_Harpy_Dash_Attack_B_End", 0,
	},
}

function GIANT_HARPY_DASH_ATTACK_B_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetUserHoldReset()

end

function GIANT_HARPY_DASH_ATTACK_B_END_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.395 ) then
		pNPCUnit:SetSpeedY( 1700 )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_AIR_DYING = 
{
	ANIM_NAME					= "Dying_Air_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	--LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	-- SPEED_X						= 0,
	-- SPEED_Y						= 0,	
	-- PASSIVE_SPEED_Y				= 10000,
	-- G_ACCEL                     = 0,
    -- DOWN_ACCEL                  = 0,
	
	FLY_AI                      = FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Giant_Harpy_Voice_Dying01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_HARPY_AIR_DYING_FALL",	},
	},
}

function GIANT_HARPY_AIR_DYING_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUserHoldReset()
end

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_AIR_DYING_FALL = 
{
	ANIM_NAME					= "Dying_Fall_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	--LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_Y						= -500,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--FLY_AI                      = FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GIANT_HARPY_AIR_DYING_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GIANT_HARPY_AIR_DYING_LANDING = 
{
	ANIM_NAME					= "Dying_Landing_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
	
	SOUND_PLAY1 = { 0.01, "JumpLand2.ogg" },	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

function GIANT_HARPY_AIR_DAMAGE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )			-- 하피 공중 데미지 공통 함수

	if pNPCUnit:GetNowHP() <= 0 then	    
	    pNPCUnit:StateChange_LUA("GIANT_HARPY_DYING_SKY", true)
	else
		local bIsFly = pNPCUnit:GetFlag_LUA( 0 )	-- 현재 채공 여부
		
		if false == bIsFly then				-- 공중에서 맞았을 때, 지상 착륙 중이면 한바퀴 도는 모션으로 설정
			pNPCUnit:StateChange_LUA("GIANT_HARPY_LAND_AIR_DAMAGE", true)
		end
	end

end

function GIANT_HARPY_DAMAGE_REACT_FLY_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )		-- 하피 데미지 공통 함수

	if pNPCUnit:GetNowHP() <= 0 then	    
	    pNPCUnit:StateChange_LUA("GIANT_HARPY_DYING_SKY", true)
	else
		local bIsFly = pNPCUnit:GetFlag_LUA( 0 )	-- 현재 채공 여부
		
		if true == bIsFly then				-- 공중 채공 중이면, 공중 타격 모션으로 설정
			pNPCUnit:StateChange_LUA("GIANT_HARPY_AIR_DAMAGE_FRONT", true)
		end
	end

end

function GIANT_HARPY_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )				--  하피 지면 착지 설정 공통 함수

	pNPCUnit:SetFlag_LUA( 0, false )	-- 땅에 있다.

end