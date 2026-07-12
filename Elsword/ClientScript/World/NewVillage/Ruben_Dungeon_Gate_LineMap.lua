-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
g_pLineMap:SetLandHeight( 0.0 ) 
--g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3798.92, 0.0, -481.299 ), false ) 	 -- default 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 0, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = 1,
	"START_POS 		 = D3DXVECTOR3(-3798.92, 0.0, -481.299)", 
	"END_POS 		 = D3DXVECTOR3(-1419.32, 0.0, -73.252)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 1, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 0,
	NEXT_LINE		 = 2,
	"START_POS 		 = D3DXVECTOR3(-1419.32, 0.0, -73.252)", 
	"END_POS 		 = D3DXVECTOR3(0.0, 0.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 2, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 1,
	NEXT_LINE		 = 3,
	"START_POS 		 = D3DXVECTOR3(0.0, 0.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1419.32, 0.0, -73.252)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 3, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 2,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(1419.32, 0.0, -73.252)", 
	"END_POS 		 = D3DXVECTOR3(3798.92, 0.0, -481.299)", 
} 

