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
	"Obelisk_Wait.ogg",
	"Obelisk_Damage.ogg",
	"Obelisk_Broken.ogg",
	
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Peita_Offerings_Alter_Obelisk.x",
	MOTION_MULTI_TEX_XET	= "Peita_Offering_Alter_Obelisk_Gate.XET",
	MULTI_TEX_SPEED			= { 2, 0, 0.5, },
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 0,
	MAX_G_SPEED			= 0,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}

INIT_COMPONENT = 
{
	MAX_HP				= 1000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	
	--HEAD_BONE_NAME			= "Bip01_Head",
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	NOT_EXTRA_DAMAGE	= TRUE,

}

INIT_STATE = 
{
	{ STATE_NAME = "PEITA_OFFERINGS_ALTER_OBELISK_WAIT_INVINCIBLE",		},
	{ STATE_NAME = "PEITA_OFFERINGS_ALTER_OBELISK_WAIT",				LUA_STATE_START_FUNC = "PEITA_OFFERINGS_ALTER_OBELISK_WAIT_START_STATE",					},	
	
	--리액션 관련
	{ STATE_NAME = "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",				LUA_STATE_START_FUNC = "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE_START_STATE",                  },
	{ STATE_NAME = "PEITA_OFFERINGS_ALTER_OBELISK_BROKEN",				LUA_STATE_START_FUNC = "PEITA_OFFERINGS_ALTER_OBELISK_BROKEN_START_STATE",                  },
	
	START_STATE					= "PEITA_OFFERINGS_ALTER_OBELISK_WAIT_INVINCIBLE",
	WAIT_STATE					= "PEITA_OFFERINGS_ALTER_OBELISK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	FLY_DAMAGE_FRONT			= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	FLY_DAMAGE_BACK				= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	SMALL_DAMAGE_AIR			= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",	
	BIG_DAMAGE_AIR				= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	DOWN_DAMAGE_AIR				= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	UP_DAMAGE					= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	DAMAGE_REVENGE				= "PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE",
	
	DYING_LAND_FRONT			= "PEITA_OFFERINGS_ALTER_OBELISK_BROKEN",
	DYING_LAND_BACK				= "PEITA_OFFERINGS_ALTER_OBELISK_BROKEN",
	DYING_SKY					= "PEITA_OFFERINGS_ALTER_OBELISK_BROKEN",

	REVENGE_ATTACK				= "",	
}

PEITA_OFFERINGS_ALTER_OBELISK_WAIT_INVINCIBLE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SOUND_PLAY0					= { 0.01, "Obelisk_Wait.ogg" },
	
	INVINCIBLE					= { 0, 100, },
	
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"PEITA_OFFERINGS_ALTER_OBELISK_WAIT",			"CF_PEITA_OFFERINGS_ALTER_OBELISK_WAIT",	},
	},
}

PEITA_OFFERINGS_ALTER_OBELISK_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	--CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SOUND_PLAY0					= { 0.01, "Obelisk_Wait.ogg" },

	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{
	},
}

PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	--CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SOUND_PLAY0					= { 0.01, "Obelisk_Damage.ogg" },

	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PEITA_OFFERINGS_ALTER_OBELISK_WAIT",												},
	},
}

PEITA_OFFERINGS_ALTER_OBELISK_BROKEN = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_SPEED					= 0.5,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.01, "Obelisk_Broken.ogg" },

	
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	








--------------------------------------------------------------------
--------------------------------------------------------------------

function CF_PEITA_OFFERINGS_ALTER_OBELISK_WAIT( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:LiveActiveNPCNum() == 0 then
		return true
	else
		return false
	end
end

-------------------------function------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------


function PEITA_OFFERINGS_ALTER_OBELISK_WAIT_START_STATE( pKTDXApp, pX2Game, pNPCUnit )

	pUnitNormal = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"] )
    if pUnitNormal ~= nil then
        --bRight = pUnitNormal:GetIsRight()            		        
        --vPos = pUnitNormal:GetPos()                                
        --pUnitNormal:SetPosition( vPos , bRight)
        
        pUnitNormal:StateChange_LUA("PEITA_OFFERINGS_ALTER_OBELISK_POST_WAIT", true)
    end
    
	pXSkinAnim = pNPCUnit:GetXSkinAnim()
	pXSkinAnim:SetUseTex( 2, false )
end

function PEITA_OFFERINGS_ALTER_OBELISK_DAMAGE_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
    
    pUnitNormal = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"] )
    if pUnitNormal ~= nil then
        pUnitNormal:StateChange_LUA("PEITA_OFFERINGS_ALTER_OBELISK_POST_DAMAGE", true)           
    end
end

function PEITA_OFFERINGS_ALTER_OBELISK_BROKEN_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
    
    pUnitNormal = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"] )
    if pUnitNormal ~= nil then
		pUnitNormal:StateChange_LUA("PEITA_OFFERINGS_ALTER_OBELISK_POST_BROKEN", true)           
        --pUnitNormal:SetNowHP_LUA(0)
    end
    
end

