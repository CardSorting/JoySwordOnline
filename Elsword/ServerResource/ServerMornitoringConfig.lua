-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- SMS 전송 여부
MornitoringManager:SetSendSMS( false )


-- Mail 전송 여부
MornitoringManager:SetSendMail( false )


-- 서버 덤프 남길 ServerUID등록
MornitoringManager:AddDumpServerUID( 2 )
MornitoringManager:AddDumpServerUID( 14 )
MornitoringManager:AddDumpServerUID( 28 )


-- SMS 전송 대상자
-- MornitoringManager:AddPhoneNum( '010-8584-3123' )  -- 권오당
-- MornitoringManager:AddPhoneNum( '010-7466-7958' )  -- 우원식
-- MornitoringManager:AddPhoneNum( '010-8421-1075' )  -- 최육사
-- MornitoringManager:AddPhoneNum( '010-5598-4163' )  -- 김민성
-- MornitoringManager:AddPhoneNum( '010-8982-3382' )  -- 박창용
-- MornitoringManager:AddPhoneNum( '010-3323-7753' )  -- 박세훈
-- MornitoringManager:AddPhoneNum( '010-6226-2188' )  -- 박성호
-- MornitoringManager:AddPhoneNum( '010-9023-1232' )  -- 김현철

-- 넥슨
MornitoringManager:AddPhoneNum( '1-804-386-9839' )  -- 김병수
-- MornitoringManager:AddPhoneNum( '010-3730-2089' )  -- 박재훈
-- MornitoringManager:AddPhoneNum( '010-2060-9674' )  -- 염지선
-- MornitoringManager:AddPhoneNum( '010-8541-1127' )  -- 윤경이
-- MornitoringManager:AddPhoneNum( '010-3125-5696' )  -- 전승욱



-- 서버간 통신 메일 전송 대상자
MornitoringManager:AddServerNetworkMailAddr( 'seandhunt_7@yahoo.com' )  -- 우원식
-- MornitoringManager:AddServerNetworkMailAddr( 'sessakura@kog.co.kr' )  -- 최육사
-- MornitoringManager:AddServerNetworkMailAddr( 'k4interq@kog.co.kr' )  -- 김민성


-- 서버 덤프 메일 전송 대상자
-- MornitoringManager:AddServerDumpMailAddr( 'sessakura@kog.co.kr' )  -- 최육사
MornitoringManager:AddServerDumpMailAddr( 'seandhunt_7@yahoo.com' )  -- 김민성

-- 필수 모듈 검사 리스트(존재해야하는 모듈)
-- #ifdef SERV_CHECK_X2_EXE_MODULE
--MornitoringManager:CheckModuleList_X2Module( true )
--MornitoringManager:AddCheckModuleList( 'x2.exe' )
-- #endif SERV_CHECK_X2_EXE_MODULE