-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 3.0
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "rena_A_evoke_attackSphere.X",
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
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,

	NOT_EXTRA_DAMAGE	= TRUE,
	
	DIE_FLY             = 0,
}

INIT_STATE = 
{
	{ STATE_NAME = "GOD_GATE_ALLY_START",		LUA_STATE_START_FUNC = "GOD_GATE_ALLY_START_STATE_START",	},
	{ STATE_NAME = "GOD_GATE_ALLY_WAIT",		},
	{ STATE_NAME = "GOD_GATE_ALLY_DAMAGE",		},
	{ STATE_NAME = "GOD_GATE_ALLY_DYING",		},


	START_STATE					= "GOD_GATE_ALLY_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "GOD_GATE_ALLY_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "GOD_GATE_ALLY_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "GOD_GATE_ALLY_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "GOD_GATE_ALLY_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "GOD_GATE_ALLY_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "GOD_GATE_ALLY_DAMAGE",
	FLY_DAMAGE_FRONT			= "GOD_GATE_ALLY_DAMAGE",
	FLY_DAMAGE_BACK				= "GOD_GATE_ALLY_DAMAGE",
	SMALL_DAMAGE_AIR			= "GOD_GATE_ALLY_DAMAGE",	
	BIG_DAMAGE_AIR				= "GOD_GATE_ALLY_DAMAGE",
	DOWN_DAMAGE_AIR				= "GOD_GATE_ALLY_DAMAGE",
	UP_DAMAGE					= "GOD_GATE_ALLY_DAMAGE",
	DAMAGE_REVENGE				= "GOD_GATE_ALLY_DAMAGE",
	
	DYING_LAND_FRONT			= "GOD_GATE_ALLY_DYING",
	DYING_LAND_BACK				= "GOD_GATE_ALLY_DYING",
	DYING_SKY					= "GOD_GATE_ALLY_DYING",

	COMMON_FRAME_FUNC           = "GOD_GATE_ALLY_COMMON_FRAME_MOVE",
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
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
	
}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ALLY_START = 
{

	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },	
	
	LAND_CONNECT				= TRUE,
	
	RIGHT						= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	STOP_AT_CURRENT_STATE = TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"GOD_GATE_ALLY_WAIT", "CT_GOD_GATE_ALLY_WAIT" },
	},
	
	CT_GOD_GATE_ALLY_WAIT	=
	{
		STATE_TIME_OVER			= 7,
	},
}

function GOD_GATE_ALLY_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 각 타입별 몬스터 그룹 설정
	local iGateGroup 		= pNPCUnit:GetRandVal( math.random( 5 ) ) % 3
	pNPCUnit:SetInt_LUA( 0, iGateGroup )	-- 소환문이 소환하는 몬스터 그룹
	
	local iNPC1Group 		= pNPCUnit:GetRandVal( math.random( 6 ) ) % 3
	pNPCUnit:SetInt_LUA( 1, iNPC1Group )	-- 유저 대체 NPC 1이 소환하는 몬스터 그룹
	
	local iNPC2Group 		= pNPCUnit:GetRandVal( math.random( 7 ) ) % 3
	pNPCUnit:SetInt_LUA( 2, iNPC2Group )	-- 유저 대체 NPC 2이 소환하는 몬스터 그룹
	
	local iNPC3Group 		= pNPCUnit:GetRandVal( math.random( 8 ) ) % 3
	pNPCUnit:SetInt_LUA( 3, iNPC3Group )	-- 유저 대체 NPC 3이 소환하는 몬스터 그룹
	
	-- ( 거대 오펜스 몬스터 그룹에서 현재 유저수로 변경 )
	pNPCUnit:SetInt_LUA( 4, 4 )		-- 현재 유저 수
	
	pNPCUnit:SetInt_LUA( 5, -1 )	-- 거대 오펜스 몬스터 사망시, 전달되는 값
	
	pNPCUnit:SetInt_LUA( 6, 0 )		-- 소환문의 현재 스테이트 값( 남은 체력에 따라 스테이트가 다르다. )
	
	pNPCUnit:SetInt_LUA( 7, 15 )	-- 몬스터 최대 소환 개체수
	
	pNPCUnit:SetInt_LUA( 8, 0 )		-- 현재 마족 접근 수
	
	pNPCUnit:SetInt_LUA( 9, 10 )	-- 최대 마족 접근 허용 수
	
	
	-- 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 0 )	-- 거대 오펜스 몬스터의 소환 쿨타임
	pNPCUnit:SetTimerRestart( 1 )	-- 유저 대체 NPC 1의 카드 몬스터 소환 쿨타임
	pNPCUnit:SetTimerRestart( 2 )	-- 유저 대체 NPC 2의 카드 몬스터 소환 쿨타임
	pNPCUnit:SetTimerRestart( 3 )	-- 유저 대체 NPC 3의 카드 몬스터 소환 쿨타임
	pNPCUnit:SetTimerRestart( 4 )	-- 몬스터 소환 쿨타임 ( 부하때문에, 순차적으로 소환되도록 제작 )
	pNPCUnit:SetTimerRestart( 5 )	-- 유저 대체 NPC 1의 소환 쿨타임
	pNPCUnit:SetTimerRestart( 6 )	-- 유저 대체 NPC 2의 소환 쿨타임
	pNPCUnit:SetTimerRestart( 7 )	-- 유저 대체 NPC 3의 소환 쿨타임
	pNPCUnit:SetTimerRestart( 8 )	-- 미족 몬스터 접근 여부 검사 간격
	

	-- 쿨타임 저장 벡터 ( 몬스터 소환 간격, 거대 오펜스 몬스터의 소환 쿨타임, 유저 대타 NPC 1의 몬스터 소환 쿨타임 )
	local fSummonMonsterGap		= 1.0	-- 몬스터 소환 간격
	local fApproacjMonsterGap	= 1.0	-- 마족 접근 검사 간격
	pNPCUnit:SetVector_LUA( 0,  D3DXVECTOR3(fSummonMonsterGap, fApproacjMonsterGap, 0.0 ) )
	
	local fLargeOffenceMonsterCoolTime 	= 20.0		-- 거대 오펜스 몬스터 쿨타임
	pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( fLargeOffenceMonsterCoolTime, 0.0, 0.0 ) )	-- 쿨타임 저장 벡터
	
	-- 쿨타임 저장 벡터 ( 유저 대체 NPC 1의 몬스터 소환 쿨타임, 유저 대체 NPC 2의 몬스터 소환 쿨타임, 유저 대체 NPC 3의 몬스터소환 쿨타임 )
	pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( 0.0, 0.0, 0.0 ) )	-- 쿨타임 저장 벡터
	
	-- 유저 대체 NPC 소환 여부 ( 유저 대체 NPC 1의 몬스터 소환 여부, 유저 대체 NPC 2의 몬스터 소환 여부, 유저 대체 NPC 3의 몬스터 소환 여부 )
	pNPCUnit:SetVector_LUA( 3,  D3DXVECTOR3( 0.0, 0.0, 0.0 ) )
	
	-- 유저 대체 NPC 소환 쿨타임 ( 유저 대체 NPC 1의 소환 쿨타임, 유저 대체 NPC 2의 소환 쿨타임, 유저 대체 NPC 3의 소환 쿨타임 )
	pNPCUnit:SetVector_LUA( 4,  D3DXVECTOR3( 50.0, 100.0, 150.0 ) )	-- 쿨타임 저장 벡터
	
	-- x = 마족 몬스터 접근 검사 최대 거리, y = 유저 개체수 검사 간격
	pNPCUnit:SetVector_LUA( 5,  D3DXVECTOR3( 500.0, 1.0, 0.0 ) )	-- 쿨타임 저장 벡터
	
	
	pNPCUnit:SetFlag_LUA( 0, true )		-- 거대 오펜스 몬스터 소환 여부
	pNPCUnit:SetFlag_LUA( 1, false )	-- 유저 대체 NPC 1 소환 여부
	pNPCUnit:SetFlag_LUA( 2, false )	-- 유저 대체 NPC 2 소환 여부
	pNPCUnit:SetFlag_LUA( 3, false )	-- 유저 대체 NPC 3 소환 여부
	pNPCUnit:SetFlag_LUA( 4, true )		-- 소환 가능 여부 Flag 설정
	pNPCUnit:SetFlag_LUA( 5, false )	-- 유저 대체 NPC 1 소환 여부
	pNPCUnit:SetFlag_LUA( 6, false )	-- 유저 대체 NPC 2 소환 여부
	pNPCUnit:SetFlag_LUA( 7, false )	-- 유저 대체 NPC 3 소환 여부
	pNPCUnit:SetFlag_LUA( 8, true )		-- 처음 소환 여부
	
	
	-- -- 유저 대체 NPC 소환
	-- local iNumOfUser = 0	-- 빈 유저 수
	
	-- for i = 0, 3 do
		-- local pUser = pX2Game:GetUserUnit( i )
		-- if nil == pUser then
			-- iNumOfUser = iNumOfUser + 1
		-- end	
	-- end
	
	-- for i = 0, iNumOfUser - 1 do
		-- pNPCUnit:SetFlag_LUA( 1 + i, true )	-- 유저 대체 NPC 몬스터 소환 설정
		-- pNPCUnit:SetFlag_LUA( 5 + i, true )	-- 유저 대체 NPC 소환 설정
	-- end
	
	
	-- -- 임시로 유저에게 방어력 버프 설정
	-- local userListSize = pX2Game:GetUserUnitListSize() - 1
	
	-- for i = 0, userListSize do
		-- local pUser = pX2Game:GetUserUnit( i )
		
		-- if pUser ~= nil then
			
			-- pUser:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_GATE_DEFENCE"] )
			
		-- end
		
	-- end
	
end

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ALLY_WAIT = 
{

	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	RIGHT						= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	STOP_AT_CURRENT_STATE 		= FALSE,

}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ALLY_DAMAGE = 
{

	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	RIGHT						= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ALLY_DYING = 
{

	ANIM_NAME					= "Normal",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	RIGHT						= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_24021,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
}

-----------------------------------------------------------------------------------------------------------

function GOD_GATE_ALLY_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 죽어있다면, 검사 하지 말자
	if 0.0 >= pNPCUnit:GetNowHP() then
		return
	end

	-- 마족 접근 여부 검사
	CHECK_APPROACH_ENEMY( pX2Game, pNPCUnit )
	
	-- 유저 개체수 검사 및 유저 대체 NPC 소환 처리
	CHECK_USER_NUM( pX2Game, pNPCUnit )
	
	-- 몬스터 소환 검사
	CHECK_SUMMON_MONSTER_ALLY( pX2Game, pNPCUnit )

	-- 유저 대체 NPC 및 거대 오펜스 몬스터 사망시 처리
	CHECK_DIE_MONSTER_ALLY( pX2Game, pNPCUnit )
	
end

-----------------------------------------------------------------------------------------------------------

-- 유저 개체수 검사 및 유저 대체 NPC 소환 처리 함수
function CHECK_USER_NUM( pX2Game, pNPCUnit )

	local fCheckUserNumCoolTime = pNPCUnit:GetTimerElapsedTime( 9 )	-- 마족 접근 여부 검사 쿨타임
	local vCheckUserInfo		= pNPCUnit:GetVector_LUA( 5 )		-- 마족 접근 여부 검사 간격 ( Y에 저장중 )

	if fCheckUserNumCoolTime >= vCheckUserInfo.y then
		
		pNPCUnit:SetTimerRestart( 9 )		-- 마족 접근 여부 검사 쿨타임 초기화

		-- 유저 대체 NPC 소환
		local iNumOfUser = 0				-- 빈 유저 수
		
		-- 현재 유저수 검사
		for i = 0, 3 do
			local pUser = pX2Game:GetUserUnit( i )
			if nil ~= pUser then
				iNumOfUser = iNumOfUser + 1
			end	
		end
		
		local iBeforeNumOfUser = pNPCUnit:GetInt_LUA( 4 )	-- 이전 유저 수
		
		if iNumOfUser >= iBeforeNumOfUser then		-- 유저수가 감소했을때만 유저 대체 NPC 추가 설정
			return
		end
		
		local iStartNum = 4 - iBeforeNumOfUser		-- 최대 유저 인원 - 이전 유저 인원
		local iEndNum	= 4 - iNumOfUser - 1		-- 최대 유저 인원 - 현재 유저 인원 - 1
		
		-- 유저 대체 NPC 및 유저 대체 NPC가 소환하는 몬스터 설정
		for i = iStartNum, iEndNum do
		
			local fActiveNPCMonster = pNPCUnit:GetFlag_LUA( 1 + i )		-- 유저 대체 NPC 몬스터 현재 소환 가능 여부
			
			if false == fActiveNPCMonster then
				pNPCUnit:SetFlag_LUA( 1 + i, true )	-- 유저 대체 NPC 몬스터 소환 설정
			end
			
			local fActiveNPC = pNPCUnit:GetFlag_LUA( 5 + i )			-- 유저 대체 NPC 현재 소환 가능 여부
			
			if false == fActiveNPC then
				pNPCUnit:SetFlag_LUA( 5 + i, true )	-- 유저 대체 NPC 소환 설정
			end	
			
		end
		
		pNPCUnit:SetInt_LUA( 4, iNumOfUser )	--  현재 유저 수를 이전 유저 수로 설정
	
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 마족 접근 여부 검사 함수
function CHECK_APPROACH_ENEMY( pX2Game, pNPCUnit )

	local fCheckApproachEnemyCoolTime 	= pNPCUnit:GetTimerElapsedTime( 8 )	-- 마족 접근 여부 검사 쿨타임
	local vCheckApproachEnemyGap		= pNPCUnit:GetVector_LUA( 0 )		-- 마족 접근 여부 검사 간격 ( Y에 저장중 )

	if fCheckApproachEnemyCoolTime >= vCheckApproachEnemyGap.y then
		
		pNPCUnit:SetTimerRestart( 8 )		-- 마족 접근 여부 검사 쿨타임 초기화
		
		local iNumOfNpc = pX2Game:GetNPCUnitListSize()
		
		for i = 0, iNumOfNpc - 1 do
		
			local pNpc = pX2Game:GetNPCUnit( i )
				
			if pNpc ~= nil then
				
				local bIsLargeOffenceMonster	= pNpc:GetFlag_LUA( 9 )							-- 거대 오펜스 몬스터 여부
				local bIsApproachAllyGate		= pNpc:GetFlag_LUA( 8 )							-- 아군 소환문 접근 여부
				local vCheckDistance 			= pNPCUnit:GetVector_LUA( 5 )					-- 접근 최대 거리
				local vDistance					= pNpc:GetDistanceFrom( pNPCUnit:GetPos() )		-- 소환문과 몬스터 사이의 거리
				
				if false == bIsLargeOffenceMonster and false == bIsApproachAllyGate and 4 == pNpc:GetKeyCode() and vCheckDistance.x >= vDistance and 0.0 < pNpc:GetNowHP_LUA() then
				
					--pNpc:SetNowHP_LUA(0)	-- 접근한 몬스터는 사망
					
					pNpc:SetFlag_LUA( 8, true )
					
					pNPCUnit:SetInt_LUA( 8, pNPCUnit:GetInt_LUA( 8 ) + 1 )	-- 현재 접근을 허용한 몬스터 수 갱신
					
				end
				
			end -- if
			
		end -- for
		
	end -- if
	
	
	local iNowApproachMonsterNum = pNPCUnit:GetInt_LUA( 8 )	-- 현재 접근을 허용한 몬스터 수
	local iMaxApproachMonsterNum = pNPCUnit:GetInt_LUA( 9 ) -- 접근을 허용하는 최대 몬스터 수
	
	if iNowApproachMonsterNum >= iMaxApproachMonsterNum then
		pNPCUnit:SetNowHP_LUA(0)	-- 허용수를 넘겼다면, 사망 처리
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 몬스터 소환 검사
function CHECK_SUMMON_MONSTER_ALLY( pX2Game, pNPCUnit )

	local bIsPossibleSummon 	= pNPCUnit:GetFlag_LUA( 4 )				-- 현재 소환 가능 여부
	
	if false == bIsPossibleSummon then		-- 소환 불가능 상태일 때, 소환 간격 쿨타임 갱신
	
		local fSummonCoolTime = pNPCUnit:GetTimerElapsedTime( 4 )	-- 소환 간격
		
		local vfSummonMonsterGap = pNPCUnit:GetVector_LUA( 0 )
		
		if vfSummonMonsterGap.x <= fSummonCoolTime then		-- 소환 간격 완료일 때
		
			pNPCUnit:SetFlag_LUA( 4, true )					-- 소환 가능 처리
			bIsPossibleSummon 		= true					-- 밑에서 사용하기 위해, 결과값 갱신
			
		end
		
	end
	
	
	--거대 오펜스 몬스터 소환
	local fIsSummonLargeOffenceMonster = pNPCUnit:GetFlag_LUA( 0 )	-- 거대 오펜스 몬스터 소환 여부
		
	if true == fIsSummonLargeOffenceMonster then
	
		local fSummonLargeOffenceNowCoolTime 	= pNPCUnit:GetTimerElapsedTime( 0 )					-- 거대 오펜스 몬스터 쿨타임 갱신
		local fSummonLargeOffenceCoolTime		= GET_SUMMON_MONSTER_COOLTIME_ALLY( 0, pNPCUnit )	-- 유저 대체 NPC 쿨타임
		
		-- 개별 쿨타임 및 소환 가능 쿨타임 완료일 때, 소환 실행
		if fSummonLargeOffenceCoolTime <= fSummonLargeOffenceNowCoolTime and true == bIsPossibleSummon then
		
			
			local bIsFirstSummon = pNPCUnit:GetFlag_LUA( 8 )	-- 처음 소환 여부
			
			-- 스테이지 인덱스 변경 ( 처음 소환시, 스테이지 인덱스 증가시키지 않는다. )
			if false == bIsFirstSummon then
			
				local iNowStage = pNPCUnit:GetInt_LUA( 6 )		-- 현재 스테이지
				pNPCUnit:SetInt_LUA( 6, iNowStage + 1 )			-- 다음 스테이지 인덱스 설정
				
			else
				
				pNPCUnit:SetFlag_LUA( 8, false )	-- 처음 거대 오펜스 몬스터 소환 여부 ( 처음 소환시, 스테이지 인덱스 증가시키지 않는다. )
			
			end
		
		
			pNPCUnit:SetFlag_LUA( 0, false )	-- 거대 오펜스 몬스터 소환 불가능 처리
			pNPCUnit:SetFlag_LUA( 4, false )	-- 소환 불가능 처리
			pNPCUnit:SetTimerRestart( 4 )		-- 소환 간격 초기화
		
			SUMMON_MONSTER_LARGE_OFFENCE_GROUP_ALLY( pX2Game, pNPCUnit )
			
			bIsPossibleSummon = false -- 소환 간격을 위해, 소환은 제한하고 쿨타임만 갱신
			
		end
	
	end
	
	
	-- 유저 대체 NPC가 소환하는 몬스터
	for i = 0, 2 do
	
		local bIsUserNPCMonster = pNPCUnit:GetFlag_LUA( 1 + i )	-- 현재 소환 가능 여부
		
		if true == bIsUserNPCMonster then	-- 현재 해당 유저 대체 NPC가 소환중일 때
	
			local fSummonMonsterNowCoolTime = pNPCUnit:GetTimerElapsedTime( i + 1 )						-- 현재 소환 몬스터 쿨타임 갱신
			local fSummonMonsterCoolTime	= GET_SUMMON_MONSTER_COOLTIME_ALLY( i + 1, pNPCUnit )		-- 소환 몬스터 쿨타임
			
			if fSummonMonsterCoolTime <= fSummonMonsterNowCoolTime and true == bIsPossibleSummon then	-- 개별 쿨타임 및 소환 가능 쿨타임 완료일 때, 소환 실행
			
				local iMaxSummonMonsterNum	= pNPCUnit:GetInt_LUA( 7 )					-- 몬스터 최대 소환 개체수
			
				if pX2Game:LiveKeyCodeNPCNumFreeTeam( 7 ) < iMaxSummonMonsterNum then	-- 몬스터 최대 소환치를 넘지 않았을 때, 소환 동작 진행
				
					pNPCUnit:SetFlag_LUA( 4, false )	-- 소환 불가능 처리
					pNPCUnit:SetTimerRestart( 4 )		-- 소환 간격 초기화
				
					GATE_SUMMON_MONSTER_GROUP_ALLY( i + 1, pX2Game, pNPCUnit )
					
					bIsPossibleSummon = false -- 소환 간격을 위해, 소환은 제한하고 쿨타임만 갱신
					
				end
			
			end	-- if
			
		end -- if
			
			
		-- 유저 대체 NPC 소환
		local bIsUserNPC = pNPCUnit:GetFlag_LUA( 5 + i )	-- 현재 소환 가능 여부
		
		if true == bIsUserNPC then	-- 현재 해당 유저 대체 NPC가 소환중일 때
		
			local fSummonUserNPCNowCoolTime = pNPCUnit:GetTimerElapsedTime( 5 + i )				-- 현재 유저 대체 NPC 쿨타임 갱신
			local fSummonUserNPCCoolTime	= GET_SUMMON_MONSTER_COOLTIME_ALLY( 4 + i, pNPCUnit )	-- 유저 대체 NPC 쿨타임
			
			-- 개별 쿨타임 및 소환 가능 쿨타임 완료일 때, 소환 실행
			if fSummonUserNPCCoolTime <= fSummonUserNPCNowCoolTime and true == bIsPossibleSummon then
		
				pNPCUnit:SetFlag_LUA( 4, false )		-- 소환 불가능 처리
				pNPCUnit:SetFlag_LUA( 5 + i, false )	-- 유저 대체 NPC 소환 불가능 처리
				pNPCUnit:SetTimerRestart( 4 )			-- 소환 간격 초기화
				
				pNPCUnit:SetTimerRestart( 5 + i )		-- 유저 대체 NPC 소환 쿨타임 초기화
			
				SUMMON_PVP_NPC_GROUP_ALLY( i, pX2Game, pNPCUnit )
				
				bIsPossibleSummon = false -- 소환 간격을 위해, 소환은 제한하고 쿨타임만 갱신
				
			end -- if
			
		end -- if
		
	 end -- for

end

-----------------------------------------------------------------------------------------------------------

-- 거대 오펜스 몬스터 사망시 처리
function CHECK_DIE_MONSTER_ALLY( pX2Game, pNPCUnit )

	local iDieValue = pNPCUnit:GetInt_LUA( 5 )		-- 거대 오펜스 몬스터 사망시 전달되는 값
	
	-- 거대 오펜스 몬스터가 사망하면서 값을 전달해 왔을 때
	if -1 ~= iDieValue then
	
		pNPCUnit:SetTimerRestart( 0 )				-- 거대 오펜스 몬스터의 소환 쿨타임 초기화
		
		pNPCUnit:SetFlag_LUA( 0, true )				-- 거대 오펜스 몬스터 소환 여부
		
		--pNPCUnit:SetInt_LUA( 6, iDieValue + 1 )		-- 다음 스테이지 인덱스 설정
		
		pNPCUnit:SetInt_LUA( 5, -1 )				-- 값 초기화
		
	end
	
	local vSummonUserNPC = pNPCUnit:GetVector_LUA( 3 )
	
	if 0.0 < vSummonUserNPC.x then
	
		pNPCUnit:SetTimerRestart( 5 )				-- 아군 대체 NPC 1의 소환 쿨타임 초기화
		
		pNPCUnit:SetFlag_LUA( 5, true )				-- 아군 대체 NPC 1 소환 여부
		
		pNPCUnit:SetVector_LUA( 3,  D3DXVECTOR3( 0.0, vSummonUserNPC.y, vSummonUserNPC.z ) )
		
	elseif 0.0 < vSummonUserNPC.y then
	
		pNPCUnit:SetTimerRestart( 6 )				-- 아군 대체 NPC 2의 소환 쿨타임 초기화
		
		pNPCUnit:SetFlag_LUA( 6, true )				-- 아군 대체 NPC 2 소환 여부
		
		pNPCUnit:SetVector_LUA( 3,  D3DXVECTOR3( vSummonUserNPC.x, 0.0, vSummonUserNPC.z ) )
	
	elseif 0.0 < vSummonUserNPC.z then
	
		pNPCUnit:SetTimerRestart( 7 )				-- 아군 대체 NPC 3의 소환 쿨타임 초기화
		
		pNPCUnit:SetFlag_LUA( 7, true )				-- 아군 대체 NPC 3 소환 여부
		
		pNPCUnit:SetVector_LUA( 3,  D3DXVECTOR3( vSummonUserNPC.x, vSummonUserNPC.y, 0.0 ) )
	
	end
	
end	

-----------------------------------------------------------------------------------------------------------

-- 타입에 따른 소환 몬스터 쿨타임 반환 함수
function GET_SUMMON_MONSTER_COOLTIME_ALLY( iType, pNPCUnit )

	local fCoolTime 				= 0.0
	
	if 0 == iType then		-- 거대 오펜스 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 1 )
		fCoolTime = vSummonMonsterCoolTime.x
		
	elseif 1 == iType then	-- 유저 대체 NPC의 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 2 )
		fCoolTime = vSummonMonsterCoolTime.x
		
	elseif 2 == iType then	-- 유저 대체 NPC의 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 2 )
		fCoolTime = vSummonMonsterCoolTime.y
		
	elseif 3 == iType then	-- 유저 대체 NPC의 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 2 )
		fCoolTime = vSummonMonsterCoolTime.z
		
	elseif 4 == iType then	-- 유저 대체 NPC 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 4 )
		fCoolTime = vSummonMonsterCoolTime.x
		
	elseif 5 == iType then	-- 유저 대체 NPC 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 4 )
		fCoolTime = vSummonMonsterCoolTime.y
		
	elseif 6 == iType then	-- 유저 대체 NPC 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 4 )
		fCoolTime = vSummonMonsterCoolTime.z

	end
	
	return fCoolTime

end

-----------------------------------------------------------------------------------------------------------

-- 타입에 따른 소환 몬스터 쿨타임 설정 함수
function SET_SUMMON_MONSTER_COOLTIME_ALLY( iType, fCoolTime, pNPCUnit )
	
	pNPCUnit:SetTimerRestart( iType )		-- 쿨타임 초기화
	
	if 0 == iType then									-- 거대 오펜스 몬스터 소환 쿨타입 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 1 )
		pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( vSummonMonsterCoolTime.x, fCoolTime, vSummonMonsterCoolTime.z ) )
		
	elseif 1 == iType then	-- 유저 대체 NPC 1의 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 2 )
		pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( fCoolTime, vSummonMonsterCoolTime.y, vSummonMonsterCoolTime.z ) )
		
	elseif 2 == iType then	-- 유저 대체 NPC 2의 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 2 )
		pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( vSummonMonsterCoolTime.x, fCoolTime, vSummonMonsterCoolTime.z ) )
		
	elseif 3 == iType then	-- 유저 대체 NPC 3의 몬스터 소환 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 2 )
		pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( vSummonMonsterCoolTime.x, vSummonMonsterCoolTime.y, fCoolTime ) )
		
	elseif 4 == iType then	-- 유저 대체 NPC 1 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 4 )
		pNPCUnit:SetVector_LUA( 4,  D3DXVECTOR3( fCoolTime, vSummonMonsterCoolTime.y, vSummonMonsterCoolTime.z ) )
		
	elseif 5 == iType then	-- 유저 대체 NPC 2 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 4 )
		pNPCUnit:SetVector_LUA( 4,  D3DXVECTOR3( vSummonMonsterCoolTime.x, fCoolTime, vSummonMonsterCoolTime.z ) )
		
	elseif 6 == iType then	-- 유저 대체 NPC 3 쿨타임 조건
	
		local vSummonMonsterCoolTime = pNPCUnit:GetVector_LUA( 4 )
		pNPCUnit:SetVector_LUA( 4,  D3DXVECTOR3( vSummonMonsterCoolTime.x, vSummonMonsterCoolTime.y, fCoolTime ) )
	
	end

end

-----------------------------------------------------------------------------------------------------------

-- 몬스터 소환 함수
function SUMMON_MONSTER_ALLY( iType, iMonsterID, fCoolTime, pX2Game, pNPCUnit )

	--local vSummonPos 	= D3DXVECTOR3( 0.0, 0.0, 0.0 )	-- 소환 위치
	local vSummonPos 	= pNPCUnit:GetPos()
	local bGetIsRight 	= true							-- 소환 방향

	--pX2Game:CreateNPCReq_LUA( iMonsterID, 1, true, vSummonPos, bGetIsRight, 0, true )
	pX2Game:CreateNPCReqAlly( iMonsterID, 1, true, vSummonPos, bGetIsRight, D3DXVECTOR3(0.0, 7, 0.0), true, TEAM_NUM["TN_RED"] )
	
	-- 소환 사운드 재생
	pNPCUnit:PlaySound_LUA( "DarkGate_MonSummon01.ogg" )
	
	SET_SUMMON_MONSTER_COOLTIME_ALLY( iType, fCoolTime, pNPCUnit )	-- 쿨타임 설정
	
end

-----------------------------------------------------------------------------------------------------------

-- 유저 대체 NPC의 몬스터 그룹 소환 함수
function GATE_SUMMON_MONSTER_GROUP_ALLY( iType, pX2Game, pNPCUnit )

	local iMonsterGroup = pNPCUnit:GetInt_LUA( iType )	-- 몬스터 그룹
	local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )		-- 현재 스테이지
	local iSummonType 	= pNPCUnit:GetRandVal( math.random( 5 ) ) % 4	-- 소환할 몬스터 종류
	
	if 0 == iMonsterGroup then
		
		if 0 == iSummonType then		-- 방어형 1그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_DEFENDER_BIG_CRAB_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		elseif 1 == iSummonType then	-- 근접 공격형 1그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_SWORDMAN_MONKEY_WILD_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		elseif 2 == iSummonType then	-- 원거리 공격형 1그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_ARCHER_SOLDIER_CROSSBOW_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		else 	-- 마법 공격형 1그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_MAGICIAN_MONKEY_BOMB_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		end
		
	else
		
		if 0 == iSummonType then		-- 방어형 2그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_DEFENDER_FOREST_GUARDIAN_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		elseif 1 == iSummonType then	-- 근접 공격형 2그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_SWORDMAN_TREE_KNIGHT_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		elseif 2 == iSummonType then	-- 원거리 공격형 2그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_ARCHER_CACTUS_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		else 	-- 마법 공격형 2그룹 몬스터
			SUMMON_MONSTER_ALLY( iType, NPC_UNIT_ID["NUI_GOD_MAGICIAN_WHITEMAGICIAN_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
		end
		
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 거대 오펜스 몬스터 그룹 소환 함수
function SUMMON_MONSTER_LARGE_OFFENCE_GROUP_ALLY( pX2Game, pNPCUnit )

	local iNowStage 			= pNPCUnit:GetInt_LUA( 6 )						-- 현재 스테이지
	local iLargeOffenceGroup 	= pNPCUnit:GetRandVal( math.random( 9 ) ) % 3	-- 거대 오펜스 몬스터 그룹
	
	if 0 == iLargeOffenceGroup then
		SUMMON_MONSTER_ALLY( 0, NPC_UNIT_ID["NUI_GOD_GUARDIAN_GHOST_CLOWN_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
	elseif 1 == iLargeOffenceGroup then
		SUMMON_MONSTER_ALLY( 0, NPC_UNIT_ID["NUI_GOD_GUARDIAN_ANCIENT_PPORU_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
	else
		SUMMON_MONSTER_ALLY( 0, NPC_UNIT_ID["NUI_GOD_GUARDIAN_TRANVASH_A"] + iNowStage, 15.0, pX2Game, pNPCUnit )
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 유저 대체 NPC 소환 함수
function SUMMON_PVP_NPC_GROUP_ALLY( iIndex, pX2Game, pNPCUnit )

	if 0 == iIndex then
		SUMMON_MONSTER_ALLY( iIndex + 4, NPC_UNIT_ID["NUI_GOD_AI_NPC_LOW"], 25.0, pX2Game, pNPCUnit )
	elseif 1 == iIndex then
		SUMMON_MONSTER_ALLY( iIndex + 4, NPC_UNIT_ID["NUI_GOD_AI_NPC_LIME"], 15.0, pX2Game, pNPCUnit )
	else
		SUMMON_MONSTER_ALLY( iIndex + 4, NPC_UNIT_ID["NUI_GOD_AI_NPC_PENENSIO"], 30.0, pX2Game, pNPCUnit )
	end
	
end