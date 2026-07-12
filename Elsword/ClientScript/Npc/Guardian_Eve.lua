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
	MOTION_FILE_NAME	= "Eve_AT_ComboX5a_mesh.x",
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
    
    
}

INIT_STATE = 
{	
    { STATE_NAME = "GUARDIAN_EVE_DISAPPEAR",			LUA_STATE_START_FUNC = "GUARDIAN_EVE_DISAPPEAR_STATE_START",	},
	{ STATE_NAME = "GUARDIAN_EVE_ATTACK",					LUA_FRAME_MOVE_FUNC = "GUARDIAN_EVE_ATTACK_FRAME_MOVE",	        },
	
	
	
	--리액션 관련
	{ STATE_NAME = "GUARDIAN_EVE_DYING_LAND_FRONT",			},
	{ STATE_NAME = "GUARDIAN_EVE_DYING_LAND_BACK",				},
	{ STATE_NAME = "GUARDIAN_EVE_DYING_SKY",					},
	
	
	
	START_STATE					= "GUARDIAN_EVE_ATTACK",
	WAIT_STATE					= "GUARDIAN_EVE_ATTACK",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "GUARDIAN_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "GUARDIAN_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_FRONT		= "GUARDIAN_EVE_DYING_LAND_FRONT",
	BIG_DAMAGE_LAND_BACK		= "GUARDIAN_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_FRONT		= "GUARDIAN_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "GUARDIAN_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_FRONT			= "GUARDIAN_EVE_DYING_LAND_FRONT",
	FLY_DAMAGE_BACK				= "GUARDIAN_EVE_DYING_LAND_FRONT",
	SMALL_DAMAGE_AIR			= "GUARDIAN_EVE_DYING_LAND_FRONT",	
	BIG_DAMAGE_AIR				= "GUARDIAN_EVE_DYING_LAND_FRONT",
	DOWN_DAMAGE_AIR				= "GUARDIAN_EVE_DYING_LAND_FRONT",
	UP_DAMAGE					= "GUARDIAN_EVE_DYING_LAND_FRONT",
	DAMAGE_REVENGE				= "GUARDIAN_EVE_DYING_LAND_FRONT",
	
	DYING_LAND_FRONT			= "GUARDIAN_EVE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "GUARDIAN_EVE_DYING_LAND_BACK",
	DYING_SKY					= "GUARDIAN_EVE_DYING_SKY",

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

GUARDIAN_EVE_DISAPPEAR = 
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

GUARDIAN_EVE_ATTACK = 
{
	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	    --SOUND_PLAY0			= { 0.108, "Wally9_Rampage1.ogg" },
	    --SOUND_PLAY1			= { 0.653, "Wally9_Rampage2.ogg" },
	    --SOUND_PLAY2			= { 1.617, "Wally9_Rampage3.ogg" },
	    --SOUND_PLAY3			= { 1.658, "Wally9_HitGround.ogg" },
	    --SOUND_PLAY4			= { 1.660, "BreakGround.ogg" },

	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	INVINCIBLE					= { 0, 100, }, 		
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GUARDIAN_EVE_DISAPPEAR",								},	
	},

	ATTACK_TIME0				= { 0.01, 0.2, },
	
	--SLASH_TRACE					= { 0.01, 2.27 },
	--SLASH_TRACE0				= { 0.01, 2.27, 1 }, 
		
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],		

		
		DAMAGE = 
		{
			PHYSIC		= 0.5,
		},
		
		HIT_ADD_MP				= 03,
		
		BACK_SPEED_X			= 800.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.5,		
	
		RE_ATTACK				= FALSE,		
		HIT_GAP					= 0.0,
		
		
		CAN_REVENGE = FALSE,
	},	
}









GUARDIAN_EVE_DYING_LAND_FRONT = 
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
	
GUARDIAN_EVE_DYING_LAND_BACK = 
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

GUARDIAN_EVE_DYING_SKY = 
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
function GUARDIAN_EVE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
 -- Fade Start 
    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 0.0, TRUE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.03, 0.0, 0.0, 0.0, 0.4)
    end  
    

    if pNPCUnit:AnimEventTimer_LUA(0.03) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, FALSE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.04, 0.0, 0.0, 0.0, 0.12)        
    end
-- Fade End   

    if pNPCUnit:AnimEventTimer_LUA( 0.333 ) or 
        pNPCUnit:AnimEventTimer_LUA( 0.433 ) or
        pNPCUnit:AnimEventTimer_LUA( 0.533 ) or
        pNPCUnit:AnimEventTimer_LUA( 0.633 ) or
        pNPCUnit:AnimEventTimer_LUA( 0.733 ) or
        pNPCUnit:AnimEventTimer_LUA( 0.833 ) then
	
		vLandPos = pNPCUnit:GetLandPosition_LUA()	
		pDamageEffect = pX2Game:GetDamageEffect()
		
		vDamagePos = pNPCUnit:GetPos()		
		if pNPCUnit:GetIsRight() == true then
		    vPos = MovePos(vDamagePos, pNPCUnit:GetDirVector(), 60)
        else
            vPos = MovePos(vDamagePos, pNPCUnit:GetDirVector(), -60)
        end
                    		    
		vPos.y = vDamagePos.y + 125.0
        pDamageEffect:CreateInstance_LUA( pNPCUnit, "EVE_AT_COMBO_XXZ4", vPos, vLandPos.y )
	end		
	
	if pNPCUnit:AnimEventTimer_LUA( 1.15 ) then
	    vLandPos = pNPCUnit:GetLandPosition_LUA()	
		pDamageEffect = pX2Game:GetDamageEffect()
		
		vDamagePos = pNPCUnit:GetPos()		
		if pNPCUnit:GetIsRight() == true then
		    vPos = MovePos(vDamagePos, pNPCUnit:GetDirVector(), 60)
        else
            vPos = MovePos(vDamagePos, pNPCUnit:GetDirVector(), -60)
        end
                    		    
		vPos.y = vDamagePos.y + 125.0
        pDamageEffect:CreateInstance_LUA( pNPCUnit, "EVE_AT_COMBO_XXZ4Z", vPos, vLandPos.y )
        
        pMajorParticle = pX2Game:GetMajorParticle()	
        if pMajorParticle ~= nil then
	        pSeq = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Particle_Eve_AT_ComboX5a01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	        if pSeq ~= nil then
	            pSeq:SetAddRotate( pNPCUnit:GetRotateDegree() )
	            pSeq:SetAxisAngle( pNPCUnit:GetRotateDegree() )
	        end
	    end
	end

    -- Fade Start    
    if pNPCUnit:AnimEventTimer_LUA( 1.27 ) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, FALSE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.15, 0.0, 0.0, 0.0, -0.1)
    end        
    if pNPCUnit:AnimEventTimer_LUA(1.42) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.05, 0.0, 0.0, 0.0, -0.2)
        pNPCUnit:SetUnitFadeScale(0.05, -0.1, 0.1, -0.2)
    end  
    -- Fade End    
end


function GUARDIAN_EVE_DISAPPEAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)
	
end


-- UTILITY FUNCTIONS ---------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
