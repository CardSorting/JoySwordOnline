-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0,
	UNIT_HEIGHT		= 500.0,
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
       "Besma_Rock_Ready2.ogg",	
       "Besma_Rock_Dash.ogg",	
       "Besma_Rock_DownLanding.ogg",	


    },
--[[		
	READY_XMESH = 
	{
	    "Lightning02.Y",
	    "Lightning03.Y",
	},
	
	READY_XSKIN_MESH = 
	{
	    "DummyAttackBox_50x50x50.X",
	},
--]]	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "stone.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 900,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 100,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "",
		
	SHOW_ON_MINIMAP		= FALSE,
	
	FALL_DOWN			= FALSE,
	

	

}

INIT_STATE = 
{
    { STATE_NAME = "BESMA_ROCK_ARCADE_START",				},
    { STATE_NAME = "BESMA_ROCK_ARCADE_READY",				},	
	{ STATE_NAME = "BESMA_ROCK_ARCADE_READY2",				--LUA_CAMERA_MOVE_FUNC = "BESMA_ROCK_ARCADE_READY2_CAMERA_MOVE",
	                                                LUA_FRAME_MOVE_FUNC = "BESMA_ROCK_ARCADE_READY2_FRAME_MOVE",	},	
		
	{ STATE_NAME = "BESMA_ROCK_ARCADE_DOWN",					},	
	{ STATE_NAME = "BESMA_ROCK_ARCADE_DOWNLANDING",		LUA_FRAME_MOVE_FUNC = "BESMA_ROCK_ARCADE_DOWNLANDING_FRAME_MOVE",	},	
	
	{ STATE_NAME = "BESMA_ROCK_ARCADE_WALK",				},	
	{ STATE_NAME = "BESMA_ROCK_ARCADE_DASH",				LUA_FRAME_MOVE_FUNC = "BESMA_ROCK_ARCADE_DASH_FRAME_MOVE",	},	

    { STATE_NAME = "BESMA_ROCK_ARCADE_WAIT",				},	
    { STATE_NAME = "BESMA_ROCK_ARCADE_BROKEN",				},	
    { STATE_NAME = "BESMA_ROCK_ARCADE_AUTO_BROKEN",			LUA_STATE_START_FUNC = "BESMA_ROCK_ARCADE_AUTO_BROKEN_STATE_START",	},	
    
	START_STATE					= "BESMA_ROCK_ARCADE_DASH",
	WAIT_STATE					= "BESMA_ROCK_ARCADE_WAIT",
	
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
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "BESMA_ROCK_ARCADE_BROKEN",
	DYING_LAND_BACK				= "BESMA_ROCK_ARCADE_BROKEN",
	DYING_SKY					= "BESMA_ROCK_ARCADE_BROKEN",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "ROCK_MANUAL_TARGET",
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


function ROCK_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	--if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 500 ) then
		local pNearestNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_BESMA_ROCK_END_ARCADE"], 9999 )
	
		if nil ~= pNearestNpc then
			pNPCUnit:SetTargetUnit( pNearestNpc )
		end
	--end
	
end


------------------------------------------------------------------------------------
BESMA_ROCK_ARCADE_START = 
{
	ANIM_NAME					= "Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BESMA_ROCK_ARCADE_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BESMA_ROCK_ARCADE_READY",						},
	},
}

BESMA_ROCK_ARCADE_READY = 
{
	ANIM_NAME					= "Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
}

BESMA_ROCK_ARCADE_READY2 = 
{
	ANIM_NAME					= "Ready2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.152, "Besma_Rock_Ready2.ogg" },

	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,	
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BESMA_ROCK_ARCADE_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BESMA_ROCK_ARCADE_DASH",						},
	},
}

BESMA_ROCK_ARCADE_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BESMA_ROCK_ARCADE_DOWN",								},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"BESMA_ROCK_ARCADE_DASH",				"CT_BESMA_ROCK_ARCADE_DASH",			},		
	},

	CT_BESMA_ROCK_ARCADE_DASH = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 9999,
		RATE						= 100,
		SAME_LINE_WITH_TARGET		= TRUE,
	},
}

BESMA_ROCK_ARCADE_DOWN = 
{
    ANIM_NAME					= "Down",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--RIGHT = FALSE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	--VIEW_TARGET					= TRUE,
	--PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,

    ATTACK_TIME0				= { 0.0, 0.6, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},	
		
		
		CAN_REVENGE				= FALSE,
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"BESMA_ROCK_ARCADE_DASH",				},
	},
}

BESMA_ROCK_ARCADE_DOWNLANDING = 
{
    ANIM_NAME					= "DownLanding",
    PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	--RIGHT = FALSE,

    SOUND_PLAY0			= { 0.077, "Besma_Rock_DownLanding.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BESMA_ROCK_ARCADE_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BESMA_ROCK_ARCADE_DASH",			},
	},
}

BESMA_ROCK_ARCADE_DASH = 
{
    ANIM_NAME					= "Dash",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	--RIGHT = FALSE,
		
	EVENT_INTERVAL_TIME0		= 1,	
	
	ATTACK_TIME0				= { 0.0, 1.5, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 2.0,
		},
		CAN_REVENGE				= FALSE,
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BESMA_ROCK_ARCADE_AUTO_BROKEN",		"CT_BESMA_ROCK_ARCADE_AUTO_BROKEN"				},
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"BESMA_ROCK_ARCADE_DOWN",		    },		
		
	},
	
	CT_BESMA_ROCK_ARCADE_AUTO_BROKEN = 
	{
		STATE_TIME_OVER			= 30,
	},  
	
}


BESMA_ROCK_ARCADE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
		
	IMMADIATE_PACKET_SEND		= TRUE,
}

BESMA_ROCK_ARCADE_BROKEN = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

BESMA_ROCK_ARCADE_AUTO_BROKEN =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
		
	IMMADIATE_PACKET_SEND		= TRUE,
}
------------------------------------------------------------------------------------

function BESMA_ROCK_ARCADE_READY2_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )
--[[
	pos = pNPCUnit:GetBonePos_LUA("_111111false")	-- ?????
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, -50, -20 ), D3DXVECTOR2( 0,0 ) )
--]]
end


function BESMA_ROCK_ARCADE_READY2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
        pNPCUnit:SetFocusCamera(true)        
    end        
    
    pos = pNPCUnit:GetBonePos_LUA("_111111false")	-- ?????
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, -50, -20 ), D3DXVECTOR2( 1000,0 ) )
	    
end	

function BESMA_ROCK_ARCADE_DOWNLANDING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmokeBig", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
    end	    
end	

function BESMA_ROCK_ARCADE_DASH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_BESMA_ROCK_END_ARCADE"], 999999 )
	if pUID ~= 0 then
	    pUnit = pX2Game:GetNPCUnitByUID(pUID)
	    if pUnit ~= nil then	            
	        fDist = pUnit:GetDistanceFrom( pNPCUnit:GetPos() )
	        
	        --print("rock", fDist)
	        
	        if fDist <= 300 then
	            --pNPCUnit:SetNowHP_LUA(0)
	            --print("rock end")
	            --pNPCUnit:StateChange_LUA( "BESMA_ROCK_ARCADE_BROKEN", true )
	            pNPCUnit:SetNowHP_LUA(0)
	        end
	    end
	end
	    
    if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmokeBig", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_RollingStone01", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

    	pNPCUnit:PlaySound_LUA( "Besma_Rock_Dash.ogg" )
	    
	    --pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.3 )
	    	    	    
	    pNPCUnit:ClearEventCheck(0.1)
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmokeBig", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_RollingStone01", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	    
	    --pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.3 )	    
	    
	    pNPCUnit:ClearEventCheck(0.4)
    end	    
    
    if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
        pMinorParticle = pX2Game:GetMinorParticle()
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmokeBig", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Stone_RollingStone01", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	    
	    --pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 30.0, 0.3 )	    
	    
	    pNPCUnit:ClearEventCheck(0.7)
    end	    

end	

function BESMA_ROCK_ARCADE_AUTO_BROKEN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pNPCUnit:SetNowHP_LUA(0)
end





	
