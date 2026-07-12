-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 150.0,
	
	UNIT_SCALE = 1.0,
	
	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
    	"Nasod_Maker1.ogg",	
    	"Nasod_Maker2.ogg",	
    	"Nasod_Maker3.ogg",	
    	"Nasod_Maker4.ogg",	
    	"Nasod_Maker5.ogg",	
    	"Nasod_Maker6.ogg",	
	},
	
	READY_XSKIN_MESH = 
	{	    
	    "Motion_Wally9th_Type2.x",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Maker.x",
	--ADD_ROTATE_Y			= -90.0,
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
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 4000,
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
	
	HEAD_BONE_NAME			= "Bone02",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	
	DAMAGE_DOWN         = FALSE,


	

}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_MAKER_START",					LUA_STATE_START_FUNC = "NASOD_MAKER_START_STATE_START", },
	{ STATE_NAME = "NASOD_MAKER_WAIT",					},
	{ STATE_NAME = "NASOD_MAKER_WAIT_RESPAWN_READY",	},
	{ STATE_NAME = "NASOD_MAKER_RESPAWN",				LUA_FRAME_MOVE_FUNC = "NASOD_MAKER_RESPAWN_FRAME_MOVE", },
		
	--리액션 관련
	
	{ STATE_NAME = "NASOD_MAKER_DAMAGE",				},	
	{ STATE_NAME = "NASOD_MAKER_DYING",					LUA_STATE_START_FUNC = "NASOD_MAKER_DYING_STATE_START", },
	
	START_STATE					= "NASOD_MAKER_START",
	WAIT_STATE					= "NASOD_MAKER_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "NASOD_MAKER_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "NASOD_MAKER_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "NASOD_MAKER_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "NASOD_MAKER_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "NASOD_MAKER_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "NASOD_MAKER_DAMAGE",
	FLY_DAMAGE_FRONT			= "NASOD_MAKER_DAMAGE",
	FLY_DAMAGE_BACK				= "NASOD_MAKER_DAMAGE",
	SMALL_DAMAGE_AIR			= "NASOD_MAKER_DAMAGE",	
	BIG_DAMAGE_AIR				= "NASOD_MAKER_DAMAGE",
	DOWN_DAMAGE_AIR				= "NASOD_MAKER_DAMAGE",
	UP_DAMAGE					= "NASOD_MAKER_DAMAGE",
	DAMAGE_REVENGE				= "NASOD_MAKER_DAMAGE",
	
	DYING_LAND_FRONT			= "NASOD_MAKER_DYING",
	DYING_LAND_BACK				= "NASOD_MAKER_DYING",
	DYING_SKY					= "NASOD_MAKER_DYING",

	REVENGE_ATTACK				= "",	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 99999,	-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 0,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

NASOD_MAKER_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"NASOD_MAKER_WAIT",	},
	},
}


NASOD_MAKER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MAKER_WAIT_RESPAWN_READY",	"CT_NASOD_MAKER_WAIT_RESPAWN_READY",	},
	},
	
	CT_NASOD_MAKER_WAIT_RESPAWN_READY = 
	{
		STATE_TIME_OVER			= 3,
	},
}




NASOD_MAKER_WAIT_RESPAWN_READY = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"NASOD_MAKER_RESPAWN",		"CF_NASOD_MAKER_RESPAWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MAKER_WAIT",	},
	},
}



NASOD_MAKER_RESPAWN = 
{
	ANIM_NAME					= "Making",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.372, "Nasod_Maker1.ogg" },
    SOUND_PLAY1			= { 0.743, "Nasod_Maker2.ogg" },
    SOUND_PLAY2			= { 0.850, "Nasod_Maker3.ogg" },
    SOUND_PLAY3			= { 1.455, "Nasod_Maker4.ogg" },
    SOUND_PLAY4			= { 2.289, "Nasod_Maker3.ogg" },
    SOUND_PLAY5			= { 2.295, "Nasod_Maker5.ogg" },
    SOUND_PLAY6			= { 2.784, "Nasod_Maker6.ogg" },

	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	COOL_TIME					= 2,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MAKER_WAIT",	},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.8, "Flare_Nasod_Maker_Making01", FALSE, "", TRUE, FALSE, 0, 0, -100, },
		{ FALSE, 2.17, "Flare_Nasod_Maker_Making01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 0.01, "Flare_Nasod_Maker_Making02", FALSE, "", TRUE, FALSE, 130, 0, -30, },
		{ FALSE, 0.01, "Flare_Nasod_Maker_Making02", FALSE, "", TRUE, FALSE, 130, 0, -30, },
		{ FALSE, 0.01, "Flare_Nasod_Maker_Making02", FALSE, "", TRUE, FALSE, 0, 0, -30, },
		{ FALSE, 0.76, "Steam_Nasod_Maker_Making03", FALSE, "", TRUE, FALSE, 0, 0, -130, },
		{ FALSE, 2.2, "Steam_Nasod_Maker_Making03", FALSE, "", TRUE, FALSE, 0, 0, -130, },
		{ TRUE, 1.266, "LED_Nasod_Maker_Making04", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, },
		{ TRUE, 1.433, "LED_Nasod_Maker_Making05", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, },
		{ TRUE, 1.9, "LED_Nasod_Maker_Making06", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, },
		
	},	
}




NASOD_MAKER_DAMAGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MAKER_WAIT",		},
	},
}



NASOD_MAKER_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	RIGHT                       = TRUE,
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


function NASOD_MAKER_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
end


function CF_NASOD_MAKER_RESPAWN( pKTDXApp, pX2Game, pNPCUnit )
	
	nNPC = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"] )
		
	if nNPC < 5 then
		return true
	else
		return false
	end

    return true	
end

function NASOD_MAKER_RESPAWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then		
		pos = pNPCUnit:GetPos()
				
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2"], pNPCUnit:GetHardLevel(), TRUE, pos, pNPCUnit:GetIsRight(), 0, true  )		
		
	end
		
end


function NASOD_MAKER_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
    pNPCUnit:PlaySound_LUA( "Explosion.ogg" )    
    pMajorParticle = pX2Game:GetMajorParticle()
	
	vPos = pNPCUnit:GetPos()	
	vPos.y = vPos.y - 50
	vPos.z = vPos.z + 5
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeSmoke", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(40,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeTail", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactRingRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactSlashRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pNPCUnit:SetShow(false)    
end
