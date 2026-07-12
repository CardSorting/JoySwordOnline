-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.5,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "Arme_Critical.dds",
	    "ColorBallGray.dds",
	    "Poison02.dds",
	    "Parasite01.tga",
	},
	
	READY_SOUND = 
	{
	 
	 "Parasite_House_Summon.ogg",
	 "Parasite_House_Damage.ogg",
	 "Parasite_House_Death.ogg",
	 "Parasite_House_WaitStart1.ogg",
	 "Parasite_House_WaitStart2.ogg",
	
	},
	READY_XSKIN_MESH = 
	{
		"Motion_Parasite.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Parasite_House.x",
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
	
	HEAD_BONE_NAME			= "Parasite_House1",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],

    DAMAGE_DOWN         = FALSE,
	
}

INIT_STATE = 
{
	{ STATE_NAME = "PARASITE_HOUSE_START",				LUA_STATE_START_FUNC = "PARASITE_HOUSE_START_STATE_START", },
	{ STATE_NAME = "PARASITE_HOUSE_WAIT",				},
	{ STATE_NAME = "PARASITE_HOUSE_RESPAWN",			LUA_FRAME_MOVE_FUNC = "PARASITE_HOUSE_RESPAWN_FRAME_MOVE", },
		
	--리액션 관련
	
	{ STATE_NAME = "PARASITE_HOUSE_DAMAGE",				},	
	{ STATE_NAME = "PARASITE_HOUSE_DYING",				LUA_STATE_START_FUNC = "PARASITE_HOUSE_DYING_STATE_START", },
	
	START_STATE					= "PARASITE_HOUSE_START",
	WAIT_STATE					= "PARASITE_HOUSE_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "PARASITE_HOUSE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "PARASITE_HOUSE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "PARASITE_HOUSE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "PARASITE_HOUSE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "PARASITE_HOUSE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "PARASITE_HOUSE_DAMAGE",
	FLY_DAMAGE_FRONT			= "PARASITE_HOUSE_DAMAGE",
	FLY_DAMAGE_BACK				= "PARASITE_HOUSE_DAMAGE",
	SMALL_DAMAGE_AIR			= "PARASITE_HOUSE_DAMAGE",	
	BIG_DAMAGE_AIR				= "PARASITE_HOUSE_DAMAGE",
	DOWN_DAMAGE_AIR				= "PARASITE_HOUSE_DAMAGE",
	UP_DAMAGE					= "PARASITE_HOUSE_DAMAGE",
	DAMAGE_REVENGE				= "PARASITE_HOUSE_DAMAGE",
	
	DYING_LAND_FRONT			= "PARASITE_HOUSE_DYING",
	DYING_LAND_BACK				= "PARASITE_HOUSE_DYING",
	DYING_SKY					= "PARASITE_HOUSE_DYING",

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


PARASITE_HOUSE_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.01, "Parasite_House_WaitStart1.ogg" },
    SOUND_PLAY1			= { 1.332, "Parasite_House_WaitStart2.ogg" },

	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 1.15, "Parasite_House_WaitStart01", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE},
		{ FALSE, 1.15, "Parasite_House_WaitStart02", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE},
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"PARASITE_HOUSE_WAIT",	},
	},
}

PARASITE_HOUSE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"PARASITE_HOUSE_RESPAWN",	"CF_PARASITE_HOUSE_RESPAWN",	},
	},
}

PARASITE_HOUSE_RESPAWN = 
{
	ANIM_NAME					= "Summon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	




	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	COOL_TIME					= 10,
	SUPER_ARMOR					= TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.01, "Parasite_House_Summon01", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE},
		{ FALSE, 0.02, "Parasite_House_Summon02", FALSE, "", TRUE, FALSE, 0, 0, 0, TRUE},
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PARASITE_HOUSE_WAIT",	},
	},
}

PARASITE_HOUSE_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

    SOUND_PLAY0			= { 0.285, "Parasite_House_Damage.ogg" },
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PARASITE_HOUSE_WAIT",		},
	},
}

PARASITE_HOUSE_DYING = 
{
	ANIM_NAME					= "Death",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.210, "Parasite_House_Death.ogg" },

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}



function CF_PARASITE_HOUSE_RESPAWN( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 1000 ) then
	    nParasite = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_PARASITE"] )
    		
	    --if nParasite < pNPCUnit:GetInt_LUA(0) then
	    if nParasite <= 2 then 
		    return true
	    else
		    return false
	    end
	else
	    return false
	end
end


function PARASITE_HOUSE_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetInt_LUA( 0, pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_PARASITE"] ) )
	
end

function PARASITE_HOUSE_RESPAWN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then		
	
        pNPCUnit:PlaySound_LUA( "Parasite_House_Summon.ogg" )
	
		bonePos = pNPCUnit:GetBonePos_LUA( "Parasite_House1" )	
	
		pos = pNPCUnit:GetPos()
		pos.y = pos.y + 120
		
		pMajorParticle = pX2Game:GetMajorParticle()
	
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLightVertical",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )			
		pos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 500, true, true )
		
		pParticle:SetBlackHolePosition( pos )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PARASITE"], pNPCUnit:GetHardLevel(), false, pos, true, 1.9, true, 0 )
		
		pX2Game:FlushCreateNPCReq()

		if pX2Game:IsHost() then 
			nowHP = pNPCUnit:GetNowHP()
			pNPCUnit:SetNowHP_LUA( nowHP - 100.0 )
		end
	end		
		
	
end

function PARASITE_HOUSE_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:PlaySound_LUA( "Down.ogg" )
	pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )

end

