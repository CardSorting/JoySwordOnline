-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pLineMap:SetLandHeight( -100.0 ) 
--g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 500.0, 480.0, 0.0 ), false ) 	 -- default 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 0, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(500.0, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1000.0, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 1, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(1500.0, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2500.0, 720.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 2, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(2500.0, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(3000.0, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 3, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(3000.0, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4000.0, 240.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 4, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(500.0, 0.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(3000.0, 0.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 5, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(0.0, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(500.0, 240.0, 0.0)", 
} 

