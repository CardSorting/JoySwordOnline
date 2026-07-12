

g_pLineMap:SetLandHeight( 2480 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 14417.3, 2420, -4752 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 13590, 2420, -4752 ), true, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 22066.8, 2420, -4752 ), false, 7 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 13896.2, 2420, -4752 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 14095.8, 2420, -4752 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 14285.7, 2420, -4752 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 14534, 2420, -4752 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 14759.6, 2420, -4752 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 15030.3, 2420, -4752 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 15298.4, 2420, -4752 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 15571.9, 2420, -4752 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 15897.9, 2420, -4752 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 16171.5, 2420, -4752 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 16456.1, 2420, -4752 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 16782.1, 2420, -4752 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 17114.4, 2420, -4752 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 17470.8, 2420, -4752 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 17813.5, 2420, -4752 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 18128.4, 2420, -4752 ), false, 5 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 18525.6, 2420, -4752 ), false, 5 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 18805.8, 2420, -4752 ), false, 5 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 19098.4, 2420, -4752 ), false, 5 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 19368.3, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 19621.4, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 19930.4, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 20173.2, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 20484.5, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 20719.3, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 20954.5, 2420, -4752 ), false, 6 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 21336.7, 2420, -4752 ), false, 7 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 21586.6, 2420, -4752 ), false, 7 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 21843.8, 2420, -4752 ), false, 7 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 21149.2, 2420, -4752 ), false, 7 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 18312.1, 2420, -4752 ), false, 5 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_POTAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(13230.7, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(13377, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(13377, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(13590, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(13590, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(14775, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(14775, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(16199, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(16199, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(17588, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(17588, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(19310, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(19310, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(21004, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(21004, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(22382, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= 9, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 1, 
	"START_POS		= D3DXVECTOR3(22382, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(22632, 2420, -4752)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_POTAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= -1, 
	LINE_SET		= -1, 
	CAMERA_INDEX	= 1, 
	"START_POS		= D3DXVECTOR3(22632, 2420, -4752)", 
	"END_POS		= D3DXVECTOR3(22885, 2420, -4752)", 
}


-- CAMERA DATA 

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(14075.2, 2820, -6551.99)", 
	"LOOKAT_POS	= D3DXVECTOR3(10767.7, 2320.21, 1202.6)", 
}

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(21831.8, 2807, -6392.43)", 
	"LOOKAT_POS	= D3DXVECTOR3(25668.7, 2628.16, 1124.56)", 
}

