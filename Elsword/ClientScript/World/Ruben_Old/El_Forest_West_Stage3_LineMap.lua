-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 960 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3748.83, 960, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4024.5, 960, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3615.92, 960, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3886.67, 960, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 4433.09, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 4620.14, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 4802.28, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 4994.27, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 5181.33, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 5388.09, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 5554.14, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 5746.1, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 5918.37, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 6090.64, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 6297.37, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 6505, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 6672.34, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 6827.94, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4460.28, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 4607.93, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4770.35, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5478.63, 1200, 0 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 5636.14, 1200, 0 ), false, 2 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 5788.73, 1200, 0 ), false, 2 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 5961.01, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6138.22, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 6295.74, 1440, 0 ), false, 3 )






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
	"START_POS		= D3DXVECTOR3(3550, 960, 0)", 
	"END_POS		= D3DXVECTOR3(6863, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(4375, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(4875, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(5375, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(5875, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(5875, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(6375, 1440, 0)", 
}

