-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--g_pUIDialog:SetName( "Messenger_User_Info" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
--g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_DIALOG_CHATBOX_CLOSE"] )


-- 최대화 상태 ----------------------------------------
g_pStaticCha = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCha )
g_pStaticCha:SetName( "Cha" )
g_pStaticCha:SetCustomMsgMouseDblClk(X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CHATBOX_SIZE_TOGGLE"])
g_pStaticCha:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MGR_CHAT_FOCUS"] )


-------------bg

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_bg1_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 326,
	"LEFT_TOP		= D3DXVECTOR2(0,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_bg1_bottom" )

g_pPicture_bg1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(0,338)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----보는창

g_pPicture_View = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_View )

g_pPicture_View:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_View_top" )

g_pPicture_View:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(12,41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_View = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_View )

g_pPicture_View:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_View_middle" )

g_pPicture_View:SetPoint
{
    ADD_SIZE_Y = 238,
	"LEFT_TOP		= D3DXVECTOR2(12,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_View = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_View )

g_pPicture_View:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_View_bottom" )

g_pPicture_View:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(12,285)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------쓰는 창

g_pPicture_Write = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_Write )

g_pPicture_Write:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_Write_top" )

g_pPicture_Write:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(12,300)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Write = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_Write )

g_pPicture_Write:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_Write_middle" )

g_pPicture_Write:SetPoint
{
    ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(12,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Write = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPicture_Write )

g_pPicture_Write:SetTex( "DLG_UI_Common_Texture04.TGA", "Cha_Write_bottom" )

g_pPicture_Write:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(12,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------BAR
g_pPictureBar1 = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPictureBar1 )

g_pPictureBar1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPictureBar1:SetPoint
{
    ADD_SIZE_X = 297,
	"LEFT_TOP		= D3DXVECTOR2(7,36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBar2 = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPictureBar2 )

g_pPictureBar2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPictureBar2:SetPoint
{
    ADD_SIZE_X = 297,
	"LEFT_TOP		= D3DXVECTOR2(7,294)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------리스트박스


g_pPictureScroll_BG = g_pUIDialog:CreatePicture()
g_pStaticCha:AddPicture( g_pPictureScroll_BG )

g_pPictureScroll_BG:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll_BG:SetPoint
{
     ADD_SIZE_Y = 206,
	"LEFT_TOP		= D3DXVECTOR2(278,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------------리스트박스 1--------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBoxChat" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 13, 41 )
g_pListBox:SetSize( 265,249 )


----------쓸내용
g_pIMEChat = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEChat )
g_pIMEChat:SetName( "IMEChat" )
g_pIMEChat:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(19,309)", --D3DXVECTOR2(150,412)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(206,327)", --D3DXVECTOR2(352,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEChat:SetFont( XF_DODUM_15_NORMAL )
g_pIMEChat:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEChat:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEChat:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEChat:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEChat:RequestFocus()
--g_pIMEChat:SetWidthLimit(160)

g_pIMEChat:SetCustomMsgEnter( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MGR_CHAT_ENTER"] )

--[[
g_pStaticWrite = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWrite )
g_pStaticWrite:SetName( "IMEChatWrite")

g_pStaticWrite:AddString
{
	-- MSG 			= "님 쩔해줄 시간에 웃찾사나 보고\n집 개나 산책 시키겠음.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17,303)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]

---------------보내기 버튼



g_pButtonSend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSend )
g_pButtonSend:SetName( "Button_Send" )
g_pButtonSend:SetNormalTex( "DLG_UI_Button10.tga", "Send_Normal" )

g_pButtonSend:SetOverTex( "DLG_UI_Button10.tga", "Send_Over" )

g_pButtonSend:SetDownTex( "DLG_UI_Button10.tga", "Send_Over" )

g_pButtonSend:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(214,301)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSend:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(211,298)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(211+1,298+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSend:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MGR_CHAT_SEND"] )

--------------EXIT


g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Button_Exit" )
g_pButtonExit:SetNormalTex( "DLG_UI_Button10.tga", "Exit_Normal" )

g_pButtonExit:SetOverTex( "DLG_UI_Button10.tga", "Exit_Over" )

g_pButtonExit:SetDownTex( "DLG_UI_Button10.tga", "Exit_Over" )

g_pButtonExit:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(280,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(277,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(277+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CHATBOX_CLOSE"] )



--------최소화



g_pButtonMini = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMini )
g_pButtonMini:SetName( "Button_Mini" )
g_pButtonMini:SetNormalTex( "DLG_UI_Button10.tga", "Mini_Normal" )

g_pButtonMini:SetOverTex( "DLG_UI_Button10.tga", "Mini_Over" )

g_pButtonMini:SetDownTex( "DLG_UI_Button10.tga", "Mini_Over" )

g_pButtonMini:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(258,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(255,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(255+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMini:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CHATBOX_MINI"] )










--------------------------------    최소화 상태  ------------------------------------------
--------------------------------------------------------------------------------------------




g_pStaticMini = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMini )
g_pStaticMini:SetName( "Mini_Window" )
g_pStaticMini:SetCustomMsgMouseDblClk(X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CHATBOX_SIZE_TOGGLE"])


-------------bg

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticMini:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "cha_bg1_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	MiniNGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticMini:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture04.TGA", "cha_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 26,
	"LEFT_TOP		= D3DXVECTOR2(0,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	MiniNGE_TIME		= 0.0,
}
 


g_pStaticMini_Id = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMini_Id )
g_pStaticMini_Id:SetName( "Mini_ID")

g_pStaticMini_Id:AddString
{
	MSG 			= STR_ID_1253,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------------최소화 상태일때 상대방으로부터 메시지들어올때의 표시  ---------------------

g_pStaticMini_Flickering = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMini_Flickering )
g_pStaticMini_Flickering:SetName( "Mini_Flickering" )



-------------

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticMini_Flickering:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture04.TGA", "cha_mini_flickering" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(-1,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	MiniNGE_TIME		= 0.0,
}


--------------EXIT


g_pButtonExit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExit )
g_pButtonExit:SetName( "Button_Mini_Win_Exit" )
g_pButtonExit:SetNormalTex( "DLG_UI_Button10.tga", "Exit_Normal" )

g_pButtonExit:SetOverTex( "DLG_UI_Button10.tga", "Exit_Over" )

g_pButtonExit:SetDownTex( "DLG_UI_Button10.tga", "Exit_Over" )

g_pButtonExit:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(280,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(277,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(277+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExit:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CHATBOX_CLOSE"] )


------최대화



g_pButtonMaximum = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMaximum )
g_pButtonMaximum:SetName( "Button_Maximum" )
g_pButtonMaximum:SetNormalTex( "DLG_UI_Button10.tga", "Maximum_Normal" )

g_pButtonMaximum:SetOverTex( "DLG_UI_Button10.tga", "Maximum_Over" )

g_pButtonMaximum:SetDownTex( "DLG_UI_Button10.tga", "Maximum_Over" )

g_pButtonMaximum:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(258,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaximum:SetOverPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(255,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaximum:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(255+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaximum:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CHATBOX_MAX"] )


g_pStaticOther_Id = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOther_Id )
g_pStaticOther_Id:SetName( "StaticMessenger_NickName")

g_pStaticOther_Id:AddString
{
	MSG 			= STR_ID_1253,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



