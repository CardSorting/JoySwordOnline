-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 315.132, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 175.912, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 455.406, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 588.987, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1720.81, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1909.87, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2074.26, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1696.16, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1881.12, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2064.01, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2251.02, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2419.53, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2579.82, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2724.79, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2914.44, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3109.52, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3312.73, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3518.64, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3729.97, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3968.4, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4147.68, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 4333.23, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4543.2, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 4751.8, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 4984.78, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 3237.35, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 3402.63, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 3559.78, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 3725.06, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 3898.46, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 4052.9, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 5215.56, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 5383.53, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 5586.72, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 5806.17, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 6022.9, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 6223.45, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 6429.36, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 6613.6, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 6816.81, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 7011.89, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 7194.66, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 7354.09, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 7533.86, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( 7737.74, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 42, D3DXVECTOR3( 7920.92, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 43, D3DXVECTOR3( 8134.63, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 44, D3DXVECTOR3( 8324.58, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 45, D3DXVECTOR3( 8524.71, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 46, D3DXVECTOR3( 8712.06, 480, 0 ), false, 11 )
g_pLineMap:AddStartPos( 47, D3DXVECTOR3( 8888.49, 480, 0 ), false, 11 )
g_pLineMap:AddStartPos( 48, D3DXVECTOR3( 9041.16, 480, 0 ), false, 11 )
g_pLineMap:AddStartPos( 49, D3DXVECTOR3( 9221.12, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 50, D3DXVECTOR3( 9389.34, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 51, D3DXVECTOR3( 9567.18, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 52, D3DXVECTOR3( 9713.43, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 53, D3DXVECTOR3( 9880.63, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 54, D3DXVECTOR3( 10049.1, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 55, D3DXVECTOR3( 7205.28, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 56, D3DXVECTOR3( 7400.49, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 57, D3DXVECTOR3( 7604.71, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 58, D3DXVECTOR3( 7811.31, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 59, D3DXVECTOR3( 8021.57, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 60, D3DXVECTOR3( 8234.84, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 61, D3DXVECTOR3( 8442.11, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 62, D3DXVECTOR3( 8643.36, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 63, D3DXVECTOR3( 8852.29, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 64, D3DXVECTOR3( 9069.31, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 65, D3DXVECTOR3( 9288.51, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 66, D3DXVECTOR3( 9489.17, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 67, D3DXVECTOR3( 9720.3, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 68, D3DXVECTOR3( 9924.43, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 69, D3DXVECTOR3( 10140.6, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 70, D3DXVECTOR3( 10353.7, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 71, D3DXVECTOR3( 10605.8, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 72, D3DXVECTOR3( 10879.1, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 73, D3DXVECTOR3( 11137.2, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 74, D3DXVECTOR3( 11423, 0, 0 ), false, 9 )






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
	"START_POS		= D3DXVECTOR3(123, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1623, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1623, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2123, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1623, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2623, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(3623, 480, 0)", 
	"END_POS		= D3DXVECTOR3(4123, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(3123, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3623, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(2623, 240, 0)", 
	"END_POS		= D3DXVECTOR3(5123, 240, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(5123, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6123, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(6123, 240, 0)", 
	"END_POS		= D3DXVECTOR3(7123, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7623, 720, 0)", 
	"END_POS		= D3DXVECTOR3(8623, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(7123, 0, 0)", 
	"END_POS		= D3DXVECTOR3(11423, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(7123, 480, 0)", 
	"END_POS		= D3DXVECTOR3(7623, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8623, 480, 0)", 
	"END_POS		= D3DXVECTOR3(9123, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(9623, 480, 0)", 
	"END_POS		= D3DXVECTOR3(10123, 480, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9123, 240, 0)", 
	"END_POS		= D3DXVECTOR3(9623, 240, 0)", 
}

