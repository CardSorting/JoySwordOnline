

-- 추천인 테이블 ( 피추천자 레벨, 보상 ID )

--[[
g_pKRecommendUserTable:AddRecommendUserData( 3,  1 )
g_pKRecommendUserTable:AddRecommendUserData( 5,  2 )
g_pKRecommendUserTable:AddRecommendUserData( 10, 3 )
g_pKRecommendUserTable:AddRecommendUserData( 15, 4 )
--]]

-- 엘소드 모험가의 상징 큐브(추천한 유저)
-- #ifdef SERV_RECOMMEND_LIST_EVENT
--g_pKRecommendUserTable:AddRecommendEventReward( 10515 )

-- 엘소드 모험가의 감사 큐브(추천받은 유저)
--g_pKRecommendUserTable:AddRecommendedEventReward1( 10516 )

-- 엘소드 모험가의 증표(추천받은 유저)
--g_pKRecommendUserTable:AddRecommendedEventReward2( 10517 )

-- 엘소드 모험가의 성장(추천한 유저가 레벨 도달시 추천받은 유저에게 지급)
--g_pKRecommendUserTable:AddRecommendUserEventReward( 30, 10498 ) -- 1개
--g_pKRecommendUserTable:AddRecommendUserEventReward( 50, 10499 ) -- 2개
--g_pKRecommendUserTable:AddRecommendUserEventReward( 65, 10500 ) -- 3개
-- #endif SERV_RECOMMEND_LIST_EVENT