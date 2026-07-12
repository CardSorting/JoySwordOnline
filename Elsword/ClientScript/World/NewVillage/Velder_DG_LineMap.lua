

g_pLineMap:SetLandHeight( 10 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -4000, 10, -601 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3461.98, 10, -601 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3500, 10, -601 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3160.63, 10, -601 ), false, 0 )




-- NPC (or else) START POS






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(-4000, 10, -601)", 
	"END_POS		= D3DXVECTOR3(3500, 10, -601)", 
}

