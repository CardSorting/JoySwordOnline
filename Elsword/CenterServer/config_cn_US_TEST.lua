----------     Center Server 설정     ----------

-- 크래쉬 리포트 메일링 리스트 --
--Server:SetMailingList( "demiahun@kogstudios.com, comicprince@kogstudios.com" )

-- 종료시 db 처리 대기시간 --
Server:SetShutDownWait( 60 * 1000 )  -- 종료시 db 처리 대기시간 : 1분.

-- Add moritoring server's IP for checking port of elsword's server ( SERV_PERMIT_PORT_CHECK )
--Server:AddPortCheckMoritoringServer( "79.110.90.240" )

----------     Center NetLayer 설정     ----------

NetLayer:SetCheckSequenceNum( false ) -- 내부통신은 SequenceNum 체크필요없음


----------     Center SimLayer 설정     ----------
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

-- Script File Path --
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\GameServer" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ServerResource" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\Resources" )
SimLayer:AddPath( "C:\\Users\\media\\Downloads\\JoySwordOffline\\Elsword\\ClientScript" )
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

DBLayer:AddDB( DC_ACCOUNT,	'Account_US_TEST.dsn',		3, false )

if Server:GetServerGroupID() == 0 then
	DBLayer:AddDB( DC_GAME,		'Game01_US_TEST.dsn',5, false )
	DBLayer:AddDB( DC_LOG,		'log_US_TEST.dsn',	3, false )
elseif Server:GetServerGroupID() == 1 then
	DBLayer:AddDB( DC_GAME,		'Game02_US_TEST.dsn',5, false )
	DBLayer:AddDB( DC_LOG,		'log_US_TEST.dsn',		3, false )
else
	DBLayer:AddDB( DC_GAME,		'Game01_US_TEST.dsn',5, false )
	DBLayer:AddDB( DC_LOG,		'log_US_TEST.dsn',	3, false )
end

--DBLayer:AddDB( DC_SMS,		'SMS.dsn',			1, false )

----------     룸 설정     ----------

RoomManager:SetNumPvPRoom( 1500 )
RoomManager:SetNumDungeonRoom( 1500 )
RoomManager:SetNumSquare( 10 ) -- DB에 설정되어 있는 광장 개수 이상이어야 한다.
RoomManager:SetNumTrade( 300 )
RoomManager:SetNumTrainingCenterRoom( 1500 )
RoomManager:SetNumPersonalShop( 150 )
RoomManager:SetNumBattleField( 1500 )

-- 좀비유저 체크 시간 설정 --
RoomManager:SetZUTickTime( 300 )
RoomManager:SetBattleFieldZUTickTime( 20 )		-- 배틀필드 좀비유저 체크 시간 설정


----------     통계 설정     ----------

StatisticsManager:AddStatistics( SI_RES_STONE, 3600, true )
StatisticsManager:AddStatistics( SI_LOC_PVP, 3600, false )


----------     로그 레벨 설정     ----------

-- 로그 레벨 --
--[[
-1 : no logs
 0 : cerr, cout
 1 : cerr, cwarn, cout
 2 : cerr, cwarn, clog, cout
--]]
log( 1 )