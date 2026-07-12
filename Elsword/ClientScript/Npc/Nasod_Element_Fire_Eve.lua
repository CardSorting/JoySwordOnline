-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 228.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.05,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Ice_Particle01.dds", 
	    "smoke02.dds",
	    "Spark01_BCMI.dds",
	    "Particle_Flame01.tga",	
	    "FireWave01.tga",  
	    --"MeteoStone01.tga",
	    --"MeteoStone01_Mesh.tga",
	    "ColorBallFire.tga",
	    "Lightning02.tga",    
	},
	
	READY_SOUND = 
	{  
		--"Nasod_Element_Slash1.ogg",
		--"Nasod_Element_Slash2.ogg",
		-- "Nasod_Element_FastWalk.ogg",
		--"Nasod_Element_HitGround.ogg",
		"Nasod_Element_JumpLanding1.ogg",
		-- "Nasod_Element_JumpLanding2.ogg",
		"Nasod_Element_JumpUp.ogg",
		--"Nasod_Element_StandUpAttack.ogg",
		"Nasod_Element_IceWave1.ogg",
		--"Nasod_Element_Wave.ogg",
		--"Nasod_Element_WaitStart1.ogg",
		"Nasod_Element_Teleport.ogg",

		--"Nasod_Element_ReadyStorm.ogg",
		--"Nasod_Element_BurstStorm.ogg",
		--"Nasod_Element_SmallMeteo1.ogg",
		-- "Nasod_Element_SmallMeteo2.ogg",
		--"Nasod_Element_BarrierHit.ogg",
	},
	
		
	READY_XMESH = 
	{
	    --"Lightning03.Y",
	    --"Lightning02.Y",
	    "Particle_Motion_Flame01.Y",
	    "FireWave01.Y",
	},
	
	READY_XSKIN_MESH = 
	{
	    --"MeteoStone01.X",
	    --"MeteoStone02.X",
	    --"NASOD_ELEMENT_FIRE_EVE_PerfectStorm01.X",
	    "DummyAttackBox_50x50x50.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Element_Fire_Eve.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 750,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 3,
	MP_CHARGE_RATE		= 1200,
			
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	FALL_DOWN			= FALSE,
	DIE_FLY             = 0,
}



INIT_STATE = 
{
	{ STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_WAIT",						},

	{ STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_DISAPPEAR",					LUA_STATE_START_FUNC = "NASOD_ELEMENT_FIRE_EVE_DISAPPEAR_STATE_START",  },

	{ STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_TELEPORT",					LUA_STATE_START_FUNC = "NASOD_ELEMENT_FIRE_EVE_TELEPORT_STATE_START",
	                                                                    LUA_FRAME_MOVE_FUNC  = "NASOD_ELEMENT_FIRE_EVE_TELEPORT_FRAME_MOVE",	},
    { STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_FRAMEWAVE",				    LUA_FRAME_MOVE_FUNC  = "NASOD_ELEMENT_FIRE_EVE_FRAMEWAVE_FRAME_MOVE",   },   
	
	--리액션 관련
	{ STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "NASOD_ELEMENT_FIRE_EVE_DYING_SKY",					LUA_STATE_START_FUNC = "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_STATE_START",},
	
	
	START_STATE					= "NASOD_ELEMENT_FIRE_EVE_FRAMEWAVE",
	WAIT_STATE					= "NASOD_ELEMENT_FIRE_EVE_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_BACK		= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_FRONT			= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_BACK				= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_AIR			= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",	
	BIG_DAMAGE_AIR				= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_AIR				= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	UP_DAMAGE					= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	DAMAGE_REVENGE				= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	
	DYING_LAND_FRONT			= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "NASOD_ELEMENT_FIRE_EVE_DYING_LAND_BACK",
	DYING_SKY					= "NASOD_ELEMENT_FIRE_EVE_DYING_SKY",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 400,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 210,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		WALK_INTERVAL		= 9999,
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
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	

}







NASOD_ELEMENT_FIRE_EVE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	
}




--------------------------------------------------------------------------------------------------------
NASOD_ELEMENT_FIRE_EVE_DISAPPEAR = 
{
	SHOW						= FALSE,

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	LAND_CONNECT				= FALSE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,		
	
	FALL_DOWN					= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
}



----------------------------------------------------------
function NASOD_ELEMENT_FIRE_EVE_DISAPPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)
	
end


NASOD_ELEMENT_FIRE_EVE_TELEPORT = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	
	INVINCIBLE					= { 0, 100, },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_ELEMENT_FIRE_EVE_DISAPPEAR",					},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.11, "RespawnLanding_P01", FALSE, "", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.11, "RespawnLanding_P02", FALSE, "", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.11, "RespawnLanding_P03", FALSE, "", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.21, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 50, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.24, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 100, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.37, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 200, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.50, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 300, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.63, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 450, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
	},	
}



NASOD_ELEMENT_FIRE_EVE_FRAMEWAVE = 
{
    ANIM_NAME					= "SP_IceWave",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.155, "Nasod_Element_IceWave1.ogg" },
    SOUND_PLAY1			= { 0.756, "Nasod_Element_JumpUp.ogg" },
    SOUND_PLAY2			= { 1.256, "Nasod_Element_JumpLanding1.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	INVINCIBLE					= { 0, 100, },
	IMMADIATE_PACKET_SEND		= TRUE,
	RIGHT                       = TRUE,	
	
	TALK_BOX = 
	{
		{ RATE = 10, MESSAGE = STR_ID_1473 },
		{ RATE = 10, MESSAGE = STR_ID_1474 },
	},
		
		
    PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.73, "Smoke_FireWave04_Nasod_Element_Fire", FALSE, "Dummy1_Rhand", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 0.73, "Smoke_FireWave05_Nasod_Element_Fire", FALSE, "Dummy1_Rhand", TRUE, FALSE, 0, 0, 0, },		
		
	},	

	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"NASOD_ELEMENT_FIRE_EVE_TELEPORT",					},		
	},
}








NASOD_ELEMENT_FIRE_EVE_DYING_LAND_FRONT = 
{
	SHOW						= FALSE,

	ANIM_NAME					= "DamageDownFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	
NASOD_ELEMENT_FIRE_EVE_DYING_LAND_BACK = 
{
	SHOW						= FALSE,


	ANIM_NAME					= "DamageDownBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

NASOD_ELEMENT_FIRE_EVE_DYING_SKY = 
{
	SHOW						= FALSE,


	ANIM_NAME					= "DamageAirDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		


	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}









function NASOD_ELEMENT_FIRE_EVE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pEffect = pNPCUnit:GetDamageEffect_LUA( 0 )
	if pEffect ~= nil then
	
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:DestroyInstance( pEffect )
		
	end
	
	pNPCUnit:ClearDamageEffect_LUA( 0 )
	
	pEffect = pNPCUnit:GetDamageEffect_LUA( 1 )
	if pEffect ~= nil then
	
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:DestroyInstance( pEffect )
		
	end
	
	pNPCUnit:ClearDamageEffect_LUA( 1 )

--[[
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	if GetMinorParticle ~= nil then
	    pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	    if pSeq ~= nil then
    	
		    pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		    pNPCUnit:SetDieSeq( pSeq:GetHandle() )
    	
	    end
    end	    
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
--]]
	
end


function NASOD_ELEMENT_FIRE_EVE_FRAMEWAVE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
    
-- Fade Start
    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitColor(1.0, 1.0, 1.0, 0.0, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"])
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 0.0, true, true)
        pNPCUnit:SetUnitFadeMove(0.1, 0.0, 0.0, 0.0, 0.1)
    end  

    if pNPCUnit:AnimEventTimer_LUA(0.1) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, false, true)
        pNPCUnit:SetUnitFadeMove(0.4, 0.0, 0.0, 0.0, 0.04)
    end
-- Fade End
    
          
        
		
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then	

        pMajorParticle = pX2Game:GetMajorParticle()
        
        vPos = pNPCUnit:GetPos()
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Ring_Eve_Sp3a_DLG01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Eve_Sp3a_DLG03", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
        
    end	    


    if pNPCUnit:AnimEventTimer_LUA( 0.733 ) then
    
        if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 5.0, 0.3 )
	    end		
    
        pDamageEffect = pX2Game:GetDamageEffect()
        landPos = pNPCUnit:GetLandPosition_LUA()	
	    vPos = pNPCUnit:GetPos()
	    vPos.y = vPos.y + 240
	    vRot1 = pNPCUnit:GetRotateDegree()
	    vRot2 = pNPCUnit:GetRotateDegree()
	    if pNPCUnit:GetIsRight() == false then
		    vRot2.y = vRot2.y + 180.0
        else
            vRot1.y = vRot1.y + 180.0		    
	    end        
        
        if pDamageEffect ~= nil then	
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_ELEMENT_FIRE_EVE_FLAMEWAVE_RIGHT", vPos, landPos.y, vRot1)    -- right
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_ELEMENT_FIRE_EVE_FLAMEWAVE_LEFT",  vPos, landPos.y, vRot2)    -- left                       
        end            
        
        
        pMajorParticle = pX2Game:GetMajorParticle()
        
        vPos = pNPCUnit:GetPos()
        vPos.y = vPos.y + 300
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Eve_Sp3a_DLG01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Eve_Sp3a_DLG02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        
        
        
        
    end    
    
    
    if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
        pDamageEffect = pX2Game:GetDamageEffect()
        landPos = pNPCUnit:GetLandPosition_LUA()	
	    vPos1 = pNPCUnit:GetPos()
	    vPos2 = pNPCUnit:GetPos()
	    vPos1.x = vPos1.x - 220
	    vPos1.y = vPos1.y + 220
	    vPos2.x = vPos2.x + 220
	    vPos2.y = vPos2.y + 220
	    
	    vRot1 = pNPCUnit:GetRotateDegree()  
	    vRot2 = pNPCUnit:GetRotateDegree()
	    if pNPCUnit:GetIsRight() == false then	        
		    vRot2.y = vRot2.y + 180.0
        else            
            vRot1.y = vRot1.y + 180.0		    
	    end   	    
        
        if pDamageEffect ~= nil then	
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_ELEMENT_FLAMEWAVE_TAIL", vPos1, landPos.y, vRot1)    -- right
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "NASOD_ELEMENT_FLAMEWAVE_TAIL", vPos2, landPos.y, vRot2)    -- left                        
        end            
        
        pNPCUnit:SetNowMP(0)
    end 

end





function NASOD_ELEMENT_FIRE_EVE_TELEPORT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    -- 텔레포트 (사라질때) 
    pNPCUnit:PlaySound_LUA( "Nasod_Element_Teleport.ogg" )
    
    pos = pNPCUnit:GetPos()
    rotDegree 	= pNPCUnit:GetRotateDegree()
    pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()          
   
   rotDegree.y = 0
    
    if pMinorXMeshPlayer ~= nil then
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", pos, rotDegree, rotDegree, 14 )        
        if pMeshPlayer ~= nil then
            pMeshPlayer:SetManualSize(2.0, 2.0, 2.0)
        end    
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", pos, rotDegree, rotDegree, 14 )        
        if pMeshPlayer ~= nil then
            pMeshPlayer:SetManualSize(2.0, 2.0, 2.0)
        end
    end
end

function NASOD_ELEMENT_FIRE_EVE_TELEPORT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

-- Fade Start    
    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, false, true)
        pNPCUnit:SetUnitFadeMove(0.7, 0.0, 0.0, 0.0, -0.04)
    end
    
    if pNPCUnit:AnimEventTimer_LUA(0.7) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 1.0, true, true)
        pNPCUnit:SetUnitFadeMove(0.2, 0.0, 0.0, 0.0, -0.15)
        pNPCUnit:SetUnitFadeScale(0.2, -0.15, 0.15, -0.15)
    end  
-- Fade End    

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
