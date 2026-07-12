-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -91.7294, 240, 0 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2505.2, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4.15268, 240, 0 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2405.16, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 95.8578, 240, 0 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2275.94, 240, 0 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 266.763, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 379.31, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 496.026, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 625.247, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 762.804, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 896.194, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1021.25, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1383, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1383, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1433.22, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1567.63, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1700.7, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1829.92, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1959.14, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2100.87, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -108.403, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -0.0238953, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 87.5133, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 200.061, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 304.272, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 408.483, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 500.188, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 608.568, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 716.947, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 821.158, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 924, 1040, 0 ), false, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1513.12, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1604.82, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1692.36, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 1788.23, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 1900.78, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 2013.33, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 2134.21, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 2250.93, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 2380.15, 1040, 0 ), false, 1 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 2509.37, 1040, 0 ), false, 1 )






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
	"START_POS		= D3DXVECTOR3(-114, 1040, 0)", 
	"END_POS		= D3DXVECTOR3(924, 1040, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1499, 1040, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 1040, 0)", 
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
	"START_POS		= D3DXVECTOR3(1383, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= FALSE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"],
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1055, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1383, 240, 0)", 
	
	JUMP_SPEED_X = 300,  -- 요고
   	JUMP_SPEED_Y = 3000,  -- 요고
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
	"START_POS		= D3DXVECTOR3(-114, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1055, 240, 0)", 
}

