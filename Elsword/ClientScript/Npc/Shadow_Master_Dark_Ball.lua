-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2010/1/20 / 섀도우 마스터 스킬, 하멜 던전_1 보스/
	 DarkBall
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
      "Hit_LightBall.ogg",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "DarkBall_COLLISION_SPHERE.X",
}
--------------------------------------------------------------------------
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
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,

	NOT_EXTRA_DAMAGE	= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "SHADOW_MASTER_DARK_BALL_START",	LUA_STATE_START_FUNC = "SHADOW_MASTER_DARK_BALL_START_STATE",	},
	{ STATE_NAME = "SHADOW_MASTER_DARK_BALL_WAIT",	},
	
	{ STATE_NAME = "SHADOW_MASTER_DARK_BALL_BOMB",	},
	{ STATE_NAME = "SHADOW_MASTER_DARK_BALL_DYING",	},
	{ STATE_NAME = "SHADOW_MASTER_DARK_BALL_DAMAGE",},
	
	START_STATE		= "SHADOW_MASTER_DARK_BALL_START",
	
	SMALL_DAMAGE_LAND_FRONT	= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK	= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	BIG_DAMAGE_LAND_FRONT	= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	BIG_DAMAGE_LAND_BACK	= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT	= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	DOWN_DAMAGE_LAND_BACK	= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	FLY_DAMAGE_FRONT		= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	FLY_DAMAGE_BACK			= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	SMALL_DAMAGE_AIR		= "SHADOW_MASTER_DARK_BALL_DAMAGE",	
	BIG_DAMAGE_AIR			= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	DOWN_DAMAGE_AIR			= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	UP_DAMAGE				= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	DAMAGE_REVENGE			= "SHADOW_MASTER_DARK_BALL_DAMAGE",
	
	WAIT_STATES                 = { "SHADOW_MASTER_DARK_BALL_WAIT", },	
	
	DYING_LAND_FRONT	= "SHADOW_MASTER_DARK_BALL_DYING",
	DYING_LAND_BACK		= "SHADOW_MASTER_DARK_BALL_DYING",
	DYING_SKY			= "SHADOW_MASTER_DARK_BALL_DYING",

	REVENGE_ATTACK		= "",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.3,	-- sec
		TARGET_NEAR_RANGE			= 300,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,	-- cm
		TARGET_LOST_RANGE			= 1200,	-- cm
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 0,	-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,	-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
	
}
--------------------------------------------------------------------------
SHADOW_MASTER_DARK_BALL_START = 
{
	ANIM_NAME	= "Normal",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	

    --SOUND_PLAY0	= { 0.05, ".ogg" },
    
    SPEED_X	= 0,
	SPEED_Y	= 0,

	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
    
    EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Master_Special_Attack_B_Ready", 0,
	},
	
	DELETE_EFFECT_SET_ON_DIE = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_DARK_BALL_WAIT"	},
	},
}
--------------------------------------------------------------------------
SHADOW_MASTER_DARK_BALL_WAIT = 
{
	ANIM_NAME	= "Normal",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	

    --SOUND_PLAY0	= { 0.001, "SHADOW_MASTER_DARK_BALL_Loop.ogg" },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"SHADOW_MASTER_DARK_BALL_BOMB",	"CF_SHADOW_MASTER_DARK_BALL_BOMB"	},
	},
}
--------------------------------------------------------------------------
function CF_SHADOW_MASTER_DARK_BALL_BOMB( pKTDXApp, pX2Game, pNPCUnit )
	local fElapsedTime = 5.0
	if fElapsedTime <= pNPCUnit:GetTimerElapsedTime( 0 ) then
		return true
	else
		return false
	end	
end
--------------------------------------------------------------------------
SHADOW_MASTER_DARK_BALL_DAMAGE = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	

    SOUND_PLAY0		= { 0.001, "Hit_LightBall.ogg" },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"SHADOW_MASTER_DARK_BALL_BOMB",	"CF_SHADOW_MASTER_DARK_BALL_BOMB"	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_MASTER_DARK_BALL_WAIT"	},
	},
}
--------------------------------------------------------------------------
SHADOW_MASTER_DARK_BALL_BOMB = 
{	
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	DYING_END	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Shadow_Master_Special_Attack_B_Explosion", 0,
	},
}
--------------------------------------------------------------------------
SHADOW_MASTER_DARK_BALL_DYING = 
{
	ANIM_NAME		= "Normal",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, },
	
	SOUND_PLAY0	= { 0.001, "Explosion.ogg" },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
function SHADOW_MASTER_DARK_BALL_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetFlag_LUA( 0, false )
end