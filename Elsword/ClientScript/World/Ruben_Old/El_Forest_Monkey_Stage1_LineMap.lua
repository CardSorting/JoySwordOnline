-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1816.99, 0, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1554.71, 0, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1961.48, 0, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1680.81, 0, 0 ), true, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2266.18, 240, 0 ), false, 9 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2807.13, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 3173.19, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3087.78, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3571.78, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 4035.32, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 4454.2, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 4803.94, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 5153.68, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 5250.32, 240, 0 ), false, 10 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 5762.78, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 6195.35, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 6423.12, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 6671.23, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6854.26, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 7237.63, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 7579.21, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7945.63, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 8330.67, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 8684.67, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 9075.92, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 9511.76, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 9905.54, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 10419.5, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 10710.4, 720, 0 ), false, 1 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 11041.1, 657.57, 0 ), false, 2 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 11314.6, 575.52, 0 ), false, 2 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 11588.3, 493.41, 0 ), false, 2 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 11838.3, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 12124.9, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 12421.8, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 12694.9, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 13045.2, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 12570.2, 720, 0 ), false, 0 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 13063.1, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 13565.4, 1200, 0 ), false, 12 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 13814.8, 1200, 0 ), false, 12 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 14058.2, 1200, 0 ), false, 12 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 14337.3, 1200, 0 ), false, 12 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 14598.5, 1200, 0 ), false, 12 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( 14833, 1200, 0 ), false, 12 )






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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(12333, 720, 0)", 
	"END_POS		= D3DXVECTOR3(12833, 720, 0)", 
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
	NEXT_LINE		= 2, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(10182, 720, 0)", 
	"END_POS		= D3DXVECTOR3(10833, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(10833, 720, 0)", 
	"END_POS		= D3DXVECTOR3(11633, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(11633, 480, 0)", 
	"END_POS		= D3DXVECTOR3(13333, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7000, 960, 0)", 
	"END_POS		= D3DXVECTOR3(10182, 960, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(6000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(7000, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(5470, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6000, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5500, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3500, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(5000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(5500, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(12833, 960, 0)", 
	"END_POS		= D3DXVECTOR3(13396, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(13366, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(14833, 1200, 0)", 
}

