-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 9914.31, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 10080.3, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 10251.8, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 10439.5, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 9820.79, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 10342.1, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 10139.9, 240, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 9949.24, 240, 0 ), false, 5 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2084.67, 480, 0 ), true, 14 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2534.41, 480, 0 ), true, 14 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2971.56, 480, 0 ), true, 14 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3463.24, 591.178, 0 ), true, 15 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 4000, 720, 0 ), true, 15 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 4458.4, 720, 0 ), true, 16 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 4867.5, 720, 0 ), true, 16 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2279.13, 960, 0 ), true, 11 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2771.42, 1200, 0 ), true, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3248.9, 960, 0 ), true, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3515.4, 960, 0 ), true, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3755.98, 960, 0 ), true, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 5238.16, 480, 0 ), true, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 5739.74, 240, 0 ), true, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6006.71, 240, 0 ), true, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 6270.74, 240, 0 ), true, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 6758.06, 480, 0 ), true, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7240.55, 240, 0 ), true, 9 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 7754.31, 0, 0 ), true, 10 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 8013.43, 0, 0 ), true, 10 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 8268.08, 0, 0 ), true, 10 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 7213.74, 720, 0 ), true, 6 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7575.61, 720, 0 ), true, 6 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7924.08, 720, 0 ), true, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 8303.67, 647.119, 0 ), true, 7 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 8653.06, 563.266, 0 ), true, 7 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8973.08, 486.461, 0 ), true, 7 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 9331.28, 480, 0 ), true, 8 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1335.16, 320.438, 0 ), true, 13 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 967.235, 240, 0 ), true, 12 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 659.16, 240, 0 ), true, 12 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 300.932, 240, 0 ), true, 12 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 0, 240, 0 ), true, 12 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 1695.85, 407.004, 0 ), true, 13 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 8650.26, 240, 0 ), true, 5 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 8992.48, 240, 0 ), true, 5 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 9380.46, 240, 0 ), true, 5 )






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
	"START_POS		= D3DXVECTOR3(2500, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(3000, 960, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 960, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(5500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(6500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(5000, 480, 0)", 
	"END_POS		= D3DXVECTOR3(5500, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(6500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(7000, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(10500, 240, 0)", 
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
	NEXT_LINE		= 7, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(8000, 720, 0)", 
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
	NEXT_LINE		= 8, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(9000, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9000, 480, 0)", 
	"END_POS		= D3DXVECTOR3(9500, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(7000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(7500, 240, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(8500, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2000, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 960, 0)", 
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
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= 14, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 13, 
	NEXT_LINE		= 15, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2000, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 14, 
	NEXT_LINE		= 16, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3000, 480, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 15, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(5000, 720, 0)", 
}

