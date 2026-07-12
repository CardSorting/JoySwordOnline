-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- GetInt_LUA(0~2) 소환될 몬스터 ID
-- GetInt_LUA(3) 몬스터 소환한 횟수

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 150.0,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Dummy_Ani_Wait.x",
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
	USE_SLASH_TRACE		= FALSE,
	
	HEAD_BONE_NAME			= "Bip01",

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	-- 몬스터 소환 구간 1
	{ STATE_NAME = "TROCK_SUMMON_CAVE1_SUMMON_01",	LUA_STATE_START_FUNC = "TROCK_SUMMON_CAVE1_SUMMON_01_START",
													LUA_FRAME_MOVE_FUNC = "TROCK_SUMMON_CAVE1_SUMMON_01_FRAME_MOVE",},	
	-- 몬스터 소환 구간 2
	{ STATE_NAME = "TROCK_SUMMON_CAVE1_SUMMON_02",  LUA_STATE_START_FUNC = "TROCK_SUMMON_CAVE1_SUMMON_02_START",
	                                                LUA_FRAME_MOVE_FUNC = "TROCK_SUMMON_CAVE1_SUMMON_02_FRAME_MOVE",},
	-- 몬스터 소환 구간 3
	{ STATE_NAME = "TROCK_SUMMON_CAVE1_SUMMON_03",	LUA_STATE_START_FUNC = "TROCK_SUMMON_CAVE1_SUMMON_03_START",
		                                            LUA_FRAME_MOVE_FUNC = "TROCK_SUMMON_CAVE1_SUMMON_03_FRAME_MOVE",},
	{ STATE_NAME = "TROCK_SUMMON_CAVE1_DYING",		},
	
	START_STATE	= "TROCK_SUMMON_CAVE1_SUMMON_01",
	
	DYING_LAND_FRONT	= "TROCK_SUMMON_CAVE1_DYING",
	DYING_LAND_BACK		= "TROCK_SUMMON_CAVE1_DYING",
	DYING_SKY			= "TROCK_SUMMON_CAVE1_DYING",

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
-- 몬스터 소환 구간 1
TROCK_SUMMON_CAVE1_SUMMON_01 = 
{
	SHOW			= FALSE,
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	CAN_PUSH_UNIT				= FALSE,
	CAaN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE		= TRUE,
	INVINCIBLE		= { 0, 100, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_SUMMON_CAVE1_SUMMON_02",		"CF_TROCK_SUMMON_CAVE1_SUMMON_01",	},					
	},
}

function CF_TROCK_SUMMON_CAVE1_SUMMON_01( pKTDXApp, pX2Game, pNPCUnit )	
	local SummonCount = pNPCUnit:GetInt_LUA(3)
	if 5 <= SummonCount then				--- 몇마리 소환 하면 다음 스테이트로 넘어가는지 
		return true
	end
	
	return false
end

function TROCK_SUMMON_CAVE1_SUMMON_01_START( pKTDXApp, pX2Game, pNPCUnit )
	--내가 몬스터를 소환한 횟수를 저장하는 값 초기화
	pNPCUnit:SetInt_LUA( 3, 0 )
	-- 시간 초기화
	pNPCUnit:SetTimerRestart(0)
	-- GetInt_LUA(0~2)
	pNPCUnit:SetInt_LUA(0, NPC_UNIT_ID["NUI_RASH_VEGA_TROCK_SUMMON"] )     ---소환할 몬스터 id 
	pNPCUnit:SetInt_LUA(1, NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK_SUMMON"] )
	pNPCUnit:SetInt_LUA(2, NPC_UNIT_ID["NUI_RASH_VEGA_TROCK_SUMMON"] )	
end

function TROCK_SUMMON_CAVE1_SUMMON_01_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	--1그룹 몬스터 소환	
	local SummonTimeGap = 5						---5초에 한번 소환
	local MaxMonsterCount = 10					---스테이지에 몬스터 숫자 
	if SummonTimeGap <= pNPCUnit:GetTimerElapsedTime(0) then	
		if MaxMonsterCount >= pX2Game:GetNPCUnitNum() then
			
			-- 지정해둔 0~2번 몬스터 중 랜덤으로 1마리 소환
			local RandVal = pNPCUnit:GetInt_LUA(3) % 3
			local CreateNpcID = pNPCUnit:GetInt_LUA( RandVal )
			local pos = pNPCUnit:GetLandPosition_LUA()
			pX2Game:CreateNPCReq_LUA( CreateNpcID, pNPCUnit:GetHardLevel(), FALSE, pos, true, 0, false  )
			
			-- 몬스터 소환 횟수 갱신
			local SummonCount = pNPCUnit:GetInt_LUA(3)
			pNPCUnit:SetInt_LUA( 3, SummonCount + 1 )	

			-- 시간 초기화
			pNPCUnit:SetTimerRestart(0)		
		end
	end
end
--------------------------------------------------------------------------
-- 몬스터 소환 구간 2
TROCK_SUMMON_CAVE1_SUMMON_02 = 
{
	SHOW						= FALSE,
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE		= TRUE,
	INVINCIBLE		= { 0, 100, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_SUMMON_CAVE1_SUMMON_03",		"CF_TROCK_SUMMON_CAVE1_SUMMON_02",	},		
	},
}

function CF_TROCK_SUMMON_CAVE1_SUMMON_02( pKTDXApp, pX2Game, pNPCUnit )	
	local SummonCount = pNPCUnit:GetInt_LUA(3)
	if 7 <= SummonCount then
		return true
	end
	
	return false
end

function TROCK_SUMMON_CAVE1_SUMMON_02_START( pKTDXApp, pX2Game, pNPCUnit )
	--내가 몬스터를 소환한 횟수를 저장하는 값 초기화
	pNPCUnit:SetInt_LUA( 3, 0 )
	-- 시간 초기화
	pNPCUnit:SetTimerRestart(0)
end

function TROCK_SUMMON_CAVE1_SUMMON_02_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	--2그룹 몬스터 소환	
	local SummonTimeGap = 3
	local MaxMonsterCount = 15
	if SummonTimeGap <= pNPCUnit:GetTimerElapsedTime(0) then	
		if MaxMonsterCount >= pX2Game:GetNPCUnitNum() then
			
			-- 지정해둔 0~2번 몬스터 중 랜덤으로 1마리 소환
			local RandVal = pNPCUnit:GetInt_LUA(3) % 3	
			local CreateNpcID = pNPCUnit:GetInt_LUA( RandVal )
			local pos = pNPCUnit:GetLandPosition_LUA()
			pX2Game:CreateNPCReq_LUA( CreateNpcID, pNPCUnit:GetHardLevel(), FALSE, pos, true, 0, false  )
			
			-- 몬스터 소환 횟수 갱신
			local SummonCount = pNPCUnit:GetInt_LUA(3)
			pNPCUnit:SetInt_LUA( 3, SummonCount + 1 )	

			-- 시간 초기화
			pNPCUnit:SetTimerRestart(0)			
		end
	end
end
--------------------------------------------------------------------------
-- 몬스터 소환 구간 3
TROCK_SUMMON_CAVE1_SUMMON_03 = 
{
	SHOW						= FALSE,
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE		= TRUE,
	INVINCIBLE		= { 0, 100, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"TROCK_SUMMON_CAVE1_DYING",		"CF_TROCK_SUMMON_CAVE1_SUMMON_03",	},		
	},
}

function CF_TROCK_SUMMON_CAVE1_SUMMON_03( pKTDXApp, pX2Game, pNPCUnit )	
	local SummonCount = pNPCUnit:GetInt_LUA(3)
	if 12 <= SummonCount then
		return true
	end
	
	return false
end

function TROCK_SUMMON_CAVE1_SUMMON_03_START( pKTDXApp, pX2Game, pNPCUnit )
	--내가 몬스터를 소환한 횟수를 저장하는 값 초기화
	pNPCUnit:SetInt_LUA( 3, 0 )
	-- 시간 초기화
	pNPCUnit:SetTimerRestart(0)
end

function TROCK_SUMMON_CAVE1_SUMMON_03_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )	
	--3그룹 몬스터 소환	
	local SummonTimeGap = 2					----소환 숫자 
	local MaxMonsterCount = 20				---소환 검사 몬스터 숫자
	if SummonTimeGap <= pNPCUnit:GetTimerElapsedTime(0) then	
		if MaxMonsterCount >= pX2Game:GetNPCUnitNum() then
			
			-- 지정해둔 0~2번 몬스터 중 랜덤으로 1마리 소환
			local RandVal = pNPCUnit:GetInt_LUA(3) % 3	
			local CreateNpcID = pNPCUnit:GetInt_LUA( RandVal )
			local pos = pNPCUnit:GetLandPosition_LUA()
							------------유닛 아이디-------레벨-------------액티브--위치-방향(true면 오른쪽)---몬스터 생성할때 delaytime 설정-noDrop-keycode 설정
			pX2Game:CreateNPCReq_LUA( CreateNpcID, pNPCUnit:GetHardLevel(), FALSE, pos, true, 0, false  )
			
			-- 몬스터 소환 횟수 갱신
			local SummonCount = pNPCUnit:GetInt_LUA(3)
			pNPCUnit:SetInt_LUA( 3, SummonCount + 1 )	

			-- 시간 초기화
			pNPCUnit:SetTimerRestart(0)			
		end
	end
end
--------------------------------------------------------------------------
TROCK_SUMMON_CAVE1_DYING = 
{
	SHOW						= FALSE,
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT= FALSE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	INVINCIBLE	= { 0, 100, }, 		
	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------
