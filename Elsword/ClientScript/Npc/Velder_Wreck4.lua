-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 400.0,
	UNIT_HEIGHT		= 500.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

	UNIT_SCALE      = 1,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		
	},
	
	READY_SOUND = 
	{
	"VELDER_WRECK_Wait03.ogg",
    "VELDER_WRECK4_Combine01.ogg",
    "VELDER_WRECK2_Attack01.ogg",	
	"VELDER_WRECK4_Broken01.ogg",	
	},
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_VELDER_WRECK4.x",	
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 350,
	RUN_SPEED			= 450,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
}
--------------------------------------------------------------------------
INIT_COMPONENT =
{
	MAX_HP              = 30000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	FALL_DOWN			= TRUE,

	NOT_CULL  = TRUE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{	
	{ STATE_NAME = "VELDER_WRECK4_WAITSTART",		},
	{ STATE_NAME = "VELDER_WRECK4_WAIT",		},
	{ STATE_NAME = "VELDER_WRECK4_ATTACK",	LUA_FRAME_MOVE_FUNC = "VELDER_WRECK4_ATTACK_FRAME_MOVE", },	
	{ STATE_NAME = "VELDER_WRECK4_DAMAGE",	},
		
	{ STATE_NAME = "VELDER_WRECK4_DYING",	},
	
	START_STATE					= "VELDER_WRECK4_WAITSTART",
	WAIT_STATE					= "VELDER_WRECK4_WAIT",
		
	SMALL_DAMAGE_LAND_FRONT		= "VELDER_WRECK4_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "VELDER_WRECK4_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "VELDER_WRECK4_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "VELDER_WRECK4_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "VELDER_WRECK4_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "VELDER_WRECK4_DAMAGE",
	FLY_DAMAGE_FRONT			= "VELDER_WRECK4_DAMAGE",
	FLY_DAMAGE_BACK				= "VELDER_WRECK4_DAMAGE",
	SMALL_DAMAGE_AIR			= "VELDER_WRECK4_DAMAGE",	
	BIG_DAMAGE_AIR				= "VELDER_WRECK4_DAMAGE",
	DOWN_DAMAGE_AIR				= "VELDER_WRECK4_DAMAGE",
	DOWN_DAMAGE_AIR_LANDING		= "VELDER_WRECK4_DAMAGE",
	UP_DAMAGE					= "VELDER_WRECK4_DAMAGE",
	DAMAGE_REVENGE				= "",

	DYING_LAND_FRONT			= "VELDER_WRECK4_DYING",
	DYING_LAND_BACK				= "VELDER_WRECK4_DYING",
	DYING_SKY					= "VELDER_WRECK4_DYING",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,	-- sec
		TARGET_NEAR_RANGE			= 400,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,	-- cm
		TARGET_LOST_RANGE			= 1000,	-- cm
		TARGET_SUCCESS_RATE			= 100,  --80,		-- %
		ATTACK_TARGET_RATE			= 100,	-- 40,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100,	-- 60,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률                                            
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 200,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 150,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 70,   -- 70,
		FAR_WALK_RATE		= 70,   -- 30,
		
		JUMP_INTERVAL		= 8,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 10,
		DOWN_JUMP_RATE		= 100,	--  10,
		DOWN_DOWN_RATE		= 40,
		
		--LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL	= 3,	-- 초
		NEAR_WALK_RATE	= 100,	--  10,
		FAR_WALK_RATE	= 100,	-- 10,
		
		JUMP_INTERVAL	= 10,
		UP_JUMP_RATE	= 100,	-- 30,
		UP_DOWN_RATE	= 30,
		DOWN_JUMP_RATE	= 100,	--  30,
		DOWN_DOWN_RATE	= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		RATE			= 50,
		ESCAPE_RANGE	= 400,	-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}
--------------------------------------------------------------------------
VELDER_WRECK4_WAITSTART = 
{
	ANIM_NAME	= "WaitStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,

	INVINCIBLE					= { 0, 100, }, 		
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,

	NEVER_MOVE = TRUE,
	

	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"VELDER_WRECK4_WAIT",		},		
	},

	EFFECT_SET_LIST =
	{
		"Effectset_VELDER_SECRET_HOUSE_GATEUP", 0.0,
	},		
}
VELDER_WRECK4_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	PASSIVE_SPEED_X	= 0,

	INVINCIBLE					= { 0, 100, }, 		
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 2,

	NEVER_MOVE = TRUE,
	
	SOUND_PLAY0			= { 0.02, "VELDER_WRECK_Wait03.ogg" },
	

	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"VELDER_WRECK4_ATTACK",		},		
	},
}
--------------------------------------------------------------------------
VELDER_WRECK4_ATTACK = 
{
	ANIM_NAME	= "Attack",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= TRUE,
		
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
	
	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,

	SUPER_ARMOR				= TRUE,
	SUPER_ARMOR_NOT_RED		= TRUE,

	NEVER_MOVE = TRUE,
    
    SOUND_PLAY0			= { 0.04, "VELDER_WRECK4_Combine01.ogg" },
	SOUND_PLAY1			= { 2.2, "VELDER_WRECK2_Attack01.ogg" },	

	ATTACK_TIME0				= { 1.65, 2.25, },
		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EFFECT_SET_LIST =
	{
		"Effectset_VELDER_SECRET_HOUSE_DROP", 1.8,
	},	
}

function VELDER_WRECK4_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
		
	if pNPCUnit:AnimEventTimer_LUA( 2.25 ) then
	    pNPCUnit:SetCanPassUnit(false)	    
	end	

end
--------------------------------------------------------------------------
VELDER_WRECK4_DAMAGE = 
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= TRUE,
		
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
	NEVER_MOVE = TRUE,
		
	IMMADIATE_PACKET_SEND	= TRUE,

}
--------------------------------------------------------------------------
VELDER_WRECK4_DYING = 
{
	ANIM_NAME		= "Broken",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END		= TRUE,
	
	SOUND_PLAY0			= { 0.01, "VELDER_WRECK4_Broken01.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,

	EFFECT_SET_LIST =
	{
		"Effectset_VELDER_SECRET_HOUSE_BROKEN4", 0,
	},	
}


