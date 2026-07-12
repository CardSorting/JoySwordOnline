-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 231.927, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 110.048, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2.97324, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -136.68, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 465.848, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 596.953, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 718.514, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 873.637, 256.671, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1007.84, 305.695, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1148.72, 357.158, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1283.28, 406.313, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1439.03, 463.206, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1572.63, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1731, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1895.72, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2012.87, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1444.48, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1563.87, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1653.77, 720, 0 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 488.884, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 608.276, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 716.02, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 838.324, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 922.761, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1013.03, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1097.48, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1671.39, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1806.63, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 1921.9, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 2042.99, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 2146.81, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -329.788, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( -201.355, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( -78.8712, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 16.7467, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 118.42, 1200, 0 ), false, 3 )






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
	"START_POS		= D3DXVECTOR3(-300, 240, 0)", 
	"END_POS		= D3DXVECTOR3(828, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(828, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1485, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1485, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-400, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(200, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1600, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1332, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1732, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(400, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1160, 960, 0)", 
}

