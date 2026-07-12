-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 300.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Open_Wood.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Ruben_swamp_Gate.x",
	MOTION_MULTI_TEX_XET	= "Motion_Chain_Gate_Green.xet",
	MULTI_TEX_SPEED			= { 2, 0, 0.5, },
	ADD_ROTATE_Y			= -180.0,
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
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_WOOD"],
	
	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "RUBEN_SWAMP_GATE_WAIT_INVINCIBLE",		},
	{ STATE_NAME = "RUBEN_SWAMP_GATE_WAIT",					LUA_STATE_START_FUNC = "RUBEN_SWAMP_GATE_WAIT_START_STATE",					},	
	
	--리액션 관련
	{ STATE_NAME = "RUBEN_SWAMP_GATE_DAMAGE",					},
	
	{ STATE_NAME = "RUBEN_SWAMP_GATE_DYING",				LUA_STATE_END_FUNC = "RUBEN_SWAMP_GATE_DYING_END_STATE"	},
	
	START_STATE					= "RUBEN_SWAMP_GATE_WAIT_INVINCIBLE",
	
	SMALL_DAMAGE_LAND_FRONT		= "RUBEN_SWAMP_GATE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "RUBEN_SWAMP_GATE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "RUBEN_SWAMP_GATE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "RUBEN_SWAMP_GATE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "RUBEN_SWAMP_GATE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "RUBEN_SWAMP_GATE_DAMAGE",
	FLY_DAMAGE_FRONT			= "RUBEN_SWAMP_GATE_DAMAGE",
	FLY_DAMAGE_BACK				= "RUBEN_SWAMP_GATE_DAMAGE",
	SMALL_DAMAGE_AIR			= "RUBEN_SWAMP_GATE_DAMAGE",	
	BIG_DAMAGE_AIR				= "RUBEN_SWAMP_GATE_DAMAGE",
	DOWN_DAMAGE_AIR				= "RUBEN_SWAMP_GATE_DAMAGE",
	UP_DAMAGE					= "RUBEN_SWAMP_GATE_DAMAGE",
	DAMAGE_REVENGE				= "RUBEN_SWAMP_GATE_DAMAGE",
	
	WAIT_STATES = { "RUBEN_SWAMP_GATE_WAIT", },	
	
	DYING_LAND_FRONT			= "RUBEN_SWAMP_GATE_DYING",
	DYING_LAND_BACK				= "RUBEN_SWAMP_GATE_DYING",
	DYING_SKY					= "RUBEN_SWAMP_GATE_DYING",

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

RUBEN_SWAMP_GATE_WAIT_INVINCIBLE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"RUBEN_SWAMP_GATE_WAIT",			"CF_RUBEN_SWAMP_GATE_WAIT",	},
	},
}

RUBEN_SWAMP_GATE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{
	},
}

RUBEN_SWAMP_GATE_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"RUBEN_SWAMP_GATE_WAIT",												},
	},
}

RUBEN_SWAMP_GATE_DYING = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	SOUND_PLAY0					= { 0.01, "Open_Wood.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	--DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
function RUBEN_SWAMP_GATE_DYING_END_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local pMajorParticle = pX2Game:GetMajorParticle()
	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) == true then
	    	pParticle:SetAutoDie()
	end
end

--------------------------------------------------------------------
--------------------------------------------------------------------

function CF_RUBEN_SWAMP_GATE_WAIT( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:LiveActiveNPCNum() == 0 then

		local pMajorParticle = pX2Game:GetMajorParticle()
		
		local bIsRight		= pNPCUnit:GetIsRight()
		local vDirVector	= pNPCUnit:GetDirVector()
		local vPos			= pNPCUnit:GetPos()
		
		vPos.y = vPos.y + 500

		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 300 )
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "inform_dungeonGate_signal_02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		else
			vPos = MovePos( vPos, vDirVector, -300 )
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "inform_dungeonGate_signal_01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
		end

		return true
	else
		return false
	end
end



function RUBEN_SWAMP_GATE_WAIT_START_STATE( pKTDXApp, pX2Game, pNPCUnit )

	pXSkinAnim = pNPCUnit:GetXSkinAnim()
	pXSkinAnim:SetUseTex( 2, false )
	
end

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end



