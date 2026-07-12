-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"smoke02.dds",		
	},
	
	READY_SOUND = 
	{
	   "fire_ready.ogg",
	   "fire2.ogg", 
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "SteamGeyser.X",
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
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "DUmmy01",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_WOOD"],
	
	

}




INIT_STATE = 
{
	{ STATE_NAME = "STEAM_GEYSER_WAIT",						},
	
	
	{ STATE_NAME = "STEAM_GEYSER_ATTACK",					LUA_FRAME_MOVE_FUNC = "STEAM_GEYSER_ATTACK_FRAME_MOVE"	},
	
	
	--리액션 관련
	{ STATE_NAME = "STEAM_GEYSER_DAMAGE",					},	
	{ STATE_NAME = "STEAM_GEYSER_DYING",					},
	
	START_STATE					= "STEAM_GEYSER_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "STEAM_GEYSER_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "STEAM_GEYSER_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "STEAM_GEYSER_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "STEAM_GEYSER_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "STEAM_GEYSER_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "STEAM_GEYSER_DAMAGE",
	FLY_DAMAGE_FRONT			= "STEAM_GEYSER_DAMAGE",
	FLY_DAMAGE_BACK				= "STEAM_GEYSER_DAMAGE",
	SMALL_DAMAGE_AIR			= "STEAM_GEYSER_DAMAGE",	
	BIG_DAMAGE_AIR				= "STEAM_GEYSER_DAMAGE",
	DOWN_DAMAGE_AIR				= "STEAM_GEYSER_DAMAGE",
	UP_DAMAGE					= "STEAM_GEYSER_DAMAGE",
	DAMAGE_REVENGE				= "STEAM_GEYSER_DAMAGE",
	
	DYING_LAND_FRONT			= "STEAM_GEYSER_DYING",
	DYING_LAND_BACK				= "STEAM_GEYSER_DYING",
	DYING_SKY					= "STEAM_GEYSER_DYING",

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



STEAM_GEYSER_WAIT = 
{
	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 6.5,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEAM_GEYSER_ATTACK",			"CT_STEAM_GEYSER_ATTACK",	},	
	},
	
	CT_STEAM_GEYSER_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 100,
	},
}



STEAM_GEYSER_ATTACK = 
{
	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	SUPER_ARMOR					= TRUE,	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 5,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"STEAM_GEYSER_WAIT",	"CT_STEAM_GEYSER_WAIT"				},
	},
	
	CT_STEAM_GEYSER_WAIT = 
	{
		EVENT_INTERVAL_ID		= 0,
		STATE_TIME_OVER			= 5,
	},

}


STEAM_GEYSER_DAMAGE =
{
	ANIM_NAME					= "Normal",
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"STEAM_GEYSER_WAIT",				},
	},
}

STEAM_GEYSER_DYING = 
{
	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,

	DYING_END					= TRUE,
	DYING_SPEED					= 0.8,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



-------------------------------------------------------------------------------
function STEAM_GEYSER_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:EventTimer( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "fire_ready.ogg" )
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")	
		
		pMajorParticle = pX2Game:GetMajorParticle()
		if pMajorParticle ~= nil then
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SteamGeyser_FireAttack02", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        end		
	end
	
	if pNPCUnit:EventTimer( 1.01 ) then
		pNPCUnit:PlaySound_LUA( "fire_ready.ogg" )
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")	
		
		pMajorParticle = pX2Game:GetMajorParticle()
		if pMajorParticle ~= nil then
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SteamGeyser_FireAttack02", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        end		
	end



	if pNPCUnit:EventTimer( 3.0 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")	
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		
		pMajorParticle = pX2Game:GetMajorParticle()
		if pMajorParticle ~= nil then
		    pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SteamGeyser_FireAttack01", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    if pParticle ~= nil then
		        pParticle:SetAddRotate( vRotateDegree )
		        pParticle:SetAxisAngle( vRotateDegree )	
            end		        
        end				
	end
	
	
	if pNPCUnit:EventTimer( 3.3 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")	
		vBonePos.y = vBonePos.y + 230.0
		
		landPos = pNPCUnit:GetLandPosition_LUA()
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    pDamageEffect:CreateInstance_LUA( pNPCUnit, "STEAM_GEYSER_ATTACK", vBonePos, landPos.y )
        end	
	end

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
