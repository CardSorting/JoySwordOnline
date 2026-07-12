-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 비밀 던전 EXTRA모드 NPC레벨 [헬모드 NPC 레벨에다가 합산하는 값]
g_pDungeonManager:SetSecretDungeonExtraStageNpcLevel( 2 )


-- Extra Stage 진입 공식 상수 : BeginLevel, EndLevel, Factor :확률 스테이지 단위로 적용됨
g_pDungeonManager:AddExtraStageCondition(  1, 10, 0 )
g_pDungeonManager:AddExtraStageCondition( 11, 20, 0 )
g_pDungeonManager:AddExtraStageCondition( 21, 30, 0.01 )
g_pDungeonManager:AddExtraStageCondition( 31, 40, 0.03)
g_pDungeonManager:AddExtraStageCondition( 41, 50, 0.04 )
g_pDungeonManager:AddExtraStageCondition( 51, 70, 0.05 )


-- Extra Stage 상수값 : 
g_pDungeonManager:SetExtraStageFactor( 0.05 )