-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/11/14 / 배찌(이벤트 몬스터)/
	 Wait, Damage, Dying 만 있음
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH	= 100.0,
	UNIT_HEIGHT	= 100.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE	= 2.5,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"bazzi.tga",
		"Ship_Object_Act.tga",
		"Belder_Village_Builld_weapon_wall_woodpan.tga",
		"Npc_All_Glaive_Ac.tga",
	},
	
	READY_SOUND = 
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_EVENT_BAZZI.x",
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
	{ STATE_NAME = "EVENT_BAZZI_WAIT",		},
	
	{ STATE_NAME = "EVENT_BAZZI_DAMAGE",	},
	{ STATE_NAME = "EVENT_BAZZI_DYING",		},
	
	START_STATE		= "EVENT_BAZZI_WAIT",
	WAIT_STATE		= "EVENT_BAZZI_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "EVENT_BAZZI_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "EVENT_BAZZI_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "EVENT_BAZZI_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "EVENT_BAZZI_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "EVENT_BAZZI_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "EVENT_BAZZI_DAMAGE",
	FLY_DAMAGE_FRONT			= "EVENT_BAZZI_DAMAGE",
	FLY_DAMAGE_BACK				= "EVENT_BAZZI_DAMAGE",
	SMALL_DAMAGE_AIR			= "EVENT_BAZZI_DAMAGE",	
	BIG_DAMAGE_AIR				= "EVENT_BAZZI_DAMAGE",
	DOWN_DAMAGE_AIR				= "EVENT_BAZZI_DAMAGE",
	UP_DAMAGE					= "EVENT_BAZZI_DAMAGE",
	DAMAGE_REVENGE				= "EVENT_BAZZI_DAMAGE",
	
	DYING_LAND_FRONT			= "EVENT_BAZZI_DYING",
	DYING_LAND_BACK				= "EVENT_BAZZI_DYING",
	DYING_SKY					= "EVENT_BAZZI_DYING",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 99999,
		TARGET_NEAR_RANGE			= 0,
		TARGET_RANGE				= 0,
		TARGET_LOST_RANGE			= 0,
		TARGET_SUCCESS_RATE			= 0,
		ATTACK_TARGET_RATE			= 0,
		PRESERVE_LAST_TARGET_RATE	= 0,
	},
}
--------------------------------------------------------------------------
EVENT_BAZZI_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"EVENT_BAZZI_WAIT", },
	},
}
--------------------------------------------------------------------------
EVENT_BAZZI_DAMAGE = 
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
	
	--SOUND_PLAY0 = { 0.01, "Squish_Hit02.wav" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"EVENT_BAZZI_WAIT", },
	},
}
--------------------------------------------------------------------------
EVENT_BAZZI_DYING = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,
	DYING_END	= TRUE,
	DYING_SPEED	= 1.0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	--SOUND_PLAY0 = { 0.01, "EVENT_BAZZI_Dying01.ogg" },
}