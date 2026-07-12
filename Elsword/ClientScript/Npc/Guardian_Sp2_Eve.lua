-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- fix!! 필요없는 상태들 정리하기
-- fix!! 이름 _Eve로 다 바꿔야함





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		--"Dark_Smoke.dds",
		--"Steam_BP.tga",
	},
	
	READY_SOUND = 
	{

	    "Eve_AT_SP2_SonicWave_Slash1.ogg",
	    "Eve_AT_SP2_SonicWave_Slash2.ogg",
	    "Eve_AT_SP2_SonicWave_Wind.ogg",

        "Eve_Guardian_FinishSlash.ogg",
        "Eve_AT_SP2_JumpLanding.ogg",

        "Eve_Guardian_Voice1.ogg",
		
	},
	
	
	READY_XMESH = 
	{			
	},
	
	READY_XSKIN_MESH = 
	{		
	},

	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Guardian_Eve.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 700,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2500,
}

INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= FALSE,
    DIE_FLY             = 0,	
    
    WEAPON0 = 
	{
		WEAPON_FILE_NAME			= "GUARDIAN_EVE_Weapon01.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
		
		ALPHA_OBJECT				= FALSE,
			
		--USE_SLASH_TRACE				= TRUE,
		--SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		--SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},

	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "GUARDIAN_EVE_Weapon02.X",
		WEAPON_BONE_NAME			= "Dummy2_Lhand",
		
		ALPHA_OBJECT				= FALSE,		
			
		--USE_SLASH_TRACE				= TRUE,
		--SLASH_TRACE_TOP_BONE		= "TRACE_START1",
		--SLASH_TRACE_BOTTOM_BONE		= "TRACE_END1",
	},
}

INIT_STATE = 
{
	{ STATE_NAME = "GUARDIAN_SP2_EVE_WAIT",						},

	{ STATE_NAME = "GUARDIAN_SP2_EVE_DISAPPEAR",					LUA_STATE_START_FUNC = "GUARDIAN_SP2_EVE_DISAPPEAR_STATE_START",	},
	
	{ STATE_NAME = "GUARDIAN_SP2_EVE_TELEPORT",					LUA_STATE_START_FUNC = "GUARDIAN_SP2_EVE_TELEPORT_STATE_START",	
	                                                            LUA_FRAME_MOVE_FUNC = "GUARDIAN_SP2_EVE_TELEPORT_FRAME_MOVE",    },
	
	{ STATE_NAME = "GUARDIAN_SP2_EVE_ATTACK",					LUA_FRAME_MOVE_FUNC = "GUARDIAN_SP2_EVE_ATTACK_FRAME_MOVE",	},
	
	
	
	--리액션 관련
	{ STATE_NAME = "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",			},
	{ STATE_NAME = "GUARDIAN_SP2_EVE_DYING_LAND_BACK",				},
	{ STATE_NAME = "GUARDIAN_SP2_EVE_DYING_SKY",					},
	
	
	
	START_STATE					= "GUARDIAN_SP2_EVE_ATTACK",
	WAIT_STATE					= "GUARDIAN_SP2_EVE_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_BACK		= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_FRONT			= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_BACK				= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_AIR			= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",	
	BIG_DAMAGE_AIR				= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_AIR				= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	UP_DAMAGE					= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	DAMAGE_REVENGE				= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	
	DYING_LAND_FRONT			= "GUARDIAN_SP2_EVE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "GUARDIAN_SP2_EVE_DYING_LAND_BACK",
	DYING_SKY					= "GUARDIAN_SP2_EVE_DYING_SKY",

	REVENGE_ATTACK				= "",	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 9999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 91000,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 100,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 310,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  90,
		FAR_WALK_RATE		= 100,   -- 70, 
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 10,
		UP_DOWN_RATE		= 10,
		DOWN_JUMP_RATE		= 100,    --  10,
		DOWN_DOWN_RATE		= 10,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}





GUARDIAN_SP2_EVE_WAIT = 
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
GUARDIAN_SP2_EVE_DISAPPEAR = 
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




GUARDIAN_SP2_EVE_TELEPORT = 
{
	ANIM_NAME					= "Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	
	INVINCIBLE					= { 0, 100, },

    SOUND_PLAY0			= { 0.264, "Eve_Guardian_FinishSlash.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"GUARDIAN_SP2_EVE_DISAPPEAR",					},
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




GUARDIAN_SP2_EVE_ATTACK = 
{
	ANIM_NAME					= "AT_SP2a_SonicWave",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,


	SOUND_PLAY0			= { 0.100, "Eve_Guardian_Voice1.ogg" },
	SOUND_PLAY1			= { 0.070, "Eve_AT_SP2_SonicWave_Slash1.ogg" },
	SOUND_PLAY2			= { 0.756, "Eve_AT_SP2_SonicWave_Slash2.ogg" },
	SOUND_PLAY3			= { 0.759, "Eve_AT_SP2_SonicWave_Wind.ogg" },
	SOUND_PLAY4			= { 1.307, "Eve_AT_SP2_JumpLanding.ogg" },

	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	INVINCIBLE					= { 0, 100, }, 		
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		--{ TRUE, 0.001, "Eve_AT_Sp3a_GCR_PinLight01", FALSE, "", FALSE, FALSE, 150, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		--{ TRUE, 0.001, "Eve_AT_Sp3a_GCR_Spinliner01", FALSE, "", FALSE, FALSE, 150, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		--{ TRUE, 0.001, "Eve_Sp3a_Magicsquare01", FALSE, "Bip01_Neck", FALSE, FALSE, 150, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},	
					
		--{ TRUE, 0.01, "Eve_Sp3a_Magicsquare01", FALSE, "", FALSE, FALSE, 150, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		
		{ TRUE, 0.01, "Eve_AT_Sp3a_GCR_PinLight01", FALSE, "", FALSE, FALSE, 150, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		{ TRUE, 0.01, "Eve_AT_Sp3a_GCR_Spinliner01", FALSE, "", FALSE, FALSE, 150, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		
		--{ FALSE, 0.01, "Smoke_Stone_Property01", FALSE, "", FALSE, FALSE, 0, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		
		--{ TRUE, 0.7, "ShockWave_Eve_AT_Sp2a_Sonicwave", FALSE, "Bip01_Neck", FALSE, FALSE, 0, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},
		--{ TRUE, 1.3, "Smoke_Eve_AT_Sp2a_Sonicwave", FALSE, "Bip01_R_Toe0", FALSE, FALSE, 50, 0, 0, TRUE, 0, 0, 0, 0.0, 0.0, 0.0},		
	},	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GUARDIAN_SP2_EVE_TELEPORT",								},	
	},

	ATTACK_TIME0				= { 0.06, 1.1, },
	
	--SLASH_TRACE					= { 0.01, 2.27 },
	--SLASH_TRACE0				= { 0.01, 2.27, 1 }, 
		
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		ATTACK_TYPE		= ATTACK_TYPE["AT_SPECIAL"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],		

		PVP_RATE		= 0.75,
		
		ENABLE_ATTACKBOX =
		{
		    "ATTACK_LINE_START0",
		},
		DISABLE_ATTACKBOX = 
	    {	    		    
		    "ATTACK_LINE_START1",
	    },			    

		DAMAGE = 
		{
			PHYSIC		= 2.266667,
		},
		
		HIT_ADD_MP				= 3,
		
		BACK_SPEED_X			= 500.0,
		BACK_SPEED_Y			= 2000.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	
		RE_ATTACK				= FALSE,		
		
		
		CAN_REVENGE = FALSE,
	},	
		
	DAMAGE_DATA2 = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		ATTACK_TYPE		= ATTACK_TYPE["AT_SPECIAL"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],		
		
		PVP_RATE		= 0.75,
		
		ENABLE_ATTACKBOX =
		{
		    "ATTACK_LINE_START0",
		},
		DISABLE_ATTACKBOX = 
	    {	    		    
		    "ATTACK_LINE_START1",
	    },			    

		DAMAGE = 
		{
			PHYSIC		= 2.266667,
		},
		
		HIT_ADD_MP				= 3,
		
		BACK_SPEED_X			= 800.0,
		BACK_SPEED_Y			= 1400.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	
		RE_ATTACK				= FALSE,		
		TECH_POINT				= 200,
		
		
		CAN_REVENGE = FALSE,
	},
	
}









GUARDIAN_SP2_EVE_DYING_LAND_FRONT = 
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
	
GUARDIAN_SP2_EVE_DYING_LAND_BACK = 
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

GUARDIAN_SP2_EVE_DYING_SKY = 
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









----------------------------------------------------------
function GUARDIAN_SP2_EVE_DISAPPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)
	
end







----------------------------------------------------------
function GUARDIAN_SP2_EVE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
 -- Fade Start 
    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 0.0, true, true)
        pNPCUnit:SetUnitFadeMove(0.15, 0.0, 0.0, 0.0, 0.01)
    end  
    
	if pNPCUnit:AnimEventTimer_LUA( 0.08 ) then
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA2" )
	end

    if pNPCUnit:AnimEventTimer_LUA(0.15) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, false, true)
        pNPCUnit:SetUnitFadeMove(0.1, 0.0, 0.0, 0.0, 0.02)        
    end
-- Fade End    

    if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
	
	     pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 0.5 )
	     
		vLandPos = pNPCUnit:GetLandPosition_LUA()		
		vBonePos = pNPCUnit:GetBonePos_LUA( "Bip01_Neck" )
		pDamageEffect = pX2Game:GetDamageEffect()
		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "NASOD_GUARDIAN_SONICWAVE", vBonePos, vLandPos.y )			
		
		vRotateDegree	= pNPCUnit:GetRotateDegree()		
		pMajorParticle = pX2Game:GetMajorParticle()
		if pMajorParticle ~= nil then
		    pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ShockWave_Eve_AT_Sp2a_Sonicwave", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    
		    if pParticle ~= nil then
		        pParticle:SetAddRotate( vRotateDegree )
		        pParticle:SetAxisAngle( vRotateDegree )			        
		    end
		end			
				
	end		
--[[	
	if pNPCUnit:AnimEventTimer_LUA( 1.3 ) then
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Bip01_R_Toe0")	
		vRotateDegree	= pNPCUnit:GetRotateDegree()
		
		pMajorParticle = pX2Game:GetMajorParticle()
		if pMajorParticle ~= nil then
		
		    bIsRight = pNPCUnit:GetIsRight()
		    vDirVector = pNPCUnit:GetDirVector()
    		
		    if bIsRight == false then
			    vPos = MovePos( vPos, vDirVector, -50 )
		    else
			    vPos = MovePos( vPos, vDirVector, 50 )
		    end
	
		    pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_Eve_AT_Sp2a_Sonicwave", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		    
		    if pParticle ~= nil then
		        pParticle:SetAddRotate( vRotateDegree )
		        pParticle:SetAxisAngle( vRotateDegree )			        
		    end
		end				
	end
--]]	
end


function GUARDIAN_SP2_EVE_TELEPORT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    -- 텔레포트 (사라질때) 
    pNPCUnit:PlaySound_LUA( "Nasod_Element_Teleport.ogg" )
    
    pos = pNPCUnit:GetPos()
    rotDegree 	= pNPCUnit:GetRotateDegree()
    pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()          
   
    rotDegree.y = 0
    
    if pMinorXMeshPlayer ~= nil then
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", pos, rotDegree, rotDegree, 14 )
        --if pMeshPlayer ~= nil then
        --    pMeshPlayer:SetManualSize(1.5, 1.5, 1.5)
        --end    
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", pos, rotDegree, rotDegree, 14 )
        --if pMeshPlayer ~= nil then
        --    pMeshPlayer:SetManualSize(1.5, 1.5, 1.5)
        --end
    end
end

function GUARDIAN_SP2_EVE_TELEPORT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
-- Fade Start    

    if pNPCUnit:AnimEventTimer_LUA(0.1) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, false, true)
        pNPCUnit:SetUnitFadeMove(1.3, 0.0, 0.0, 0.0, -0.04)
    end
    
    if pNPCUnit:AnimEventTimer_LUA(1.3) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 1.0, true, true)
        pNPCUnit:SetUnitFadeMove(0.3, 0.0, 0.0, 0.0, -0.1)
        pNPCUnit:SetUnitFadeScale(0.3, -0.1, 0.1, -0.1)
    end  

-- Fade End    
end








-- UTILITY FUNCTIONS ---------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
