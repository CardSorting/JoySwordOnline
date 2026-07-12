

-- 어뷰저 로그 저장 경로
AbuserLogManager:SetAbuserLogPath( "C:\\AbuserEventLog\\" )


-- 어뷰저 패킷 이벤트 타입 모니터링 동작
AbuserLogManager:SetAbuserEventLogEnable( True )


-- 어뷰저 레벨 업 시간 간격 체크 동작
AbuserLogManager:SetAbuserCheckLevelUp( False )


-- 어뷰저 아이템 획득 체크 카운트
AbuserLogManager:SetGetItemCountMinMax( 5000, 10000 )


-- 어뷰저 통보 sms 리스트
--AbuserLogManager:AddAbuserNotifyPhoneNum( '010-2421-1075' )
--AbuserLogManager:AddAbuserNotifyPhoneNum( '011-9390-9335' )


-- 계정 가입 체크 IP
AbuserLogManager:AddJoinAccountCheckIP( "112.175.245.156" )
AbuserLogManager:AddJoinAccountCheckIP( "211.192.178.225" )
AbuserLogManager:AddJoinAccountCheckIP( "61.201.60.67" )
AbuserLogManager:AddJoinAccountCheckIP( "210.197.187.193" )
AbuserLogManager:AddJoinAccountCheckIP( "112.175.245.158" )


-- 해킹 타입별 설정
HACKING_USER_CHECK_TYPE =
{
	HUCT_FIELD_WORKING_CHECK			= 1,	-- 필드 작업장
	HUCT_CLIENT_HACKING_PROCESS			= 2,
	HUCT_CLIENT_HACKING_TEXT			= 3,
	HUCT_CLIENT_HACKING_MODULE			= 4,
	HUCT_CLIENT_HACKING_DLL_MANAGER		= 5,
	HUCT_CLIENT_HACKING_ZOMBIE_PROCESS	= 6,
	HUCT_CLIENT_HACKING_THREAD_TITLE	= 7,
}

-- 공지 종류
HACKING_USER_BLOCK_NOTIFY_TYPE =
{
	HUCBNT_NONE		= 0,	-- 공지하지 않음.
	HUCBNT_RESON	= 1,	-- DB에 저장되어 있는 사유 값 사용
	HUCBNT_NOTIFY	= 2,	-- wstrAccountBlockNotify 사용
	HUCBNT_DEFAULT	= 3,	-- SetHackingUserCheckDefaultNotify 사용
}

--[[
AbuserLogManager:SetHackingUserCheckDefaultNotify{	wstrHackingUserCheckDefaultNotify	= '운영정책에 따라 접속이 제한되었습니다.\n(홈페이지 > 고객센터로 문의 주시기 바랍니다.)'	}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_FIELD_WORKING_CHECK"],
	
	bytePacketMornitoring		= 0,	-- 0이면 설정하지 않음.
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 30,
	usAccountBlockTermHour		= 0,
	usAccountBlockTermMinute	= 0,
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_NONE"],
	wstrAccountBlockNotify		= '',	-- 설정하지 않으면 내용 없음.
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_CLIENT_HACKING_PROCESS"],
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 7,
	
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_DEFAULT"],
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_CLIENT_HACKING_TEXT"],
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 7,
	
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_DEFAULT"],
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_CLIENT_HACKING_MODULE"],
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 7,
	
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_DEFAULT"],
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_CLIENT_HACKING_DLL_MANAGER"],
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 7,
	
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_DEFAULT"],
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_CLIENT_HACKING_ZOMBIE_PROCESS"],
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 7,
	
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_DEFAULT"],
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}

AbuserLogManager:SetHackingUserCheckInfo
{
	byteHackingType				= HACKING_USER_CHECK_TYPE["HUCT_CLIENT_HACKING_THREAD_TITLE"],
	
	byteAccountBlock			= 3,	-- 0이면 설정하지 않음.
	usAccountBlockTermDay		= 7,
	
	byteAccountBlockNotifyType	= HACKING_USER_BLOCK_NOTIFY_TYPE["HUCBNT_DEFAULT"],
	
	byteKick					= 1,	-- 0이면 설정하지 않음. 지정된 숫자 이상일 경우 킥
	byteRandomKickMin			= 10,	-- 랜덤 킥 최소 유예 시간( 초 단위 )
	byteRandomKickTerm			= 50,	-- 랜덤 킥 텀 ( byteRandomKickMin + ( 0 ~ byteRandomKickTerm ) )
	
	byteReset					= 3,	-- 0이면 설정하지 않음.
	bResetWeekly				= True,	-- 매주 목요일 오전 6시 이후 초기화
}
--]]