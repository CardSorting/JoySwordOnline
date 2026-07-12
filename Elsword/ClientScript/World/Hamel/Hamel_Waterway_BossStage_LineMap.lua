

g_pLineMap:SetLandHeight(-100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1459.93, 0, 108.568 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1199, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1427.7, 0, 89.7483 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1682.24, 0, 195.657 ), false, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1966.67, 240, 319.626 ), true, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1789.12, 240, 245.47 ), true, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -1671.11, 0, 196.435 ), true, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -1297.32, 0, 40.9088 ), true, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -900.882, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -637.224, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -328.249, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -76.9498, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 122.793, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 369.976, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 629.518, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 901.419, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1136.24, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1372.59, 0, 66.8183 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1576.24, 0, 151.553 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1836.64, 0, 259.899 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1711.42, 240, 207.588 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1853.25, 240, 266.825 ), false, 5 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
    DUST_TYPE   = LINE_DUST_TYPE["LDT_WATER_SPLASH"],
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1908, 0, 295)", 
	"END_POS		= D3DXVECTOR3(-1199, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
    DUST_TYPE   = LINE_DUST_TYPE["LDT_WATER_SPLASH"],
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1199, 0, 0)", 
	"END_POS		= D3DXVECTOR3(6, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
    DUST_TYPE   = LINE_DUST_TYPE["LDT_WATER_SPLASH"],
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(6, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1212, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
    DUST_TYPE   = LINE_DUST_TYPE["LDT_WATER_SPLASH"],
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1212, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1921, 0, 295)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(-2037, 240, 349)", 
	"END_POS		= D3DXVECTOR3(-1618, 240, 174)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 1, 
	"START_POS		= D3DXVECTOR3(1631, 240, 174)", 
	"END_POS		= D3DXVECTOR3(2050, 240, 349)", 
}


-- CAMERA DATA 

g_pLineMap:AddCameraData_LUA
{
	FOCUS_UNIT	= FALSE,
	"EYE_POS	= D3DXVECTOR3(-2351.7, 500, -1194.77)", 
	"LOOKAT_POS	= D3DXVECTOR3(-1487.82, 200, 142.882)", 
}

g_pLineMap:AddCameraData_LUA
{
	FOCUS_UNIT	= FALSE,
	"EYE_POS	= D3DXVECTOR3(2351.7, 500, -1194.77)", 
	"LOOKAT_POS	= D3DXVECTOR3(1487.82, 200, 142.882)", 
}

