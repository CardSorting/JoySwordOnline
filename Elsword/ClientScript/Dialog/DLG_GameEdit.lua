-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_GameEdit" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pStaticGameEditBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGameEditBG )
g_pStaticGameEditBG:SetName( "StaticGameEditBG" )
g_pStaticGameEditBG:SetEnable( true )

g_pPictureGameEditBG = g_pUIDialog:CreatePicture()
g_pStaticGameEditBG:AddPicture( g_pPictureGameEditBG )

g_pPictureGameEditBG:SetTex( "DLG_Room_Button0.tga", "Black_Button" )

g_pPictureGameEditBG:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,384)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(512,768)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticGameEditBG:AddString
{
	MSG 			= STR_ID_997,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 20, 384 )",
	"COLOR			= D3DXCOLOR(1.0, 1.0, 1.0, 1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticGameEditBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGameEditBG )
g_pStaticGameEditBG:SetName( "StaticGameEditCommandBG" )
g_pStaticGameEditBG:SetEnable( true )
g_pStaticGameEditBG:SetShow( false )

g_pPictureGameEditBG = g_pUIDialog:CreatePicture()
g_pStaticGameEditBG:AddPicture( g_pPictureGameEditBG )

g_pPictureGameEditBG:SetTex( "DLG_Room_Button0.tga", "Black_Button" )

g_pPictureGameEditBG:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticGameEditBG:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2( 1000, 50 )",
	"COLOR			= D3DXCOLOR(1.0, 1.0, 1.0, 1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





chatAddPosX = 10
chatAddPosY	= 80

g_pStaticPVPGameChatBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVPGameChatBox )
g_pStaticPVPGameChatBox:SetName( "StaticPVPGameChatBox" )


g_pPicturePVPStateChatBox1= g_pUIDialog:CreatePicture()
g_pStaticPVPGameChatBox:AddPicture( g_pPicturePVPStateChatBox1 )


g_pPicturePVPStateChatBox1:SetTex( "DLG_PVP_State_Info0.tga", "PVPStateChatBox1" )

g_pPicturePVPStateChatBox1:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(12 + chatAddPosX,640 + chatAddPosY )",
	"RIGHT_TOP		= D3DXVECTOR2(18 + chatAddPosX,640 + chatAddPosY)",
	"LEFT_BOTTOM		= D3DXVECTOR2(12 + chatAddPosX,667 + chatAddPosY)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(18 + chatAddPosX,667 + chatAddPosY)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME     = 0.0,
}


g_pPicturePVPStateChatBox2= g_pUIDialog:CreatePicture()
g_pStaticPVPGameChatBox:AddPicture( g_pPicturePVPStateChatBox2 )


g_pPicturePVPStateChatBox2:SetTex( "DLG_PVP_State_Info0.tga", "PVPStateChatBox2" )

g_pPicturePVPStateChatBox2:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(18 + chatAddPosX,640 + chatAddPosY)",
	"RIGHT_TOP		= D3DXVECTOR2(396 + chatAddPosX,640 + chatAddPosY)",
	"LEFT_BOTTOM		= D3DXVECTOR2(18 + chatAddPosX,667 + chatAddPosY)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396 + chatAddPosX,667 + chatAddPosY)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME     = 0.0,
}


g_pPicturePVPStateChatBox3= g_pUIDialog:CreatePicture()
g_pStaticPVPGameChatBox:AddPicture( g_pPicturePVPStateChatBox3 )


g_pPicturePVPStateChatBox3:SetTex( "DLG_PVP_State_Info0.tga", "PVPStateChatBox3" )

g_pPicturePVPStateChatBox3:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(396 + chatAddPosX,640 + chatAddPosY)",
	"RIGHT_TOP		= D3DXVECTOR2(402 + chatAddPosX,640 + chatAddPosY)",
	"LEFT_BOTTOM		= D3DXVECTOR2(396 + chatAddPosX,667 + chatAddPosY)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(402 + chatAddPosX,667 + chatAddPosY)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME     = 0.0,
}


g_pIMEEditBoxPVPGameChatBox = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxPVPGameChatBox )
g_pIMEEditBoxPVPGameChatBox:SetName( "IMEEditBoxGameEditCommand" )
g_pIMEEditBoxPVPGameChatBox:SetTextPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(18 + chatAddPosX,645 + chatAddPosY)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(396 + chatAddPosX,662 + chatAddPosY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     = 0.0,
}
g_pIMEEditBoxPVPGameChatBox:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxPVPGameChatBox:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetSelectedTextColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetSelectedBackColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxPVPGameChatBox:SetTabControlName( "IMEEditBoxGameEditCommand" );
g_pIMEEditBoxPVPGameChatBox:SetCustomMsgEnter( STATE_UI_CUSTOM_MSG["SUCM_GAME_EDIT_COMMAND"] )


--치트 설명 리스트 박스(XUAL_DEV)
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "GameEdit_Help_Dev")
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )
g_pListBox:SetShow(falsE)

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Black_Button" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 982, 63 )
g_pListBox:SetScrollBarSize( 26, 680 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 537, 63 )
g_pListBox:SetSize( 430, 680 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )


 

--치트 설명 리스트 박스(OPERATOR)
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "GameEdit_Help_Operator")
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )
g_pListBox:SetShow(falsE)

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Black_Button" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 982,63 )
g_pListBox:SetScrollBarSize( 26, 680 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 537, 63 )
g_pListBox:SetSize( 430, 680 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )
