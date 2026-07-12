-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 375.0,
	UNIT_HEIGHT		= 5000.0,
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
	"DarkGate_Broken02.ogg",
	"DarkGate_Broken03.ogg",
	"DarkGate_Broken04.ogg",
	

	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_DarkGate_Dragon.x",
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

	HITTED_TYPE			= HITTED_TYPE["HTD_STONE2"],
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,

	--NOT_EXTRA_DAMAGE	= TRUE,
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "DARK_HALL",
	
	SET_HAS_BOSS_GAGE			= TRUE,
	SET_NUM_OF_GAGE				= 20,

	DIE_FLY             = 0,
	
	IMMUNE_SKILL_LIST = 
	{
		4512,
	},
}

INIT_STATE = 
{
	{ STATE_NAME = "GOD_GATE_ENEMY_START",		LUA_STATE_START_FUNC = "GOD_GATE_ENEMY_START_STATE_START",	},
	
	{ STATE_NAME = "GOD_GATE_ENEMY_DAMAGE",		},
	
	-- 적은 데미지를 입은 소환문 스테이트
	{ STATE_NAME = "GOD_GATE_ENEMY_A_WAIT",		},
	
	-- 심한 데미지를 입은 소환문 스테이트
	{ STATE_NAME = "GOD_GATE_ENEMY_B_WAIT",		},
	
	-- 사망 직전의 소환문 스테이트
	{ STATE_NAME = "GOD_GATE_ENEMY_C_WAIT",		},
	
	{ STATE_NAME = "GOD_GATE_ENEMY_DYING",		LUA_STATE_START_FUNC = "GOD_GATE_ENEMY_DYING_STATE_START",	
												LUA_FRAME_MOVE_FUNC = "GOD_GATE_ENEMY_DYING_FRAME_MOVE",	},


	START_STATE					= "GOD_GATE_ENEMY_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "GOD_GATE_ENEMY_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "GOD_GATE_ENEMY_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "GOD_GATE_ENEMY_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "GOD_GATE_ENEMY_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "GOD_GATE_ENEMY_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "GOD_GATE_ENEMY_DAMAGE",
	FLY_DAMAGE_FRONT			= "GOD_GATE_ENEMY_DAMAGE",
	FLY_DAMAGE_BACK				= "GOD_GATE_ENEMY_DAMAGE",
	SMALL_DAMAGE_AIR			= "GOD_GATE_ENEMY_DAMAGE",	
	BIG_DAMAGE_AIR				= "GOD_GATE_ENEMY_DAMAGE",
	DOWN_DAMAGE_AIR				= "GOD_GATE_ENEMY_DAMAGE",
	UP_DAMAGE					= "GOD_GATE_ENEMY_DAMAGE",
	DAMAGE_REVENGE				= "GOD_GATE_ENEMY_DAMAGE",
	
	DYING_LAND_FRONT			= "GOD_GATE_ENEMY_DYING",
	DYING_LAND_BACK				= "GOD_GATE_ENEMY_DYING",
	DYING_SKY					= "GOD_GATE_ENEMY_DYING",

	COMMON_FRAME_FUNC           = "GOD_GATE_ENEMY_COMMON_FRAME_MOVE",
	REVENGE_ATTACK				= "",
}

INIT_AI = 
{
	NO_BRAIN = TRUE,
}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ENEMY_START = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },	
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_24308,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_YELLOW"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 10, 				  			    -- 표시 지속 시간
	},
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	RIGHT						= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"GOD_GATE_ENEMY_A_WAIT",	},
	},
	
}

function GOD_GATE_ENEMY_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 각 타입별 몬스터 그룹 설정
	local iDefneceGroup 		= pNPCUnit:GetRandVal( math.random( 5 ) ) % 3	-- 방어형 몬스터 그룹
	pNPCUnit:SetInt_LUA( 0, iDefneceGroup )
	
	local iLongRangeAttackGroup = pNPCUnit:GetRandVal( math.random( 6 ) ) % 3	-- 장거리 공격형 몬스터 그룹
	pNPCUnit:SetInt_LUA( 1, iLongRangeAttackGroup )
	
	local iMeleeAttackGroup 	= pNPCUnit:GetRandVal( math.random( 7 ) ) % 3	-- 근접 공격형 몬스터 그룹
	pNPCUnit:SetInt_LUA( 2, iMeleeAttackGroup )
	
	local iMagicAttackGroup 	= pNPCUnit:GetRandVal( math.random( 8 ) ) % 3	-- 마법 공격형 몬스터 그룹
	pNPCUnit:SetInt_LUA( 3, iMagicAttackGroup )
	
	local iSpecialGroup 		= pNPCUnit:GetRandVal( math.random( 9 ) ) % 2	-- 특수 몬스터 그룹
	pNPCUnit:SetInt_LUA( 4, iSpecialGroup )
	
	-- 미사용 ( 생성시 그룹 검사로 변경 )
	-- local iLargeOffenceGroup 	= pNPCUnit:GetRandVal( math.random( 10 ) ) % 3	-- 거대 오펜스 몬스터 그룹
	-- pNPCUnit:SetInt_LUA( 5, iLargeOffenceGroup )
	
	pNPCUnit:SetInt_LUA( 6, 0 )		-- 현재 스테이지 설정
	
	pNPCUnit:SetInt_LUA( 7, -1 )	-- 거대 오펜스 몬스터 사망시, 전달되는 자신의 레벨
	
	pNPCUnit:SetInt_LUA( 8, 0 )		-- 소환문의 현재 스테이트 값( 남은 체력에 따라 스테이트가 다르다. )
	
	pNPCUnit:SetInt_LUA( 9, 20 )	-- 몬스터 최대 소환 개체수
	
	
	-- 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 0 )	-- 방어형 몬스터 그룹 소환 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 1 )	-- 장거리 공격형 몬스터 그룹 소환 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 2 )	-- 장거리 공격형 몬스터 그룹 소환 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 3 )	-- 근접 공격형 몬스터 그룹 소환 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 4 )	-- 특수 몬스터 그룹 소환 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 5 )	-- 소환문 공격 쿨타임 초기화
	pNPCUnit:SetTimerRestart( 6 )	-- 몬스터 소환 쿨타임 ( 부하때문에, 순차적으로 소환되도록 제작 )
	pNPCUnit:SetTimerRestart( 7 )	-- 소환 쿨타임 초기화 ( 거대 오펜스 몬스터 생성시, 모든 소환 몬스터 쿨타임 초기화 기능 )
	pNPCUnit:SetTimerRestart( 8 )	-- 거대 오펜스 몬스터 소환 쿨타임
	pNPCUnit:SetTimerRestart( 9 )	-- 소환문 운석 이펙트 처리 쿨타임 초기화
	
	-- 2013.04.30 밸런스 패치, 어문이 부서지기 전에 3단계 보스가 가끔 안죽던 문제 수정을 위해서
	-- local fChangeStage2HPValue 	= 0.66	-- 스테이지2 변경 조건 HP량
	-- local fChangeStage3HPValue 	= 0.33	-- 스테이지3 변경 조건 HP량
	local fChangeStage2HPValue 	= 0.75	-- 스테이지2 변경 조건 HP량
	local fChangeStage3HPValue 	= 0.50	-- 스테이지3 변경 조건 HP량
	
	local fSummonMonsterGap		= 1.0	-- 몬스터 소환 간격
	pNPCUnit:SetVector_LUA( 0,  D3DXVECTOR3( fChangeStage2HPValue, fChangeStage3HPValue, fSummonMonsterGap ) )	-- 위의 값 설정
	
	pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( 0.0, 0.0, 0.0 ) )	-- 각 몬스터들 소환 쿨타임 저장 벡터 ( 방어형, 근접형, 원거리형 )
	
	pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( 0.0, 0.0, 20.0 ) )	-- 각 몬스터들 소환 쿨타임 저장 벡터 ( 마법형, 큭수형, 거대 오펜스 몬스터 )
	
	pNPCUnit:SetFlag_LUA( 0, false )	-- 공격 가능 여부 Flag 설정
	pNPCUnit:SetFlag_LUA( 1, true )		-- 소환 가능 여부 Flag 설정
	pNPCUnit:SetFlag_LUA( 2, false )	-- 쿨타임 초기화 기능 설정 여부 Flag 설정
	pNPCUnit:SetFlag_LUA( 3, true )		-- 거대 오펜스 몬스터 소환 여부
	pNPCUnit:SetFlag_LUA( 4, true )		-- 처음 거대 오펜스 몬스터 소환 여부 ( 처음 소환시, 스테이지 인덱스 증가시키지 않는다. )
	pNPCUnit:SetFlag_LUA( 5, false )	-- 운석 이펙트 낙하 여부 Flag 설정
	
	
	for i = 0, 4 do
		SET_SUMMON_MONSTER_COOLTIME( i, 1.0, pNPCUnit )
	end
	
	-- 이펙트 생성
	local pEffectSet = pX2Game:GetEffectSet()
		
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_GOD_ENEMY_GATE_EFFECT", pNPCUnit )
		pNPCUnit:SetEffectSet_LUA( 0, hEffect )
	end	
	
	--{{SERV_DUNGEON_FORCED_EXIT_SYSTEM
	--// 오현빈 // 2013-01-21 // 어문 웨이브 변경 시에 서버에 알려주도록 추가
		pX2Game:Send_EGS_DEFENCE_DUNGEON_WAVE_ID_NOT( 0 )
	--}}SERV_DUNGEON_FORCED_EXIT_SYSTEM
	
end

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ENEMY_DAMAGE = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	RIGHT						= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ENEMY_A_WAIT = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	RIGHT						= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ENEMY_B_WAIT = 
{

	ANIM_NAME					= "Broken_02",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,

    SOUND_PLAY0			= { 0.237, "DarkGate_Broken02.ogg", 100, FALSE, -1.0, TRUE },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	RIGHT						= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ENEMY_C_WAIT = 
{

	ANIM_NAME					= "Broken_03",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,

    SOUND_PLAY0			= { 0.537, "DarkGate_Broken03.ogg", 100, FALSE, -1.0, TRUE },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	RIGHT						= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

}

-----------------------------------------------------------------------------------------------------------

GOD_GATE_ENEMY_DYING = 
{
	ANIM_NAME					= "Broken_04",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
    SOUND_PLAY0			= { 2.631, "DarkGate_Broken04.ogg", 100, FALSE, -1.0, TRUE },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	
	RIGHT						= TRUE,
	
	VIEW_TARGET					= FALSE,
	
	DYING_END					= TRUE,	
	NEVER_MOVE					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_24020,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_GOD_ENEMY_GATE_BROKEN_EFFECT", 0.01,
	},
}

function GOD_GATE_ENEMY_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	-- 이펙트 제거
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )

	if nil ~= pEffectSet and 0 ~= hEffect then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
		
		--  소멸 이펙트 생성
		pEffectSet:PlayEffectSet_LUA( "EffectSet_GOD_ENEMY_GATE_BROKEN_EFFECT", pNPCUnit )
	end

end

function GOD_GATE_ENEMY_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 3.95 ) then
	
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		
		if pMajorXMeshPlayer ~= nil then
			local vRotDegree 	= pNPCUnit:GetRotateDegree()
			local vPos 			= pNPCUnit:GetPos()
			pMajorXMeshPlayer:CreateInstance_LUA( "Gate_Enemy_Dying_Mesh", vPos, vRotDegree, vRotDegree, 14 )
		end
	
	end

end

-----------------------------------------------------------------------------------------------------------

function GOD_GATE_ENEMY_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	-- 마족 소환문이 하는 역활
	-- 1. 몬스터 5그룹( 방어형, 근접형, 원거리형, 마법형, 특수형 ) 소환
	-- 2. 거대 오펜스 몬스터 소환
	-- 3. 스테이지 전환
	-- 4. 공격
	

	-- 죽어있다면, 검사 하지 말자
	if 0.0 >= pNPCUnit:GetNowHP() then
		return
	end
	
	
	--몬스터 소환 쿨타임 초기화 기능 검사
	CHECK_INIT_SUMMON_MONSTER_COOLTIME( pNPCUnit )	

	-- 몬스터 소환 검사
	CHECK_SUMMON_MONSTER ( pX2Game, pNPCUnit )

	-- 남은 HP에 따른 스테이지 설정
	CHECK_CHANGE_STAGE_FROM_NOW_HP( pX2Game, pNPCUnit )
	
	-- 공격 수행 설정
	CHECK_ATTACK( pX2Game, pNPCUnit )
	
	-- 운석 낙하 배경 이펙트 수행 설정
	CHECK_BACKGROUND_METEO( pX2Game, pNPCUnit )

	-- 거대 오펜스 몬스터 소환 사망시 처리
	CHECK_DIE_LARGE_OFFENCE_MONSTER( pX2Game, pNPCUnit )
	
	-- 무조건 앞을 보도록 설정
	pNPCUnit:SetIsRight( true )
end

-----------------------------------------------------------------------------------------------------------

-- 몬스터 소환 쿨타임 초기화 기능 검사
function CHECK_INIT_SUMMON_MONSTER_COOLTIME( pNPCUnit )	
	
	local bIsInitSummonCoolTime = pNPCUnit:GetFlag_LUA( 2 )	-- 소환 쿨타임 초기화 기능 적용 여부
	
	if true == bIsInitSummonCoolTime then
	
		local fInitSummonCoolTime = pNPCUnit:GetTimerElapsedTime( 7 )	-- 소환 쿨타임 초기화 기능 쿨타임		
		
		if 6.0 <= fInitSummonCoolTime then		-- 소환 쿨타임 초기화 기능 쿨타임 완료일 때
		
			pNPCUnit:SetFlag_LUA( 2, false )	-- 소환 쿨타임 초기화 기능 해제 처리
			pNPCUnit:SetTimerRestart( 7 )		-- 쿨타임 초기화
			
			-- 각 몬스터들의 소환 쿨타임 초기화
			for i = 0, 4 do
				SET_SUMMON_MONSTER_COOLTIME( i, 1.0, pNPCUnit )
			end
			
		end	-- if
	
	end	-- if
	
end	

-----------------------------------------------------------------------------------------------------------

-- 몬스터 소환 검사
function CHECK_SUMMON_MONSTER ( pX2Game, pNPCUnit )

	local bIsPossibleSummon 	= pNPCUnit:GetFlag_LUA( 1 )	-- 현재 소환 가능 여부
	local iMaxSummonMonsterNum 	= pNPCUnit:GetInt_LUA( 9 )	-- 몬스터 최대 소환 개체수
	
	if false == bIsPossibleSummon then				-- 소환 불가능 상태일 때, 소환 간격 쿨타임 갱신
	
		local fSummonCoolTime = pNPCUnit:GetTimerElapsedTime( 6 )	-- 소환 간격
		
		local vfSummonMonsterGap = pNPCUnit:GetVector_LUA( 0 )
		
		if vfSummonMonsterGap.z <= fSummonCoolTime then		-- 소환 간격 완료일 때
		
			pNPCUnit:SetFlag_LUA( 1, true )			-- 소환 가능 처리
			bIsPossibleSummon 		= true			-- 밑에서 사용하기 위해, 결과값 갱신
			iNowSummonMonsterNum  	= pX2Game:LiveKeyCodeNPCNum( 4 )	-- 현재 몬스터 소환 개체수
			
		end -- if
		
	end
	
	
	-- 거대 오펜스 몬스터 소환
	local fIsSummonLargeOffenceMonster = pNPCUnit:GetFlag_LUA( 3 )	-- 거대 오펜스 몬스터 소환 여부
	
	if true == fIsSummonLargeOffenceMonster then
	
		local fSummonLargeOffenceMonsterNowCoolTime = pNPCUnit:GetTimerElapsedTime( 8 )				-- 현재 소환 몬스터 쿨타임 갱신
		local fSummonLargeOffenceMonsterCoolTime	= GET_SUMMON_MONSTER_COOLTIME( 5, pNPCUnit )	-- 거대 오펜스 몬스터 쿨타임
			
		-- 개별 쿨타임 및 소환 가능 쿨타임 완료일 때, 소환 실행
		if fSummonLargeOffenceMonsterCoolTime <= fSummonLargeOffenceMonsterNowCoolTime and true == bIsPossibleSummon then
			
			local bIsFirstSummon = pNPCUnit:GetFlag_LUA( 4 )	-- 처음 소환 여부
			
			-- 스테이지 인덱스 변경 ( 처음 소환시, 스테이지 인덱스 증가시키지 않는다. )
			if false == bIsFirstSummon then
			
				local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지
				pNPCUnit:SetInt_LUA( 6, iNowStage + 1 )			-- 다음 스테이지 인덱스 설정
				
				--{{SERV_DUNGEON_FORCED_EXIT_SYSTEM
				--// 오현빈 // 2013-01-21 // 어문 웨이브 변경 시에 서버에 알려주도록 추가
					pX2Game:Send_EGS_DEFENCE_DUNGEON_WAVE_ID_NOT( iNowStage + 1 )
				--}}SERV_DUNGEON_FORCED_EXIT_SYSTEM
				
			else
				
				pNPCUnit:SetFlag_LUA( 4, false )	-- 처음 거대 오펜스 몬스터 소환 여부 ( 처음 소환시, 스테이지 인덱스 증가시키지 않는다. )
			
			end
			
			
			SUMMON_MONSTER_LARGE_OFFENCE_GROUP( pX2Game, pNPCUnit )
			
			pNPCUnit:SetFlag_LUA( 1, false )		-- 소환 불가능 처리
			pNPCUnit:SetFlag_LUA( 3, false )		-- 거대 오펜스 몬스터 소환 불가능 처리
			pNPCUnit:SetTimerRestart( 6 )			-- 소환 간격 초기화
			
			bIsPossibleSummon = false -- 소환 간격을 위해, 소환은 제한하고 쿨타임만 갱신
			
			--기존 몬스터 소환 쿨타임 초기화 ( 거대 오펜스 몬스터와 함께 등장 )
			for i = 0, 4 do
				SET_SUMMON_MONSTER_COOLTIME( i, 0.1, pNPCUnit )
			end
			
			pNPCUnit:SetFlag_LUA( 2, true )		-- 특정 시간 이후 쿨타임 초기화 되어, 몬스터 바로 등장
			pNPCUnit:SetTimerRestart( 7 )		-- 쿨타임 초기화 시키는 쿨타임 초기화
				
		end -- if
	
	end
	
	
	-- 일반 소환 몬스터 추가
	for i = 0, 4 do
	
		local fSummonMonsterNowCoolTime = pNPCUnit:GetTimerElapsedTime( i )				-- 현재 소환 몬스터 쿨타임 갱신
		local fSummonMonsterCoolTime	= GET_SUMMON_MONSTER_COOLTIME( i, pNPCUnit )	-- 소환 몬스터 쿨타임
		
		-- 개별 쿨타임 및 소환 가능 쿨타임 완료일 때, 소환 실행
		if fSummonMonsterCoolTime <= fSummonMonsterNowCoolTime and true == bIsPossibleSummon then
		
			if pX2Game:LiveKeyCodeNPCNum( 4 ) < iMaxSummonMonsterNum	then		-- 몬스터 최대 소환치를 넘지 않았을 때, 소환 동작 진행
			
				pNPCUnit:SetFlag_LUA( 1, false )		-- 소환 불가능 처리
				pNPCUnit:SetTimerRestart( 6 )			-- 소환 간격 초기화
			
				if 0 == i then		-- 방어형 몬스터 그룹
					SUMMON_MONSTER_DEFENCE_GROUP( pX2Game, pNPCUnit )
				elseif 1 == i then	-- 장거리 공격형 몬스터 그룹
					SUMMON_MONSTER_LONG_LANGE_ATTACK_GROUP( pX2Game, pNPCUnit )
				elseif 2 == i then	-- 근접 공격형 몬스터 그룹
					SUMMON_MONSTER_MELEE_ATTACK_GROUP( pX2Game, pNPCUnit )
				elseif 3 == i then	-- 마법 공격형 몬스터 그룹
					SUMMON_MONSTER_MAGIC_ATTACK_GROUP( pX2Game, pNPCUnit )
				else				-- 특수형 몬스터 그룹
					SUMMON_MONSTER_SPECIAL_GROUP( pX2Game, pNPCUnit )
				end
				
				bIsPossibleSummon = false -- 소환 간격을 위해, 소환은 제한하고 쿨타임만 갱신
			
			end -- if
		
		end	-- if
		
	end	-- for

end

-----------------------------------------------------------------------------------------------------------

-- 남은 HP에 따른 스테이지 설정
function CHECK_CHANGE_STAGE_FROM_NOW_HP( pX2Game, pNPCUnit )
	
	local fNowHPRate 			= pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()	-- 현재 남은 HP%
	local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 0 )				-- 스테이지 변경 조건 HP량
	local iNowState 			= pNPCUnit:GetInt_LUA( 8 )					-- 소환문 체력에 따른 현재 스테이트
	
	if fNowHPRate <= vChangeStageHPValue.x then			-- 스테이지2 변경 조건 HP( 66% ) 보다 작을 때
		
		if fNowHPRate <= vChangeStageHPValue.y and 1 == iNowState then	-- 스테이지3 변경 조건 HP( 33% ) 보다 작고, 피격되지 않은 스테이트일 떼
			
			pNPCUnit:StateChange_LUA( "GOD_GATE_ENEMY_C_WAIT", true )		-- 중간 데미지 상태
			
			SET_SUMMON_MONSTER_COOLTIME( 5, 0.0, pNPCUnit )					-- 체력 저하로 인한 스테이지 변경시, 거대 오펜스 몬스터 바로 소환
			
			CHANGE_STAGE( 1, pX2Game, pNPCUnit )							-- 스테이지3 변경 처리
			
			pNPCUnit:SetInt_LUA( 8, 2 )										-- 소환문 체력에 따른 스테이트 변경값 설정
			
		elseif 0 == iNowState then											-- 중간 데미지를 입은 스테이트일 때
		
			pNPCUnit:StateChange_LUA( "GOD_GATE_ENEMY_B_WAIT", true )		-- 중간 데미지 상태
			
			SET_SUMMON_MONSTER_COOLTIME( 5, 0.0, pNPCUnit )					-- 체력 저하로 인한 스테이지 변경시, 거대 오펜스 몬스터 바로 소환
			
			CHANGE_STAGE( 0, pX2Game, pNPCUnit )							-- 스테이지2 변경 처리
			
			pNPCUnit:SetInt_LUA( 8, 1 )										-- 소환문 체력에 따른 스테이트 변경값 설정
			
		end -- if
		
	end -- if
	
end	

-----------------------------------------------------------------------------------------------------------

-- 공격 수행 설정
function CHECK_ATTACK( pX2Game, pNPCUnit )
	
	local bIsPossibleAttack = pNPCUnit:GetFlag_LUA( 0 )	-- 현재 공격 가능 여부
	
	if true == bIsPossibleAttack then	-- 공격 가능
	
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
		
			local pDamageEffect = pX2Game:GetDamageEffect()
			local pos = pNPCUnit:GetLandPosition_LUA()		
			local pos2 = pNPCUnit:GetLandPosition_LUA()	
				pos.y = pos.y + 120
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DamageEffect_GOD_GATE_ENEMY", pos, pos2.y )
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DamageEffect_GOD_GATE_ENEMY_NEAR", pos, pos2.y )
			
		end
		
		pNPCUnit:SetFlag_LUA( 0, false )	-- 공격 불가능 설정
		pNPCUnit:SetTimerRestart( 5 )		-- 공격 쿨타임 초기화
	
	else	------------------------------ 공격 불가능
	
		local fAttackCoolTime = pNPCUnit:GetTimerElapsedTime( 5 )	-- 쿨타임 갱신
		
		if 1.0 <= fAttackCoolTime then	-- 공격 쿨타임이 완료되었을 때, 공격 가능 설정
		
			pNPCUnit:SetFlag_LUA( 0, true )
			
		end
	
	end
	
end	

-----------------------------------------------------------------------------------------------------------

-- 운석 낙하 수행 설정
function CHECK_BACKGROUND_METEO( pX2Game, pNPCUnit )
	
	local bIsPossibleAttack = pNPCUnit:GetFlag_LUA( 5 )	-- 현재 공격 가능 여부
	
	if true == bIsPossibleAttack then	-- 공격 가능
	
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
		
			local landPos = pNPCUnit:GetLandPosition_LUA()
			landPos.z = -2000 + ((pNPCUnit:GetRandVal(math.random(3))) * 320)
			landPos.x = ( (pNPCUnit:GetRandVal(math.random(1))) * (pNPCUnit:GetRandVal(math.random(3))) * 3.10 ) - ( (pNPCUnit:GetRandVal(math.random(3))) * 300 )
			landPos.y = 12000 
			
			local vRot = pNPCUnit:GetRotateDegree()
			
			pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DamageEffect_GOD_METEOR", landPos, landPos.y, vRot)
			
		end
		
		pNPCUnit:SetFlag_LUA( 5, false )	-- 공격 불가능 설정
		pNPCUnit:SetTimerRestart( 9 )		-- 공격 쿨타임 초기화
	
	else	------------------------------ 공격 불가능
	
		local fAttackCoolTime = pNPCUnit:GetTimerElapsedTime( 9 )	-- 쿨타임 갱신
		
		if 0.2 <= fAttackCoolTime then	-- 공격 쿨타임이 완료되었을 때, 공격 가능 설정
		
			pNPCUnit:SetFlag_LUA( 5, true )
			
		end
	
	end
	
end	

-----------------------------------------------------------------------------------------------------------

-- 거대 오펜스 몬스터 소환 사망시 처리
function CHECK_DIE_LARGE_OFFENCE_MONSTER( pX2Game, pNPCUnit )

	local iLargeOffenceMonsterValue = pNPCUnit:GetInt_LUA( 7 )		-- 거대 오펜스 몬스터 사망시 전달되는 값
	
	-- 0이 아닐 때 ( 거대 오펜스 몬스터가 사망하면서 값을 전달해 왔을 때 )
	if -1 ~= iLargeOffenceMonsterValue then
	
		-- 스테이지 변경 처리 ( 이미 변경된 스테이지라면, 거대 오펜스 몬스터만 생성 )
		CHANGE_STAGE( iLargeOffenceMonsterValue, pX2Game, pNPCUnit )
		
		pNPCUnit:SetInt_LUA( 7, -1 )	-- 거대 오펜스 몬스터 값 초기화
	
	end
	
end	

-----------------------------------------------------------------------------------------------------------

-- 스테이지 변경 처리 함수
function CHANGE_STAGE( iChangeStageValue, pX2Game, pNPCUnit )

	local iNowStage = pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지 연산
	
	-- 현재 스테이지가 변경하려는 스테이지와 다를 경우, 스테이지 변경 패스
	if iNowStage ~= iChangeStageValue then
		return
	end

	--pNPCUnit:SetInt_LUA( 6, iChangeStageValue + 1 )	-- 다음 스테이지 인덱스 설정
	
	pNPCUnit:SetFlag_LUA( 3, true )			-- 거대 오펜스 몬스터 소환
	
	pNPCUnit:SetTimerRestart( 8 )			-- 거대 오펜스 몬스터 소환 쿨타임 초기화
	
end

-----------------------------------------------------------------------------------------------------------

-- 몬스터 소환 함수
function SUMMON_MONSTER( iType, iGroup, iStage, iMonsterID, fCoolTime, pX2Game, pNPCUnit )

	--local vSummonPos 	= D3DXVECTOR3( 0.0, 0.0, 0.0 )	-- 소환 위치
	local vSummonPos 	= pNPCUnit:GetPos()
	local bGetIsRight 	= false							-- 소환 방향

	pX2Game:CreateNPCReq_LUA( iMonsterID, 1, true, vSummonPos, bGetIsRight, 0, false )
	
	-- 소환 사운드 재생
	pNPCUnit:PlaySound_LUA( "DarkGate_MonSummon01.ogg" )
	
	-- 해당 몬스터 타입의 소환 쿨타임 설정
	SET_SUMMON_MONSTER_COOLTIME( iType, fCoolTime, pNPCUnit )

end

-----------------------------------------------------------------------------------------------------------

-- 타입에 따른 소환 몬스터 쿨타임 반환 함수
function GET_SUMMON_MONSTER_COOLTIME( iType, pNPCUnit )

	local fCoolTime = 0.0

	if 0 == iType then		-- 방어형 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 1 )
		fCoolTime = vChangeStageHPValue.x
		
	elseif 1 == iType then	-- 장거리 공격형 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 1 )
		fCoolTime = vChangeStageHPValue.y
	
	elseif 2 == iType then	-- 근접 공격형 몬스터 그룹
		
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 1 )
		fCoolTime = vChangeStageHPValue.z
		
	elseif 3 == iType then	-- 마법 공격형 몬스터 그룹
		
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 2 )
		fCoolTime = vChangeStageHPValue.x
		
	elseif 4 == iType then	-- 특수형 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 2 )
		fCoolTime = vChangeStageHPValue.y
		
	else					-- 거대 오펜스 몬스터 그룹

		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 2 )
		fCoolTime = vChangeStageHPValue.z
		
	end
	
	return fCoolTime

end

-----------------------------------------------------------------------------------------------------------

-- 타입에 따른 소환 몬스터 쿨타임 설정 함수
function SET_SUMMON_MONSTER_COOLTIME( iType, fCoolTime, pNPCUnit )

	pNPCUnit:SetTimerRestart( iType )	-- 쿨타임 초기화
	
	if 0 == iType then		-- 방어형 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 1 )
		pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( fCoolTime, vChangeStageHPValue.y, vChangeStageHPValue.z ) )
		
	elseif 1 == iType then	-- 장거리 공격형 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 1 )
		pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( vChangeStageHPValue.x, fCoolTime, vChangeStageHPValue.z ) )
	
	elseif 2 == iType then	-- 근접 공격형 몬스터 그룹
		
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 1 )
		pNPCUnit:SetVector_LUA( 1,  D3DXVECTOR3( vChangeStageHPValue.x, vChangeStageHPValue.y, fCoolTime ) )
		
	elseif 3 == iType then	-- 마법 공격형 몬스터 그룹
		
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 2 )
		pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( fCoolTime, vChangeStageHPValue.y, vChangeStageHPValue.z ) )
		
	elseif 4 == iType then	-- 특수형 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 2 )
		pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( vChangeStageHPValue.x, fCoolTime, vChangeStageHPValue.z ) )
		
	else					-- 거대 오펜스 몬스터 그룹
	
		local vChangeStageHPValue	= pNPCUnit:GetVector_LUA( 2 )
		pNPCUnit:SetVector_LUA( 2,  D3DXVECTOR3( vChangeStageHPValue.x, vChangeStageHPValue.y, fCoolTime ) )
		
	end

end

-----------------------------------------------------------------------------------------------------------

-- 방어형 몬스터 그룹 소환 함수
function SUMMON_MONSTER_DEFENCE_GROUP( pX2Game, pNPCUnit )

	local iMonsterGroup = pNPCUnit:GetInt_LUA( 0 )	-- 해당 타입의 몬스터 그룹
	local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지
	

	if 0 == iMonsterGroup then		-- 방어형 1그룹
		SUMMON_MONSTER( 0, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_DEFENDER_GLITER_HAMMER_A"] + iNowStage, 10.0, pX2Game, pNPCUnit )
	elseif 1 == iMonsterGroup then	-- 방어형 2그룹
		SUMMON_MONSTER( 0, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_DEFENDER_SHADOW_WALKER_A"] + iNowStage, 10.0, pX2Game, pNPCUnit )
	else							-- 방어형 3그룹
		SUMMON_MONSTER( 0, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_DEFENDER_GLITER_THIEF_A"] + iNowStage, 10.0, pX2Game, pNPCUnit )
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 장거리 공격형 몬스터 그룹 소환 함수
function SUMMON_MONSTER_LONG_LANGE_ATTACK_GROUP( pX2Game, pNPCUnit )

	local iMonsterGroup = pNPCUnit:GetInt_LUA( 1 )	-- 해당 타입의 몬스터 그룹
	local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지
	
	if 0 == iMonsterGroup then		-- 원거리 공격형 1그룹
		SUMMON_MONSTER( 1, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_ARCHER_GLITER_ARCHER_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	elseif 1 == iMonsterGroup then	-- 원거리 공격형 2그룹
		SUMMON_MONSTER( 1, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_ARCHER_SHADOW_DEFENDER_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	else							-- 원거리 공격형 3그룹
		SUMMON_MONSTER( 1, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_ARCHER_GOLEM_SHOOTER_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 근접 공격형 몬스터 그룹 소환 함수
function SUMMON_MONSTER_MELEE_ATTACK_GROUP( pX2Game, pNPCUnit )
		
	local iMonsterGroup = pNPCUnit:GetInt_LUA( 2 )	-- 해당 타입의 몬스터 그룹
	local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지
	
	if 0 == iMonsterGroup then		-- 근접 공격형 1그룹
		SUMMON_MONSTER( 2, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_SWORDMAN_COACKATRIGLE_A"] + iNowStage, 10.0, pX2Game, pNPCUnit )
	elseif 1 == iMonsterGroup then	-- 근접 공격형 2그룹
		SUMMON_MONSTER( 2, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_SWORDMAN_GLITER_LANCE_A"] + iNowStage, 10.0, pX2Game, pNPCUnit )
	else							-- 근접 공격형 3그룹
		SUMMON_MONSTER( 2, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_SWORDMAN_SHADOW_CHARGER_A"] + iNowStage, 10.0, pX2Game, pNPCUnit )
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 마법 공격형 몬스터 그룹 소환 함수
function SUMMON_MONSTER_MAGIC_ATTACK_GROUP( pX2Game, pNPCUnit )
		
	local iMonsterGroup = pNPCUnit:GetInt_LUA( 3 )	-- 해당 타입의 몬스터 그룹
	local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지
	
	if 0 == iMonsterGroup then		-- 마법 공격형 1그룹
		SUMMON_MONSTER( 3, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_MAGICIAN_GLITER_NECRO_A"] + iNowStage, 25.0, pX2Game, pNPCUnit )
	elseif 1 == iMonsterGroup then	-- 마법 공격형 2그룹
		SUMMON_MONSTER( 3, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_MAGICIAN_KENAZ_A"] + iNowStage, 25.0, pX2Game, pNPCUnit )
	else							-- 마법 공격형 3그룹
		SUMMON_MONSTER( 3, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_MAGICIAN_HAGALAZ_A"] + iNowStage, 25.0, pX2Game, pNPCUnit )
	end
	
end
	
-----------------------------------------------------------------------------------------------------------

-- 특수 공격형 몬스터 그룹 소환 함수
function SUMMON_MONSTER_SPECIAL_GROUP( pX2Game, pNPCUnit )
	
	local iMonsterGroup = pNPCUnit:GetInt_LUA( 4 )	-- 해당 타입의 몬스터 그룹
	local iNowStage 	= pNPCUnit:GetInt_LUA( 6 )	-- 현재 스테이지
	
	if 0 == iMonsterGroup then		-- 특수형 1그룹
		SUMMON_MONSTER( 4, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_SPECIAL_GARGOYLE_STONE_A"] + iNowStage, 40.0, pX2Game, pNPCUnit )
	else							-- 특수형 2그룹
		SUMMON_MONSTER( 4, iMonsterGroup, iNowStage, NPC_UNIT_ID["NUI_GOD_SPECIAL_JUBIGEE_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	end
	
end

-----------------------------------------------------------------------------------------------------------

-- 거대 오펜스 몬스터 그룹 소환 함수
function SUMMON_MONSTER_LARGE_OFFENCE_GROUP( pX2Game, pNPCUnit )

	local iLargeOffenceGroup 	= pNPCUnit:GetRandVal( math.random( 10 ) ) % 3	-- 거대 오펜스 몬스터 그룹
	local iNowStage 			= pNPCUnit:GetInt_LUA( 6 )						-- 현재 스테이지
	
	if 0 == iLargeOffenceGroup then		-- 특수형 1그룹 1스테이지 몬스터
		SUMMON_MONSTER( 5, 0, iNowStage, NPC_UNIT_ID["NUI_GOD_GUARDIAN_SUMMON_BOSS_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	elseif 1 == iLargeOffenceGroup then	-- 특수형 1그룹 2스테이지 몬스터
		SUMMON_MONSTER( 5, 0, iNowStage, NPC_UNIT_ID["NUI_GOD_GUARDIAN_DULLAHAN_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	else								-- 특수형 1그룹 3스테이지 몬스터
		SUMMON_MONSTER( 5, 0, iNowStage, NPC_UNIT_ID["NUI_GOD_GUARDIAN_SHADOW_MASTER_A"] + iNowStage, 20.0, pX2Game, pNPCUnit )
	end
	
end