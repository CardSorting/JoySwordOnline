-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH	= 250.0,
	UNIT_HEIGHT	= 100.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE	= 1.1,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Peita_Offerings_Alter_Stone01.tga",
		"event_APINK_Archangel_stoneLight.dds",
		"event_APINK_Archangel_stoneLine.dds",
		
	},
	
	READY_XMESH = 
	{
		"event_APINK_Archangel_stoneLight.Y",
		"event_APINK_Archangel_stoneLine.Y",
	},
	
	READY_SOUND = 
	{
	"Voice_Naeun_005.ogg",
	"Voice_Naeun_006.ogg",
	
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_EVENT_APINK_ARCHANGEL_LOCKUP.x",
}
--------------------------------------------------------------------------
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
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP				= 10000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME		= "Bip01_Head",
	HYPER_MODE_COUNT	= 0,
		
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	SKY_DIE				= TRUE,
	DIE_FLY				= FALSE,
	CAN_BE_STEPPED_ON	= TRUE,
	OUT_LINE_WIDTH_SCALE	= 0.3,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "EVENT_APINK_LOCKUP_START",	LUA_STATE_START_FUNC = "EVENT_APINK_LOCKUP_START_START_FUNC",},
	{ STATE_NAME = "EVENT_APINK_LOCKUP_WAIT",	},
	{ STATE_NAME = "EVENT_APINK_LOCKUP_TALK",   LUA_STATE_START_FUNC = "EVENT_APINK_LOCKUP_TALK_START_FUNC",},
	
	{ STATE_NAME = "EVENT_APINK_LOCKUP_DAMAGE",	},
	{ STATE_NAME = "EVENT_APINK_LOCKUP_DYING",	LUA_FRAME_MOVE_FUNC = "EVENT_APINK_LOCKUP_DYING_FRAME_MOVE_FUNC",},
	
	START_STATE		= "EVENT_APINK_LOCKUP_START",
	WAIT_STATE		= "EVENT_APINK_LOCKUP_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "EVENT_APINK_LOCKUP_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "EVENT_APINK_LOCKUP_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "EVENT_APINK_LOCKUP_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "EVENT_APINK_LOCKUP_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "EVENT_APINK_LOCKUP_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "EVENT_APINK_LOCKUP_DAMAGE",
	FLY_DAMAGE_FRONT			= "EVENT_APINK_LOCKUP_DAMAGE",
	FLY_DAMAGE_BACK				= "EVENT_APINK_LOCKUP_DAMAGE",
	SMALL_DAMAGE_AIR			= "EVENT_APINK_LOCKUP_DAMAGE",	
	BIG_DAMAGE_AIR				= "EVENT_APINK_LOCKUP_DAMAGE",
	DOWN_DAMAGE_AIR				= "EVENT_APINK_LOCKUP_DAMAGE",
	UP_DAMAGE					= "EVENT_APINK_LOCKUP_DAMAGE",
	DAMAGE_REVENGE				= "EVENT_APINK_LOCKUP_DAMAGE",
	
	DYING_LAND_FRONT			= "EVENT_APINK_LOCKUP_DYING",
	DYING_LAND_BACK				= "EVENT_APINK_LOCKUP_DYING",
	DYING_SKY					= "EVENT_APINK_LOCKUP_DYING",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,
		TARGET_NEAR_RANGE			= 0,
		TARGET_RANGE				= 0,
		TARGET_LOST_RANGE			= 0,
		TARGET_SUCCESS_RATE			= 0,
		ATTACK_TARGET_RATE			= 100,
		PRESERVE_LAST_TARGET_RATE	= 0,
	},
}
--------------------------------------------------------------------------
EVENT_APINK_LOCKUP_START = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"EVENT_APINK_LOCKUP_WAIT", },
	},
	
	DELETE_EFFECT_SET_ON_DIE = TRUE,

	EFFECT_SET_LIST = 
	{
		"EffectSet_Apink_Lockup_Wait", 0,
	},
	
}
EVENT_APINK_LOCKUP_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"EVENT_APINK_LOCKUP_WAIT", },
	},
	
}
EVENT_APINK_LOCKUP_TALK =
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	SOUND_PLAY0 				= { 0.2, "Voice_Naeun_005.ogg" },
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"EVENT_APINK_LOCKUP_WAIT", },
	},
}
--------------------------------------------------------------------------
EVENT_APINK_LOCKUP_DAMAGE = 
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"EVENT_APINK_LOCKUP_TALK",		"CT_EVENT_APINK_LOCKUP_TALK",	}, 
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EVENT_APINK_LOCKUP_WAIT", },
	},
	
	CT_EVENT_APINK_LOCKUP_TALK =
	{
		FLAG_TRUE			= 0,
	},
}
--------------------------------------------------------------------------
EVENT_APINK_LOCKUP_DYING = 
{
	ANIM_NAME		= "End",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	SOUND_PLAY0 				= { 1.4, "Voice_Naeun_006.ogg" },
	SOUND_PLAY1 				= { 0.02, "HENIR_Gate_Broken.ogg" },
	SOUND_PLAY2 				= { 1.8, "Mark_Success.ogg" },
	SOUND_PLAY3 				= { 0.8, "Nasod_Element_WaitStart1.ogg" },
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,
	DYING_END	= TRUE,
	DYING_SPEED	= 1.0,
		
	EFFECT_SET_LIST = 
	{
		"EffectSet_Apink_Lockup_End", 0,
	},
	IMMADIATE_PACKET_SEND	= TRUE,
}

function EVENT_APINK_LOCKUP_DYING_FRAME_MOVE_FUNC( pKTDApp, pX2Game, pNPCUnit )	
	if nil ~= pNPCUnit then
		if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
			pNPCUnit:SetCoolTimeSummonCard_LUA()
		elseif pNPCUnit:AnimEventTimer_LUA( 3.17 ) then
			pNPCUnit:CreateAllyNpcByMonster_LUA( NPC_UNIT_ID["NUI_APINK_ANGEL_07_BOSS"])
		end
	end
end


function EVENT_APINK_LOCKUP_START_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA( 0, true )
end

function EVENT_APINK_LOCKUP_TALK_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA( 0, false )
end