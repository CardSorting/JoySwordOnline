-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 400.0,
	UNIT_HEIGHT		= 300.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
    UNIT_SCALE      = 1.3,
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Nasod_Canonball.dds",
	    "Steam_BP.dds",
	},
	
	READY_SOUND = 
	{
	  "CannonBig_AttackCylinder1.ogg",
	  "CannonBig_AttackCylinder2.ogg",
	  "CannonBig_AttackCylinder3.ogg",
	  "CannonBig_AttackSpin1.ogg",
	  "CannonBig_AttackSpin2.ogg",
	  "CannonBig_AttackSpin3.ogg",
	  "CannonBig_MoveUp.ogg",
	  "CannonBig_MoveDown.ogg",
      "CannonBig_Bullet.ogg",
	  "CannonBig_Smoke.ogg",
      "CannonBig_Cartridge.ogg",
      "CannonBig_Flame.ogg",	  
	},
	
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	    "Nasod_Bullet01.X",
	    "Altera_Battle_Cannon_Big_Gate.X",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Altera_Battle_Cannon_Big.X",
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
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
}


INIT_STATE = 
{
	{ STATE_NAME = "CANNON_BIG_START",					LUA_FRAME_MOVE_FUNC = "CANNON_BIG_START_FRAME_MOVE",
														LUA_STATE_END_FUNC = "CANNON_BIG_START_STATE_END",		},
														
	{ STATE_NAME = "CANNON_BIG_WAIT",					LUA_FRAME_MOVE_FUNC = "CANNON_BIG_WAIT_FRAME_MOVE", },
	{ STATE_NAME = "CANNON_BIG_ATTACK_1",				LUA_FRAME_MOVE_FUNC = "CANNON_BIG_ATTACK_1_FRAME_MOVE",	
														LUA_STATE_END_FUNC = "CANNON_BIG_ATTACK_1_STATE_END",		},
    { STATE_NAME = "CANNON_BIG_ATTACK_2",				LUA_FRAME_MOVE_FUNC = "CANNON_BIG_ATTACK_2_FRAME_MOVE",	
														LUA_STATE_END_FUNC = "CANNON_BIG_ATTACK_2_STATE_END",		},														
	
	--리액션 관련
	{ STATE_NAME = "CANNON_BIG_DAMAGE_SMALL",			LUA_FRAME_MOVE_FUNC = "CANNON_BIG_DAMAGE_SMALL_FRAME_MOVE",				},
	{ STATE_NAME = "CANNON_BIG_DYING_LAND_FRONT",		LUA_STATE_START_FUNC = "CANNON_BIG_DYING_LAND_STATE_START",
	                                                    LUA_FRAME_MOVE_FUNC = "CANNON_BIG_DYING_LAND_FRAME_MOVE",		},
	
	
	
	START_STATE					= "CANNON_BIG_START",
	WAIT_STATE					= "CANNON_BIG_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CANNON_BIG_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CANNON_BIG_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CANNON_BIG_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "CANNON_BIG_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "CANNON_BIG_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "CANNON_BIG_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "CANNON_BIG_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "CANNON_BIG_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "CANNON_BIG_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CANNON_BIG_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "CANNON_BIG_DAMAGE_SMALL",
	UP_DAMAGE					= "CANNON_BIG_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "CANNON_BIG_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "CANNON_BIG_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CANNON_BIG_DYING_LAND_FRONT",
	DYING_SKY					= "CANNON_BIG_DYING_LAND_FRONT",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 1400,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1500,		-- cm
		TARGET_LOST_RANGE			= 1600,		-- cm
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


CANNON_BIG_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,

		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_BIG_WAIT",		"CT_CANNON_BIG_WAIT"				},
	},
	
	CT_CANNON_BIG_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}


CANNON_BIG_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_BIG_ATTACK_2",	"CT_CANNON_BIG_ATTACK_2",	},	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_BIG_ATTACK_1",	"CT_CANNON_BIG_ATTACK_1",	},		
	},
	
	CT_CANNON_BIG_ATTACK_2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 50,
	},
	CT_CANNON_BIG_ATTACK_1 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 50,
	},
	

}




CANNON_BIG_ATTACK_1 = 
{
	ANIM_NAME					= "Attack1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	  
	
    SOUND_PLAY0			= { 0.304, "CannonBig_AttackCylinder1.ogg" },
    SOUND_PLAY1			= { 1.117, "CannonBig_AttackCylinder2.ogg" },
    SOUND_PLAY2			= { 1.915, "CannonBig_AttackCylinder3.ogg" },
    SOUND_PLAY3			= { 1.942, "CannonBig_Smoke.ogg" },
    SOUND_PLAY4			= { 0.984, "CannonBig_AttackSpin1.ogg" },
    SOUND_PLAY5			= { 1.943, "CannonBig_AttackSpin2.ogg" },
    SOUND_PLAY6			= { 3.094, "CannonBig_AttackSpin3.ogg" },
    SOUND_PLAY7			= { 0.219, "CannonBig_MoveUp.ogg" },
    SOUND_PLAY8			= { 3.556, "CannonBig_MoveDown.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
	    { TRUE, 1.9666, "Smoke_Nasod_Diriler_Cannon_CannonAttack02", FALSE, "", TRUE, FALSE, -120, 0, -50, TRUE,  },
	    { TRUE, 1.9666, "Flare_Nasod_Diriler_Cannon_CannonAttack03", FALSE, "Dummy01", TRUE, FALSE, 10, 10, -30, TRUE, },
	    { TRUE, 1.9666, "Smoke_Battle_Cannon_Big_Attack01", FALSE, "Bone_Cannon3", TRUE, FALSE, 70, 70, -30, TRUE, },	    
	},
	
	CAMERA_CRASH =
	{
	    {1.9666, 5, 0.4},
	    {2.333, 3, 1.0},
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_BIG_WAIT",						},	
	},
	
}

CANNON_BIG_ATTACK_2 = 
{
	ANIM_NAME					= "Attack3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	  
	
    SOUND_PLAY0			= { 0.304, "CannonBig_AttackCylinder1.ogg" },
    SOUND_PLAY1			= { 1.117, "CannonBig_AttackCylinder2.ogg" },
    SOUND_PLAY2			= { 1.915, "CannonBig_AttackCylinder3.ogg" },
    SOUND_PLAY3			= { 1.942, "CannonBig_Smoke.ogg" },
    SOUND_PLAY4			= { 0.984, "CannonBig_AttackSpin1.ogg" },
    SOUND_PLAY5			= { 1.943, "CannonBig_AttackSpin2.ogg" },
    SOUND_PLAY6			= { 3.094, "CannonBig_AttackSpin3.ogg" },
    SOUND_PLAY7			= { 0.219, "CannonBig_MoveUp.ogg" },
    SOUND_PLAY8			= { 3.556, "CannonBig_MoveDown.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
		
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
	    { TRUE, 1.9666, "Smoke_Nasod_Diriler_Cannon_CannonAttack02", FALSE, "", TRUE, FALSE, -120, 0, -50, TRUE,  },
	    { TRUE, 1.9666, "Flare_Nasod_Diriler_Cannon_CannonAttack03", FALSE, "Dummy01", TRUE, FALSE, 10, 10, -30, TRUE, },
	    { TRUE, 1.9666, "Smoke_Battle_Cannon_Big_Attack01", FALSE, "Bone_Cannon3", TRUE, FALSE, 70, 70, -30, TRUE, },	    
	},
	
	CAMERA_CRASH =
	{
	    {1.9666, 5, 0.4},
	    {2.333, 3, 1.0},
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_BIG_WAIT",						},	
	},
	
}



CANNON_BIG_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
		
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_BIG_WAIT",												},
	},
}


CANNON_BIG_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Down",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	NEVER_MOVE					= TRUE,
	
    SOUND_PLAY0			= { 0.368, "CannonBig_MoveDown.ogg" },

	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



------------------------------------------------------------------------------
function CANNON_BIG_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )



end



------------------------------------------------------------------------------
function CANNON_BIG_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )



end





------------------------------------------------------------------------------
function CANNON_BIG_ATTACK_1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()

        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Big_Body1")
            vpos.y = vpos.y + 100          
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end
    
    -- 탄피
    if pNPCUnit:AnimEventTimer_LUA( 1.97 ) then	
    	pNPCUnit:PlaySound_LUA( "CannonBig_Cartridge.ogg" )
		
        pos = pNPCUnit:GetBonePos_LUA( "Bone_Cannon3" )  
        --pos.x = pos.x + 70.0     
	    pos.y = pos.y + 70.0
	    
	    if pNPCUnit:GetIsRight() == true then 
			pos.x = pos.x + 70.0
		else
			pos.x = pos.x - 70.0	
		end
		
	    GetMajorParticle = pX2Game:GetMajorParticle()
    	vRotateDegree	= pNPCUnit:GetRotateDegree()
	    pSeq = GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Battle_Cannon_Big_Empty_Bullet01",	pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	    if pSeq ~= nil then
    	
    	    pSeq:SetAddRotate( vRotateDegree )
		    pSeq:SetAxisAngle( vRotateDegree )	
		    pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
    	
	    end
    end	  
    
    if pNPCUnit:AnimEventTimer_LUA( 1.91 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()	
		vPos = pNPCUnit:GetPos()					
		vRot = pNPCUnit:GetRotateDegree()
		vRot.z = vRot.z + 25
		
		if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "BIG_CANNON_ATTACK1", pNPCUnit:GetBonePos_LUA( "Dummy01" ), pos.y, vRot )            
        end		
		
	end

end



function CANNON_BIG_ATTACK_2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Big_Body1")
            vpos.y = vpos.y + 100          
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end
    
    -- 탄피
    if pNPCUnit:AnimEventTimer_LUA( 1.97 ) then	
    	pNPCUnit:PlaySound_LUA( "CannonBig_Cartridge.ogg" )
		
        pos = pNPCUnit:GetBonePos_LUA( "Bone_Cannon3" ) 
        --pos.x = pos.x + 70.0     
	    pos.y = pos.y + 70.0
	    
	    if pNPCUnit:GetIsRight() == true then 
			pos.x = pos.x + 70.0
		else
			pos.x = pos.x - 70.0	
		end
		
	    GetMajorParticle = pX2Game:GetMajorParticle()
    	vRotateDegree	= pNPCUnit:GetRotateDegree()
	    pSeq = GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Battle_Cannon_Big_Empty_Bullet01",	pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	    if pSeq ~= nil then
    	
    	    pSeq:SetAddRotate( vRotateDegree )
		    pSeq:SetAxisAngle( vRotateDegree )	
		    pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
    	
	    end
    end	  
    
    if pNPCUnit:AnimEventTimer_LUA( 1.91 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()	
		vPos = pNPCUnit:GetPos()			
		vRot = pNPCUnit:GetRotateDegree()
		vRot.z = vRot.z - 25
		
		if pDamageEffect ~= nil then
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "BIG_CANNON_ATTACK2", pNPCUnit:GetBonePos_LUA( "Dummy01" ), pos.y, vRot )            
        end		
		
	end

end


------------------------------------------------------------------------------
function CANNON_BIG_ATTACK_2_STATE_END( pKTDXApp, pX2Game, pNPCUnit )


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



function CANNON_BIG_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Big_Body1")
            vpos.y = vpos.y + 100          
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end

end




------------------------------------------------------------------------------
function CANNON_BIG_ATTACK_1_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end






function CANNON_BIG_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    
    vPos = pNPCUnit:GetPos()
	pNPC = pX2Game:GetNPCUnitByKeyCode( 1 )
	if pNPC ~= nil then
	
		pNPC:SetPosition( vPos, false )
	
	end	
end

function CANNON_BIG_DYING_LAND_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.9 ) then
        pNPC = pX2Game:GetNPCUnitByKeyCode( 1 )
	if pNPC ~= nil then
        	if pNPC:GetNowStateID() == pNPC:GetDisabledStateID() then		
		    	pNPC:StateChangeForce( pNPC:GetStartState() )		
	    	end
	end
    end	    
end

function CANNON_BIG_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Big_Body1")
            vpos.y = vpos.y + 100          
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
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

