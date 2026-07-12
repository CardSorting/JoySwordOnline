-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 801.58, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 529.513, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 162.816, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1061.3, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 897.252, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 637.015, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 387.046, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 256.927, 720, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1724.4, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2144.18, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1893.44, 589.968, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2388.55, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2812.95, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3213.82, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3635.68, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3653.87, 960, 0 ), true, 6 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4240.39, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4529.11, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 4352.33, 362.301, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 4847.35, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 5206.35, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 5808.12, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6371.79, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 6727.49, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 7007.02, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7369.98, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 7798.51, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 5749.73, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6209.58, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6654.35, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7084.65, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7576.76, 98.5638, 0 ), false, 10 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 8221.78, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 8554.16, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 9007.49, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 9342.95, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 9680.87, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 10111.7, 720, 0 ), false, 15 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 10665.3, 720, 0 ), false, 15 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 11260, 720, 0 ), false, 15 )






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
	"START_POS		= D3DXVECTOR3(60, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1460, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1460, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2260, 480, 0)", 
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
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2260, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3960, 480, 0)", 
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
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3960, 480, 0)", 
	"END_POS		= D3DXVECTOR3(4760, 240, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4760, 240, 0)", 
	"END_POS		= D3DXVECTOR3(5560, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1460, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2460, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(3440, 960, 0)", 
	"END_POS		= D3DXVECTOR3(3940, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(3980, 720, 0)", 
	"END_POS		= D3DXVECTOR3(4780, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(5560, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6060, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(5560, 0, 0)", 
	"END_POS		= D3DXVECTOR3(7240, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(7240, 0, 0)", 
	"END_POS		= D3DXVECTOR3(8060, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(8060, 240, 0)", 
	"END_POS		= D3DXVECTOR3(8760, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(7560, 480, 0)", 
	"END_POS		= D3DXVECTOR3(8060, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(6177, 720, 0)", 
	"END_POS		= D3DXVECTOR3(7540, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(8760, 480, 0)", 
	"END_POS		= D3DXVECTOR3(9860, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9860, 720, 0)", 
	"END_POS		= D3DXVECTOR3(11260, 720, 0)", 
}

