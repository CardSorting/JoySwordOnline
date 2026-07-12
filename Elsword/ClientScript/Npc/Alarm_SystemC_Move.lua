-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	--UNIT_SCALE		= 1.25,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "GuideArrow01.dds",
	},

	
	READY_SOUND = 
	{

        "Alarm_System_Laser.ogg",
		
	},
	READY_XSKIN_MESH = 
	{
	    "Alarm_Laser01.X",
	},

}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Alarm_SystemC.X",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 550,
	RUN_SPEED			= 550,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= FALSE,
}







INIT_STATE = 
{
    { STATE_NAME = "ALARM_SYSTEMC_MOVE_START",					LUA_STATE_START_FUNC = "ALARM_SYSTEMC_MOVE_START_STATE_START"},	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_WAIT",					LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_FRAME_MOVE",},	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_TURN1",					LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_FRAME_MOVE",},	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_TURN2",					LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_FRAME_MOVE",},	
	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_SUMMON",					LUA_STATE_START_FUNC = "ALARM_SYSTEMC_MOVE_SUMMON_STATE_START",
	                                                            LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_SUMMON_FRAME_MOVE",
	                                                            LUA_STATE_END_FUNC = "ALARM_SYSTEMC_MOVE_SUMMON_STATE_END", },	
	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_ATTACK_READY",	        LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_FRAME_MOVE",},	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_ATTACK1",				LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_FRAME_MOVE",  },
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_ATTACK2",				LUA_FRAME_MOVE_FUNC = "ALARM_SYSTEMC_MOVE_FRAME_MOVE",  },	
																	
	
	--리액션 관련
	
	{ STATE_NAME = "ALARM_SYSTEMC_MOVE_DYING",		LUA_STATE_START_FUNC = "ALARM_SYSTEMC_MOVE_DYING_LAND_STATE_START",},
	
	
	START_STATE					= "ALARM_SYSTEMC_MOVE_START",
	WAIT_STATE					= "ALARM_SYSTEMC_MOVE_WAIT",
	
		
	DYING_LAND_FRONT			= "ALARM_SYSTEMC_MOVE_DYING",
	DYING_LAND_BACK				= "ALARM_SYSTEMC_MOVE_DYING",
	DYING_SKY					= "ALARM_SYSTEMC_MOVE_DYING",

	REVENGE_ATTACK				= "",	
	
	ATTACKED_FUNC               = "AttackedCMoveFunc",
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

ALARM_SYSTEMC_MOVE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	RIGHT                       = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ALARM_SYSTEMC_MOVE_WAIT",												},	
	},
--[[
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Light_Alram_SysteamA_Laser01_R", FALSE, "Dummy01", TRUE, TRUE, 0, 0, 0, TRUE, },
	},
--]]
}

ALARM_SYSTEMC_MOVE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	RIGHT                       = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ALARM_SYSTEMC_MOVE_ATTACK_READY",												},	
	},
	
}

ALARM_SYSTEMC_MOVE_SUMMON = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	RIGHT                       = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"ALARM_SYSTEMC_MOVE_WAIT",     "CT_ALARM_SYSTEMC_MOVE_DYING",  },
	},
	
	CT_ALARM_SYSTEMC_MOVE_DYING =
	{
		ANIM_PLAY_COUNT		= 5,
	},
	
}

ALARM_SYSTEMC_MOVE_TURN1 = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	RIGHT                       = TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	--FLIP_DIR_END				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	                "ALARM_SYSTEMC_MOVE_ATTACK2",      },		
	},	
}

ALARM_SYSTEMC_MOVE_TURN2 = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	RIGHT                       = TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	--FLIP_DIR_END				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],	            "ALARM_SYSTEMC_MOVE_ATTACK1",      },		
	},	
}

ALARM_SYSTEMC_MOVE_ATTACK_READY = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	RIGHT                       = TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ALARM_SYSTEMC_MOVE_ATTACK1",		},	
	},
}





ALARM_SYSTEMC_MOVE_ATTACK1 = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	PASSIVE_SPEED_X				= -700,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	RIGHT                       = TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"ALARM_SYSTEMC_MOVE_TURN1",			},
	},
	
	ATTACK_TIME0				= { 0.01, 0.9, },
	
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
		
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.5,				

	},
}

ALARM_SYSTEMC_MOVE_ATTACK2 = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	PASSIVE_SPEED_X				= 700,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	RIGHT                       = TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"ALARM_SYSTEMC_MOVE_TURN2",		},
	},
	
	ATTACK_TIME0				= { 0.01, 0.9, },
	
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
		
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.5,				

	},
}




ALARM_SYSTEMC_MOVE_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	RIGHT                       = TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	





--------------------------------------------------------------------

function ALARM_SYSTEMC_MOVE_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pDamageEffect = pX2Game:GetDamageEffect()
    vPos = pNPCUnit:GetBonePos_LUA("Dummy01") 
        
    landPos = pNPCUnit:GetLandPosition_LUA()
    vPos.y = -5000
    
    pDamageEffect = pX2Game:GetDamageEffect()
    if pDamageEffect ~= nil then
        ikeyCode = pNPCUnit:GetKeyCode()
        
        if ikeyCode == 2 then
            pLaser = pDamageEffect:CreateInstance_LUA( pNPCUnit, "ALARM_SYSTEM_G_COMMON", vPos, landPos.y )
        elseif ikeyCode == 3 then
            pLaser = pDamageEffect:CreateInstance_LUA( pNPCUnit, "ALARM_SYSTEM_B_ATTACK", vPos, landPos.y )
        else
            pLaser = pDamageEffect:CreateInstance_LUA( pNPCUnit, "ALARM_SYSTEM_R_SUMMON", vPos, landPos.y )
        end
	    pNPCUnit:SetDamageEffect_LUA(0, pLaser)
    end    
    
end

function ALARM_SYSTEMC_MOVE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    pDamageEffect = pX2Game:GetDamageEffect()
    vPos = pNPCUnit:GetBonePos_LUA("Dummy01")
    
    pEffect = pNPCUnit:GetDamageEffect_LUA( 0 )
	if pEffect ~= nil then	
		
		if pDamageEffect:IsLiveInstance( pEffect ) == true then 
		
			pMainMeshPlayer = pEffect:GetMainEffect()
			if pMainMeshPlayer ~= nil then 						
				vRot = pNPCUnit:GetRotateDegree()
				pMainMeshPlayer:SetPos( vPos )
				pMainMeshPlayer:SetRotateDegree( vRot )	
			end
			
		else
		
			pNPCUnit:ClearDamageEffect_LUA( 0 )
			
		end
	end     
end



function ALARM_SYSTEMC_MOVE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

--[[
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
--]]	
end


function AttackedCMoveFunc( pKTDXApp, pX2Game, pNPCUnit )
 
    pNPCUnit:StateChange_LUA( "ALARM_SYSTEMC_MOVE_SUMMON", true )
end

function ALARM_SYSTEMC_MOVE_SUMMON_STATE_START( pKTDXApp, pX2Game, pNPCUnit )    

    ikeyCode = pNPCUnit:GetKeyCode()
        
    if ikeyCode ~= 3 then
        vSummonPos1 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 500, true, false )
        vSummonPos2 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 300, true, true )
        vSummonPos3 = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 600, true, true )

        bonePos = pNPCUnit:GetBonePos_LUA("Dummy01")

        pMajorParticle = pX2Game:GetMajorParticle()

        pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLightVertical",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
        if pParticle1 ~= nil then 
	        pParticle1:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )							
	        pParticle1:SetBlackHolePosition( vSummonPos1 )
        end


        pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLightVertical",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
        if pParticle2 ~= nil then 

	        pParticle2:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )							
	        pParticle2:SetBlackHolePosition( vSummonPos2 )
        end

        pParticle3 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLightVertical",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
        if pParticle3 ~= nil then 

	        pParticle3:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )							
	        pParticle3:SetBlackHolePosition( vSummonPos3 )
        end

        pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_NASOD_ELITE_SHERIFF"], pNPCUnit:GetHardLevel(), true, vSummonPos1, false, 1.4, true, 0 )
        pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_NASOD_ELITE_GUARD"], pNPCUnit:GetHardLevel(), true, vSummonPos2, false, 1.4, true, 0 )
        pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"], pNPCUnit:GetHardLevel(), true, vSummonPos3, false, 1.4, true, 0 )

        pX2Game:FlushCreateNPCReq()
    end        
end

function ALARM_SYSTEMC_MOVE_SUMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )    
			
	ikeyCode = pNPCUnit:GetKeyCode()
        
    if ikeyCode ~= 3 then
    			
	    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	        pX2Game:SetWorldColor_LUA( D3DXCOLOR(1,0.2,0.2,1) )
        	pNPCUnit:PlaySound_LUA( "Alarm_System_Laser.ogg" )

	        pNPCUnit:ClearEventCheck(0.01)
	    end
        
        if pNPCUnit:AnimEventTimer_LUA( 0.6) then
	        pX2Game:SetWorldColor_LUA( D3DXCOLOR(1,1,1,1) )
	        pNPCUnit:ClearEventCheck(0.6)
	    end
	
	end
end

function ALARM_SYSTEMC_MOVE_SUMMON_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetNowHP_LUA(0)	    
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

