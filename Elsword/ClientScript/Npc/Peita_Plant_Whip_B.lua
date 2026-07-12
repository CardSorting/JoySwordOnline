-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.4,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    
	},
	
	READY_SOUND = 
	{
	  "Plant_Whip_Attack.ogg",
	  "Plant_Whip_Damage.ogg",
	  "Plant_Whip_Dying.ogg", --
	  "Plant_Whip_Siege.ogg", --
	  "Plant_Whip_WaitStart.ogg",  --
	 
	},
	
	READY_XSKIN_MESH = 
	{
	    
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_PLANT_WHIP.x",
	ADD_ROTATE_Y			= -180.0,
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
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Bone02",
	MIND_FLAG_HEIGHT		= 280.0,
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	--HEAD_BONE_NAME		= "Bip01_Head",
	
	DIE_FLY             = 0,
	DAMAGE_DOWN         = FALSE,		
	
}

INIT_STATE = 
{       
	{ STATE_NAME = "PLANT_WHIP_B_WAIT",						},
	{ STATE_NAME = "PLANT_WHIP_B_WAITSTART",				LUA_STATE_START_FUNC = "PLANT_WHIP_B_WAITSTART_STATE_START", },
	
	{ STATE_NAME = "PLANT_WHIP_B_ATTACK",					LUA_FRAME_MOVE_FUNC = "PLANT_WHIP_B_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 3, },
	
	{ STATE_NAME = "PLANT_WHIP_B_DAMAGE",				    },	
	
	--{ STATE_NAME = "PLANT_WHIP_B_DYE_READY",				LUA_STATE_START_FUNC = "PLANT_WHIP_B_DYE_READY_STATE_START", },
	{ STATE_NAME = "PLANT_WHIP_B_DYING",				    LUA_STATE_START_FUNC = "PLANT_WHIP_B_DYING_STATE_START", },
    
	START_STATE					= "PLANT_WHIP_B_WAITSTART",
	WAIT_STATE					= "PLANT_WHIP_B_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "PLANT_WHIP_B_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "PLANT_WHIP_B_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "PLANT_WHIP_B_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "PLANT_WHIP_B_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "PLANT_WHIP_B_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "PLANT_WHIP_B_DAMAGE",
	FLY_DAMAGE_FRONT			= "PLANT_WHIP_B_DAMAGE",
	FLY_DAMAGE_BACK				= "PLANT_WHIP_B_DAMAGE",
	SMALL_DAMAGE_AIR			= "PLANT_WHIP_B_DAMAGE",	
	BIG_DAMAGE_AIR				= "PLANT_WHIP_B_DAMAGE",
	DOWN_DAMAGE_AIR				= "PLANT_WHIP_B_DAMAGE",
	UP_DAMAGE					= "PLANT_WHIP_B_DAMAGE",
	DAMAGE_REVENGE				= "PLANT_WHIP_B_DAMAGE",
	
	DYING_LAND_FRONT			= "PLANT_WHIP_B_DYING",
	DYING_LAND_BACK				= "PLANT_WHIP_B_DYING",
	DYING_SKY					= "PLANT_WHIP_B_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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

PLANT_WHIP_B_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
    		
	NEVER_MOVE					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
	    --{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PLANT_WHIP_B_DYE_READY",			"CT_PLANT_WHIP_B_DYE_READY",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PLANT_WHIP_B_ATTACK",				"CT_PLANT_WHIP_B_ATTACK",	},
		
	},
	
	CT_PLANT_WHIP_B_DYE_READY =
	{
	    EVENT_INTERVAL_ID			= 0,
	    TIMER_ELAPSED0				= 20,
	    RATE						= 100,
	},
	
	CT_PLANT_WHIP_B_ATTACK =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 450,
		RATE						= 600,
	},
	
}

PLANT_WHIP_B_WAITSTART = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.012, "Plant_Whip_WaitStart.ogg" },

	
	INVINCIBLE					= { 0, 100, }, 	
	
	NEVER_MOVE					= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"PLANT_WHIP_B_WAIT",    },
	},
	       --[[
	ATTACK_TIME0				= { 0.433, 0.5, },
    ATTACK_TIME1				= { 0.566, 0.666, },
    
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 1300,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	}, --]]
}

PLANT_WHIP_B_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.050, "Plant_Whip_Damage.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PLANT_WHIP_B_WAIT",				},
	},
}

PLANT_WHIP_B_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.152, "Plant_Whip_Attack.ogg" },
	
	--SUPER_ARMOR					= TRUE,
	--SUPER_ARMOR_NOT_RED         = TRUE,
	
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PLANT_WHIP_B_WAIT",					},
	},
	    
    ATTACK_TIME0				= { 0.366, 0.433, },
    ATTACK_TIME1				= { 0.533, 0.6, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X			= 100,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
--[[	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},
--]]	
}

PLANT_WHIP_B_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

    SOUND_PLAY0			= { 0.011, "Plant_Whip_Dying.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------------------------
function PLANT_WHIP_B_WAITSTART_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetTimerRestart( 0 )
end

function PLANT_WHIP_B_DYE_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetNowHP_LUA(0)
end

function PLANT_WHIP_B_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )		
	
end

function PLANT_WHIP_B_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
--[[	
	if pNPCUnit:AnimEventTimer_LUA( 0.533 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
--]]	
end
