

g_pLineMap:SetLandHeight( 140 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -459.213, 480, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -116.145, 480, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2529.95, 480, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2853.78, 480, 0 ), false, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 725.035, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 317.919, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 292.26, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 638.466, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1670.77, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2033.05, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1295.66, 480, 0 ), false, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1789.38, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2200.36, 720, 0 ), false, 3 )






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
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(100, 240, 0)", 
	"END_POS		= D3DXVECTOR3(600, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(2300, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2900, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(200, 480, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1700, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2300, 720, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(200, 720, 0)", 
	"END_POS		= D3DXVECTOR3(800, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(600, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1500, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1900, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 240, 0)", 
}

