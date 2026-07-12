-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 1.0,
	UNIT_HEIGHT		= 1.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.0,
	FORCE_BILLBOARD	= TRUE,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Count_Barrier01.dds",
	},
	
	READY_SOUND = 
	{	
	},
	
		
	READY_XMESH = 
	{
	},
	
	
	READY_XSKIN_MESH = 
	{
		"ATOMIC_SHIELD_nasod_loop1.X",
		"ATOMIC_SHIELD_nasod_loop2.X",
		"ATOMIC_SHIELD_nasod_loop3.X",
		"ATOMIC_SHIELD_nasod_loop4.X",
		"ATOMIC_SHIELD_nasod_loop5.X",
		"ATOMIC_SHIELD_nasod_loop6.X",
	},
}

INIT_MOTION = 
{
	--MOTION_FILE_NAME		= "DummyCOLLISIONSPHERE.X",
	MOTION_FILE_NAME		= "ATOMIC_SHIELD_barrier.X"
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 0,
	G_ACCEL				= 0,
	MAX_G_SPEED			= 0,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}

INIT_COMPONENT = 
{
	MAX_HP				= 5000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,
	
	NOT_EXTRA_DAMAGE    = TRUE,
	
	FALL_DOWN			= FALSE,
    DIE_FLY             = 0,
    SKY_DIE				= TRUE,
    
    HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
}

INIT_STATE = 
{
	{ STATE_NAME = "ATOMIC_SHIELD_WAIT",				LUA_STATE_START_FUNC="ATOMIC_SHIELD_WAIT_FUNC" },
			
	--리액션 관련
	{ STATE_NAME = "ATOMIC_SHIELD_DAMAGE",				LUA_FRAME_MOVE_FUNC="ATOMIC_SHIELD_DAMAGE_FRAME_MOVE", },
	{ STATE_NAME = "ATOMIC_SHIELD_DYING",				LUA_STATE_START_FUNC="ATOMIC_SHIELD_DYING_START", },
	{ STATE_NAME = "ATOMIC_SHIELD_SELF_DESTRUCTION",	LUA_STATE_START_FUNC="ATOMIC_SHIELD_SELF_DESTRUCTION_STATE_START", },
	
	START_STATE					= "ATOMIC_SHIELD_WAIT",
	WAIT_STATE					= "ATOMIC_SHIELD_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "ATOMIC_SHIELD_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "ATOMIC_SHIELD_DAMAGE",
	SMALL_DAMAGE_AIR			= "ATOMIC_SHIELD_DAMAGE",
	SMALL_DAMAGE_AIR_FRONT		= "ATOMIC_SHIELD_DAMAGE",
	SMALL_DAMAGE_AIR_BACK		= "ATOMIC_SHIELD_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "ATOMIC_SHIELD_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "ATOMIC_SHIELD_DAMAGE",
	BIG_DAMAGE_AIR				= "ATOMIC_SHIELD_DAMAGE",
	BIG_DAMAGE_AIR_FRONT		= "ATOMIC_SHIELD_DAMAGE",
	BIG_DAMAGE_AIR_BACK			= "ATOMIC_SHIELD_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "ATOMIC_SHIELD_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "ATOMIC_SHIELD_DAMAGE",
	DOWN_DAMAGE_AIR				= "ATOMIC_SHIELD_DAMAGE",
	UP_DAMAGE					= "ATOMIC_SHIELD_DAMAGE",
	FLY_DAMAGE_FRONT			= "ATOMIC_SHIELD_DAMAGE",
	FLY_DAMAGE_BACK				= "ATOMIC_SHIELD_DAMAGE",
	RIDE_DAMAGE_FRONT			= "ATOMIC_SHIELD_DAMAGE",
	RIDE_DAMAGE_BACK			= "ATOMIC_SHIELD_DAMAGE",
	AIR_FALL					= "ATOMIC_SHIELD_DAMAGE",
	
	DAMAGE_REVENGE				= "ATOMIC_SHIELD_DAMAGE",
	
	DYING_LAND_FRONT			= "ATOMIC_SHIELD_DYING",
	DYING_LAND_BACK				= "ATOMIC_SHIELD_DYING",
	DYING_SKY					= "ATOMIC_SHIELD_DYING",
	DYING_FLY					= "ATOMIC_SHIELD_DYING",
	
	SELF_DESTRUCTION_STATE		= "ATOMIC_SHIELD_SELF_DESTRUCTION",
	
	REVENGE_ATTACK				= "",
	
	COMMON_FRAME_FUNC           = "ATOMIC_SHIELD_COMMON_FRAMEMOVE",
}



INIT_AI = 
{
}

ATOMIC_SHIELD_WAIT = 
{
	ANIM_NAME		= "wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	SHOW			= FALSE,
		
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE		= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.1,
}

ATOMIC_SHIELD_DAMAGE = 
{
	ANIM_NAME		= "wait",		
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	SHOW			= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],	"ATOMIC_SHIELD_WAIT", },
	},
}

ATOMIC_SHIELD_SELF_DESTRUCTION =
{
	ANIM_NAME					= "Die",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
	
	SHOW						= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

ATOMIC_SHIELD_DYING = 
{
	ANIM_NAME		= "Die",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	NEVER_MOVE		= TRUE,
	
	SHOW			= FALSE,
	DYING_END				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
}

function ATOMIC_SHIELD_WAIT_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	-- 쉴드 이펙트
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	local pEffectSet = pX2Game:GetEffectSet()
		
	if 0 == hEffect then
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_LOOP", pNPCUnit )
		pNPCUnit:SetEffectSet_LUA( 0, hEffect )
	end	
	
	-- Damage Defence Buff	
	hEffect = pNPCUnit:GetEffectSet_LUA( 1 )
	
	if 0 == hEffect then
	--{{//2012-11-20//BALANCE_CODE_NEMESIS_20121213
		local level = pNPCUnit:GetRealatedSkillLevel()
		if 1 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_01", pNPCUnit )
		elseif 2 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_02", pNPCUnit )
		elseif 3 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_03", pNPCUnit )
		elseif 4 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_04", pNPCUnit )
		elseif 5 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_05", pNPCUnit )
		elseif 6 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_06", pNPCUnit )
		elseif 7 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_07", pNPCUnit )
		elseif 8 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_08", pNPCUnit )
		elseif 9 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_09", pNPCUnit )
		elseif 10 == level then
			hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE_10", pNPCUnit )
		end
		--hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DEFENCE", pNPCUnit )
	--}}//2012-11-20//BALANCE_CODE_NEMESIS_20121213
		pNPCUnit:SetEffectSet_LUA( 1, hEffect )
	end
	
	pNPCUnit:SetFlag_LUA(0, true)
end

function ATOMIC_SHIELD_DAMAGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	-- 쉴드 데미지 이펙트
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		local hEffect = pNPCUnit:GetEffectSet_LUA( 2 )
		local pEffectSet = pX2Game:GetEffectSet()
			
		if nil ~= hEffect then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 2 )
		end

		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_EVE_ATOMIC_SHIELD_DAMAGE", pNPCUnit )
	end
end

function ATOMIC_SHIELD_SELF_DESTRUCTION_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetNowHP_LUA( 0 )
	
	pNPCUnit:SetFlag_LUA(0, false)
	
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
	if 0 ~= hEffect then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	hEffect = pNPCUnit:GetEffectSet_LUA( 1 )
	
	if 0 ~= hEffect then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 1 )
	end
	
	-- 쉴드 소멸시 데미지 감소 버프 제거
	for i = 0, 3 do
		local pUser = pX2Game:GetUserUnit( i )
		if nil ~= pUser then
			pUser:SetShieldDamageReduce( 1.0 )
		end
	end
end

function ATOMIC_SHIELD_DYING_START( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
	pNPCUnit:SetFlag_LUA(0, false)
	
	if 0 ~= hEffect then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end
	
	hEffect = pNPCUnit:GetEffectSet_LUA( 1 )
	
	if 0 ~= hEffect then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 1 )
	end
	
	-- 쉴드 소멸시 데미지 감소 버프 제거
	for i = 0, 3 do
		local pUser = pX2Game:GetUserUnit( i )
		if nil ~= pUser then
			pUser:SetShieldDamageReduce( 1.0 )
		end
	end
end

function ATOMIC_SHIELD_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )
	-- 유저 유닛을 순회한다.
	for i = 0, 3 do
		local pUser = pX2Game:GetUserUnit( i )
		
		if nil ~= pUser and true == pNPCUnit:GetFlag_LUA(0) then
			local iUserTeam = pUser:GetTeam()
			local iShieldTeam = pNPCUnit:GetTeam()
			if iUserTeam == iShieldTeam then
				
				local fDist = pX2Game:GetDist_LUA( pNPCUnit:GetPos(), pUser:GetPos() )
				local fScale = pNPCUnit:GetScaleByUnit().x * 450.0
				
				if fDist <= fScale then
					pUser:SetShieldDamageReduce( pNPCUnit:GetKeyCode() / 100.0 )
				else
					pUser:SetShieldDamageReduce( 1.0 )
				end
				
			end
		end
	end
end