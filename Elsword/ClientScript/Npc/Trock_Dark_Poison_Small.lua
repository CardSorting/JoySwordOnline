-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_TROCK_DARK_POISON_Small.X",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 0,
	G_ACCEL				= 0,
	MAX_G_SPEED			= 0,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	OUT_LINE_WIDTH_SCALE = 0.5,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "BLACK_FLOWER01",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_WOOD"],
	
    FALL_DOWN				= FALSE,
	SKY_DIE                 = TRUE,
	DIE_FLY					= 0,
	
	DAMAGE_DOWN         = FALSE,	
}




INIT_STATE = 
{
	{ STATE_NAME = "TROCK_DARK_POISON_SMALL_START",	LUA_FRAME_MOVE_FUNC = "TROCK_DARK_POISON_SMALL_STATE_START"	},
	{ STATE_NAME = "TROCK_DARK_POISON_SMALL_WAIT",		},
	
	START_STATE					= "TROCK_DARK_POISON_SMALL_START",
	WAIT_STATE					= "TROCK_DARK_POISON_SMALL_WAIT",

	REVENGE_ATTACK				= "",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2000,		-- cm
		TARGET_LOST_RANGE			= 3000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 50,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
		PATROL_BEGIN_RATE		= 0,		
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



TROCK_DARK_POISON_SMALL_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 4,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"TROCK_DARK_POISON_SMALL_WAIT",		},
	},
}


function TROCK_DARK_POISON_SMALL_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	 local vPos = pNPCUnit:GetPos()
	 vPos.x = vPos.x
	 vPos.y = vPos.y
	 vPos.z = vPos.z
	
	pNPCUnit:SetPositionForce( vPos )

end


TROCK_DARK_POISON_SMALL_WAIT = 
{
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

    SOUND_PLAY0			= { 0.001, "Trock_Dark_Poison_Bubble.ogg" },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	--VIEW_TARGET					= FALSE,
	--EVENT_INTERVAL_TIME0		= 4,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0	= { 0, 999.0, },	
	
	--[[
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.5,
		
		BACK_SPEED_X			= 800,
		--BACK_SPEED_Y			= 1500,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	--]]
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_NO_SOUND"],
		REACT_TYPE	= REACT_TYPE["RT_DUMMY_DAMAGE"],
		
		DAMAGE = 
		{
			--PHYSIC	= 1,
		},
		
		--BACK_SPEED_X	= 800,
		BACK_SPEED_X	= 0.0,
		BACK_SPEED_Y	= 0.0,
		
		CAMERA_CRASH_GAP	= 5.0,
		CAMERA_CRASH_TIME	= 0.2,
		
		RE_ATTACK				= TRUE,
		HIT_GAP					= 0.9,
		
		NO_DAMAGE               = TRUE,	
		RATE_MODIFIER			= 0,
		
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_DARK_POISON"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_MP_PER_SECOND"], BUFF_BEHAVIOR_TYPE["BBT_CHANGE_NOW_HP_PER_SECOND"], },
				
				BBT_CHANGE_NOW_MP_PER_SECOND =
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_PERCENT"],
					PERCENT =
					{
						-0.0005,
					},
				},
				
				BBT_CHANGE_NOW_HP_PER_SECOND = 
				{
					BUFF_CHANGE_TYPE = BUFF_CHANGE_TYPE["BCT_PERCENT"],
					PERCENT =
					{
						-0.001,
					},
				},
			},
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						1,
					},
				},
			},
		},
	},
		
	-- EFFECT_SET_LIST =
	-- {
		-- "EffectSet_Sander_TROCK_DARK_POISON_SMALL_Start", 0,
		-- "EffectSet_Sander_TROCK_DARK_POISON_SMALL_End", 0,
	-- },
}

------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
