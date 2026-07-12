-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 266.545, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 771.818, 480, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 798.893, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1159.8, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1038, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 681.597, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 406.399, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 713.17, 480, 0 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1656.06, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2044.03, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2391.41, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2797.43, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2756.84, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1628.98, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1991.03, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2285.08, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3292.68, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3618.09, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3923.9, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 908.934, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 230.656, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 759.936, 480, 0 ), true, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1152.01, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1367.65, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 567.84, 0, 0 ), true, 0 )






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
	"START_POS		= D3DXVECTOR3(500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(2500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(3000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 240, 0)", 
}

