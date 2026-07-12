-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -95.6036, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 39.4452, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -52.2292, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -155.733, 240, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 781.05, 1300, 0 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 902.835, 1300, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1025.12, 1300, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1132.97, 1300, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1251.29, 1300, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1392.32, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1539.27, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1672.94, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1805.18, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1930.17, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2057.84, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2191.88, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2326.2, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2454.41, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2602.17, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2736.35, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2863.47, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1854.78, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1970.22, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 2099.14, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 2214.7, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2315.65, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 2395.71, 240, 0 ), false, 4 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		=  LINE_TYPE["LT_JUMP_UP_REL"],
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(200, 0, 0)", 
	"END_POS		= D3DXVECTOR3(700, 0, 0)",

	JUMP_SPEED_X = 500,  -- 요고
 	JUMP_SPEED_Y = 3800,  -- 요고
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
	"START_POS		= D3DXVECTOR3(-200, 240, 0)", 
	"END_POS		= D3DXVECTOR3(200, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(700, 1300, 0)", 
	"END_POS		= D3DXVECTOR3(1300, 1300, 0)", 
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
	"START_POS		= D3DXVECTOR3(1300, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2950, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1750, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 240, 0)", 
}

