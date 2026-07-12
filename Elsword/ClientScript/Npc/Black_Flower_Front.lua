-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_SCALE		= 2,
	--ADD_POS_Y					= -200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	
	},
	
	READY_SOUND = 
	{
	    "Black_Flower_Attack01.ogg",
		"Black_Flower_Dying01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_BLACK_FLOWER_TRAP.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
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
	{ STATE_NAME = "BLACK_FLOWER_START",					},
	{ STATE_NAME = "BLACK_FLOWER_WAIT",						},
	
	
	{ STATE_NAME = "BLACK_FLOWER_ATTACK",	LUA_FRAME_MOVE_FUNC = "BLACK_FLOWER_ATTACK_FRAME_MOVE",	STATE_COOL_TIME	=10	, },
	
	
	--리액션 관련
	{ STATE_NAME = "BLACK_FLOWER_DAMAGE",					},	
	{ STATE_NAME = "BLACK_FLOWER_DYING",					LUA_FRAME_MOVE_FUNC = "BLACK_FLOWER_DYING_FRAME_MOVE", },
	
	START_STATE					= "BLACK_FLOWER_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "BLACK_FLOWER_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "BLACK_FLOWER_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "BLACK_FLOWER_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "BLACK_FLOWER_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "BLACK_FLOWER_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "BLACK_FLOWER_DAMAGE",
	FLY_DAMAGE_FRONT			= "BLACK_FLOWER_DAMAGE",
	FLY_DAMAGE_BACK				= "BLACK_FLOWER_DAMAGE",
	SMALL_DAMAGE_AIR			= "BLACK_FLOWER_DAMAGE",	
	BIG_DAMAGE_AIR				= "BLACK_FLOWER_DAMAGE",
	DOWN_DAMAGE_AIR				= "BLACK_FLOWER_DAMAGE",
	UP_DAMAGE					= "BLACK_FLOWER_DAMAGE",
	DAMAGE_REVENGE				= "BLACK_FLOWER_DAMAGE",
	
	WAIT_STATES                 = { "BLACK_FLOWER_WAIT", },
	
	DYING_LAND_FRONT			= "BLACK_FLOWER_DYING",
	DYING_LAND_BACK				= "BLACK_FLOWER_DYING",
	DYING_SKY					= "BLACK_FLOWER_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
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



BLACK_FLOWER_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	ADD_POS_Y					= -45.0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 4,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"BLACK_FLOWER_WAIT",		},	
	},
}



BLACK_FLOWER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 4,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BLACK_FLOWER_ATTACK",			"CT_BLACK_FLOWER_ATTACK",	},	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"BLACK_FLOWER_WAIT",		},	
	},
	
	CT_BLACK_FLOWER_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 100,
	},
}



BLACK_FLOWER_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

	SOUND_PLAY0					= { 0.1 , "Black_Flower_Attack01.ogg" },
	
	SUPER_ARMOR					= TRUE,	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 3,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"BLACK_FLOWER_WAIT",	},
	},
}


BLACK_FLOWER_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BLACK_FLOWER_WAIT",				},
	},
}

BLACK_FLOWER_DYING = 
{
	ANIM_NAME					= "Broken",
	ANIM_SPEED					= 0.5,
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0					= { 0.1 , "Black_Flower_Dying01.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,

	DYING_END					= TRUE,
	DYING_SPEED					= 0.1,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Black_Flower_Dying", 0,	
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



-------------------------------------------------------------------------------
function BLACK_FLOWER_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


    if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()	
		local vRot = pNPCUnit:GetRotateDegree()
		
		vRot.z = vRot.z + 180
	
		if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "BLACK_FLOWER_ATTACK", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y-1000, vRot )            
        end		
		
	end
end




-------------------------------------------------------------------------------
function BLACK_FLOWER_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	--[[if pNPCUnit:AnimEventTimer_LUA( 0.333 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()	
		local vRot = pNPCUnit:GetRotateDegree()
	
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "BLACK_FLOWER_DYING_ATTACK", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y, vRot )            

	end
	--]]
	
end











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
