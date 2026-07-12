-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





-------------------(폰트)--------------------- 

g_pStaticRoundNumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoundNumber )
g_pStaticRoundNumber:SetName( "StaticRoomNumber" )

g_pStaticRoundNumber:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(-99999,-999999)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticRoundNumber:AddString
{
	-- MSG 			= "PVPLobby에서 룸 Uid값 얻어내기 위한 한 페이지(6개의 룸들을 인덱싱하기 위한 임시 스트링 값) 0~5값",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(-10000,-10000)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStaticRoom_Mode_Team = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_Mode_Team )
g_pStaticRoom_Mode_Team:SetName( "TeamMatch_Room" )

g_pStaticRoom_Mode_Team:AddString
	{
		MSG 			= STR_ID_1141,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(429 -12,229)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	}


g_pStaticRoom_Mode_Survival = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_Mode_Survival )
g_pStaticRoom_Mode_Survival:SetName( "IntrudeDeathMatch_Room" )

g_pStaticRoom_Mode_Survival:AddString
	{
		MSG 			= STR_ID_1142,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(438-12,229)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}


g_pStaticRoom_Mode_Death = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_Mode_Death )
g_pStaticRoom_Mode_Death:SetName( "DeathMatch_Room" )

g_pStaticRoom_Mode_Death:AddString
	{
		MSG 			= STR_ID_1143,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(445-12,229)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}



g_pStaticRoom_Mode_Player = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_Mode_Player )
g_pStaticRoom_Mode_Player:SetName( "StaticRoomJoinUserNum" )

g_pStaticRoom_Mode_Player:AddString
	{
		-- MSG 			= "8/8",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(508-5,229)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}



g_pStaticRoom_Mode_Kill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_Mode_Kill )
g_pStaticRoom_Mode_Kill:SetName( "StaticKillNum" )

g_pStaticRoom_Mode_Kill:AddString
	{
		MSG 			= STR_ID_1144,
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(591-20,229)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}





g_pStaticRoom_Mode_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRoom_Mode_Title )
g_pStaticRoom_Mode_Title:SetName( "StaticRoomName" )

	g_pStaticRoom_Mode_Title:AddString
	{
		-- MSG 			= "하하하하하하하하하하하하하하하하하하하하하",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(780-22,229)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
