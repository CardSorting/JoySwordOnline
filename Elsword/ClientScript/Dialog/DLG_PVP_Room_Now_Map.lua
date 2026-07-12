-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.






----------------(맵 선택창)---------

g_pStaticPVP_Room_Map_Select_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Map_Select_Window )
g_pStaticPVP_Room_Map_Select_Window:SetName( "PVP_Room_Map_Select_Window" )



g_pPicturePVP_Room_Map_Select_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Map_Select_Window:AddPicture( g_pPicturePVP_Room_Map_Select_Bg1 )

g_pPicturePVP_Room_Map_Select_Bg1:SetTex( "DLG_Common_New_Texture09.TGA", "PVP_Menu_Window" )

g_pPicturePVP_Room_Map_Select_Bg1:SetPoint
{
	  ADD_SIZE_Y=-8 ,
	"LEFT_TOP		= D3DXVECTOR2(9,387)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_Map_Select_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Map_Select_Window:AddPicture( g_pPicturePVP_Room_Map_Select_Bg1 )

g_pPicturePVP_Room_Map_Select_Bg1:SetTex( "DLG_Common_New_Texture09.TGA", "Mode_Window_BG1" )

g_pPicturePVP_Room_Map_Select_Bg1:SetPoint
{
	ADD_SIZE_Y = 200-8,
	"LEFT_TOP		= D3DXVECTOR2(22,406-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_Map_Select_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Map_Select_Window:AddPicture( g_pPicturePVP_Room_Map_Select_Bg1 )

g_pPicturePVP_Room_Map_Select_Bg1:SetTex( "DLG_Common_New_Texture09.TGA", "Mode_Window_BG1" )

g_pPicturePVP_Room_Map_Select_Bg1:SetPoint
{
	ADD_SIZE_Y = 200,
	"LEFT_TOP		= D3DXVECTOR2(22,406-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









----------------------(맵선택 버튼)-------------------------------
g_pButtonPVP_Room_Map_Select = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Room_Map_Select )
g_pButtonPVP_Room_Map_Select:SetName( "PVP_Room_Map_Select" )
g_pButtonPVP_Room_Map_Select:SetNormalTex( "DLG_Common_New_Texture72.TGA", "MapSelect_Button_Normal" )

g_pButtonPVP_Room_Map_Select:SetOverTex( "DLG_Common_New_Texture72.TGA", "MapSelect_Button_Over" )

g_pButtonPVP_Room_Map_Select:SetDownTex( "DLG_Common_New_Texture72.TGA", "MapSelect_Button_Over" )

g_pButtonPVP_Room_Map_Select:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(21+1,624-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Map_Select:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21+1,624-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Map_Select:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(22+1,625-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonPVP_Room_Map_Select:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP"] )



-----------------------------(나가기버튼)----------------------------

g_pButtonPVP_Room_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPVP_Room_Exit )
g_pButtonPVP_Room_Exit:SetName( "PVP_Room_Map_Exit" )
g_pButtonPVP_Room_Exit:SetNormalTex( "DLG_Common_New_Texture72.TGA", "Exit_Button_Normal" )

g_pButtonPVP_Room_Exit:SetOverTex( "DLG_Common_New_Texture72.TGA", "Exit_Button_Over" )

g_pButtonPVP_Room_Exit:SetDownTex( "DLG_Common_New_Texture72.TGA", "Exit_Button_Over" )

g_pButtonPVP_Room_Exit:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(21+1,624-4+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21+1,624-4+42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPVP_Room_Exit:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(22+1,625-4+42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonPVP_Room_Exit:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_BACK_TO_PVP_LOBBY"] )











g_pStaticPVP_Room_Now_Map = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Now_Map )
g_pStaticPVP_Room_Now_Map:SetName( "PVP_Room_Now_Map" )

g_pPicture_PVP_Room_Team2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Now_Map:AddPicture( g_pPicture_PVP_Room_Team2 )

g_pPicture_PVP_Room_Team2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPicture_PVP_Room_Team2:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(42-13,395+20-4)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(241-13,583+20-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPVP_Room_Now_Map:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(141,553)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,0.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}


g_pStaticPVP_Room_Map_Select_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Map_Select_TITLE )
g_pStaticPVP_Room_Map_Select_TITLE:SetName( "g_pStaticPVP_Room_Map_Select_TITLE_BG" )


g_pPicture_PVP_Room_Map_Select_TITLE_BG = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Map_Select_TITLE:AddPicture( g_pPicture_PVP_Room_Map_Select_TITLE_BG )

g_pPicture_PVP_Room_Map_Select_TITLE_BG:SetTex( "DLG_Common_Texture01.tga", "Black" )

g_pPicture_PVP_Room_Map_Select_TITLE_BG:SetPoint
{
    ADD_SIZE_X = 198,
	ADD_SIZE_Y = 35,

	"LEFT_TOP		= D3DXVECTOR2(29,411)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}



g_pStaticPVP_Room_Map_Select_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Map_Select_TITLE )
g_pStaticPVP_Room_Map_Select_TITLE:SetName( "g_pStaticPVP_Room_Map_Select_TITLE" )


g_pPicture_MAP_TITLE_ALL_RANDOM = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Map_Select_TITLE:AddPicture( g_pPicture_MAP_TITLE_ALL_RANDOM )

g_pPicture_MAP_TITLE_ALL_RANDOM:SetTex( "DLG_New_PVP_Image_TITLE.dds", "MAP_TITLE_ALL_RANDOM" )

g_pPicture_MAP_TITLE_ALL_RANDOM:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(26,412)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
