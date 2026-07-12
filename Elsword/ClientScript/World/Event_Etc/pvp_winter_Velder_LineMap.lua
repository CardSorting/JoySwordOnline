

g_pLineMap:SetLandHeight( 179 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1612.14, 1187, -138 ), false, 10 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1815.81, 1187, -138 ), false, 10 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1633.25, 712, -138 ), false, 12 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1839.05, 712, -138 ), false, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1634.92, 1187, -138 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1879.32, 1187, -138 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1623.77, 712, -138 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1836.21, 712, -138 ), true, 9 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 0, D3DXVECTOR3( 975.521, 225.873, -138 ), false, 7 )
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -13.9653, 1185, -138 ), true, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1281.49, 946, -138 ), true, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -1742.47, 1187, -138 ), true, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -724.621, 946, -138 ), true, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -1746.98, 712, -138 ), true, 9 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -167.299, 946, -138 ), true, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 299.607, 179, -138 ), false, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 175.788, 946, -138 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1726.32, 712, -138 ), false, 12 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 799.086, 946, -138 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1730.11, 1187, -138 ), false, 10 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1295.83, 946, -138 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1314.17, 472, -138 ), false, 11 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -1322.72, 472, -138 ), true, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -932.966, 222.078, -138 ), true, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -296.667, 179, -138 ), true, 6 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1958, 1187, -138)", 
	"END_POS		= D3DXVECTOR3(-1513, 1187, -138)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-302, 1185, -138)", 
	"END_POS		= D3DXVECTOR3(302, 1185, -138)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1513, 946, -138)", 
	"END_POS		= D3DXVECTOR3(1513, 946, -138)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1491, 472, -138)", 
	"END_POS		= D3DXVECTOR3(-1100, 472, -138)", 
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
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1491, 231, -138)", 
	"END_POS		= D3DXVECTOR3(-1033, 231, -138)", 
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
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1033, 231, -138)", 
	"END_POS		= D3DXVECTOR3(-450, 179, -138)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-450, 179, -138)", 
	"END_POS		= D3DXVECTOR3(450, 179, -138)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(450, 179, -138)", 
	"END_POS		= D3DXVECTOR3(1033, 231, -138)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1033, 231, -138)", 
	"END_POS		= D3DXVECTOR3(1491, 231, -138)", 
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
	"START_POS		= D3DXVECTOR3(-1958, 712, -138)", 
	"END_POS		= D3DXVECTOR3(-1491, 712, -138)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1513, 1187, -138)", 
	"END_POS		= D3DXVECTOR3(1958, 1187, -138)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1100, 472, -138)", 
	"END_POS		= D3DXVECTOR3(1491, 472, -138)", 
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
	"START_POS		= D3DXVECTOR3(1491, 712, -138)", 
	"END_POS		= D3DXVECTOR3(1958, 712, -138)", 
}

