-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요


-- 자동 파티 : 해당 시간을 초과하면 난이도가 달라도 자동 파티가 결성이 된다. ( 초단위 )
AutoPartyScriptManager:SetSameDifficultyLevelWaitTime( 20 ) -- 본섭세팅
--AutoPartyScriptManager:SetSameDifficultyLevelWaitTime( 10 ) -- 사내서버세팅


-- 자동 파티 : 해당 시간을 초과하면 동일 유닛 타입이더라도 파티 대상이 될수 있다. ( 초단위 )
AutoPartyScriptManager:SetSameUnitTypeWaitTime( 10 ) -- 본섭세팅
--AutoPartyScriptManager:SetSameUnitTypeWaitTime( 5 ) -- 사내서버세팅


-- 자동 파티 : 해당 시간을 초과하면 4명이 다 채워지지 않더라도 자동 파티가 결성이 된다. ( 초단위 )
AutoPartyScriptManager:SetDirectGameStartWaitTime( 120 ) -- 본섭세팅
--AutoPartyScriptManager:SetDirectGameStartWaitTime( 20 ) -- 사내서버세팅



-- 자동 파티 보너스 시간 ( 초단위 )
AutoPartyScriptManager:SetAutoPartyBonusTime( 120 )


-- 자동 파티 매칭 시작 대기자 인원 수
AutoPartyScriptManager:SetAutoPartyMakingBeginCount( 1 )


-- 자동 파티 대기자 리스트 세팅 카운트
AutoPartyScriptManager:SetCheckWaitUserCount( 10 )


-- 자동 파티 대기 시간 조건 체크 여부
AutoPartyScriptManager:SetIsAllMemberCheckSameUnitTypeTime( true )
AutoPartyScriptManager:SetIsAllMemberCheckSameDifficultyLevelTime( true )
AutoPartyScriptManager:SetIsAllMemberCheckDirectGameStartTime( false )


-- 디펜스 던전
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],		61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],		61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],		61,	65	)



-- 헤니르 시공
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_PRACTICE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_HENIR_CHALLENGE"],	DUNGEON_ID["DI_ELDER_HENIR_SPACE"],		61,	65	)


-- 엘더 비밀던전
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ELDER_SECRET_COMMON"],	61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ELDER_SECRET_HELL"],		61,	65	)


-- 베스마 비밀던전
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_BESMA_SECRET_COMMON"],	61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_BESMA_SECRET_HELL"],		61,	65	)


-- 알테라 비밀던전
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],	61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_ALTERA_SECRET_HELL"],	61,	65	)


-- 벨더 비밀던전
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_NORMAL"],	DUNGEON_ID["DI_VELDER_SECRET_COMMON"],	61,	65	)

AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_SECRET_HELL"],		DUNGEON_ID["DI_VELDER_SECRET_HELL"],	61,	65	)


-- 각 던전마다 매칭 성사 인원 설정( 설정되지 않은 던전은 기본 4인으로 설정됨 )

-- 엘의나무
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],	1 )
-- 숲속의폐허 -- 3레벨산 제거 테스트
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],	1 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_HARD"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_EXPERT"],	3 )
-- 하얀안개습지
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_RUBEN_SWAMP_HARD"],	3 )
-- 어둠의숲
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_DRUID_FOREST_HARD"],	3 )
-- 벤더스의동굴
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_HARD"],	3 )
-- 지하수로
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_HARD"],	3 )
-- 월리의성외곽
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_HARD"],	3 )
-- 월리의성
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_HARD"],	3 )
-- 용의길
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_HARD"],	3 )
-- 베스마호수
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_LAKE_HARD"],	3 )
-- 베스마호수(밤)
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_HARD"],	3 )
-- 용의둥지
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_DRAGON_NEST_HARD"],	3 )
-- 리치광산
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_MINE2_HARD"],	3 )
-- 수송비공정
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_BESMA_AIRSHIP_HARD"],	3 )
--블랙크로우호
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_HARD"],	3 )
--회귀의평원
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_HARD"],	3 )
--운송터널B4-1
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_HARD"],	3 )
--알테라평원
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_PLAIN_HARD"],	3 )
--나소드생산기지
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_HARD"],	3 )
--알테라코어
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_ALTERA_CORE_HARD"],	3 )
--봉헌의신전입구
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_OFFERINGS_HARD"],	3 )
--나선회랑
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_HARD"],	3 )
--지하예배당
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_CHAPEL_HARD"],	3 )
--지하정원
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_UNDER_GARDEN_HARD"],	3 )
--첨탑의심장부
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_TOWER_HEART_HARD"],	3 )
--봉헌의제단
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_HARD"],	3 )
--제3거주지구
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_THIRD_DWELLING_HARD"],	3 )
--희망의다리
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_HARD"],	3 )
--왕궁진입로
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_HARD"],	3 )
--불타는희망의다리
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_HARD"],	3 )
--제1상업지구
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_MARKET_HARD"],	3 )
--남쪽게이트
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_GATE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_VELDER_GATE_HARD"],	3 )
--레시암외곽
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_HARD"],	3 )
--가라앉은레시암
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_HARD"],	3 )
--고대수로
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_HARD"],	3 )
--고대수로중심부
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_HARD"],	3 )
--마그만타의동굴
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_HARD"],	3 )
--얼어붙은물의신전
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_HARD"],	3 )
--물의전당
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],	2 )
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_HARD"],	3 )
--메마른 샌더				
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"]	,	2	)
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_DRY_SANDER_HARD"]	,	3	)
--가르파이 기암지대				
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"]	,	2	)
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_GARPAI_ROCK_HARD"]	,	3	)
--트락 소굴				
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"]	,	2	)
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_HARD"]	,	3	)
--칼루소 부족 마을				
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"]	,	2	)
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( 	DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_HARD"]	,	3	)


-- 킹 나소드 소글
AutoPartyScriptManager:SetAutoPartyMatchingSuccessNum( DUNGEON_ID["DI_EVENT_NIGHT_WATCHER"],	1 )

-- 발렌타인 던전
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		1,	10	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		11,	20	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		21,	30	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		31,	40	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		41,	50	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		51,	55	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		56,	60	)
AutoPartyScriptManager:AddAutoPartyDungeonInfo( DUNGEON_MODE["DM_INVALID"],	DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],		61,	65	)