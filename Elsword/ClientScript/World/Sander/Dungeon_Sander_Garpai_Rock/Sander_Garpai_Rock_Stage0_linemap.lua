

g_pLineMap:SetLandHeight( 250 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -6081.71, 350, -15221.5 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5993.79, 350, -15328.7 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5902.27, 350, -15440.3 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5805.33, 350, -15558.5 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -4814.99, 350, -16543.9 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -4627.76, 350, -16674.6 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -4388.18, 350, -16830.6 ), false, 3 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -4165.28, 350, -16943.9 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -3986.39, 350, -17023.6 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -3772.47, 350, -17111.5 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -3536.71, 350, -17177.8 ), false, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -3300.76, 350, -17244.1 ), false, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -2996.65, 350, -17255 ), false, 7 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -4188.93, 590, -16933.4 ), false, 12 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -4011.68, 590, -17012.3 ), false, 12 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -3817, 590, -17099 ), false, 12 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -3577.17, 590, -17166.4 ), false, 13 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -3359.16, 590, -17227.7 ), false, 13 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -3138.8, 590, -17255 ), false, 14 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -3080.64, 830, -17255 ), false, 15 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -2871.99, 830, -17255 ), false, 16 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -2787.68, 350, -17255 ), false, 7 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -2537.24, 350, -17255 ), false, 8 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -2213.14, 350, -17255 ), false, 8 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -1914.3, 350, -17255 ), false, 8 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -1689.66, 350, -17255 ), false, 8 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -1196.77, 469.74, -17255 ), false, 9 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( -986.367, 500, -17255 ), false, 10 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( -748.324, 500, -17255 ), false, 10 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( -504.029, 500, -17255 ), false, 10 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( -281.709, 500, -17255 ), false, 10 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -54.2105, 500, -17255 ), false, 11 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( -546.478, 740, -17255 ), false, 17 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( -303.752, 740, -17255 ), false, 17 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( -88.9416, 740, -17255 ), false, 17 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( -162.921, 980, -17255 ), false, 18 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( -1120.62, 1220, -17255 ), false, 19 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( -878.652, 1220, -17255 ), false, 19 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( -639.393, 1220, -17255 ), false, 19 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( -361.067, 1220, -17255 ), false, 19 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( -609.427, 1460, -17255 ), false, 20 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( -419.643, 1460, -17255 ), false, 20 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( -233.77, 1700, -17255 ), false, 21 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 89.2287, 1700, -17255 ), false, 21 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(-6110, 350, -15187)", 
	"END_POS		= D3DXVECTOR3(-5759, 350, -15615)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(-5759, 350, -15615)", 
	"END_POS		= D3DXVECTOR3(-5408, 350, -16042)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5408, 350, -16042)", 
	"END_POS		= D3DXVECTOR3(-4770, 350, -16582)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4770, 350, -16582)", 
	"END_POS		= D3DXVECTOR3(-4320, 350, -16875)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4320, 350, -16875)", 
	"END_POS		= D3DXVECTOR3(-3817, 350, -17099)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3817, 350, -17099)", 
	"END_POS		= D3DXVECTOR3(-3262, 350, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3262, 350, -17255)", 
	"END_POS		= D3DXVECTOR3(-3030, 350, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3030, 350, -17255)", 
	"END_POS		= D3DXVECTOR3(-2647, 350, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2647, 350, -17255)", 
	"END_POS		= D3DXVECTOR3(-1552, 350, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1552, 350, -17255)", 
	"END_POS		= D3DXVECTOR3(-1107, 500, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= 11, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1107, 500, -17255)", 
	"END_POS		= D3DXVECTOR3(-275, 500, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-275, 500, -17255)", 
	"END_POS		= D3DXVECTOR3(8, 500, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4320, 590, -16875)", 
	"END_POS		= D3DXVECTOR3(-3817, 590, -17099)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= 14, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3817, 590, -17099)", 
	"END_POS		= D3DXVECTOR3(-3262, 590, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 13, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3262, 590, -17255)", 
	"END_POS		= D3DXVECTOR3(-3030, 590, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 16, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3262, 830, -17255)", 
	"END_POS		= D3DXVECTOR3(-3030, 830, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 15, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3030, 830, -17255)", 
	"END_POS		= D3DXVECTOR3(-2647, 830, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 17, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-690, 740, -17255)", 
	"END_POS		= D3DXVECTOR3(8, 740, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-416, 980, -17255)", 
	"END_POS		= D3DXVECTOR3(8, 980, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1304, 1220, -17255)", 
	"END_POS		= D3DXVECTOR3(-261, 1220, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 20, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-771, 1460, -17255)", 
	"END_POS		= D3DXVECTOR3(-261, 1460, -17255)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 21, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 1, 
	"START_POS		= D3DXVECTOR3(-323, 1700, -17255)", 
	"END_POS		= D3DXVECTOR3(90, 1700, -17255)", 
}


-- CAMERA DATA 

g_pLineMap:AddCameraData_LUA
{
	RELATIVE_EYE_POS_X	= 4400, 
	RELATIVE_EYE_POS_Y	= 700, 
	RELATIVE_EYE_POS_Z	= -1400, 
	CAMERA_REPOSITION_SPEED = 6000, 
}

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(-2466.73, 1985.83, -19718.3)", 
	"LOOKAT_POS	= D3DXVECTOR3(28222.5, 6288.32, 14694.7)", 
}

