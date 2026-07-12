-- enum ROOM_LIST_TYPE
ROOM_LIST_TYPE = 
{	
	RLT_PVP				= 1,
	RLT_FREE_PVP		= 2,
	RLT_SQUARE			= 3,
}

-- ROOM_LIST_ID		: 룸리스트식별 아이디
-- ROOM_LIST_TYPE	: 룸리스트타입(PVP/DUNGEON)

-- MAP_ID			: 던전의 경우 해당지역의 마을 아이디 없으면 대전채널로 0이다
-- MIN_VP		 	: 대전채널 입장에 필요한 최소VP
-- MAX_VP		  	: 대전채널 입장에 필요한 최대VP

-- enum CHANNEL TYPE별 ID 시작번호
CTI_PVP			= 3
CTI_TOURNAMENT	= CTI_PVP + 1

g_pRoomListManager:SetStartPVPID( CTI_PVP )
g_pRoomListManager:SetTournamentPVPID( CTI_TOURNAMENT )

--거래광장채널은 한개이기 때문에 추후 지속적으로 추가될 pvp/dungeon 을 뒤로하고 첫 ID를 가진다.
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= 1,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_SQUARE"],

	MIN_LEVEL  		= 1,
	MAX_LEVEL  		= 100,
}

--/////////////////////////////////////////////////////////////////////////////
--PVP
--/////////////////////////////////////////////////////////////////////////////

--자유 채널
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_FREE_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_FREE"],

	MIN_VP   		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"],
}

--대회 채널
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_TOURNAMENT,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_FREE_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_TOURNAMENT"],

	MIN_VP   		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"],
}

--놀방 채널
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP + 2,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_FREE_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_PLAY"],

	MIN_VP   		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"],
}

--훈련소 채널
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP + 3,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_RECRUIT"],

	MIN_VP     		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_GUARDS"] - 1,
}
--초보채널 1
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP + 4,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_E1"],

	MIN_VP     		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_MERCENARY"] - 1,
}
--초보채널 2
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP + 5,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_E2"],

	MIN_VP     		= PVP_EMBLEM["PE_GUARDS"],
	MAX_VP     		= PVP_EMBLEM["PE_KNIGHTS"] - 1,
}

--일반채널 1
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP + 6,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_E3"],

	MIN_VP     		= PVP_EMBLEM["PE_MERCENARY"],
	MAX_VP     		= PVP_EMBLEM["PE_END"] - 1,
}

--공식채널
g_pRoomListManager:AddRoomListTemplet
{
	ROOM_LIST_ID	= CTI_PVP + 7,
	ROOM_LIST_TYPE	= ROOM_LIST_TYPE["RLT_PVP"],
	
	PVP_CLASS		= PVP_CHANNEL_CLASS["PCC_OFFICIAL"],

	MIN_VP     		= PVP_EMBLEM["PE_RECRUIT"],
	MAX_VP     		= PVP_EMBLEM["PE_END"] - 1,
}

-- 공식 채널 RoomListID설정
g_pRoomListManager:SetPvpOffcialRoomListID( CTI_PVP + 7 )





