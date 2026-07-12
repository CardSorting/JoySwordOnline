-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 70.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.0,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{      
	    "Jubigee_Seed01.dds",
	    "Particle_Blur.dds",
	    "Arme_Critical.dds",
	    "Jubigee_Seed01.dds",	    
	},
	
	READY_SOUND = 
	{
	
	"Jubigee_Dying.ogg",
	"Jubigee_Walk.ogg",
	"Jubigee_Recovery",
	"Jubigee_Damage",	
	"Jubigee_Attack.ogg",
	
	},
	
		
	READY_XMESH = 
	{	    
	    
	},
	
	READY_XSKIN_MESH = 
	{
	    "DummyAttackBox_50x50x50.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_JUBIGEE.x",
	MOTION_CHANGE_TEX_XET		= "NUI_LOW_JUBIGEE_FD.xet",
	MOTION_ANI_TEX_XET			= "NUI_LOW_JUBIGEE_FD.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{	
	MP_CHANGE_RATE		= 3,
	MP_CHARGE_RATE		= 1200,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--DRAW_SMALL_MP_BAR	= TRUE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Bip01_Head",
		

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DIE_FLY             = 0,
}

INIT_STATE = 
{	
	{ STATE_NAME = "LOW_JUBIGEE_FD_WAIT_START",				LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_WAIT_START_STATE_START", 
	                                                    LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_FRAME_MOVE", },
    { STATE_NAME = "LOW_JUBIGEE_FD_WAIT",						LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_FRAME_MOVE", },
    		
    { STATE_NAME = "LOW_JUBIGEE_FD_WALK",						LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_WALK_FRAME_MOVE", },
    
    { STATE_NAME = "LOW_JUBIGEE_FD_RECOVERY",					LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_RECOVERY_FRAME_MOVE", },
    { STATE_NAME = "LOW_JUBIGEE_FD_ATTACK",					LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_ATTACK_STATE_START",
                                                        LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_ATTACK_FRAME_MOVE", },
	
	{ STATE_NAME = "LOW_JUBIGEE_FD_RELAX",					    LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_RELAX_STATE_START", },
	
	--리액션 관련
	{ STATE_NAME = "LOW_JUBIGEE_FD_DAMAGE_FRONT",				LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_DAMAGE_STATE_START",
	                                                    LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_FRAME_MOVE", },
	{ STATE_NAME = "LOW_JUBIGEE_FD_DAMAGE_BACK",				LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_DAMAGE_STATE_START",
	                                                    LUA_FRAME_MOVE_FUNC = "LOW_JUBIGEE_FD_FRAME_MOVE", },
		
	{ STATE_NAME = "LOW_JUBIGEE_FD_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_DYING_LAND_STATE_START",},
	{ STATE_NAME = "LOW_JUBIGEE_FD_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_DYING_LAND_STATE_START",},
	{ STATE_NAME = "LOW_JUBIGEE_FD_DYING_SKY",					LUA_STATE_START_FUNC = "LOW_JUBIGEE_FD_DYING_LAND_STATE_START",},
	
	START_STATE					= "LOW_JUBIGEE_FD_WAIT_START",
	WAIT_STATE					= "LOW_JUBIGEE_FD_WAIT",	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "LOW_JUBIGEE_FD_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "LOW_JUBIGEE_FD_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "LOW_JUBIGEE_FD_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "LOW_JUBIGEE_FD_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "LOW_JUBIGEE_FD_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "LOW_JUBIGEE_FD_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "LOW_JUBIGEE_FD_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "LOW_JUBIGEE_FD_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "LOW_JUBIGEE_FD_DAMAGE_BACK",	
	BIG_DAMAGE_AIR				= "LOW_JUBIGEE_FD_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "LOW_JUBIGEE_FD_DAMAGE_FRONT",
	UP_DAMAGE					= "LOW_JUBIGEE_FD_DAMAGE_BACK",
	DAMAGE_REVENGE				= "LOW_JUBIGEE_FD_DAMAGE_BACK",
	
	DYING_LAND_FRONT			= "LOW_JUBIGEE_FD_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "LOW_JUBIGEE_FD_DYING_LAND_BACK",
	DYING_SKY					= "LOW_JUBIGEE_FD_DYING_SKY",

	REVENGE_ATTACK				= "",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 700,		-- cm
		TARGET_LOST_RANGE			= 1500,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --60,		-- %
		ATTACK_TARGET_RATE			= 100, -- 90,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 60,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_HEIGHT_LIMIT			= 50,
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  30,
		FAR_WALK_RATE		= 100,   -- 70, 
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0, -- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 10,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 0,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,
		DOWN_DOWN_RATE		= 0,
	},
	
	ESCAPE_CONDITION = 
	{
		RATE				= 100, -- 50,
		MY_HP				= 20,		-- %, 전체 HP에 대해 현재 HP의 비율
		ESCAPE_RANGE		= 400,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}

LOW_JUBIGEE_FD_WAIT_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,        	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	INVINCIBLE					= { 0, 100, }, 	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_JUBIGEE_FD_WAIT",						},
	},
}

LOW_JUBIGEE_FD_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"LOW_JUBIGEE_FD_RELAX",			        "CT_LOW_JUBIGEE_FD_RELAX",	},
		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"LOW_JUBIGEE_FD_ATTACK",		            "CF_LOW_JUBIGEE_FD_ATTACK",	},
		
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"LOW_JUBIGEE_FD_WALK",						},
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"LOW_JUBIGEE_FD_WALK",						},
	},
	
	
    CT_LOW_JUBIGEE_FD_RELAX =
	{
	    EVENT_INTERVAL_ID			= 0,
	    TIMER_ELAPSED0				= 3,
	    RATE						= 100,
	},		
}

LOW_JUBIGEE_FD_WALK = 
{
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 120,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"LOW_JUBIGEE_FD_ATTACK",		"CF_LOW_JUBIGEE_FD_ATTACK",	},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"LOW_JUBIGEE_FD_WAIT",						},	    
	},	
	
	    SOUND_PLAY0			= { 0.01, "Jubigee_Walk.ogg" },
	
}

LOW_JUBIGEE_FD_RELAX = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_JUBIGEE_FD_WAIT",						},
	},
}

LOW_JUBIGEE_FD_RECOVERY =
{
    ANIM_NAME					= "Recovery",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.6, "Jubigee_Recovery.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_JUBIGEE_FD_WAIT",					},
	},	
	
	
}

LOW_JUBIGEE_FD_ATTACK =
{
    --ANIM_SPEED					= 0.5,
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
--	SOUND_PLAY0			= { 0.06, "Jubigee_Attack.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_JUBIGEE_FD_RECOVERY",					},
	},
}

LOW_JUBIGEE_FD_DAMAGE_FRONT =
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.030, "Jubigee_Damage.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	SPEED_Y                     =0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.3,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_JUBIGEE_FD_WAIT",		},
	},
}

LOW_JUBIGEE_FD_DAMAGE_BACK =
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SOUND_PLAY0			= { 0.040, "Jubigee_Damage.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	SPEED_Y                     =0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.3,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_JUBIGEE_FD_WAIT",		},
	},
}

LOW_JUBIGEE_FD_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 1.526, "Jubigee_Dying.ogg" },
		
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
}
	
LOW_JUBIGEE_FD_DYING_LAND_BACK = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.01, "Jubigee_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
}

LOW_JUBIGEE_FD_DYING_SKY = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.01, "Jubigee_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}






--------------------------------------------------------------------
--------------------------------------------------------------------
function CF_LOW_JUBIGEE_FD_ATTACK( pKTDXApp, pX2Game, pNPCUnit )
   
    --bInUser = pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 200 )

    local nHited = pNPCUnit:GetInt_LUA(0)
   
    --if nHited >= 4 and bInUser == true then
    if nHited >= 4 then   --타격 숫자
        return true
    end
    
    return false
end

function LOW_JUBIGEE_FD_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    
    pNPCUnit:SetTimerRestart( 0 )
    
    local pMinorParticle = pX2Game:GetMinorParticle()
		
	if pMinorParticle ~= nil then
	    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
	    if pParticleTemp == nil then	
	        local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
	        local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Jubigee_SeedLight01", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	        pNPCUnit:SetMinorParticle_LUA(0, pParticle:GetHandle())
        end	        
    end	    
end

function LOW_JUBIGEE_FD_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )	
	
	local GetMinorParticle = pX2Game:GetMinorParticle()
    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
    if GetMinorParticle ~= nil and pParticleTemp ~= nil then
        GetMinorParticle:DestroyInstance( pParticleTemp )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
    end
end

function LOW_JUBIGEE_FD_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    for nSmoke=1, 21 do
        local timeSmoke = (nSmoke * 2) / 100
                
        if pNPCUnit:AnimTimer_LUA( timeSmoke ) == true then
            local pMinorParticle = pX2Game:GetMinorParticle()
	        local pSeq = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	        if pSeq ~= nil then
	            pSeq:SetScaleFactor(D3DXVECTOR3(0.6, 0.6, 0.6))
	        end
        end
    end
    
    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
    if pParticleTemp ~= nil then
        local GetMinorParticle = pX2Game:GetMinorParticle()
        if GetMinorParticle ~= nil and GetMinorParticle:IsLiveInstance( pParticleTemp ) == true then
            local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
            pParticleTemp:SetPosition( vBonePos ) 
        end            
    end
	    
end

function LOW_JUBIGEE_FD_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
        
    local GetMinorParticle = pX2Game:GetMinorParticle()
    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
    if GetMinorParticle ~= nil and pParticleTemp ~= nil then
        GetMinorParticle:DestroyInstance( pParticleTemp )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
    end
    
    pNPCUnit:SetBoneScale_LUA("Dummy01", true, 1, 1, 1)
end

function LOW_JUBIGEE_FD_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    

    pNPCUnit:SetInt_LUA( 0, 0 )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then  --터지는 이펙트 조정한것
            
        local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
        local landPos = pNPCUnit:GetLandPosition_LUA()
        
        local pDamageEffect = pX2Game:GetDamageEffect()
        if pDamageEffect ~= nil then
		    pDamageEffect:CreateInstance_LUA( pNPCUnit, "JUBIGEE_ATTACK", vBonePos, landPos.y )
        end		    
    end    
end

function LOW_JUBIGEE_FD_RELAX_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


    local nHited = pNPCUnit:GetInt_LUA(0)
        
    pNPCUnit:SetTimerRestart( 0 )
    
    if nHited >= 1 then
        pNPCUnit:SetInt_LUA( 0, nHited - 1)        
        local nScale = (nHited-1) * 0.5 + 1    
    
        pNPCUnit:SetBoneScale_LUA("Dummy01", true, nScale, nScale, nScale)
    end        
end

function LOW_JUBIGEE_FD_RECOVERY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    pNPCUnit:SetInt_LUA( 0, 0 )    
end

function LOW_JUBIGEE_FD_DAMAGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetTimerRestart( 0 )
    
    local nHited = pNPCUnit:GetInt_LUA(0)
    
    pNPCUnit:SetInt_LUA(0, nHited + 1)
    
    local nScale = (nHited+1) * 0.5 + 1    
        
    
    pNPCUnit:SetBoneScale_LUA("Dummy01", true, nScale, nScale, nScale)
    
    if nHited >= 3 then
        local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
		local pMinorParticle = pX2Game:GetMinorParticle()
        if pParticleTemp ~= nil then
            if pMinorParticle:IsLiveInstance( pParticleTemp ) == true then
                pMinorParticle:DestroyInstance( pParticleTemp )
		        pNPCUnit:ClearMinorParticle_LUA( 0 )
            end
        end
        
        local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
	    local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Light_Jubigee_SeedLight02", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	    pNPCUnit:SetMinorParticle_LUA(0, pParticle:GetHandle())        
    end
end

function LOW_JUBIGEE_FD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
    if pParticleTemp ~= nil then
        local GetMinorParticle = pX2Game:GetMinorParticle()
        if GetMinorParticle ~= nil and GetMinorParticle:IsLiveInstance( pParticleTemp ) == true then
            local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
            pParticleTemp:SetPosition( vBonePos ) 
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
