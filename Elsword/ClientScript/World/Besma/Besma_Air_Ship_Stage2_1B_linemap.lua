-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -150 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 446.878, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 237.464, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 36.0874, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 688.549, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 567.722, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 358.291, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 164.969, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 809.372, 720, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1606.87, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2364.19, 960, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2952.35, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3266.55, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2146.65, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2646.2, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3113.49, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3562.1, 201.097, 0 ), false, 14 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4051.12, 83.7313, 0 ), false, 14 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4588.08, 0, 0 ), false, 15 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 5071.58, 0, 0 ), false, 15 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 5643.7, 240, 0 ), false, 8 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 6054.79, 240, 0 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 6441.64, 240, 0 ), false, 8 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6981.66, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 7497.54, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 7844.17, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 8416.51, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6965.57, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 7433.1, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 7924.82, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 8384.29, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 8820.03, 28.808, 0 ), false, 10 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 9225.74, 126.178, 0 ), false, 10 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 9610.19, 218.446, 0 ), false, 10 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 10069.3, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 10464.3, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 10924, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 11319.1, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 11700, 480, 0 ), false, 6 )






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
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1100, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1100, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 960, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2100, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2700, 960, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8200, 480, 0)", 
	"END_POS		= D3DXVECTOR3(8700, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(2700, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3500, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(6700, 480, 0)", 
	"END_POS		= D3DXVECTOR3(7200, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(10700, 480, 0)", 
	"END_POS		= D3DXVECTOR3(11700, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7200, 720, 0)", 
	"END_POS		= D3DXVECTOR3(8200, 720, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(5400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(6700, 240, 0)", 
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
	NEXT_LINE		= 10, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6700, 0, 0)", 
	"END_POS		= D3DXVECTOR3(8700, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= 11, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8700, 0, 0)", 
	"END_POS		= D3DXVECTOR3(9700, 240, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9700, 240, 0)", 
	"END_POS		= D3DXVECTOR3(10700, 240, 0)", 
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
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 14, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1900, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3400, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(3400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4400, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4400, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5400, 0, 0)", 
}

