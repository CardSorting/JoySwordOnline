-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

----------     Channel Server 설정     ----------

-- 크래쉬 리포트 메일링 리스트 --
Server:SetMailingList( "chonusfte@hotmail.com, chonusfte@hotmail.com" )

-- 종료시 db 처리 대기시간 --
Server:SetShutDownWait( 60 * 1000 )

-- Add moritoring server's IP for checking port of elsword's server ( SERV_PERMIT_PORT_CHECK )
--Server:AddPortCheckMoritoringServer( "79.110.90.240" )

----------     Channel NetLayer 설정     ----------

NetLayer:SetCheckSequenceNum( true )
NetLayer:SetPacketAuthFailLimit( 100 ) -- 유저가 100개이상 비정상 패킷을 보내면 해당 유저 접속해제


----------     Channel SimLayer 설정     ----------
SimLayer:SetUseKogOTP ( true )

-- PublisherBillingConnectType Flag --
--[[
		PBCT_NONE				= 0,	
		// kncSend 떄문에 DBLayer와 일반 Manager 는 구분되어야 함
		PBCT_NORMAL		= 1,	// 일반적인 Manager 통해 (보통은 TCP, SOAP 등)
		PBCT_DB					= 2,	// DB 통신 Manager를 통해
		PBCT_UNUSUAL		= 3,	// 섞어 쓰던가 특이 사항 있는 경우
--]]
SimLayer:SetPublisherBillingConnectType ( PBCT_DB )
SimLayer:SetCheckCouponByPublisher ( false )

-- Auth Flag --
--[[
AF_INTERNAL    : 사내 인증
AF_NEXON_KOREA : 넥슨 국내 인증
AF_K3RCOMBO_US : 미국
--]]
SimLayer:SetAuthFlag( AF_INTERNAL )

-- IP Check --
SimLayer:SetCheckIPMode( CIM_SERVICE_MODE )		-- 서비스 모드
--SimLayer:SetCheckIPMode( CIM_CHECK_MODE )		-- 점검모드

-- 설정되어 있지 않으면 모든 IP 접속 허용
SimLayer:AddIP( "192.168.130" )
SimLayer:AddIP( "192.168.140" )

-- IP체크 여부
SimLayer:SetCheckIPType( CIT_ALL_IP_ALLOW )

-- Script File Path --
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\GameServer" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ServerResource" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\Resources" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Dialog" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Dialog\\NewVillageUI" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Dialog\\NewVillageUI\\Book" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Dialog\\NewVillageUI\\ComboGuide" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Dungeon" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Dungeon\\Not_Use" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Altera_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Besma_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Elder_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Hamel_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Peita_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Ruben_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Sander_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Major\\Field_Script\\Velder_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Npc" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Npc\\Arcade" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\Npc\\Field_Npc" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\SQUARE_UNIT" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\UI_NPC" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Altera" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Arcade" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Besma" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Elder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Event_Etc" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Altera" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Besma" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Elder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Hamel" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Peita" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Ruben" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Sander" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\Tutorial" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Field_World\\velder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Hamel" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Hamel\\Hamel_Battle_Ship" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Hamel\\Velder_Battle_Ship" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\NewVillage" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\NewVillage\\Festival" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Peita" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Ruben_New" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Ruben_New\\Ruben_Wedding" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Ruben_Old" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Den_Of_Trock" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Dry_Sander" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Garpai_Rock" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Karuso_Villeage" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Sand_Pvp_Garpai_Rock" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Sand_Pvp_villige" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Sander\\Sand_Wedding" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\Elsword\\ClientScript\\World\\Velder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Dialog" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Dialog\\NewVillageUI" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Dialog\\NewVillageUI\\Book" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Dialog\\NewVillageUI\\ComboGuide" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Dungeon" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Dungeon\\Not_Use" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Altera_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Besma_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Elder_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Hamel_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Peita_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Ruben_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Sander_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Major\\Field_Script\\Velder_Field" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Npc" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Npc\\Arcade" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\Npc\\Field_Npc" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\SQUARE_UNIT" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\UI_NPC" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Altera" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Arcade" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Besma" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Elder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Event_Etc" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Altera" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Besma" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Elder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Hamel" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Peita" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Ruben" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Sander" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\Tutorial" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Field_World\\velder" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Hamel" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Hamel\\Hamel_Battle_Ship" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Hamel\\Velder_Battle_Ship" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\NewVillage" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\NewVillage\\Festival" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Peita" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Ruben_New" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Ruben_New\\Ruben_Wedding" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Ruben_Old" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Den_Of_Trock" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Dry_Sander" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Garpai_Rock" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Dungeon_Sander_Karuso_Villeage" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Sand_Pvp_Garpai_Rock" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Sand_Pvp_villige" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Sander\\Sand_Wedding" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript\\World\\Velder" )


----------     DB Layer 설정     ----------

-- 접속 DB 목록 --
--[[
DC_ACCOUNT         : 계정
DC_GAME            : 게임
DC_LOG             : 통계
DC_NX_SHOP_GATEWAY : 넥슨 빌링 게이트웨이
--]]
-- AddDB( DB 종류, file dsn, thread 개수, DBConnectionString여부 )

DBLayer:AddDB( DC_ACCOUNT,	'Account_US_TEST.dsn',	3, false )

if Server:GetServerGroupID() == 0 then
	DBLayer:AddDB( DC_LOG, 'log_US_TEST.dsn', 3, false )
elseif Server:GetServerGroupID() == 1 then
	DBLayer:AddDB( DC_LOG, 'log_US_TEST.dsn', 3, false )
else
	DBLayer:AddDB( DC_LOG, 'log_US_TEST.dsn', 3, false )
end

----------     인증 설정     ----------
-- 테스트 중
-- add 함수들은 인자를 다 임시로.. 어차피 안쓰고 있음

--if SimLayer:GetAuthFlag() == AF_K3RCOMBO_US
--then
	-- OFFLINE: K3RComboAuthManager:AddWebServiceAddress( 'http://172.16.42.2:83/GameSecurityService.svc' )
	-- OFFLINE: K3RComboAuthManager:AddWebMethod( K3R_AUTH, 'http://Kill3rComboService/2010/IGameSecurityContract/Login' )
	-- OFFLINE: K3RComboAuthManager:AddWebMethod( K3R_AUTH_SECOND_SECURITY, 'http://Kill3rComboService/2010/IGameSecurityContract/GetSecurityQuestionsStatus' )
	-- OFFLINE: K3RComboAuthManager:Init( 1 )
--end


----------     로그 레벨 설정     ----------

-- 로그 레벨 --
--[[
-1 : no logs
 0 : cerr, cout
 1 : cerr, cwarn, cout
 2 : cerr, cwarn, clog, cout
--]]
log( 1 )