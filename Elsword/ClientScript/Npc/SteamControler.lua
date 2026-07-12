-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Steam_ShotDown.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_STEAM_CONTROLER.X",
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
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
		
	SHOW_ON_MINIMAP		= FALSE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "STEAM_TRAP_WAIT",				},
	{ STATE_NAME = "STEAM_TRAP_DAMAGE",				},	
	{ STATE_NAME = "STEAM_TRAP_DYING",				LUA_FRAME_MOVE_FUNC = "STEAM_TRAP_DYING_FRAME_MOVE",},
	
	START_STATE					= "STEAM_TRAP_WAIT",
	WAIT_STATE					= "STEAM_TRAP_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "STEAM_TRAP_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "STEAM_TRAP_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "STEAM_TRAP_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "STEAM_TRAP_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "STEAM_TRAP_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "STEAM_TRAP_DAMAGE",
	FLY_DAMAGE_FRONT			= "STEAM_TRAP_DAMAGE",
	FLY_DAMAGE_BACK				= "STEAM_TRAP_DAMAGE",
	SMALL_DAMAGE_AIR			= "STEAM_TRAP_DAMAGE",	
	BIG_DAMAGE_AIR				= "STEAM_TRAP_DAMAGE",
	DOWN_DAMAGE_AIR				= "STEAM_TRAP_DAMAGE",
	UP_DAMAGE					= "STEAM_TRAP_DAMAGE",
	DAMAGE_REVENGE				= "STEAM_TRAP_WAIT",
	
	-- 죽어서 사라지기 위해, 사망 스테이트 적용
	DYING_LAND_FRONT			= "STEAM_TRAP_DYING",
	DYING_LAND_BACK				= "STEAM_TRAP_DYING",
	DYING_SKY					= "STEAM_TRAP_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,	-- cm
		TARGET_LOST_RANGE			= 10800,	-- cm
		TARGET_SUCCESS_RATE			= 100,		-- %
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
		NEAR_WALK_RATE		= 100,	-- 70,
		FAR_WALK_RATE		= 100,	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100,	-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,	-- 20,
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
		NEAR_WALK_RATE		= 100,	-- 10,
		FAR_WALK_RATE		= 100,	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	-- 30,
		DOWN_DOWN_RATE		= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		RATE				= 100,	-- 50,
		MY_HP				= 20,	-- %, 전체 HP에 대해 현재 HP의 비율
		ESCAPE_RANGE		= 400,	-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}


STEAM_TRAP_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	RIGHT                       = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

STEAM_TRAP_DAMAGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	NEVER_MOVE					= TRUE,
	RIGHT                       = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PARASITE_HOUSE_WAIT",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"STEAM_TRAP_WAIT",		},
	},
}

STEAM_TRAP_DYING =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 0.2,
	DYING_SPEED					= 0.2,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,

    INVINCIBLE					= { 0, 100, },
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function CF_STEAM_TRAP( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then 
        pNPCUnit:SetFlag_LUA(0, true)        
        return true
    end	
	
	pNPCUnit:SetFlag_LUA(0, false)
	return false
end

function STEAM_TRAP_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then			-- 증기 이펙트 생성

		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then

			vpos = pNPCUnit:GetBonePos_LUA("SteamControl01")
						
			vpos.x = vpos.x + 10                      
			vpos.y = vpos.y + 80  
			vpos.z = vpos.z - 100      
			
			pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
			if pParticle == nil then
				particle = pMinorParticle:CreateSequence_LUA( "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
				if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
			end	         
			
			vpos1 = pNPCUnit:GetBonePos_LUA("SteamControl01")

			vpos1.x = vpos1.x - 130            
			vpos1.z = vpos1.z - 50      
			
			pParticle1 = pNPCUnit:GetMinorParticle_LUA( 1 )
			if pParticle1 == nil then
				particle1 = pMinorParticle:CreateSequence_LUA( "Smoke_BCMI_DeathWait01", vpos1, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
				if particle1 ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(1, particle1:GetHandle() )	
				end 
			end	 
			
			-- 연기펄펄       
			pNPCUnit:PlaySound_LUA( "Steam_ShotDown.ogg" )                
		end  
		
	elseif pNPCUnit:AnimEventTimer_LUA( 0.25 ) then		-- 증기 이펙트 소멸
		
		pMinorParticle = pX2Game:GetMinorParticle()

		pParticle = pNPCUnit:GetMinorParticle_LUA( 0 ) 	
		
		if pParticle ~= nil then
			pParticle:SetAutoDie()
			pNPCUnit:ClearMinorParticle_LUA( 0 )
		end

		pParticle = pNPCUnit:GetMinorParticle_LUA( 1 ) 	
		
		if pParticle ~= nil then
			pParticle:SetAutoDie()
			pNPCUnit:ClearMinorParticle_LUA( 1 )
		end
		
	end

end
