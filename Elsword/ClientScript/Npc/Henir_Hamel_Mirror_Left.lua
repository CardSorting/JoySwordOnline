-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- NUI_CRYSTAL_TRAP_LEFT

INIT_SYSTEM =
{
	UNIT_WIDTH		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

	--ALPHA_BLEND		= TRUE,
}


INIT_DEVICE =
{
	READY_TEXTURE =
	{
		"Arme_Critical2.dds",
		"Explosion_Sphere.dds",
		"Particle_Blur.dds",
		"Explosion_Sphere.dds",		
	},

	READY_SOUND =
	{
	},

	READY_XMESH =
	{
	},

	READY_XSKIN_MESH =
	{
		"Mirror_Left_light.X",
	},

}

INIT_MOTION =
{
	MOTION_FILE_NAME		= "Motion_Mirror_Left.x",
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
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	USE_SLASH_TRACE		= FALSE,

	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",

	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	--HEAD_BONE_NAME		= "Altera_Plain_Recyle_Mine",

	SHOW_ON_MINIMAP		= FALSE,
	
	NOT_EXTRA_DAMAGE    = TRUE,	
	HITTED_TYPE			= HITTED_TYPE["HTD_METAL2"],	
	FALL_DOWN			= FALSE,	
	DAMAGE_DOWN         = FALSE,

}

INIT_STATE =
{
	{ STATE_NAME = "MIRROR_LEFT_START",				LUA_STATE_START_FUNC = "MIRROR_LEFT_START_STATE_START", },

	{ STATE_NAME = "MIRROR_LEFT_TURN_120D_WAIT",	},
	{ STATE_NAME = "MIRROR_LEFT_TURN_80D_WAIT",		LUA_FRAME_MOVE_FUNC = "MIRROR_LEFT_TURN_80D_WAIT_FRAME_MOVE", },
	{ STATE_NAME = "MIRROR_LEFT_TURN_40D_WAIT",		LUA_FRAME_MOVE_FUNC = "MIRROR_LEFT_TURN_40D_WAIT_FRAME_MOVE", },
	{ STATE_NAME = "MIRROR_LEFT_TURN_0D_WAIT",		LUA_FRAME_MOVE_FUNC = "MIRROR_LEFT_TURN_0D_WAIT_FRAME_MOVE", },

	{ STATE_NAME = "MIRROR_LEFT_TURN_80D_P40TURN",	},
	{ STATE_NAME = "MIRROR_LEFT_TURN_40D_P40TURN",	},
	{ STATE_NAME = "MIRROR_LEFT_TURN_0D_P40TURN",	},


	{ STATE_NAME = "MIRROR_LEFT_TURN_120D_N40TURN", },
	{ STATE_NAME = "MIRROR_LEFT_TURN_80D_N40TURN",	},
	{ STATE_NAME = "MIRROR_LEFT_TURN_40D_N40TURN",	},

	START_STATE					= "MIRROR_LEFT_START",
	COMMON_FRAME_FUNC			= "MIRROR_LEFT_COMMON_FRAME_MOVE",
}


MIRROR_LEFT_START =
{
	ANIM_NAME					= "Turn_120d_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT						= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MIRROR_LEFT_TURN_120D_WAIT",	"CT_STATE_START"},
	},

	CT_STATE_START =
	{
		STATE_TIME_OVER				= 5,
	},
	
	EFFECT_SET_LIST =
	{
		"EFFECTSET_HAMEL_MIRROR_LEFT_LIGHT", 0.0,
	},	
}

MIRROR_LEFT_TURN_120D_WAIT =
{
	ANIM_NAME					= "Turn_120d_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"MIRROR_LEFT_TURN_120D_N40TURN",	"CF_STATE_CHANGE"},
	},
}


MIRROR_LEFT_TURN_120D_N40TURN =
{
	ANIM_NAME					= "Turn_120d_-40Turn",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MIRROR_LEFT_TURN_80D_WAIT", },
	},
}

MIRROR_LEFT_TURN_80D_WAIT =
{
	ANIM_NAME					= "Turn_80d_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,



	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"MIRROR_LEFT_TURN_80D_N40TURN",	"CF_STATE_CHANGE"},
	},
}


MIRROR_LEFT_TURN_80D_N40TURN =
{
	ANIM_NAME					= "Turn_80d_-40Turn",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MIRROR_LEFT_TURN_40D_WAIT", },
	},
}


MIRROR_LEFT_TURN_40D_WAIT =
{
	ANIM_NAME					= "Turn_40d_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,



	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"MIRROR_LEFT_TURN_40D_N40TURN",	"CF_LAST_STATE_CHANGE"},
	},
}


MIRROR_LEFT_TURN_40D_N40TURN =
{
	ANIM_NAME					= "Turn_40d_-40Turn",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MIRROR_LEFT_TURN_0D_WAIT", },
	},
}

MIRROR_LEFT_TURN_0D_WAIT =
{
	ANIM_NAME					= "Turn_0d_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,



	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

}


MIRROR_LEFT_TURN_80D_P40TURN =
{
	ANIM_NAME					= "Turn_80d_+40Turn",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MIRROR_LEFT_TURN_120D_WAIT", },
	},
}

MIRROR_LEFT_TURN_40D_P40TURN =
{
	ANIM_NAME					= "Turn_40d_+40Turn",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT               = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MIRROR_LEFT_TURN_80D_WAIT", },
	},
}

MIRROR_LEFT_TURN_0D_P40TURN =
{
	ANIM_NAME					= "Turn_0d_+40Turn",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

    INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,

	RIGHT						= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"MIRROR_LEFT_TURN_40D_WAIT", },
	},
}


-- function -------------------------------------------------------------------------------

function MIRROR_LEFT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA(0, false)
	pNPCUnit:SetFlag_LUA(1, false)
end

function CF_LAST_STATE_CHANGE( pKTDXApp, pX2Game, pNPCUnit )
	local nUser = pX2Game:GetUserUnitNum_LUA()	
	if nUser <= 1 and pNPCUnit:GetFlag_LUA(1) == true then
		return false
	end	
	local fDurationTime = 7 - ( nUser * 1 )
	if pNPCUnit:GetStateTime() >= fDurationTime then
		return true
	end
	
	return false
end

function CF_STATE_CHANGE( pKTDXApp, pX2Game, pNPCUnit )
	local nUser = pX2Game:GetUserUnitNum_LUA()	
	local fDurationTime = 7 - ( nUser * 1 )
	if pNPCUnit:GetStateTime() >= fDurationTime then
		return true
	end
	
	return false
end

function MIRROR_LEFT_TURN_80D_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_FLY"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_UP"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_DRAG_UP"] then
		pNPCUnit:StateChange_LUA("MIRROR_LEFT_TURN_80D_P40TURN", true)		
	end
	pNPCUnit:InitDamageTypeThisFrame_LUA()
end

function MIRROR_LEFT_TURN_40D_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_FLY"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_UP"] or
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_DRAG_UP"] then
		pNPCUnit:StateChange_LUA("MIRROR_LEFT_TURN_40D_P40TURN", true)		
	end
	pNPCUnit:InitDamageTypeThisFrame_LUA()
end

function MIRROR_LEFT_TURN_0D_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_FLY"] or 
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_UP"] or
		pNPCUnit:GetDamageTypeThisFrame_LUA() == REACT_TYPE["RT_DRAG_UP"] then
		pNPCUnit:StateChange_LUA("MIRROR_LEFT_TURN_0D_P40TURN", true)
	end
	pNPCUnit:InitDamageTypeThisFrame_LUA()
	
	pNPCUnit:SetFlag_LUA(1, true)
end

function MIRROR_LEFT_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA( pNPCUnit:GetMaxHP() )	
	local nUser = pX2Game:GetUserUnitNum_LUA()
	
	-- 근처 유저 mp소모
	local userListSize = nUser - 1
	local vNpcPos = pNPCUnit:GetPos()
	
	for i = 0, userListSize do
		local pUser = pX2Game:GetUserUnit( i )
		if pUser ~= nil then
		   if pUser:GetNowHP() > 0 then
		      local vUserPos = pUser:GetPos()
		      local fDist = pX2Game:GetDist_LUA( vNpcPos, vUserPos )
		      if fDist <= 300 then
				pUser:SetNowMP( pUser:GetNowMP() - 0.15 )
		      end
		   end
		end
	end
	
	local nowStateID 	= pNPCUnit:GetNowStateID()
	local destStateID 	= pNPCUnit:GetStateID_LUA( "MIRROR_LEFT_TURN_0D_WAIT" )
	local bSummonState	= false
	if nowStateID == destStateID then
		bSummonState = true
	end
	
	local pMasterNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"] )
	if pMasterNpc == nil then
		bSummonState = false
	elseif pMasterNpc ~= nil and pMasterNpc:GetNowHP_LUA() <= 0 then
		bSummonState = false
	end
		
	if pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE_FAKE_A"] ) >= 1 then	
		local pNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE_FAKE_A"] )
		if pNpc ~= nil then
			if bSummonState == false then
				pNpc:SetNowHP_LUA(0)
				pNPCUnit:SetFlag_LUA(0, false)
			else
				pNpc:SetNowHP_LUA( pNpc:GetMaxHP() )
				pNPCUnit:SetFlag_LUA(0, true)
			end
		else
			pNPCUnit:SetFlag_LUA(0, false)
		end			
	else
		if bSummonState == true and pNPCUnit:GetFlag_LUA(0) == false then
			-- 소환	
			local vTempPos = pNPCUnit:GetBonePos_LUA("Dummy_Light02")
			local vSummonPos = pX2Game:GetLineMap():GetNearest_LUA( vTempPos )
			pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE_FAKE_A"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 0.01, true  )		
			pNPCUnit:SetFlag_LUA(0, true)
		end
	end
end



