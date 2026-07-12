

g_pLineMap:SetLandHeight( 5670 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1413.12, 5740, -4277 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1307.48, 5740, -4277 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1108.08, 5740, -4277 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1629.01, 5740, -4277 ), false, 5 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 0, 5740, -4277 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 285.198, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 549.014, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 821.075, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1084.89, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1373.44, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1596.03, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1888.7, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 719.594, 5980, -4277 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1210.29, 5740, -4277 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -197.09, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -407.319, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -658.768, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -914.34, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -1231.74, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -1565.64, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -1829.45, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -2000, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -702.066, 5980, -4277 ), true, 2 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -1667.35, 5740, -4277 ), true, 4 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6.80728, 5912, -3263 ), false, 6 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1180, 10064, -4277)", 
	"END_POS		= D3DXVECTOR3(-1000, 10064, -4277)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1000, 10064, -4277)", 
	"END_POS		= D3DXVECTOR3(1180, 10064, -4277)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-900, 5980, -4277)", 
	"END_POS		= D3DXVECTOR3(-500, 5980, -4277)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 5980, -4277)", 
	"END_POS		= D3DXVECTOR3(900, 5980, -4277)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2000, 5740, -4277)", 
	"END_POS		= D3DXVECTOR3(0, 5740, -4277)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 5740, -4277)", 
	"END_POS		= D3DXVECTOR3(2000, 5740, -4277)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-100, 5912, -3263)", 
	"END_POS		= D3DXVECTOR3(100, 5912, -3263)", 
}


-- CAMERA DATA 

