-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1394.69, 640, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1572.19, 640, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1707.37, 640, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1840, 640, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3181.41, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1043.89, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -800.963, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -539.1, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -266.455, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 23.1438, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 324.034, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 632.904, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 966.177, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1303.91, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1651.47, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1975.75, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2288.36, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2597.1, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2878.86, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5186.81, 640, 0 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 3472.8, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 3749.42, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4016.37, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 4309.47, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 4580.31, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 4858.56, 240, 0 ), false, 1 )






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
	"START_POS		= D3DXVECTOR3(-1840, 640, 0)", 
	"END_POS		= D3DXVECTOR3(5300, 640, 0)",

	CAN_DOWN        = FALSE,
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
	"START_POS		= D3DXVECTOR3(-1500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4950, 240, 0)", 
}

