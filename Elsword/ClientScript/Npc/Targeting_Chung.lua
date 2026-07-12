-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH	= 60.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"CDC_AS_ROCKON_CENTER.tga",
		"CDC_AS_ROCKON_ROUND1.tga",
		"CDC_AS_ROCKON_ROUND2.tga",
		"CDC_AS_ROCKON_ROUND3.tga",
		"Particle_Blur.dds",
	},
	
	READY_SOUND = 
	{
     "Chung_ArtilleryStrike_TargetOn.ogg",	
     "Chung_ArtilleryStrike_TargetTracking.ogg",	
     "Chung_ArtilleryStrike_TargetIdle.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "CDC_AS_ROCKON_DUMMY.X",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 0,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 1500,
	RUN_SPEED			= 1500,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
}

INIT_COMPONENT = 
{
	OUT_LINE_WIDTH_SCALE = 0.0,

	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= FALSE,
	DAMAGE_DOWN         = FALSE,
	SHOW_ON_MINIMAP		= FALSE,
	
	NOT_EXTRA_DAMAGE    = TRUE,

	SKY_DIE = TRUE,	
}

INIT_STATE = 
{
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_START",		LUA_STATE_START_FUNC = "SHOT_ARTILLERY_STRIKE_STATE_START",},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_IDLE",		},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_LEFT",		},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_RIGHT",		},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_UP",			},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_DOWN",		},
	
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_UP_LEFT",		},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_UP_RIGHT",	},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_DOWN_LEFT",	},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_DOWN_RIGHT",	},

	{ STATE_NAME = "SHOT_ARTILLERY_SELF_DESTRUCTION",	LUA_STATE_START_FUNC = "SHOT_ARTILLERY_SELF_DESTRUCTION_STATE_START",	},
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKER_CANCEL",		LUA_STATE_START_FUNC = "SHOT_ARTILLERY_STRIKE_CANCEL_STATE_START", },
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_FIRE",		LUA_FRAME_MOVE_FUNC = "SHOT_ARTILLERY_STRIKE_FIRE_FRAME_MOVE", },
	{ STATE_NAME = "SHOT_ARTILLERY_STRIKE_DYING",		},
		
	START_STATE					= "SHOT_ARTILLERY_STRIKE_START",
	WAIT_STATE					= "SHOT_ARTILLERY_STRIKE_IDLE",	
	
	SELF_DESTRUCTION_STATE		= "SHOT_ARTILLERY_SELF_DESTRUCTION",
	
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
	DOWN_DAMAGE_AIR_LANDING		= "",
	UP_DAMAGE					= "",
	DYING_LAND_FRONT			= "SHOT_ARTILLERY_STRIKE_DYING",
	DYING_LAND_BACK				= "SHOT_ARTILLERY_STRIKE_DYING",
	DYING_SKY					= "SHOT_ARTILLERY_STRIKE_DYING",
	COMMON_FRAME_FUNC           = "SHOT_ARTILLERY_STRIKE_COMMON_FRAME_MOVE",
	REVENGE_ATTACK				= "",
}

INIT_AI = 
{
	NO_BRAIN = TRUE, 
}

SHOT_ARTILLERY_STRIKE_START = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	RIGHT			= TRUE,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	INVINCIBLE		= { 0, 100, },
	
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHOT_ARTILLERY_STRIKE_IDLE",	},
	},
}

function SHOT_ARTILLERY_STRIKE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end

SHOT_ARTILLERY_STRIKE_IDLE = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetIdle.ogg" },	
  	
	RIGHT			= TRUE,
	INVINCIBLE		= { 0, 100, },
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_LEFT = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	RIGHT			= TRUE,
		
	PASSIVE_SPEED_X	= -INIT_PHYSIC["WALK_SPEED"],
	PASSIVE_SPEED_Y	= 0,
	
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_RIGHT = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE		= { 0, 100, },
	RIGHT			= TRUE,

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	PASSIVE_SPEED_Y	= 0,
	
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_UP = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },
	
	RIGHT			= TRUE,

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= INIT_PHYSIC["JUMP_SPEED"],
		
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_DOWN = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	RIGHT			= TRUE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= -INIT_PHYSIC["JUMP_SPEED"],
	
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_UP_LEFT = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },
	
	RIGHT			= TRUE,

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	

	PASSIVE_SPEED_X	= -INIT_PHYSIC["WALK_SPEED"] / 1.4,
	PASSIVE_SPEED_Y	= INIT_PHYSIC["JUMP_SPEED"] / 1.4,
	
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_UP_RIGHT = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	RIGHT			= TRUE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"] / 1.4,
	PASSIVE_SPEED_Y	= INIT_PHYSIC["JUMP_SPEED"] / 1.4,
		
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_DOWN_LEFT = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },
	
	RIGHT			= TRUE,

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	PASSIVE_SPEED_X	= -INIT_PHYSIC["WALK_SPEED"] / 1.4,
	PASSIVE_SPEED_Y	= -INIT_PHYSIC["JUMP_SPEED"] / 1.4,
		
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKE_DOWN_RIGHT = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },
	
	RIGHT			= TRUE,

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetTracking.ogg" },	
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"] / 1.4,
	PASSIVE_SPEED_Y	= -INIT_PHYSIC["JUMP_SPEED"] / 1.4,
		
	IGNORE_LINE_TIME_START	= 0,
	IGNORE_LINE_TIME_END	= 9999,
}

SHOT_ARTILLERY_STRIKER_CANCEL = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },
	
	RIGHT	= TRUE,
	
	--DYING_END				= TRUE,
	--DYING_END_IMMEDIATE		= TRUE,
	--IMMADIATE_PACKET_SEND	= TRUE,
}

SHOT_ARTILLERY_STRIKE_FIRE = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT	= FALSE,
	TRANSITION		= TRUE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	INVINCIBLE		= { 0, 100, },

    SOUND_PLAY0			= { 0.001, "Chung_ArtilleryStrike_TargetOn.ogg" },	
	RIGHT	= TRUE,
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_CDC_CHUNG_ARTILLERY_STRIKE_ROCKON_SHOT", 0.001,
	},
}

function SHOT_ARTILLERY_STRIKE_CANCEL_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetNowHP_LUA( 0 )
end

function SHOT_ARTILLERY_STRIKE_FIRE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:EventTimer( 0.001 ) then
		pNPCUnit:SetFlag_LUA( 0, true )
		for i = 0, 6 do
			local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
			if nil ~= pParticle then
				pParticle:SetAutoDie()
			end
			pNPCUnit:ClearMajorParticle_LUA( i )
		end
		
		pNPCUnit:SetShow( false )
	end

	if pNPCUnit:GetStateTime() > 1.5 then
		pNPCUnit:SetNowHP_LUA( 0 )
	end
end

SHOT_ARTILLERY_STRIKE_DYING = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, },
	RIGHT			= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END				= TRUE,
	DYING_END_IMMEDIATE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
}

function SHOT_ARTILLERY_STRIKE_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	--if pNPCUnit:EventTimer( 0.001 ) then
		local pUser = pX2Game:GetUserUnitByUID( pNPCUnit:GetOwnerUserUnitUID() )
		if nil ~= pUser then
			local vPosDir1 = pUser:GetPos()
			local vPosDir2 = pNPCUnit:GetPos()
									
			vPosDir1.x = vPosDir1.x * pUser:GetDirVector().x
			vPosDir1.y = vPosDir1.y * pUser:GetDirVector().y
			vPosDir1.z = vPosDir1.z * pUser:GetDirVector().z
			
			vPosDir2.x = vPosDir2.x * pUser:GetDirVector().x
			vPosDir2.y = vPosDir2.y * pUser:GetDirVector().y
			vPosDir2.z = vPosDir2.z * pUser:GetDirVector().z
			
			local fDist = pX2Game:GetDist_LUA( vPosDir1, vPosDir2 )
			
			local vPos = pNPCUnit:GetPos()
		--BALANCE_DEADLY_CHASER_20130214
		--타겟 할 수 없는 지역을 가리키는 빨간색 이펙트를 지움(5,6번)
			for i = 0, 4 do
				local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
				
				if nil ~= pParticle then
					pParticle:SetPosition( vPos )
				
				elseif false == pNPCUnit:GetFlag_LUA( 0 ) then					
					if pNPCUnit:GetFlag_LUA ( 1 ) == true then
						local pMyUnit = pX2Game:GetMyUnit()
						if pMyUnit ~= nil then
							if pMyUnit:GetUnitUID() == pNPCUnit:GetOwnerUserUnitUID() then 
								Create_Target_Particles( pKTDXApp, pX2Game, pNPCUnit )
								pParticle = pNPCUnit:GetMajorParticle_LUA( i )
								pParticle:SetPosition( vPos )
							end					
						end
					else
						Create_Target_Particles( pKTDXApp, pX2Game, pNPCUnit )
						pParticle = pNPCUnit:GetMajorParticle_LUA( i )
						pParticle:SetPosition( vPos )					
					end
				end
			end
		--BALANCE_DEADLY_CHASER_20130214
			for i = 0, 4 do
				local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
				if nil ~= pParticle then
					pParticle:SetDrawCount( 1 )
				end
			end
		--[[BALANCE_DEADLY_CHASER_20130214							
				if fDist >= 750.0 then
					for i = 0, 4 do
						local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
						if nil ~= pParticle then
							pParticle:SetDrawCount( 1 )
						end
					end
					
					for i = 5, 6 do
						local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
						if nil ~= pParticle then
							pParticle:SetDrawCount( 0 )
						end
					end				
				else
					for i = 0, 4 do
						local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
						if nil ~= pParticle then
							pParticle:SetDrawCount( 0 )
						end
					end
					
					for i = 5, 6 do
						local pParticle = pNPCUnit:GetMajorParticle_LUA( i )
						if nil ~= pParticle then
							pParticle:SetDrawCount( 1 )
						end
					end	
				end
		--]]
			--[[if nil ~= hEffect then
				pEffectSet:StopEffectSet_LUA( hEffect )
				pNPCUnit:ClearEffectSet_LUA( 0 )
			end
			
			if fDist >= 750.0 then
				hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CDC_CHUNG_ARTILLERY_STRIKE_ROCKON", pNPCUnit )
				pNPCUnit:SetEffectSet_LUA( 0, hEffect )
			else
				hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_CDC_CHUNG_ARTILLERY_STRIKE_ROCKON_FALSE", pNPCUnit )
				pNPCUnit:SetEffectSet_LUA( 0, hEffect )
			end--]]
		--end
	end
end

SHOT_ARTILLERY_SELF_DESTRUCTION =
{
	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function SHOT_ARTILLERY_SELF_DESTRUCTION_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetNowHP_LUA( 0 )
end

function Create_Target_Particles( pKTDXApp, pX2Game, pNPCUnit )
	-- EffectSet 대신 파티클 분리해서 구현
	local vPos = pNPCUnit:GetPos()
	local pMajorParticle = pX2Game:GetMajorParticle()
	local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_03", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	pNPCUnit:SetMajorParticle_LUA( 0, pParticle:GetHandle() )
	pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_LIGHT", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	pNPCUnit:SetMajorParticle_LUA( 1, pParticle:GetHandle() )
	pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_04", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	pNPCUnit:SetMajorParticle_LUA( 2, pParticle:GetHandle() )
	pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_02", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	pNPCUnit:SetMajorParticle_LUA( 3, pParticle:GetHandle() )
	pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_01", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	pNPCUnit:SetMajorParticle_LUA( 4, pParticle:GetHandle() )
	
	--[[BALANCE_DEADLY_CHASER_20130214
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_03_FAIL", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pNPCUnit:SetMajorParticle_LUA( 5, pParticle:GetHandle() )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Pa_CDC_AS_ROCKON_LIGHT_FAIL", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		pNPCUnit:SetMajorParticle_LUA( 6, pParticle:GetHandle() )
	--]]
end