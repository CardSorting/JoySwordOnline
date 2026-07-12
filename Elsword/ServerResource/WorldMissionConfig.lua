-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[

시간 설정 할 때 999분 이상 설정하지 않도록 주의하세요!!!
사내 서버에서 클라이언트 크래쉬 난 사례가 있습니다.
( 999분 이상을 클라이언트에 표시해야하는 경우에 대한 예외 상황을 고려하지 않은 상황 )

ps. 이후 이 문제를 해결하는 수정 작업이 완료 되었다면 주석을 삭제 해주세요.

--]]

WEEK_OF_MONTH =
{
	WOM_NONE		= 0,
	WOM_SUNDAY		= 1, -- 일요일
	WOM_MONDAY		= 2, -- 월요일
	WOM_TUESDAY		= 3, -- 화요일
	WOM_WEDNESDDAY	= 4, -- 수요일
	WOM_THURSDAY	= 5, -- 목요일
	WOM_FRIDAY		= 6, -- 금요일
	WOM_SATERDAY	= 7, -- 토요일
}


WorldMissionManager:SetReduceTerm( 420.0 )		-- 크리스탈이 감소하는 시간 간격

-- 시작 시점의 크리스탈 수 구하는 함수
function COMPUTE_MIN_MAX_CRYSTAL_COUNT( iTotalCCU )
	
	if( iTotalCCU < 500 ) then
		iTotalCCU = 500
	elseif( 50000 < iTotalCCU ) then
		iTotalCCU = 50000
	end
	
	return iTotalCCU
	
end

-- 일정 시간 간격마다 감소하는 수량 구하는 함수
function COMPUTE_REDUCE_CRYSTAL_COUNT( iTotalCCU, iStartTimeHour )

	local iReduceCrystalCount = iTotalCCU
	
	if( iReduceCrystalCount < 500 ) then
		iReduceCrystalCount = 500
	elseif( 50000 < iReduceCrystalCount ) then
		iReduceCrystalCount = 50000
	end
	
	iReduceCrystalCount = ( iReduceCrystalCount * ( 0.45 - ( 0.01 * iStartTimeHour ) ) )
	
	if( 0 < iReduceCrystalCount ) then
		iReduceCrystalCount = -iReduceCrystalCount
	end
	
	return ( iReduceCrystalCount / 8 )
	
end


--------------------------------------------------------------------------------------------------------
------------- 본섭 디펜스 던전 오픈 시간 세팅    (요일, 시작 시, 시작 분, 유지시간(분단위))
--------------------------------------------------------------------------------------------------------
--월 -> 20:30   오픈시간 ->19:30 유지시간-> 60분
--화 -> 20:30   오픈시간 ->19:30 유지시간-> 60분 
--수 -> 20:30   오픈시간 ->19:30 유지시간-> 60분 
--목 -> 20:30   오픈시간 ->19:30 유지시간-> 60분
--금 -> 20:30   오픈시간 ->19:30 유지시간-> 60분
--주말(놀토,일,토) : 
--놀토 -> 11:30 오픈시간 -> 11: 30, 19:30   유지시간 60 
--토   -> 14:30 오픈시간 -> 14: 30, 19:30   유지시간 60 
--일   -> 13:00 오픈시간 -> 13:00,  19:30   유지시간 60 





--- 기본 셋팅
------------------------------------------------------------------------------------------------
-- 월드 버프 지속 시간(초)

WorldMissionManager:SetWorldBuffDurationTime( 0 )

----------월요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 14,   0,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 21,   0,  60  )

----------화요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 14,   0,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 21,   0,  60  )

----------수요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 14,   0,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 21,   0,  60  )

----------목요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 14,   0,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 21,   0,  60  )

----------금요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 14,   0,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 21,   0,  60  )

----------노는 토요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 11,  30,  60  )       
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 19,  30,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 22,   0,  60  )

----------그냥 토요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 14,   0,  60  )       
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 21,   0,  60  )

----------일요일
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 14,   0,  60  )
--WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 21,   0,  60  )



--[[
------------------------------------------------------------------------------------------------[ 방학 세팅 ]
-- 월드 버프 지속 시간(초)
WorldMissionManager:SetWorldBuffDurationTime( 0 )	-- 해외팀 버프 시간 변경 3600


----------월요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 22,   0,  60  )

----------화요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 22,   0,  60  )

----------수요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 22,   0,  60  )

----------목요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 22,   0,  60  )

----------금요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 22,   0,  60  )

----------토요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 22,   0,  60  )

----------일요일
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 19,  30,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 22,   0,  60  )
--]]



--[[
------------------------------------------------------------------------------------------------
-- 사내 테스트 용

WorldMissionManager:SetWorldBuffDurationTime( 0 )	-- 해외팀 버프 시간 변경 43200

WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 12,  0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 12,  0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],	 12,  0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 12,  0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 12,  0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 12,  0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 0,   0,  720	)
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 12,  0,  720	)


WorldMissionManager:SetWorldBuffDurationTime( 0 )	-- 해외팀 버프 시간 변경 240

WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		  1,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		  3,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		  5,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		  7,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		  9,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 11,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 15,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 17,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 19,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 21,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_MONDAY"],		 23,   0,  60  )


WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		  1,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		  3,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		  5,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		  7,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		  9,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 11,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 15,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 17,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 19,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 21,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_TUESDAY"],		 23,   0,  60  )


WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		  1,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		  3,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		  5,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		  7,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		  9,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 11,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 15,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 17,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 19,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 21,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_WEDNESDDAY"],		 23,   0,  60  )


WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		  1,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		  3,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		  5,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		  7,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		  9,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 11,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 15,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 17,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 19,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 21,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_THURSDAY"],		 23,   0,  60  )


WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		  1,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		  3,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		  5,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		  7,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		  9,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 11,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 15,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 17,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 19,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 21,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_FRIDAY"],		 23,   0,  60  )


WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		  1,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		  3,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		  5,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		  7,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		  9,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 11,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 13,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 15,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 17,   0,  60  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 19,   0,  60  )

WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 20,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 20,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 21,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 21,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 22,   0,  25 )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 22,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 23,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SATERDAY"],		 23,   30, 25  )


WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  1,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  1,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  2,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  2,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  3,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  3,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  4,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  4,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  5,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  5,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  6,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  6,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  7,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  7,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  8,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  8,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  9,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		  9,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 10,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 10,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 11,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 11,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 12,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 12,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 13,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 13,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 14,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 14,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 15,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 15,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 16,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 16,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 17,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 17,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 18,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 18,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 19,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 19,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 20,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 20,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 21,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 21,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 22,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 22,   30, 25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 23,   0,  25  )
WorldMissionManager:SetDefenseOpenTime(  WEEK_OF_MONTH["WOM_SUNDAY"],		 23,   30, 25  )
--]]

