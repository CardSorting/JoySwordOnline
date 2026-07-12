-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





     g_pComboBoxOption_Window_Graphic = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxOption_Window_Graphic )
g_pComboBoxOption_Window_Graphic:SetName( "Option_Resolution" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
--g_pComboBoxOption_Window_Graphic:SetDropHeight( 200 )
				   
g_pComboBoxOption_Window_Graphic:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxOption_Window_Graphic:SetTextTex( "DLG_Common_Button00.tga", "invisible" )


g_pComboBoxOption_Window_Graphic:SetButtonTex ( "DLG_Common_Texture09.tga", "Arrow_Down_Normal" )


g_pComboBoxOption_Window_Graphic:SetButtonMouseOverTex( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )


g_pComboBoxOption_Window_Graphic:SetButtonMouseDownTex ( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )


g_pComboBoxOption_Window_Graphic:SetDropdownTex ( "DLG_Common_Texture01.tga", "White" )


g_pComboBoxOption_Window_Graphic:SetDropdownTextTex ( "DLG_Common_Texture09.tga", "Black" )


g_pComboBoxOption_Window_Graphic:SetScollBarUpButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Over" )

g_pComboBoxOption_Window_Graphic:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Normal" )

g_pComboBoxOption_Window_Graphic:SetScollBarDownButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Over" )

g_pComboBoxOption_Window_Graphic:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Normal" )

g_pComboBoxOption_Window_Graphic:SetScollBarThumbTex( "DLG_Common_New_Texture02.dds", "Scroll" )

g_pComboBoxOption_Window_Graphic:SetScollBarTrackTex( "DLG_Common_New_Texture11.tga", "Messenger_1Pix_Deepgrey" )

g_pComboBoxOption_Window_Graphic:InitScrollBar()


--자동으로 만들 때
--g_pComboBoxOption_Window_Graphic:SetPos( 200, 129 )
--g_pComboBoxOption_Window_Graphic:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboBoxOption_Window_Graphic:SetTextPos( 475, 454)
g_pComboBoxOption_Window_Graphic:SetTextSize( 170, 25)
--텍스트 시작 포인트
g_pComboBoxOption_Window_Graphic:SetTextStringOffsetPos( 64, 6 )
g_pComboBoxOption_Window_Graphic:SetButtonPos( 645, 453)
g_pComboBoxOption_Window_Graphic:SetButtonSize( 26, 26)
g_pComboBoxOption_Window_Graphic:SetCustomMsgSelectionChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_RESOLUTION"] )
