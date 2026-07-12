-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	--UNIT_SCALE		= 0.625,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"WhiteCircle02.DDS",
		"Colorballgray.dds",
		"soket_earth_quake_smoke02.DDS",
		"rena_C_QuickDashJump_line.dds",
		"Arme_Ring2.dds",
		"secretVelder_alchemystBoss_magicAttackE_light.dds",
		"Feather.dds",
		"state_potion_flare.dds",
		"Sander_Aelo_Light.dds",
		"Arme_Ring2.dds",
		"WhitePoint.dds",
		"secretVelder_alchemystBoss_magicAttackE_light.dds",
	},
	
	READY_SOUND = 
	{
		"Goldwing_Alelo_Voice_AttackA01.ogg",
		"Goldwing_Alelo_Voice_AttackB01.ogg",
		"Goldwing_Alelo_Voice_DamageA01.ogg",
		"Goldwing_Alelo_Voice_DamageB01.ogg",
		"Goldwing_Alelo_Voice_Dying01.ogg",
		"Goldwing_Alelo_Voice_MagicAttackA01.ogg",
		"Goldwing_Alelo_Voice_SpecialAttackB01.ogg",
		"Goldwing_Alelo_Voice_Wait01.ogg",
		"BatBig_Fly2.ogg",
		"Landing_Meat01.ogg",
		"Landing_Meat02.ogg",
		"Pet_Fly02.ogg",
		"BatBig_Fly3.ogg",
		"Bat_Fly.ogg",
		"JumpLand2.ogg",
		"Swing_Big02.ogg",
		"Wind01.ogg",
		"Swing_Big01.ogg",
		"sliding02.ogg",
		"Nasod_Element_JumpUp.ogg",
		"Landing_Meat03.ogg",
	},
	
	READY_XMESH = 
	{
		"SI_A_ARA_STONE_CUTTER_Ground_Wave.Y",		
	},
	
	READY_XSKIN_MESH = 
	{
		"Aelo_Magic_Attack_A_Circle.X",
		"Aelo_Magic_Attack_A_Circle01.X",
		"Aelo_Magic_Attack_A_Circle02.X",
		"Aelo_Magic_Attack_A_Circle03.X",
		"Aelo_Magic_Attack_A_Circle04.X",
		"Spin_Liner03.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Goldwing_Alelo.x",	
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
	SUMMON_TIME			= 180,
}

INIT_STATE = 
{
	{ STATE_NAME = "GOLDWING_ALELO_FLY_WAIT_START",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_FLY_WAIT_START_STATE_START"		},
	
	-- 공중 wait
	{ STATE_NAME = "GOLDWING_ALELO_FLY_WAIT",						},
	
	-- 공중 이동
	{ STATE_NAME = "GOLDWING_ALELO_FLY_FRONT",					},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_FRONT_UP",					},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_FRONT_DOWN",				},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_BACK",						},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_BACK_UP",					},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_BACK_DOWN",				},
    { STATE_NAME = "GOLDWING_ALELO_FLY_UP",					    },
    { STATE_NAME = "GOLDWING_ALELO_FLY_DOWN",					    },
		
	-- 지상 wait
	{ STATE_NAME = "GOLDWING_ALELO_LAND_WAIT",					},
	
	-- 지상 이동
	{ STATE_NAME = "GOLDWING_ALELO_LAND_WALK",					},
	
	{ STATE_NAME = "GOLDWING_ALELO_LAND_JUMP_UP",					},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_JUMP_UP_DIR",				},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_JUMP_DOWN",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_LANDING_STATE_START",				},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_JUMP_DOWN_DIR",			},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_JUMP_DOWN_LANDING",		LUA_STATE_START_FUNC = "GOLDWING_ALELO_LANDING_STATE_START",				},
	
	-- 공중에서 지상으로 착지
	{ STATE_NAME = "GOLDWING_ALELO_START_LANDING",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_LANDING_STATE_START", 			
																STATE_COOL_TIME	= 10, 													},
	
	-- 지상에서 공중으로 비행
	{ STATE_NAME = "GOLDWING_ALELO_START_FLYING",					LUA_STATE_START_FUNC = "GOLDWING_ALELO_START_FLYING_STATE_START",
																LUA_FRAME_MOVE_FUNC = "GOLDWING_ALELO_START_FLYING_FRAME_MOVE", 			
																STATE_COOL_TIME	= 10, 													},
	
	-- LAND_MODE 기본 공격
	{ STATE_NAME = "GOLDWING_ALELO_ATTACK_A_READY",					},
	{ STATE_NAME = "GOLDWING_ALELO_ATTACK_A",					},
	
	-- LAND_MODE 차크람 2개 날리는 공격
	{ STATE_NAME = "GOLDWING_ALELO_MAGIC_ATTACK_A",				},	
	
	-- LAND_MODE 휠윈드
	{ STATE_NAME = "GOLDWING_ALELO_SPECIAL_ATTACK_A_READY",		},
	{ STATE_NAME = "GOLDWING_ALELO_SPECIAL_ATTACK_A_LOOP",		},
	{ STATE_NAME = "GOLDWING_ALELO_SPECIAL_ATTACK_A_END",		},
	
	
	-- FLY_MODE 차크람 2개 날리는 공격
	{ STATE_NAME = "GOLDWING_ALELO_MAGIC_ATTACK_B",				STATE_COOL_TIME	= 5},	
	
	-- FLY_MODE 땅에 박혀서 전진하는 차크람 2개 날리는 공격
	{ STATE_NAME = "GOLDWING_ALELO_SPECIAL_ATTACK_B",			STATE_COOL_TIME	= 5},	
	
	--리액션 관련 ( 지상 피격 )
	{ STATE_NAME = "GOLDWING_ALELO_LAND_DAMAGE_FRONT",			},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_DAMAGE_BACK",				},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_DAMAGE_DOWN_FRONT",		},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_DAMAGE_DOWN_BACK",		},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_STAND_UP_FRONT",			},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_STAND_UP_BACK",			},

	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_FRONT",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_DAMAGE_REACT_FLY_START_FUNC", 		},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_BACK",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_DAMAGE_REACT_FLY_START_FUNC", 		},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_FRONT_LANDING",		},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_BACK_LANDING",		},
	
	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_UP",					LUA_STATE_START_FUNC = "GOLDWING_ALELO_DAMAGE_REACT_FLY_START_FUNC", 	},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_FALL",				},
	{ STATE_NAME = "GOLDWING_ALELO_FLY_DAMAGE_DOWN_LANDING",		},
	
	{ STATE_NAME = "GOLDWING_ALELO_LAND_AIR_DAMAGE",				},
	
	--리액션 관련 ( 공중 피격 )
	{ STATE_NAME = "GOLDWING_ALELO_AIR_DAMAGE_FRONT",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_AIR_DAMAGE_START_FUNC", 			},
	{ STATE_NAME = "GOLDWING_ALELO_AIR_DAMAGE_BACK",				LUA_STATE_START_FUNC = "GOLDWING_ALELO_AIR_DAMAGE_START_FUNC", 			},		
	
	{ STATE_NAME = "GOLDWING_ALELO_LAND_DYING_FRONT",				},
	{ STATE_NAME = "GOLDWING_ALELO_LAND_DYING_BACK",				},
	
	{ STATE_NAME = "GOLDWING_ALELO_AIR_DYING",					},
	{ STATE_NAME = "GOLDWING_ALELO_AIR_DYING_FALL",				},
	{ STATE_NAME = "GOLDWING_ALELO_AIR_DYING_LANDING",			},

{ STATE_NAME = "GOLDWING_ALELO_FLY_END", },
	
    START_STATE					= "GOLDWING_ALELO_FLY_WAIT_START",	
	WAIT_STATE					= "GOLDWING_ALELO_FLY_WAIT",
	SUMMON_END_STATE			= "GOLDWING_ALELO_FLY_END",
	
	SMALL_DAMAGE_LAND_FRONT		= "GOLDWING_ALELO_LAND_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "GOLDWING_ALELO_LAND_DAMAGE_BACK",
	SMALL_DAMAGE_AIR_FRONT		= "GOLDWING_ALELO_AIR_DAMAGE_FRONT",
	SMALL_DAMAGE_AIR_BACK		= "GOLDWING_ALELO_AIR_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "GOLDWING_ALELO_AIR_DAMAGE_FRONT",
	
	BIG_DAMAGE_LAND_FRONT		= "GOLDWING_ALELO_LAND_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "GOLDWING_ALELO_LAND_DAMAGE_BACK",
	BIG_DAMAGE_AIR_FRONT		= "GOLDWING_ALELO_AIR_DAMAGE_FRONT",
	BIG_DAMAGE_AIR_BACK			= "GOLDWING_ALELO_AIR_DAMAGE_BACK",
	BIG_DAMAGE_AIR				= "GOLDWING_ALELO_AIR_DAMAGE_FRONT",
	
	DOWN_DAMAGE_LAND_FRONT		= "GOLDWING_ALELO_LAND_DAMAGE_DOWN_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GOLDWING_ALELO_LAND_DAMAGE_DOWN_BACK",
	DOWN_DAMAGE_AIR				= "GOLDWING_ALELO_AIR_DAMAGE_FRONT",
	UP_DAMAGE					= "GOLDWING_ALELO_FLY_DAMAGE_UP",
	
	FLY_DAMAGE_FRONT			= "GOLDWING_ALELO_FLY_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "GOLDWING_ALELO_FLY_DAMAGE_BACK",
	REVENGE_ATTACK				= "",
	--DAMAGE_FLUSH_LAND_FRONT		= "GOLDWING_ALELO_DAMAGE_FRONT",
	--DAMAGE_FLUSH_LAND_BACK		= "GOLDWING_ALELO_DAMAGE_BACK",
	DAMAGE_FLUSH_AIR			= "GOLDWING_ALELO_AIR_DAMAGE_FRONT",
	DAMAGE_REVENGE				= "",
	
	DAMAGE_EXTRA_STATES         = {"GOLDWING_ALELO_LAND_STAND_UP_FRONT","GOLDWING_ALELO_LAND_STAND_UP_BACK",
	"GOLDWING_ALELO_FLY_DAMAGE_FRONT_LANDING","GOLDWING_ALELO_FLY_DAMAGE_BACK_LANDING",
	"GOLDWING_ALELO_FLY_DAMAGE_FALL","GOLDWING_ALELO_FLY_DAMAGE_DOWN_LANDING","GOLDWING_ALELO_LAND_AIR_DAMAGE",},	
	
	WAIT_STATES                 = { "GOLDWING_ALELO_LAND_WAIT", },	
	
	DYING_LAND_FRONT			= "GOLDWING_ALELO_LAND_DYING_FRONT",
	DYING_LAND_BACK				= "GOLDWING_ALELO_LAND_DYING_BACK",
	DYING_SKY					= "GOLDWING_ALELO_AIR_DYING_LANDING",
}


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
	    DEST_HEIGHT_GAP     = 250,  -- 타겟과 유지할 높이
	    DEST_LAND_GAP       = 250,  -- 지면상에서의 타겟과 거리기준
	    DEST_AREA       	= 100,  -- 타겟과의 지면거리를 기준으로 이 범위안에 있으면 도착했다고 판단
	    
	    FLY_MOVE_INTERVAL	= 1.5,
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
GOLDWING_ALELO_FLY_END = 
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
GOLDWING_ALELO_FLY_WAIT_START = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_FLY_WAIT",	},
		
	},
}

function GOLDWING_ALELO_FLY_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )		-- 공중 채공 여부 ( 공중에서 피격시 현재 FLY 상태에 따른 스테이트를 적용시키기 위해 )

end

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_WAIT = 
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
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GOLDWING_ALELO_MAGIC_ATTACK_B",		"CT_GOLDWING_ALELO_MAGIC_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GOLDWING_ALELO_SPECIAL_ATTACK_B",		"CT_GOLDWING_ALELO_SPECIAL_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GOLDWING_ALELO_START_LANDING",		"CT_GOLDWING_ALELO_START_LANDING",	},
		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",		},
	    	 
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",				},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",			},
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",			},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",		},
	},
	
	CT_GOLDWING_ALELO_MAGIC_ATTACK_B = 
	{
		HAVE_TARGET					= 1,
		RATE						= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
	},
	CT_GOLDWING_ALELO_SPECIAL_ATTACK_B = 
	{
		HAVE_TARGET					= 1,
		RATE						= 100,
		DISTANCE_TO_TARGET_NEAR		= 800,
	},
	
	CT_GOLDWING_ALELO_START_LANDING = 
	{
		RATE			= 5,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_FRONT = 
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
		SOUND_PLAY0 = { 0.33, "BatBig_Fly2.ogg"},	

	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",	},
	    
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",	},
				
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_FRONT_UP = 
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
		SOUND_PLAY0 = { 0.33, "BatBig_Fly2.ogg"},	

	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",	},	
			
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",	},
		
		
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_FRONT_DOWN = 
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
		SOUND_PLAY0 = { 0.33, "BatBig_Fly2.ogg"},	

	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",	},
	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",	},			
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_BACK = 
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
			SOUND_PLAY0 = { 0.33, "BatBig_Fly2.ogg"},

	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		},   
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",	},				
		
		
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_BACK_UP = 
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
			SOUND_PLAY0 = { 0.33, "BatBig_Fly2.ogg"},

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",	},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_BACK_DOWN = 
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
			SOUND_PLAY0 = { 0.33, "BatBig_Fly2.ogg"},

	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],			"GOLDWING_ALELO_FLY_DOWN",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		}, 
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",	},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_UP = 
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
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLDWING_ALELO_FLY_WAIT",		"CT_GOLDWING_ALELO_FLY_WAIT",	},	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				"GOLDWING_ALELO_FLY_DOWN",		},    	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GOLDWING_ALELO_FLY_WAIT",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],				"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],			"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],		"GOLDWING_ALELO_FLY_BACK_DOWN",	},
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],			"GOLDWING_ALELO_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],			"GOLDWING_ALELO_FLY_FRONT_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],		"GOLDWING_ALELO_FLY_FRONT_DOWN",	},				
	},
	
	CT_GOLDWING_ALELO_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DOWN = 
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
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GOLDWING_ALELO_FLY_WAIT",		"CT_GOLDWING_ALELO_FLY_WAIT",	},	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],			"GOLDWING_ALELO_FLY_UP",			},	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],				"GOLDWING_ALELO_FLY_WAIT",		},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],			"GOLDWING_ALELO_FLY_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],		"GOLDWING_ALELO_FLY_BACK_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],	"GOLDWING_ALELO_FLY_BACK_DOWN",	},    	 
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],		"GOLDWING_ALELO_FLY_FRONT",		},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],		"GOLDWING_ALELO_FLY_FRONT_UP",	},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],	"GOLDWING_ALELO_FLY_FRONT_DOWN",	},		
		
	},
	
	CT_GOLDWING_ALELO_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_WAIT = 
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
	
	FLY_AI                      = FALSE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	EVENT_PROCESS = 
	{	    
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLDWING_ALELO_LAND_JUMP_DOWN",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLDWING_ALELO_ATTACK_A_READY",		"CT_GOLDWING_ALELO_ATTACK_A_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLDWING_ALELO_MAGIC_ATTACK_A",		"CT_GOLDWING_ALELO_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLDWING_ALELO_SPECIAL_ATTACK_A_READY","CT_GOLDWING_ALELO_SPECIAL_ATTACK_A_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GOLDWING_ALELO_START_FLYING",		"CT_GOLDWING_ALELO_START_FLYING",		},
	    	 
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GOLDWING_ALELO_LAND_WALK",			},
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GOLDWING_ALELO_LAND_WALK",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GOLDWING_ALELO_LAND_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GOLDWING_ALELO_LAND_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GOLDWING_ALELO_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GOLDWING_ALELO_LAND_JUMP_DOWN_DIR",	},
		
	},
	
	CT_GOLDWING_ALELO_ATTACK_A_READY = 
	{
		RATE						= 100,
		DISTANCE_TO_TARGET_NEAR		= 300,
	},
	
	CT_GOLDWING_ALELO_MAGIC_ATTACK_A = 
	{
		RATE						= 5,
		DISTANCE_TO_TARGET_NEAR		= 300,
	},
	
	CT_GOLDWING_ALELO_SPECIAL_ATTACK_A_READY = 
	{
		RATE						= 5,
		DISTANCE_TO_TARGET_NEAR		= 300,
	},
	
	CT_GOLDWING_ALELO_START_FLYING = 
	{
		RATE						= 10,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_WALK = 
{
	ANIM_NAME					= "Walk_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLDWING_ALELO_LAND_JUMP_DOWN",		},
	    	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"GOLDWING_ALELO_LAND_WAIT",			},
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"GOLDWING_ALELO_LAND_WALK",			},
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"GOLDWING_ALELO_LAND_WALK",			},	    
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"GOLDWING_ALELO_LAND_JUMP_UP",		},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"GOLDWING_ALELO_LAND_JUMP_UP_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"GOLDWING_ALELO_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"GOLDWING_ALELO_LAND_JUMP_DOWN_DIR",	},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GOLDWING_ALELO_LAND_JUMP_DOWN", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"GOLDWING_ALELO_LAND_JUMP_DOWN_DIR", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
		SOUND_PLAY0 = { 0.01, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.75, "Landing_Meat02.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_LAND_JUMP_DOWN_LANDING", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	FLY_AI                      = FALSE,
		SOUND_PLAY0 = { 0.01, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.75, "Landing_Meat02.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_LAND_JUMP_DOWN_LANDING", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_JUMP_DOWN_LANDING = 
{
	ANIM_NAME					= "JumpLanding_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
		SOUND_PLAY0 = { 0.01, "Landing_Meat01.ogg"},
	SOUND_PLAY1 = { 0.75, "Landing_Meat02.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_LAND_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------
	
GOLDWING_ALELO_START_LANDING =
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_LAND_JUMP_DOWN_LANDING", },
	},	
}
	
----------------------------------------------------------------------------------------------------------------------------------------	

GOLDWING_ALELO_START_FLYING =
{
	ANIM_NAME					= "Start_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	FLY_AI                      = FALSE,
		SOUND_PLAY0 = { 0.45, "Pet_Fly01.ogg"},
	SOUND_PLAY1 = { 0.85, "Pet_Fly02.ogg"},
	SOUND_PLAY2 = { 1.41, "BatBig_Fly3.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_FLY_WAIT", },
	},
}

function GOLDWING_ALELO_START_FLYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetFlag_LUA( 0, true )	-- 날고 있다.

end

function GOLDWING_ALELO_START_FLYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.328 ) then
		pNPCUnit:SetSpeedY( 1700 )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
				SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"GOLDWING_ALELO_LAND_WAIT", 				},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageB01.ogg",30},
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"GOLDWING_ALELO_LAND_WAIT", 				},
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_DAMAGE_DOWN_FRONT = 
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
		SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},
			SOUND_PLAY1 = { 0.70, "JumpLand2.ogg"},	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_LAND_STAND_UP_FRONT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_DAMAGE_DOWN_BACK = 
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
		SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageB01.ogg",30},
				SOUND_PLAY1 = { 0.70, "JumpLand2.ogg"},	


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_LAND_STAND_UP_BACK", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_STAND_UP_FRONT = 
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
		SOUND_PLAY0 = { 0.45, "Swing_Big02.ogg"},	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_LAND_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_STAND_UP_BACK = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_LAND_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageAirFlyFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
		
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_LAND_DAMAGE_DOWN_FRONT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageAirFlyBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageB01.ogg",30},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_LAND_DAMAGE_DOWN_BACK", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_FRONT_LANDING = 
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
			SOUND_PLAY0 = { 0.01, "down.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "GOLDWING_ALELO_FLY_DAMAGE_FRONT",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLDWING_ALELO_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_BACK_LANDING = 
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
			SOUND_PLAY0 = { 0.01, "down.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "GOLDWING_ALELO_FLY_DAMAGE_BACK",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GOLDWING_ALELO_LAND_STAND_UP_BACK", 	},
	},
}


----------------------------------------------------------------------------------------------------------------------------------------
	
GOLDWING_ALELO_AIR_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	FLY_AI                      = TRUE,
			SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_FLY_WAIT", },
	},	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_AIR_DAMAGE_BACK = 
{
	ANIM_NAME					= "DamageBack_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	FLY_AI                      = TRUE,
		
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_FLY_WAIT", },
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_DYING_FRONT = 
{
	ANIM_NAME					= "DamageDownFront_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
			SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_Dying01.ogg"},
			SOUND_PLAY1 = { 0.70, "JumpLand2.ogg"},	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],  	"GOLDWING_ALELO_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLDWING_ALELO_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_DYING_BACK = 
{
	ANIM_NAME					= "DamageDownBack_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	FLY_AI                      = FALSE,
	
	DYING_END					= TRUE,
		SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_Dying01.ogg"},
				SOUND_PLAY1 = { 0.70, "JumpLand2.ogg"},	


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],  	"GOLDWING_ALELO_LAND_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLDWING_ALELO_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_UP = 
{
	ANIM_NAME					= "DamageAirUp_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	FLY_AI                      = FALSE,
		
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],  	"GOLDWING_ALELO_FLY_DAMAGE_FALL",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_FLY_DAMAGE_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_FALL = 
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
		{ STATE_CHANGE_TYPE["SCT_POSITIVE_Y_SPEED"],  	"GOLDWING_ALELO_FLY_DAMAGE_UP",			},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_FLY_DAMAGE_DOWN_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_FLY_DAMAGE_DOWN_LANDING = 
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
		SOUND_PLAY0 = { 0.01, "down.ogg"},		

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],  	"GOLDWING_ALELO_FLY_DAMAGE_FALL",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GOLDWING_ALELO_LAND_STAND_UP_FRONT", 	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_LAND_AIR_DAMAGE =
{
	ANIM_NAME					= "DamageAir_Land",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,	
	
	FLY_AI                      = FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_DamageA01.ogg",30},
	SOUND_PLAY1 = { 0.25, "Bat_Fly.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "GOLDWING_ALELO_LAND_WAIT",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_ATTACK_A_READY =
{
	ANIM_NAME					= "Attack_A_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 400,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Nasod_Element_JumpUp.ogg"},

		EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"GOLDWING_ALELO_ATTACK_A",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_ATTACK_A_READY", 0.0,
	},
}
GOLDWING_ALELO_ATTACK_A =
{
	ANIM_NAME					= "Attack_A_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	
		SOUND_PLAY0 = { 0.01, "JumpLand2.ogg"},
		SOUND_PLAY1 = { 0.41, "Goldwing_Alelo_Voice_AttackA01.ogg"},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLDWING_ALELO_LAND_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"GOLDWING_ALELO_LAND_WAIT",		},
	},
	
	ATTACK_TIME0	= { 0.06, 0.2, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_KICK_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		
		BACK_SPEED_X	= 800,
		
		CAN_REVENGE			= TRUE,	
		
		CAMERA_CRASH_GAP	= 10.0,	
		CAMERA_CRASH_TIME	= 0.3,		
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_ATTACK_A", 0.0,
	},
	
}
GOLDWING_ALELO_MAGIC_ATTACK_A =
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_SpecialAttackB01.ogg"},
	SOUND_PLAY1 = { 0.85, "Swing_Big02.ogg"},
	SOUND_PLAY2 = { 1.10, "Dark_Sentinel_DamageAir.ogg"},
	SOUND_PLAY3 = { 1.40, "Dark_Sentinel_DamageAir.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLDWING_ALELO_LAND_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"GOLDWING_ALELO_LAND_WAIT",		},
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_MAGIC_ATTACK_A", 0.0,
	},
}

GOLDWING_ALELO_SPECIAL_ATTACK_A_READY =
{
	ANIM_NAME					= "Special_Attack_A_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	SUPER_ARMOR					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_AttackB01.ogg"},

		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"GOLDWING_ALELO_SPECIAL_ATTACK_A_LOOP",		},
	},
	
	ATTACK_TIME0	= { 0.56, 1.41, },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		
		BACK_SPEED_X	= 10,
		
		CAN_REVENGE			= TRUE,	
		
		CAMERA_CRASH_GAP = 5,
		CAMERA_CRASH_TIME = 0.5,
		RE_ATTACK = TRUE,
		HIT_GAP = 0.2,	
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_SPECIAL_ATTACK_A_READY", 0.0,
	},
	
	--DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIFE_TIME = 3.5,
	DELETE_EFFECT_SET_ON_DIE = TRUE,
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
}
GOLDWING_ALELO_SPECIAL_ATTACK_A_LOOP =
{
	ANIM_NAME					= "Special_Attack_A_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	SUPER_ARMOR					= TRUE,
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	
	
	--루프처리 필요
	SOUND_PLAY0 = { 0.01, "Wally7_SpinAttack.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "GOLDWING_ALELO_SPECIAL_ATTACK_A_END", "CT_GOLDWING_ALELO_SPECIAL_ATTACK_A_END", },
	},
	
	CT_GOLDWING_ALELO_SPECIAL_ATTACK_A_END =
	{
		STATE_TIME_OVER = 1.5,
	},
		
	ATTACK_TIME0	= { 0, 0.18, },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		
		BACK_SPEED_X	= 10,
		
		CAN_REVENGE			= TRUE,	
		
		CAMERA_CRASH_GAP = 5,
		CAMERA_CRASH_TIME = 0.2,
		RE_ATTACK = TRUE,
		HIT_GAP = 0.1,	
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_SPECIAL_ATTACK_A_LOOP", 0.0,
	},
	
	--DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	DELETE_EFFECT_SET_ON_DIE = TRUE,
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
}
GOLDWING_ALELO_SPECIAL_ATTACK_A_END =
{
	ANIM_NAME					= "Special_Attack_A_End",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,		
	SUPER_ARMOR					= TRUE,
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	FLY_AI                      = FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"GOLDWING_ALELO_LAND_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], 				"GOLDWING_ALELO_LAND_WAIT",		},
	},
	
	ATTACK_TIME0	= { 0, 0.48, },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE	= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		
		BACK_SPEED_X	= 10,
		
		CAN_REVENGE			= TRUE,	
		
		CAMERA_CRASH_GAP = 5,
		CAMERA_CRASH_TIME = 0.2,
		RE_ATTACK = TRUE,
		HIT_GAP = 0.2,	
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_SPECIAL_ATTACK_A_END", 0.0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	DELETE_EFFECT_SET_ON_DIE = TRUE,
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
}
----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_MAGIC_ATTACK_B =
{
	ANIM_NAME					= "Magic_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_SET0_RATE = 50, 
	SOUND_SET1_RATE = 50, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Goldwing_Alelo_Voice_MagicAttackA01.ogg" },                        
			SOUND_PLAY1    = { 0.31, "BatBig_Fly2.ogg" },                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Goldwing_Alelo_Voice_SpecialAttackB01.ogg" },    
			SOUND_PLAY1    = { 0.31, "BatBig_Fly2.ogg" },  			
		},                     
	},


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "GOLDWING_ALELO_FLY_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_MAGIC_ATTACK_B", 0.0,
	},
}

GOLDWING_ALELO_SPECIAL_ATTACK_B =
{
	ANIM_NAME					= "Special_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_				= 0,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_SpecialAttackB01.ogg"},
	SOUND_PLAY1 = { 0.11, "BatBig_Small_Fly2.ogg"},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "GOLDWING_ALELO_FLY_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_ALELO_SPECIAL_ATTACK_B", 0.0,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_AIR_DYING = 
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
	
		SOUND_PLAY0 = { 0.01, "Goldwing_Alelo_Voice_Dying01.ogg"},	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GOLDWING_ALELO_AIR_DYING_FALL",	},
	},
}

function GOLDWING_ALELO_DYING_SKY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	--pNPCUnit:SetPosition( pNPCUnit:GetPos() )

end

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_AIR_DYING_FALL = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"GOLDWING_ALELO_AIR_DYING_LANDING",	},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

GOLDWING_ALELO_AIR_DYING_LANDING = 
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
			SOUND_PLAY0 = { 0.01, "down.ogg"},

	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

function GOLDWING_ALELO_AIR_DAMAGE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )			-- 하피 공중 데미지 공통 함수

	if pNPCUnit:GetNowHP() <= 0 then	    
	    pNPCUnit:StateChange_LUA("GOLDWING_ALELO_DYING_SKY", true)
	else
		local bIsFly = pNPCUnit:GetFlag_LUA( 0 )	-- 현재 채공 여부
		
		if false == bIsFly then				-- 공중에서 맞았을 때, 지상 착륙 중이면 한바퀴 도는 모션으로 설정
			pNPCUnit:StateChange_LUA("GOLDWING_ALELO_LAND_AIR_DAMAGE", true)
		end
	end

end

function GOLDWING_ALELO_DAMAGE_REACT_FLY_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )		-- 하피 데미지 공통 함수

	if pNPCUnit:GetNowHP() <= 0 then	    
	    pNPCUnit:StateChange_LUA("GOLDWING_ALELO_DYING_SKY", true)
	else
		local bIsFly = pNPCUnit:GetFlag_LUA( 0 )	-- 현재 채공 여부
		
		if true == bIsFly then				-- 공중 채공 중이면, 공중 타격 모션으로 설정
			pNPCUnit:StateChange_LUA("GOLDWING_ALELO_AIR_DAMAGE_FRONT", true)
		end
	end

end

function GOLDWING_ALELO_LANDING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )					--  하피 지면 착지 설정 공통 함수

	pNPCUnit:SetFlag_LUA( 0, false )	-- 땅에 있다.

end