-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 174.711, 960, 2002.79 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 12.0943, 960, 2285.01 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 350.817, 960, 1697.17 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 517.307, 960, 1408.23 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 450.017, 960, 1525.01 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 285.667, 960, 1810.23 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 98.0754, 960, 2135.79 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 594.348, 960, 1274.53 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1089.76, 960, 444.733 ), false, 11 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1386, 960, 185 ), false, 13 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1720.9, 960, 51.9588 ), false, 16 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2101.67, 960, 0.0841717 ), false, 19 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2553.29, 960, -0.398669 ), false, 20 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3103.03, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3490.34, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3964.81, 1265.28, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4425.1, 1388.03, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4908.98, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 5347.75, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 5861.32, 1200, 0 ), false, 23 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 6222.44, 1200, 0 ), false, 23 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 6589.61, 1200, 0 ), false, 23 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6913.66, 1200, 0 ), false, 23 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 7331.54, 1440, 0 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 7655.88, 1440, 0 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7411.45, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 7831.16, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 8271.57, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 8912.78, 1200, 0 ), false, 10 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 9301.5, 1200, 0 ), false, 10 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 9864.26, 1440, 0 ), false, 22 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 10557.8, 1680, 0 ), false, 21 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 11156.2, 1440, 0 ), false, 9 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 9883.4, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 10329.2, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 10765.8, 1003.75, 0 ), false, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 11149.7, 1118.91, 0 ), false, 7 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 11571.8, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 11998.9, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 12420, 1200, 0 ), false, 8 )






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
	"START_POS		= D3DXVECTOR3(0, 960, 2306)", 
	"END_POS		= D3DXVECTOR3(998, 960, 574)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7120, 960, 0)", 
	"END_POS		= D3DXVECTOR3(8620, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(7120, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(7920, 1440, 0)", 
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
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2820, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(3720, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3720, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(4620, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4620, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(5620, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(9620, 960, 0)", 
	"END_POS		= D3DXVECTOR3(10620, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(10620, 960, 0)", 
	"END_POS		= D3DXVECTOR3(11420, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(11420, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(12420, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(10920, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(11420, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(8620, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(9620, 1200, 0)", 
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
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(998, 960, 574)", 
	"END_POS		= D3DXVECTOR3(1113, 960, 412)", 
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
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1113, 960, 412)", 
	"END_POS		= D3DXVECTOR3(1244, 960, 284)", 
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
	"START_POS		= D3DXVECTOR3(1244, 960, 284)", 
	"END_POS		= D3DXVECTOR3(1386, 960, 185)", 
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
	"START_POS		= D3DXVECTOR3(1386, 960, 185)", 
	"END_POS		= D3DXVECTOR3(1532, 960, 113)", 
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
	"START_POS		= D3DXVECTOR3(1532, 960, 113)", 
	"END_POS		= D3DXVECTOR3(1678, 960, 62)", 
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
	NEXT_LINE		= 17, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1678, 960, 62)", 
	"END_POS		= D3DXVECTOR3(1819, 960, 29)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 17, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 16, 
	NEXT_LINE		= 18, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1819, 960, 29)", 
	"END_POS		= D3DXVECTOR3(1948, 960, 10)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 17, 
	NEXT_LINE		= 19, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1948, 960, 10)", 
	"END_POS		= D3DXVECTOR3(2060, 960, 1)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 18, 
	NEXT_LINE		= 20, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2060, 960, 1)", 
	"END_POS		= D3DXVECTOR3(2151, 960, -1)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 20, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 19, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2151, 960, -1)", 
	"END_POS		= D3DXVECTOR3(2820, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 21, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(10220, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(10920, 1680, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 22, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9620, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(10120, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 23, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(5620, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(7120, 1200, 0)", 
}

