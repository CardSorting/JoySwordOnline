-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 251.843, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 338.746, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 148.228, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 418.964, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 64.667, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 388.882, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 101.434, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 181.652, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 640.894, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 841.114, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1169.68, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1436.65, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1713.89, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 651.164, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1015.67, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1402.8, 40.56, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1795.75, 119.15, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1232.68, 6.53598, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2271.34, 214.268, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2519.94, 240, 0 ), false, 3 )






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
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1200, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1200, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 240, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 480, 0)", 
}

