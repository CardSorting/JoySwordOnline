


-- 등록된 아이템은 해당 서버군에서 판매되지 않습니다.

-- WQ_NONE			: 제한 없음
-- WQ_CCU_LIMIT		: 최대 동접 제한
-- WQ_ENTRY_BAN		: 무조건 접속 제한


-- 대기열 모드
WaitQueueManager:SetMode( WQ_NONE )


-- 동접 정보 시간 간격
WaitQueueManager:SetSendTimeGap( 5 )


-- 대기열 인원 제한
WaitQueueManager:SetTotalCCULimit( SERVER_GROUP_ID["SGI_SOLES"], 100000 )
WaitQueueManager:SetTotalCCULimit( SERVER_GROUP_ID["SGI_GAIA"],	 100000 )
WaitQueueManager:SetTotalCCULimit( 17,	 1 )
