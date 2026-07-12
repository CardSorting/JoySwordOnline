-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



RANKING_TYPE =
{
    RT_DAY_RANkING		= 0, -- 일간랭킹
	RT_WEEK_RANKING		= 1, -- 주간랭킹	
	RT_MONTH_RANKING	= 2, -- 월간랭킹
	RT_DUNGEON_RAKING	= 3, -- 던전레벨 랭킹
	RT_PVP_RANKING		= 4, -- 대전레벨 랭킹	
	
	RT_MAX_NUM			= 5,
}

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


-- 헤니르의 시공 랭킹 세팅 : (1) 랭킹타입, (2) 마지막랭킹, (3) 갱신시각, (4) 무슨요일, (5) 몇번째주

-- 일일 : 갱신 시각
-- 주간 : 갱신 요일 시각
-- 월간 : 갱신 주 요일 시각

RankingManager:AddHenirRankingInfo( RANKING_TYPE["RT_DAY_RANkING"],		100, 6 )
RankingManager:AddHenirRankingInfo( RANKING_TYPE["RT_WEEK_RANKING"],	100, 6, WEEK_OF_MONTH["WOM_WEDNESDDAY"] )
RankingManager:AddHenirRankingInfo( RANKING_TYPE["RT_MONTH_RANKING"],	100, 6, WEEK_OF_MONTH["WOM_WEDNESDDAY"], 1 )


-- 랭킹 초기화 및 보상 시작 시기 설정

--RankingManager:SetRankingRewardBeginDate( RANKING_TYPE["RT_MONTH_RANKING"], '2009-12-25 06:00:00' );



-- 랭킹 칭호 보상 : (1) 랭킹타입,   (2) 랭킹,   (3) 타이틀ID,   (4) 타이틀기간

RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 1, 20080, 3 )

RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 2, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 3, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 4, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 5, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 6, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 7, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 8, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 9, 20090, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 10, 20090, 3 )

RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 11, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 12, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 13, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 14, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 15, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 16, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 17, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 18, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 19, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 20, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 21, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 22, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 23, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 24, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 25, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 26, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 27, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 28, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 29, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 30, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 31, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 32, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 33, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 34, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 35, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 36, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 37, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 38, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 39, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 40, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 41, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 42, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 43, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 44, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 45, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 46, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 47, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 48, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 49, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 50, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 51, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 52, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 53, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 54, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 55, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 56, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 57, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 58, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 59, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 60, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 61, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 62, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 63, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 64, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 65, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 66, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 67, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 68, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 69, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 70, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 71, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 72, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 73, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 74, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 75, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 76, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 77, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 78, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 79, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 80, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 81, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 82, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 83, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 84, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 85, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 86, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 87, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 88, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 89, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 90, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 91, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 92, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 93, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 94, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 95, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 96, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 97, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 98, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"], 99, 20095, 3 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_DAY_RANkING"],100, 20095, 3 )


RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 1, 20100, 15 )

RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 2, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 3, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 4, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 5, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 6, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 7, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 8, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 9, 20110, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 10, 20110, 15 )

RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 11, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 12, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 13, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 14, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 15, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 16, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 17, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 18, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 19, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 20, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 21, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 22, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 23, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 24, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 25, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 26, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 27, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 28, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 29, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 30, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 31, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 32, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 33, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 34, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 35, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 36, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 37, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 38, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 39, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 40, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 41, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 42, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 43, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 44, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 45, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 46, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 47, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 48, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 49, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 50, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 51, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 52, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 53, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 54, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 55, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 56, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 57, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 58, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 59, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 60, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 61, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 62, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 63, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 64, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 65, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 66, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 67, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 68, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 69, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 70, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 71, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 72, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 73, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 74, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 75, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 76, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 77, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 78, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 79, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 80, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 81, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 82, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 83, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 84, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 85, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 86, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 87, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 88, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 89, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 90, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 91, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 92, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 93, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 94, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 95, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 96, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 97, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 98, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"], 99, 20115, 15 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_WEEK_RANKING"],100, 20115, 15 )


RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 1, 20120, 60 )

RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 2, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 3, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 4, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 5, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 6, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 7, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 8, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 9, 20130, 60 )
RankingManager:AddRankingRewardInfo( RANKING_TYPE["RT_MONTH_RANKING"], 10, 20130, 60 )


