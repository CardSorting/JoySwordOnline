-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -89.8951, 240, 0 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -272.095, 240, 0 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1913.96, 240, 0 ), false, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2080.39, 240, 0 ), false, 4 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 220.242, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 427.858, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 618.175, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 805.607, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 972.851, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1163.17, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1359.25, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1555.33, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1598.55, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1796.13, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3.66893, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 218.408, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 103.881, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1698.77, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 440.11, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 562.367, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 687.468, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 815.411, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 931.983, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1042.87, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1185.03, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1315.81, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1432.38, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 432.95, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 545.872, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 667.262, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 814.06, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 935.451, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1065.31, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 1203.64, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 1305.27, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 1423.83, 960, 0 ), false, 3 )






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
	"START_POS		= D3DXVECTOR3(-100, 480, 0)", 
	"END_POS		= D3DXVECTOR3(300, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(361, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1484, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(361, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1484, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 240, 0)", 
}

