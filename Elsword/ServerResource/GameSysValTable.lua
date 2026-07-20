-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--한국 넥슨 피씨방 보너스 수치.
--#1arg : EXP rate
--#2arg : ED rate
--#3arg : AP rate
--#4arg : Spirit rate

--#ifndef SERV_PC_BANG_TYPE
--GameSysVal:AddKNXGameBang( 0.2, 0.5, 0.2, 0.8 )
--GameSysVal:AddKNXGameBang( 0.3, 0.5, 0.2, 0.8 )			-- 엘소드 PC방 이벤트 (2012년 12월 20일 ~ 2013년 2월 28일 정기 점검 전까지)
--#endif SERV_PC_BANG_TYPE
--GameSysVal:AddKNXGameBangPetEXP( 0.3 )					-- 엘소드 PC방 이벤트 (7월 5일 ~ 8월 30일 정기 점검 전까지)

--제한 레벨.
GameSysVal:AddLimitsMaxLevel( 80 )

--프리미업 캐쉬아이템 경험치 숫치 : 축복의 메달
GameSysVal:AddPremiumEXP( 0.3 )

-- #ifdef SERV_VIP_SYSTEM VIP 캐쉬 아이템 경험치 숫지 :VIP 티캣
GameSysVal:AddVIPEXP( 0.05 )

--체험ID 제한 레벨
GameSysVal:SetGuestUserLimitLevel( 19 )

-- 핵 유저 발견시 접속 차단 유저 등록 처리
GameSysVal:SetIsHackUserRegRejected( False )	-- SERV_GLOBAL_COMMON 해외팀은 제재 우선 막음

-- 핵 유저 발견시 감시 대상 유저 등록 처리
GameSysVal:SetIsHackUserRegMonitors( False )

-- 핵 유저 발견시 강제 접속 종료 처리
GameSysVal:SetIsHackUserKick( False )			-- SERV_GLOBAL_COMMON 해외팀은 제재 우선 막음

-- 핵 유저 발견시 거래 정지 처리
GameSysVal:SetIsHackUserBlockTrade( False )		-- SERV_GLOBAL_COMMON 해외팀은 제재 우선 막음

-- 핵 유저 패킷 모니터링
GameSysVal:SetHackUserPacketMornitor( True )

--#ifdef SERV_NEW_UNIT_TRADE_LIMIT
GameSysVal:SetIsNewUnitTradeBlock( False )		-- 신규 유닛 거래 제한 유무
GameSysVal:SetNewUnitTradeBlockDay( 3 )			-- 신규 유닛 거래 제한 날짜
GameSysVal:SetNewUnitTradeBlockUnitClass( 10 )	-- 신규 유닛 거래 제한 전직 ( 전직해야만 거래 가능하면 10 으로 변경 )
--#endif SERV_NEW_UNIT_TRADE_LIMIT

--#ifdef SERV_DESAGREE_HACK_USER_ON_OFF
GameSysVal:SetDisagreeHackUserFunc( False )	-- 동의 안한 핵 유저에 관한 처리 유무
--#endif SERV_DESAGREE_HACK_USER_ON_OFF

--#ifdef SERV_FIX_SYNC_PACKET_USING_RELAY
-- 랜선렉
GameSysVal:SetLanBugOutJustLog( True )	-- 추방은 하지 않고 로그만 남깁니다.

--GameSysVal:SetLanBugOutDisconnectCheckStartOnGameLoadingReq( False )		-- EGS_GAME_LOADING_REQ 받고 성공적으로 처리가 되면 검사 시작
--GameSysVal:SetLanBugOutDisconnectCheckTerm( 10.0 )		-- Out 패킷을 날리고 블럭 판단을 내릴 때까지의 시간 간격 ( 음수일 경우 사용하지 않음 )
--GameSysVal:SetLanBugOutDisconnectTerm( 10, 50 )	-- 블럭 판단 이후 강제로 접속을 끊어버리기 까지의 시간 간격 ( 최소 + 랜덤 텀 )

-- 랜선렉 판별 기준 ( 패킷 전송 텀은 소수점 아래 한 자리 까지만 표현 )
GameSysVal:SetLanBugOutCheckOption
{
	bLanBugOutCheck				= False,		-- 사용 여부
	byteLanBugOutCheckMaxCount	= 0,		-- 최대 체크 횟수 ( 0 이면 무제한 )
	fLanBugOutCheckTime			= 1.0,		-- 판정 시간
	byteLanBugOutCheckCount		= 10,		-- 판정 횟수
	fLanBugOutCheckTermMin		= 1.0,		-- 판정 패킷 최소 간격
	fLanBugOutCheckTerm			= 0.0,		-- 판정 패킷 최대 텀 ( 최소 간격 + @ ) ( 소수점 아래 한 자리 까지만 표현 )
	fLanBugOutCheckRepeatTerm	= 0.5,		-- 반복 전송 간격
}

-- 랜선렉 악용 유저 판별 기준 ( 패킷 전송 텀은 소수점 아래 한 자리 까지만 표현 )
GameSysVal:SetLanBugOutVerifyOption
{
	bLanBugOutVerify			= False,		-- 사용 여부
	byteLanBugOutVerifyMaxCount	= 10,		-- 최대 체크 횟수 ( 0 이면 무제한 )
	fLanBugOutVerifyTime		= 1.0,		-- 판정 시간
	byteLanBugOutVerifyCount	= 10,		-- 판정 횟수
	fLanBugOutVerifyTermMin		= 1.0,		-- 판정 패킷 최소 간격
	fLanBugOutVerifyTerm		= 0.0,		-- 판정 패킷 최대 텀 ( 최소 간격 + @ ) ( 소수점 아래 한 자리 까지만 표현 )
	fLanBugOutVerifyRepeatTerm	= 0.5,		-- 반복 전송 간격
}
--#endif SERV_FIX_SYNC_PACKET_USING_RELAY

-- 빙고 보상 아이템 지급 실패 시 재지급 시도 횟수
--GameSysVal:SetBingoEventPayoutRepeateUse( False )
--GameSysVal:SetBingoEventPayoutRepeateUse2( False )
--GameSysVal:SetBingoEventPayoutRepeate( 1 )

-- 호스트 변경 시간(핑 체크)
GameSysVal:SetCheckChangeHostTime( 180 ) -- 방장 변경 검사 시간(6분 마다 변경 조건 검사)
GameSysVal:SetMaxPingScore( 5000 ) -- 현재 호스트의 핑 스코어가 MaxPingScore 미만이면서 새로운 호스트 후보가 MaxPingScore 이상이면 호스를 변경하지 않는다.

-- SMS 설정

-- 우편 및 거래 감시
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_LETTER_AND_TRADE"], "010-4118-3867" )	-- 김창호 팀장님
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_LETTER_AND_TRADE"], "010-8584-3123" )	-- 권오당 팀장님
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_LETTER_AND_TRADE"], "010-9317-0790" )	-- 황정희 님

--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_LETTER_AND_TRADE"], "010-4072-1031" )	-- 김결
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_LETTER_AND_TRADE"], "010-3898-7886" )	-- 김강민
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_LETTER_AND_TRADE"], "010-5671-0502" )	-- 이우진

-- 실시간 동접 하락 체크 sms
--#ifdef SERV_RUNTIME_SCRIPT_FOR_SMS
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-4118-3867" )			-- 김창호 팀장님
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-8584-3123" )			-- 권오당 팀장님
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-7466-7958" )			-- 우원식
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-8421-1075" )			-- 최육사
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-5598-4163" )			-- 김민성
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-9490-8761" )			-- 황원준
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-8982-3382" )			-- 박창용
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-6226-2188" )			-- 박성호

--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-4072-1031" )			-- 김결
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-3898-7886" )			-- 김강민 
--GameSysVal:AddSMSRecipient( SMS_TYPE["SMS_SURVEILLANCE_THE_CCU_DROP"], "010-5671-0502" )			-- 이우진
-- #endif SERV_RUNTIME_SCRIPT_FOR_SMS

--광고 URL
GameSysVal:SetAdvertisementURL( '' )

-- 캐릭터 통계 남기는 시작 날짜 세팅
GameSysVal:SetCharStatisticsStartDate( '2011-01-20 08:30:00' )

-- 계정 통계 남기는 시작 날짜 세팅
GameSysVal:SetAccountStatisticsStartDate( '2011-02-24 08:00:00' )

-- 개인거래 차단
GameSysVal:SetBlockPersonalTrade( False )
GameSysVal:SetBlockPersonalShop( False )
GameSysVal:SetBlockSendLetter( False )

-- 머신ID 블럭 기능
GameSysVal:SetMachineIDBlock( False )

-- 머신ID 중복 접속 체크 기능
GameSysVal:SetMachineIDDuplicateCheck( False )

-- 휴면 복귀 유저 보상 기준( 단계, 몇일 )
GameSysVal:SetComeBackReward( 1, 30 )	-- 1단계  30일
GameSysVal:SetComeBackReward( 2, 60 )	-- 2단계  60일
GameSysVal:SetComeBackReward( 3, 180 )	-- 3단계 180일


-- 개인상점 거래 감시
--GameSysVal:InsertItemPrice( 91620, 200000 )			-- 마법의 얼음 조각
--GameSysVal:InsertItemPrice( 77010, 200000 )			-- 초급 마나포션

--/////////////////////////////////////////////////////////////////////////////////////////////////////////
-- 우편 전송 횟수 감시 기능-- ED 거래 횟수 감시 기능
GameSysVal:SetLetterAndTradeMonitoringIsOn(true)

GameSysVal:SetLimitsCountOfLetter( 10 )
GameSysVal:SetLetterMonitoringCheckTime( 20 ) -- 분

GameSysVal:SetLimitsCountOfTrade( 10 )
GameSysVal:SetTradeMonitoringCheckTime( 20 ) -- 분

GameSysVal:SetMonitoringMinED( 400000 )				-- 감시 최소 금액
GameSysVal:SetMonitoringMaxED( 7000000 )			-- 감시 최대 금액

GameSysVal:SetMonitoringLetterAndTradeBlockTime( 5, 0, 0, 10800 )			-- 자동 블럭 시간(시작 시간, , , 유지시간)
--//////////////////////////////////////////////////////////////////////////////////////////////////////


-- Deserialize Fail Check 해킹 체크
GameSysVal:SetDeserializeFailCheck( True )
GameSysVal:SetDeserializeFailCheckCount( 5 )

-- 서브 스테이지 DIE NPC 시간 체크 기능
GameSysVal:SetSubStageNpcDieCheck( False )

-- 던전 클리어 시 현자의 주문서/마법석 지급 이벤트(2012-07-14)
--GameSysVal:SetDungeonClearStartTime( 2012, 7, 14, 14, 0, 0 )
--GameSysVal:SetDungeonClearEndTime( 2012, 7, 14, 15, 0, 0 )

-- 던전 클리어 시 다크엘의 파편 지급 이벤트(2013-06-26 ~ 2013-07-09)
--GameSysVal:SetDungeonClearPaymentItemID( 85002803 ) -- 다크엘의 파편
-- 테섭
--GameSysVal:SetDungeonClearStartTime( 2013, 6, 26, 0, 0, 0 )
--GameSysVal:SetDungeonClearEndTime( 2013, 7, 9, 23, 59, 0 )
-- 본섭
--GameSysVal:SetDungeonClearStartTime( 2013, 6, 26, 0, 0, 0 )
--GameSysVal:SetDungeonClearEndTime( 2013, 7, 9, 23, 59, 0 )


-- 특정 시간 이벤트 큐브 오픈가능 조건
--GameSysVal:SetEventCubeOpenStartTime(  2012, 7, 15, 12, 0, 0)
--GameSysVal:SetEventCubeOpenEndTime( 2012, 7, 15, 12, 10, 0 )

--특정시간 가열기 확률 변경
--GameSysVal:SetAttractionItemTimeEvent( 108900, 160578, { wstrBeginDate = '2013-05-18 00:00:00',	wstrEndDate = '2013-05-19 23:59:00' } )
--GameSysVal:SetAttractionItemTimeEvent( 108900, 160578, { wstrBeginDate = '2013-05-25 00:00:00',	wstrEndDate = '2013-05-26 23:59:00' } )
--GameSysVal:SetAttractionItemTimeEvent( 108900, 160578, { wstrBeginDate = '2013-06-01 00:00:00',	wstrEndDate = '2013-06-02 23:59:00' } )
--GameSysVal:SetAttractionItemTimeEvent( 108900, 160578, { wstrBeginDate = '2013-06-08 00:00:00',	wstrEndDate = '2013-06-09 23:59:00' } )

-- ServerSN Check --
-- #ifdef SERV_SERIAL_NUMBER_AVAILABILITY_CHECK_IN_GAMESERVER
--GameSysVal:SetCheckServerSN_IN_GS( True )
--GameSysVal:SetCheckServerSN_ERR_01_1_IN_GS( false )
--GameSysVal:SetCheckServerSN_ERR_01_2_IN_GS( false )
--GameSysVal:SetCheckServerSN_ERR_02_IN_GS( false )
-- #endif SERV_SERIAL_NUMBER_AVAILABILITY_CHECK_IN_GAMESERVER

-- 플루오르 강화 이벤트(2013-02-16)
--GameSysVal:SetEnchantEventStartTime( 2013, 2, 16, 0, 0, 0 )
--GameSysVal:SetEnchantEventEndTime( 2013, 2, 16, 23, 59, 0 )


-- 남캐 버프 이벤트 - 발렌타인 데이 이벤트
-- GameSysVal:SetMenBuffEvent( true )

-- 실시간 동접 하락 체크 sms
-- #ifdef SERV_CHECK_DROP_CCU
--GameSysVal:SetCheckDropCCU( true )
--GameSysVal:SetDropCCUPercent( 50 ) -- 50% 이상 하락하였으면 sms 발송
-- #endif SERV_CHECK_DROP_CCU

-- 해킹 유저 응답 패킷 이상 시 킥 여부 // 2012년 6월 07일 적용 (문제 발생 시 false)
GameSysVal:SetHackingUserKick( true )

-- 랜덤 큐브 오픈 딜레이 시스템
GameSysVal:SetEnableOpenRandomCubeDelaySystem( false )
GameSysVal:SetOpenRandomCubeDelayTime( 3 )
GameSysVal:SetOpenRandomCubeDelayCount( 10 )

-- 2012 대전 시즌2 전야 런칭 이벤트 시간(매일)
-- 1:토요일/일요일, 2:월~금
-- ( 주말/평일, 순번, 시작 시, 시작 분, 끝 시, 끝 분 )
--GameSysVal:SetPvpEventTime( 1, 1, 12, 0, 13, 0 )
--GameSysVal:SetPvpEventTime( 1, 2, 21, 0, 22, 0 )
--GameSysVal:SetPvpEventTime( 2, 1, 18, 30, 19, 30 )
--GameSysVal:SetPvpEventTime( 2, 2, 21, 0, 22, 0 )

-- 로컬 랭킹 시스템 랭커 인원 수 설정
-- #ifdef SERV_LOCAL_RANKING_SYSTEM
--GameSysVal:SetLocalRankingNumOfRanker( 1000 )
--GameSysVal:SetLocalRankingElpUpdateGap( 0.2 )
-- #endif SERV_LOCAL_RANKING_SYSTEM

-- ERM_NPC_UNIT_DIE_REQ 패킷 호스트 체크 텀 ( 0 이하의 값을 기록하면 체크하지 않는다. )
GameSysVal:SetHostCheckTerm( 3.0 )

-- 같은 스테이지 로딩 시 남길 로그
--GameSysVal:SetDungeonStageLoadLog( True )

--#ifdef SERV_PROCESS_COMMUNICATION_KSMS
GameSysVal:SetProcessCommunication( True )
--#endif //SERV_PROCESS_COMMUNICATION_KSMS

--[[ JOYSWORD_PVP_PROFILE_BEGIN default ]]
-- applied_utc: 2026-07-19T22:47:05Z
-- client_connection_mode: Default
-- client_switch_connect_mode: 0

GameSysVal:SetLanBugOutJustLog( True )

GameSysVal:SetLanBugOutCheckOption
{
	bLanBugOutCheck				= False,		-- JoySword PvP profile
	byteLanBugOutCheckMaxCount	= 0,		-- 최대 체크 횟수 ( 0 이면 무제한 )
	fLanBugOutCheckTime			= 1.0,		-- 판정 시간
	byteLanBugOutCheckCount		= 10,		-- 판정 횟수
	fLanBugOutCheckTermMin		= 1.0,		-- 판정 패킷 최소 간격
	fLanBugOutCheckTerm			= 0.0,		-- 판정 패킷 최대 텀
	fLanBugOutCheckRepeatTerm	= 0.5,		-- 반복 전송 간격
}

GameSysVal:SetLanBugOutVerifyOption
{
	bLanBugOutVerify			= False,		-- JoySword PvP profile
	byteLanBugOutVerifyMaxCount	= 10,		-- 최대 체크 횟수
	fLanBugOutVerifyTime		= 1.0,		-- 판정 시간
	byteLanBugOutVerifyCount	= 10,		-- 판정 횟수
	fLanBugOutVerifyTermMin		= 1.0,		-- 판정 패킷 최소 간격
	fLanBugOutVerifyTerm		= 0.0,		-- 판정 패킷 최대 텀
	fLanBugOutVerifyRepeatTerm	= 0.5,		-- 반복 전송 간격
}

GameSysVal:SetCheckChangeHostTime( 180 )
GameSysVal:SetMaxPingScore( 5000 )
GameSysVal:SetHostCheckTerm( 3.0 )
GameSysVal:SetBattleFieldCheckChangeHostTime( 180 )

--[[ JOYSWORD_PVP_PROFILE_END ]]

-----------------------------------------------------------------------------

--PC방 프리미엄 아이템
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ELSWORD"],	131254	) --	그레이트 비틀 소드 (엘소드)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ELSWORD"],	131429	) --	그레이트 비틀 상의 (엘소드)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ELSWORD"],	131430	) --	그레이트 비틀 하의 (엘소드)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ELSWORD"],	131431	) --	그레이트 비틀 장갑 (엘소드)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ELSWORD"],	131432	) --	그레이트 비틀 신발 (엘소드)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ELSWORD"],	131433	) --	그레이트 비틀 헤어 (엘소드)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARME"],	131255	) --	그레이트 비틀 스피어 (아이샤)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARME"],	131434	) --	그레이트 비틀 상의 (아이샤)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARME"],	131435	) --	그레이트 비틀 하의 (아이샤)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARME"],	131436	) --	그레이트 비틀 장갑 (아이샤)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARME"],	131437	) --	그레이트 비틀 신발 (아이샤)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARME"],	131438	) --	그레이트 비틀 헤어 (아이샤)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_LIRE"],	131256	) --	그레이트 비틀 보우 (레나)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_LIRE"],	131439	) --	그레이트 비틀 상의 (레나)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_LIRE"],	131440	) --	그레이트 비틀 하의 (레나)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_LIRE"],	131441	) --	그레이트 비틀 장갑 (레나)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_LIRE"],	131442	) --	그레이트 비틀 신발 (레나)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_LIRE"],	131443	) --	그레이트 비틀 헤어 (레나)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_RAVEN"],	131257	) --	그레이트 비틀 커틀러스 (레이븐)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_RAVEN"],	131444	) --	그레이트 비틀 상의 (레이븐)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_RAVEN"],	131445	) --	그레이트 비틀 하의 (레이븐)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_RAVEN"],	131446	) --	그레이트 비틀 장갑 (레이븐)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_RAVEN"],	131447	) --	그레이트 비틀 신발 (레이븐)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_RAVEN"],	131448	) --	그레이트 비틀 헤어 (레이븐)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_EVE"],	131258	) --	그레이트 비틀 기어 (이브)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_EVE"],	131449	) --	그레이트 비틀 상의 (이브)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_EVE"],	131450	) --	그레이트 비틀 하의 (이브)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_EVE"],	131451	) --	그레이트 비틀 장갑 (이브)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_EVE"],	131452	) --	그레이트 비틀 신발 (이브)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_EVE"],	131453	) --	그레이트 비틀 헤어 (이브)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_CHUNG"],	86550	) --	그레이트 비틀 캐논 (청)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_CHUNG"],	86551	) --	그레이트 비틀 상의 (청)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_CHUNG"],	86552	) --	그레이트 비틀 하의 (청)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_CHUNG"],	86553	) --	그레이트 비틀 장갑 (청)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_CHUNG"],	86554	) --	그레이트 비틀 신발 (청)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_CHUNG"],	86555	) --	그레이트 비틀 헤어 (청)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARA"],	86560	) --	그레이트 비틀 랜스 (아라)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARA"],	86561	) --	그레이트 비틀 상의 (아라)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARA"],	86562	) --	그레이트 비틀 하의 (아라)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARA"],	86563	) --	그레이트 비틀 장갑 (아라)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARA"],	86564	) --	그레이트 비틀 신발 (아라)
GameSysVal:AddPcBangPremiumItem( UNIT_TYPE["UT_ARA"],	86565	) --	그레이트 비틀 헤어 (아라)
