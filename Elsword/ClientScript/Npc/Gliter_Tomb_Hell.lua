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
		"NUI_GLITER_TOMBSTONE .tga",
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
	MOTION_FILE_NAME		= "Motion_GLITER_TOMBSTONE.x",
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
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
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
	{ STATE_NAME = "GLITER_TOMB_START",		LUA_STATE_START_FUNC = "GLITER_TOMB_START_STATE_START",	},
	{ STATE_NAME = "GLITER_TOMB_WAIT",		},
	{ STATE_NAME = "GLITER_TOMB_RESPAWN",	LUA_FRAME_MOVE_FUNC = "GLITER_TOMB_RESPAWN_FRAME_MOVE",	STATE_COOL_TIME = 6,	},
		
	--리액션 관련
	{ STATE_NAME = "GLITER_TOMB_DAMAGE",	},	
	{ STATE_NAME = "GLITER_TOMB_DYING",		},
	
	START_STATE	= "GLITER_TOMB_START",
	WAIT_STATE	= "GLITER_TOMB_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT	= "GLITER_TOMB_DAMAGE",
	SMALL_DAMAGE_LAND_BACK	= "GLITER_TOMB_DAMAGE",
	BIG_DAMAGE_LAND_FRONT	= "GLITER_TOMB_DAMAGE",
	BIG_DAMAGE_LAND_BACK	= "GLITER_TOMB_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT	= "GLITER_TOMB_DAMAGE",
	DOWN_DAMAGE_LAND_BACK	= "GLITER_TOMB_DAMAGE",
	FLY_DAMAGE_FRONT		= "GLITER_TOMB_DAMAGE",
	FLY_DAMAGE_BACK			= "GLITER_TOMB_DAMAGE",
	SMALL_DAMAGE_AIR		= "GLITER_TOMB_DAMAGE",	
	BIG_DAMAGE_AIR			= "GLITER_TOMB_DAMAGE",
	DOWN_DAMAGE_AIR			= "GLITER_TOMB_DAMAGE",
	UP_DAMAGE				= "GLITER_TOMB_DAMAGE",
	DAMAGE_REVENGE			= "GLITER_TOMB_DAMAGE",
	
	DYING_LAND_FRONT	= "GLITER_TOMB_DYING",
	DYING_LAND_BACK		= "GLITER_TOMB_DYING",
	DYING_SKY			= "GLITER_TOMB_DYING",

	REVENGE_ATTACK	= "",	
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
GLITER_TOMB_START = 
{
	ANIM_NAME		= "StartWait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	RIGHT			= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	
	SOUND_PLAY0              	= { 0.01, "GLITER_TOMBSTONE_StartWait01.ogg", },
	SOUND_PLAY1              	= { 1.15, "GLITER_TOMBSTONE_StartWait02.ogg", },
	
	EFFECT_SET_LIST =
	{
		"EffectSet_GILTER_TOMB_START", 0,
	},
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GLITER_TOMB_WAIT",	},
	},
}

function GLITER_TOMB_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_GLITER_ZOMBIE_HELL"] ) + 2 )
	local nBoss = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS_HELL"] )

	if nBoss > 0 then
		pNPCUnit:SetFlag_LUA( 0, true )
	end
end
--------------------------------------------------------------------------
GLITER_TOMB_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_GILTER_TOMB_WAIT", 0,
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"GLITER_TOMB_RESPAWN",	"CF_GLITER_TOMB_RESPAWN",	},
	},
}

function CF_GLITER_TOMB_RESPAWN( pKTDXApp, pX2Game, pNPCUnit )
	local nZombie = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_GLITER_ZOMBIE_HELL"] )
	local nCount = 23

	if true == pNPCUnit:GetFlag_LUA( 0 ) then
		nCount = 15
	end
	
	if nZombie < nCount then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
GLITER_TOMB_RESPAWN = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
		
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GLITER_TOMB_WAIT",	},
	},
}

-- function GLITER_TOMB_RESPAWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	-- if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then		
		-- local pos = pNPCUnit:GetPos()
		
		-- if true == pNPCUnit:GetFlag_LUA( 0 ) then
			-- pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_GLITER_ZOMBIE_HELL"], pNPCUnit:GetHardLevel(), FALSE, pos, pNPCUnit:GetIsRight(), 0, true  )
		-- else
			-- pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_GLITER_ZOMBIE_HELL"], pNPCUnit:GetHardLevel(), TRUE, pos, pNPCUnit:GetIsRight(), 0, false  )
		-- end
		
		-- if pX2Game:IsHost() then 
			-- local nowHP = pNPCUnit:GetNowHP()			
			-- local deHP = pNPCUnit:GetMaxHP() * 0.07
			-- pNPCUnit:SetNowHP_LUA( nowHP -  deHP )
		-- end
	-- end
		
-- end


function GLITER_TOMB_RESPAWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then		
		local pos = pNPCUnit:GetPos()
		
		if pX2Game:IsHost() then 
			local deHP = pNPCUnit:GetMaxHP() * 0.07
			
			if true == pNPCUnit:GetFlag_LUA( 0 ) then
				deHP = pNPCUnit:GetMaxHP() * 0.12
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_GLITER_ZOMBIE_HELL"], pNPCUnit:GetHardLevel(), FALSE, pos, pNPCUnit:GetIsRight(), 0, true  )
			else
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_GLITER_ZOMBIE_HELL"], pNPCUnit:GetHardLevel(), TRUE, pos, pNPCUnit:GetIsRight(), 0, false  )
			end
		
			local nowHP = pNPCUnit:GetNowHP()			
			pNPCUnit:SetNowHP_LUA( nowHP -  deHP )
		end
	end
		
end
--------------------------------------------------------------------------
GLITER_TOMB_DAMAGE =
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,	
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GLITER_TOMB_WAIT",	},
	},
}
--------------------------------------------------------------------------
GLITER_TOMB_DYING = 
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