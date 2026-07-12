-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{	
    UNIT_WIDTH		= 0,
	UNIT_HEIGHT		= 0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	 
	"Peita_Crossbow_Start.ogg",
	"Peita_Crossbow_Attack.ogg",
	"Peita_Crossbow_Damage.ogg",
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Peita_Heart_Boss_Crossbow.x",
	ADD_ROTATE_Y			= -180.0,
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	HITTED_TYPE				= HITTED_TYPE["HTD_WOOD"],

	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "Peita_Heart_Boss_Crossbow_Trace.X",
		WEAPON_BONE_NAME	= "Dummy06",
			
		USE_SLASH_TRACE		= TRUE,
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	
	DAMAGE_DOWN				= FALSE,
    	DIE_FLY					= 0,
	NOT_EXTRA_DAMAGE    = TRUE,		
}

INIT_STATE = 
{
	{ STATE_NAME = "TRAP_CROSSBOW_START",			},	
	{ STATE_NAME = "TRAP_CROSSBOW_WAIT",			},
	
	{ STATE_NAME = "TRAP_CROSSBOW_ATTACK",			},
	
	--리액션 관련
	{ STATE_NAME = "TRAP_CROSSBOW_DAMAGE",			}, --LUA_STATE_START_FUNC = "TRAP_CROSSBOW_DAMAGE_START_STATE",		},
		
	START_STATE					= "TRAP_CROSSBOW_START",
	WAIT_STATE					= "TRAP_CROSSBOW_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "TRAP_CROSSBOW_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "TRAP_CROSSBOW_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "TRAP_CROSSBOW_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "TRAP_CROSSBOW_DAMAGE",
	
	DOWN_DAMAGE_LAND_FRONT		= "TRAP_CROSSBOW_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "TRAP_CROSSBOW_DAMAGE",
	
	FLY_DAMAGE_FRONT			= "TRAP_CROSSBOW_DAMAGE",
	FLY_DAMAGE_BACK				= "TRAP_CROSSBOW_DAMAGE",
	SMALL_DAMAGE_AIR			= "TRAP_CROSSBOW_DAMAGE",	
	BIG_DAMAGE_AIR				= "TRAP_CROSSBOW_DAMAGE",
	DOWN_DAMAGE_AIR				= "TRAP_CROSSBOW_DAMAGE",
	UP_DAMAGE					= "TRAP_CROSSBOW_DAMAGE",
	DAMAGE_REVENGE				= "TRAP_CROSSBOW_DAMAGE",	
	
	COMMON_FRAME_FUNC           = "TRAP_CROSSBOW_COMMON_FRAME_MOVE",
}

TRAP_CROSSBOW_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.143, "Peita_Crossbow_Start.ogg" },

	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"TRAP_CROSSBOW_WAIT",				},
	},
}

TRAP_CROSSBOW_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
	},
}

TRAP_CROSSBOW_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	SLASH_TRACE0				= { 0, 0.3, 0},

	SOUND_PLAY0					= { 0.110, "Peita_Crossbow_Attack.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TRAP_CROSSBOW_START",		"CT_TRAP_CROSSBOW_START"	},
	},
	
	CT_TRAP_CROSSBOW_START	=
	{
		STATE_TIME_OVER	= 7,
	},
	
	ATTACK_TIME0				= { 0.04, 4.9, },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ARROW_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		ATTACK_ALL_TEAM	= TRUE,
		
		DAMAGE = 
		{
			PHYSIC		= 1.5,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["WALK_SPEED"],
		BACK_SPEED_Y			= 0.0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}


----------------리액션--------------------------------------------------------------

TRAP_CROSSBOW_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	SOUND_PLAY0					= { 0.019, "Peita_Crossbow_Damage.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TRAP_CROSSBOW_WAIT",		},
	},
}


----------- condition function----------------------------------------------------------
----------------------------------------------------------------------------------------
function TRAP_CROSSBOW_DAMAGE_START_STATE( pKTDXApp, pX2Game, pNPCUnit )

	hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
	
	if hp < 5 then
		cHp = pNPCUnit:GetMaxHP()
        pNPCUnit:SetNowHP_LUA(cHp)
        
        pNPCUnit:StateChange_LUA("TRAP_CROSSBOW_ATTACK", true )
	end
	
end

function TRAP_CROSSBOW_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

   hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
	
	if hp < 5 then
		cHp = pNPCUnit:GetMaxHP()
        pNPCUnit:SetNowHP_LUA(cHp)
        
        pNPCUnit:StateChange_LUA("TRAP_CROSSBOW_ATTACK", true )
	end 
    
end