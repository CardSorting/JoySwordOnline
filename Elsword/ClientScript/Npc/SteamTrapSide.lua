-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.2,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "Steam_BP.dds",
	},
	
	READY_SOUND = 
	{
		"Steam_ready.ogg",
		"Steam_Fire.ogg",

	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Steam_AttackBox.X",
	
	ADD_ROTATE_Z = -90,
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
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Spike_Leaf1",
		
	SHOW_ON_MINIMAP		= FALSE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "STEAM_TRAP_SIDE_WAIT",						LUA_STATE_START_FUNC = "STEAM_TRAP_SIDE_WAIT_STATE_START", },
	{ STATE_NAME = "STEAM_TRAP_SIDE_ATTACK",					LUA_FRAME_MOVE_FUNC = "STEAM_TRAP_SIDE_ATTACK_FRAME_MOVE"	},

	START_STATE					= "STEAM_TRAP_SIDE_WAIT",
	
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
	DAMAGE_REVENGE				= "STEAM_TRAP_SIDE_WAIT",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "STEAM_TRAP_SIDE_WAIT",	
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


STEAM_TRAP_SIDE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,


	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"STEAM_TRAP_SIDE_ATTACK",				"CT_STEAM_TRAP_SIDE_ATTACK",	},
	},
	
	CT_STEAM_TRAP_SIDE_ATTACK = 
	{
		FLAG_FALSE = 0,
	},
}

STEAM_TRAP_SIDE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	ATTACK_TIME0				= { 0.01, 9999 },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_MAGIC"],
		HIT_TYPE		= HIT_TYPE["HT_FIRE"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			MAGIC		= 0.2,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= -1000,
		
		STOP_RESERVE_TIME_ATT	= 0.0,
		STOP_RESERVE_TIME_DEF	= 0.0,
		STOP_TIME_ATT			= 0.0,		
		STOP_TIME_DEF			= 0.0,	
		CAMERA_CRASH_GAP		= 20.0,	
		CAMERA_CRASH_TIME		= 0.3,
		CLEAR_SCREEN			= 0,

		CAN_REVENGE				= FALSE,
		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.05,	
		FORCE_FLY				= TRUE,		
	},
		
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"STEAM_TRAP_SIDE_WAIT",		"CT_STEAM_TRAP_SIDE_WAIT",			},
	},

	
	CT_STEAM_TRAP_SIDE_WAIT = 
	{
		FLAG_TRUE = 0,
	},
}




function STEAM_TRAP_SIDE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    nUnitListSize = pX2Game:GetNPCUnitListSize()
				
	for i=0, nUnitListSize-1 do 		
		pUnit = pX2Game:GetNPCUnit( i )
		if pUnit ~= nil then
            if pUnit:IsUnitID(NPC_UNIT_ID["NUI_STEAM_CONTROLER"]) == true then
                pMajorParticle = pX2Game:GetMajorParticle()
                if pMajorParticle ~= nil then
                
                    --if pUnit:GetFlag_LUA(0) == false then
                    if pUnit:GetNowHP() > pUnit:GetMaxHP() * 0.3 then
                    
                        vpos = pNPCUnit:GetBonePos_LUA("ATTACK_LINE_START1")
                        --vpos.x = vpos.x
                        
                        pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	                    if pParticle == nil then
	                        particle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SteamAttackSide", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	                        if particle ~= nil then 
								pNPCUnit:SetMajorParticle_LUA(0, particle:GetHandle() )
							end 
                        end	  
                        pNPCUnit:SetFlag_LUA(0, false)
                    else
                        
	                    pNPCUnit:SetFlag_LUA(0, true)
                    end
                end 
                
                return
            end	
        end            	
    end		
    
end

function STEAM_TRAP_SIDE_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
	if pParticle ~= nil then
		pParticle:SetAutoDie()
		pNPCUnit:ClearMajorParticle_LUA( 0 )
		-- 푸슈~ 끝!
        pNPCUnit:PlaySound_LUA( "SteamTrap_Stop.ogg" )
	end	
end
