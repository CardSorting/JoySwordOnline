-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.0,
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
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_PUMPKIN_BOX.x",
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

}

INIT_STATE = 
{
	{ STATE_NAME = "SUMMON_PUMPKIN_START",					LUA_STATE_START_FUNC = "SUMMON_PUMPKIN_START_STATE_START",},
															
	{ STATE_NAME = "SUMMON_PUMPKIN_WAIT",			},
	
	{ STATE_NAME = "SUMMON_PUMPKIN_DAMAGE",		},

	{ STATE_NAME = "SUMMON_PUMPKIN_DYING",					LUA_STATE_START_FUNC = "SUMMON_PUMPKIN_DYING_STATE_START",},


	START_STATE					= "SUMMON_PUMPKIN_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "SUMMON_PUMPKIN_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "SUMMON_PUMPKIN_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "SUMMON_PUMPKIN_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "SUMMON_PUMPKIN_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "SUMMON_PUMPKIN_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "SUMMON_PUMPKIN_DAMAGE",
	FLY_DAMAGE_FRONT			= "SUMMON_PUMPKIN_DAMAGE",
	FLY_DAMAGE_BACK				= "SUMMON_PUMPKIN_DAMAGE",
	SMALL_DAMAGE_AIR			= "SUMMON_PUMPKIN_DAMAGE",	
	BIG_DAMAGE_AIR				= "SUMMON_PUMPKIN_DAMAGE",
	DOWN_DAMAGE_AIR				= "SUMMON_PUMPKIN_DAMAGE",
	UP_DAMAGE					= "SUMMON_PUMPKIN_DAMAGE",
	DAMAGE_REVENGE				= "SUMMON_PUMPKIN_DAMAGE",
	
	WAIT_STATES = { "SUMMON_PUMPKIN_WAIT", },	
	
	DYING_LAND_FRONT			= "SUMMON_PUMPKIN_DYING",
	DYING_LAND_BACK				= "SUMMON_PUMPKIN_DYING",
	DYING_SKY				= "SUMMON_PUMPKIN_DYING",

	COMMON_FRAME_FUNC           = "SUMMON_PUMPKIN_COMMON_FRAME_MOVE",
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



SUMMON_PUMPKIN_START = 
{
	ANIM_NAME					= "Wait",
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SUMMON_PUMPKIN_WAIT",		"CT_SUMMON_PUMPKIN_WAIT"	},	
	},
	
	CT_SUMMON_PUMPKIN_WAIT = 
	{
		STATE_TIME_OVER			= 1.0,
	},	
}

SUMMON_PUMPKIN_WAIT = 
{

	ANIM_NAME					= "Wait",
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

}

SUMMON_PUMPKIN_DAMAGE = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	INVINCIBLE					= { 0, 100, }, 		
	
	SHOW						= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"SUMMON_PUMPKIN_WAIT",		},
	},
}


SUMMON_PUMPKIN_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	SHOW						= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


function SUMMON_PUMPKIN_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, 1 )
end


function SUMMON_PUMPKIN_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	local pUnit = nil
	pUnit = pX2Game:GetKeyCodeNPC( 10 ) 
	if pUnit == nil and pNPCUnit:GetInt_LUA( 0 ) == 1 then
		pNPCUnit:SetTimerRestart( 0 )
		pNPCUnit:SetInt_LUA( 0, 2 )

		local vPumpkinPos 			= nil
		local iNumOfPumpkin			= 0
		local vBIGPumpkinPos 			= nil	
		local iNumOfBIGPumpkin			= 0


		local vPumpkinPos_1P 			= { 22, 7, 8, 11, 14, 16, 12 }	
		local iNumOfPumpkin_1P			= 7
		local vBIGPumpkinPos_1P 		= { 4, }	
		local iNumOfBIGPumpkin_1P		= 1

		local vPumpkinPos_2P 			= { 22, 1, 6, 10, 9, 13, 14, 15, 17, 18 }	
		local iNumOfPumpkin_2P			= 10
		local vBIGPumpkinPos_2P 		= { 4, }	
		local iNumOfBIGPumpkin_2P		= 1

		local vPumpkinPos_3P 			= { 22, 1, 6, 10, 9, 13, 14, 15, 17, 18 }	
		local iNumOfPumpkin_3P			= 10
		local vBIGPumpkinPos_3P 		= { 3, 5 }	
		local iNumOfBIGPumpkin_3P		= 2

		local vPumpkinPos_4P 			= { 23, 21, 6, 7, 8, 9, 11, 13, 14, 15, 16, 12, 18 }	
		local iNumOfPumpkin_4P			= 13
		local vBIGPumpkinPos_4P 		= { 3, 5 }	
		local iNumOfBIGPumpkin_4P		= 2

		
		local iUserUnitNum = pX2Game:GetUserUnitNum_LUA()

		if iUserUnitNum == 1 then
			vPumpkinPos		= vPumpkinPos_1P 
			iNumOfPumpkin		= iNumOfPumpkin_1P
			vBIGPumpkinPos		= vBIGPumpkinPos_1P 
			iNumOfBIGPumpkin	= iNumOfBIGPumpkin_1P
		elseif iUserUnitNum == 2 then
			vPumpkinPos		= vPumpkinPos_2P 
			iNumOfPumpkin		= iNumOfPumpkin_2P
			vBIGPumpkinPos		= vBIGPumpkinPos_2P 
			iNumOfBIGPumpkin	= iNumOfBIGPumpkin_2P
		elseif iUserUnitNum == 3 then
			vPumpkinPos		= vPumpkinPos_3P 
			iNumOfPumpkin		= iNumOfPumpkin_3P
			vBIGPumpkinPos		= vBIGPumpkinPos_3P 
			iNumOfBIGPumpkin	= iNumOfBIGPumpkin_3P
		else
			vPumpkinPos		= vPumpkinPos_4P 
			iNumOfPumpkin		= iNumOfPumpkin_4P
			vBIGPumpkinPos		= vBIGPumpkinPos_4P 
			iNumOfBIGPumpkin	= iNumOfBIGPumpkin_4P
		end


		for i = 1, iNumOfPumpkin do
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( vPumpkinPos[i] )
			vSummonPos.y = vSummonPos.y + 500

			local fRate = pNPCUnit:GetRandVal(i) % 100
			local fDelay = i * 0.15

			if fRate < 50 then
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BOX_1"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			elseif fRate < 70 then
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BOX_2"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			elseif fRate < 90 then
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BOX_3"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			else
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BOX_4"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			end
		end
		pX2Game:FlushCreateNPCReq()


		for i = 1, iNumOfBIGPumpkin do
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( vBIGPumpkinPos[i] )
			vSummonPos.y = vSummonPos.y + 500

			local fRate = pNPCUnit:GetRandVal(i) % 100
			local fDelay = i * 0.15

			if fRate < 50 then
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_1"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			elseif fRate < 70 then
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_2"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			elseif fRate < 90 then
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_3"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			else
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_4"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, fDelay, false, 0 )
			end
		end
		pX2Game:FlushCreateNPCReq()


	end

	if pNPCUnit:GetTimerElapsedTime( 0 ) > 5.0 and pNPCUnit:GetInt_LUA( 0 ) == 2 then
		pNPCUnit:SetNowHP_LUA( 0 )
		
	end
end



function SUMMON_PUMPKIN_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end



