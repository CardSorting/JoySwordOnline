-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

offsetPosX = 45
offsetPosY = 90


g_pStaticPVP_Room_UserInfo_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo_Window )
g_pStaticPVP_Room_UserInfo_Window:SetName( "PVP_Room_UserInfo_BG" )




g_pPicture_PVP_Room_UserInfo_Window = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Window:AddPicture( g_pPicture_PVP_Room_UserInfo_Window )

g_pPicture_PVP_Room_UserInfo_Window:SetTex( "DLG_Room_Button0.tga", "Black_Button" )

g_pPicture_PVP_Room_UserInfo_Window:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0 + offsetPosX,0 + offsetPosY)",
	
	ADD_SIZE_X		= 34,
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticPVP_Room_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo )
g_pStaticPVP_Room_UserInfo:SetName( "StaticPVP_Room_UserInfo" )

g_pStaticPVP_Room_UserInfo:AddString
{
	MSG 			= "LV.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(7 + offsetPosX,32 + offsetPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= "1",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32 + offsetPosX,32 + offsetPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= "불패칸",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(51 + offsetPosX,32 + offsetPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
