

g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5211.14, 220, 840 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -4996.98, 220, 840 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5235.49, 787.159, 840 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5005.89, 721.916, 840 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -4476.08, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -4244.58, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -4042.02, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -3827.89, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -3642.69, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -3376.47, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -3173.91, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -2965.57, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -2763.01, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -2560.45, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -2340.53, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -2178.48, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -1946.99, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -1813.87, 105, 840 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -3659.99, 340, 840 ), false, 11 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -3486.36, 340, 840 ), false, 11 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -3324.31, 340, 840 ), false, 11 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -3135.39, 404.165, 840 ), false, 12 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -2933.34, 501.93, 840 ), false, 12 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -2772, 580, 840 ), false, 13 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -2641.41, 580, 840 ), false, 13 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -2479.37, 580, 840 ), false, 13 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -2311.54, 580, 840 ), false, 13 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( -1622.9, 340, 840 ), false, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( -1426.15, 600, 840 ), false, 7 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( -1188.9, 840, 840 ), false, 8 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( -916.926, 1080, 840 ), false, 9 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -673.891, 1320, 840 ), false, 10 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( -523, 1320, 840 ), false, 10 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5343, 845, 840)", 
	"END_POS		= D3DXVECTOR3(-5172, 753, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5172, 753, 840)", 
	"END_POS		= D3DXVECTOR3(-5001, 721, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5001, 721, 840)", 
	"END_POS		= D3DXVECTOR3(-4827, 710, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5337, 220, 840)", 
	"END_POS		= D3DXVECTOR3(-4931, 220, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4931, 220, 840)", 
	"END_POS		= D3DXVECTOR3(-4759, 105, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4759, 105, 840)", 
	"END_POS		= D3DXVECTOR3(-1752, 105, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1752, 340, 840)", 
	"END_POS		= D3DXVECTOR3(-1512, 340, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1512, 600, 840)", 
	"END_POS		= D3DXVECTOR3(-1272, 600, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1274, 840, 840)", 
	"END_POS		= D3DXVECTOR3(-1034, 840, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1034, 1080, 840)", 
	"END_POS		= D3DXVECTOR3(-805, 1080, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-807, 1320, 840)", 
	"END_POS		= D3DXVECTOR3(-523, 1320, 840)", 
	CAMERA_INDEX		= 0
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3720, 340, 840)", 
	"END_POS		= D3DXVECTOR3(-3268, 340, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 11, 
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3268, 340, 840)", 
	"END_POS		= D3DXVECTOR3(-2772, 580, 840)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2772, 580, 840)", 
	"END_POS		= D3DXVECTOR3(-2252, 580, 840)", 
}


-- CAMERA DATA 

g_pLineMap:AddCameraData_LUA 
{
 FOCUS_UNIT  = True,
 "EYE_POS = D3DXVECTOR3( -1640, 1740, -555 )", --cam
 "LOOKAT_POS = D3DXVECTOR3( -550, 1200, 1005)", --target
 
}
