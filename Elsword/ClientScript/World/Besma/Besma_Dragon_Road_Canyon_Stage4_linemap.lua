-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -73.8077, 480, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2517.24, 480, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -348.513, 480, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2768.2, 480, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2639.33, 480, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2388.36, 480, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -172.159, 480, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 82.1976, 480, 0 ), true, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 407.764, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 655.339, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 353.523, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 767.281, 0, 0 ), false, 6 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1008.07, 0, 0 ), false, 6 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1265.81, 0, 0 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1377.73, 0, 0 ), true, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1540.51, 0, 0 ), true, 6 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1757.56, 0, 0 ), true, 6 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2123.83, 240, 0 ), true, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1879.65, 720, 0 ), true, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2164.53, 720, 0 ), true, 4 )






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
	"START_POS		= D3DXVECTOR3(1900, 240, 0)",
	"END_POS		= D3DXVECTOR3(2400, 240, 0)",
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
	"START_POS		= D3DXVECTOR3(100, 240, 0)",
	"END_POS		= D3DXVECTOR3(600, 240, 0)",
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
	"START_POS		= D3DXVECTOR3(2300, 480, 0)",
	"END_POS		= D3DXVECTOR3(2900, 480, 0)",
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
	"START_POS		= D3DXVECTOR3(-500, 480, 0)",
	"END_POS		= D3DXVECTOR3(200, 480, 0)",
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
	"START_POS		= D3DXVECTOR3(1700, 720, 0)",
	"END_POS		= D3DXVECTOR3(2300, 720, 0)",
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
	"START_POS		= D3DXVECTOR3(200, 720, 0)",
	"END_POS		= D3DXVECTOR3(800, 720, 0)",
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
	"START_POS		= D3DXVECTOR3(600, 0, 0)",
	"END_POS		= D3DXVECTOR3(1900, 0, 0)",
}

