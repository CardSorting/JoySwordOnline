-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 944.853, 480, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 813.259, 480, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1051.14, 480, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 691.79, 480, 0 ), false, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 393.149, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 534.869, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 661.405, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 795.532, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 939.783, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1086.56, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1240.94, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1402.9, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 838.547, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 975.204, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 377.988, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 534.89, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 674.075, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 825.914, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 952.447, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1099.23, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1256.13, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1438.34, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -259.163, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -108.815, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1930.64, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2074.97, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 415.68, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 572.056, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 734.446, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 899.844, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1065.24, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1239.66, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1402.05, 240, 0 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(304, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1495, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(304, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1495, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(699, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1099, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(306, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1496, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= FALSE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"], 
	POTAL_GROUP		= -1, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1495, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 240, 0)", 
	
  	JUMP_SPEED_X = 500,  -- 요고
   	JUMP_SPEED_Y = 3000,  -- 요고
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= FALSE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"],
	POTAL_GROUP		= -1, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 0, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(304, 240, 0)", 
			
  	JUMP_SPEED_X = 500,  -- 요고
   	JUMP_SPEED_Y = 3000,  -- 요고
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
	"START_POS		= D3DXVECTOR3(-400, 960, 0)", 
	"END_POS		= D3DXVECTOR3(0, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(1800, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 960, 0)", 
}

