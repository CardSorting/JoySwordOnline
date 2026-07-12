

g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1520.36, 240, -1095 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1729.03, 240, -1095 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1900, 240, -1095 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1219.78, 0, -1095 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -658.742, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -389.929, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -230.632, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -51.4227, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 117.83, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 297.039, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 516.073, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 675.369, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 865.825, 0, -1095 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1229.1, 240, -1095 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1410.59, 240, -1095 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1602.33, 480, -1095 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1762.82, 480, -1095 ), false, 1 )






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
	"START_POS		= D3DXVECTOR3(1166, 240, -1095)", 
	"END_POS		= D3DXVECTOR3(1533, 240, -1095)", 
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
	"START_POS		= D3DXVECTOR3(1533, 480, -1095)", 
	"END_POS		= D3DXVECTOR3(1900, 480, -1095)", 
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
	"START_POS		= D3DXVECTOR3(-1400, 0, -1095)", 
	"END_POS		= D3DXVECTOR3(1166, 0, -1095)", 
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
	"START_POS		= D3DXVECTOR3(-1900, 240, -1095)", 
	"END_POS		= D3DXVECTOR3(-1400, 240, -1095)", 
}

