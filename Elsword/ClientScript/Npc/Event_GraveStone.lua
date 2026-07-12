-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/8/23 / 글리터 묘, 벨더 비밀 던전 몬스터/
	 소환
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Motion_RIP_Halloween.tga",
	},
	
	READY_SOUND = 
	{
	"GLITER_TOMBSTONE_Broken01.ogg",
	"GLITER_TOMBSTONE_StartWait01.ogg",
	"GLITER_TOMBSTONE_StartWait02.ogg",
	"GLITER_TOMBSTONE_Respawn01.ogg",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_RIP_Halloween.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 4000,
	MAX_G_SPEED		= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP				= 1250,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "Dummy01",

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	DIE_FLY	= FALSE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_WOOD"],
	DAMAGE_DOWN         = FALSE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "GRAVE_STONE_START_READY",	LUA_STATE_START_FUNC = "GRAVE_STONE_START_STATE_START_READY",	},
	{ STATE_NAME = "GRAVE_STONE_START",		LUA_STATE_START_FUNC = "GRAVE_STONE_START_STATE_START",	},
	{ STATE_NAME = "GRAVE_STONE_WAIT",		},
	{ STATE_NAME = "GRAVE_STONE_RESPAWN",	LUA_FRAME_MOVE_FUNC = "GRAVE_STONE_RESPAWN_FRAME_MOVE",	STATE_COOL_TIME = 5,	},
		
	--리액션 관련
	{ STATE_NAME = "GRAVE_STONE_DAMAGE",	},	
	{ STATE_NAME = "GRAVE_STONE_DYING",		},
	
	START_STATE	= "GRAVE_STONE_START_READY",
	WAIT_STATE	= "GRAVE_STONE_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT	= "GRAVE_STONE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK	= "GRAVE_STONE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT	= "GRAVE_STONE_DAMAGE",
	BIG_DAMAGE_LAND_BACK	= "GRAVE_STONE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT	= "GRAVE_STONE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK	= "GRAVE_STONE_DAMAGE",
	FLY_DAMAGE_FRONT		= "GRAVE_STONE_DAMAGE",
	FLY_DAMAGE_BACK			= "GRAVE_STONE_DAMAGE",
	SMALL_DAMAGE_AIR		= "GRAVE_STONE_DAMAGE",	
	BIG_DAMAGE_AIR			= "GRAVE_STONE_DAMAGE",
	DOWN_DAMAGE_AIR			= "GRAVE_STONE_DAMAGE",
	UP_DAMAGE				= "GRAVE_STONE_DAMAGE",
	DAMAGE_REVENGE			= "GRAVE_STONE_DAMAGE",
	
	DYING_LAND_FRONT	= "GRAVE_STONE_DYING",
	DYING_LAND_BACK		= "GRAVE_STONE_DYING",
	DYING_SKY			= "GRAVE_STONE_DYING",

	REVENGE_ATTACK	= "",	
	COMMON_FRAME_FUNC           = "GRAVE_STONE_COMMON_FRAME_FUNC",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 	= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL		= 99999,
		TARGET_NEAR_RANGE	= 0,
		TARGET_RANGE		= 0,
		TARGET_LOST_RANGE	= 0,
		TARGET_SUCCESS_RATE	= 0,
		ATTACK_TARGET_RATE	= 0,
		PRESERVE_LAST_TARGET_RATE	= 0,
	},
}
--------------------------------------------------------------------------
GRAVE_STONE_START_READY = 
{
	ANIM_NAME		= "StartReady",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	RIGHT			= TRUE,
	
	ANIM_SPEED		= 0.56,

	INVINCIBLE	= { 0, 100, }, 		

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	VIEW_TARGET				= TRUE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GRAVE_STONE_START",	},
	},
}
GRAVE_STONE_START = 
{
	ANIM_NAME		= "StartWait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	RIGHT			= TRUE,

	INVINCIBLE	= { 0, 100, }, 		

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	VIEW_TARGET				= TRUE,

	SOUND_PLAY0              	= { 0.01, "GLITER_TOMBSTONE_StartWait01.ogg", },
	SOUND_PLAY1              	= { 1.15, "GLITER_TOMBSTONE_StartWait02.ogg", },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GRAVE_STONE_WAIT",	},
	},
}

function GRAVE_STONE_START_STATE_START_READY( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetShowGage( false )
end

function GRAVE_STONE_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetShowGage( false )
	pNPCUnit:SetInt_LUA( 0, 0 )
	local nBoss = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"] )

	if nBoss > 0 then
		pNPCUnit:SetFlag_LUA( 0, true )
	end
end
--------------------------------------------------------------------------
GRAVE_STONE_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"GRAVE_STONE_RESPAWN",	"CF_GRAVE_STONE_RESPAWN",	},
	},
}

function CF_GRAVE_STONE_RESPAWN( pKTDXApp, pX2Game, pNPCUnit )
	local nZombie = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_EVENT_HALLOWEEN_LINKER"] )
	local nCount = 6
	
	if nZombie < nCount then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
GRAVE_STONE_RESPAWN = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
		
	INVINCIBLE	= { 0, 100, }, 		

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	COOL_TIME	= 2,
	SUPER_ARMOR	= TRUE,
	
	SOUND_PLAY0              	= { 0.01, "GLITER_TOMBSTONE_Respawn01.ogg", },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_GILTER_TOMB_SUMMON", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GRAVE_STONE_WAIT",	},
	},
}

function GRAVE_STONE_RESPAWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then		
		local pos = pNPCUnit:GetPos()
		
		if pX2Game:IsHost() then 
			pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_EVENT_HALLOWEEN_LINKER"], pNPCUnit:GetHardLevel(), TRUE, pos, pNPCUnit:GetIsRight(), 0, false  )
		end
	end
end
--------------------------------------------------------------------------
GRAVE_STONE_DAMAGE =
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE	= { 0, 100, }, 		

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GRAVE_STONE_WAIT",	},
	},
}
--------------------------------------------------------------------------
GRAVE_STONE_DYING = 
{
	ANIM_NAME	= "Dying",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0              	= { 0.01, "GLITER_TOMBSTONE_Dying01.ogg", },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_GILTER_TOMB_DYING", 0,
	},
}
--------------------------------------------------------------------------
function GRAVE_STONE_COMMON_FRAME_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA( 0 ) == 2 and pNPCUnit:GetNowStateID() ~= pNPCUnit:GetStateID_LUA( "GRAVE_STONE_DYING" ) then
		pNPCUnit:StateChange_LUA( "GRAVE_STONE_DYING", false )
	end
end