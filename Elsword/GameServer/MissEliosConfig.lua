-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

PopularityManager:SetPopularityEventOn( true )
--[[
-- 본섭용
PopularityManager:UpdatePopularityTick( 10800 ) -- 60 * 60 * 3

--PopularityManager:SetPopularityInfo( PopularityEventID, StartTime, DurationTime )
PopularityManager:SetPopularityInfo( 1, "2013-03-27 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 2, "2013-03-29 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 3, "2013-03-31 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 4, "2013-04-02 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 5, "2013-04-04 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 6, "2013-04-06 00:00:00", 1439 )
PopularityManager:SetPopularityInfo( 7, "2013-04-08 00:00:00", 1439 )

-- 애플 승 (아리엘, 애플)
PopularityManager:FakePopularityInfo( 1, "2013-03-27 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 1, "2013-03-27 03:00:00", 50, 50 ) -- 45, 55
PopularityManager:FakePopularityInfo( 1, "2013-03-27 06:00:00", 53, 47 ) -- 48, 52
PopularityManager:FakePopularityInfo( 1, "2013-03-27 09:00:00", 52, 48 ) -- 50, 50
PopularityManager:FakePopularityInfo( 1, "2013-03-27 12:00:00", 47, 53 )
PopularityManager:FakePopularityInfo( 1, "2013-03-27 15:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 1, "2013-03-27 18:00:00", 43, 57 )
PopularityManager:FakePopularityInfo( 1, "2013-03-27 21:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 1, "2013-03-28 00:00:00", 42, 58 )

-- 애플
PopularityManager:FakePopularityInfo( 2, "2012-03-29 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 03:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 06:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 09:00:00", 65, 35 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 12:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 15:00:00", 47, 53 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 18:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 2, "2012-03-29 21:00:00", 40, 60 )
PopularityManager:FakePopularityInfo( 2, "2012-03-30 00:00:00", 42, 58 )

-- 아리엘
PopularityManager:FakePopularityInfo( 3, "2012-03-30 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 03:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 06:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 09:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 12:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 15:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 18:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 3, "2012-03-30 21:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 3, "2012-03-31 00:00:00", 55, 45 )

-- 애플
PopularityManager:FakePopularityInfo( 4, "2012-04-02 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 03:00:00", 52, 48 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 06:00:00", 49, 51 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 09:00:00", 48, 52 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 12:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 15:00:00", 44, 56 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 18:00:00", 45, 55 )
PopularityManager:FakePopularityInfo( 4, "2012-04-02 21:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 4, "2012-04-03 00:00:00", 43, 57 )

-- 아리엘
PopularityManager:FakePopularityInfo( 5, "2012-04-04 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 5, "2012-04-04 03:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 5, "2012-04-04 06:00:00", 65, 35 )
PopularityManager:FakePopularityInfo( 5, "2012-04-04 09:00:00", 63, 37 )
PopularityManager:FakePopularityInfo( 5, "2012-04-04 12:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 5, "2012-04-04 15:00:00", 51, 49 )
PopularityManager:FakePopularityInfo( 5, "2012-04-0418:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 5, "2012-04-04 21:00:00", 52, 48 )
PopularityManager:FakePopularityInfo( 5, "2012-04-05 00:00:00", 53, 47 )

-- 아리엘
PopularityManager:FakePopularityInfo( 6, "2012-04-06 00:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 03:00:00", 52, 48 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 06:00:00", 47, 53 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 09:00:00", 55, 45 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 12:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 15:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 18:00:00", 57, 43 )
PopularityManager:FakePopularityInfo( 6, "2012-04-06 21:00:00", 60, 40 )
PopularityManager:FakePopularityInfo( 6, "2012-04-07 00:00:00", 55, 45 )

PopularityManager:FakePopularityInfo( 7, "2012-04-08 00:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 03:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 06:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 09:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 12:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 15:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 18:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 21:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-04-08 00:00:00", 0, 0 )


--]]



-- 테섭용
PopularityManager:UpdatePopularityTick( 120 ) -- 60 * 60 * 3

--PopularityManager:SetPopularityInfo( PopularityEventID, StartTime, DurationTime )
PopularityManager:SetPopularityInfo( 1, "2013-03-05 16:00:00", 16 )
PopularityManager:SetPopularityInfo( 2, "2013-03-05 16:20:00", 16 )
PopularityManager:SetPopularityInfo( 3, "2013-03-05 16:40:00", 16 )
PopularityManager:SetPopularityInfo( 4, "2013-03-05 17:00:00", 16 )
PopularityManager:SetPopularityInfo( 5, "2013-03-05 17:20:00", 16 )
PopularityManager:SetPopularityInfo( 6, "2013-03-05 17:40:00", 16 )
PopularityManager:SetPopularityInfo( 7, "2013-03-05 18:00:00", 16 )


-- 애플 승 (아리엘, 애플)
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:00:00", 1, 99 )
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:02:00", 2, 98 ) -- 45, 55
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:04:00", 3, 97 ) -- 48, 52
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:06:00", 4, 96 ) -- 50, 50
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:08:00", 5, 95 )
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:12:00", 6, 94 ) -- 45, 55
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:14:00", 7, 93 ) -- 48, 52
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:16:00", 8, 92 ) -- 50, 50
PopularityManager:FakePopularityInfo( 1, "2013-03-05 16:18:00", 9, 91 )



-- 애플
PopularityManager:FakePopularityInfo( 2, "2012-03-05 16:20:00", 10, 90 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 16:22:00", 11, 89 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 16:24:00", 12, 88 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 16:26:00", 13, 87 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 12:00:00", 14, 86 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 03:00:00", 15, 85 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 06:00:00", 16, 84 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 09:00:00", 17, 83 )
PopularityManager:FakePopularityInfo( 2, "2012-03-05 12:00:00", 18, 82 )


PopularityManager:FakePopularityInfo( 3, "2012-03-05 00:00:00", 19, 81 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 03:00:00", 20, 80 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 06:00:00", 21, 79 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 09:00:00", 22, 78 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 12:00:00", 23, 77 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 03:00:00", 24, 76 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 06:00:00", 25, 75 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 09:00:00", 26, 74 )
PopularityManager:FakePopularityInfo( 3, "2012-03-05 12:00:00", 27, 73 )


PopularityManager:FakePopularityInfo( 4, "2012-03-05 00:00:00", 28, 72 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 03:00:00", 29, 71 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 06:00:00", 30, 70 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 09:00:00", 31, 69 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 12:00:00", 32, 68 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 03:00:00", 33, 67 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 06:00:00", 34, 66 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 09:00:00", 35, 65 )
PopularityManager:FakePopularityInfo( 4, "2012-03-05 12:00:00", 36, 64 )


PopularityManager:FakePopularityInfo( 5, "2012-03-05 00:00:00", 37, 63 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 03:00:00", 38, 62 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 06:00:00", 39, 61 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 09:00:00", 40, 60 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 12:00:00", 41, 59 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 03:00:00", 42, 58 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 06:00:00", 43, 57 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 09:00:00", 44, 56 )
PopularityManager:FakePopularityInfo( 5, "2012-03-05 12:00:00", 45, 55 )


PopularityManager:FakePopularityInfo( 6, "2012-03-05 00:00:00", 46, 54 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 03:00:00", 47, 53 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 06:00:00", 48, 52 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 09:00:00", 49, 51 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 12:00:00", 50, 50 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 03:00:00", 51, 49 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 06:00:00", 52, 48 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 09:00:00", 53, 47 )
PopularityManager:FakePopularityInfo( 6, "2012-03-05 12:00:00", 54, 46 )



PopularityManager:FakePopularityInfo( 7, "2012-03-05 00:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 03:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 06:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 09:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 12:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 03:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 06:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 09:00:00", 0, 0 )
PopularityManager:FakePopularityInfo( 7, "2012-03-05 12:00:00", 0, 0 )

