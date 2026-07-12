-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	--ALPHA_BLEND		= TRUE,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	  "Peita_Trap_Column_Broken.ogg",
	 
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
	MOTION_FILE_NAME		= "Motion_Peita_Offerings_Column.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Altera_Plain_Recyle_Mine",
		
	SHOW_ON_MINIMAP		= FALSE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "COLUMN_WAIT",   },		
	{ STATE_NAME = "COLUMN_BROKEN", },
	--{ STATE_NAME = "COLUMN_DYING",  },		

	START_STATE					= "COLUMN_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "COLUMN_WAIT",
	
	DYING_LAND_FRONT			= "COLUMN_BROKEN",
	DYING_LAND_BACK				= "COLUMN_BROKEN",
	DYING_SKY					= "COLUMN_BROKEN",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.5,		-- sec
		TARGET_NEAR_RANGE			= 600,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,		-- cm
		TARGET_LOST_RANGE			= 600,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 100,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 100,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
}


COLUMN_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	--ADD_POS_Y                   = 250,
	--ADD_POS_Z                   = 200,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 1,
	
	RIGHT = TRUE,	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"COLUMN_BROKEN",				"CF_COLUMN_BROKEN",	},
	},
}

function CF_COLUMN_BROKEN( pKTDXApp, pX2Game, pNPCUnit )
    
    bFine = pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 1500 )
    if bFine == true then
        pNPCUnit:SetNowHP_LUA(0)
        return true
    end   
	
	return false
end

COLUMN_BROKEN = 
{
	ANIM_NAME					= "Broken",
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
		
   -- ANIM_SPEED                  = 3,
	DYING_SPEED     = 1.1,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	RIGHT = TRUE,
	--ADD_POS_Y                   = 250,
	--ADD_POS_Z                   = 200,
		
    ATTACK_TIME0				= { 0.01, 3.0, },


    SOUND_PLAY0			= { 0.131, "Peita_Trap_Column_Broken.ogg" },


	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		DAMAGE_TIME		= 999999,
		

		CAN_REVENGE		= FALSE,
		ATTACK_ALL_TEAM	= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},

		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= -300,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	
		
		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.5,
		
	},		

	DYING_END					= TRUE,
}
