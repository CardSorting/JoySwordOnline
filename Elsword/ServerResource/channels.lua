-- enum CHANNEL_TYPE
CHANNEL_TYPE = 
{
	CT_PVP				= 1,
	CT_FREE_PVP			= 2,
	CT_DUNGEON			= 3,
	CT_SQUARE			= 4,
	CT_TRAINING_CENTER	= 5,
	CT_ARCADE			= 6,
}

-- CHANNEL_ID	: 채널식별 아이디
-- CHANNEL_TYPE	: 채널타입(PVP/DUNGEON)

-- MAP_ID		: 던정의 경우 해당지역의 마을 아이디 없으면 대전채널로 0이다

-- MIN_VP     	: 대전채널 입장에 필요한 최소VP
-- MAX_VP     	: 대전채널 입장에 필요한 최대VP

-- enum CHANNEL TYPE별 ID 시작번호
CTI_PVP		=   3
--CTI_ARCADE	=  30
CTI_DUNGEON	= 100

g_pChannelManager:SetStartPVPID( CTI_PVP )
g_pChannelManager:SetStartArcadeID( ARCADE_CHANNEL_ID["ACI_ARCADE_RUBEN"] )
g_pChannelManager:SetStartDungeonID( CTI_DUNGEON )

--광장채널은 한개이기 때문에 추후 지속적으로 추가될 pvp/dungeon 을 뒤로하고 첫 ID를 가진다.
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= 1,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_SQUARE"],

	MIN_LEVEL  		= 1,
	MAX_LEVEL  		= 100,
}

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= 2,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_TRAINING_CENTER"],
}


--/////////////////////////////////////////////////////////////////////////////
--PVP
--/////////////////////////////////////////////////////////////////////////////

--자유 채널
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_FREE_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_FREE"],

	MIN_VP   		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"],
}

--대회 채널
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP + 1,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_FREE_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_TOURNAMENT"],

	MIN_VP   		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"],
}

--놀방 채널
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP + 2,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_FREE_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_PLAY"],

	MIN_VP   		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"],
}

--훈련소 채널
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP + 3,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_RECRUIT"],

	MIN_VP     		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_GUARDS"] - 1,
}
--초보채널 1
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP + 4,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_E1"],

	MIN_VP     		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_MERCENARY"] - 1,
}
--초보채널 2
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP + 5,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_E2"],

	MIN_VP     		= PVP_EMBLEM["PE_GUARDS"],
	MAX_VP     		= PVP_EMBLEM["PE_KNIGHTS"] - 1,
}

--일반채널 1
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_PVP + 6,
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_E3"],

	MIN_VP     		= PVP_EMBLEM["PE_MERCENARY"],
	MAX_VP     		= PVP_EMBLEM["PE_END"] - 1,
}

--/////////////////////////////////////////////////////////////////////////////
--DUNGEON
--/////////////////////////////////////////////////////////////////////////////

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 1,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 2,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_NORTH_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 3,
	MAP_ID			= DUNGEON_ID["DI_TUTORIAL_ELSWORD"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 4,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_GATE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 5,
	MAP_ID			= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}




g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 6,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 7,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_EXTRA_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 벨더 동쪽: 천연동굴
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 8,
	MAP_ID			= DUNGEON_ID["DI_ELDER_NATURE_CAVE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 벨더 동쪽: 드루이드 숲
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 9,
	MAP_ID			= DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 벨더 동쪽: 월리성 지붕
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 10,
	MAP_ID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 벨더 동쪽: 월리성 센터
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 11,
	MAP_ID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 벨더 동쪽: 지하통로
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 12,
	MAP_ID			= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 몬스터 테스트용 던전
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 13,
	MAP_ID			= DUNGEON_ID["DI_MONSTER_TEST_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 베스마: 드래곤 로드
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 14,
	MAP_ID			= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 베스마: 광산
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 15,
	MAP_ID			= DUNGEON_ID["DI_BESMA_MINE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 엘의숲 헬
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 16,
	MAP_ID			= DUNGEON_ID["DI_EL_FOREST_HELL_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 17,
	MAP_ID			= DUNGEON_ID["DI_TUTORIAL_ARME"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 18,
	MAP_ID			= DUNGEON_ID["DI_TUTORIAL_LIRE"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 베스마: 호수
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 19,
	MAP_ID			= DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 베스마: dragon nest
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 20,
	MAP_ID			= DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 베스마: airship
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 21,
	MAP_ID			= DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 베스마: 호수 밤(night)
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 22,
	MAP_ID			= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 베스마: 광산2
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 23,
	MAP_ID			= DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 베스마: canyon
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 24,
	MAP_ID			= DUNGEON_ID["DI_BESMA_CANYON_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 월리의 지하연구실: wally's underground lab
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 25,
	MAP_ID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 테스트용 던전
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 26,
	MAP_ID			= DUNGEON_ID["DI_TEST_DUNGEON_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 테스트용 던전
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 27,
	MAP_ID			= DUNGEON_ID["DI_TEST1_DUNGEON_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 알테라 전투비공정
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 28,
	MAP_ID			= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 알테라 회귀의평원
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 29,
	MAP_ID			= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

--레이븐 튜토리얼
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 30,
	MAP_ID			= DUNGEON_ID["DI_TUTORIAL_RAVEN"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 알테라 지하터널
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 31,
	MAP_ID			= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 알테라 평원
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 32,
	MAP_ID			= DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 알테라 나소드 공장
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 33,
	MAP_ID			= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 베스마비던:나락
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 34,
	MAP_ID			= DUNGEON_ID["DI_BESMA_SECRET_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

-- 알테라 코어
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 35,
	MAP_ID			= DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- fix!! 테스트 던전
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 36,
	MAP_ID			= DUNGEON_ID["DI_TEST2_DUNGEON_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- fix!! 테스트 던전
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 37,
	MAP_ID			= DUNGEON_ID["DI_TEST3_DUNGEON_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 할로윈 이벤트 던전
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= CTI_DUNGEON + 38,
	MAP_ID			= DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_DUNGEON"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}









-- 아케이드 던전 : 루벤
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= ARCADE_CHANNEL_ID["ACI_ARCADE_RUBEN"],
	MAP_ID			= DUNGEON_ID["DI_ARCADE_RUBEN"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_ARCADE"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}


-- 아케이드 던전 : 엘더
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= ARCADE_CHANNEL_ID["ACI_ARCADE_ELDER"],
	MAP_ID			= DUNGEON_ID["DI_ARCADE_ELDER"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_ARCADE"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}



-- 아케이드 던전 : 시즌1
g_pChannelManager:AddCMTemplet
{
	CHANNEL_ID		= ARCADE_CHANNEL_ID["ACI_ARCADE_SEASON1"],
	MAP_ID			= DUNGEON_ID["DI_ARCADE_SEASON1"],
	CHANNEL_TYPE	= CHANNEL_TYPE["CT_ARCADE"],

	MIN_LEVEL  		= 0,
	MAX_LEVEL  		= 0,
}

