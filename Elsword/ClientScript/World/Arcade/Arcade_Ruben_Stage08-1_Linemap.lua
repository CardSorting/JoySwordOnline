-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pLineMap:SetLandHeight( 0.0 ) 
--g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -300.0, 240.0, 0.0 ), false ) 	 -- default 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 0, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(-300.0, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(376.739, 240.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(-400.0, 1200.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(500.0, 1200.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(1423.26, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2100.0, 240.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 3, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = 4,
	"START_POS 		 = D3DXVECTOR3(-350.0, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(-50.934, 720.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 4, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 3,
	NEXT_LINE		 = 5,
	"START_POS 		 = D3DXVECTOR3(-50.934, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(374.909, 960.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 5, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 4,
	NEXT_LINE		 = 6,
	"START_POS 		 = D3DXVECTOR3(374.909, 960.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1412.0, 960.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 6, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 5,
	NEXT_LINE		 = 7,
	"START_POS 		 = D3DXVECTOR3(1412.0, 960.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1853.44, 720.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 7, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 6,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(1853.44, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2150.0, 720.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 8, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(1300.0, 1200.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2200.0, 1200.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 9, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(376.739, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1423.26, 720.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 10, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(376.739, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1423.26, 480.0, 0.0)", 
} 

