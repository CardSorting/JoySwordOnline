-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Square_Back" )
g_pUIDialog:SetPos( 0,-56)
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

-----------(방 리스트)

g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_top = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_top)

g_pPictureSquare_List_Bg_top:SetTex( "DLG_Common_New_Texture45.tga", "Square_Bg_Top" )

g_pPictureSquare_List_Bg_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,498)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Middle = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Middle)

g_pPictureSquare_List_Bg_Middle:SetTex( "DLG_Common_New_Texture45.tga", "Square_Bg_Middle" )

g_pPictureSquare_List_Bg_Middle:SetPoint
{
	ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(367,526)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Bottom = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Bottom)

g_pPictureSquare_List_Bg_Bottom:SetTex( "DLG_Common_New_Texture45.tga", "Square_Bg_Bottom" )

g_pPictureSquare_List_Bg_Bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,677+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Bar = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Bar)

g_pPictureSquare_List_Bg_Bar:SetTex( "DLG_Common_New_Texture45.tga", "Square_Bg_Bar" )

g_pPictureSquare_List_Bg_Bar:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(387,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSquare_List_RoomList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSquare_List_RoomList )
g_pStaticSquare_List_RoomList:SetName( "Background" )



g_pPictureSquare_List_Bg_Title = g_pUIDialog:CreatePicture()
g_pStaticSquare_List_RoomList:AddPicture(g_pPictureSquare_List_Bg_Title)

g_pPictureSquare_List_Bg_Title:SetTex( "DLG_Common_New_Texture45.tga", "Square_Bg_Title" )

g_pPictureSquare_List_Bg_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(458,511)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---------------------------(화살표)



-----------추가 되었음(좌표 다시 좀 수정 되었음)----------------
g_pButtonRight_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRight_Triangle )
g_pButtonRight_Triangle:SetName( "Right_Triangle" )
g_pButtonRight_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal2" )

g_pButtonRight_Triangle:SetOverTex( "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonRight_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over2" )

g_pButtonRight_Triangle:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(473,667-2+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(473,667-2+56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRight_Triangle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(474,668-2+56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRight_Triangle:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_PREV_PAGE"] )








------추가 되었음--------
g_pButtonLeft_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonLeft_Triangle )
g_pButtonLeft_Triangle:SetName( "Left_Triangle" )
g_pButtonLeft_Triangle:SetNormalTex( "DLG_Common_New_Texture13.tga", "Arrow_Normal" )

g_pButtonLeft_Triangle:SetOverTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonLeft_Triangle:SetDownTex( "DLG_Common_New_Texture13.tga", "Arrow_Over" )

g_pButtonLeft_Triangle:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(532,667-2+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(532,667-2+56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(533,668-2+56)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonLeft_Triangle:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_NEXT_PAGE"] )














    g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_PageNum" )


g_pStatic:AddString
{
	-- MSG 			= "0",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(513,670+56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





























