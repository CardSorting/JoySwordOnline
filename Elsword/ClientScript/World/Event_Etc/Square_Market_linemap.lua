-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pLineMap:SetLandHeight( 0.0 ) 

-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 4374.32, 720, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 4128.83, 720, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 4364.21, 240, 0 ), false, 4 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 4113.66, 240, 0 ), false, 4 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3794.82, 960, 0 ), false, 11 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3779.66, 480, 0 ), false, 10 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3731.61, 0, 0 ), false, 9 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3478.58, 960, 0 ), false, 11 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3445.71, 480, 0 ), false, 10 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3422.97, 0, 0 ), false, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -375.092, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -149.85, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -390.268, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -197.929, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 212.06, 960, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 212.062, 480, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 194.349, 0, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 558.79, 960, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 541.074, 480, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 533.48, 0, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3189.1, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3204.29, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 3191.64, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2865.15, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2847.44, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2827.2, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2538.66, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2523.48, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2513.37, 0, 0 ), false, 9 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2022.4, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 892.798, 960, 0 ), true, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 864.965, 480, 0 ), true, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 857.379, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1236.99, 960, 0 ), true, 6 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1199.03, 480, 0 ), true, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1206.62, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1540.68, 960, 0 ), true, 6 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1510.31, 480, 0 ), true, 3 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1533.09, 0, 0 ), true, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1996.24, 240, 0 ), true, 7 )


g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 0, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(0.0, 960.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1750.0, 960.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(2250.0, 960.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4000.0, 960.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(2250.0, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2752.87, 240.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(1750.0, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(2250.0, 720.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(1245.17, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1750.0, 240.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(0.0, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(1750.0, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 6, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(2250.0, 480.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4000.0, 480.0, 0.0)", 
} 

g_pLineMap:AddLine_LUA 
{ 
	LINE_NUM 		 = 7, 
	LINE_TYPE 		 = LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP 	 = 0, 
	STOP_FACTOR 	 = 1, 
	FOOT_DUST_NAME 	 = "", 
	BEFORE_LINE		 = -1,
	NEXT_LINE		 = -1,
	"START_POS 		 = D3DXVECTOR3(0.0, 0.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4000.0, 0.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(-500.0, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(0.0, 720.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(4000.0, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4500.0, 240.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(4000.0, 720.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(4500.0, 720.0, 0.0)", 
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
	"START_POS 		 = D3DXVECTOR3(-500.0, 240.0, 0.0)", 
	"END_POS 		 = D3DXVECTOR3(0.0, 240.0, 0.0)", 
} 

