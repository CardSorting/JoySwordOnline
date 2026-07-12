-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	"Entangle_Screw_Start.ogg",
	"Entangle_Screw_Loop.ogg",
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "SI_A_LSR_ENTANGLE_Effect_Seed.x",
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
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "Spike_Leaf1",
	SHOW_ON_MINIMAP		= FALSE,

	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "ENTANGLE_TRAP_RENA_START",					},
	{ STATE_NAME = "ENTANGLE_TRAP_RENA_WAIT",					LUA_FRAME_MOVE_FUNC = "ENTANGLE_TRAP_RENA_WAIT_FRAME_MOVE",   },
	{ STATE_NAME = "ENTANGLE_TRAP_RENA_ATTACK_START",			LUA_STATE_START_FUNC = "ENTANGLE_TRAP_RENA_ATTACK_START_STATE_START", },
	{ STATE_NAME = "ENTANGLE_TRAP_RENA_ATTACK",					LUA_FRAME_MOVE_FUNC = "ENTANGLE_TRAP_RENA_ATTACK_FRAME_MOVE",	},
	{ STATE_NAME = "ENTANGLE_TRAP_RENA_DYING",					},


	START_STATE					= "ENTANGLE_TRAP_RENA_START",
	
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
	DAMAGE_REVENGE				= "ENTANGLE_TRAP_RENA_WAIT",
	
	DYING_LAND_FRONT			= "ENTANGLE_TRAP_RENA_DYING",
	DYING_LAND_BACK				= "ENTANGLE_TRAP_RENA_DYING",
	DYING_SKY					= "ENTANGLE_TRAP_RENA_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.3,		-- sec
		TARGET_NEAR_RANGE			= 300,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1200,	-- cm
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
	
}



ENTANGLE_TRAP_RENA_START = 
{
	INVISIBLE_TO_ENEMY = TRUE,

	ANIM_NAME					= "SI_A_LSR_ENTANGLE_Effect_Seed_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

 	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.3,
	
	INVINCIBLE					= { 0, 9999, },
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ENTANGLE_TRAP_RENA_WAIT",					},
	},
}


ENTANGLE_TRAP_RENA_WAIT = 
{
	INVISIBLE_TO_ENEMY = TRUE,

	ANIM_NAME					= "SI_A_LSR_ENTANGLE_Effect_Seed_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.1,
	
	INVINCIBLE					= { 0, 9999, },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ENTANGLE_TRAP_RENA_ATTACK_START",				"CT_ENTANGLE_TRAP_RENA_ATTACK_START",	},
	},
	
	CT_ENTANGLE_TRAP_RENA_ATTACK_START = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 80,
		RATE						= 100,
	},
}

----------------------------------------------------------
function ENTANGLE_TRAP_RENA_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetStateTime() > 10.0 then 
		pNPCUnit:SetNowHP_LUA( 0 )
	end
		
end



ENTANGLE_TRAP_RENA_ATTACK_START = 
{
	INVISIBLE_TO_ENEMY = FALSE,

	ANIM_NAME					= "SI_A_LSR_ENTANGLE_Effect_Seed_Screw_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.001, "Entangle_Screw_Start.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	INVINCIBLE					= { 0, 9999, },
		

	ATTACK_TIME0				= { 0.01, 0.1, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_FIRE"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 0.0,
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"ENTANGLE_TRAP_RENA_ATTACK",					},
	},
	
		
}

----------------------------------------------------------
function ENTANGLE_TRAP_RENA_ATTACK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA( 1 ) -- 공격중 임을 나타낸다
	
	--pNPCUnit:SetExtraDamageDataTime( pNPCUnit:GetEntangleTrapAttackDuration() )		-- 유닛을 붙들고 있을 시간을 지정
	local level = pNPCUnit:GetRealatedSkillLevel()
	pNPCUnit:SetBuffFactorToDamageData( BUFF_FACTOR_ID["BFI_DEBUFF_ENTANGLE"], level )
	--end
end










ENTANGLE_TRAP_RENA_ATTACK = 
{
	INVISIBLE_TO_ENEMY = FALSE,

	ANIM_NAME					= "SI_A_LSR_ENTANGLE_Effect_Seed_Screw_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

   SOUND_PLAY0			= { 0.001, "Entangle_Screw_Loop.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	INVINCIBLE					= { 0, 9999, },
		
}


----------------------------------------------------------
function ENTANGLE_TRAP_RENA_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	--local fDuration = ( pNPCUnit:GetRealatedSkillLevel() * 0.5 ) + 1.5
	local fDuration = ( pNPCUnit:GetRealatedSkillLevel() * 0.09 ) + 3.1

	if pNPCUnit:GetStateTime() > fDuration then 
		if pNPCUnit:GetNowHP() > 0 then
			pNPCUnit:SetNowHP_LUA( 0 )
		end
	end
		
end



ENTANGLE_TRAP_RENA_DYING = 
{
	SHOW						= FALSE,
	DYING_SPEED					= 2,

	ANIM_NAME					= "SI_A_LSR_ENTANGLE_Effect_Seed_Screw_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}






