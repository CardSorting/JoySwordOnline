-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 1420 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2701.53, 1420, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4412.73, 1420, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2353.59, 1420, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4760.67, 1420, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4586.7, 1420, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4251.42, 1420, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2540.21, 1420, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2850.19, 1420, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3416.08, 2140, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3745.82, 2140, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 4085.76, 2140, 0 ), true, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 4418.94, 1900, 0 ), true, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3912.37, 1660, 0 ), true, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2923.23, 1660, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3103.54, 1420, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3443.46, 1420, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3830.96, 1420, 0 ), true, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4092.7, 1420, 0 ), true, 0 )






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
	"START_POS		= D3DXVECTOR3(2267, 1420, 0)", 
	"END_POS		= D3DXVECTOR3(4127, 1420, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4127, 1420, 0)", 
	"END_POS		= D3DXVECTOR3(4882, 1420, 0)", 
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
	"START_POS		= D3DXVECTOR3(2702, 1660, 0)", 
	"END_POS		= D3DXVECTOR3(3202, 1660, 0)", 
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
	"START_POS		= D3DXVECTOR3(3702, 1660, 0)", 
	"END_POS		= D3DXVECTOR3(4202, 1660, 0)", 
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
	"START_POS		= D3DXVECTOR3(3202, 2140, 0)", 
	"END_POS		= D3DXVECTOR3(4202, 2140, 0)", 
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
	"START_POS		= D3DXVECTOR3(4202, 1900, 0)", 
	"END_POS		= D3DXVECTOR3(4702, 1900, 0)", 
}

