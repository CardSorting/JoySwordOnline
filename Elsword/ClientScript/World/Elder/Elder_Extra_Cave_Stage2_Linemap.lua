-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pLineMap:SetLandHeight( 0.0 ) 
--g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 8117.87, 480.0, 0.0 ), false ) 	 -- default 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 0, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(8117.87, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(9217.87, 480.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(9217.87, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(10617.9, 720.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(3317.87, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4317.87, 720.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(5397.87, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(6897.87, 720.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(2817.87, 960.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(3317.87, 960.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 5, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = 6,
	"START_POS 		 = D3DXVECTOR3(4917.87, 0.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(6597.87, 0.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(6597.87, 0.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(7417.87, 240.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(7417.87, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(8117.87, 240.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(6917.87, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(7417.87, 480.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(1817.87, 1200.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2817.87, 1200.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(4897.87, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(5397.87, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 11, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(817.867, 960.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1817.87, 960.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 12, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = 13,
	"START_POS 		 = D3DXVECTOR3(-582.133, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(817.867, 720.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 13, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 12,
	NEXT_LINE		 = 14,
	"START_POS 		 = D3DXVECTOR3(817.867, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1617.87, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 14, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 13,
	NEXT_LINE		 = 15,
	"START_POS 		 = D3DXVECTOR3(1617.87, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(3317.87, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 15, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 14,
	NEXT_LINE		 = 16,
	"START_POS 		 = D3DXVECTOR3(3317.87, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4117.87, 240.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 16, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = 15,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(4117.87, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4917.87, 240.0, 0.0)", 
} 

