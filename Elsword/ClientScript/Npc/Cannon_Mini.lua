-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
        "Nasod_Canonball.dds",
        "Smoke.dds",
        "Arme_smoke.dds",
	},
	
	READY_SOUND = 
	{
	  "MiniCannon_WaitStart1.ogg",
	  "MiniCannon_WaitStart2.ogg",
	  "MiniCannon_WaitStart3.ogg",
	  "MiniCannon_AttackFire.ogg",
	  "MiniCannon_AttackSmoke.ogg",
	  "MiniCannon_AttackMoving.ogg",
	  "MiniCannonBall_Shot.ogg",
      
    },
	
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	    "Nasod_Canonball.X",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Altera_Battle_Cannon_Mini.x",
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
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
}


INIT_STATE = 
{
	{ STATE_NAME = "CANNON_MINI_START",						LUA_FRAME_MOVE_FUNC = "CANNON_MINI_START_FRAME_MOVE",
															LUA_STATE_END_FUNC = "CANNON_MINI_START_STATE_END",		},
															
	{ STATE_NAME = "CANNON_MINI_WAIT",						},
	{ STATE_NAME = "CANNON_MINI_ATTACK_1",					LUA_FRAME_MOVE_FUNC = "CANNON_MINI_ATTACK_1_FRAME_MOVE",	
															LUA_STATE_END_FUNC = "CANNON_MINI_ATTACK_1_STATE_END",		},
															
	{ STATE_NAME = "CANNON_MINI_ATTACK_2",					LUA_FRAME_MOVE_FUNC = "CANNON_MINI_ATTACK_2_FRAME_MOVE",	
															LUA_STATE_END_FUNC = "CANNON_MINI_ATTACK_2_STATE_END",		},
															
	{ STATE_NAME = "CANNON_MINI_ATTACK_3",					LUA_FRAME_MOVE_FUNC = "CANNON_MINI_ATTACK_3_FRAME_MOVE",
															LUA_STATE_END_FUNC = "CANNON_MINI_ATTACK_3_STATE_END",		},
															
	
	--리액션 관련
	{ STATE_NAME = "CANNON_MINI_DAMAGE_SMALL",				LUA_FRAME_MOVE_FUNC = "CANNON_MINI_DAMAGE_SMALL_FRAME_MOVE",				},
	{ STATE_NAME = "CANNON_MINI_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "CANNON_MINI_DYING_LAND_STATE_START",
	                                                        LUA_STATE_END_FUNC = "CANNON_MINI_DYING_LAND_STATE_END",		},
	
	
	
	START_STATE					= "CANNON_MINI_START",
	WAIT_STATE					= "CANNON_MINI_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CANNON_MINI_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CANNON_MINI_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CANNON_MINI_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "CANNON_MINI_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "CANNON_MINI_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "CANNON_MINI_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "CANNON_MINI_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "CANNON_MINI_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "CANNON_MINI_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CANNON_MINI_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "CANNON_MINI_DAMAGE_SMALL",
	UP_DAMAGE					= "CANNON_MINI_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "CANNON_MINI_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "CANNON_MINI_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CANNON_MINI_DYING_LAND_FRONT",
	DYING_SKY					= "CANNON_MINI_DYING_LAND_FRONT",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
	},

}


CANNON_MINI_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,


    SOUND_PLAY0			= { 0.020, "MiniCannon_WaitStart1.ogg" },
    SOUND_PLAY1			= { 0.770, "MiniCannon_WaitStart2.ogg" },
    SOUND_PLAY2			= { 1.953, "MiniCannon_WaitStart3.ogg" },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"CANNON_MINI_WAIT",						},	
	},
}


CANNON_MINI_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1.5,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_MINI_ATTACK_1",	"CT_CANNON_MINI_ATTACK_1",	STATE_COOL_TIME = 10, },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_MINI_ATTACK_2",	"CT_CANNON_MINI_ATTACK_2",	STATE_COOL_TIME = 10, },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_MINI_ATTACK_3",	"CT_CANNON_MINI_ATTACK_3",	STATE_COOL_TIME = 10, },
	},
	
	CT_CANNON_MINI_ATTACK_1 = 
	{
		EVENT_INTERVAL_ID			= 0,
		--DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 20,
	},
	
	CT_CANNON_MINI_ATTACK_2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		--DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 40,
	},
	
	CT_CANNON_MINI_ATTACK_3 = 
	{
		EVENT_INTERVAL_ID			= 0,
		--DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 60,
	},


}




CANNON_MINI_ATTACK_1 = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

		  
    SOUND_PLAY0			= { 0.720, "MiniCannon_AttackMoving.ogg" },
    SOUND_PLAY1			= { 1.022, "MiniCannon_AttackSmoke.ogg" },
	SOUND_PLAY2			= { 0.750, "MiniCannon_AttackFire.ogg" },

	  
	  
	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.566, "Smoke_Battle_Cannon_Mini_Attack01", FALSE, "", TRUE, FALSE, 0, 0, 20, },
		{ TRUE, 0.566, "Light_Battle_Cannon_Mini_Attack02", FALSE, "Dummy01", TRUE, FALSE, 0, 5, 0, },
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_MINI_WAIT",						},	
	},
}

CANNON_MINI_ATTACK_2 = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.720, "MiniCannon_AttackMoving.ogg" },
    SOUND_PLAY1			= { 1.022, "MiniCannon_AttackSmoke.ogg" },
	SOUND_PLAY2			= { 0.750, "MiniCannon_AttackFire.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.566, "Smoke_Battle_Cannon_Mini_Attack01", FALSE, "", TRUE, FALSE, 0, 0, 20, },
		{ TRUE, 0.566, "Light_Battle_Cannon_Mini_Attack02", FALSE, "Dummy02", TRUE, FALSE, 0, 25, 0, },
	},
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_MINI_WAIT",												},	
	},
}




CANNON_MINI_ATTACK_3 =
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
    
	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.720, "MiniCannon_AttackMoving.ogg" },
    SOUND_PLAY1			= { 1.022, "MiniCannon_AttackSmoke.ogg" },
	SOUND_PLAY2			= { 0.750, "MiniCannon_AttackFire.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 0.566, "Smoke_Battle_Cannon_Mini_Attack01", FALSE, "", TRUE, FALSE, 0, 0, 20, },
		{ TRUE, 0.566, "Light_Battle_Cannon_Mini_Attack02", FALSE, "Dummy03", TRUE, FALSE, 0, 5, 0, },
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_MINI_WAIT",					},
	},
}


CANNON_MINI_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_MINI_WAIT",												},
	},
}


CANNON_MINI_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Wait",	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],	
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,
	NEVER_MOVE					= TRUE,
	

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--DYING_SPEED                 = 0.1,
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



------------------------------------------------------------------------------
function CANNON_MINI_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end



------------------------------------------------------------------------------
function CANNON_MINI_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end





------------------------------------------------------------------------------
function CANNON_MINI_ATTACK_1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.566 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()	
		vPos = pNPCUnit:GetPos()	
		
		vRot = pNPCUnit:GetRotateDegree()
		vRot.z = vRot.z + 30
		
		if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MINI_CANNON_BALL", pNPCUnit:GetBonePos_LUA( "Dummy01" ), pos.y, vRot )
        end		
		
	end

end


------------------------------------------------------------------------------
function CANNON_MINI_ATTACK_1_STATE_END( pKTDXApp, pX2Game, pNPCUnit )


--[[
	pMinorParticle = pX2Game:GetMinorParticle()
	

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMinorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
	
	pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
	if pParticle1 ~= nil then
		pMinorParticle:DestroyInstance( pParticle1 )
		pNPCUnit:ClearMinorParticle_LUA( 1 )
	end
--]]


end



------------------------------------------------------------------------------
function CANNON_MINI_ATTACK_2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.566 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()	
		vPos = pNPCUnit:GetPos()	
		
		vRot = pNPCUnit:GetRotateDegree()
		vRot.z = vRot.z + 90
		
		if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MINI_CANNON_BALL", pNPCUnit:GetBonePos_LUA( "Dummy02" ), pos.y, vRot )            
        end		
		
	end

end




------------------------------------------------------------------------------
function CANNON_MINI_ATTACK_2_STATE_END( pKTDXApp, pX2Game, pNPCUnit )


--[[
	pMinorParticle = pX2Game:GetMinorParticle()

	pParticle0 = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
	if pParticle0 ~= nil then
		pMinorParticle:DestroyInstance( pParticle0 )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
--]]	


end



------------------------------------------------------------------------------
function CANNON_MINI_ATTACK_3_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    if pNPCUnit:AnimEventTimer_LUA( 0.566 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()	
		vPos = pNPCUnit:GetPos()	
		
		vRot = pNPCUnit:GetRotateDegree()
		vRot.y = vRot.y + 180
		vRot.z = vRot.z + 30
		
		if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MINI_CANNON_BALL", pNPCUnit:GetBonePos_LUA( "Dummy03" ), pos.y, vRot )            
        end		
		
	end
	

end



------------------------------------------------------------------------------
function CANNON_MINI_ATTACK_3_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

--[[
	pMinorParticle = pX2Game:GetMinorParticle()
	
	for i= 0, 5 do 
		
		pParticle = pNPCUnit:GetMinorParticle_LUA( i ) 	
		if pParticle ~= nil then
			pMinorParticle:DestroyInstance( pParticle )
			pNPCUnit:ClearMinorParticle_LUA( i )
		end
	
	end
--]]

	
end









function CANNON_MINI_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

--[[
	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end
--]]

end






function CANNON_MINI_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	pNPCUnit:PlaySound_LUA( "Explosion.ogg" )    
    pMajorParticle = pX2Game:GetMajorParticle()
	
	vPos = pNPCUnit:GetPos()	
	vPos.y = vPos.y - 50
	vPos.z = vPos.z + 5
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeSmoke", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(40,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeTail", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactRingRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactSlashRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pNPCUnit:SetShow(false)    
    	
end

function CANNON_MINI_DYING_LAND_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
--[[
	pNPCUnit:PlaySound_LUA( "Explosion.ogg" )
    -- 영준이형 감사 ^^	
    pMajorParticle = pX2Game:GetMajorParticle()
	
	vPos = pNPCUnit:GetPos()	
	vPos.y = vPos.y - 50
	vPos.z = vPos.z + 5
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeSmoke", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(40,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeTail", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactRingRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactSlashRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
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

