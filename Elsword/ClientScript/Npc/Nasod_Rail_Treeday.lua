-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- Nasod_Rail.lua





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 0.85,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Smoke_Machine03.tga",
		
	},
	
	READY_SOUND = 
	{
--		"Nasod_Railer_Start.ogg",
		"Nasod_Railer_Walk.ogg",
		"Nasod_Engine_Rail.ogg",
		
	},
		
	READY_XMESH = 
	{
	},

	READY_XSKIN_MESH = 
	{
		"Motion_Nasod_Railer_Cart.X",
	},
		
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Railer.X",
	MOTION_CHANGE_TEX_XET	= "Motion_Nasod_Railer_Event_Tree_day.xet",

}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 450,
	RUN_SPEED			= 500,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	MAX_HP				= 4500,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--RAGE_COUNT_MAX		= 20,
	--RAGE_TIME_MAX		= 5,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
	DIE_FLY             = 0,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_RAIL_WAIT",							},	
	{ STATE_NAME = "NASOD_RAIL_TURN",							},	
	{ STATE_NAME = "NASOD_RAIL_DASH_ATTACK",					LUA_FRAME_MOVE_FUNC = "NASOD_RAIL_DASH_ATTACK_FRAME_MOVE",	
																LUA_STATE_END_FUNC = "NASOD_RAIL_DASH_ATTACK_STATE_END",		 },
	
	--리액션 관련
	{ STATE_NAME = "NASOD_RAIL_DAMAGE",							LUA_FRAME_MOVE_FUNC = "NASOD_RAIL_DAMAGE_FRAME_MOVE"				},
	
	{ STATE_NAME = "NASOD_RAIL_DYING_LAND",						LUA_STATE_START_FUNC = "NASOD_RAIL_DYING_LAND_STATE_START",},
	
	
	START_STATE					= "NASOD_RAIL_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_RAIL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_RAIL_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_RAIL_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "NASOD_RAIL_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_RAIL_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_RAIL_DAMAGE",
	FLY_DAMAGE_FRONT			= "NASOD_RAIL_DAMAGE",
	FLY_DAMAGE_BACK				= "NASOD_RAIL_DAMAGE",
	SMALL_DAMAGE_AIR			= "NASOD_RAIL_DAMAGE",	
	BIG_DAMAGE_AIR				= "NASOD_RAIL_DAMAGE",
	DOWN_DAMAGE_AIR				= "NASOD_RAIL_DAMAGE",
	UP_DAMAGE					= "NASOD_RAIL_DAMAGE",
	DAMAGE_REVENGE				= "NASOD_RAIL_DAMAGE",
	
	DYING_LAND_FRONT			= "NASOD_RAIL_DYING_LAND",
	DYING_LAND_BACK				= "NASOD_RAIL_DYING_LAND",
	DYING_SKY					= "NASOD_RAIL_DYING_LAND",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 100,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 0,
		FAR_WALK_RATE		= 0,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 0,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
}


NASOD_RAIL_WAIT = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	--INVINCIBLE					= { 0, 100, },
	ALLOW_DIR_CHANGE			= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_RAIL_DASH_ATTACK",												},	
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_RAIL_DASH_ATTACK",			"CT_NASOD_RAIL_DASH_ATTACK",			},
	},
	
	CT_NASOD_RAIL_DASH_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 50,
	},
}


NASOD_RAIL_TURN = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	--INVINCIBLE					= { 0, 100, },
	FLIP_DIR_END				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_RAIL_WAIT",												},	
	},
}






NASOD_RAIL_DASH_ATTACK = 
{
	ANIM_NAME					= "DashAttack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

--    SOUND_PLAY0			= { 0.01, "Nasod_Railer_Walk.ogg" },
	
	PASSIVE_SPEED_X				= 300,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"NASOD_RAIL_TURN",						"CF_NASOD_RAIL_TURN",				},
	},
	
	ATTACK_TIME0				= { 0.01, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["RUN_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,				
	},
}



NASOD_RAIL_DAMAGE = 
{
	ANIM_NAME					= "Damage",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_RAIL_DASH_ATTACK",										},
	},
	
	-- TALK_BOX = 
	-- {
		-- { RATE = 10, MESSAGE = STR_ID_4954 },
	-- },
	
}


NASOD_RAIL_DYING_LAND = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	






--------------------------------------------------------------------
--------------------------------------------------------------------

function CF_NASOD_RAIL_TURN( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() < 0.1 then
		return false 
	end
	
	
 	bIsRight = pNPCUnit:GetIsRight()
	vStartPos = pNPCUnit:GetLineGroupStartPos()
	vEndPos = pNPCUnit:GetLineGroupEndPos()

 	
 	if bIsRight == true and pNPCUnit:GetDistanceFrom(vEndPos) < 280.0 then
 	
 	    return true
 	    
   	end
   	
   	if bIsRight == false and pNPCUnit:GetDistanceFrom(vStartPos) < 280.0 then

		return true
  	
    end
    
    return false
 	
--[[

	vStartPos = pNPCUnit:GetLineGroupStartPos()
	vEndPos = pNPCUnit:GetLineGroupEndPos()
	
	if pNPCUnit:GetDistanceFrom(vStartPos) < 400.0 or pNPCUnit:GetDistanceFrom(vEndPos) < 30.0 then
		return true
	else
		return false
	end
--]]

end











function NASOD_RAIL_DASH_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	pMinorParticle = pX2Game:GetMinorParticle()
	
	
	------------------------------------------------------------
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		vPos			= pNPCUnit:GetPos()
		vLandPos		= pNPCUnit:GetLandPosition_LUA()
		bIsRight		= pNPCUnit:GetIsRight()
		vDirVector		= pNPCUnit:GetDirVector()
		vZVector		= pNPCUnit:GetZVector()
	
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 330 )
		else
			vPos = MovePos( vPos, vDirVector, -330 )
		end
		
		vPos = MovePos( vPos, vZVector, -80 )
		
			
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_LizardMan_High_WaitStart", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetAddRotate( vRotateDegree )
			pParticle:SetAxisAngle( vRotateDegree )	
			pParticle:SetLandPosition( vLandPos.y )	
		end
		
		pNPCUnit:ClearEventCheck( 0.01 )
	
	end
	
	------------------------------------------------------------
	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
	
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		vPos			= pNPCUnit:GetPos()
		vLandPos		= pNPCUnit:GetLandPosition_LUA()
		bIsRight		= pNPCUnit:GetIsRight()
		vDirVector		= pNPCUnit:GetDirVector()
		vZVector		= pNPCUnit:GetZVector()
	
		
		if bIsRight == true then 
			vPos = MovePos( vPos, vDirVector, 330 )
		else
			vPos = MovePos( vPos, vDirVector, -330 )
		end
		
		vPos = MovePos( vPos, vZVector, -80 )
		
			
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_LizardMan_High_WaitStart", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetAddRotate( vRotateDegree )
			pParticle:SetAxisAngle( vRotateDegree )	
			pParticle:SetLandPosition( vLandPos.y )	
		end
		
		pNPCUnit:ClearEventCheck( 0.25 )
	
	end
	
	
	------------------------------------------------------------
	if pNPCUnit:AnimEventTimer_LUA( 0.133 ) then
	    pNPCUnit:PlaySound_LUA( "Nasod_Engine_Rail.ogg" )
	    pNPCUnit:PlaySound_LUA( "Nasod_Railer_Walk.ogg" )


		vRotateDegree	= pNPCUnit:GetRotateDegree()
		vBonePos		= pNPCUnit:GetBonePos_LUA( "Dummy1_Bag" )
		
		bIsRight		= pNPCUnit:GetIsRight()
		vDirVector		= pNPCUnit:GetDirVector()
	
		
		if bIsRight == true then 
			vBonePos = MovePos( vBonePos, vDirVector, -20 )
		else
			vBonePos = MovePos( vBonePos, vDirVector, 20 )
		end
			
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Nasod_MinerThin_Attack", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if pParticle ~= nil then
			pParticle:SetAddRotate( vRotateDegree )
			pParticle:SetAxisAngle( vRotateDegree )	
			pNPCUnit:SetMinorParticle_LUA( 0, pParticle:GetHandle() ) 
		end
		
		pNPCUnit:ClearEventCheck( 0.133 )
	
	end
	
	
	pParticle = pNPCUnit:GetMinorParticle_LUA( 0 ) 
	if nil ~= pParticle then 
	
		if pMinorParticle:IsLiveInstance( pParticle ) == true then 
			vBonePos		= pNPCUnit:GetBonePos_LUA( "Dummy1_Bag" )
			pParticle:SetPosition( vBonePos )		
		else 
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end
	
	end
		
	
end



function NASOD_RAIL_DASH_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pMinorParticle = pX2Game:GetMinorParticle()

	pParticle = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle ~= nil then
		pMinorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end

end




function NASOD_RAIL_DAMAGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end

function NASOD_RAIL_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	bIsRight = pNPCUnit:GetIsRight()
	vDirVector = pNPCUnit:GetDirVector()
	cartPos = pNPCUnit:GetPos()
	fDistance = 219.0
	if bIsRight == true then 
		cartPos.x = cartPos.x + vDirVector.x * fDistance
		cartPos.y = cartPos.y + vDirVector.y * fDistance
		cartPos.z = cartPos.z + vDirVector.z * fDistance
	else
		cartPos.x = cartPos.x - vDirVector.x * fDistance
		cartPos.y = cartPos.y - vDirVector.y * fDistance
		cartPos.z = cartPos.z - vDirVector.z * fDistance
	end
	
	pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_NASOD_RAIL_CART_EVENT"], pNPCUnit:GetHardLevel(), false, cartPos, bIsRight, 0.5, true  )	
	
	
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

