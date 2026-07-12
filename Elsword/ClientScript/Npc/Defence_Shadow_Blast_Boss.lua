-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 5.5,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Arme_smoke.dds",
		"stone.dds",
		"Arme_Damage_Ring.dds",
		"Arme_Critical.dds",
	},
	
	READY_SOUND = 
	{
	--	"Mana_Eater_Dying.ogg",
		"Defence_Shadow_Blast_Dying01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_DEFENCE_SHADOW_BLAST_Boss.x",
}

INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 200,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 4000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	OUT_LINE_WIDTH_SCALE = 0.3,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	
	HEAD_BONE_NAME			= "Bip01",
	
	
 	-- RAGE_COUNT_MAX		= 0,
	-- RAGE_TIME_MAX		= 10,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
}




INIT_STATE = 
{
	{ STATE_NAME = "SHADOW_BLAST_BOSS_START",				LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_FRAME_MOVE",
														LUA_STATE_START_FUNC = "SHADOW_BLAST_BOSS_STATE_START"	},
	{ STATE_NAME = "SHADOW_BLAST_BOSS_WAIT",					LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_WAIT_FRAME_MOVE",	},
	
	
	--리액션 관련
	{ STATE_NAME = "SHADOW_BLAST_BOSS_DAMAGE",				LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_FRAME_MOVE",	},	
	{ STATE_NAME = "SHADOW_BLAST_BOSS_DAMAGE_BACK",				LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_FRAME_MOVE",	},	
	{ STATE_NAME = "SHADOW_BLAST_BOSS_DYING",				LUA_STATE_END_FUNC = "SHADOW_BLAST_BOSS_DYING_STATE_END",	},
	
	{ STATE_NAME = "SHADOW_BLAST_BOSS_WALK",					LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_FRAME_MOVE",},
	
	
	{ STATE_NAME = "SHADOW_BLAST_BOSS_JUMP_DOWN",			LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_FRAME_MOVE",	},
	{ STATE_NAME = "SHADOW_BLAST_BOSS_BOMB",					LUA_FRAME_MOVE_FUNC = "SHADOW_BLAST_BOSS_FRAME_MOVE",	},
	
	
	START_STATE					= "SHADOW_BLAST_BOSS_START",
	WAIT_STATE					= "SHADOW_BLAST_BOSS_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "SHADOW_BLAST_BOSS_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "SHADOW_BLAST_BOSS_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "SHADOW_BLAST_BOSS_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "SHADOW_BLAST_BOSS_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "SHADOW_BLAST_BOSS_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "SHADOW_BLAST_BOSS_DAMAGE",
	FLY_DAMAGE_FRONT			= "SHADOW_BLAST_BOSS_DAMAGE",
	FLY_DAMAGE_BACK				= "SHADOW_BLAST_BOSS_DAMAGE",
	SMALL_DAMAGE_AIR			= "SHADOW_BLAST_BOSS_DAMAGE",	
	BIG_DAMAGE_AIR				= "SHADOW_BLAST_BOSS_DAMAGE",
	DOWN_DAMAGE_AIR				= "SHADOW_BLAST_BOSS_DAMAGE",
	UP_DAMAGE					= "SHADOW_BLAST_BOSS_DAMAGE",
	DAMAGE_REVENGE				= "SHADOW_BLAST_BOSS_DAMAGE",
	
	DAMAGE_EXTRA_STATES         = {"SHADOW_BLAST_BOSS_JUMP_DOWN",},		
	
	DYING_LAND_FRONT			= "SHADOW_BLAST_BOSS_DYING",
	DYING_LAND_BACK				= "SHADOW_BLAST_BOSS_DYING",
	DYING_SKY					= "SHADOW_BLAST_BOSS_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		
		TARGET_INTERVAL				= 0.1,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1200,		-- cm
		TARGET_LOST_RANGE			= 1600,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 100, -- 100,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "SHADOW_BLAST_BOSS_MANUAL_TARGET",
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 80,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 510,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 9999,
		UP_JUMP_RATE		= 0, -- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 6,
		--ONLY_THIS_LINE_GROUP	= TRUE,
	},
}

SHADOW_BLAST_BOSS_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= 0,
	
	PARTICLE_SEQ = 
	{

	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],		"SHADOW_BLAST_BOSS_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_BLAST_BOSS_WAIT",				},
	},
	
	
}


SHADOW_BLAST_BOSS_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	-- CAN_PUSH_UNIT				= FALSE,
	-- CAN_PASS_UNIT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	SPEED_Y						= 0,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"SHADOW_BLAST_BOSS_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"SHADOW_BLAST_BOSS_WALK",						},
	},
}


SHADOW_BLAST_BOSS_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_Y				= 0,
	PASSIVE_SPEED_X				= 0,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_BLAST_BOSS_WAIT",				},
	},
}

SHADOW_BLAST_BOSS_DAMAGE_BACK =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_Y				= 0,
	PASSIVE_SPEED_X				= 0,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
		--{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHADOW_BLAST_BOSS_WAIT",				},
	},
}


SHADOW_BLAST_BOSS_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 200,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
		--{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"SHADOW_BLAST_BOSS_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"SHADOW_BLAST_BOSS_WAIT",						},
	},
	
	TALK_BOX = 
	{
		{ RATE = 1, MESSAGE = STR_ID_11388 },
	},
}


SHADOW_BLAST_BOSS_JUMP_DOWN =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"SHADOW_BLAST_BOSS_WALK",				},
	},
}


SHADOW_BLAST_BOSS_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	SPEED_Y						= 0,
	SPEED_X						= 0,
	
	SOUND_PLAY0			= { 0.278, "Defence_Shadow_Blast_Dying01.ogg" },
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


SHADOW_BLAST_BOSS_BOMB = 
{
	ANIM_NAME					= "Boom_Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	SPEED_Y						= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = FALSE,
	
	RIGHT                       = FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


function SHADOW_BLAST_BOSS_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	InitBombBoss(pNPCUnit)

end
	

function SHADOW_BLAST_BOSS_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )    
--	투명&바로폭발 버그 체크용
	if pNPCUnit:GetInt_LUA(2) ~= 5 then
		InitBombBoss(pNPCUnit)
	end  
--  투명&바로폭발 버그 체크용


    local bBomb = Bomb_ReadyBoss(pKTDXApp, pX2Game, pNPCUnit)
    
    if bBomb == true then
        Bomb_DieBoss(pX2Game, pNPCUnit)
        return
    end        
end

function InitBombBoss(pNPCUnit)	

    pNPCUnit:SetShow(true)
    
    pNPCUnit:SetFlag_LUA(0, false)  
    pNPCUnit:SetInt_LUA(0, 4)
    
    local vec = pNPCUnit:GetPos()
    vec.x = 0.0
    vec.y = 0.0
    vec.z = 0.0
    pNPCUnit:SetVector_LUA(0, vec )
    
    --	초기화 종료 설정
    pNPCUnit:SetInt_LUA(2, 5)
end


function Bomb_DieBoss(pX2Game, pNPCUnit)	

	pNPCUnit:SetShow(true)

	if pNPCUnit:GetInt_LUA(0) == 5 then
		return
	end
	        
	pNPCUnit:SetNowHP_LUA(0)

	local pMajorParticle = pX2Game:GetMajorParticle()
	local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil then
		pMajorParticle:DestroyInstance( pParticle )
		pNPCUnit:ClearMajorParticle_LUA( 0 )
	end

	local pDamageEffect = pX2Game:GetDamageEffect()
	local landPos = pNPCUnit:GetLandPosition_LUA()
	local vPos = pNPCUnit:GetPos()    

	if pDamageEffect ~= nil then
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_BLAST_BOSS_EXPLOSION", vPos, landPos.y)
			
		vPos.x = vPos.x - 200
		vPos.y = vPos.y + 100
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_BLAST_BOSS_EXPLOSION", vPos, landPos.y)
			
		vPos.x = vPos.x + 450
		vPos.y = vPos.y - 80
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_BLAST_BOSS_EXPLOSION", vPos, landPos.y)
			
		vPos.x = vPos.x - 100
		vPos.y = vPos.y + 400
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_BLAST_BOSS_EXPLOSION", vPos, landPos.y)
			
		vPos.x = vPos.x - 300
		vPos.y = vPos.y - 50
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHADOW_BLAST_BOSS_EXPLOSION", vPos, landPos.y)
		
		pNPCUnit:SetShow(false)
		pNPCUnit:SetInt_LUA(0, 5)
	end
    			
end


function Bomb_ReadyBoss(pKTDXApp, pX2Game, pNPCUnit)

    local pMajorParticle = pX2Game:GetMajorParticle()    
    local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 ) 
    local nNewCount = 0
    
	if nil ~= pParticle and pMajorParticle ~= nil then 
		if pMajorParticle:IsLiveInstance( pParticle ) == true then 
			local vPos = pNPCUnit:GetPos()
			vPos.y = vPos.y + 300.0
			pParticle:SetPosition( vPos )		
		else 
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end
	end
	
	if pNPCUnit:GetInt_LUA(0) == 5 then
		return false
	end
	
    local IsBomb = pNPCUnit:GetFlag_LUA(0) 
    local nCount = pNPCUnit:GetInt_LUA(0)
    local vec = pNPCUnit:GetVector_LUA(0)
    local nPreTime = vec.x
    local nCurrTime = pX2Game:GetGameTime()
    
    if nCount <= 0 then
        -- 자폭상태        
        return true
    end
        
    
    -- 주변에 아무 플레이어 캐릭터나 2200 안에 있으면 true
    local bLive = false
    if --	pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 100 ) == true or	--	 삭제
		pX2Game:IsNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"], 400 ) or
		IsBomb == true then
		
		bLive = true
    else
        bLive = false
    end
        
    if bLive == true then
        -- 자폭진행상태
        
        if IsBomb == true then  
            -- 이미 자폭진행상태
            local nStep = math.floor(nCurrTime - nPreTime)
            
            pNPCUnit:SetUseWorldColor( false )
	        local color = pNPCUnit:GetColor()
	        color.g = color.g - (0.3 * pKTDXApp:GetElapsedTime())
	        color.b = color.g - (0.3 * pKTDXApp:GetElapsedTime())
	        pNPCUnit:SetColor( color )	
            
            if nStep >= 1.0 then
                -- 자폭 카운트 증가
                nNewCount = nCount - nStep
                if nNewCount <= 0 then
                    nNewCount = 0
                end
                
                vec.x = nCurrTime                    
                pNPCUnit:SetInt_LUA(0, nNewCount)
                pNPCUnit:SetVector_LUA(0, vec)
            else
                -- 현재 상태 유지
                return false            
            end                        
        else
            -- 자폭상태 돌입
            nNewCount = 3
            
            vec.x = nCurrTime
            pNPCUnit:SetFlag_LUA(0, true)   
            pNPCUnit:SetInt_LUA(0, nNewCount)
            pNPCUnit:SetVector_LUA(0, vec )
            
            pNPCUnit:StateChange_LUA( "SHADOW_BLAST_BOSS_BOMB" )
        end 
    else
        return false               
    end

    local vPos = pNPCUnit:GetPos()
	vPos.y = vPos.y + 300.0
	       		    
		    		    
    if nNewCount == 0 then
        -- 자폭상태
        local pMajorParticle = pX2Game:GetMajorParticle()
	    local pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pMajorParticle:DestroyInstance( pParticle )
		    pNPCUnit:ClearMajorParticle_LUA( 0 )
	    end
        return true
    end
    
    return false
end

function SHADOW_BLAST_BOSS_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	local pNearestNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"], 999999 )
	
	if nil ~= pNearestNpc then
		pNPCUnit:SetTargetUnit( pNearestNpc )
	end

end


function SHADOW_BLAST_BOSS_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 10 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		end
	end

	local iCrystallSmallKeyCode = pNPCUnit:GetKeyCode() + 5
	local pUnitCrystallSmall = pX2Game:GetKeyCodeNPC( iCrystallSmallKeyCode )
	if pUnitCrystallSmall ~= nil then
		local TargetPos = pUnitCrystallSmall:GetPos()
		local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), TargetPos)
		if distance <= 10 then
			local bIsRight = pNPCUnit:GetIsRight()
		        
			if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
				if( bIsRight == true ) then
					SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end

end



function SHADOW_BLAST_BOSS_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 10 ) == true then
		local TargetPos = pX2Game:GetNearestUserUnitPos_LUA( pNPCUnit:GetPos(), 0, 999999 )
	        
		local bIsRight = pNPCUnit:GetIsRight()
	        
		if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
			if( bIsRight == true ) then
				SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		else
			if( bIsRight == false ) then
				SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
				return
			end
		end
	end

	local iCrystallSmallKeyCode = pNPCUnit:GetKeyCode() + 5
	local pUnitCrystallSmall = pX2Game:GetKeyCodeNPC( iCrystallSmallKeyCode )
	if pUnitCrystallSmall ~= nil then
		local TargetPos = pUnitCrystallSmall:GetPos()
		local distance = pX2Game:GetDist_LUA(pNPCUnit:GetPos(), TargetPos)
		if distance <= 10 then
			local bIsRight = pNPCUnit:GetIsRight()
		        
			if pNPCUnit:IsRightTarget_LUA(pNPCUnit, TargetPos) == true then
				if( bIsRight == true ) then
					SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			else
				if( bIsRight == false ) then
					SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
					return
				end
			end
		end
	end

end


function SHADOW_BLAST_BOSS_DO_ATTACK(pX2Game, pNPCUnit)
	local iRate = pNPCUnit:GetRandVal() % 100
	
	if iRate < 10 then
		pNPCUnit:StateChange_LUA( "SHADOW_BLAST_BOSS_WALK" )
	elseif iRate < 20 then
		pNPCUnit:StateChange_LUA( "SHADOW_BLAST_BOSS_WALK" )
	else
		pNPCUnit:StateChange_LUA( "SHADOW_BLAST_BOSS_WALK" )
	end
end



function SHADOW_BLAST_BOSS_DYING_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	
	local pDarknessBoss = nil
	local iDungeonLevel = pX2Game:GetGameLevel()
	
	if iDungeonLevel == 0 then
		pDarknessBoss = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_NORMAL"] )
	elseif iDungeonLevel == 1 then
		pDarknessBoss = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_HARD"] )
	else
		pDarknessBoss = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_EXPERT"] )
	end
	
	if pDarknessBoss ~= nil then
		local iBlastBossKilled = pDarknessBoss:GetInt_LUA(0)
		iBlastBossKilled = iBlastBossKilled + 1
		pDarknessBoss:SetInt_LUA(0, iBlastBossKilled)
	end
end









