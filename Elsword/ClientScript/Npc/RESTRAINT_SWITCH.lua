-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{	
    UNIT_WIDTH		= 0,
	UNIT_HEIGHT		= 0,
	UNIT_SCALE		= 1,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"El_Tree_darkness.dds",
		"Ice_Particle01.dds",
		"aisha_active_guillotinePress_circleParticle.dds",
		"Arme_Aging_Gate01.tga",
		"Arme_Critical2.dds",
		"CenterLight_Gray01.dds",
		"Condense_Light01.dds",
		"El_Tree_darkness.dds",
		"Explosion_Sphere.dds",
		"Particle_Blur.dds",
		"Steam_Bp.dds",
	},
	
	READY_SOUND = 
	{	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nui_Restraint_Switch.x",
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
	
	DAMAGE_DOWN				= FALSE,
    DIE_FLY					= FALSE,
	NOT_EXTRA_DAMAGE    	= TRUE,		
}

INIT_STATE = 
{
	{ STATE_NAME = "RESTRAINT_SWITCH_START", 	LUA_STATE_START_FUNC = "RESTRAINT_SWITCH_START_STATE_START",	},	
	{ STATE_NAME = "RESTRAINT_SWITCH_WAIT",				},
	
	{ STATE_NAME = "RESTRAINT_SWITCH_ATTACK",	LUA_FRAME_MOVE_FUNC = "RESTRAINT_SWITCH_FRAME_MOVE",
												LUA_STATE_END_FUNC = "RESTRAINT_SWITCH_ATTACK_STATE_END",		},
	
	--리액션 관련
	{ STATE_NAME = "RESTRAINT_SWITCH_DAMAGE",			}, 
	{ STATE_NAME = "RESTRAINT_SWITCH_CHARGE",			}, 

	
	START_STATE					= "RESTRAINT_SWITCH_START",
	WAIT_STATE					= "RESTRAINT_SWITCH_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "RESTRAINT_SWITCH_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "RESTRAINT_SWITCH_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "RESTRAINT_SWITCH_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "RESTRAINT_SWITCH_DAMAGE",
	
	DOWN_DAMAGE_LAND_FRONT		= "RESTRAINT_SWITCH_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "RESTRAINT_SWITCH_DAMAGE",
	
	FLY_DAMAGE_FRONT			= "RESTRAINT_SWITCH_DAMAGE",
	FLY_DAMAGE_BACK				= "RESTRAINT_SWITCH_DAMAGE",
	SMALL_DAMAGE_AIR			= "RESTRAINT_SWITCH_DAMAGE",	
	BIG_DAMAGE_AIR				= "RESTRAINT_SWITCH_DAMAGE",
	DOWN_DAMAGE_AIR				= "RESTRAINT_SWITCH_DAMAGE",
	UP_DAMAGE					= "RESTRAINT_SWITCH_DAMAGE",
	DAMAGE_REVENGE				= "RESTRAINT_SWITCH_DAMAGE",	
	
	COMMON_FRAME_FUNC           = "RESTRAINT_SWITCH_COMMON_FRAME_MOVE",
}

RESTRAINT_SWITCH_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	SOUND_PLAY0	= { 2.2, "Cannon_Demon_Turn.ogg", 100 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"RESTRAINT_SWITCH_WAIT",				},
	},
}

RESTRAINT_SWITCH_WAIT = 
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

RESTRAINT_SWITCH_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	SOUND_PLAY0	= { 0.001, "Amethyst_start.ogg", 100 },
	SOUND_PLAY1	= { 1.35, "CannonBig_Smoke.ogg", 100 },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"RESTRAINT_SWITCH_START",		"CT_RESTRAINT_SWITCH_START"	},
	},
	
	CT_RESTRAINT_SWITCH_START	=
	{
		STATE_TIME_OVER	= 3,
	},
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"Sander_Santilus_Ship_Cannon_Attact", 0,	
	},

	
}


----------------리액션--------------------------------------------------------------

RESTRAINT_SWITCH_DAMAGE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"RESTRAINT_SWITCH_WAIT",		},
	},
}



----------------리액션--------------------------------------------------------------

RESTRAINT_SWITCH_CHARGE = 
{
	ANIM_NAME					= "Charge",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0	= { 0.001, "Amethyst_start.ogg", 100 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"RESTRAINT_SWITCH_WAIT",		},
	},
}





----------- condition function----------------------------------------------------------

function RESTRAINT_SWITCH_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA (0, 0)
end

function RESTRAINT_SWITCH_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	if pNPCUnit:AnimEventTimer_LUA( 1.806 ) then
		local pVehimosNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_VEHIMOS"], 999999 ) -- 해당 ID 를 가진 NPC 검색
		if pVehimosNpc ~= nil then									-- 찾았다면!
			pVehimosNpc:StateChange_LUA("VEHIMOS_DAMAGE", true )
		end		
	end
end

function RESTRAINT_SWITCH_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )	
	local pEffectSet = pX2Game:GetEffectSet()
	if pEffectSet ~= nil then
		local pChargeEffectSet = pNPCUnit:GetEffectSet_LUA ( 0 )	
		if pChargeEffectSet ~= nil then
			pEffectSet:StopEffectSet_LUA ( pChargeEffectSet )
		end
	end


		
end


function RESTRAINT_SWITCH_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local iMaxPhase = 3						-- 최대 페이즈, 피가 5% 이하로 깍이면 다음 페이즈로 넘어감
	local iDecreaseSummonMonsterMany = 10	-- 발사 시, NUI_DUMMY_SUMMONER2 의 소환 숫자 깍을 양
		
	local hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
		
	if hp < 100 then
		local pEffectSet = pX2Game:GetEffectSet()
		if pEffectSet ~= nil then
			local pChargeEffectSet = pNPCUnit:GetEffectSet_LUA ( 0 )	
			if pChargeEffectSet ~= nil then
				pEffectSet:StopEffectSet_LUA ( pChargeEffectSet )
			end
		end	
		local cHp = pNPCUnit:GetMaxHP()
        pNPCUnit:SetNowHP_LUA(cHp)
        local iPhase = pNPCUnit:GetInt_LUA (0)
		iPhase = iPhase + 1
		if iPhase >= iMaxPhase then		-- 발사!
			pNPCUnit:StateChange_LUA("RESTRAINT_SWITCH_ATTACK", true )
			local pSummonerNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_DUMMY_SUMMONER2"], 999999 ) 	 -- 해당 ID 를 가진 NPC 검색
			if pSummonerNpc ~= nil then							-- 찾았다면!
				local iSummonerMonsterMany = pSummonerNpc:GetInt_LUA (4) + iDecreaseSummonMonsterMany
			
				if iSummonerMonsterMany < 0 then
					iSummonerMonsterMany = 0
				end
				pSummonerNpc:SetInt_LUA( 4, iSummonerMonsterMany )
				iPhase = 0
			end
			
		
		else							-- 충전!
			
			local vPos = pNPCUnit:GetBonePos_LUA("Dummy02")
			local vRot = pNPCUnit:GetRotateDegree()
			local pChargeEffectSet = nil
			if iPhase < 2 then
				pChargeEffectSet = pEffectSet:PlayEffectSetWithCustomPos_LUA( "Santilus_Ship_Cannon_Charge01", pNPCUnit, vPos, vRot )				
			elseif iPhase < 3 then
				pChargeEffectSet = pEffectSet:PlayEffectSetWithCustomPos_LUA( "Santilus_Ship_Cannon_Charge02", pNPCUnit, vPos, vRot )
			elseif iPhase < 4 then
				pChargeEffectSet = pEffectSet:PlayEffectSetWithCustomPos_LUA( "Santilus_Ship_Cannon_Charge03", pNPCUnit, vPos, vRot )
			end
			
			pNPCUnit:SetEffectSet_LUA ( 0, pChargeEffectSet )			
			pNPCUnit:StateChange_LUA("RESTRAINT_SWITCH_CHARGE", true )		
		end
		
		-- 색 변경
		-- local fColorPhase = iPhase / iMaxPhase
		-- pNPCUnit:SetUnitColor(1.0, 1.0 - fColorPhase, 1.0 - fColorPhase, 1, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"]) 	 
      
		 pNPCUnit:SetInt_LUA (0, iPhase)
	  
	end 
    
end
