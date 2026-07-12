-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pPVP_Team_ChatMode = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pPVP_Team_ChatMode )
g_pPVP_Team_ChatMode:SetName( "ComboBoxChatMode" )

--거꾸로 나오게 할것인가?
g_pPVP_Team_ChatMode:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
--g_pPVP_Team_ChatMode:SetDropHeight( 200 )
				   
g_pPVP_Team_ChatMode:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPVP_Team_ChatMode:SetTextTex( "DLG_Server_Select3.TGA", "invisible" )


g_pPVP_Team_ChatMode:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )


g_pPVP_Team_ChatMode:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )


g_pPVP_Team_ChatMode:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )


g_pPVP_Team_ChatMode:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )


g_pPVP_Team_ChatMode:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


--자동으로 만들 때
--g_pPVP_Team_ChatMode:SetPos( 200, 129 )
--g_pPVP_Team_ChatMode:SetSize( 100, 50 )

--수동으로 만들 때
g_pPVP_Team_ChatMode:SetTextPos( 4, 120)
g_pPVP_Team_ChatMode:SetTextSize( 150, 36)
--텍스트 시작 포인트
g_pPVP_Team_ChatMode:SetTextStringOffsetPos( 10, 9 )
g_pPVP_Team_ChatMode:SetButtonPos( 153, 122)
g_pPVP_Team_ChatMode:SetButtonSize( 29, 29)


g_pPVP_Team_ChatMode:AddItem("[모두에게]")
g_pPVP_Team_ChatMode:AddItem("[팀원들에게]")






g_pIMERoomChat = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMERoomChat )
g_pIMERoomChat:SetName( "IMERoomChat" )
g_pIMERoomChat:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(190,127)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(600,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMERoomChat:SetFont( XF_DODUM_15_NORMAL )
g_pIMERoomChat:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMERoomChat:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMERoomChat:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMERoomChat:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMERoomChat:SetTabControlName( "IMERoomChat" )
g_pIMERoomChat:SetCustomMsgEnter( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHAT_ENTER"] )
