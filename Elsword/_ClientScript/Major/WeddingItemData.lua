-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pItemManager:AddWeddingHallItem( 0, 269712 ) -- 루벤(기본)
g_pItemManager:AddWeddingHallItem( 1, 269713 ) -- 샌더
--g_pItemManager:AddWeddingHallItem( 2, 12345 )
--g_pItemManager:AddWeddingHallItem( 3, 12345 )


-- 결혼식 보상
g_pItemManager:AddWeddingCompleteRewardItem( 78903, 5 )
g_pItemManager:AddWeddingCompleteRewardItem( 78904, 5 )
g_pItemManager:AddWeddingCompleteRewardItem( 160764, 1 )

-- 커플 기념일 보상
g_pItemManager:AddCoupleAnniversaryDayRewardItem( 160762 )

-- 결혼 기념일 보상
g_pItemManager:AddWeddingAnniversaryDayRewardItem( 160763 )

-- 결혼 기념일 칭호 보상	( days , itemid )
g_pItemManager:AddWeddingAnniversaryDayRewardTitle( 99, 160766 )
g_pItemManager:AddWeddingAnniversaryDayRewardTitle( 149, 160767 )
g_pItemManager:AddWeddingAnniversaryDayRewardTitle( 364, 160768 )
