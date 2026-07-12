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
		"Dark_Smoke.dds",
		"Steam_BP.tga",
	},
	
	READY_SOUND = 
	{
		--"Wally9_Combo.ogg",
		--"Wally9_Slash.ogg",
		--"Wally9_SwordOut.ogg",
		--"Wally9_SwordIn.ogg",
		--"Wally9_DashAttack.ogg",
		"Wally9_Rampage1.ogg",
		"Wally9_Rampage2.ogg",
		"Wally9_Rampage3.ogg",
		"Wally9_Rampage4.ogg",
		--"Wally9_WaitStart.ogg",
		"Wally9_Win.ogg",
		--"Wally9_StandUpAttack.ogg",
		--"Wally9_AttackB.ogg",
		"Wally9_StepLanding.ogg",
		--"Wally9_JumpAttack.ogg",
		--"Wally9_DashEnd.ogg",
		"Wally9_HitGround.ogg",
		--"Wally9_StartSmoke.ogg",
		"BreakGround.ogg",
		"Wally9_LaserAttack.ogg",
		--"Wally9_Barrier.ogg",
		
	},
	
	
	READY_XMESH = 
	{
		"Thief_Fat_JumpAttackA_Stone01.Y",
		"Thief_Fat_JumpAttackA_Stone02.y",
		--"Wally9th_Armor_Broken.X",
		
	},
	
	READY_XSKIN_MESH = 
	{
		"Wally9th_LazerAttack01.X",	
		"Wally9th_RampageLaser01.X",
	},

	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Wally9th_Eve.x",
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
		WEAPON_FILE_NAME			= "Wally9th_Weapon01.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
		
		ALPHA_OBJECT				= TRUE,
			
		USE_SLASH_TRACE				= TRUE,
		SLASH_TRACE_TOP_BONE		= "TRACE_START1",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END1",
	},

	WEAPON1 = 
	{
		WEAPON_FILE_NAME			= "Wally9th_Weapon02.X",
		WEAPON_BONE_NAME			= "Dummy2_Lhand",
		
		ALPHA_OBJECT				= TRUE,		
			
		USE_SLASH_TRACE				= TRUE,
		SLASH_TRACE_TOP_BONE		= "TRACE_START2",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END2",
	},

	
}

INIT_STATE = 
{
	{ STATE_NAME = "WALLY_9TH_EVE_WAIT",						},

	{ STATE_NAME = "WALLY_9TH_EVE_DISAPPEAR",					LUA_STATE_START_FUNC = "WALLY_9TH_EVE_DISAPPEAR_STATE_START",	},
	
	{ STATE_NAME = "WALLY_9TH_EVE_TELEPORT",					LUA_STATE_START_FUNC = "WALLY_9TH_EVE_TELEPORT_STATE_START",	
	                                                            LUA_FRAME_MOVE_FUNC = "WALLY_9TH_EVE_TELEPORT_FRAME_MOVE",    },
	
	{ STATE_NAME = "WALLY_9TH_EVE_SP_RAMPAGE",					LUA_FRAME_MOVE_FUNC = "WALLY_9TH_EVE_SP_RAMPAGE_FRAME_MOVE",	},
	
	
	
	--리액션 관련
	{ STATE_NAME = "WALLY_9TH_EVE_DYING_LAND_FRONT",			},
	{ STATE_NAME = "WALLY_9TH_EVE_DYING_LAND_BACK",				},
	{ STATE_NAME = "WALLY_9TH_EVE_DYING_SKY",					},
	
	
	
	START_STATE					= "WALLY_9TH_EVE_SP_RAMPAGE",
	WAIT_STATE					= "WALLY_9TH_EVE_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_BACK		= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_FRONT			= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_BACK				= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_AIR			= "WALLY_9TH_EVE_DYING_LAND_FRONT",	
	BIG_DAMAGE_AIR				= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_AIR				= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	UP_DAMAGE					= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	DAMAGE_REVENGE				= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	
	DYING_LAND_FRONT			= "WALLY_9TH_EVE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "WALLY_9TH_EVE_DYING_LAND_BACK",
	DYING_SKY					= "WALLY_9TH_EVE_DYING_SKY",

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





WALLY_9TH_EVE_WAIT = 
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
WALLY_9TH_EVE_DISAPPEAR = 
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




WALLY_9TH_EVE_TELEPORT = 
{
	ANIM_NAME					= "Win",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	
	INVINCIBLE					= { 0, 100, },

    SOUND_PLAY0			= { 0.702, "Wally9_Win.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WALLY_9TH_EVE_DISAPPEAR",					},
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




WALLY_9TH_EVE_SP_RAMPAGE = 
{
	ANIM_NAME					= "SP_Rampage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	    SOUND_PLAY0			= { 0.108, "Wally9_Rampage1.ogg" },
	    SOUND_PLAY1			= { 0.653, "Wally9_Rampage2.ogg" },
	    SOUND_PLAY2			= { 1.617, "Wally9_Rampage3.ogg" },
	    SOUND_PLAY3			= { 1.658, "Wally9_HitGround.ogg" },
	    SOUND_PLAY4			= { 1.660, "BreakGround.ogg" },

	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	INVINCIBLE					= { 0, 100, }, 		
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WALLY_9TH_EVE_TELEPORT",								},	
	},
	
	ATTACK_TIME0				= { 0.04, 0.075, },
	ATTACK_TIME1				= { 0.59, 1.11, },
	ATTACK_TIME2				= { 1.6, 1.65, },
	ATTACK_TIME3				= { 1.96, 2.0, },
	
	SLASH_TRACE					= { 0.1, 4.0 },
	SLASH_TRACE0				= { 0.1, 4.0, 1 }, 
		
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		PVP_RATE		= 0.75,
		
		DAMAGE = 
		{
			PHYSIC		= 1.61667,
		},
		
		HIT_ADD_MP				= 3,
		
		BACK_SPEED_X			= 500.0,
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.05,
		
		
		CAN_REVENGE = FALSE,
	},
	
	DAMAGE_DATA2 = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		PVP_RATE		= 0.75,
		
		DAMAGE = 
		{
			PHYSIC		= 1.61667,
		},
		
		HIT_ADD_MP				= 3,
		
		BACK_SPEED_X			= 1000.0,
		BACK_SPEED_Y			= 1700.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
		
		CAN_REVENGE = FALSE,
	},
}









WALLY_9TH_EVE_DYING_LAND_FRONT = 
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
	
WALLY_9TH_EVE_DYING_LAND_BACK = 
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

WALLY_9TH_EVE_DYING_SKY = 
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
function WALLY_9TH_EVE_DISAPPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)
	
end







----------------------------------------------------------
function WALLY_9TH_EVE_SP_RAMPAGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
 -- Fade Start
 
    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 0.0, true, true)
        pNPCUnit:SetUnitFadeMove(0.4, 0.0, 0.0, 0.0, 0.1)
    end  
    

    if pNPCUnit:AnimEventTimer_LUA(0.2) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, false, true)
        pNPCUnit:SetUnitFadeMove(0.4, 0.0, 0.0, 0.0, 0.04)        
    end

-- Fade End    
	
	if pNPCUnit:AnimEventTimer_LUA( 1.79 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA2" )
	end
	
		
	if pNPCUnit:AnimEventTimer_LUA( 2.45 ) then
		pNPCUnit:PlaySound_LUA( "Wally9_LaserAttack.ogg" )
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()		
		pEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "WALLY_9TH_EVE_RAMPAGE_LAZER_ATTACK", pNPCUnit:GetBonePos_LUA( "Dummy3_Eye" ), pos.y )	
		
		pNPCUnit:SetNowMP( 0 )	
	end
	
	
		
	if pNPCUnit:AnimEventTimer_LUA( 1.64 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()
		vPos = pNPCUnit:GetPos()
		
		bIsRight = pNPCUnit:GetIsRight()
		vDirVector = pNPCUnit:GetDirVector()
		
		if bIsRight == false then
			vPos = MovePos( vPos, vDirVector, -250 )
		else
			vPos = MovePos( vPos, vDirVector, 250 )
		end

		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_Nasod_MinerFat_Attack",	vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end


		
	if pNPCUnit:AnimEventTimer_LUA( 1.72 ) then
	
		pMajorParticle = pX2Game:GetMajorParticle()
		vPos = pNPCUnit:GetPos()
		
		bIsRight = pNPCUnit:GetIsRight()
		vDirVector = pNPCUnit:GetDirVector()
		
		if bIsRight == false then
			vPos = MovePos( vPos, vDirVector, -250 )
		else
			vPos = MovePos( vPos, vDirVector, 250 )
		end

		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally9th_Rampage_Stone01",	vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally9th_Rampage_Stone02",	vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end

end














function WALLY_9TH_EVE_TELEPORT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    -- 텔레포트 (사라질때) 
    pNPCUnit:PlaySound_LUA( "Nasod_Element_Teleport.ogg" )
    
    pos = pNPCUnit:GetPos()
    rotDegree 	= pNPCUnit:GetRotateDegree()
    pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()          
   
    rotDegree.y = 0
    
    if pMinorXMeshPlayer ~= nil then
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", pos, rotDegree, rotDegree, 14 )
        if pMeshPlayer ~= nil then
            pMeshPlayer:SetManualSize(1.5, 1.5, 1.5)
        end    
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", pos, rotDegree, rotDegree, 14 )
        if pMeshPlayer ~= nil then
            pMeshPlayer:SetManualSize(1.5, 1.5, 1.5)
        end
    end
end

function WALLY_9TH_EVE_TELEPORT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

-- Fade Start    

    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, false, true)
        pNPCUnit:SetUnitFadeMove(1.1, 0.0, 0.0, 0.0, -0.04)
    end
    
    if pNPCUnit:AnimEventTimer_LUA(1.0) then
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
