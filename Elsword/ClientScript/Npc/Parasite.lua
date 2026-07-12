-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
	ALPHA_BLEND		= TRUE,
	CULL_MODE		= FALSE,
	Z_ENABLE		= FALSE,
	FORCE_BILLBOARD	= TRUE,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "Spark01.dds",
	    "Spark02.dds",
	    "Spark03.dds",
	},
	
	READY_SOUND = 
	{
	  "Lightning2.ogg",
	
	},
	READY_XSKIN_MESH = 
	{
		"DummyAttackBox_50x50x50.X",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Parasite.x",
	--MOTION_ANI_TEX_XET		= "Motion_Wisp.xet",
}

INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Parasite_Body",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,
	
	DIE_FLY             = 0,
	
	-- 몬스터가 텍스쳐 한장짜리인가?
	FLAT_MONSTER		= TRUE,
	SHOCK_EFFECT_COLOR = 0.3,
}




INIT_STATE = 
{
	{ STATE_NAME = "PARASITE_START",				},
	{ STATE_NAME = "PARASITE_WAIT",					},
	{ STATE_NAME = "PARASITE_ATTACK",				LUA_STATE_START_FUNC = "PARASITE_ATTACK_STATE_START",
	                                                LUA_FRAME_MOVE_FUNC = "PARASITE_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 3},
	
	--리액션 관련
	{ STATE_NAME = "PARASITE_DAMAGE",				},	
	{ STATE_NAME = "PARASITE_DYING",				LUA_STATE_START_FUNC = "PARASITE_DYING_STATE_START", },
	{ STATE_NAME = "PARASITE_WALK",					},
	{ STATE_NAME = "PARASITE_JUMP_UP",				},
	{ STATE_NAME = "PARASITE_JUMP_DOWN",			},
	{ STATE_NAME = "PARASITE_JUMP_UP_DIR",			},
	{ STATE_NAME = "PARASITE_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "PARASITE_JUMP_LANDING",			},
	
	{ STATE_NAME = "PARASITE_WAKE_UP",				LUA_STATE_START_FUNC = "PARASITE_WAKE_UP_STATE_START", },
	
	START_STATE					= "PARASITE_START",
	WAIT_STATE					= "PARASITE_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "PARASITE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "PARASITE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "PARASITE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "PARASITE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "PARASITE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "PARASITE_DAMAGE",
	FLY_DAMAGE_FRONT			= "PARASITE_DAMAGE",
	FLY_DAMAGE_BACK				= "PARASITE_DAMAGE",
	SMALL_DAMAGE_AIR			= "PARASITE_DAMAGE",	
	BIG_DAMAGE_AIR				= "PARASITE_DAMAGE",
	DOWN_DAMAGE_AIR				= "PARASITE_DAMAGE",
	UP_DAMAGE					= "PARASITE_DAMAGE",
	DAMAGE_REVENGE				= "PARASITE_DAMAGE",
	
	DYING_LAND_FRONT			= "PARASITE_DYING",
	DYING_LAND_BACK				= "PARASITE_DYING",
	DYING_SKY					= "PARASITE_DYING",

	REVENGE_ATTACK				= "",	
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
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "PARASITE_MANUAL_TARGET",
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 10,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 80,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 80,
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

function PARASITE_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 1000 ) then
        fNearDist = 9999  
        iNearUnit = -1  
        nUnitListSize = pX2Game:GetNPCUnitListSize()
        for i=0, nUnitListSize-1 do    
    	             		
		    pUnit = pX2Game:GetNPCUnit( i )
		    if pUnit ~= nil then
    		    		
                if pUnit:IsUnitID(NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"]) == true or pUnit:IsUnitID(NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"]) == true then
                    fDist = GetDistance_LUA( pNPCUnit:GetPos(), pUnit:GetPos() )
                                
                    if fDist <= fNearDist and pUnit:GetFlag_LUA(1) == false then
                        
                        fNearDist = fDist
                        iNearUnit = i
                    end            
		        end	        		            
		    end
        end	    

        if iNearUnit == -1 then
            return
        end        
        
        local pNearUnit = pX2Game:GetNPCUnit( iNearUnit )

		if nil ~= pNearUnit then
			if pNearUnit:GetFlag_LUA(1) == false then
				-- 부활시키러 달리자~                
				pNPCUnit:SetTargetUnit( pNearUnit )		  
				pNPCUnit:SetInt_LUA(0, iNearUnit)                  
			end		             
		end
        
    end
    
end



PARASITE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PARASITE_WAIT",				},
	},
	
	
}




function PARASITE_WAKE_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	fDist = 50.0

    iNearUnit = pNPCUnit:GetInt_LUA(0)        	             		
	pUnit = pX2Game:GetNPCUnit( iNearUnit )
	
	if pUnit == nil then
	    return
    end
    	    
    if pUnit:IsUnitID(NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"]) == true or pUnit:IsUnitID(NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"]) == true then
        dist = GetDistance_LUA( pNPCUnit:GetPos(), pUnit:GetPos() )
                    
        if fDist >= dist and pUnit:GetFlag_LUA(1) == false then
            -- 부활시키자~
            unitID = pUnit:GetUID()

            if pX2Game:ChangeRebirthStateNPCUnit_LUA( unitID ) == true then 
		        pNPCUnit:SetNowHP_LUA(0)
		        vPos		= pNPCUnit:GetPos()
		        rotDegree 	= pNPCUnit:GetRotateDegree()
		        pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()
		        pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", vPos, rotDegree, rotDegree, 14 )
		        pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", vPos, rotDegree, rotDegree, 14 )
            	
		        minorParticle = pX2Game:GetMinorParticle()
		        minorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "RespawnLanding_P01", pNPCUnit:GetPos(), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )		
	        end
                                
            return            
		end		            
	end	   
	
end





PARASITE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PARASITE_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"PARASITE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"PARASITE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"PARASITE_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"PARASITE_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"PARASITE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"PARASITE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PARASITE_WAKE_UP",						"CF_PARASITE_WAKE_UP", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PARASITE_ATTACK",						"CF_PARASITE_ATTACK", },
		
	},
}

function CF_PARASITE_WAKE_UP( pKTDXApp, pX2Game, pNPCUnit )

    -- 부활시킬수 있는지 보장~
    fDist = 50.0
        
    iNearUnit = pNPCUnit:GetInt_LUA(0)	             		
	pUnit = pX2Game:GetNPCUnit( iNearUnit )
	if pUnit == nil then
	    return false
    end
    	    
    if pUnit:IsUnitID(NPC_UNIT_ID["NUI_NASOD_MINER_THIN_DEFECT_DIE"]) == true or pUnit:IsUnitID(NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_DEFECT_DIE"]) == true then
        dist = GetDistance_LUA( pNPCUnit:GetPos(), pUnit:GetPos() )
                
        if fDist >= dist and pUnit:GetFlag_LUA(1) == false then                                 
            return true
		end		            
	end	        		            
    return false
end

function CF_PARASITE_ATTACK( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 300 ) then
        --ranAttack = math.random(1,3)
        ranAttack = pNPCUnit:GetRandVal()
        
        --print("rand:", ranAttack)
        
        if ranAttack <= 30 then
            return true
        end
    end

	return false
end

PARASITE_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PARASITE_WAIT",				},
	},
}


PARASITE_WALK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,	---falseAU
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	--EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PARASITE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"PARASITE_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"PARASITE_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"PARASITE_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"PARASITE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"PARASITE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PARASITE_WAKE_UP",						"CF_PARASITE_WAKE_UP", },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PARASITE_ATTACK",						"CF_PARASITE_ATTACK", },
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1486 },
	},
}

PARASITE_ATTACK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	ANIM_WAIT_TIME				= 1,
	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
	    { TRUE, 0.1, "Wally_9th_Spark02", FALSE, "", TRUE, TRUE, 0, 100, 0, },
	    { TRUE, 0.2, "Wally_9th_Spark02", FALSE, "", TRUE, TRUE, 0, 100, 0, },
	},
	    
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PARASITE_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"PARASITE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"PARASITE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"PARASITE_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"PARASITE_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"PARASITE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"PARASITE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PARASITE_WAKE_UP",						"CF_PARASITE_WAKE_UP", },
	},
}

PARASITE_JUMP_UP = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PARASITE_JUMP_DOWN",				},
	},
}

PARASITE_JUMP_DOWN = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PARASITE_JUMP_LANDING",				},
	},
}

PARASITE_JUMP_UP_DIR = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"PARASITE_JUMP_DOWN_DIR",				},
	},
}

PARASITE_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"PARASITE_JUMP_LANDING",				},
	},
}

PARASITE_JUMP_LANDING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"PARASITE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PARASITE_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"PARASITE_WAKE_UP",						"CF_PARASITE_WAKE_UP", },
	},
}

PARASITE_WAKE_UP = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PARASITE_WAIT",				},
	},
}

PARASITE_DYING = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	--DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



function PARASITE_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetShow( false )
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	GetMajorParticle = pX2Game:GetMajorParticle()
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpact",			pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpactCore",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpactRingRed",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

function PARASITE_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )    
    pos = pNPCUnit:GetPos()
    pos.y = pos.y + 400
    GetMajorParticle = pX2Game:GetMajorParticle()
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StandUpAttackMark", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
end

function PARASITE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )    
    
    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos.y = vBonePos.y + 100
    	
        pDamageEffect = pX2Game:GetDamageEffect()
        
        if pDamageEffect ~= nil then
	        pDamageEffect:CreateInstance_LUA( pNPCUnit, "PARASITE_LIGHTNING", vBonePos, vLandPos.y )
        end	        

	end
	    
end
