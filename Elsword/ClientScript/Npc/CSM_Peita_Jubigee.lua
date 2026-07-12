-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 70.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.2,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{      
	    "JUBIGEE_Seed01.dds",
	    "Particle_Blur.dds",
	    "Arme_Critical.dds",
	    "JUBIGEE_Seed01.dds",	    
	},
	
	READY_SOUND = 
	{
	
	"JUBIGEE_Dying.ogg",
	"JUBIGEE_Walk.ogg",
	"JUBIGEE_Recovery",
	"JUBIGEE_Damage",	
	"JUBIGEE_Attack.ogg",
	
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
	
	SUMMON_TIME			= 180,
}

INIT_STATE = 
{	
	{ STATE_NAME = "CSM_JUBIGEE_WAIT_START",				LUA_STATE_START_FUNC = "CSM_JUBIGEE_WAIT_START_STATE_START", 
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_FRAME_MOVE", },
    { STATE_NAME = "CSM_JUBIGEE_WAIT",						LUA_STATE_START_FUNC = "CSM_JUBIGEE_WAIT_STATE_START",
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_FRAME_MOVE", },
    		
    { STATE_NAME = "CSM_JUBIGEE_WALK",						LUA_STATE_START_FUNC = "CSM_JUBIGEE_WALK_STATE_START", 
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_WALK_FRAME_MOVE", },
    
	-- 기존 쥬비기에 ATTACK_READY가 추가되었습니다. (lenoas, 2012.06.27)
	-- WAIT나 WALK에서 주변에 적이 가까이 있는지 서치하고, ATTACK_READY로 넘어가면 씨앗이 5단계까지 커졌는지 확인하고 
	-- 5단계면 ATTACK으로 넘겨 폭발합니다.
	-- WAIT/WALK/ATTACK_READY 스테이트 상태에서는 1초 당 1번 씩 머리의 씨앗이 커지도록 스크립팅 하였습니다.
	
    { STATE_NAME = "CSM_JUBIGEE_RECOVERY",					LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_RECOVERY_FRAME_MOVE", },
    { STATE_NAME = "CSM_JUBIGEE_ATTACK_READY",				LUA_STATE_START_FUNC = "CSM_JUBIGEE_ATTACK_READY_STATE_START", 
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_FRAME_MOVE",		 },
    { STATE_NAME = "CSM_JUBIGEE_ATTACK",					LUA_STATE_START_FUNC = "CSM_JUBIGEE_ATTACK_STATE_START",
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_ATTACK_FRAME_MOVE", },

	-- 기존 쥬비기는 씨앗이 가만히 있으면 작아지지만 작아지지 않도록 하였습니다.
	-- { STATE_NAME = "CSM_JUBIGEE_RELAX",					    LUA_STATE_START_FUNC = "CSM_JUBIGEE_RELAX_STATE_START", },
	
	{ STATE_NAME = "CSM_JUBIGEE_END",						},
	
	--리액션 관련
	{ STATE_NAME = "CSM_JUBIGEE_DAMAGE_FRONT",				LUA_STATE_START_FUNC = "CSM_JUBIGEE_DAMAGE_STATE_START",
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_FRAME_MOVE", },
	{ STATE_NAME = "CSM_JUBIGEE_DAMAGE_BACK",				LUA_STATE_START_FUNC = "CSM_JUBIGEE_DAMAGE_STATE_START",
															LUA_FRAME_MOVE_FUNC = "CSM_JUBIGEE_FRAME_MOVE", },
		
	{ STATE_NAME = "CSM_JUBIGEE_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "CSM_JUBIGEE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "CSM_JUBIGEE_DYING_LAND_BACK",			LUA_STATE_START_FUNC = "CSM_JUBIGEE_DYING_LAND_STATE_START",},
	{ STATE_NAME = "CSM_JUBIGEE_DYING_SKY",					LUA_STATE_START_FUNC = "CSM_JUBIGEE_DYING_LAND_STATE_START",},
	
	START_STATE					= "CSM_JUBIGEE_WAIT_START",
	WAIT_STATE					= "CSM_JUBIGEE_WAIT",	
	SUMMON_END_STATE			= "CSM_JUBIGEE_END",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CSM_JUBIGEE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CSM_JUBIGEE_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CSM_JUBIGEE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CSM_JUBIGEE_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_JUBIGEE_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_JUBIGEE_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "CSM_JUBIGEE_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "CSM_JUBIGEE_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "CSM_JUBIGEE_DAMAGE_BACK",	
	BIG_DAMAGE_AIR				= "CSM_JUBIGEE_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "CSM_JUBIGEE_DAMAGE_FRONT",
	UP_DAMAGE					= "CSM_JUBIGEE_DAMAGE_BACK",
	DAMAGE_REVENGE				= "CSM_JUBIGEE_DAMAGE_BACK",
	
	DYING_LAND_FRONT			= "CSM_JUBIGEE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CSM_JUBIGEE_DYING_LAND_BACK",
	DYING_SKY					= "CSM_JUBIGEE_DYING_SKY",

	REVENGE_ATTACK				= "",
}



INIT_AI = 
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1400,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1400,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},

	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 0,   --  30,
		FAR_WALK_RATE		= 0,   -- 70, 
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 10,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 10,   --  10,
		FAR_WALK_RATE		= 10,   -- 10,
		
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

CSM_JUBIGEE_WAIT_START = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_JUBIGEE_WAIT",						},
	},

}

CSM_JUBIGEE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CSM_JUBIGEE_RELAX",			        "CT_CSM_JUBIGEE_RELAX",	},
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CSM_JUBIGEE_ATTACK_READY",		            "CT_CSM_JUBIGEE_ATTACK",	},
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_JUBIGEE_WALK",						},
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_JUBIGEE_WALK",						},
	},

    CT_CSM_JUBIGEE_ATTACK =
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},		
	
    -- CT_CSM_JUBIGEE_RELAX =
	-- {
	    -- EVENT_INTERVAL_ID			= 0,
	    -- TIMER_ELAPSED0				= 3,
	    -- RATE						= 100,
	-- },		
}

CSM_JUBIGEE_ATTACK_READY = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CSM_JUBIGEE_ATTACK",		            "CF_CSM_JUBIGEE_ATTACK",	},
	    { STATE_CHANGE_TYPE["SCT_AI_DASH"],					"CSM_JUBIGEE_WALK",						},
	    { STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CSM_JUBIGEE_WALK",						},
	},
}
CSM_JUBIGEE_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}

CSM_JUBIGEE_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    -- { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CSM_JUBIGEE_ATTACK",		"CF_CSM_JUBIGEE_ATTACK",	},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_JUBIGEE_WAIT",						},	    
	},	
	
	    SOUND_PLAY0			= { 0.01, "JUBIGEE_Walk.ogg" },
	
}

-- CSM_JUBIGEE_RELAX = 
-- {
	-- ANIM_NAME					= "Wait",
	-- PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION					= TRUE,
	
	-- CAN_PUSH_UNIT				= TRUE,
	-- CAN_PASS_UNIT				= FALSE,	
	
	-- SPEED_X						= 0,
	-- SPEED_Y						= 0,
	
	-- IMMADIATE_PACKET_SEND		= TRUE,
	
	-- EVENT_PROCESS = 
	-- {
	    -- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_JUBIGEE_WAIT",						},
	-- },
-- }

CSM_JUBIGEE_RECOVERY =
{
    ANIM_NAME					= "Recovery",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.6, "JUBIGEE_Recovery.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_JUBIGEE_WAIT",					},
	},	
	
	
}

CSM_JUBIGEE_ATTACK =
{
    --ANIM_SPEED					= 0.5,
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
--	SOUND_PLAY0			= { 0.06, "JUBIGEE_Attack.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_JUBIGEE_RECOVERY",					},
	},
}

CSM_JUBIGEE_DAMAGE_FRONT =
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.030, "JUBIGEE_Damage.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	SPEED_Y                     =0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 0.3,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CSM_JUBIGEE_ATTACK",		"CF_CSM_JUBIGEE_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_JUBIGEE_WAIT",		},
	},
}

CSM_JUBIGEE_DAMAGE_BACK =
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SOUND_PLAY0			= { 0.040, "JUBIGEE_Damage.ogg" },
	
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
	    { STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CSM_JUBIGEE_ATTACK",		"CF_CSM_JUBIGEE_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CSM_JUBIGEE_WAIT",		},
	},
}

CSM_JUBIGEE_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 1.526, "JUBIGEE_Dying.ogg" },
		
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
		
}
	
CSM_JUBIGEE_DYING_LAND_BACK = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.01, "JUBIGEE_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
}

CSM_JUBIGEE_DYING_SKY = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.01, "JUBIGEE_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}






--------------------------------------------------------------------
--------------------------------------------------------------------

function CSM_JUBIGEE_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA(1, 0)			--매초 시간 체크를 위한 해당 변수 초기화
end

function CSM_JUBIGEE_WALK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA(1, 0)			--매초 시간 체크를 위한 해당 변수 초기화
end

function CF_CSM_JUBIGEE_ATTACK( pKTDXApp, pX2Game, pNPCUnit )
   
    --bInUser = pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 200 )

    local nHited = pNPCUnit:GetInt_LUA(0)
   
    --if nHited >= 4 and bInUser == true then
    if nHited >= 4 then   --타격 숫자
        return true
    end
    
    return false
end

function CSM_JUBIGEE_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    
    pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetInt_LUA(1, 0)			--매초 시간 체크를 위한 해당 변수 초기화
    
    local pMinorParticle = pX2Game:GetMinorParticle()
		
	if pMinorParticle ~= nil then
	    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
	    if pParticleTemp == nil then	
	        local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
	        local pParticle = pMinorParticle:CreateSequence_LUA( "Light_Jubigee_SeedLight01", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	        pNPCUnit:SetMinorParticle_LUA(0, pParticle:GetHandle())
        end	        
    end	    
end

function CSM_JUBIGEE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


	local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
	local landPos = pNPCUnit:GetLandPosition_LUA()
        
	local pDamageEffect = pX2Game:GetDamageEffect()
	if pDamageEffect ~= nil then
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CSM_JUBIGEE_ATTACK", vBonePos, landPos.y )
	end		 
	
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )	
	
	GetMinorParticle = pX2Game:GetMinorParticle()
    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
    if GetMinorParticle ~= nil and pParticleTemp ~= nil then
        GetMinorParticle:DestroyInstance( pParticleTemp )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
    end
end

function CSM_JUBIGEE_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

------ 쥬비기 씨앗이 1초당 1번씩 커지도록 하기 위해서 제작된 구문입니다. (lenoas, 2012.06.27)
	local nHited = pNPCUnit:GetInt_LUA(0)		
	
	if nHited <= 4 then								-- 4회 다 커졌으면 그냥 나감
	
		local passedTime = pNPCUnit:GetInt_LUA(1)	-- 1초 마다 계산하기 위해서
		local currTime = pNPCUnit:GetStateTime()	-- 현재 스테이트 진행 시간
	
		if currTime - passedTime >= 1 then			-- 1초 당 갱신해서 씨앗 크기 키우기
		
			pNPCUnit:SetInt_LUA(0, nHited + 1)		--타격수 증가
			pNPCUnit:SetInt_LUA(1, passedTime + 1)	--초당 계산 연산용
			
			local nScale = nHited * 0.5 + 1	
			pNPCUnit:SetBoneScale_LUA("Dummy01", true, nScale, nScale, nScale)
			
		end
		
	end
------- 여기까지 입니다.
	
    for nSmoke=1, 21 do
        local timeSmoke = (nSmoke * 2) / 100
                
        if pNPCUnit:AnimTimer_LUA( timeSmoke ) == true then
            local pMinorParticle = pX2Game:GetMinorParticle()
	        local pSeq = pMinorParticle:CreateSequence_LUA( "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	        if pSeq ~= nil then
	            pSeq:SetScaleFactor(D3DXVECTOR3(0.6, 0.6, 0.6))
	        end
        end
    end
    
    local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
    if pParticleTemp ~= nil then
        local GetMinorParticle = pX2Game:GetMinorParticle()
        if GetMinorParticle ~= nil and GetMinorParticle:IsLiveInstance( pParticleTemp ) == true then
            vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
            pParticleTemp:SetPosition( vBonePos ) 
        end            
    end
	    
end

function CSM_JUBIGEE_ATTACK_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA(1, 0)			--매초 시간 체크를 위한 해당 변수 초기화
end

function CSM_JUBIGEE_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
        
	local GetMinorParticle = pX2Game:GetMinorParticle()
	local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
	if GetMinorParticle ~= nil and pParticleTemp ~= nil then
		GetMinorParticle:DestroyInstance( pParticleTemp )
		pNPCUnit:ClearMinorParticle_LUA( 0 )
	end
	
	pNPCUnit:SetBoneScale_LUA("Dummy01", true, 1, 1, 1)
end

function CSM_JUBIGEE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
        
	pNPCUnit:SetInt_LUA( 0, 0 )

	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then  --터지는 이펙트 조정한것
			
		local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
		local landPos = pNPCUnit:GetLandPosition_LUA()
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "CSM_JUBIGEE_ATTACK", vBonePos, landPos.y )
		end		    
	end 
	
end

-- function CSM_JUBIGEE_RELAX_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


    -- nHited = pNPCUnit:GetInt_LUA(0)
        
    -- pNPCUnit:SetTimerRestart( 0 )
    
    -- -- if nHited >= 1 then
        -- -- pNPCUnit:SetInt_LUA( 0, nHited - 1)        
        -- -- nScale =(nHited-1) * 0.5 * 2.5 + 1
    
        -- -- pNPCUnit:SetBoneScale_LUA("Dummy01", true, nScale, nScale, nScale)
    -- -- end        
-- end

function CSM_JUBIGEE_RECOVERY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    pNPCUnit:SetInt_LUA( 0, 0 )    
end

function CSM_JUBIGEE_DAMAGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetInt_LUA(1, 0)					--매초 시간 체크를 위한 해당 변수 초기화
	
    pNPCUnit:SetTimerRestart( 0 )
    
    local nHited = pNPCUnit:GetInt_LUA(0)
    
    pNPCUnit:SetInt_LUA(0, nHited + 1)
    
    local nScale = (nHited+1) * 0.5 + 1
        
    
    pNPCUnit:SetBoneScale_LUA("Dummy01", true, nScale, nScale, nScale)
    
    if nHited >= 3 then
        local pParticleTemp = pNPCUnit:GetMinorParticle_LUA(0)
        if pParticleTemp ~= nil then
            local GetMinorParticle = pX2Game:GetMinorParticle()
            if GetMinorParticle ~= nil and GetMinorParticle:IsLiveInstance( pParticleTemp ) == true then
                GetMinorParticle:DestroyInstance( pParticleTemp )
		        pNPCUnit:ClearMinorParticle_LUA( 0 )
            end
        end
        
        local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy02")
	    local pParticle = pMinorParticle:CreateSequence_LUA( "Light_JUBIGEE_SeedLight02", vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	    pNPCUnit:SetMinorParticle_LUA(0, pParticle:GetHandle())        
    end
end

function CSM_JUBIGEE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

------ 쥬비기 씨앗이 1초당 1번씩 커지도록 하기 위해서 제작된 구문입니다. (lenoas, 2012.06.27)
	local nHited = pNPCUnit:GetInt_LUA(0)		
	
	if nHited <= 4 then								-- 4회 다 커졌으면 그냥 나감
	
		local passedTime = pNPCUnit:GetInt_LUA(1)	-- 1초 마다 계산하기 위해서
		local currTime = pNPCUnit:GetStateTime()	-- 현재 스테이트 진행 시간
	
		if currTime - passedTime >= 1 then			-- 1초 당 갱신해서 씨앗 크기 키우기
		
			pNPCUnit:SetInt_LUA(0, nHited + 1)		--타격수 증가
			pNPCUnit:SetInt_LUA(1, passedTime + 1)	--초당 계산 연산용
			
			local nScale = nHited * 0.5 + 1	
			pNPCUnit:SetBoneScale_LUA("Dummy01", true, nScale, nScale, nScale)
			
		end
		
	end
------- 여기까지 입니다.
	
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
