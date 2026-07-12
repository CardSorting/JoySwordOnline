-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_2"],
	UNIT_SCALE		= 1.6,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	 "GateNightmare_Damage.ogg",
	 "GateNightmare_Dying.ogg",
	 "GateNightmare_Start.ogg",
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Gate_Of_Nightmare.x",
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
	MAX_HP				= 1000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
		
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	NOT_EXTRA_DAMAGE	= TRUE,	
	
	SKY_DIE				= TRUE,

}

INIT_STATE = 
{
	{ STATE_NAME = "GATE_OF_NIGHTMARE_START",																								},
	{ STATE_NAME = "GATE_OF_NIGHTMARE_WAIT",																								},
	{ STATE_NAME = "GATE_OF_NIGHTMARE_DAMAGE",																								},
	{ STATE_NAME = "GATE_OF_NIGHTMARE_DYING",				LUA_STATE_START_FUNC = "GATE_OF_NIGHTMARE_DYING_START_STATE",					},
	
	START_STATE					= "GATE_OF_NIGHTMARE_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "GATE_OF_NIGHTMARE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "GATE_OF_NIGHTMARE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "GATE_OF_NIGHTMARE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "GATE_OF_NIGHTMARE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "GATE_OF_NIGHTMARE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "GATE_OF_NIGHTMARE_DAMAGE",
	FLY_DAMAGE_FRONT			= "GATE_OF_NIGHTMARE_DAMAGE",
	FLY_DAMAGE_BACK				= "GATE_OF_NIGHTMARE_DAMAGE",
	SMALL_DAMAGE_AIR			= "GATE_OF_NIGHTMARE_DAMAGE",	
	BIG_DAMAGE_AIR				= "GATE_OF_NIGHTMARE_DAMAGE",
	DOWN_DAMAGE_AIR				= "GATE_OF_NIGHTMARE_DAMAGE",
	UP_DAMAGE					= "GATE_OF_NIGHTMARE_DAMAGE",
	DAMAGE_REVENGE				= "GATE_OF_NIGHTMARE_DAMAGE",
	
	WAIT_STATES                 = { "GATE_OF_NIGHTMARE_WAIT", },	
	
	DYING_LAND_FRONT			= "GATE_OF_NIGHTMARE_DYING",
	DYING_LAND_BACK				= "GATE_OF_NIGHTMARE_DYING",
	DYING_SKY					= "GATE_OF_NIGHTMARE_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 99999,	-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 0,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 600,
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
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 1,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}

GATE_OF_NIGHTMARE_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

    SOUND_PLAY0			= { 0.265, "GateNightmare_Start.ogg" },
	
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"GATE_OF_NIGHTMARE_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Gate_Of_Nightmare_Start", 0,
	},
}

GATE_OF_NIGHTMARE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"GATE_OF_NIGHTMARE_DYING", "CF_GATE_OF_NIGHTMARE_DYING", },
	},
}

GATE_OF_NIGHTMARE_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,

    SOUND_PLAY0			= { 0.100, "GateNightmare_Damage.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"GATE_OF_NIGHTMARE_DYING", "CF_GATE_OF_NIGHTMARE_DYING",					},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GATE_OF_NIGHTMARE_WAIT",												},
	},
}

GATE_OF_NIGHTMARE_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.165, "GateNightmare_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------

function CF_GATE_OF_NIGHTMARE_DYING( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetNowHP() <= 2000 then
		return true
	else
		return false
	end
end

--------------------------------------------------------------------------------------------------

function GATE_OF_NIGHTMARE_DYING_START_STATE( pKTDXApp, pX2Game, pNPCUnit )



	local INIT_MOTION_ADD_ROTATE_Y = -20
	local degreeY = INIT_MOTION_ADD_ROTATE_Y + 90
	local pMinorParticle = pX2Game:GetMinorParticle()
	
	local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ChainGateLight1", pNPCUnit:GetBonePos_LUA( "Dummy01" ), D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
	if pParticle ~= nil then 
		pNPCUnit:SetMinorParticle_LUA( 0, pParticle:GetHandle() )			-- 몬스터 죽을 때 파티클 지워지도록 하기 위해서
		pParticle:SetAddRotate( D3DXVECTOR3( 0, degreeY, 0 ) )
	end

	local pParticle2 = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ChainGateLight2", pNPCUnit:GetBonePos_LUA( "Dummy01" ), D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
	if pParticle2 ~= nil then
		pNPCUnit:SetMinorParticle_LUA( 1, pParticle2:GetHandle() )			-- 몬스터 죽을 때 파티클 지워지도록 하기 위해서
		pParticle2:SetAddRotate( D3DXVECTOR3( 0, degreeY, 0 ) )
	end
	
end
