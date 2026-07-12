-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 페넨시오 방어의 룬(RUNE_GUARD)

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.5,
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	},
	
	READY_SOUND = 
	{  
	},
	
		
	READY_XMESH = 
	{	    
	},
	
	READY_XSKIN_MESH = 
	{	    
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_PVP_HERO_PENENSIO.x",
}


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1400,
	DASH_JUMP_SPEED		= 1600,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 0,
	MP_CHARGE_RATE			= 0,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 0,
	SHADOW_FILE_NAME		= "shadow.dds",
		
	HITTED_TYPE				= HITTED_TYPE["HTD_NO_SOUND"],
	
	NOT_EXTRA_DAMAGE	= TRUE,
	
	FALL_DOWN				= FALSE,	
	
	SKY_DIE             = TRUE,		
		
	DIE_FLY             = FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
}


INIT_STATE = 
{
														
	{ STATE_NAME = "RUNE_GUARD_WAIT",		    LUA_STATE_START_FUNC = "RUNE_GUARD_WAIT_STATE_START", 		},
	{ STATE_NAME = "RUNE_GUARD_DYING",				},
	
	
	
	START_STATE					= "RUNE_GUARD_WAIT",
	WAIT_STATE					= "RUNE_GUARD_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "RUNE_GUARD_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "RUNE_GUARD_WAIT",
	BIG_DAMAGE_LAND_FRONT		= "RUNE_GUARD_WAIT",
	BIG_DAMAGE_LAND_BACK		= "RUNE_GUARD_WAIT",
	DOWN_DAMAGE_LAND_FRONT		= "RUNE_GUARD_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "RUNE_GUARD_WAIT",
	FLY_DAMAGE_FRONT			= "RUNE_GUARD_WAIT",
	FLY_DAMAGE_BACK				= "RUNE_GUARD_WAIT",
	SMALL_DAMAGE_AIR			= "RUNE_GUARD_WAIT",	
	BIG_DAMAGE_AIR				= "RUNE_GUARD_WAIT",
	DOWN_DAMAGE_AIR				= "RUNE_GUARD_WAIT",
	UP_DAMAGE					= "RUNE_GUARD_WAIT",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "RUNE_GUARD_DYING",
	DYING_LAND_BACK				= "RUNE_GUARD_DYING",
	DYING_SKY					= "RUNE_GUARD_DYING",

	REVENGE_ATTACK				= "",	}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	FLY_CHASE_MOVE = 
	{
	    DEST_HEIGHT_GAP     = 50,  -- 타겟과 유지할 높이
	    DEST_LAND_GAP       = 100,  -- 지면상에서의 타겟과 거리기준
	    DEST_AREA       = 100,  -- 타겟과의 지면거리를 기준으로 이 범위안에 있으면 도착했다고 판단
	    
	    FLY_MOVE_INTERVAL		= 2,
	    UNDERWATER_MODE	= TRUE,
	},
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
	},

}

RUNE_GUARD_WAIT = 
{
	ANIM_NAME					= "NoMotion",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	SUPER_ARMOR					= TRUE,
    SUPER_ARMOR_NOT_RED         = TRUE,   
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	RIGHT						= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	NEVER_MOVE					= TRUE,
	
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_PENENSIO_RUNE_GUARD", 0.1,
	},		
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	REFLECT_MAGIC = { 0.1, 100, },
			
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"RUNE_GUARD_DYING",		"CT_RUNE_GUARD_DYING"	},
	},
	CT_RUNE_GUARD_DYING =
	{
		STATE_TIME_OVER	= 7.0,
	},
}

RUNE_GUARD_DYING = 
{
	ANIM_NAME					= "NoMotion",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	RIGHT						= TRUE,
	
	
	-- EFFECT_SET_LIST = 
	-- {
		-- "EffectSet_Rena_Slide_Kick_Start", 0.1,
	-- },		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
}


------------------------------------------------------------------------------
function RUNE_GUARD_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )    
		pNPCUnit:SetShow(false) 
end




