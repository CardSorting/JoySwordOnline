-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Messenger_Window" )
g_pUIDialog:SetPos( 612,216 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_OPEN_OR_CLOSE_MESSENGER"] )





g_pUIDialog:AddDummyPos( D3DXVECTOR3( 7, 209, 37 ) )


g_pStaticMessenger_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMessenger_Window )
g_pStaticMessenger_Window:SetName( "Messenger_Window" )
g_pStaticMessenger_Window:SetEnable( true )




--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticMessenger_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture11.tga", "Messenger_Background"  )

g_pPictureBG1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticMessenger_Chat_2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMessenger_Chat_2 )
g_pStaticMessenger_Chat_2:SetName( "StaticMessenger_Chat_2" )
g_pStaticMessenger_Chat_2:SetEnable( true )

g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticMessenger_Chat_2:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture11.tga", "Chat_Box"  )

g_pPictureBG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(140,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






------------------버튼-------------------------- 
 g_pButtonElsword_Friend_Top = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonElsword_Friend_Top )
g_pButtonElsword_Friend_Top:SetName( "Elsword_Friend_Top" )
g_pButtonElsword_Friend_Top:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonElsword_Friend_Top:SetOverTex( "DLG_Common_New_Texture02.dds", "Elsword_ Friend_Top_Over" )

g_pButtonElsword_Friend_Top:SetDownTex( "DLG_Common_New_Texture02.dds", "Elsword_ Friend_Top_Over" )

g_pButtonElsword_Friend_Top:SetNormalPoint
{
            ADD_SIZE_X = 89,
             ADD_SIZE_Y = 37,

 	"LEFT_TOP		= D3DXVECTOR2(30,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonElsword_Friend_Top:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,66)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonElsword_Friend_Top:SetDownPoint
{
          ADD_SIZE_X = -2,
             ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31,67)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonElsword_Friend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonElsword_Friend )
g_pButtonElsword_Friend:SetName( "Elsword_Friend" )
g_pButtonElsword_Friend:SetNormalTex( "DLG_Common_New_Texture02.dds", "Elsword_ Friend_Normal" )

g_pButtonElsword_Friend:SetOverTex( "DLG_Common_New_Texture02.dds", "Elsword_ Friend_Over" )

g_pButtonElsword_Friend:SetDownTex( "DLG_Common_New_Texture02.dds", "Elsword_ Friend_Over" )

g_pButtonElsword_Friend:SetNormalPoint
{
           

 	"LEFT_TOP		= D3DXVECTOR2(6,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonElsword_Friend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(6,117)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonElsword_Friend:SetDownPoint
{
         ADD_SIZE_X = -2,
             ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(7,118)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonElsword_Friend:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_SEE_MGR_USER_LIST"] )






g_pButtonFriend_Addition = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend_Addition )
g_pButtonFriend_Addition:SetName( "ButtonAdd_Friend" )
g_pButtonFriend_Addition:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonFriend_Addition:SetOverTex( "DLG_Common_New_Texture02.dds", "Friend_Addition" )

g_pButtonFriend_Addition:SetDownTex( "DLG_Common_New_Texture02.dds", "Friend_Addition" )


g_pButtonFriend_Addition:SetNormalPoint
{
         ADD_SIZE_X = 86,
             ADD_SIZE_Y = 26,

 	"LEFT_TOP		= D3DXVECTOR2(161,409)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_Addition:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(161,409)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_Addition:SetDownPoint
{
        ADD_SIZE_X = -2,
             ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162,410)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonFriend_Addition:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_ADD_FRIEND_OPEN"] )


g_pButtonGroup = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGroup )
g_pButtonGroup:SetName( "ButtonAdd_Group" )
g_pButtonGroup:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonGroup:SetOverTex( "DLG_Common_New_Texture02.dds", "Group" )

g_pButtonGroup:SetDownTex( "DLG_Common_New_Texture02.dds", "Group" )

g_pButtonGroup:SetNormalPoint
{
         ADD_SIZE_X = 86,
             ADD_SIZE_Y = 26,

 	"LEFT_TOP		= D3DXVECTOR2(260,409)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGroup:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(260,409)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGroup:SetDownPoint
{
        ADD_SIZE_X = -2,
             ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(261,410)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonGroup:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CREATE_GROUP_OPEN"] )






g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "X" )
g_pButtonX:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

g_pButtonX:SetOverTex( "DLG_Common_Texture20.tga", "Button_X_Over" )

g_pButtonX:SetDownTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetNormalPoint
{
          ADD_SIZE_X = 34,
             ADD_SIZE_Y = 34,  


 	"LEFT_TOP		= D3DXVECTOR2(322,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(322,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(323,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_OPEN_OR_CLOSE_MESSENGER"] )



g_pButtonUp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUp )
g_pButtonUp:SetName( "Up" )
g_pButtonUp:SetNormalTex( "DLG_Common_New_Texture11.tga", "Up" )

g_pButtonUp:SetOverTex( "DLG_Common_New_Texture11.tga", "Up_Over" )

g_pButtonUp:SetDownTex( "DLG_Common_New_Texture11.tga", "Up" )

g_pButtonUp:SetNormalPoint
{



 	"LEFT_TOP		= D3DXVECTOR2(56,397)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUp:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,397)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUp:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(57,398)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUp:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CHAT_SESSION_PREV_PAGE"] )





g_pButtonDown = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDown )
g_pButtonDown:SetName( "Down" )
g_pButtonDown:SetNormalTex( "DLG_Common_New_Texture11.tga", "Down" )

g_pButtonDown:SetOverTex( "DLG_Common_New_Texture11.tga", "Down_Over" )

g_pButtonDown:SetDownTex( "DLG_Common_New_Texture11.tga", "Down" )

g_pButtonDown:SetNormalPoint
{



 	"LEFT_TOP		= D3DXVECTOR2(56,425)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,425)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(57,426)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CHAT_SESSION_NEXT_PAGE"] )



g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBoxMessenger" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetGroupString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




g_pListBox:SetTextTex( "DLG_Room_Button0.TGA", "Select_Box" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Over" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Normal" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Over" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Normal" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture02.dds", "Scroll" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21  )
g_pListBox:SetPos( 136 + 14, 148 )
g_pListBox:SetSize( 207 - 14,255  )

g_pListBox:SetCustomMsgSelection( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_USER_LIST_BOX_ITEM_LBUTTON"] )
g_pListBox:SetCustomMsgSelectionByRButton( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_USER_LIST_BOX_ITEM_RBUTTON"] )
g_pListBox:SetCustomMsgItemDoubleClick( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_USER_LIST_BOX_ITEM_LBUTTON_DBLCLK"] )



g_pIMEChat = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEChat )
g_pIMEChat:SetName( "IMEChat" )
g_pIMEChat:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(150,412)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(352,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEChat:SetFont( XF_DODUM_15_NORMAL )
g_pIMEChat:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEChat:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEChat:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEChat:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEChat:RequestFocus()
--[[
g_pIMEChat:SetWidthLimit( 276 - 20 - 15 )
g_pIMEChat:SetMultiLineOption( 1, 1 )
--]]
g_pIMEChat:SetCustomMsgEnter( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_MGR_CHAT_ENTER"] )
