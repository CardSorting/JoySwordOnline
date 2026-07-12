-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--- 배틀필드 구성원수에 곱해지는 상수값
g_pBattleFieldManager:SetMonsterRespawnFactorByUserCount( 3 )


--- 리스폰 타임 min max 값
g_pBattleFieldManager:SetMonsterRespawnTimeMinMax( 15, 25 )


--- 배틀필드 상수(사용 안함)
--g_pBattleFieldManager:SetBattleFieldFactor( 1.36 )		-- 2013.03.12 기존 0.8 에서 1.36 으로 1.7배 분당 효율 증가시킴

--- 배틀필드 ED 상수
g_pBattleFieldManager:SetBattleFieldEDFactor( 0.8 )		-- 2013.03.26 기존 1.36 에서 0.8 로 0.58배 분당 효율 감소시킴 : 너무 많은 ED가 필드에 드랍됨.
--- 배틀필드 EXP 상수
g_pBattleFieldManager:SetBattleFieldEXPFactor( 1.5 )		-- 2013.03.26 기존 1.36 에서 1.5 로 약 1.1배 분당 효율 증가시킴


-- 위험도
g_pBattleFieldManager:SetDangerousValueMax( 4800 )			----위험도 맥스치 이거 이상 올라가지 않음
--g_pBattleFieldManager:SetDangerousValueMax( 1200 )		----뽀루 이벤트 때 쓰는 셋팅

g_pBattleFieldManager:SetDangerousValueWarning( 5 )			----데인져가 뜨는 알림
g_pBattleFieldManager:SetBossCheckUserCount( 1 )			-----보스 몬스터가 출현하기 위한 최소 인원
g_pBattleFieldManager:SetEliteMonsterDropValue( 15 )			-----엘리트 몬스터가 출현 하기 위한 배수값

--- 위험도 이벤트 2013년 3월 14일 ~ 3월 28일
-- g_pBattleFieldManager:SetDangerousValueEventRate( 1 )			----위험도 배수  -- 일반 1배(1) , 이벤트 X배(X) (기본설정)
g_pBattleFieldManager:SetDangerousValueEventRate( 4 )			---- 20130409 적용, 공솔


--- 배틀필드 상수
g_pBattleFieldManager:AddEliteMonsterDropInfo( 1, 4,	DIFFICULTY_LEVEL["DL_NORMAL"], 3 )
g_pBattleFieldManager:AddEliteMonsterDropInfo( 5, 8,	DIFFICULTY_LEVEL["DL_EXPERT"], 6 )
g_pBattleFieldManager:AddEliteMonsterDropInfo( 9, 12,	DIFFICULTY_LEVEL["DL_EXPERT"], 9 )



-- 중보 보스 몬스터 출현 공식
--//{{ 2013. 02. 15   필드 중간 보스 - 김민성
--#ifdef SERV_BATTLEFIELD_MIDDLE_BOSS
function GET_MIDDLE_BOSS_MONSTER_DROP_RATE( iCurDangerousValue, iOldDangerousValue )

	local fBossDropRate = 0
	local iBossDangerousValue = 800		--중간보스에 쓰는 셋팅
	--local iBossDangerousValue = 200		--뽀루 이벤트 때 쓰는 셋팅
	
-- 테스트	
	if iOldDangerousValue < iBossDangerousValue then
		if iCurDangerousValue >= iBossDangerousValue then
			fBossDropRate = 100
		end
	elseif iOldDangerousValue < iBossDangerousValue * 2 then
		if iCurDangerousValue >= iBossDangerousValue * 2 then
			fBossDropRate = 100
		end
	elseif iOldDangerousValue < iBossDangerousValue * 3 then
		if iCurDangerousValue >= iBossDangerousValue * 3 then
			fBossDropRate = 100
		end
	elseif iOldDangerousValue < iBossDangerousValue * 4 then
		if iCurDangerousValue >= iBossDangerousValue * 4 then
			fBossDropRate = 100
		end
	elseif iOldDangerousValue < iBossDangerousValue * 5 then
		if iCurDangerousValue >= iBossDangerousValue * 5 then
			fBossDropRate = 100
		end
	end
	
	return fBossDropRate
end
--#endif SERV_BATTLEFIELD_MIDDLE_BOSS
--//}

function GET_BOSS_MONSTER_DROP_RATE( iCurDangerousValue, iDangerousValueWarning )

	local BOSS_DROP_D_VALUE = iCurDangerousValue - iDangerousValueWarning
	
	local fBossDropRate = ( BOSS_DROP_D_VALUE / 50 ) * 10
	if fBossDropRate < 0 then
		fBossDropRate = 0
	elseif fBossDropRate > 100 then
		fBossDropRate = 100
	end
	
	-- 지금은 보스 시스템이 없음  무조건 출현 하지 않음!
	fBossDropRate = 0
	
	return fBossDropRate
end
