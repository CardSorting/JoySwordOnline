-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 자동 부활 스테이지 : 비밀 스테이지를 제외한 진행한 스테이지 넘버
HenirResultTable:AddResurrectionStage( 9 )
HenirResultTable:AddResurrectionStage( 19 )
HenirResultTable:AddResurrectionStage( 29 )
HenirResultTable:AddResurrectionStage( 38 )
HenirResultTable:AddResurrectionStage( 47 )
HenirResultTable:AddResurrectionStage( 54 )
HenirResultTable:AddResurrectionStage( 56 )


-- 임시 인벤토리 비우는 스테이지
HenirResultTable:AddClearTempInventoryStage( 10 )
HenirResultTable:AddClearTempInventoryStage( 20 )
HenirResultTable:AddClearTempInventoryStage( 30 )
HenirResultTable:AddClearTempInventoryStage( 39 )
HenirResultTable:AddClearTempInventoryStage( 48 )
-- HenirResultTable:AddClearTempInventoryStage( 56 )


-- 헤니르 시공 던전 전체공지 띄우는 스테이지
HenirResultTable:AddClearNotifyStage( 31 )
HenirResultTable:AddClearNotifyStage( 32 )
HenirResultTable:AddClearNotifyStage( 33 )
HenirResultTable:AddClearNotifyStage( 34 )
HenirResultTable:AddClearNotifyStage( 35 )
HenirResultTable:AddClearNotifyStage( 36 )
HenirResultTable:AddClearNotifyStage( 37 )
HenirResultTable:AddClearNotifyStage( 38 )
HenirResultTable:AddClearNotifyStage( 39 )
HenirResultTable:AddClearNotifyStage( 40 )
HenirResultTable:AddClearNotifyStage( 41 )
HenirResultTable:AddClearNotifyStage( 42 )
HenirResultTable:AddClearNotifyStage( 43 )
HenirResultTable:AddClearNotifyStage( 44 )
HenirResultTable:AddClearNotifyStage( 45 )

-- #ifdef SERV_HENIR_NO_NOTIFY
HenirResultTable:SetEnbleNotify( True )