-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/05/18 / 아발란쉬 석상 기술 /
	 Attack( 소환되면서 공격 )
--]]

INIT_SYSTEM = 
{
	UNIT_WIDTH	= 100.0,
	UNIT_HEIGHT	= 100.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE	= 1.0,
}
------------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"FronzenMissile01.tga",
		"Ice_particle01.dds",
		"Ice_Crystal01.dds",
		"arme_Ring2.dds",
		"Arme_Ring2.dds",
		"SHARPSHOOTER_SYNDROME.Tga",
		"Arme_Critical2.dds",
		"steam_BP.dds",
	},
	
	READY_SOUND = 
	{
		"icebolt01.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
		"FrozenMissile01.X",
		"AVALANCHE_FronzenMissile02.X",
		"Spin_Liner02.X",
	},
	
	READY_XMESH =
	{
	},
}
------------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_AVALANCHE_Stone.X",
}
------------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 0,
	MAX_G_SPEED		= -2000,
	
	WALK_SPEED	= 0,
	RUN_SPEED	= 0,
	JUMP_SPEED	= 0,
	DASH_JUMP_SPEED		= 0,
}
------------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP			= 9225,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
		
	HEAD_BONE_NAME		= "Bip01",
	SHOW_ON_MINIMAP		= FALSE,
	
	FALL_DOWN			= FALSE,
	DAMAGE_DOWN         = FALSE,
	
	SKY_DIE = TRUE,	
}
------------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "AVALANCHE_STATUE_WAIT",			},
	{ STATE_NAME = "AVALANCHE_STATUE_WAIT_START",	},
	
	{ STATE_NAME = "AVALANCEH_STATUE_SPECIALATTACK_A",	LUA_FRAME_MOVE_FUNC = "AVALANCEH_STATUE_SPECIALATTACK_A_FRAME_MOVE",	STATE_COOL_TIME = 2,	},
	{ STATE_NAME = "AVALANCEH_STATUE_SPECIALATTACK_B",	
		LUA_STATE_START_FUNC = "AVALANCEH_STATUE_SPECIALATTACK_B_STATE_START",
		LUA_FRAME_MOVE_FUNC = "AVALANCEH_STATUE_SPECIALATTACK_B_FRAME_MOVE",
		STATE_COOL_TIME = 4,
	},
	
	{ STATE_NAME = "AVALANCHE_STATUE_DYING",	},
	
	START_STATE	= "AVALANCHE_STATUE_WAIT_START",
	WAIT_STATE	= "AVALANCHE_STATUE_WAIT",
			
	DYING_LAND_FRONT	= "AVALANCHE_STATUE_DYING",
	DYING_LAND_BACK		= "AVALANCHE_STATUE_DYING",
	DYING_SKY			= "AVALANCHE_STATUE_DYING",

	REVENGE_ATTACK		= "",
}
------------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 300,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,	-- cm
		TARGET_LOST_RANGE			= 10800,	-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}
------------------------------------------------------------------------------
AVALANCHE_STATUE_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	--IMMADIATE_PACKET_SEND	= TRUE,
	NEVER_MOVE				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,
	VIEW_TARGET				= FALSE,
	EVENT_INTERVAL_TIME0	= 2,
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE,	0.0,	"AVALANCHE_Stone01",	FALSE,	"Bip01",	TRUE,	FALSE,	0,	0,	0,	TRUE, },
		{ TRUE,	0.0,	"AVALANCHE_Stone02",	FALSE,	"Bip01",	TRUE,	FALSE,	0,	0,	0,	TRUE, },
		{ TRUE,	0.0,	"AVALANCHE_Stone03",	FALSE,	"Bip01",	TRUE,	FALSE,	0,	0,	0,	TRUE, },
		{ TRUE,	0.0,	"AVALANCHE_Stone09",	FALSE,	"Bip01",	TRUE,	FALSE,	0,	0,	0,	TRUE, },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"AVALANCHE_STATUE_DYING","CF_AVALANCHE_STATUE_DYING",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "AVALANCEH_STATUE_SPECIALATTACK_A",	"CT_AVALANCEH_STATUE_SPECIALATTACK_A"	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "AVALANCEH_STATUE_SPECIALATTACK_B",	"CT_AVALANCEH_STATUE_SPECIALATTACK_B"	},
	},
	
	CT_AVALANCHE_STATUE_DYING = 
	{
		EVENT_INTERVAL_ID	= 0,
	},
	
	CT_AVALANCEH_STATUE_SPECIALATTACK_A =
	{
		RATE	= 80,
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR	= 8000,
	},
	
	CT_AVALANCEH_STATUE_SPECIALATTACK_B =
	{
		RATE	= 100,
		EVENT_INTERVAL_ID		= 0,
	},
}

function CF_AVALANCHE_STATUE_DYING( pKTDXApp, pX2Game, pNPCUnit )
	local fElapsedTime = 20.0
	if fElapsedTime <= pNPCUnit:GetTimerElapsedTime( 0 ) then
		return true
	else
		return false
	end	
end
------------------------------------------------------------------------------
AVALANCHE_STATUE_WAIT_START = 
{
	ANIM_NAME	= "WaitStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,

    SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Statue_WaitStart", 0.0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"AVALANCHE_STATUE_WAIT",	},
	},
}
------------------------------------------------------------------------------
AVALANCEH_STATUE_SPECIALATTACK_A =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Statue_Special_Attack", 0.0,
	},

	SOUND_PLAY0	= { 0.01, "icebolt01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"AVALANCHE_STATUE_WAIT",	},
	},
}

function AVALANCEH_STATUE_SPECIALATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit ) 
	if pNPCUnit:AnimEventTimer_LUA( 0.106 ) then
		local userNumber = pX2Game:GetUserUnitNum_LUA()

		if userNumber < 3 then
			local pDamageEffect = pX2Game:GetDamageEffect()
			local pos = pNPCUnit:GetLandPosition_LUA()
			local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AVALANCHE_STATUE_FROZEN_MISSILE", pNPCUnit:GetBonePos_LUA( "Bip01" ), pos.y )
		
			if pCEffect ~= nil then
				--pNPCUnit:SetLockOnPos( pCEffect, pNPCUnit:GetNearestUserPos() )
				pNPCUnit:SetLockOnNearTarget( pCEffect )
			end
		else
			local pDamageEffect = pX2Game:GetDamageEffect()
			local pos = pNPCUnit:GetLandPosition_LUA()
			local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AVALANCHE_STATUE_FROZEN_MISSILE", pNPCUnit:GetBonePos_LUA( "Bip01" ), pos.y )
		
			if pCEffect ~= nil then
				--pNPCUnit:SetLockOnPos( pCEffect, pNPCUnit:GetNearestUserPos() )
				pNPCUnit:SetLockOnNearTarget( pCEffect )
			end

			pDamageEffect = pX2Game:GetDamageEffect()
			pos = pNPCUnit:GetLandPosition_LUA()
			pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AVALANCHE_STATUE_FROZEN_MISSILE", pNPCUnit:GetBonePos_LUA( "Bip01" ), pos.y )
		
			if pCEffect ~= nil then
				--pNPCUnit:SetLockOnPos( pCEffect, pNPCUnit:GetNearestUserPos() )
				pNPCUnit:SetLockOnNearTarget( pCEffect )
			end
		end
	end
end
------------------------------------------------------------------------------
AVALANCEH_STATUE_SPECIALATTACK_B =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Statue_Special_Attack", 0.0,
	},

	SOUND_PLAY0	= { 0.11, "icebolt01.ogg" },
	SOUND_PLAY1	= { 0.21, "icebolt01.ogg" },
	SOUND_PLAY2	= { 0.31, "icebolt01.ogg" },
	SOUND_PLAY3	= { 0.41, "icebolt01.ogg" },
	SOUND_PLAY4	= { 0.51, "icebolt01.ogg" },
	SOUND_PLAY5	= { 0.61, "icebolt01.ogg" },
	SOUND_PLAY6	= { 0.71, "icebolt01.ogg" },
	SOUND_PLAY7	= { 0.8, "icebolt01.ogg" },
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"AVALANCHE_STATUE_WAIT",	},
	},
}

function AVALANCEH_STATUE_SPECIALATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetVector_LUA( 0, pNPCUnit:GetNearestUserPos() )
	pNPCUnit:SetVector_LUA( 1, pNPCUnit:GetLandPosition_LUA() )
end

function AVALANCEH_STATUE_SPECIALATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 0.11 ) then
		CallMissile( pX2Game, pNPCUnit, 1 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.21 ) then
		CallMissile( pX2Game, pNPCUnit, 2 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.31 ) then
		CallMissile( pX2Game, pNPCUnit, 3 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
		CallMissile( pX2Game, pNPCUnit, 4 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.51 ) then
		CallMissile( pX2Game, pNPCUnit, 5 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.61 ) then
		CallMissile( pX2Game, pNPCUnit, 6 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.71 ) then
		CallMissile( pX2Game, pNPCUnit, 7 )
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
		CallMissile( pX2Game, pNPCUnit, 8 )
	end
end

function CallMissile( pX2Game, pNPCUnit, index, pos, landPos )
	local pDamageEffect = pX2Game:GetDamageEffect()
	local pos = pNPCUnit:GetVector_LUA( 0 )
	local landPos = pNPCUnit:GetVector_LUA( 1 )
	
	pos.y = pos.y + pNPCUnit:GetRandVal(index) % 8 * 30 + 1200
	pos.x = pos.x + pNPCUnit:GetRandVal(index) % 8 * 80 - 300
	local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "AVALANCHE_STATUE_FROZEN_MISSILE2", pos, landPos.y )
end
------------------------------------------------------------------------------
AVALANCHE_STATUE_DYING =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,
	NEVER_MOVE	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
}
------------------------------------------------------------------------------