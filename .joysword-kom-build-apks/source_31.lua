-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--2012/12/27 적용
-- Wearable billing products use EB_ProductAttribute socket option IDs from Item.lua
-- SOCKET_OPTION when present; otherwise cash-avatar defaults from the groups below.
-- DI_ISCASHINVENSKIP=1 auto-claims single-option wearables; multi-option rare drops
-- keep DI_ISCASHINVENSKIP=0 so the claim dialog socket picker stays enabled.
g_pCX2SocketItem:AddSocektGroupDataForCashAvatar_LUA
{
	GROUP_ID = 1000,
	
	ITEM_TYPE = ITEM_TYPE["IT_DEFENCE"],
	
	SOCKET_ID_LIST =
	{
		40005,
		40105,
		40205,
		40310,
		40410,
		40505,
		40605,
		40705,
		40815,
		40915,
		41005,
	},
}

g_pCX2SocketItem:AddSocektGroupDataForCashAvatar_LUA
{
	GROUP_ID = 2000,
	
	ITEM_TYPE = ITEM_TYPE["IT_WEAPON"],
	
	SOCKET_ID_LIST =
	{
		40010,
		40110,
		40210,
		40320,
		40420,
		40510,
		40610,
		40710,
		40830,
		40930,
		41010,
	},
}
