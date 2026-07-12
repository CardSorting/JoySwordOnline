-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -413.455, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -502.358, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -599.727, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -681, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -278.323, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -171.892, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -61.6599, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 91.1348, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 208.158, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 317.63, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 475.011, 960, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 591.223, 960, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 692.439, 960, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 850.181, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 954.401, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1054.9, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1209.17, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1334.85, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1449.44, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1597.5, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1750.89, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1876.38, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2020.47, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 2164.56, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 2308.65, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2424.85, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 1550.57, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 1442.25, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1313.29, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1194.66, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1060.54, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 931.591, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 792.321, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 658.209, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 513.781, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 389.985, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 240.399, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 101.129, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( -7.19177, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( -110.355, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( -234.15, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( -378.578, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( -507.532, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 42, D3DXVECTOR3( -615.853, 1920, 0 ), true, 7 )
g_pLineMap:AddStartPos( 43, D3DXVECTOR3( -735, 1920, 0 ), true, 7 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-681, 240, 0)", 
	"END_POS		= D3DXVECTOR3(-353, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(22, 720, 0)", 
	"END_POS		= D3DXVECTOR3(398, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(398, 960, 0)", 
	"END_POS		= D3DXVECTOR3(774, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(774, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1150, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1150, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1526, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-353, 480, 0)", 
	"END_POS		= D3DXVECTOR3(22, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1526, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(2487, 1680, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-735, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(1668, 1920, 0)",
	
}

