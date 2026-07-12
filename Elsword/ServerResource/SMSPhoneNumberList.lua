

-- 엘소드 개발팀 전화번호 리스트
-- g_SMSPhoneNumberManager:AddPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-8584-3123' )  -- 권오당 팀장님
-- g_SMSPhoneNumberManager:AddPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-9023-1232' )  -- 김현철
-- g_SMSPhoneNumberManager:AddPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-8421-1075' )  -- 최육사
-- g_SMSPhoneNumberManager:AddPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-5598-4163' )  -- 김민성
-- g_SMSPhoneNumberManager:AddPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-3323-7753' )  -- 박세훈
-- g_SMSPhoneNumberManager:AddPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-9317-0790' )  -- 황정희

-- g_SMSPhoneNumberManager:AddTeamPhoneNumber_LUA( FS_MINUS_ED, '000-0000-0000' )  -- 

-- 엘소드 개발팀 전화번호 리스트
-- #ifdef SERV_SMS_TOTAL_MANAGER
--[[
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-8584-3123' )  -- 권오당 팀장님
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-9023-1232' )  -- 김현철
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-8421-1075' )  -- 최육사
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-5598-4163' )  -- 김민성
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-3323-7753' )  -- 박세훈
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM, '010-9317-0790' )  -- 황정희


-- 엘소드 QA팀 전화번호 리스트
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_QA_TEAM, '010-2906-5792' )	-- 안위수
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_QA_TEAM, '010-8260-4758' )	-- 이유미


-- 엘소드 모니터링팀 전화번호 리스트
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_MOR_TEAM, '010-8995-9758' )  -- 변준호
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_MOR_TEAM, '010-9052-0803' )  -- 박윤아


-- 넥슨 전화번호 리스트
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_NEXON,	'010-3288-5238' )	-- 김병수
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_NEXON,	'010-3730-2089' )	-- 박재훈
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_NEXON,	'010-8541-1127' )	-- 윤경이
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_NEXON,	'010-9763-1123' )	-- 김가희
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_NEXON,	'010-4664-7937' )	-- 이화정


-- 엘소드 개발팀 서버 담당자 전화번호 리스트
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM_SERVER, '010-5598-4163' )  -- 김민성
g_SMSPhoneNumberManager:AddTeamPhoneNumber( PNLT_ELSWORD_DEV_TEAM_SERVER, '010-3323-7753' )  -- 박세훈




-- 연결 정보



-- 마이너스 ED
g_SMSPhoneNumberManager:Link( FS_MINUS_ED, PNLT_ELSWORD_DEV_TEAM )
g_SMSPhoneNumberManager:Link( FS_MINUS_ED, PNLT_ELSWORD_MOR_TEAM )


-- 동일 닉네임 우편 전송 시도
g_SMSPhoneNumberManager:Link( FS_SEND_A_LETTER_TO_SAME_NICKNAME, PNLT_ELSWORD_DEV_TEAM )
g_SMSPhoneNumberManager:Link( FS_SEND_A_LETTER_TO_SAME_NICKNAME, PNLT_ELSWORD_MOR_TEAM )


-- UserUID소속이 아닌 UnitUID로 캐릭터를 선택한 유저 체크
g_SMSPhoneNumberManager:Link( FS_INCORRECT_USER_UNIT, PNLT_ELSWORD_DEV_TEAM )


-- iP가 허용 되지 않은 곳에서 치트 사용
g_SMSPhoneNumberManager:Link( FS_CHECK_AUTH_LEVEL, PNLT_ELSWORD_DEV_TEAM )


-- 우편 및 거래 감시 실시간 SMS 전송
g_SMSPhoneNumberManager:Link( FS_SURVEILLANCE_THE_LETTER_AND_TRADE, PNLT_ELSWORD_DEV_TEAM )
g_SMSPhoneNumberManager:Link( FS_SURVEILLANCE_THE_LETTER_AND_TRADE, PNLT_NEXON )


-- 개인 상점 물품 등록 가격 비교
g_SMSPhoneNumberManager:Link( FS_PERSONAL_SHOP_ITEM, PNLT_ELSWORD_DEV_TEAM )


-- 오토핵 검증 기능
g_SMSPhoneNumberManager:Link( FS_AUTO_HACK_CHECK_GET_ITEM, PNLT_ELSWORD_DEV_TEAM )


-- SMS테스트
g_SMSPhoneNumberManager:AddFuntionalPhoneNumber( FS_TEST, '010-8421-1075' )	-- 최육사


-- 던전 클리어 타임 핵유저 체크
g_SMSPhoneNumberManager:Link( FS_DUNGEON_CLEAR_TIME_HACK_USER_CHECK, PNLT_ELSWORD_DEV_TEAM )


-- DB해킹 트랩
g_SMSPhoneNumberManager:Link( FS_DB_HACKING_ED_UPDATE_TRAP, PNLT_ELSWORD_DEV_TEAM )
g_SMSPhoneNumberManager:Link( FS_DB_HACKING_ED_UPDATE_TRAP, PNLT_ELSWORD_QA_TEAM )


-- 실시간 동접 하락 체크 sms
g_SMSPhoneNumberManager:Link( FS_CHECK_DROP_CCU, PNLT_ELSWORD_DEV_TEAM )
g_SMSPhoneNumberManager:Link( FS_CHECK_DROP_CCU, PNLT_ELSWORD_QA_TEAM )
g_SMSPhoneNumberManager:Link( FS_CHECK_DROP_CCU, PNLT_NEXON )


-- 서버 상태 정보
g_SMSPhoneNumberManager:Link( FS_SERVER_STATE, PNLT_ELSWORD_DEV_TEAM )
g_SMSPhoneNumberManager:Link( FS_SERVER_STATE, PNLT_ELSWORD_QA_TEAM )
g_SMSPhoneNumberManager:AddFuntionalPhoneNumber( FS_SERVER_STATE,	'010-7466-7958' )	-- 우원식

-- 넥슨
g_SMSPhoneNumberManager:Link( FS_SERVER_STATE, PNLT_NEXON )


-- 잭팟 이벤트 감시
g_SMSPhoneNumberManager:AddFuntionalPhoneNumber( FS_EVENT_JACK_POT,	'010-3323-7753' )	-- 박세훈

-- 로컬 랭킹 시스템 감시
g_SMSPhoneNumberManager:AddFuntionalPhoneNumber( FS_LOCAL_RANKING_SYSTEM,	'010-3323-7753' )	-- 박세훈

-- 모니터링 유저 접속 감시
g_SMSPhoneNumberManager:Link( FS_MORNITORING_ABUSER_NOTIFY, PNLT_ELSWORD_DEV_TEAM_SERVER )

--]]
-- #endif SERV_SMS_TOTAL_MANAGER