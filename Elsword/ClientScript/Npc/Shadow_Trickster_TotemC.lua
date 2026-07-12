-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/3/22 / 쉐도우 트릭스터 기술, 하멜 던전_5 일반 몬스터/
	 Special_Attack_C(파이어볼 발사)
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	RENDER_PARAM = RENDER_TYPE["RT_REAL_COLOR"],
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"ST_DarkFireBall_Center.tga",
	},
	
	READY_SOUND = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
		"ST_DarkFireBall_Dummy.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_ST_TotemC.x",
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
	
	DIE_FLY 			= FALSE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "SHADOW_TRICKSTER_TOTEM_C_START",	},
	{ STATE_NAME = "SHADOW_TRICKSTER_TOTEM_C_WAIT",		},
	
	{ STATE_NAME = "SHADOW_TRICKSTER_TOTEM_C_ATTACK",	LUA_STATE_START_FUNC = "SHADOW_TRICKSTER_TOTEM_C_BUFF_STATE",
														LUA_FRAME_MOVE_FUNC = "SHADOW_TRICKSTER_TOTEM_C_ATTACK_FRAME_MOVE",	STATE_COOL_TIME = 5,	},
	{ STATE_NAME = "SHADOW_TRICKSTER_TOTEM_C_DYING",	},
	{ STATE_NAME = "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",},
	
	START_STATE		= "SHADOW_TRICKSTER_TOTEM_C_START",
	
	SMALL_DAMAGE_LAND_FRONT	= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	SMALL_DAMAGE_LAND_BACK	= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	BIG_DAMAGE_LAND_FRONT	= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	BIG_DAMAGE_LAND_BACK	= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT	= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	DOWN_DAMAGE_LAND_BACK	= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	FLY_DAMAGE_FRONT		= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	FLY_DAMAGE_BACK			= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	SMALL_DAMAGE_AIR		= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",	
	BIG_DAMAGE_AIR			= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	DOWN_DAMAGE_AIR			= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	UP_DAMAGE				= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	DAMAGE_REVENGE			= "SHADOW_TRICKSTER_TOTEM_C_DAMAGE",
	
	WAIT_STATES                 = { "SHADOW_TRICKSTER_TOTEM_C_WAIT",	 },	
	
	DYING_LAND_FRONT	= "SHADOW_TRICKSTER_TOTEM_C_DYING",
	DYING_LAND_BACK		= "SHADOW_TRICKSTER_TOTEM_C_DYING",
	DYING_SKY			= "SHADOW_TRICKSTER_TOTEM_C_DYING",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.3,	-- sec
		TARGET_NEAR_RANGE			= 500,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,	-- cm
		TARGET_LOST_RANGE			= 1200,	-- cm
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 0,	-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,	-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}
--------------------------------------------------------------------------
SHADOW_TRICKSTER_TOTEM_C_START = 
{
	ANIM_NAME	= "WaitStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
    
    SPEED_X	= 0,
	SPEED_Y	= 0,

	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= TRUE,
    
    EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_TRICKSTER_TOTEM_C_WAIT"	},
	},
}
--------------------------------------------------------------------------
SHADOW_TRICKSTER_TOTEM_C_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	SUPER_ARMOR			= TRUE,
	SUPER_ARMOR_NOT_RED = TRUE,
	LAND_CONNECT		= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	

    SPEED_X	= 0,
	SPEED_Y	= 0,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"SHADOW_TRICKSTER_TOTEM_C_ATTACK",	"CT_SHADOW_TRICKSTER_TOTEM_C_ATTACK"	},
	},
	
	CT_SHADOW_TRICKSTER_TOTEM_C_ATTACK =
	{
		RATE	= 70,
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR	= 1000,
	},
}
--------------------------------------------------------------------------
SHADOW_TRICKSTER_TOTEM_C_DAMAGE = 
{
	ANIM_NAME		= "Damage",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	

    SPEED_X	= 0,
	SPEED_Y	= 0,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_TRICKSTER_TOTEM_C_WAIT"	},
	},
}
--------------------------------------------------------------------------
SHADOW_TRICKSTER_TOTEM_C_ATTACK = 
{	
	ANIM_NAME		= "Attack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Shadow_Trickster_Special_Attack_C", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SHADOW_TRICKSTER_TOTEM_C_WAIT"	},
	},
}
--------------------------------------------------------------------------
SHADOW_TRICKSTER_TOTEM_C_DYING = 
{
	ANIM_NAME		= "Broken",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE			= TRUE,
	ALLOW_DIR_CHANGE	= FALSE,
	VIEW_TARGET			= FALSE,
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
function SHADOW_TRICKSTER_TOTEM_C_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.706 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "TOTEM_GUIDED_FIREBALL", pNPCUnit:GetBonePos_LUA( "Totem_Dummy02" ), pos.y )
		
		if pCEffect ~= nil then
			pNPCUnit:SetLockOnTarget( pCEffect )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.918 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "TOTEM_GUIDED_FIREBALL", pNPCUnit:GetBonePos_LUA( "Totem_Dummy02" ), pos.y )
		
		if pCEffect ~= nil then
			pNPCUnit:SetLockOnTarget( pCEffect )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 2.848 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "TOTEM_GUIDED_FIREBALL", pNPCUnit:GetBonePos_LUA( "Totem_Dummy02" ), pos.y )
		
		if pCEffect ~= nil then
			pNPCUnit:SetLockOnTarget( pCEffect )
		end
	end
end
--------------------------------------------------------------------------
function SHADOW_TRICKSTER_TOTEM_C_BUFF_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER"] )
	if pUnit == nil then
		pNPCUnit:StateChange_LUA( "SHADOW_TRICKSTER_TOTEM_C_DYING" )
	end
end