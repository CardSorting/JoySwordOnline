

g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 879.471, 480, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1351.22, 240, 0 ), false, 6 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1152.35, 480, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1551.1, 240, 0 ), false, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -861.259, 480, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1352.7, 240, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1132.3, 480, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1572.52, 240, 0 ), true, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 0, D3DXVECTOR3( 168.566, 160, 0 ), false, 3 )
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -900.874, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1104.67, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -620.879, 41.3187, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -338.235, 131.765, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -35.786, 160, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 362.515, 123.995, 0 ), true, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 633.963, 37.1318, 0 ), true, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 866.763, 0, 0 ), true, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1033.13, 0, 0 ), true, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -996.051, 480, 0 ), true, 8 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1032.57, 480, 0 ), true, 0 )






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
	"START_POS		= D3DXVECTOR3(750, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1250, 480, 0)", 
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
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1250, 0, 0)", 
	"END_POS		= D3DXVECTOR3(-750, 0, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-750, 0, 0)", 
	"END_POS		= D3DXVECTOR3(-250, 160, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-250, 160, 0)", 
	"END_POS		= D3DXVECTOR3(250, 160, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(250, 160, 0)", 
	"END_POS		= D3DXVECTOR3(750, 0, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(750, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1250, 0, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1200, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1650, 240, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1650, 240, 0)", 
	"END_POS		= D3DXVECTOR3(-1200, 240, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1250, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-750, 480, 0)", 
}

