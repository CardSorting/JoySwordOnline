-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetPos( 310, 245 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_ADVERTISE_EXIT"] )

g_pStatic_Guild_AD_Registration = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Guild_AD_Registration )
g_pStatic_Guild_AD_Registration:SetName( "Guild_AD_Registration" )



-------------------------BG

g_pPicture_BG_A_01 = g_pUIDialog:CreatePicture()
g_pStatic_Guild_AD_Registration:AddPicture( g_pPicture_BG_A_01 )

g_pPicture_BG_A_01:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_C_LEFT" )

g_pPicture_BG_A_01:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG_A_02 = g_pUIDialog:CreatePicture()
g_pStatic_Guild_AD_Registration:AddPicture( g_pPicture_BG_A_02 )

g_pPicture_BG_A_02:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_C_CENTER" )

g_pPicture_BG_A_02:SetPoint
{
     ADD_SIZE_X = 275,
	"LEFT_TOP		= D3DXVECTOR2(30,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG_A_03 = g_pUIDialog:CreatePicture()
g_pStatic_Guild_AD_Registration:AddPicture( g_pPicture_BG_A_03 )

g_pPicture_BG_A_03:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_C_RIGHT" )

g_pPicture_BG_A_03:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(307,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------Box

g_pPicture_Box01 = g_pUIDialog:CreatePicture()
g_pStatic_Guild_AD_Registration:AddPicture( g_pPicture_Box01 )

g_pPicture_Box01:SetTex( "DLG_UI_Common_Texture06.TGA", "Box01" )

g_pPicture_Box01:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Box02 = g_pUIDialog:CreatePicture()
g_pStatic_Guild_AD_Registration:AddPicture( g_pPicture_Box02 )

g_pPicture_Box02:SetTex( "DLG_UI_Common_Texture06.TGA", "Box02" )

g_pPicture_Box02:SetPoint
{
--     ADD_SIZE_X = 272,
	"LEFT_TOP		= D3DXVECTOR2(27,97)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------------- !!!!
g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStatic_Guild_AD_Registration:AddPicture( g_pPicture_Notice )

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "Feel" )

g_pPicture_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------                 버튼                ---------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------확인 버튼


g_pButton_Upload = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Upload )
g_pButton_Upload:SetName( "g_pButton_Upload" )
g_pButton_Upload:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButton_Upload:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_Upload:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_Upload:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upload:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91-2,134-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upload:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91-2+1,134-2+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upload:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_ADVERTISE_MESSAGE_OK"] )


----------------취소 버튼

g_pButton_List = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_List )
g_pButton_List:SetName( "g_pButton_List" )
g_pButton_List:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButton_List:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_List:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButton_List:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91+83,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_List:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91+83-2,134-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_List:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+83-2+1,134-2+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_List:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_ADVERTISE_MESSAGE_CANCEL"] )


----------------EXIT 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "UI_PvP_Lobby_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(292+4,13+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(292,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(292+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonX:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_ADVERTISE_EXIT"] )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------                TEXT                ---------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------


g_pStatic_TEXT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TEXT )
g_pStatic_TEXT:SetName( "TEXT" )

---------------도움말

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4867,
--	MSG 			= "메시지 입력 후, 광고기간을 선택해주세요.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(38,22)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------------ED

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4868,
--	MSG 			= "3000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(258,101)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

------------- 버튼 

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4865,
--	MSG 			= "확인",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(91+38,134+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4866,
--	MSG 			= "취소",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(91+84+38,134+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


-----------------메시지 입력창

g_pIME_Guildname= g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Guildname )
g_pIME_Guildname:SetName( "IME_AdvertiseMessage" )
g_pIME_Guildname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,67)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(32+276,67+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Guildname:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Guildname:SetTextColor( 0.3,0.3,0.3,1.0 )
g_pIME_Guildname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Guildname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Guildname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Guildname:SetByteLimit( 80 )	
	




---------------------------------------------------콤보박스 --------------------------------------------------------------------


g_pComboBoxGuild_AD_Date = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxGuild_AD_Date )
g_pComboBoxGuild_AD_Date:SetName( "Guild_AD_Date" )


--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxGuild_AD_Date:SetDropHeight( 40 )
				   
g_pComboBoxGuild_AD_Date:SetString
{
--     MSG 			= "1일",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxGuild_AD_Date:SetTextTex( "DLG_Common_Button00.tga", "invisible" )


g_pComboBoxGuild_AD_Date:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )


g_pComboBoxGuild_AD_Date:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )


g_pComboBoxGuild_AD_Date:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )


g_pComboBoxGuild_AD_Date:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )


g_pComboBoxGuild_AD_Date:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )



g_pComboBoxGuild_AD_Date:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pComboBoxGuild_AD_Date:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pComboBoxGuild_AD_Date:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pComboBoxGuild_AD_Date:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pComboBoxGuild_AD_Date:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pComboBoxGuild_AD_Date:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pComboBoxGuild_AD_Date:InitScrollBar()




--수동으로 만들 때
g_pComboBoxGuild_AD_Date:SetTextPos( 29, 93)
g_pComboBoxGuild_AD_Date:SetTextSize( 122, 25)

--텍스트 시작 포인트
g_pComboBoxGuild_AD_Date:SetTextStringOffsetPos( 50, 8 )
g_pComboBoxGuild_AD_Date:SetButtonPos( 146, 102)
g_pComboBoxGuild_AD_Date:SetButtonSize( 15, 12)



g_pComboBoxGuild_AD_Date:AddItem( "1Day" )
g_pComboBoxGuild_AD_Date:AddItem( "2Day" )
g_pComboBoxGuild_AD_Date:AddItem( "3Day" )
g_pComboBoxGuild_AD_Date:AddItem( "4Day" )
g_pComboBoxGuild_AD_Date:AddItem( "5Day" )

g_pComboBoxGuild_AD_Date:SetCustomMsgSelectionChanged( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_ADVERTISE_ED"] )

