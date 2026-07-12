-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_PVP_MAP_SELECT_FOR_DEBUG" )
g_pUIDialog:SetPos( 10, 10 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseOnFocusOut( true )
--g_pUIDialog:SetTimeForSelfDelete( 30 )




g_pStatic_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Background )
g_pStatic_Background:SetName( "BackGround" )


g_pPictureBackground = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture(g_pPictureBackground)
g_pPictureBackground:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_ElswordMark" )
g_pPictureBackground:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1000, 180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "PVP_MAP_WORLD_ID_LIST" )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	--"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_NONE"],
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 25 )
g_pListBox:SetPos( 30, 10 )
g_pListBox:SetSize( 800, 160 )


g_pListBox:SetCustomMsgSelection( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_SELECT_FOR_DEBUG"] )
g_pListBox:SetCustomMsgItemDoubleClick( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHANGE_MAP_OK"] )

--g_pListBox:AddItem( " " )
