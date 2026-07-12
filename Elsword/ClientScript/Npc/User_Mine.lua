-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	ALPHA_BLEND		= TRUE,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "ColorBallFire.tga",
	    "smoke02.dds",
	},
	
	READY_SOUND = 
	{
       "MineCountDown.ogg",	
	},
	
	READY_XMESH = 
	{
	    "Lightning02.Y",
	    "Lightning03.Y",
	},
	
	READY_XSKIN_MESH = 
	{
	    "DummyAttackBox_50x50x50.X",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Altera_Mine.X",
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
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Altera_Plain_Recyle_Mine",
		
	SHOW_ON_MINIMAP		= FALSE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "ALTERA_MINE_WAIT",				LUA_FRAME_MOVE_FUNC = "ALTERA_MINE_WAIT_FRAME_MOVE",	},	
	
	{ STATE_NAME = "ALTERA_MINE_READY_EXPLODE",		LUA_STATE_START_FUNC = "ALTERA_MINE_READY_EXPLODE_STATE_START",
	                                                LUA_FRAME_MOVE_FUNC = "ALTERA_MINE_READY_EXPLODE_FRAME_MOVE",	
													LUA_STATE_END_FUNC = "ALTERA_MINE_READY_EXPLODE_STATE_END",		},
	{ STATE_NAME = "ALTERA_MINE_EXPLODE",			LUA_FRAME_MOVE_FUNC = "ALTERA_MINE_EXPLODE_FRAME_MOVE",
	                                                LUA_STATE_END_FUNC = "ALTERA_MINE_EXPLODE_STATE_END", 	},

	START_STATE					= "ALTERA_MINE_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "ALTERA_MINE_WAIT",
	
	--DYING_LAND_FRONT			= "ALTERA_MINE_DYING",
	--DYING_LAND_BACK				= "ALTERA_MINE_DYING",
	--DYING_SKY					= "ALTERA_MINE_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
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


ALTERA_MINE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 1,
	
	RIGHT = TRUE,
	
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"ALTERA_MINE_READY_EXPLODE",				"CF_ALTERA_MINE_READY_EXPLODE",	},
	},
}

function CF_ALTERA_MINE_READY_EXPLODE( pKTDXApp, pX2Game, pNPCUnit )

    userPos = pNPCUnit:GetNearestNPCPos()
    --pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 500 )
   
    vLandPos = pNPCUnit:GetLandPosition_LUA()
    fDist = pNPCUnit:GetDistanceFrom(userPos)

    --print(fDist, vLandPos.y, userPos.y)       
	if fDist <= 100 and vLandPos.y+3 >= userPos.y then	    
	    return true
	end
	
	return false
end

ALTERA_MINE_READY_EXPLODE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	
	INVINCIBLE					= {0.01, 1000,},
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	RIGHT = TRUE,
	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"ALTERA_MINE_EXPLODE",		"CF_ALTERA_MINE_EXPLODE",		},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"ALTERA_MINE_WAIT",			"CF_ALTERA_MINE_WAIT",			},
	},	
}

function CF_ALTERA_MINE_EXPLODE( pKTDXApp, pX2Game, pNPCUnit )
    nCount = pNPCUnit:GetInt_LUA(0)
    if nCount >= 2 then
        return true
    end
    
    return false
end


ALTERA_MINE_EXPLODE = 
{	
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= {0.01, 1000,},
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SHOW_STICK_SHAKE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	RIGHT = TRUE,
	
	DYING_SPEED                 = 10.0,
	DYING_END					= TRUE,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,		
		{ TRUE, 0.78, "Meteo_Explosion01", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE,},
		{ TRUE, 0.79, "Meteo_Explosion02", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE,},
		{ TRUE, 0.80, "Meteo_Explosion03", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE,},
		{ TRUE, 0.81, "Meteo_Explosion04", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE,},
		--{ TRUE, 0.8, "Flare_Mine_Explosion_Attack01", FALSE, "Dummy01", TRUE, 0, 0, 0, TRUE,},
		--{ TRUE, 0.8, "Meteo_Explosion02", FALSE, "Dummy01", TRUE, 0, 0, 0, TRUE,},
	},
	
	EVENT_PROCESS = 
	{		
	},
	
}


function ALTERA_MINE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieImpactRingRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieImpactSlashRed",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	--GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieSmoke",				pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(5,-1) )
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end


function ALTERA_MINE_READY_EXPLODE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    pMajorParticle = pX2Game:GetMajorParticle()
	pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
	
	if nil ~= pParticle and pMajorParticle ~= nil then 
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			vPos = pNPCUnit:GetPos()
			vPos.y = vPos.y + 100.0
			pParticle:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end
	end
	
		
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	    nCount = pNPCUnit:GetInt_LUA(0)	
	    
	    if nCount == 0 then
		    --vRotateDegree	= pNPCUnit:GetRotateDegree()
		    vPos = pNPCUnit:GetPos()
		    vPos.y = vPos.y + 100.0
    	
		    pMajorParticle = pX2Game:GetMajorParticle()	
	        pNPCUnit:PlaySound_LUA( "MineCountDown.ogg" )

		    pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Mine_Countdown", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    --pParticle:SetAddRotate( vRotateDegree )
		    --pParticle:SetAxisAngle( vRotateDegree )	
		    pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() ) 
        end	    
		
	end
       		

	if pNPCUnit:AnimEventTimer_LUA( 0.5 )  or pNPCUnit:AnimEventTimer_LUA( 1.0 ) then

        pMajorParticle = pX2Game:GetMajorParticle()	
        if pMajorParticle ~= nil then
            vPos = pNPCUnit:GetPos()
            vPos.y = vPos.y + 25
            vPos.z = vPos.z - 10
		    pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Altera_Mine01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
        end		

	
		pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
		if nil ~= pParticle then 
			if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			    nCount = pNPCUnit:GetInt_LUA(0)	
			    
			    if nCount == 0 then				        
			        pNPCUnit:PlaySound_LUA( "MineCountDown.ogg" )

				    pParticle:ChangeTexForce_LUA( "PC_2.dds" )				    
				    pNPCUnit:SetInt_LUA(0, 1)
				elseif nCount == 1 then				   
			        pNPCUnit:PlaySound_LUA( "MineCountDown.ogg" )
				    pParticle:ChangeTexForce_LUA( "PC_1.dds" )
				    pNPCUnit:SetInt_LUA(0, 2)				
                else                    
                    pNPCUnit:SetInt_LUA(0, 3) 				    
                end				    
				
				
				pNPCUnit:ClearEventCheck(0.5)
			end
		end		
	end	

end


function ALTERA_MINE_READY_EXPLODE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

		
end

function ALTERA_MINE_READY_EXPLODE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetInt_LUA(0, 0)
	
end


function ALTERA_MINE_EXPLODE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
        pMajorParticle = pX2Game:GetMajorParticle()
	    pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pMajorParticle:DestroyInstance( pParticle )
		    pNPCUnit:ClearMajorParticle_LUA( 0 )
	    end
    end
   
    if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
        -- 지뢰 폭발
        pNPCUnit:ClearMajorParticle_LUA( 0 )
        
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vPos = pNPCUnit:GetPos()
	    pDamageEffect = pX2Game:GetDamageEffect()		
	    pDamageEffect:CreateInstance_LUA( pNPCUnit, "USER_MINE_EXPLOSION", vPos, vLandPos.y )
	    
	    pNPCUnit:SetShow(false)
	end

end

function ALTERA_MINE_EXPLODE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
--[[    
    pNPCUnit:ClearMajorParticle_LUA( 0 )        
	vLandPos = pNPCUnit:GetLandPosition_LUA()
	vPos = pNPCUnit:GetPos()
	pDamageEffect = pX2Game:GetDamageEffect()		
	pDamageEffect:CreateInstance_LUA( pNPCUnit, "MINE_EXPLOSION", vPos, vLandPos.y )
--]]	
end

function ALTERA_MINE_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
        nCount = pNPCUnit:GetInt_LUA(1)
        if nCount >= 1 then
            pMajorParticle = pX2Game:GetMajorParticle()	
            if pMajorParticle ~= nil then
                vPos = pNPCUnit:GetPos()
                vPos.y = vPos.y + 25
                vPos.z = vPos.z - 10
		        pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Altera_Mine01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		        pNPCUnit:SetInt_LUA(1, 0)
            end	
        else            
            nCount = nCount + 1
            pNPCUnit:SetInt_LUA(1, nCount)
        end       
        	    
    
        pNPCUnit:ClearEventCheck(0.8)
    end        
end
