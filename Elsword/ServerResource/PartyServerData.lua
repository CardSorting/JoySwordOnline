


-- 파티 피버 활성화 수치
g_pPartyManager:SetActivateFeverPoint( 4800 )


-- 파티 인원별 최대 fever수치
g_pPartyManager:SetMaxFeverPointByNumMember( 2, 4000 )
g_pPartyManager:SetMaxFeverPointByNumMember( 3, 4000 )
g_pPartyManager:SetMaxFeverPointByNumMember( 4, 4000 )


-- 파티 인원별 fever상승 범위값 지정
g_pPartyManager:SetIncreasePartyFeverByNumMember( 2,  40,  80 )
g_pPartyManager:SetIncreasePartyFeverByNumMember( 3,  80, 160 )
g_pPartyManager:SetIncreasePartyFeverByNumMember( 4, 120, 240 )


-- 헤니르 시공 비밀스테이지 입장 학률
g_pPartyManager:SetDungeonSecretStageEnterFactor( 15, 0.0025 )