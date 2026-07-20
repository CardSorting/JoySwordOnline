-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_ChatBox_Helper_Emotion" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
g_pUIDialog:SetPos( 116,333 )
--g_pUIDialog:SetCloseOnFocusOut( true )


g_pStaticChat_Bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Bg )
g_pStaticChat_Bg:SetName( "g_pStaticChat_Emotion_Bg" )



g_pPicture_Bg = g_pUIDialog:CreatePicture()
g_pStaticChat_Bg:AddPicture( g_pPicture_Bg )

g_pPicture_Bg:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_Bg:SetPoint
{   
    ADD_SIZE_X = 80,
    ADD_SIZE_Y = 110,
	"LEFT_TOP		= D3DXVECTOR2(0,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
--------------------------------------------------------------------------------

g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "EmotionList" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pListBox:SetBoundingBoxTex( "DLG_UI_Common_Texture10.tga","black" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_UI_Common_Texture10.tga", "black" )





g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 16 )
g_pListBox:SetPos( 0, 50 )
g_pListBox:SetSize( 80, 110 )

g_pListBox:SetCustomMsgSelection( PARTYMSGER_UI_MSG["PUM_HELPER_EMOTION_SELECT"] )
--g_pListBox:SetCustomMsgItemDoubleClick( PARTYMSGER_UI_MSG["PUM_HELPER_EMOTION_SELECT"] )


g_pListBox:AddItem( "/sit" )
g_pListBox:AddItem( "/stand" )
g_pListBox:AddItem( "/greetings" )
g_pListBox:AddItem( "/laugh" )
g_pListBox:AddItem( "/cry" )
g_pListBox:AddItem( "/disagree" )
g_pListBox:AddItem( "/angry" )


