-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--2012/12/27 적용
g_pCX2SocketItem:AddSocektGroupDataForCashAvatar_LUA
{
	GROUP_ID = 1000,	--// 국내와 다르게 해외는 -값 안 쓰고 바로 양수 사용
	
	ITEM_TYPE = ITEM_TYPE["IT_DEFENCE"],
	
	SOCKET_ID_LIST =
	{
		40005,	--동작속도 2.5 %
		40105,	--크리티컬 2.5 %
		40205,	--추가데미지 2.5 %
		40310,	--명중 5 %
		40410,	--각성 충전속도 5 %
		40505,	--회피 2.5 %
		40605,	--데미지 감소 2.5 %
		40705,	--HP증가 2.5 %
		40815,	--이동력 7.5 %
		40915,	--점프력 7.5 %
		41005,	--각성 지속시간 증가 3.75 %
	},
}

g_pCX2SocketItem:AddSocektGroupDataForCashAvatar_LUA
{
	GROUP_ID = 2000,	--// 국내와 다르게 해외는 -값 안 쓰고 바로 양수 사용
	
	ITEM_TYPE = ITEM_TYPE["IT_WEAPON"],
	
	SOCKET_ID_LIST =
	{
		40010,	--동작속도 5%
		40110,	--크리티컬 5%
		40210,	--추가데미지 5 %
		40320,	--명중 10 %
		40420,	--각성 충전속도 10 %
		40510,	--회피 5 %
		40610,	--데미지 감소 5 %
		40710,	--HP증가 5 %
		40830,	--이동력 15 %
		40930,	--점프력 15 %
		41010,	--각성 지속시간 증가 7.5 %

	},
}

--[[
g_pCX2SocketItem:AddSocektGroupDataForCashAvatar_LUA
{
	GROUP_ID = 509,
	
	ITEM_TYPE = ITEM_TYPE["IT_DEFENCE"],
	
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
--]]

--[[
g_pCX2SocketItem:AddSocektGroupDataForCashAvatar_LUA
{
	GROUP_ID = 510,
	
	ITEM_TYPE = ITEM_TYPE["IT_DEFENCE"],
	
	SOCKET_ID_LIST =
	{
		40005,
		40105,
		40205,
		40315,
		40415,
		40505,
		40605,
		40705,
		40815,
		40915,
		41005,
	},
}
--]]