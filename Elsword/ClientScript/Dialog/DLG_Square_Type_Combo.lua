-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Square_Type_Combo" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pCombo_SquareType = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo_SquareType )
g_pCombo_SquareType:SetName( "PVP_Team_ChatMode" )

--거꾸로 나오게 할것인가?
g_pCombo_SquareType:SetReverseDropdown( false )

--버튼 클릭했을 때 드랍 텍스쳐 높이
--g_pCombo_SquareType:SetDropHeight( 200 )
				   
g_pCombo_SquareType:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo_SquareType:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo_SquareType:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )
g_pCombo_SquareType:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )
g_pCombo_SquareType:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )
g_pCombo_SquareType:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo_SquareType:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


--자동으로 만들 때
--g_pCombo_SquareType:SetPos( 200, 129 )
--g_pCombo_SquareType:SetSize( 100, 50 )

--수동으로 만들 때
g_pCombo_SquareType:SetTextPos( 504, 65)
g_pCombo_SquareType:SetTextSize( 80, 25)
--텍스트 시작 포인트
g_pCombo_SquareType:SetTextStringOffsetPos(27, 6 )
g_pCombo_SquareType:SetButtonPos( 583, 65)
g_pCombo_SquareType:SetButtonSize( 25, 25)


g_pCombo_SquareType:AddItem("전체")
g_pCombo_SquareType:AddItem("지역")
g_pCombo_SquareType:AddItem("연령")
g_pCombo_SquareType:AddItem("자유")


g_pCombo_SquareType:SetCustomMsgSelectionChanged( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_SQUARE_LIST_TYPE"] )
