-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[
	m_Type : 이벤트 타입입니다.
	1 번은 특정 아이템 가지고 있어야 캐시샵 리스트에서 물품을 보이게 하는 타입 입니다.
	2 번은 특정 아이템 가지고 있으면 캐시샵에서 할인된 금액을 보여주는 타입 입니다.
	
	m_ShowItem : 보여지는 아이템 ID입니다.
	KEEP_SHOW_ITEM_KEY : 아이템을 보일 수 있게 하는 소지 아이템 ID입니다.
--]]

g_pItemManager:AddKeepShowItem 
{
	
	m_Type	= 1,
	m_ShowItem = 141000273,
	
	KEEP_SHOW_ITEM_KEY = --여기는 특정 아이템의 아이템 넘버를 넣는다.
	{
		   141000270, -- 모험가 패키지 열쇠. 1
	},
	
}

g_pItemManager:AddKeepShowItem 
{
	m_Type	= 1,
	m_ShowItem = 141000274,
	
	KEEP_SHOW_ITEM_KEY = --여기는 특정 아이템의 아이템 넘버를 넣는다.
	{
		  141000271, -- 모험가 패키지 열쇠. 2
		  141000272, -- 모험가 패키지 열쇠. 3
	},
	
}

g_pItemManager:AddKeepShowItem --case 1:2
{
	m_Type	= 1,
	m_ShowItem = 141000275,
	
	KEEP_SHOW_ITEM_KEY = --여기는 특정 아이템의 아이템 넘버를 넣는다.
	{
		  141000272, -- 모험가 패키지 열쇠. 3
	},
	
}

g_pItemManager:AddKeepShowItem --2014 새해 이벤트용
{
	m_Type	= 1,
	m_ShowItem = 153000165,
	
	KEEP_SHOW_ITEM_KEY = --여기는 특정 아이템의 아이템 넘버를 넣는다.
	{
		  153000101, -- 2014년 새해 특별 패키지 구매권
	},
	
}
--안쓰니까 일단 주석 처리 
--[[
g_pItemManager:AddKeepShowItem --할인 아이템이다
{
	m_Type	= 2;
	
	m_ShowItem = 141000274,  
	m_ProDuctNumber_One = 19991, --할인용 프로덕트 넘버
	m_ProDuctNumber_Two = 19990, --기존 프로덕트 넘버
	
	KEEP_SHOW_ITEM_KEY = --할인 받기 위해 가지고 있어야 하는 특정 아이템
	{
		130000560, --특별 우대권 
	},
}
--]] 




