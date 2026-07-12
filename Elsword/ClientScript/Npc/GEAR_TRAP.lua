-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0,
	UNIT_HEIGHT		= 500.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},

	READY_SOUND = 
	{
	"Gear_Trap_Dash_Loop.ogg",
    },
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Gear.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 3000,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 700,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "",
		
	SHOW_ON_MINIMAP		= FALSE,
	
	FALL_DOWN			= FALSE,
	

	

}

INIT_STATE = 
{
    { STATE_NAME = "GEAR_TRAP_START",				},
    { STATE_NAME = "GEAR_TRAP_DASH",				LUA_STATE_START_FUNC = "GEAR_TRAP_DASH_START_STATE",
                                            LUA_FRAME_MOVE_FUNC = "GEAR_TRAP_DASH_FRAME_MOVE",		},
    { STATE_NAME = "GEAR_TRAP_BROKEN_READY",		LUA_STATE_END_FUNC	= "GEAR_TRAP_BROKEN_READY_END",		},	
    { STATE_NAME = "GEAR_TRAP_BROKEN",				},	
    
	START_STATE					= "GEAR_TRAP_START",
	--WAIT_STATE					= "GEAR_TRAP_WAIT",
	-- robobeg : GEAR_TRAP_WAIT 상태가 없다
	WAIT_STATE					= "GEAR_TRAP_DASH",
	
	
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
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "GEAR_TRAP_BROKEN",
	DYING_LAND_BACK				= "GEAR_TRAP_BROKEN",
	DYING_SKY					= "GEAR_TRAP_BROKEN",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,		
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

------------------------------------------------------------------------------------
GEAR_TRAP_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT = TRUE,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GEAR_TRAP_DASH",						},
	},
}

GEAR_TRAP_DASH = 
{
    ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	RIGHT = TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,	
	
	ATTACK_TIME0				= { 0.0, 1.65, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
			
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		
		
		CAN_REVENGE				= FALSE,
		ATTACK_ALL_TEAM	= TRUE,
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 2000,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GEAR_TRAP_BROKEN_READY",				"CT_GEAR_TRAP_BROKEN_READY",	},
	},
	
	CT_GEAR_TRAP_BROKEN_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		STATE_TIME_OVER				= 10,
		RATE						= 100,
	},	
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
}

GEAR_TRAP_BROKEN_READY = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT = TRUE,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GEAR_TRAP_DASH",						},
	},
}

GEAR_TRAP_BROKEN =
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT = TRUE,
		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

------------------------------------------------------------------------------------

function GEAR_TRAP_BROKEN_READY_END( pKTDXApp, pX2Game, pNPCUnit )
    
    pNPCUnit:SetNowHP_LUA(0)
    
end	

function GEAR_TRAP_DASH_START_STATE( pKTDXApp, pX2Game, pNPCUnit )    
    local pEffectSet = pX2Game:GetEffectSet()		
		pEffectSet:PlayEffectSet_LUA( "EffectSet_GearTrap", pNPCUnit )		
end	

function GEAR_TRAP_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "Gear_Trap_Dash_Loop.ogg" )
	end
end	