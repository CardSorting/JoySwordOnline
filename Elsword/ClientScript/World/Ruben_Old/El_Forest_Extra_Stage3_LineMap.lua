-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 1420 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2810.07, 1420, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2421.48, 1420, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4760.22, 1420, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4378.83, 1420, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4551.53, 1420, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4954.52, 1420, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2626.57, 1420, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2288.35, 1420, 0 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 5061, 1420, 0 ), false, 2 )
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 5061, 1420, 0 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3184.27, 1420, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 3562.07, 1420, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3544.07, 1900, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3238.23, 1900, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 4342.85, 1660, 0 ), true, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3835.52, 1900, 0 ), true, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 4090.98, 1420, 0 ), true, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3839.12, 1420, 0 ), true, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4108.98, 1900, 0 ), true, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2982.77, 1660, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2734.5, 1660, 0 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4594.72, 1660, 0 ), true, 1 )






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
	"START_POS		= D3DXVECTOR3(3191, 1900, 0)", 
	"END_POS		= D3DXVECTOR3(4191, 1900, 0)", 
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
	"START_POS		= D3DXVECTOR3(4241, 1660, 0)", 
	"END_POS		= D3DXVECTOR3(4741, 1660, 0)", 
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
	"START_POS		= D3DXVECTOR3(2261, 1420, 0)", 
	"END_POS		= D3DXVECTOR3(5061, 1420, 0)", 
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
	"START_POS		= D3DXVECTOR3(2641, 1660, 0)", 
	"END_POS		= D3DXVECTOR3(3141, 1660, 0)", 
}

