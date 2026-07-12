-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 960 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3966.97, 960, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3715.54, 960, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 6486.58, 960, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 6716.04, 960, 0 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 4548.02, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 4292.74, 1920, 0 ), false, 8 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 5074.15, 1680, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 5433.99, 1680, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 5272.24, 2160, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 5155.22, 2160, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 5371.36, 2160, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 6207.96, 1920, 0 ), false, 9 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 5954.72, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 5125.67, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 5362.92, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 4566.72, 1920, 0 ), false, 8 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 5940.64, 1920, 0 ), false, 9 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 5232.71, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4271.75, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 6203.28, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4344.04, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 4592.68, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4835.58, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 5078.76, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 5298.23, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 5512.4, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 5740.8, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 5940.42, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 6154.32, 960, 0 ), false, 0 )






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
	SPEED			= 0, 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4745, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(5745, 1200, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4994, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(5493, 1680, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5745, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(6375, 1440, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4745, 2160, 0)", 
	"END_POS		= D3DXVECTOR3(5745, 2160, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4115, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(4745, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3615, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(4115, 1680, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(6375, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(6875, 1680, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4115, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(4745, 1920, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5745, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(6375, 1920, 0)", 
}

