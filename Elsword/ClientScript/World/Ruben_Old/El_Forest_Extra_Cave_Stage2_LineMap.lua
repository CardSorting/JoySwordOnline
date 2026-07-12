-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 338.634, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 49.6922, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 500.442, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 211.499, 720, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1613.78, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1867.3, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2096.29, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2317.09, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2676.93, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2840.49, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3118.55, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3388.43, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3682.84, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4001.79, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 4288.02, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 4676.71, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4971.15, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 5191.97, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 5470.06, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5635.69, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5921.95, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 6261.26, 467.622, 0 ), false, 6 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6556.59, 379.022, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6823.42, 298.976, 0 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 7050.69, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 7353.36, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 6688.43, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 6974.66, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 7269.08, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 7752.84, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8120.86, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 8308.96, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 8614.54, 720, 0 ), false, 10 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 8859.88, 720, 0 ), false, 10 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 9088.87, 720, 0 ), false, 10 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 9325.81, 688.257, 0 ), false, 11 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 9667.26, 585.822, 0 ), false, 11 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 9912.74, 512.178, 0 ), false, 11 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 10201.1, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 10495.5, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 10773.6, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 11020, 480, 0 ), false, 12 )






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
	"START_POS		= D3DXVECTOR3(1400, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(0, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6520, 720, 0)", 
	"END_POS		= D3DXVECTOR3(7520, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(3000, 960, 0)", 
	"END_POS		= D3DXVECTOR3(4520, 960, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4520, 720, 0)", 
	"END_POS		= D3DXVECTOR3(5520, 720, 0)", 
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
	NEXT_LINE		= 6, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5520, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6220, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6220, 480, 0)", 
	"END_POS		= D3DXVECTOR3(7020, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7020, 240, 0)", 
	"END_POS		= D3DXVECTOR3(7520, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(2500, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7520, 480, 0)", 
	"END_POS		= D3DXVECTOR3(8520, 480, 0)", 
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
	NEXT_LINE		= 11, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8520, 720, 0)", 
	"END_POS		= D3DXVECTOR3(9220, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= 12, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9220, 720, 0)", 
	"END_POS		= D3DXVECTOR3(10020, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 11, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(10020, 480, 0)", 
	"END_POS		= D3DXVECTOR3(11020, 480, 0)", 
}

