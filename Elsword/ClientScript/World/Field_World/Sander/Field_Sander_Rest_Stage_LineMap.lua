

g_pLineMap:SetLandHeight( 22550 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5035, 22594, -59506 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -4688.37, 22594, -59506 ), true, 8 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3650.16, 22624, -59506 ), false, 6 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -3929.56, 22471.9, -59506 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -3733.75, 22431.1, -59506 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -3384, 22400, -59506 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -3184, 22400, -59506 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -2984, 22400, -59506 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -2784, 22400, -59506 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -2584, 22400, -59506 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -2384, 22400, -59506 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -1995, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -1795, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -1595, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -1395, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -1195, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -995, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -795, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -595, 22400, -59506 ), false, 3 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -337, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -137, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 63, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 263, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 463, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 663, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 863, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 1063, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1263, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1463, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1663, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 1863, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 2063, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 2263, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 2463, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 2663, 22400, -59506 ), false, 4 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 2966.59, 22469.3, -59506 ), false, 5 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 3154.19, 22538.7, -59506 ), false, 5 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 3341.78, 22608, -59506 ), false, 5 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 2824.8, 22416.9, -59506 ), false, 5 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( -4149.89, 22517.7, -59506 ), false, 1 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( -3575.9, 22400, -59506 ), false, 2 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_POTAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 8, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 2, 
	"START_POS		= D3DXVECTOR3(-5035, 22594, -59506)", 
	"END_POS		= D3DXVECTOR3(-4841.17, 22594, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 2, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 2, 
	"START_POS		= D3DXVECTOR3(-4517, 22594, -59506)", 
	"END_POS		= D3DXVECTOR3(-3584, 22400, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(-3584, 22400, -59506)", 
	"END_POS		= D3DXVECTOR3(-2195, 22400, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(-2195, 22400, -59506)", 
	"END_POS		= D3DXVECTOR3(-537, 22400, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(-537, 22400, -59506)", 
	"END_POS		= D3DXVECTOR3(2779, 22400, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(2779, 22400, -59506)", 
	"END_POS		= D3DXVECTOR3(3385, 22624, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 3, 
	"START_POS		= D3DXVECTOR3(3385, 22624, -59506)", 
	"END_POS		= D3DXVECTOR3(3858.79, 22624, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= -1, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 3, 
	"START_POS		= D3DXVECTOR3(3858.79, 22624, -59506)", 
	"END_POS		= D3DXVECTOR3(4044, 22624, -59506)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 1, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 2, 
	"START_POS		= D3DXVECTOR3(-4841.17, 22594, -59506)", 
	"END_POS		= D3DXVECTOR3(-4517, 22594, -59506)", 
}


-- CAMERA DATA 

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(-5692.67, 23186.6, -62102.5)", 
	"LOOKAT_POS	= D3DXVECTOR3(10989.1, 22284.9, -18864.6)", 
}

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(4247.07, 23009.2, -61817.9)", 
	"LOOKAT_POS	= D3DXVECTOR3(-11626.4, 23278.8, -18267.3)", 
}

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(-5305.45, 23113.8, -61058.7)", 
	"LOOKAT_POS	= D3DXVECTOR3(15105.1, 11232.5, -20074.2)", 
}

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(4531.55, 22930.4, -60791.7)", 
	"LOOKAT_POS	= D3DXVECTOR3(-11427.2, 15572.6, -16909.3)", 
}
