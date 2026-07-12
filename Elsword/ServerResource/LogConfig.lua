


-- 로그 파일 크기에 따른 로그 파일 생성
LogManager:SetNewLogByFileSize( false )


-- 매일 새로운 로그 파일 체크
LogManager:SetNewLogDaily( false )


-- 에러 로그 통계 남기기
LogManager:SetErrorLogStat( true )


-- 로그 파일 체크 시간 주기 : ( 초 )
--LogManager:SetCheckTimeGap( 6 ) -- 테스트를 위해 6초로 설정
LogManager:SetCheckTimeGap( 300 ) -- 본섭 세팅


-- 로그 파일 체크 시간 주기 : ( 초 )
--LogManager:SetErrorLogStatTimeGap( 6 ) -- 테스트를 위해 6초로 설정
LogManager:SetErrorLogStatTimeGap( 1800 ) -- 본섭 세팅


-- 로그 파일 최대 크기 : ( mb, kb )
--LogManager:SetLogFileMaxSize( 0, 10 ) -- 테스트를 위해 10kb로 설정
LogManager:SetLogFileMaxSize( 1024, 0 ) -- 본섭 세팅
