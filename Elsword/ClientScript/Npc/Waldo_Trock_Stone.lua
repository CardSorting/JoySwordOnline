-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 270.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 0.7,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	"smoke.dds",
	"GroundShockWave.dds",
	"Explosion_Sphere.dds",
	"Particle_Blur.dds",
	"soket_earth_quake_stone01.dds",
	"soket_earth_quake_smoke02.DDS",
	},
	
	READY_SOUND = 
	{
	"Rock_Broken2.ogg",
	"MagManta_MagicAttackB01.ogg",
	},
		
	READY_XMESH = 
	{
	"waldo_trock_MagicAttackA_fire_spark.Y",
	"waldo_trock_MagicAttackA_fire_spark.Y",
	},
	
	READY_XSKIN_MESH = 
	{
	"Land_Dimolisher_M05.X",
	"Land_Dimolisher_M05.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME = "Motion_Waldo_Stone.x",	
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
	MAX_HP              = 30000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	FALL_DOWN			= TRUE,

	NOT_CULL  = TRUE,
}

INIT_STATE =
{		
	-- 돌 생성
	{ STATE_NAME = "WALDO_TROCK_STONE_START",		LUA_STATE_START_FUNC = "WALDO_TROCK_STONE_START_STATE_START",
													LUA_FRAME_MOVE_FUNC = "WALDO_TROCK_STONE_START_FRAME_MOVE"			},	
	-- 날림
	{ STATE_NAME = "WALDO_TROCK_STONE_THROW",		LUA_STATE_START_FUNC = "WALDO_TROCK_STONE_THROW_STATE_START",
													LUA_STATE_END_FUNC = "WALDO_TROCK_STONE_THROW_STATE_END",			},
	-- 박힌 상태
	{ STATE_NAME = "WALDO_TROCK_STONE_WAIT",		},
	-- 피격
	{ STATE_NAME = "WALDO_TROCK_STONE_DAMAGE",		},
	-- 사망
	{ STATE_NAME = "WALDO_TROCK_STONE_DYING",		},
	
	START_STATE					= "WALDO_TROCK_STONE_START",
	WAIT_STATE					= "WALDO_TROCK_STONE_WAIT",
		
	SMALL_DAMAGE_LAND_FRONT		= "WALDO_TROCK_STONE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "WALDO_TROCK_STONE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "WALDO_TROCK_STONE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "WALDO_TROCK_STONE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "WALDO_TROCK_STONE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "WALDO_TROCK_STONE_DAMAGE",
	FLY_DAMAGE_FRONT			= "WALDO_TROCK_STONE_DAMAGE",
	FLY_DAMAGE_BACK				= "WALDO_TROCK_STONE_DAMAGE",
	SMALL_DAMAGE_AIR			= "WALDO_TROCK_STONE_DAMAGE",	
	BIG_DAMAGE_AIR				= "WALDO_TROCK_STONE_DAMAGE",
	DOWN_DAMAGE_AIR				= "WALDO_TROCK_STONE_DAMAGE",
	DOWN_DAMAGE_AIR_LANDING		= "WALDO_TROCK_STONE_DAMAGE",
	UP_DAMAGE					= "WALDO_TROCK_STONE_DAMAGE",
	DAMAGE_REVENGE				= "",

	DYING_LAND_FRONT			= "WALDO_TROCK_STONE_DYING",
	DYING_LAND_BACK				= "WALDO_TROCK_STONE_DYING",
	DYING_SKY					= "WALDO_TROCK_STONE_DYING",
	
	COMMON_FRAME_FUNC           = "WALDO_TROCK_STONE_COMMON_FRAME_MOVE",
}

INIT_AI = 
{
	NO_BRAIN = TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_STONE_START = 
{
	ANIM_NAME		= "Stone_Start",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
	
	INVINCIBLE		= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,		
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
		SOUND_PLAY0 = { 0.01, "MagManta_MagicAttackB01.ogg"},
	
	ATTACK_TIME0				= { 0.2, 0.231, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_UP"],
		
		DAMAGE = 
		{
			PHYSIC		= 1,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 2500,
		ARRANGED_FLY			= TRUE,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.2,		
	},
	

	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WALDO_TROCK_STONE_DYING",	},		-- 만약 않날아갔으면, 그냥 죽이자.
	},
}

function WALDO_TROCK_STONE_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )		-- 일정 시간 지난 후, 사망 처리 설정
	pNPCUnit:SetFlag_LUA( 0, false )	-- 사망 시간 지난 여부 설정
end

function WALDO_TROCK_STONE_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.25 ) then
		pNPCUnit:StateChange_LUA( "WALDO_TROCK_STONE_THROW", false )	
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_STONE_THROW = 
{
	ANIM_NAME					= "Stone_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	ANIM_SPEED					= 0.5,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
		
	PASSIVE_SPEED_X				= 1000,
	
	SPEED_Y						= 2000,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"WALDO_TROCK_STONE_WAIT",	"CT_WALDO_TROCK_STONE_WAIT"	},		
	},
	
	CT_WALDO_TROCK_STONE_WAIT = 
	{
		EVENT_INTERVAL_ID			= 0,
		FOOT_ON_LINE				= TRUE,
	},
	
	ATTACK_TIME0				= { 0.0, 100.0, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.52,
		},
		
		BACK_SPEED_X			= 1200,
		BACK_SPEED_Y			= 1200,
		ARRANGED_FLY			= TRUE,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,	

		RE_ATTACK				= TRUE,		
		HIT_GAP					= 0.1,		
	},
}

function WALDO_TROCK_STONE_THROW_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pEffectSet = pX2Game:GetEffectSet()		-- 돌 던지는 이펙트
	
	if nil ~= pEffectSet then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_Waldo_Trock_Stone_Magic_Attack_Fire", pNPCUnit )
	end

end

function WALDO_TROCK_STONE_THROW_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pEffectSet = pX2Game:GetEffectSet()		-- 땅에 박히는 이펙트
	
	if nil ~= pEffectSet then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_Waldo_Trock_Stone_Magic_Attack_Drop", pNPCUnit )
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_STONE_WAIT = 
{
	ANIM_NAME		= "Stone_wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= TRUE,
		
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
	NEVER_MOVE = TRUE,
		
	IMMADIATE_PACKET_SEND	= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_STONE_DAMAGE = 
{
	ANIM_NAME		= "Stone_Damage",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
		
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= 0,
	NEVER_MOVE = TRUE,
		
	IMMADIATE_PACKET_SEND	= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

WALDO_TROCK_STONE_DYING = 
{
	ANIM_NAME		= "Ston_Broken",
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

----------------------------------------------------------------------------------------------------------------------------------------

function WALDO_TROCK_STONE_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	local fIsDyingTime = pNPCUnit:GetFlag_LUA( 0 )
	
	if false == fIsDyingTime then
	
		local fElapsedTime = pNPCUnit:GetTimerElapsedTime( 0 )
	
		if 10.0 <= fElapsedTime then				-- 일정 시간 지난 후, 사망 처리 설정
			pNPCUnit:SetFlag_LUA( 0, true )		-- 사망 설정
			
			pNPCUnit:StateChange_LUA( "WALDO_TROCK_STONE_DYING", false )
		end
	
	end

end