-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

PopularityManager:SetPopularityEventOn( false )

-- 본섭용
--[[ PopularityManager:UpdatePopularityTick( 10800 ) -- 60 * 60 * 3

--PopularityManager:SetPopularityInfo( PopularityEventID, StartTime, DurationTime )
PopularityManager:SetPopularityInfo( 1, "2013-03-27 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 2, "2013-03-29 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 3, "2013-03-31 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 4, "2013-04-02 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 5, "2013-04-04 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 6, "2013-04-06 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 7, "2013-04-08 00:00:00", 1439 )

-- (아리엘, 애플) -- 아리엘
PopularityManager:FakePopularityInfo( 1, "2013-03-28 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 1, "2013-03-28 03:00:00", 50, 50 ) -- 45, 55
PopularityManager:FakePopularityInfo( 1, "2013-03-28 06:00:00", 47, 53 ) -- 48, 52
PopularityManager:FakePopularityInfo( 1, "2013-03-28 09:00:00", 48, 52 ) -- 50, 50
PopularityManager:FakePopularityInfo( 1, "2013-03-28 12:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 1, "2013-03-28 15:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 1, "2013-03-28 18:00:00", 57, 43 )
PopularityManager:FakePopularityInfo( 1, "2013-03-28 21:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 1, "2013-03-29 00:00:00", 58, 42 )

-- 애플
PopularityManager:FakePopularityInfo( 2, "2012-03-30 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 03:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 06:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 09:00:00", 65, 35 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 12:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 15:00:00", 47, 53 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 18:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 21:00:00", 40, 60 )
PopularityManager:FakePopularityInfo( 2, "2012-03-31 00:00:00", 42, 58 )

-- 아리엘
PopularityManager:FakePopularityInfo( 3, "2012-04-01 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 03:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 06:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 09:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 12:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 15:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 18:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 3, "2012-04-01 21:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 3, "2012-04-02 00:00:00", 55, 45 )

-- 애플
PopularityManager:FakePopularityInfo( 4, "2012-04-03 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 03:00:00", 52, 48 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 06:00:00", 49, 51 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 09:00:00", 48, 52 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 12:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 15:00:00", 44, 56 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 18:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 21:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 4, "2012-04-04 00:00:00", 43, 57 )

-- 애플
PopularityManager:FakePopularityInfo( 5, "2012-04-05 00:00:00", 50 , 50 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 03:00:00", 40 , 60 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 06:00:00", 35 , 65 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 09:00:00", 37 , 63 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 12:00:00", 45 , 55 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 15:00:00", 49 , 51 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 18:00:00", 50 , 50 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 21:00:00", 48 , 52 )
PopularityManager:FakePopularityInfo( 5, "2012-04-06 00:00:00", 47 , 53 )

-- 아리엘
PopularityManager:FakePopularityInfo( 6, "2012-04-07 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 03:00:00", 52, 48 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 06:00:00", 47, 53 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 09:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 12:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 15:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 18:00:00", 57, 43 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 21:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 6, "2012-04-08 00:00:00", 55, 45 )

PopularityManager:FakePopularityInfo( 7, "2012-04-09 00:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 03:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 06:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 09:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 12:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 15:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 18:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-09 21:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-10 00:00:00", 0, 0 )
--]]


--[[


-- 테섭용
PopularityManager:UpdatePopularityTick( 120 ) -- 60 * 60 * 3

--PopularityManager:SetPopularityInfo( PopularityEventID, StartTime, DurationTime )
PopularityManager:SetPopularityInfo( 1, "2013-03-13 16:00:00", 16 )


PopularityManager:SetPopularityInfo( 7, "2013-03-13 16:20:00", 16 )


-- 애플 승 (아리엘, 애플)
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:02:00", 0, 0 ) -- 45, 55
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:04:00", 0, 0 ) -- 48, 52
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:06:00", 0, 0 ) -- 50, 50
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:08:00", 0, 0 )
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:12:00", 0, 0 ) -- 45, 55
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:14:00", 0, 0 ) -- 48, 52
PopularityManager:FakePopularityInfo( 1, "2013-03-06 15:16:00", 0, 0 ) -- 50, 50
PopularityManager:FakePopularityInfo( 1, "2013-03-06 16:18:00", 0, 0 )






PopularityManager:FakePopularityInfo( 7, "2012-03-07 00:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 03:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 06:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 09:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 12:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 03:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 06:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 09:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-07 12:00:00", 0, 0 )
--]]
