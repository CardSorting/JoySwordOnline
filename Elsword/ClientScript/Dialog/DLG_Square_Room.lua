-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Square_Slot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )





------수정 되었음----------------
g_pButtonSqureRoom = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSqureRoom )
g_pButtonSqureRoom:SetName( "Room_Over" )
g_pButtonSqureRoom:SetNormalTex( "DLG_Common_New_Texture03.tga", "Invisible" )

g_pButtonSqureRoom:SetOverTex( "DLG_Common_New_Texture44.tga", "VILLAGE_SQUARE_LIST_BAR_OVER" )

g_pButtonSqureRoom:SetDownTex( "DLG_Common_New_Texture44.tga", "VILLAGE_SQUARE_LIST_BAR_OVER" )

g_pButtonSqureRoom:SetNormalPoint
{


	 ADD_SIZE_X=95+158,
	 ADD_SIZE_Y=22,
	"LEFT_TOP		= D3DXVECTOR2(0+6-2,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSqureRoom:SetOverPoint
{



	"LEFT_TOP		= D3DXVECTOR2(0+6-2,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSqureRoom:SetDownPoint
{

	 ADD_SIZE_X=-2,
	 ADD_SIZE_Y=-2,
	"LEFT_TOP		= D3DXVECTOR2(1+6-2,1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}

--g_pButtonSqureRoom:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_ENTER"] )
g_pButtonSqureRoom:SetCustomMsgMouseUp( MARKET_LIST_UI_MSG["MLUI_ENTER"] )


---------추가 되었음----------
g_pStaticSquare_List_Bar_Glay = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_Bar_Glay )
g_pStaticSquare_List_Bar_Glay:SetName( "StaticSquare_List_Bar_Glay" )



g_pPictureSquare_List_Bar_Glay = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_Bar_Glay:AddPicture(g_pPictureSquare_List_Bar_Glay)

g_pPictureSquare_List_Bar_Glay:SetTex( "DLG_Common_New_Texture44.tga", "VILLAGE_SQUARE_LIST_BAR_Glay" )

g_pPictureSquare_List_Bar_Glay:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(95,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}













g_pStaticSquare_List_Bar_Blue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_Bar_Blue )
g_pStaticSquare_List_Bar_Blue:SetName( "StaticSquare_List_Bar_Blue" )



g_pPictureSquare_List_Bar_Blue = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_Bar_Blue:AddPicture(g_pPictureSquare_List_Bar_Blue)

g_pPictureSquare_List_Bar_Blue:SetTex( "DLG_Common_New_Texture44.tga", "VILLAGE_SQUARE_LIST_BAR_BLUE" )

g_pPictureSquare_List_Bar_Blue:SetPoint
{
		ADD_SIZE_X=161-8,
	"LEFT_TOP		= D3DXVECTOR2(95+2,5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticSquare_List_Bar_Red = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_Bar_Red )
g_pStaticSquare_List_Bar_Red:SetName( "StaticSquare_List_Bar_Red" )



g_pPictureSquare_List_Bar_Red = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_Bar_Red:AddPicture(g_pPictureSquare_List_Bar_Red)

g_pPictureSquare_List_Bar_Red:SetTex( "DLG_Common_New_Texture44.tga", "VILLAGE_SQUARE_LIST_BAR_Red" )

g_pPictureSquare_List_Bar_Red:SetPoint
{
		ADD_SIZE_X=161-8,
	"LEFT_TOP		= D3DXVECTOR2(95+2,5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pStaticSqureRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSqureRoom_State )
g_pStaticSqureRoom_State:SetName( "RoomName" )



g_pStaticSqureRoom_State:AddString
{
MSG 			= STR_ID_1167,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(0+48,0+7)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pStaticSqureRoom_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSqureRoom_State )
g_pStaticSqureRoom_State:SetName( "RoomState" )

g_pStaticSqureRoom_State:AddString
{
	MSG 			= STR_ID_1168,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(227-10,5+3)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

