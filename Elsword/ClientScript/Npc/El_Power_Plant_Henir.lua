-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 400.0,
	
	UNIT_SCALE = 1.0,
	
	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
	ALPHA_BLEND		= TRUE,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "El_Power_Spark01.dds",
	    "El_Power_Spark02.dds",
	    "Particle_Blur.dds",
	    "Explosion_Fire01.dds",
	    "Nasod_King_sanding.dds",
	},
	
	READY_SOUND = 
	{
	    "El_PowerPlant_Down1.ogg",
	    "El_PowerPlant_Down2.ogg",
	    "El_PowerPlant_Down3.ogg",
	    "El_PowerPlant_Up1.ogg",
	    "El_PowerPlant_Up2.ogg",
	    "El_PowerPlant_Up3.ogg",
	    "El_PowerPlant_Spark.ogg",
		"Smoke1.ogg",
		"Smoke2.ogg",
	    "ExplosionCombo1.ogg",
	    "ExplosionCombo2.ogg",
	    "ExplosionCombo3.ogg",
	
	},
	
	READY_XMESH = 
	{
	    "Altera_core_Boss_DestroySand1.Y",
    },	    
	
	READY_XSKIN_MESH = 
	{	    
	    "Altera_core_Boss_DestroyRock1.X",	    
	},	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_El_Power_Plant.x",
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
	
	HEAD_BONE_NAME			= "COLLISION_SPHERE1",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_METAL"],
	
	LIGHT_FLOW          = "Line",	
	FALL_DOWN			= FALSE,
	
    DAMAGE_DOWN         = FALSE,

	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "NUI_King_Nasod",	
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_King_Nasod.dds",	
	
	DIE_FLY             = 0,	
			
}

INIT_STATE = 
{
	{ STATE_NAME = "EL_POWER_PLANT_START",					LUA_STATE_START_FUNC = "EL_POWER_PLANT_START_STATE_START", },
	{ STATE_NAME = "EL_POWER_PLANT_WAIT_UP",				LUA_STATE_START_FUNC = "EL_POWER_PLANT_WAIT_UP_STATE_START", },
	{ STATE_NAME = "EL_POWER_PLANT_WAIT_DOWN",				},
	{ STATE_NAME = "EL_POWER_PLANT_UP",					    LUA_STATE_START_FUNC = "EL_POWER_PLANT_UP_STATE_START", },
	{ STATE_NAME = "EL_POWER_PLANT_DOWN",					LUA_STATE_START_FUNC = "EL_POWER_PLANT_DOWN_STATE_START", },
		
	--리액션 관련
	
	{ STATE_NAME = "EL_POWER_PLANT_DAMAGE",				},	
	{ STATE_NAME = "EL_POWER_PLANT_DYING",					LUA_STATE_START_FUNC = "EL_POWER_PLANT_DYING_STATE_START",
	                                                        LUA_FRAME_MOVE_FUNC = "EL_POWER_PLANT_DYING_FRAME_MOVE", },
		
	
	START_STATE					= "EL_POWER_PLANT_START",
	--WAIT_STATE					= "EL_POWER_PLANT_WAIT",
	-- robobeg :EL_POWER_PLANT_WAIT 상태가 없다
	WAIT_STATE					= "EL_POWER_PLANT_WAIT_DOWN",
	
	SMALL_DAMAGE_LAND_FRONT		= "EL_POWER_PLANT_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "EL_POWER_PLANT_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "EL_POWER_PLANT_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "EL_POWER_PLANT_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "EL_POWER_PLANT_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "EL_POWER_PLANT_DAMAGE",
	FLY_DAMAGE_FRONT			= "EL_POWER_PLANT_DAMAGE",
	FLY_DAMAGE_BACK				= "EL_POWER_PLANT_DAMAGE",
	SMALL_DAMAGE_AIR			= "EL_POWER_PLANT_DAMAGE",	
	BIG_DAMAGE_AIR				= "EL_POWER_PLANT_DAMAGE",
	DOWN_DAMAGE_AIR				= "EL_POWER_PLANT_DAMAGE",
	UP_DAMAGE					= "EL_POWER_PLANT_DAMAGE",
	DAMAGE_REVENGE				= "EL_POWER_PLANT_DAMAGE",
	
	WAIT_STATES                 = { "EL_POWER_PLANT_WAIT_UP", },	
	
	DYING_LAND_FRONT			= "EL_POWER_PLANT_DYING",
	DYING_LAND_BACK				= "EL_POWER_PLANT_DYING",
	DYING_SKY					= "EL_POWER_PLANT_DYING",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "EL_POWER_PLANT_COMMON_FRAME_MOVE",
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

EL_POWER_PLANT_START = 
{
	SHOW						= FALSE,
	
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"EL_POWER_PLANT_WAIT_DOWN",	},
	},	
	
}


EL_POWER_PLANT_WAIT_UP = 
{
	SHOW						= TRUE,
	
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,		
	
	--SUPER_ARMOR					= TRUE,
	--SUPER_ARMOR_NOT_RED         = TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,					
		{ FALSE, 0.01, "Light_El_Power_Plant01", FALSE, "", TRUE, FALSE, 0, 370, 0, },
		{ FALSE, 0.3, "Light_El_Power_Plant02", FALSE, "", TRUE, FALSE, 0, 370, 0, },		
		{ FALSE, 0.01, "Light_El_Power_Plant03", FALSE, "", TRUE, FALSE, 0, 370, 0, },		
	},
}

EL_POWER_PLANT_WAIT_DOWN = 
{
	SHOW						= FALSE,
	
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,	
	
	INVINCIBLE					= { 0, 100, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"EL_POWER_PLANT_UP",	"CF_EL_POWER_PLANT_UP",	},
	},	
}

EL_POWER_PLANT_UP = 
{
	SHOW						= TRUE,
		
	ANIM_NAME					= "Up",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.588, "El_PowerPlant_Up1.ogg" },
    SOUND_PLAY1			= { 2.299, "El_PowerPlant_Up2.ogg" },
    SOUND_PLAY2			= { 3.788, "El_PowerPlant_Up3.ogg" },
    SOUND_PLAY3			= { 0.532, "Smoke1.ogg" },
    SOUND_PLAY4			= { 2.289, "Smoke2.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"EL_POWER_PLANT_WAIT_UP",		},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,					
		{ FALSE, 0.01, "Steam_El_Power_Plant01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 1.8333, "Steam_El_Power_Plant02", FALSE, "Box06", TRUE, FALSE, 0, 100, 0, },		
		{ FALSE, 1.4, "Flare_El_Power_Plant03", FALSE, "", TRUE, FALSE, 0, 140, 0, },		
		{ FALSE, 4.1, "Flare_El_Power_Plant04", FALSE, "Box06", TRUE, FALSE, 0, -100, 0, },		
	},
	
	CAMERA_CRASH =
	{
	    { 1.5, 3.0, 0.15, },
	    { 4.1, 1.5, 0.15, },	    
	},
}

EL_POWER_PLANT_DOWN = 
{
	SHOW						= TRUE,
	
	ANIM_NAME					= "Down",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,

    SOUND_PLAY0			= { 0.102, "El_PowerPlant_Down3.ogg" },
    SOUND_PLAY1			= { 0.748, "El_PowerPlant_Down2.ogg" },
    SOUND_PLAY2			= { 0.906, "El_PowerPlant_Down1.ogg" },
    SOUND_PLAY3			= { 0.088, "Smoke1.ogg" },
    SOUND_PLAY4			= { 0.090, "Smoke2.ogg" },
	
	--INVINCIBLE					= { 0, 100, },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],					"EL_POWER_PLANT_WAIT_DOWN",		"CF_EL_POWER_PLANT_DOWN",},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		                "EL_POWER_PLANT_WAIT_DOWN",		"CT_EL_POWER_PLANT_WAIT_DOWN"				},
	},
	
	-- CT_NASOD_KING_WAIT = 
	CT_EL_POWER_PLANT_WAIT_DOWN =
	{
		STATE_TIME_OVER			= 20,
	}, 
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,								
		{ FALSE, 0.01, "Steam_El_Power_Plant01", FALSE, "", FALSE, FALSE, 0, 0, 0, },	
		{ FALSE, 0.01, "Steam_El_Power_Plant02", FALSE, "Box06", FALSE, FALSE, 0, -60, 0, },	
	},	
	
}




EL_POWER_PLANT_DAMAGE =
{
	SHOW						= TRUE,
	
	ANIM_NAME					= "Damage",
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"EL_POWER_PLANT_WAIT_UP",		},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,					
		{ FALSE, 0.01, "Light_El_Power_Plant01", FALSE, "", TRUE, FALSE, 0, 370, 0, },
		{ FALSE, 0.3, "Light_El_Power_Plant02", FALSE, "", TRUE, FALSE, 0, 370, 0, },		
		{ FALSE, 0.01, "Light_El_Power_Plant03", FALSE, "", TRUE, FALSE, 0, 370, 0, },		
	},

}



EL_POWER_PLANT_DYING = 
{
	SHOW						= TRUE,
	
	ANIM_NAME					= "Death",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0 		= { 0.01, "ExplosionCombo1.ogg" },
    SOUND_PLAY1  		= { 0.8, "ExplosionCombo3.ogg" },
    SOUND_PLAY2 		= { 1.0, "ExplosionCombo2.ogg" },

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	--RIGHT                       = TRUE,
	DYING_END					= TRUE,
	DYING_SPEED                 = 1.0,
	
	IMMADIATE_PACKET_SEND		= TRUE,    	
}



function CF_EL_POWER_PLANT_UP( pKTDXApp, pX2Game, pNPCUnit )   
    
    pUID1 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"], 999999 )
    if pUID1 ~= 0 then	    
	    return false
	end
	
	pUID2 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"], 999999 )
    if pUID2 ~= 0 then
	    return false
	end
	
	pUID3 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"], 999999 )
    if pUID3 ~= 0 then
	    return false
	end
	
	pUID4 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"], 999999 )
    if pUID4 ~= 0 then
	    return false
	end
	
	return true
end

function CF_EL_POWER_PLANT_DOWN( pKTDXApp, pX2Game, pNPCUnit )   
    
    nLiveUser = pX2Game:LiveUserUnitNum()
    
    if nLiveUser == 0 then
        return true
    end
    
    pUID1 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"], 999999 )
    if pUID1 ~= 0 then	    
	    return true
	end
	
	pUID2 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"], 999999 )
    if pUID2 ~= 0 then
	    return true
	end
	
	pUID3 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"], 999999 )
    if pUID3 ~= 0 then
	    return true
	end
	
	pUID4 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"], 999999 )
    if pUID4 ~= 0 then
	    return true
	end
	
	return false
end


function EL_POWER_PLANT_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetInt_LUA(0, pX2Game:GetGameTime())
	pNPCUnit:SetFlag_LUA(0, true)
	
    pUID1 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_KING_HENIR"], 999999 )
    if pUID1 ~= 0 then
	    pUnit1 = pX2Game:GetNPCUnitByUID(pUID1)
	    if pUnit1 ~= nil then	   
	        pUnit1:StateChange_LUA( "NASOD_KING_KNOCKDOWN", true )	        
	    end
	end
end

function EL_POWER_PLANT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA(0, false)
	
	pNPCUnit:SetLightFlowMin(0)
    pNPCUnit:SetLightFlowMax(1000)
    pNPCUnit:SetLightFlowSpeed(100)
    pNPCUnit:SetLightFlowWide(20)
    pNPCUnit:SetLightFlowColor( D3DXCOLOR(0.7,0.7,1,1) )
end

function EL_POWER_PLANT_WAIT_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
end


function EL_POWER_PLANT_DOWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pNPCUnit:SetFlag_LUA(0, false)
    
    -- 부활위치 결정    
    --9, 10, 11   NUI_EL_EXTRACTOR_FIRE,  NUI_EL_EXTRACTOR_EARTH
    --20, 21, 22   NUI_EL_EXTRACTOR_NOVA,  NUI_EL_EXTRACTOR_ICE
    
    
    randVal1 = pNPCUnit:GetRandVal() % 3
    randVal2 = (randVal1 * 11) % 3
    
    if randVal1 == 0 then
        vPosL1 = 9
        vPosL2 = 11
    elseif randVal1 == 1 then
        vPosL1 = 10
        vPosL2 = 11
    else
        vPosL1 = 9
        vPosL2 = 10
    end
    
    if randVal2 == 0 then
        vPosR1 = 20
        vPosR2 = 22
    elseif randVal2 == 1 then
        vPosR1 = 21
        vPosR2 = 22
    else
        vPosR1 = 20
        vPosR2 = 21
    end
        
    
    -- 속성장치 부활
    pUID1 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"], 999999 )
    if pUID1 == 0 then
        vPos = pX2Game:GetLineMap():GetStartPosition( vPosL1 )
	    pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.3, true, 0 )
	end
	
	pUID3 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"], 999999 )
    if pUID3 == 0 then
        vPos = pX2Game:GetLineMap():GetStartPosition( vPosL2 )
	    pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.3, true, 0 )
	end
	
	
	pUID4 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"], 999999 )
    if pUID4 == 0 then
        vPos = pX2Game:GetLineMap():GetStartPosition( vPosR1 )
	    pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.3, true, 0 )
	end
	
	pUID2 = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"], 999999 )
    if pUID2 == 0 then
        vPos = pX2Game:GetLineMap():GetStartPosition( vPosR2 )
	    pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.3, true, 0 )
	end
	
	pX2Game:FlushCreateNPCReq()
end

function EL_POWER_PLANT_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    bUp = pNPCUnit:GetFlag_LUA(0)
    
    if bUp == true then
        maxTime = 0
        dungeonLv = pX2Game:GetGameLevel()
        if dungeonLv == 0 then
            maxTime = 30
        elseif dungeonLv == 1 then
            maxTime = 25
        else
            maxTime = 20
        end
        
        if (pX2Game:GetGameTime() - pNPCUnit:GetInt_LUA(0) ) > maxTime then
            pNPCUnit:StateChange_LUA( "EL_POWER_PLANT_DOWN", true )
        end
    end        
end

function EL_POWER_PLANT_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	
	bTime = pNPCUnit:GetFlag_LUA(4)
	
	if bTime == false then
	    pNPCUnit:SetInt_LUA(1, pX2Game:GetGameTime() )
	    pNPCUnit:SetFlag_LUA(4, true)
	end
	
	pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_KING_HENIR"], 999999 )
    if pUID ~= 0 then
	    pUnit = pX2Game:GetNPCUnitByUID(pUID)
	    if pUnit ~= nil then	 
	        pUnit:StateChange_LUA( "NASOD_KING_KNOCKDOWN_WAIT", true )
	    end
	end
	
end

function EL_POWER_PLANT_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    eTime = pX2Game:GetGameTime() - pNPCUnit:GetInt_LUA(1)
    
    p1 = pNPCUnit:GetFlag_LUA(1)       
    p2 = pNPCUnit:GetFlag_LUA(2)       
    p3 = pNPCUnit:GetFlag_LUA(3)       
	
	--print("ETime: ", eTime)
	
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	    pUser = pX2Game:GetMyUnit()
	    vPos = pUser:GetPos()
	    vPos.y = vPos.y + 200
	
	    pMajorParticle = pX2Game:GetMajorParticle()
	    if pMajorParticle ~= nil then	    
	        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 33.0, 10.0 )
		    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_King_End_Explostion", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
        end	    
        --print("Explostion")
        pNPCUnit:SetFlag_LUA(1, true)
    end
    
    if pNPCUnit:AnimEventTimer_LUA( 2.5 ) then
        pMajorParticle = pX2Game:GetMajorParticle()
        if pMajorParticle ~= nil then
            pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally_9th_Death_FadeOut", D3DXVECTOR3(0, 0, 0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
	    end    
	    
	    --print("FadeOut")
	    pNPCUnit:SetFlag_LUA(2, true)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 5.5 ) then
	    pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_NASOD_KING_HENIR"], 999999 )
        if pUID ~= 0 then
	        pUnit = pX2Game:GetNPCUnitByUID(pUID)
	        if pUnit ~= nil then	 
	            pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 20.0, 18.0 )
	            --pUnit:StateChange_LUA( "NASOD_KING_LOSE", true )
	            pUnit:SetNowHP_LUA(0)
	            
	            dungeonType = pX2Game:GetDungeonType()
	            	            
	            if dungeonType ~= DUNGEON_TYPE["DT_HENIR"] then
	            
	                pMinorParticle = pX2Game:GetMinorParticle()
	                if pMinorParticle ~= nil then
	                    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Altera_core_Destroy", D3DXVECTOR3(0, 0, 0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )	            
                    end
                end
                
	            pX2Game:GetMinorXMeshPlayer():CreateInstance_LUA( "Altera_core_Boss_Destroy", D3DXVECTOR3(0, 0, 0), D3DXVECTOR3(0, 0, 0), D3DXVECTOR3(0, 0, 0), 14 )
	        end
	    end
	    --print("Nasod_King_Lose")
	    pNPCUnit:SetFlag_LUA(3, true)
	end
	
end


