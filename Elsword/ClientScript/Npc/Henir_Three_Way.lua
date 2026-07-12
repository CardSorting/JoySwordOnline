-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.5,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{

	},
	READY_XSKIN_MESH = 
	{
		"HENIRE_DUNGEON_BOX.x",
		"Npc_HENIRE_Glaive.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Npc_HENIRE_Glaive.x",
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

	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "Spike_Leaf1",
	SHOW_ON_MINIMAP		= FALSE,

	NOT_EXTRA_DAMAGE	= TRUE,

 	INVISIBLE =
	{
		MAX_ALPHA = 1,
		MIN_ALPHA = 0,
		SPEED = 2,
		
		ALPHA_LOWER_BOUND = 0.2,
		CLOAKING_UNIT = TRUE,
	},

}

INIT_STATE = 
{
	{ STATE_NAME = "HENIR_THREE_WAY_START",					LUA_STATE_START_FUNC = "HENIR_THREE_WAY_START_STATE_START",},
				
	{ STATE_NAME = "HENIR_THREE_WAY_WAIT_READY1",			LUA_STATE_START_FUNC = "HENIR_THREE_WAY_WAIT_READY1_STATE_START",},
	{ STATE_NAME = "HENIR_THREE_WAY_WAIT_READY2",			LUA_STATE_START_FUNC = "HENIR_THREE_WAY_WAIT_READY2_STATE_START",},
	{ STATE_NAME = "HENIR_THREE_WAY_WAIT_READY3",			LUA_STATE_START_FUNC = "HENIR_THREE_WAY_WAIT_READY3_STATE_START",},					
				
				
													
	{ STATE_NAME = "HENIR_THREE_WAY_WAIT_START",			LUA_STATE_START_FUNC = "HENIR_THREE_WAY_WAIT_START_STATE_START",},
	{ STATE_NAME = "HENIR_THREE_WAY_WAIT1",			},
	{ STATE_NAME = "HENIR_THREE_WAY_WAIT2",			},
	{ STATE_NAME = "HENIR_THREE_WAY_DYING",					LUA_STATE_START_FUNC = "HENIR_THREE_WAY_DYING_STATE_START",},
		
	{ STATE_NAME = "HENIR_THREE_WAY_DAMAGE",},


	START_STATE					= "HENIR_THREE_WAY_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "HENIR_THREE_WAY_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "HENIR_THREE_WAY_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "HENIR_THREE_WAY_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "HENIR_THREE_WAY_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "HENIR_THREE_WAY_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "HENIR_THREE_WAY_DAMAGE",
	FLY_DAMAGE_FRONT			= "HENIR_THREE_WAY_DAMAGE",
	FLY_DAMAGE_BACK				= "HENIR_THREE_WAY_DAMAGE",
	SMALL_DAMAGE_AIR			= "HENIR_THREE_WAY_DAMAGE",	
	BIG_DAMAGE_AIR				= "HENIR_THREE_WAY_DAMAGE",
	DOWN_DAMAGE_AIR				= "HENIR_THREE_WAY_DAMAGE",
	UP_DAMAGE					= "HENIR_THREE_WAY_DAMAGE",
	DAMAGE_REVENGE				= "HENIR_THREE_WAY_DAMAGE",
	
	DYING_LAND_FRONT			= "HENIR_THREE_WAY_DYING",
	DYING_LAND_BACK				= "HENIR_THREE_WAY_DYING",
	DYING_SKY				= "HENIR_THREE_WAY_DYING",


	COMMON_FRAME_FUNC           = "HENIR_THREE_WAY_COMMON_FRAME_MOVE",
	REVENGE_ATTACK				= "",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.3,		-- sec
		TARGET_NEAR_RANGE			= 300,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1200,	-- cm
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
	
}



HENIR_THREE_WAY_START = 
{
	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	RIGHT						= TRUE,

	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SHOW						= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"HENIR_THREE_WAY_WAIT_READY1",		"CF_HENIR_THREE_WAY_WAIT_READY1"				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"HENIR_THREE_WAY_WAIT_READY2",		"CF_HENIR_THREE_WAY_WAIT_READY2"				},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"HENIR_THREE_WAY_WAIT_READY3",		"CF_HENIR_THREE_WAY_WAIT_READY3"				},
	},
}


HENIR_THREE_WAY_WAIT_READY1 = 
{
	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SHOW						= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,
	 
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"HENIR_THREE_WAY_WAIT_START",		"CT_HENIR_THREE_WAY_WAIT_START"	},	
	},
	
	CT_HENIR_THREE_WAY_WAIT_START = 
	{
		STATE_TIME_OVER			= 3.0,
	},	
}

HENIR_THREE_WAY_WAIT_READY2 = 
{
	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SHOW						= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,
	 
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"HENIR_THREE_WAY_WAIT_START",		"CT_HENIR_THREE_WAY_WAIT_START"	},	
	},
	
	CT_HENIR_THREE_WAY_WAIT_START = 
	{
		STATE_TIME_OVER			= 3.0,
	},	
}


HENIR_THREE_WAY_WAIT_READY3 = 
{
	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SHOW						= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,
	 
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"HENIR_THREE_WAY_WAIT_START",		"CT_HENIR_THREE_WAY_WAIT_START"	},	
	},
	
	CT_HENIR_THREE_WAY_WAIT_START = 
	{
		STATE_TIME_OVER			= 3.0,
	},	
}



HENIR_THREE_WAY_WAIT_START = 
{

	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SHOW						= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"HENIR_THREE_WAY_WAIT1",		},
	},
}


HENIR_THREE_WAY_WAIT1 = 
{

	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HENIR_THREE_WAY_WAIT2",	"CT_HENIR_THREE_WAY_WAIT2",		},
	},

	CT_HENIR_THREE_WAY_WAIT2 = 
	{
		ANIM_PLAY_COUNT				= 2,
	},

	TALK_BOX =
	{
		{ RATE = 50, MESSAGE = STR_ID_13757 },
		{ RATE = 50, MESSAGE = STR_ID_13756 },
	},
}

HENIR_THREE_WAY_WAIT2 = 
{

	ANIM_NAME					= "Wait02",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"HENIR_THREE_WAY_WAIT1",		},
	},
	TALK_BOX =
	{
		{ RATE = 50, MESSAGE = STR_ID_13758 },
		{ RATE = 50, MESSAGE = STR_ID_13756 },
	},
}


HENIR_THREE_WAY_DAMAGE = 
{

	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"HENIR_THREE_WAY_WAIT1",		},
	},
}


HENIR_THREE_WAY_DYING = 
{
	ANIM_NAME					= "Wait01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


function HENIR_THREE_WAY_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetCloaking()
end

function CF_HENIR_THREE_WAY_WAIT_READY1( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:GetStartSecretStageEnteringEvent() == 1 then
		return true
	else
		return false
	end
end
function CF_HENIR_THREE_WAY_WAIT_READY2( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:GetStartSecretStageEnteringEvent() == 2 then
		return true
	else
		return false
	end
end
function CF_HENIR_THREE_WAY_WAIT_READY3( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:GetStartSecretStageEnteringEvent() == 3 then
		return true
	else
		return false
	end
end

function HENIR_THREE_WAY_WAIT_READY1_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetInt_LUA(0, 1)
	pNPCUnit:SetFlag_LUA(1, true)
	pNPCUnit:SetFlag_LUA(2, false)
end

function HENIR_THREE_WAY_WAIT_READY2_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetInt_LUA(0, 1)
	pNPCUnit:SetFlag_LUA(1, false)
	pNPCUnit:SetFlag_LUA(2, true)
end

function HENIR_THREE_WAY_WAIT_READY3_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetInt_LUA(0, 1)
	pNPCUnit:SetFlag_LUA(1, true)
	pNPCUnit:SetFlag_LUA(2, true)
end



function HENIR_THREE_WAY_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetUnCloaking()
end


function HENIR_THREE_WAY_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
    if pNPCUnit:GetTimerElapsedTime( 0 ) > 1.0 and
		pNPCUnit:GetInt_LUA(0) == 1 then

		local camera = pX2Game:GetX2Camera()
		local vLook = pNPCUnit:GetPos()
		vLook.y = vLook.y + 250
		camera:PartsLookTrackingCameraByNpc_LUA( pNPCUnit, vLook, D3DXVECTOR3(1750, 350, 0), D3DXVECTOR3( 0, 0, 2 ), 30 )



		local pUserUnit1 = pX2Game:GetUserUnit(0)
		local pUserUnit2 = pX2Game:GetUserUnit(1)
		local pUserUnit3 = pX2Game:GetUserUnit(2)
		local pUserUnit4 = pX2Game:GetUserUnit(3)

		if pUserUnit1 ~= nil then
			pUserUnit1:CreateTeleportEffect( pUserUnit1:GetLandPosition_LUA(), pUserUnit1:GetRotateDegree() )
			pUserUnit1:SetCanNotInputTime_LUA(1)
		end
		if pUserUnit2 ~= nil then
			pUserUnit2:CreateTeleportEffect( pUserUnit2:GetLandPosition_LUA(), pUserUnit2:GetRotateDegree() )
			pUserUnit2:SetCanNotInputTime_LUA(1)
		end
		if pUserUnit3 ~= nil then
			pUserUnit3:CreateTeleportEffect( pUserUnit3:GetLandPosition_LUA(), pUserUnit3:GetRotateDegree() )
			pUserUnit3:SetCanNotInputTime_LUA(1)
		end
		if pUserUnit4 ~= nil then
			pUserUnit4:CreateTeleportEffect( pUserUnit4:GetLandPosition_LUA(), pUserUnit4:GetRotateDegree() )
			pUserUnit4:SetCanNotInputTime_LUA(1)
		end
		
		pNPCUnit:SetInt_LUA(0, 2)
	end



    if pNPCUnit:GetTimerElapsedTime( 0 ) > 1.5 and
		pNPCUnit:GetInt_LUA(0) == 2 then

		local pUserUnit1 = pX2Game:GetUserUnit(0)
		local pUserUnit2 = pX2Game:GetUserUnit(1)
		local pUserUnit3 = pX2Game:GetUserUnit(2)
		local pUserUnit4 = pX2Game:GetUserUnit(3)

		local iGlavePosIndex = 0
		local iKeyCode = pNPCUnit:GetKeyCode()

		if iKeyCode == 101 then
			iGlavePosIndex = 6
		elseif iKeyCode == 102 then
			iGlavePosIndex = 1
		elseif iKeyCode == 103 then
			iGlavePosIndex = 2
		elseif iKeyCode == 104 then
			iGlavePosIndex = 60
		elseif iKeyCode == 105 then
			iGlavePosIndex = 3
		else
			iGlavePosIndex = 0
		end

		local vTeleportPos = pX2Game:GetLineMap():GetStartPosition( iGlavePosIndex )
		local iLineIndex = pX2Game:GetLineMap():GetStartLineIndex( iGlavePosIndex )

		if pUserUnit1 ~= nil then
			pUserUnit1:SetPositionOnLine(vTeleportPos, iLineIndex)
			pUserUnit1:CreateTeleportEffect( pUserUnit1:GetLandPosition_LUA(), pUserUnit1:GetRotateDegree() )
		end
		if pUserUnit2 ~= nil then
			pUserUnit2:SetPositionOnLine(vTeleportPos, iLineIndex)
			pUserUnit2:CreateTeleportEffect( pUserUnit2:GetLandPosition_LUA(), pUserUnit2:GetRotateDegree() )
		end
		if pUserUnit3 ~= nil then
			pUserUnit3:SetPositionOnLine(vTeleportPos, iLineIndex)
			pUserUnit3:CreateTeleportEffect( pUserUnit3:GetLandPosition_LUA(), pUserUnit3:GetRotateDegree() )
		end
		if pUserUnit4 ~= nil then
			pUserUnit4:SetPositionOnLine(vTeleportPos, iLineIndex)
			pUserUnit4:CreateTeleportEffect( pUserUnit4:GetLandPosition_LUA(), pUserUnit4:GetRotateDegree() )
		end
		
		pNPCUnit:SetInt_LUA(0, 3)
	end
	
    if pNPCUnit:GetTimerElapsedTime( 0 ) > 3.0 and
		pNPCUnit:GetInt_LUA(0) == 3 then

		--local pMajorMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		--local pMeshInstance = pMajorMeshPlayer:CreateInstance_LUA( "HenirThreeWayGlaive", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR3(0.0, 0.0, 0.0), pNPCUnit:GetRotateDegree(), -1 )
		--pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshInstance )

		pNPCUnit:SetInt_LUA(0, 4)
	end
	
	
	if pNPCUnit:GetTimerElapsedTime( 0 ) > 7.8 and
		pNPCUnit:GetInt_LUA(0) == 4 then

		local Box1Position = pX2Game:GetFixedDistancePosition_LUA(pNPCUnit:GetLandPosition_LUA(), 300, false)
		local Box2Position = pX2Game:GetFixedDistancePosition_LUA(pNPCUnit:GetLandPosition_LUA(), 300, true)

		local pMajorParticle = pX2Game:GetMajorParticle()

		pNPCUnit:SetVector_LUA(0, Box1Position)
		pNPCUnit:SetVector_LUA(1, Box2Position)

		if pNPCUnit:GetFlag_LUA(1) == true then
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Henir_Teleport_MagicSquare01", Box1Position, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pNPCUnit:SetMajorParticle_LUA(3, pParticle:GetHandle() )
		end
		if pNPCUnit:GetFlag_LUA(2) == true then
			local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Henir_Teleport_MagicSquare01", Box2Position, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
			pNPCUnit:SetMajorParticle_LUA(4, pParticle:GetHandle() )
		end

		pNPCUnit:SetInt_LUA(0, 5)
	end
	


    if pNPCUnit:GetTimerElapsedTime( 0 ) > 7.8 and
		pNPCUnit:GetInt_LUA(0) == 5 then
	
		local Box1Position = pX2Game:GetFixedDistancePosition_LUA(pNPCUnit:GetLandPosition_LUA(), 300, false)
		local Box2Position = pX2Game:GetFixedDistancePosition_LUA(pNPCUnit:GetLandPosition_LUA(), 300, true)
		Box1Position.y = Box1Position.y + 295
		Box2Position.y = Box2Position.y + 295


		local pMajorMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		if pNPCUnit:GetFlag_LUA(1) == true then
			local pMeshInstance1 = pMajorMeshPlayer:CreateInstance_LUA( "HenirThreeWayBox", Box1Position, D3DXVECTOR3(0.0, 0.0, 0.0), pNPCUnit:GetRotateDegree(), -1 )
			pNPCUnit:SetMajorMeshPlayer_LUA( 1, pMeshInstance1 )
		end
		if pNPCUnit:GetFlag_LUA(2) == true then
			local pMeshInstance2 = pMajorMeshPlayer:CreateInstance_LUA( "HenirThreeWayBox", Box2Position, D3DXVECTOR3(0.0, 0.0, 0.0), pNPCUnit:GetRotateDegree(), -1 )
			pNPCUnit:SetMajorMeshPlayer_LUA( 2, pMeshInstance2 )	
		end



		pNPCUnit:SetInt_LUA(0, 6)

		pNPCUnit:SetTimerRestart( 5 ) -- TimeOut
	end	


    if pNPCUnit:GetTimerElapsedTime( 0 ) > 8.0 and
		pNPCUnit:GetInt_LUA(0) == 6 then




		local pMajorParticle = pX2Game:GetMajorParticle()

		local bUpdateTimeoutCount = false
		if pNPCUnit:GetTimerElapsedTime( 5 ) > pNPCUnit:GetInt_LUA(6) then
			local pOldParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
			if pOldParticle ~= nil then
				pMajorParticle:DestroyInstance( pOldParticle )
				pNPCUnit:ClearMajorParticle_LUA( 0 )
			end

			while pNPCUnit:GetTimerElapsedTime( 5 ) > pNPCUnit:GetInt_LUA(6) do
				pNPCUnit:SetInt_LUA(6, pNPCUnit:GetInt_LUA(6) + 1)
			end
			bUpdateTimeoutCount = true
		end

		local vPosTimeout = pNPCUnit:GetPos()
		vPosTimeout.y = vPosTimeout.y + 300

		local pParticle = nil
		if pNPCUnit:GetTimerElapsedTime( 5 ) < 1 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 1)



			local vPosCaptionSecret = pX2Game:GetFixedDistancePosition_LUA(pNPCUnit:GetLandPosition_LUA(), 340, false)
			local vPosCaptionElite = pX2Game:GetFixedDistancePosition_LUA(pNPCUnit:GetLandPosition_LUA(), 340, true)
			vPosCaptionSecret.y = vPosCaptionSecret.y + 520
			vPosCaptionElite.y = vPosCaptionElite.y + 520

			if pNPCUnit:GetFlag_LUA(1) == true then
				local iKeyCode = pNPCUnit:GetKeyCode()
				local pParticle5 = nil

				if iKeyCode == 101 then
					pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirBesmaSecret", vPosCaptionSecret, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				elseif iKeyCode == 102 then
					pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirAlteraSecret", vPosCaptionSecret, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				elseif iKeyCode == 103 then
					pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirPeitaSecret", vPosCaptionSecret, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				elseif iKeyCode == 104 then
					pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirVelderSecret", vPosCaptionSecret, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				else
					pParticle5 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirBesmaSecret", vPosCaptionSecret, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				end

				if pParticle5 ~= nil then
					pNPCUnit:SetMajorParticle_LUA(5, pParticle5:GetHandle() )
				end
				
			end

			if pNPCUnit:GetFlag_LUA(2) == true then
				local iKeyCode = pNPCUnit:GetKeyCode()
				local pParticle6 = nil

				if iKeyCode == 102 then
					pParticle6 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirAlteraElite", vPosCaptionElite, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				elseif iKeyCode == 103 then
					pParticle6 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirPeitaElite", vPosCaptionElite, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				elseif iKeyCode == 104 then
					pParticle6 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirVelderElite", vPosCaptionElite, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				elseif iKeyCode == 105 then
					pParticle6 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirHamelElite", vPosCaptionElite, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				else
					pParticle6 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "NoticeHenirAlteraElite", vPosCaptionElite, D3DXVECTOR2(1000,1000), D3DXVECTOR2(1,-1) )
				end
				
				if pParticle6 ~= nil then
					pNPCUnit:SetMajorParticle_LUA(6, pParticle6:GetHandle() )
				end
			end

			bUpdateTimeoutCount = false
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 2 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 2)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount9", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 3 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 3)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount8", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 4 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 4)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount7", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 5 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 5)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount6", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 6 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 6)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount5", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 7 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 7)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount4", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 8 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 8)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount3", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 9 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 9)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount2", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 10 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 10)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount1", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) < 11 and bUpdateTimeoutCount == true then
			pNPCUnit:SetInt_LUA(6, 11)
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirTimeoutCount0", vPosTimeout, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		else
			bUpdateTimeoutCount = false
		end

		if bUpdateTimeoutCount == true then
			pNPCUnit:SetMajorParticle_LUA(0, pParticle:GetHandle() )
		end


		local vPortalPosition1 = pNPCUnit:GetVector_LUA(0)
		local vPortalPosition2 = pNPCUnit:GetVector_LUA(1)
		

		local pUserUnit1 = pX2Game:GetUserUnit(0)
		local pUserUnit2 = pX2Game:GetUserUnit(1)
		local pUserUnit3 = pX2Game:GetUserUnit(2)
		local pUserUnit4 = pX2Game:GetUserUnit(3)

		local bUpdateVote = false
		
		if pUserUnit1 ~= nil then
			local vUserPos1 = pUserUnit1:GetPos()
			if pX2Game:GetDist_LUA(vUserPos1, vPortalPosition1) < 100.0 and pNPCUnit:GetFlag_LUA(1) == true then
				if pNPCUnit:GetInt_LUA(1) ~= 1 then
					pNPCUnit:SetTimerRestart( 1 )
					pNPCUnit:SetInt_LUA(1, 1)
					bUpdateVote = true
				end
			elseif pX2Game:GetDist_LUA(vUserPos1, vPortalPosition2) < 100.0 and pNPCUnit:GetFlag_LUA(2) == true then
				if pNPCUnit:GetInt_LUA(1) ~= 2 then
					pNPCUnit:SetTimerRestart( 1 )
					pNPCUnit:SetInt_LUA(1, 2)
					bUpdateVote = true
				end
			else
				if pNPCUnit:GetInt_LUA(1) ~= 3 then
					pNPCUnit:SetTimerRestart( 1 )
					pNPCUnit:SetInt_LUA(1, 3)
					bUpdateVote = true
				end
			end
		end

		if pUserUnit2 ~= nil then
			local vUserPos2 = pUserUnit2:GetPos()
			if pX2Game:GetDist_LUA(vUserPos2, vPortalPosition1) < 100.0 and pNPCUnit:GetFlag_LUA(1) == true then
				if pNPCUnit:GetInt_LUA(2) ~= 1 then
					pNPCUnit:SetTimerRestart( 2 )
					pNPCUnit:SetInt_LUA(2, 1)
					bUpdateVote = true
				end
			elseif pX2Game:GetDist_LUA(vUserPos2, vPortalPosition2) < 100.0 and pNPCUnit:GetFlag_LUA(2) == true then
				if pNPCUnit:GetInt_LUA(2) ~= 2 then
					pNPCUnit:SetTimerRestart( 2 )
					pNPCUnit:SetInt_LUA(2, 2)
					bUpdateVote = true
				end
			else
				if pNPCUnit:GetInt_LUA(2) ~= 3 then
					pNPCUnit:SetTimerRestart( 2 )
					pNPCUnit:SetInt_LUA(2, 3)
					bUpdateVote = true
				end							
			end
		end

		if pUserUnit3 ~= nil then
			local vUserPos3 = pUserUnit3:GetPos()
			if pX2Game:GetDist_LUA(vUserPos3, vPortalPosition1) < 100.0 and pNPCUnit:GetFlag_LUA(1) == true then
				if pNPCUnit:GetInt_LUA(3) ~= 1 then
					pNPCUnit:SetTimerRestart( 3 )
					pNPCUnit:SetInt_LUA(3, 1)
					bUpdateVote = true
				end
			elseif pX2Game:GetDist_LUA(vUserPos3, vPortalPosition2) < 100.0 and pNPCUnit:GetFlag_LUA(2) == true then
				if pNPCUnit:GetInt_LUA(3) ~= 2 then
					pNPCUnit:SetTimerRestart( 3 )
					pNPCUnit:SetInt_LUA(3, 2)
					bUpdateVote = true
				end
			else
				if pNPCUnit:GetInt_LUA(3) ~= 3 then
					pNPCUnit:SetTimerRestart( 3 )
					pNPCUnit:SetInt_LUA(3, 3)
					bUpdateVote = true
				end							
			end
		end

		if pUserUnit4 ~= nil then
			local vUserPos4 = pUserUnit4:GetPos()
			if pX2Game:GetDist_LUA(vUserPos4, vPortalPosition1) < 100.0 and pNPCUnit:GetFlag_LUA(1) == true then
				if pNPCUnit:GetInt_LUA(4) ~= 1 then
					pNPCUnit:SetTimerRestart( 4 )
					pNPCUnit:SetInt_LUA(4, 1)
					bUpdateVote = true
				end
			elseif pX2Game:GetDist_LUA(vUserPos4, vPortalPosition2) < 100.0 and pNPCUnit:GetFlag_LUA(2) == true then
				if pNPCUnit:GetInt_LUA(4) ~= 2 then
					pNPCUnit:SetTimerRestart( 4 )
					pNPCUnit:SetInt_LUA(4, 2)
					bUpdateVote = true
				end
			else
				if pNPCUnit:GetInt_LUA(4) ~= 3 then
					pNPCUnit:SetTimerRestart( 4 )
					pNPCUnit:SetInt_LUA(4, 3)
					bUpdateVote = true
				end
			end
		end


		local bStableCheck = true
		local iStableVote1 = 0
		local iStableVote2 = 0

		local iUnstableVote1 = 0
		local iUnstableVote2 = 0
		local iUnstableVote3 = 0
		if pUserUnit1 ~= nil then
			if pNPCUnit:GetTimerElapsedTime( 1 ) > 2.0 then
				if pNPCUnit:GetInt_LUA(1) == 1 then
					iStableVote1 = iStableVote1 + 1
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(1) == 2 then
					iStableVote2 = iStableVote2 + 1
					iUnstableVote2 = iUnstableVote2 + 1
				else
					bStableCheck = false
					iUnstableVote3 = iUnstableVote3 + 1
				end
			else
				bStableCheck = false
				if pNPCUnit:GetInt_LUA(1) == 1 then
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(1) == 2 then
					iUnstableVote2 = iUnstableVote2 + 1
				else
					iUnstableVote3 = iUnstableVote3 + 1
				end
			end
		end
		if pUserUnit2 ~= nil then
			if pNPCUnit:GetTimerElapsedTime( 2 ) > 2.0 then
				if pNPCUnit:GetInt_LUA(2) == 1 then
					iStableVote1 = iStableVote1 + 1
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(2) == 2 then
					iStableVote2 = iStableVote2 + 1
					iUnstableVote2 = iUnstableVote2 + 1
				else
					bStableCheck = false
					iUnstableVote3 = iUnstableVote3 + 1
				end
			else
				bStableCheck = false
				if pNPCUnit:GetInt_LUA(2) == 1 then
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(2) == 2 then
					iUnstableVote2 = iUnstableVote2 + 1
				else
					iUnstableVote3 = iUnstableVote3 + 1
				end
			end
		end
		if pUserUnit3 ~= nil then
			if pNPCUnit:GetTimerElapsedTime( 3 ) > 2.0 then
				if pNPCUnit:GetInt_LUA(3) == 1 then
					iStableVote1 = iStableVote1 + 1
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(3) == 2 then
					iStableVote2 = iStableVote2 + 1
					iUnstableVote2 = iUnstableVote2 + 1
				else
					bStableCheck = false
					iUnstableVote3 = iUnstableVote3 + 1
				end
			else
				bStableCheck = false
				if pNPCUnit:GetInt_LUA(3) == 1 then
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(3) == 2 then
					iUnstableVote2 = iUnstableVote2 + 1
				else
					iUnstableVote3 = iUnstableVote3 + 1
				end
			end
		end
		if pUserUnit4 ~= nil then
			if pNPCUnit:GetTimerElapsedTime( 4 ) > 2.0 then
				if pNPCUnit:GetInt_LUA(4) == 1 then
					iStableVote1 = iStableVote1 + 1
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(4) == 2 then
					iStableVote2 = iStableVote2 + 1
					iUnstableVote2 = iUnstableVote2 + 1
				else
					bStableCheck = false
					iUnstableVote3 = iUnstableVote3 + 1
				end
			else
				bStableCheck = false
				if pNPCUnit:GetInt_LUA(4) == 1 then
					iUnstableVote1 = iUnstableVote1 + 1
				elseif pNPCUnit:GetInt_LUA(4) == 2 then
					iUnstableVote2 = iUnstableVote2 + 1
				else
					iUnstableVote3 = iUnstableVote3 + 1
				end
			end
		end

		if bUpdateVote == true then
		
			local vVotePosition1 = pNPCUnit:GetVector_LUA(0)
			local vVotePosition2 = pNPCUnit:GetVector_LUA(1)

			vVotePosition1.y = vVotePosition1.y + 400
			vVotePosition2.y = vVotePosition2.y + 400

			local pMajorParticle = pX2Game:GetMajorParticle()

			if pNPCUnit:GetFlag_LUA(1) == true then
				local pOldParticle1 = pNPCUnit:GetMajorParticle_LUA( 1 )
				if pOldParticle1 ~= nil then
					pMajorParticle:DestroyInstance( pOldParticle1 )
					pNPCUnit:ClearMajorParticle_LUA( 1 )
				end
			end

			if pNPCUnit:GetFlag_LUA(2) == true then
				local pOldParticle2 = pNPCUnit:GetMajorParticle_LUA( 2 )
				if pOldParticle2 ~= nil then
					pMajorParticle:DestroyInstance( pOldParticle2 )
					pNPCUnit:ClearMajorParticle_LUA( 2 )				
				end
			end
			
			
			if pNPCUnit:GetFlag_LUA(1) == true then
				local pParticle1 = nil

				if iUnstableVote1 == 0 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount0", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 1 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount1", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 2 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount2", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 3 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount3", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 4 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount4", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 5 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount5", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 6 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount6", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 7 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount7", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 8 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount8", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote1 == 9 then
					pParticle1 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount9", vVotePosition1, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				end

				if pParticle1 ~= nil then
					pNPCUnit:SetMajorParticle_LUA(1, pParticle1:GetHandle() )
				end
			end
			
			
			if pNPCUnit:GetFlag_LUA(2) == true then
				local pParticle2 = nil

				if iUnstableVote2 == 0 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount0", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 1 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount1", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 2 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount2", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 3 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount3", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 4 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount4", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 5 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount5", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 6 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount6", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 7 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount7", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 8 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount8", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				elseif iUnstableVote2 == 9 then
					pParticle2 = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "HenirVoteCount9", vVotePosition2, D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				end

				if pParticle2 ~= nil then
					pNPCUnit:SetMajorParticle_LUA(2, pParticle2:GetHandle() )
				end
			end

		end

		---- 양쪽으로 표가 갈렸을 경우 Unstable
		if iStableVote1 ~= 0 and iStableVote2 ~= 0 then
			bStableCheck = false
		end
		
		local iDecision = 0
		---- 유저들의 신속한 동작으로 타임아웃 전에 투표가 결정됐다
		if bStableCheck == true then
			if iStableVote1 > iStableVote2 then
				iDecision = 1
			elseif iStableVote1 < iStableVote2 then
				iDecision = 2
			elseif iStableVote1 ~= 0 then
				iDecision = 3
			end
		---- 우왕좌왕하느라 타임아웃까지 끌고감
		elseif pNPCUnit:GetTimerElapsedTime( 5 ) > 10.0 then
			if iUnstableVote3 >= iUnstableVote1 and iUnstableVote3 >= iUnstableVote2 then			
				iDecision = 3
			elseif iUnstableVote1 > iUnstableVote2 then
				iDecision = 1
			elseif iUnstableVote1 < iUnstableVote2 then
				iDecision = 2
			elseif iUnstableVote1 ~= 0 then
				iDecision = 2 -- 양쪽이 동률일 경우 정예 우선
			else
				iDecision = 3
			end
		end
		
		if iDecision == 1 then
			local pMeshInstance1 = pNPCUnit:GetMajorMeshPlayer_LUA( 1 )
			pMeshInstance1:ChangeAnim_LUA("Broken", XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"], 1.0)
			pNPCUnit:SetInt_LUA(0, 7)
			pNPCUnit:SetTimerRestart( 0 ) 
		elseif iDecision == 2 then
			local pMeshInstance2 = pNPCUnit:GetMajorMeshPlayer_LUA( 2 )
			pMeshInstance2:ChangeAnim_LUA("Broken", XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"], 1.0)
			pNPCUnit:SetInt_LUA(0, 7)
			pNPCUnit:SetTimerRestart( 0 ) 
		elseif iDecision == 3 then
			pNPCUnit:SetInt_LUA(0, 7)
			pNPCUnit:SetTimerRestart( 0 ) 
		end

		pNPCUnit:SetInt_LUA(5, iDecision)

	end	

    if pNPCUnit:GetTimerElapsedTime( 0 ) > 0.01 and
		pNPCUnit:GetInt_LUA(0) == 7 then
		
		local pUserUnit1 = pX2Game:GetUserUnit(0)
		local pUserUnit2 = pX2Game:GetUserUnit(1)
		local pUserUnit3 = pX2Game:GetUserUnit(2)
		local pUserUnit4 = pX2Game:GetUserUnit(3)

		if pUserUnit1 ~= nil then
			pUserUnit1:SetCanNotInputTime_LUA(3)
		end
		if pUserUnit2 ~= nil then
			pUserUnit2:SetCanNotInputTime_LUA(3)
		end
		if pUserUnit3 ~= nil then
			pUserUnit3:SetCanNotInputTime_LUA(3)
		end
		if pUserUnit4 ~= nil then
			pUserUnit4:SetCanNotInputTime_LUA(3)
		end

		local pMajorParticle = pX2Game:GetMajorParticle()
		local pOldParticle = pNPCUnit:GetMajorParticle_LUA( 0 )
		if pOldParticle ~= nil then
			pMajorParticle:DestroyInstance( pOldParticle )
			pNPCUnit:ClearMajorParticle_LUA( 0 )
		end

		pNPCUnit:SetInt_LUA(0, 8)
	end


    if pNPCUnit:GetTimerElapsedTime( 0 ) > 2.0 and
		pNPCUnit:GetInt_LUA(0) == 8 then

		local iDecision = pNPCUnit:GetInt_LUA(5)
		if iDecision ~= 3 then
			local pUserUnit1 = pX2Game:GetUserUnit(0)
			local pUserUnit2 = pX2Game:GetUserUnit(1)
			local pUserUnit3 = pX2Game:GetUserUnit(2)
			local pUserUnit4 = pX2Game:GetUserUnit(3)


			if pUserUnit1 ~= nil then
				pUserUnit1:CreateTeleportEffect( pUserUnit1:GetPos(), pUserUnit1:GetRotateDegree() )
				--pUserUnit1:SetShow(false)
				pUserUnit1:SetCanNotInputTime_LUA(1)
			end
			if pUserUnit2 ~= nil then
				pUserUnit2:CreateTeleportEffect( pUserUnit2:GetPos(), pUserUnit2:GetRotateDegree() )
				--pUserUnit2:SetShow(false)
				pUserUnit2:SetCanNotInputTime_LUA(1)
			end
			if pUserUnit3 ~= nil then
				pUserUnit3:CreateTeleportEffect( pUserUnit3:GetPos(), pUserUnit3:GetRotateDegree() )
				--pUserUnit3:SetShow(false)
				pUserUnit3:SetCanNotInputTime_LUA(1)
			end
			if pUserUnit4 ~= nil then
				pUserUnit4:CreateTeleportEffect( pUserUnit4:GetPos(), pUserUnit4:GetRotateDegree() )
				--pUserUnit4:SetShow(false)
				pUserUnit4:SetCanNotInputTime_LUA(1)
			end
		end

		pNPCUnit:SetInt_LUA(0, 9)
	end	



    if pNPCUnit:GetTimerElapsedTime( 0 ) > 2.5 and
		pNPCUnit:GetInt_LUA(0) == 9 then

		local pMajorParticle = pX2Game:GetMajorParticle()

		local iDecision = pNPCUnit:GetInt_LUA(5)
		if iDecision == 1 then
			pX2Game:SecretDungeonStageLoadReq(1)
		elseif iDecision == 2 then
			pX2Game:SecretDungeonStageLoadReq(2)
		elseif iDecision == 3 then
			pX2Game:SecretDungeonStageLoadReq(3)
		end

		-- 파티클 모두 삭제
		local pParticle3 = pNPCUnit:GetMajorParticle_LUA( 3 )
		if pParticle3 ~= nil then
			pMajorParticle:DestroyInstance( pParticle3 )
			pNPCUnit:ClearMajorParticle_LUA( 3 )
		end
		local pParticle4 = pNPCUnit:GetMajorParticle_LUA( 4 )
		if pParticle4 ~= nil then
			pMajorParticle:DestroyInstance( pParticle4 )
			pNPCUnit:ClearMajorParticle_LUA( 4 )
		end
		local pParticle5 = pNPCUnit:GetMajorParticle_LUA( 5 )
		if pParticle5 ~= nil then
			pMajorParticle:DestroyInstance( pParticle5 )
			pNPCUnit:ClearMajorParticle_LUA( 5 )
		end
		local pParticle6 = pNPCUnit:GetMajorParticle_LUA( 6 )
		if pParticle6 ~= nil then
			pMajorParticle:DestroyInstance( pParticle6 )
			pNPCUnit:ClearMajorParticle_LUA( 6 )
		end

		local camera = pX2Game:GetX2Camera()
		local vLook = pNPCUnit:GetPos()
		vLook.y = vLook.y + 250
		camera:PartsLookTrackingCameraByNpc_LUA( pNPCUnit, vLook, D3DXVECTOR3(1750, 350, 0), D3DXVECTOR3( 0, 0, 2 ), 0.5 )
		pNPCUnit:SetInt_LUA(0, 10)
	end	
	
end



function HENIR_THREE_WAY_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
--[[
		local pUserUnit1 = pX2Game:GetUserUnit(0)
		local pUserUnit2 = pX2Game:GetUserUnit(1)
		local pUserUnit3 = pX2Game:GetUserUnit(2)
		local pUserUnit4 = pX2Game:GetUserUnit(3)

		if pUserUnit1 ~= nil then
			pUserUnit1:SetShow(true)
			pUserUnit1:SetCanNotInputTime_LUA(0)
		end
		if pUserUnit2 ~= nil then
			pUserUnit2:SetShow(true)
			pUserUnit2:SetCanNotInputTime_LUA(0)
		end
		if pUserUnit3 ~= nil then
			pUserUnit3:SetShow(true)
			pUserUnit3:SetCanNotInputTime_LUA(0)
		end
		if pUserUnit4 ~= nil then
			pUserUnit4:SetShow(true)
			pUserUnit4:SetCanNotInputTime_LUA(0)
		end
--]]
end



