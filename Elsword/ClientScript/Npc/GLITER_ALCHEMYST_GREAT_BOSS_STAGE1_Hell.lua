-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
	--UNIT_SCALE      = 2,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	"ALCHEMYST_GREAT_BOSS_Stage1_WaitStart01.ogg",
	"ALCHEMYST_GREAT_BOSS_Stage1_WaitStart02.ogg",	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1.x",
	MOTION_CHANGE_TEX_XET	= "NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE0.xet",
	MOTION_ANI_TEX_XET		= "NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE0.xet",
}

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


INIT_COMPONENT = 
{
	MAX_HP				= 1000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 0,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_NO_SOUND"],
	
	NOT_EXTRA_DAMAGE	= TRUE,
	NOT_CULL  = TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAITSTART",			LUA_STATE_START_FUNC = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAITSTART_STATE",
																			LUA_FRAME_MOVE_FUNC	= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DISPLAY_ATTACK_A_FRAME_MOVE",	},
	{ STATE_NAME = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAIT",				},
	{ STATE_NAME = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B",		LUA_STATE_START_FUNC = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B_STATE_START",
	                                                                      LUA_FRAME_MOVE_FUNC	= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B_FRAME_MOVE",	STATE_COOL_TIME = 12, },
	{ STATE_NAME = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C",		LUA_STATE_START_FUNC = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C_STATE_START",
	                                                                      LUA_FRAME_MOVE_FUNC	= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C_FRAME_MOVE",	STATE_COOL_TIME = 18, },
	{ STATE_NAME = "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DYING",					},
	
	START_STATE					= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAITSTART",
	WAIT_STATE					= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DYING",
	DYING_LAND_BACK				= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DYING",
	DYING_SKY					= "GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DYING",

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

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 1,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		RATE				= 100, -- 50,
		MY_HP				= 20,		-- %, 전체 HP에 대해 현재 HP의 비율
		ESCAPE_RANGE		= 600,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}

GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAITSTART = 
{
	ANIM_NAME	= "WaitStart",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 270,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	SOUND_PLAY0					= { 0.8, "ALCHEMYST_GREAT_BOSS_Stage1_WaitStart01.ogg", 100, FALSE, -1.0, FALSE },
	SOUND_PLAY1					= { 5.2, "ALCHEMYST_GREAT_BOSS_Stage1_WaitStart02.ogg", 100, FALSE, -1.0, FALSE },		
		
	EVENT_PROCESS =
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAIT",						},
	},
}

function GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAITSTART_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetPos()
	vPos.x = 0
	vPos.y = 0
	vPos.z = 0
	
	pNPCUnit:SetPositionForce( vPos )
end

GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 270,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS =
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B",			"CT_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B",	},		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C",			"CT_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C",	},		
	},

	CT_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
	CT_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C = 
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 40,
	},
}

GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B = 
{
	ANIM_NAME	= "MAGIC_ATTACK_B",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 270,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS =
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAIT",						},
	},	
}

GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C = 
{
	ANIM_NAME	= "MAGIC_ATTACK_C",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 270,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS =
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_WAIT",						},
	},	
}

GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	    	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	DYING_SPEED					= 1.0,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	
}
	
-------------------------------------------------------------------------------
function GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_DISPLAY_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 4.173 ) then
	
		local summonNpcG = { NPC_UNIT_ID["NUI_VELDER_WRECK1"], NPC_UNIT_ID["NUI_VELDER_WRECK2"], NPC_UNIT_ID["NUI_VELDER_WRECK4"], }
		local summonG1 = { 91, 92, 93, 94, 95 }
		local summonG2 = { 82, 83, 84, 85, 86, 87, 88, 89, }
		local summonG3 = { 97, 98, 99, 100, 101, 102, }
		local summonG4 = { 103, 104, 105, 106, 107, 108, 109, }

		local randStartPosIndex = pNPCUnit:GetRandVal(0) % 5 +1
		local summonStartPos1 = summonG1[ randStartPosIndex ]

		randStartPosIndex = pNPCUnit:GetRandVal(1) % 8 +1
		local summonStartPos2 = summonG2[ randStartPosIndex ]
		
		randStartPosIndex = pNPCUnit:GetRandVal(2) % 8 +1
		local summonStartPos3 = summonG2[ randStartPosIndex ]

		randStartPosIndex = pNPCUnit:GetRandVal(3) % 6 +1
		local summonStartPos4 = summonG3[ randStartPosIndex ]

		randStartPosIndex = pNPCUnit:GetRandVal(4) % 7 +1
		local summonStartPos5 = summonG4[ randStartPosIndex ]

		randStartPosIndex = pNPCUnit:GetRandVal(5) % 7 +1
		local summonStartPos6 = summonG4[ randStartPosIndex ]
				

		local summonNpc = pNPCUnit:GetRandVal(6) % 3 +1
		local vSummonPos = pX2Game:GetLineMap():GetStartPosition( summonStartPos1 )
		pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1, true, 0  )
		
		summonNpc = pNPCUnit:GetRandVal(7) % 3 +1		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( summonStartPos2 )
		pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1, true, 0  )

		summonNpc = pNPCUnit:GetRandVal(8) % 3 +1
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( summonStartPos3 )
		pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1, true, 0  )

		summonNpc = pNPCUnit:GetRandVal(9) % 3 +1
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( summonStartPos4 )
		pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1, true, 0  )

		summonNpc = pNPCUnit:GetRandVal(10) % 3 +1
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( summonStartPos5 )
		pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1, true, 0  )

		summonNpc = pNPCUnit:GetRandVal(10) % 3 +1
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( summonStartPos6 )
		pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1, true, 0  )

		pX2Game:FlushCreateNPCReq()
	end
end

function GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )  
  pX2Game:KillNPC( NPC_UNIT_ID["NUI_VELDER_WRECK1"], 6 )
  pX2Game:KillNPC( NPC_UNIT_ID["NUI_VELDER_WRECK2"], 6 )
  pX2Game:KillNPC( NPC_UNIT_ID["NUI_VELDER_WRECK4"], 6 )
end

function GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.42 ) then
	
	  local summonNpcG = { NPC_UNIT_ID["NUI_VELDER_WRECK1"], NPC_UNIT_ID["NUI_VELDER_WRECK2"], NPC_UNIT_ID["NUI_VELDER_WRECK4"], }
		local userListSize = pX2Game:GetUserUnitNum_LUA() - 1
		
  	
		for i = 0, userListSize do
			local pUser = pX2Game:GetUserUnit( i )
			if pUser ~= nil then
				if pUser:GetNowHP() > 0 then
					local vLandPos = pUser:GetLandPosition_LUA()
					local summonNpc = pNPCUnit:GetRandVal(i) % 3 +1
					  				
					pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vLandPos, true, 1, true, 0  )
				end
			end
		end
		
		pX2Game:FlushCreateNPCReq()
	end
end

function GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C_STATE_START( pKTDXApp, pX2Game, pNPCUnit )  
  pX2Game:KillNPC( NPC_UNIT_ID["NUI_VELDER_WRECK3"], 2 )
  pX2Game:KillNPC( NPC_UNIT_ID["NUI_VELDER_WRECK5"], 2 )
end

function GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_MAGIC_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.42 ) then
		local summonNpcG = { NPC_UNIT_ID["NUI_VELDER_WRECK3"], NPC_UNIT_ID["NUI_VELDER_WRECK5"], }
		local userListSize = pX2Game:GetUserUnitNum_LUA() - 1
	
	  	
		for i = 0, userListSize do
			local pUser = pX2Game:GetUserUnit( i )
			if pUser ~= nil then
				if pUser:GetNowHP() > 0 then
					local vLandPos = pUser:GetLandPosition_LUA()
					local summonNpc = pNPCUnit:GetRandVal(i) % 2 +1

					pX2Game:PushCreateNPCReq_Lua( summonNpcG[summonNpc], pNPCUnit:GetHardLevel(), false, vLandPos, true, 1, true, 0  )
				end
			end
		end
		
		pX2Game:FlushCreateNPCReq()
	end
end




