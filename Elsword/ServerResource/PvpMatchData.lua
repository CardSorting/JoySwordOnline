-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 최대 랭킹 포인트
PvpMatchManager:SetMaxRankingPoint( 200000 )

-- 최대 아레나 포인트
PvpMatchManager:SetMaxArenaPoint( 100000 )


-- 매치 메이킹을 시작하는 최소 대기자 리스트 카운트 설정
--PvpMatchManager:SetMatchMakingBeginCount( 2 ) -- 사내 테스트!!
PvpMatchManager:SetMatchMakingBeginCount( 1 ) 


-- 레이팅 순위별 가중치
PvpMatchManager:SetMatchWeightValue( 0, 1 )
PvpMatchManager:SetMatchWeightValue( 1, 3 )
PvpMatchManager:SetMatchWeightValue( 2, 5 )


-- 대전 매치 메이킹 리스트 체크 범위 : 먼저 신청한 유저 우대
PvpMatchManager:SetCheckWaitUserCount( 300 )   --200   


-- 대전 매치 메이킹 최소, 최대 rating갭 제한
PvpMatchManager:SetGapMinMaxRating( 200000 )   --1000


-- 영웅 NPC와의 대전 상수
-- PvpMatchManager:SetHeroPvpNpcFactor( 99999999 )     -- 영웅 매칭 조절값 a (기획서)  -- 테스트
PvpMatchManager:SetHeroPvpNpcFactor( 99999999 )     -- 영웅 매칭 조절값 a (기획서)  -- rating * 0.001 * 0.01 * a



-- 대전 매치 킬수, 타임 설정
PvpMatchManager:AddPvpMatchInfo( MATCH_TYPE["MT_TEAM_1_ON_1"],			3,	300 )
PvpMatchManager:AddPvpMatchInfo( MATCH_TYPE["MT_TEAM_2_ON_2"],			4,	300 )
PvpMatchManager:AddPvpMatchInfo( MATCH_TYPE["MT_TEAM_3_ON_3"],			6,	300 )
PvpMatchManager:AddPvpMatchInfo( MATCH_TYPE["MT_TEAM_DEATH_1_ON_1"],	5,	420 )
PvpMatchManager:AddPvpMatchInfo( MATCH_TYPE["MT_TEAM_DEATH_2_ON_2"],	8,	420 )
PvpMatchManager:AddPvpMatchInfo( MATCH_TYPE["MT_TEAM_DEATH_3_ON_3"],	12,	420 )


--	일반 대전 맵 정보
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_TREE_OF_LIGHT_TOP"]					)	-- 엘의 나무 최상층
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_FOREST_OF_EL"]						)	-- 엘의 숲
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"]			)	-- 벤더스 동굴
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"]	)	-- 월리의 성 센터
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"]	)	-- 월리의 성 지붕
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_BESMA_BESMA_LAKE_PVPMAP"]			)	-- 베스마 호수
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_BESMA_AIR_SHIP_PVPMAP"]				)	-- 베스마 비공정
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_SUMMER_2008_PVP"]					)	-- 2008 여름바다 대전맵
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_PEITA_OFFERING_PVP_STAGE"]			)	-- 페이타 대전맵
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_PVP_STAGE"]	)	-- 페이타 나선회랑 대전맵
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_ELDER_BRIDGE_HOPE_PVPMAP"]			)	-- 희망의 다리 대전맵
PvpMatchManager:AddPvpMapForMatch( WORLD_ID["WI_WINTER_PVPMAP"]						)	-- 겨울 대전맵


--	NPC대전 전용 맵 정보

-- 대전 시즌1때의 에픽 NPC와 대결하는 장소입니다.
-- PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_FOREST_OF_EL"]						)	-- 엘의 숲
-- PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"]	)	-- 월리의 성 센터
-- PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"]		)	-- 월리의 성 지붕
-- PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_SUMMER_2008_PVP"]					)	-- 2008 여름바다 대전맵
-- PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_WINTER_PVPMAP"]						)	-- 겨울 대전맵

-- 대전 시즌2에 변경되는 NPC와 대결하는 장소입니다.
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_FOREST_OF_EL"]						)	-- 엘의 숲
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"]		)	-- 월리의 성 지붕
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_SUMMER_2008_PVP"]					)	-- 2008 여름바다 대전맵
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_PEITA_OFFERING_PVP_STAGE"]			)	-- 페이타 대전맵
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_TREE_OF_LIGHT_TOP"]					)	-- 엘의 나무 최상층
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"]			)	-- 벤더스 동�
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"]	)	-- 월리의 성 �섰
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_BESMA_BESMA_LAKE_PVPMAP"]			)	-- �스마 호숸
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_BESMA_AIR_SHIP_PVPMAP"]				)	-- �스마 비공정
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_PVP_STAGE"]	)	-- 페이타 나�욬랑 대전맵
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_ELDER_BRIDGE_HOPE_PVPMAP"]			)	-- 희망의 다리 대전맵
PvpMatchManager:AddPvpMapForNpcMatch( WORLD_ID["WI_WINTER_PVPMAP"]						)	-- 겨울 대전맵
