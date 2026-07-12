-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pStaticPVP_Room_Unit_ED = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Unit_ED )
g_pStaticPVP_Room_Unit_ED:SetName( "StaticPVP_Room_Unit_ED" )

---------------------------------------------------------------------------
-- ED, Cash 백 이미지
---------------------------------------------------------------------------

g_pPictureUser_Property_EDnVP1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Unit_ED:AddPicture( g_pPictureUser_Property_EDnVP1 )

g_pPictureUser_Property_EDnVP1:SetTex( "DLG_Shop_Menu.tga", "Money_Window1" )
g_pPictureUser_Property_EDnVP1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(479,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_Property_EDnVP2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Unit_ED:AddPicture( g_pPictureUser_Property_EDnVP2 )

g_pPictureUser_Property_EDnVP2:SetTex( "DLG_Shop_Menu.tga", "Money_Window2" )
g_pPictureUser_Property_EDnVP2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(732,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------------------------------------------------------
-- ED, Cash 수치 정보
---------------------------------------------------------------------------

-- ED
g_pStaticPVP_Room_Unit_ED:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 575, 86 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- VP
g_pStaticPVP_Room_Unit_ED:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 740, 86 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- CASH
g_pStaticPVP_Room_Unit_ED:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 915, 86 )",
	"COLOR			= D3DXCOLOR(0.0, 0.0, 0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
