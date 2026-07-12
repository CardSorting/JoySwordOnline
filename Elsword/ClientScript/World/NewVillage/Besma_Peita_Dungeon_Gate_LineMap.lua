-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 1000 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 11016.2, 1240, 0 ), false, 0 )




-- NPC (or else) START POS






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(11016, 1240, 0)", 
	"END_POS		= D3DXVECTOR3(12830, 1240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= -1, 
	"START_POS		= D3DXVECTOR3(12830, 1000, 0)", 
	"END_POS		= D3DXVECTOR3(21160, 1000, 0)", 
}


-- CAMERA DATA 

