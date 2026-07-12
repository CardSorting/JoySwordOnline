-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 1.0,
	UNIT_HEIGHT		= 270.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 1.7,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
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
	MOTION_FILE_NAME = "Motion_Chief_Of_Trockta_Stone.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 350,
	RUN_SPEED			= 450,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
}

INIT_COMPONENT =
{
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	FALL_DOWN			= TRUE,

	NOT_CULL  = TRUE,
	
	DIE_FLY				= 0,
	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE =
{		
	-- 돌 생성
	{ STATE_NAME = "TROCKTA_TRAP_START",		LUA_STATE_START_FUNC = "TROCKTA_TRAP_START_STATE_START",
												LUA_FRAME_MOVE_FUNC = "TROCKTA_TRAP_START_FRAME_MOVE", },	
	-- 떨어질때
	{ STATE_NAME = "TROCKTA_TRAP_DOWN",			},
	-- 박힌 상태
	{ STATE_NAME = "TROCKTA_TRAP_WAIT",			LUA_FRAME_MOVE_FUNC = "TROCKTA_TRAP_WAIT_FRAME_MOVE", },
	-- 피격
	{ STATE_NAME = "TROCKTA_TRAP_DAMAGE",		},
	-- 사망
	{ STATE_NAME = "TROCKTA_TRAP_DYING",		LUA_STATE_START_FUNC = "TROCKTA_TRAP_DYING_STATE_START",
												LUA_FRAME_MOVE_FUNC = "TROCKTA_TRAP_DYING_FRAME_MOVE", },
	
	START_STATE					= "TROCKTA_TRAP_START",
	WAIT_STATE					= "TROCKTA_TRAP_WAIT",
		
	SMALL_DAMAGE_LAND_FRONT		= "TROCKTA_TRAP_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "TROCKTA_TRAP_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "TROCKTA_TRAP_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "TROCKTA_TRAP_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "TROCKTA_TRAP_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "TROCKTA_TRAP_DAMAGE",
	FLY_DAMAGE_FRONT			= "TROCKTA_TRAP_DAMAGE",
	FLY_DAMAGE_BACK				= "TROCKTA_TRAP_DAMAGE",
	SMALL_DAMAGE_AIR			= "TROCKTA_TRAP_DAMAGE",	
	BIG_DAMAGE_AIR				= "TROCKTA_TRAP_DAMAGE",
	DOWN_DAMAGE_AIR				= "TROCKTA_TRAP_DAMAGE",
	DOWN_DAMAGE_AIR_LANDING		= "TROCKTA_TRAP_DAMAGE",
	UP_DAMAGE					= "TROCKTA_TRAP_DAMAGE",
	DAMAGE_REVENGE				= "",

	DYING_LAND_FRONT			= "TROCKTA_TRAP_DYING",
	DYING_LAND_BACK				= "TROCKTA_TRAP_DYING",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_ONLY_ONE"],
		TARGET_INTERVAL				= 99999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 2000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- %
		ATTACK_TARGET_RATE			= 0, 		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100,   	-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCKTA_TRAP_START = 
{
	ANIM_NAME		= "Start",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	--오현빈
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE		= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,		
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	ATTACK_TIME0			= { 0.0, 0.8, },
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"TROCKTA_TRAP_WAIT",	},
	},
	
	DAMAGE_DATA =
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_DEFAULT"],
		REACT_TYPE		= REACT_TYPE["RT_SMALL_DAMAGE"],
		
		DAMAGE =
		{
			PHYSIC		= 1,
		},
		
		ARRANGED_FLY		= TRUE,
		BACK_SPEED_Y		= -5000,
	},
	
	EFFECT_SET_LIST =
	{	--가면 이펙트 생성
		"EffectSet_SP_B_MASK", 0.0,
	},
}

function TROCKTA_TRAP_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
end

function TROCKTA_TRAP_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local checkTime = pNPCUnit:GetTimerElapsedTime( 0 )
	
	if checkTime < 0.1 then
		local vPos = pNPCUnit:GetBonePos_LUA( "ATTACK_SPHERE1_STONE" )
		local pTargetUser = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 9999 )
		pNPCUnit:SetTargetUnit( pTargetUser )
		--유저에게 못 움직이는 디버프
		pTargetUser:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_TROCKTA_TRAP"] )
	elseif checkTime < 0.8 then
		local pTargetUser = pNPCUnit:GetTargetUser()
		
		local Pos = pTargetUser:GetPos()
		local LandPos = pTargetUser:GetLandPosition_LUA()

		if Pos.y == LandPos.y then --땅에 있을때
			--돌감옥을 유저위치로
			pNPCUnit:SetPosition( Pos )
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------

TROCKTA_TRAP_DOWN =
{
	ANIM_NAME					= "Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,		
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"TROCKTA_TRAP_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCKTA_TRAP_WAIT = 
{
	ANIM_NAME		= "Loop",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	
	LAND_CONNECT	= FALSE,
		
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE = TRUE,

	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"], "TROCKTA_TRAP_DOWN", },
	},
}

function TROCKTA_TRAP_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pDamageEffect = pX2Game:GetDamageEffect()
	local checkTime = pNPCUnit:GetTimerElapsedTime( 0 )
	
	if checkTime > 6.6 then	--폭발
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_TROCKTA_SP_B", pNPCUnit:GetBonePos_LUA( "ATTACK_SPHERE1_STONE" ), pos.y )
			pNPCUnit:SetNowHP_LUA( 0 ) 
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------

TROCKTA_TRAP_DAMAGE = 
{
	ANIM_NAME		= "Loop",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	--오현빈
	LAND_CONNECT	= FALSE,
		
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE = TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"TROCKTA_TRAP_WAIT", },
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

TROCKTA_TRAP_DYING = 
{
	ANIM_NAME		= "Damage",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END		= TRUE,	

	SOUND_PLAY0 = { 0.01, "Rock_Broken2.ogg"},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function TROCKTA_TRAP_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local TargetUser = pNPCUnit:GetTargetUser()
	if nil ~= TargetUser then
		TargetUser:EraseBuffTempletFromGameUnit_LUA( BUFF_TEMPLET_ID["BTI_BUFF_TROCKTA_TRAP"] )
	end
end

function TROCKTA_TRAP_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 0.1 then
		local Alpha = 0.2 - fAnimationTime
		
		if 0.0 > Alpha then
			Alpha = 0.0
		end
		
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 10.0 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		
	end
end
----------------------------------------------------------------------------------------------------------------------------------------