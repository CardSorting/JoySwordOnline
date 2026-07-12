

g_pLineMap:SetLandHeight( 2571 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -808.017, 2671, -2 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -599.233, 2671, -2 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -341.383, 2671, -2 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -106.548, 2671, -2 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 232.832, 2904, -1.09495 ), false, 10 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 703.967, 3144, 0 ), false, 15 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 982.446, 3144, 0 ), false, 15 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1298.06, 3144, 0 ), false, 15 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1647.09, 2904, 0 ), false, 13 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1832.74, 2904, 0 ), false, 13 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2159.52, 3144, 0 ), false, 12 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2478.86, 3144, 0 ), false, 12 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2757.37, 3144, 0 ), false, 12 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3150.97, 2904, 0 ), false, 11 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3388.63, 2904, 0 ), false, 11 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3683.49, 3114, 0 ), false, 9 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4006.1, 3114, 0 ), false, 9 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 4350.21, 3114, 0 ), false, 9 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4749.18, 3384, 0 ), false, 6 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5024.34, 3384, 0 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5310.12, 3385.87, 0 ), false, 7 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5589.54, 3437.45, 0 ), false, 7 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 5893.16, 3493.51, 0 ), false, 7 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6315.31, 3571.44, 0 ), false, 7 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6855.88, 3624, 0 ), false, 8 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 7467.35, 3384, 0 ), false, 4 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7319.58, 3384, 0 ), false, 4 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7131.04, 3384, 0 ), false, 4 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 8119.6, 3384, 0 ), false, 4 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 8400, 3384, 0 ), false, 2 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8629.17, 3384, 0 ), false, 2 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 7243.16, 3864, 0 ), false, 5 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 7497.95, 3864, 0 ), false, 5 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 7793.51, 3864, 0 ), false, 5 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 8155.33, 4104, 0 ), false, 3 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 8659.84, 4344, 0 ), false, 14 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 9067.54, 4553, 0 ), false, 1 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 9358, 4553, 0 ), false, 1 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 9700, 4553, 0 ), false, 1 )






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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-887, 2671, -2)", 
	"END_POS		= D3DXVECTOR3(12, 2671, -2)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8900, 4553, 0)", 
	"END_POS		= D3DXVECTOR3(9700, 4553, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8400, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(8699, 3384, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7900, 4104, 0)", 
	"END_POS		= D3DXVECTOR3(8400, 4104, 0)", 
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
	NEXT_LINE		= 2, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7100, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(8400, 3384, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7100, 3864, 0)", 
	"END_POS		= D3DXVECTOR3(7900, 3864, 0)", 
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
	LINE_SET		= 1, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4630, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(5300, 3384, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5300, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(6600, 3624, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(6600, 3624, 0)", 
	"END_POS		= D3DXVECTOR3(7100, 3624, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3500, 3114, 0)", 
	"END_POS		= D3DXVECTOR3(4630, 3114, 0)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(12, 2904, -2)", 
	"END_POS		= D3DXVECTOR3(500, 2904, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3000, 2904, 0)", 
	"END_POS		= D3DXVECTOR3(3500, 2904, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2000, 3144, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 3144, 0)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1500, 2904, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 2904, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8400, 4344, 0)", 
	"END_POS		= D3DXVECTOR3(8900, 4344, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(500, 3144, 0)", 
	"END_POS		= D3DXVECTOR3(1500, 3144, 0)", 
}

