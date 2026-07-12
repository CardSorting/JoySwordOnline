-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Steam_BP.dds", 
	    "ColorBallGray.dds",
	    "Particle_Blur.dds", 
	    "Spark02_BCMF.dds",
	    "Spark01_BCMF.dds",
	},
	
	READY_SOUND = 
	{  
	    "BarrierMachine_ReBoot.ogg",
		"BarrierMachine_Spark.ogg",
		"BarrierMachine_ShotDown.ogg",
		"BarrierMachine_Respawn.ogg",
	},
	
		
	READY_XMESH = 
	{
	    "Arme_ChargeMp2.Y",
	    "Arme_ChargeMp2.Y",
	},
	
	READY_XSKIN_MESH = 
	{
	    "Motion_Nasod_Element_Fire.x",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Barrier_CreateMachine_Ice.X",
	MOTION_CHANGE_TEX_XET	= "Motion_Barrier_CreateMachine_Fire.xet",
}


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1400,
	DASH_JUMP_SPEED		= 1600,
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
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HEAD_BONE_NAME			= "Dummy1_Barrier",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
}


INIT_STATE = 
{
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_START",			LUA_FRAME_MOVE_FUNC = "BARRIER_CREATEMACHINE_FIRE_START_FRAME_MOVE",
																LUA_STATE_END_FUNC = "BARRIER_CREATEMACHINE_FIRE_START_STATE_END",		},
																
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_WAIT",		    LUA_FRAME_MOVE_FUNC = "BARRIER_CREATEMACHINE_FIRE_WAIT_FRAME_MOVE", },
	
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_DEFENCE_UP",			LUA_STATE_START_FUNC = "BARRIER_CREATEMACHINE_FIRE_DEFENCE_UP_STATE_START"},
	--{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_DEFENCE_DOWN",		LUA_STATE_START_FUNC = "BARRIER_CREATEMACHINE_FIRE_DEFENCE_DOWN_STATE_START"},
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_RESPAWN",		    LUA_STATE_START_FUNC = "BARRIER_CREATEMACHINE_FIRE_RESPAWN_STATE_START",
	                                                                LUA_FRAME_MOVE_FUNC   = "BARRIER_CREATEMACHINE_FIRE_RESPAWN_FRAME_MOVE",},
	
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",		    LUA_STATE_START_FUNC = "BARRIER_CREATEMACHINE_FIRE_SHOTDOWN_STATE_START"},
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_REBOOT",		        LUA_STATE_START_FUNC = "BARRIER_CREATEMACHINE_FIRE_REBOOT_STATE_START", 
	                                                                LUA_FRAME_MOVE_FUNC = "BARRIER_CREATEMACHINE_FIRE_REBOOT_FRAME_MOVE"},
	
																
	
	--리액션 관련
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",		LUA_FRAME_MOVE_FUNC = "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL_FRAME_MOVE"				},
	
	
	{ STATE_NAME = "BARRIER_CREATEMACHINE_FIRE_DYING",	LUA_STATE_START_FUNC = "BARRIER_CREATEMACHINE_FIRE_DYING_LAND_STATE_START"				},
	
	
	
	START_STATE					= "BARRIER_CREATEMACHINE_FIRE_START",
	WAIT_STATE					= "BARRIER_CREATEMACHINE_FIRE_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	UP_DAMAGE					= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "BARRIER_CREATEMACHINE_FIRE_DYING",
	DYING_LAND_BACK				= "BARRIER_CREATEMACHINE_FIRE_DYING",
	DYING_SKY					= "BARRIER_CREATEMACHINE_FIRE_DYING",

	REVENGE_ATTACK				= "",	
	
	--COMMON_FRAME_FUNC           = "BARRIER_CREATEMACHINE_FIRE_COMMON_FRAME_MOVE",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
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


BARRIER_CREATEMACHINE_FIRE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BARRIER_CREATEMACHINE_FIRE_WAIT",		"CT_BARRIER_CREATEMACHINE_FIRE_WAIT"				},
	},
	
	CT_BARRIER_CREATEMACHINE_FIRE_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}


BARRIER_CREATEMACHINE_FIRE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],  	"BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",		"CF_BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",	},			
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],  	"BARRIER_CREATEMACHINE_FIRE_DEFENCE_UP",		"CF_BARRIER_CREATEMACHINE_FIRE_SEARCH",	},			
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],  	    "BARRIER_CREATEMACHINE_FIRE_RESPAWN",		"CT_BARRIER_CREATEMACHINE_FIRE_RESPAWN",	},
	},		
	
	CT_BARRIER_CREATEMACHINE_FIRE_RESPAWN = 
	{
		STATE_TIME_OVER			= 10,
	},

}

BARRIER_CREATEMACHINE_FIRE_SHOTDOWN = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	
	SOUND_PLAY0			= { 0.01, "BarrierMachine_ShotDown.ogg" },
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.01, "Smoke_BCMI_DeathWait01", FALSE, "Dummy1_Barrier", TRUE, FALSE, 0, 0, 50, },
		
	},
	
	EVENT_PROCESS = 
	{					
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],  	    "BARRIER_CREATEMACHINE_FIRE_REBOOT",		"CT_BARRIER_CREATEMACHINE_FIRE_REBOOT",	},
	},		
	
	CT_BARRIER_CREATEMACHINE_FIRE_REBOOT = 
	{
		EVENT_INTERVAL_ID		= 0,	
		USER_MORE_THAN			= 2,
		STATE_TIME_OVER			= 20,
	},

}

BARRIER_CREATEMACHINE_FIRE_REBOOT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
--[[	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.01, "Light_BCM_Reboot01", FALSE, "Dummy1_Barrier", TRUE, FALSE, 0, 0, 50, },
		{ FALSE, 0.01, "Light_BCM_Reboot02", FALSE, "Dummy1_Barrier", TRUE, FALSE, 0, 0, 50, },
	},
--]]	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],  	"BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",	"CF_BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",	},	  
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],  	"BARRIER_CREATEMACHINE_FIRE_START",		"CF_BARRIER_CREATEMACHINE_FIRE_REBOOT",	},		
	      				
	},		
}

BARRIER_CREATEMACHINE_FIRE_DEFENCE_UP =
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BARRIER_CREATEMACHINE_FIRE_WAIT",		},
	},
}


BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL = 
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
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],  	"BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",	"CF_BARRIER_CREATEMACHINE_FIRE_SHOTDOWN",	},	  
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],  	"BARRIER_CREATEMACHINE_FIRE_REBOOT",	"CF_BARRIER_CREATEMACHINE_FIRE_REBOOT_BACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BARRIER_CREATEMACHINE_FIRE_WAIT",								},
	},
}


BARRIER_CREATEMACHINE_FIRE_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
}
	
BARRIER_CREATEMACHINE_FIRE_RESPAWN =
{
    ANIM_NAME					= "Respawn",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0			= { 0.01, "BarrierMachine_Respawn.ogg" },

    PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.37, "Barrier_CreatMachine_Ice_Respawn01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 0.37, "Barrier_CreatMachine_Ice_Respawn02", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 0.37, "Barrier_CreatMachine_Ice_Respawn03", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 0.37, "Barrier_CreatMachine_Ice_Respawn04", FALSE, "Dummy1_Barrier", TRUE, FALSE, 0, -70, 0, },
	},
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15271,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BARRIER_CREATEMACHINE_FIRE_WAIT",		},
	},
}

-------------------------------------------------------------------------------
function CF_BARRIER_CREATEMACHINE_FIRE_REBOOT_BACK( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:GetFlag_LUA(1) == true then
       return true
    end
    
    return false
end

function CF_BARRIER_CREATEMACHINE_FIRE_SEARCH( pKTDXApp, pX2Game, pNPCUnit )
    	
	pUIDcheck = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"], 999999 )
	pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"], 999999 )
	
	if pUID ~= 0 then
	    return true
	end
	
	if pUIDcheck ~= 0 and pUID == 0 then
	    return false
	end	    

	return true
end

function CF_BARRIER_CREATEMACHINE_FIRE_SHOTDOWN( pKTDXApp, pX2Game, pNPCUnit )
    hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100  
    
    --print(hp)
    
    if hp <= 31 then
        return true
    end
        
    return false
end

function CF_BARRIER_CREATEMACHINE_FIRE_REBOOT( pKTDXApp, pX2Game, pNPCUnit )
    
    hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
    if hp > 95 then
        cHp = pNPCUnit:GetMaxHP()
        pNPCUnit:SetNowHP_LUA(cHp)
        return true      
    end           
    
    return false
end

------------------------------------------------------------------------------
function BARRIER_CREATEMACHINE_FIRE_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    if pNPCUnit:GetDamagedThisFrame() then 
        
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100        
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end                
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
    
        pMajorParticle	= pX2Game:GetMajorParticle()
	    vPosAttack		= pNPCUnit:GetBonePos_LUA("Dummy1_Barrier")    
        vPosAttack.y	= vPosAttack.y - 50
        landPos			= pNPCUnit:GetLandPosition_LUA()
        rotDegree		= pNPCUnit:GetRotateDegree()
        
        if pMajorParticle ~= nil then
            pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "MonsterAngryWind",	vPosAttack, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
            pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Counter_Particle01",	vPosAttack, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        end
                       
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    pDamage = pDamageEffect:CreateInstance_LUA( pNPCUnit, "MONSTER_ANGRY_WIND", vPosAttack, landPos.y, rotDegree )
		end
    
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then   
        pMajorParticle = pX2Game:GetMajorParticle()
	    vPos1 = pNPCUnit:GetBonePos_LUA("Dummy1_Barrier")    
        vPos1.y = vPos1.y - 20
        vPos1.z = vPos1.z - 50

        if pMajorParticle ~= nil then
        
        
			particle = pNPCUnit:GetMajorParticle_LUA( 0 )
			if particle ~= nil and pMajorParticle:IsLiveInstance( particle ) == true then 
				particle:SetAutoDie()
				particle:ClearAllParticle()
			end
			
			particle = pNPCUnit:GetMajorParticle_LUA( 1 )
			if particle ~= nil and pMajorParticle:IsLiveInstance( particle ) == true then 
				particle:SetAutoDie()
				particle:ClearAllParticle()
			end
		
        
	        particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Spark01_BCMF",	vPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	        if particle ~= nil then 
				pNPCUnit:SetMajorParticle_LUA(0, particle:GetHandle() )
			end
    	    
	        particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_BCMI01",	vPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	        if particle ~= nil then 
				pNPCUnit:SetMajorParticle_LUA(1, particle:GetHandle() )
			end
        end	        
	end

    if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
    
        pMajorParticle = pX2Game:GetMajorParticle()
	    vPos1 = pNPCUnit:GetBonePos_LUA("Dummy1_Barrier")    
        vPos1.z = vPos1.z - 50
        
        if pMajorParticle ~= nil then
        
        	particle = pNPCUnit:GetMajorParticle_LUA( 2 )
			if particle ~= nil and pMajorParticle:IsLiveInstance( particle ) == true then 
				particle:SetAutoDie()
				particle:ClearAllParticle()
			end

	        particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Spark02_BCMF",	vPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	        if particle ~= nil then 
				pNPCUnit:SetMajorParticle_LUA(2, particle:GetHandle() )
			end 
        end	        
	end
end



------------------------------------------------------------------------------
function BARRIER_CREATEMACHINE_FIRE_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetNowHP_LUA(pNPCUnit:GetMaxHP())        
    pNPCUnit:SetFlag_LUA(1, false)    
    pNPCUnit:SetFlag_LUA(2, false)
    pNPCUnit:SetInt_LUA(0, 0)
    pNPCUnit:SetFlag_LUA(3, true)
end

function BARRIER_CREATEMACHINE_FIRE_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetDamagedThisFrame() then 
        
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100        
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end                
    end   

end

function BARRIER_CREATEMACHINE_FIRE_REBOOT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )    
    pNPCUnit:SetFlag_LUA(1, true)
end

function BARRIER_CREATEMACHINE_FIRE_REBOOT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetDamagedThisFrame() then 
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end  
    end

    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then        
        cHp = pNPCUnit:GetNowHP() + pNPCUnit:GetMaxHP() * 0.15
        pNPCUnit:SetNowHP_LUA(cHp)
        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Dummy1_Barrier")
            vpos.z = vpos.z - 50   
            
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Guardian_TailGun01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )    	
	        pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Guardian_TailGun02", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	        
	        
	        pNPCUnit:PlaySound_LUA( "BarrierMachine_ReBoot.ogg" )
	    end
        
        pNPCUnit:ClearEventCheck( 0.01 )	
    end
end

function BARRIER_CREATEMACHINE_FIRE_SHOTDOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetDamagedThisFrame() then 
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end
    end    
    
    BARRIER_CREATEMACHINE_FIRE_DEFENCE_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
       
    
    pMajorParticle = pX2Game:GetMajorParticle()
	pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) then 
		pParticle:SetAutoDie()
		pNPCUnit:ClearMajorParticle_LUA( 0 )
	end
	
	pParticle = pNPCUnit:GetMajorParticle_LUA( 1 )
	if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) then 
		pParticle:SetAutoDie()
		pNPCUnit:ClearMajorParticle_LUA( 1 )
	end
	
	pParticle = pNPCUnit:GetMajorParticle_LUA( 2 )
	if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) then 	
		pParticle:SetAutoDie()
		pNPCUnit:ClearMajorParticle_LUA( 2 )
	end
	
	pNPCUnit:SetFlag_LUA(3, false)
end	


function BARRIER_CREATEMACHINE_FIRE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    
end

function BARRIER_CREATEMACHINE_FIRE_RESPAWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    -- 부활		    
    if pNPCUnit:GetDamagedThisFrame() then 
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end
    end
      
    pUIDcheck = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"], 999999 )
    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"], 999999 )	
	
	if pUIDcheck ~= 0 and pUID == 0 then

		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
		if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) then 
			pParticle:SetAutoDie()
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end
		
		pParticle = pNPCUnit:GetMajorParticle_LUA( 1 )
		if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) then 
			pParticle:SetAutoDie()
			pNPCUnit:ClearMajorParticle_LUA( 1 )
		end
		
		pParticle = pNPCUnit:GetMajorParticle_LUA( 2 )
		if pParticle ~= nil and pMajorParticle:IsLiveInstance( pParticle ) then 	
			pParticle:SetAutoDie()
			pNPCUnit:ClearMajorParticle_LUA( 2 )
		end
		

        --pos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 500, true, true )
        pos = pX2Game:GetLineMap():GetStartPosition( 5 )
        pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"], pNPCUnit:GetHardLevel(), true, pos, false, 0.1, true, 0 )			
        pX2Game:FlushCreateNPCReq()		        
        		            
        rotDegree 	= pNPCUnit:GetRotateDegree()
        pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()          
        
        if pMinorXMeshPlayer ~= nil then
            rotDegree.y = rotDegree.y + 180
            pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", pos, rotDegree, rotDegree, 14 )        
            pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", pos, rotDegree, rotDegree, 14 )        
        end
        
        pNPCUnit:SetFlag_LUA(2, true)
    end      
end	    		    
		    
function BARRIER_CREATEMACHINE_FIRE_RESPAWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )		    
    
    if pNPCUnit:GetDamagedThisFrame() then 
        
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100        
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end                
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
    
        pMajorParticle = pX2Game:GetMajorParticle()
	    vPos1 = pNPCUnit:GetBonePos_LUA("Dummy1_Barrier")
        vPos1.y = vPos1.y - 20
        vPos1.z = vPos1.z - 50
        
	    particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Spark01_BCMF",	vPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )	        
	    if particle ~= nil then 
			pNPCUnit:SetMajorParticle_LUA(0, particle:GetHandle() )
		end 
        
	    particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_BCMI01",	vPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	    if particle ~= nil then 
			pNPCUnit:SetMajorParticle_LUA(1, particle:GetHandle() )
		end 
	    
	    
    end

    if pNPCUnit:AnimEventTimer_LUA( 1.4 ) then
    
        pMajorParticle = pX2Game:GetMajorParticle()
	    vPos1 = pNPCUnit:GetBonePos_LUA("Dummy1_Barrier")
        vPos1.z = vPos1.z - 50
        
		particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Spark02_BCMF",	vPos1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		if particle ~= nil then 
	        pNPCUnit:SetMajorParticle_LUA(2, particle:GetHandle() )
	    end
	end
	
end

function BARRIER_CREATEMACHINE_FIRE_DEFENCE_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetDamagedThisFrame() then 
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end
    end
    
    nUnitListSize = pX2Game:GetNPCUnitListSize()    	
	
	pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"], 999999 )
	
	if pUID ~= 0 then
	
	    for i=0, nUnitListSize-1 do 
    		
		    pUnit = pX2Game:GetNPCUnit( i )
    		
		    if pUnit ~= nil then
		        if pUnit:GetUID() == pUID then    				        
		            if pUnit:GetFlag_LUA(0) == false then
	                    -- 방어력 증가             	    	    
		                pUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_NPC_PHYSIC_DEFENCE_ACCEL"] )
						pUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_NPC_MAGIC_DEFENCE_ACCEL"] )

		                vPos = pUnit:GetPos()
		                vPos.y = vPos.y + 100.0
                        
		                pMajorParticle = pX2Game:GetMajorParticle()	
	                    pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ShieldBuffCore", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		                if pParticle ~= nil then
		                    pParticle:SetBlackHolePosition( vPos )         	
    		            end
		                pUnit:SetFlag_LUA(0, true)	        
		            end
		            
		            if pNPCUnit:GetFlag_LUA(2) == true then
		                respawnCount = pNPCUnit:GetInt_LUA(0)
		                if respawnCount == 0 then
		                    cHp = pUnit:GetMaxHP() * 0.3
                            pUnit:SetNowHP_LUA(cHp)
		                    pNPCUnit:SetInt_LUA(0, 1)
		                else
		                    cHp = pUnit:GetMaxHP() * 0.15
                            pUnit:SetNowHP_LUA(cHp)
		                end
		                
		                pNPCUnit:SetFlag_LUA(2, false)		                    
		            end		  
		            return	
		            	                      
		        end		            
		    end	        		            
        end	                     
    end		        
end

function BARRIER_CREATEMACHINE_FIRE_DEFENCE_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    nUnitListSize = pX2Game:GetNPCUnitListSize()    	
	
	pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"], 999999 )
	
	if pUID ~= 0 then
	
	    for i=0, nUnitListSize-1 do 
    		
		    pUnit = pX2Game:GetNPCUnit( i )
    		
		    if pUnit ~= nil then
		        if pUnit:GetUID() == pUID then    		
	                -- 방어력 감소             	    	    
		            pUnit:EraseBuffTempletFromGameUnit_LUA( BUFF_TEMPLET_ID["BTI_NPC_PHYSIC_DEFENCE_ACCEL"] )
		            pUnit:EraseBuffTempletFromGameUnit_LUA( BUFF_TEMPLET_ID["BTI_NPC_MAGIC_DEFENCE_ACCEL"] )
    		        
		            --vPos = pUnit:GetPos()
		            --vPos.y = vPos.y + 100.0
                    
		            --pMajorParticle = pX2Game:GetMajorParticle()	
		            --pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ShieldBuffCore", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		            --pParticle:SetBlackHolePosition( vPos )
                    		        
                    pUnit:SetFlag_LUA(0, false)
                    
                    return
                    
                end
            end	            
        end	             
    end		        
end

function BARRIER_CREATEMACHINE_FIRE_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:PlaySound_LUA( "BarrierMachine_Spark.ogg" )
	
    if pNPCUnit:GetDamagedThisFrame() then 
        hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
        if hp <= 30 then
            cHp = pNPCUnit:GetMaxHP() * 0.3
            pNPCUnit:SetNowHP_LUA(cHp)
        end   
    end	            
end

function BARRIER_CREATEMACHINE_FIRE_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    if pNPCUnit:AnimEventTimer_LUA( 0.02 ) then
    
        nUnitListSize = pX2Game:GetNPCUnitListSize()    	
    	
	    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"], 999999 )
    	
	    if pUID ~= 0 then
    	
	        for i=0, nUnitListSize-1 do 
        		
		        pUnit = pX2Game:GetNPCUnit( i )
        		
		        if pUnit ~= nil then
		            if pUnit:GetUID() == pUID then    		
	                    fDist = GetDistance_LUA(pNPCUnit:GetPos(), pUnit:GetPos())
    	                
    	                
	                    if fDist > 1800 then
	                        pUnit:StateChange_LUA( "NASOD_ELEMENT_FIRE_TELEPORT", false )	 	                    
                        end	                    
                        return
                    end
                end	            
            end	             
        end		 
    end               
end
