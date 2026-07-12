-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_UI_Party_PVP" )
g_pUIDialog:SetPos( 800, 180 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )




--------STATIC
g_pStatic_PVP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_PVP )
g_pStatic_PVP:SetName( "PVP" )


--------던전 BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_PVP_BG_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_DUGEON_BG_middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 269+2+4,
	"LEFT_TOP		= D3DXVECTOR2(0,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_DUGEON_BG_bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,332+2+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------인원_BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(16,110+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 51,
	"LEFT_TOP		= D3DXVECTOR2(16,116+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1= g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_bottom" )
g_pPicture_bg1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,171+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------난이도_BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(16,205+5-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 29+20,
	"LEFT_TOP		= D3DXVECTOR2(16,212+5-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1= g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_bottom" )
g_pPicture_bg1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,245+5-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )
g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 160,
	"LEFT_TOP		= D3DXVECTOR2(14,259)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}

---------------------버튼 BG
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BUTTON_BG_top" )
g_pPicture_bg2:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(13,258+8+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BUTTON_BG_middle" )
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 57,
	"LEFT_TOP		= D3DXVECTOR2(13,265+8+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BUTTON_BG_bottom" )
g_pPicture_bg2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(13,332+3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------exit버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Close_Window" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
    "LEFT_TOP		= D3DXVECTOR2(156,37+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
    ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
	"LEFT_TOP		= D3DXVECTOR2(156-4,37-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -7,
     ADD_SIZE_Y = -7,
 	"LEFT_TOP		= D3DXVECTOR2(156-3,37-3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )


---------------- 도움말 버튼 
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Button_Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_BUTTON14.tga", "Help_Normal" )
g_pButton_Help:SetOverTex( "DLG_UI_BUTTON14.tga", "Help_Over" )
g_pButton_Help:SetDownTex( "DLG_UI_BUTTON14.tga", "Help_Over" )
g_pButton_Help:SetNormalPoint
{
	ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
    "LEFT_TOP		= D3DXVECTOR2(135,37+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
    ADD_SIZE_X=-5,
	ADD_SIZE_Y=-5,
	"LEFT_TOP		= D3DXVECTOR2(135-4,37-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -7,
     ADD_SIZE_Y = -7,
 	"LEFT_TOP		= D3DXVECTOR2(135-3,37-3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(30)

------------대전 설정 버튼
g_pButton_Setting = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Setting )
g_pButton_Setting:SetName( "pvpSetting" )
g_pButton_Setting:SetNormalTex( "DLG_UI_BUTTON19.tga", "PVP_SETTING_NORMAL" )
g_pButton_Setting:SetOverTex( "DLG_UI_BUTTON19.tga", "PVP_SETTING_OVER" )
g_pButton_Setting:SetDownTex( "DLG_UI_BUTTON19.tga", "PVP_SETTING_OVER" )
g_pButton_Setting:SetDisableTex( "DLG_UI_Button19.tga", "PVP_SETTING_GRAY" )
g_pButton_Setting:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(16,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Setting:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16-3,62-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Setting:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(16-2,62-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Setting:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,28-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Setting:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING"] )


-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 160,
	"LEFT_TOP		= D3DXVECTOR2(14,86+1)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}



------------인원
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_13720, --"대전모드 선택",
	--MSG 			= STR_ID_989, --"인원",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(16,91+3)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  

-------------------1대1 SET
------------1대1
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_13714, --"1 대 1 매치",
	--MSG 			= STR_ID_12335, --"1 대 1",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	--"POS 			= D3DXVECTOR2(95,115+3)",
	"POS 			= D3DXVECTOR2(95,120+3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  
-------------체크 라디오버튼
    g_pRadioButton_check1 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButton_check1 )
	g_pRadioButton_check1:SetFixOverByCheck( true )
	g_pRadioButton_check1:SetShowOffBGByCheck( true )
	g_pRadioButton_check1:SetName( "pvp_player_check1" )
	g_pRadioButton_check1:SetNormalTex( "DLG_ui_button08.tga", "radio_normal" )
	g_pRadioButton_check1:SetOverTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check1:SetCheckedTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check1:SetBGPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,115)",
		"LEFT_TOP		= D3DXVECTOR2(18,120)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check1:SetBGMouseOverPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,115)",
		"LEFT_TOP		= D3DXVECTOR2(18,120)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check1:SetRBPoint
	{
		USE_TEXTURE_SIZE	= FALSE,
		--"LEFT_TOP		= D3DXVECTOR2(18,115)",
		--"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,115+15)",
		"LEFT_TOP		= D3DXVECTOR2(18,120)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,120+15)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check1:SetCheckPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,115)",
		"LEFT_TOP		= D3DXVECTOR2(18,120)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButton_check1:SetDisabledPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,115)",
		"LEFT_TOP		= D3DXVECTOR2(18,120)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check1:SetGroupID(1)
g_pRadioButton_check1:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_1"] )
-------------------2대2 SET
-----------bar
--[[
		g_pPicture_line = g_pUIDialog:CreatePicture()
		g_pStatic_PVP:AddPicture( g_pPicture_line )

		g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

		g_pPicture_line:SetPoint
		{
		    ADD_SIZE_X = 155,
			ADD_SIZE_Y = -1,
			"LEFT_TOP		= D3DXVECTOR2(16,115+17+3)",
			"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
			CHANGE_TIME		= 0.0,
		}
--]]
------------2대2
--[[
		g_pStatic_PVP:AddString
		{
			MSG 			= STR_ID_13715, --"2 대 2 데스 매치",
			--MSG 			= STR_ID_12336, --"2 대 2",
			FONT_INDEX		= XUF_DODUM_11_NORMAL,
			SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
			"POS 			= D3DXVECTOR2(95,115+22+3)",
			"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
			"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
		}  
--]]
-------------체크 라디오버튼
--[[
		    g_pRadioButton_check2 = g_pUIDialog:CreateRadioButton()
			g_pUIDialog:AddControl( g_pRadioButton_check2 )
			g_pRadioButton_check2:SetFixOverByCheck( true )
			g_pRadioButton_check2:SetShowOffBGByCheck( true )
			g_pRadioButton_check2:SetName( "pvp_player_check2" )
			g_pRadioButton_check2:SetNormalTex( "DLG_ui_button08.tga", "radio_normal" )
			g_pRadioButton_check2:SetOverTex( "DLG_ui_button08.tga", "radio_over" )
			g_pRadioButton_check2:SetCheckedTex( "DLG_ui_button08.tga", "radio_over" )
			g_pRadioButton_check2:SetBGPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(18,137)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
			g_pRadioButton_check2:SetBGMouseOverPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(18,137)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_check2:SetRBPoint
			{

		 		USE_TEXTURE_SIZE	= FALSE,

		 		"LEFT_TOP		= D3DXVECTOR2(18,137)",
				"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,137+15)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}

			g_pRadioButton_check2:SetCheckPoint
			{

		 		"LEFT_TOP		= D3DXVECTOR2(18,137)",
		 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}


			g_pRadioButton_check2:SetDisabledPoint
			{
				"LEFT_TOP		= D3DXVECTOR2(18,137)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
				CHANGE_TIME		= 0.0,
			}
		  g_pRadioButton_check2:SetGroupID(1)
		  g_pRadioButton_check2:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_1"] )
--]]
-------------------3대3 SET
-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 155,
	ADD_SIZE_Y = -1,
	--"LEFT_TOP		= D3DXVECTOR2(16,153+3)",
	"LEFT_TOP		= D3DXVECTOR2(16,142+3)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}

------------3대3
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_13716, --"3 대 3 데스 매치",
	--MSG 			= STR_ID_12337, --"3 대 3",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	--"POS 			= D3DXVECTOR2(95,159+3)",
	"POS 			= D3DXVECTOR2(95,152+3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  
-------------체크 라디오버튼
    g_pRadioButton_check3 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButton_check3 )
	g_pRadioButton_check3:SetFixOverByCheck( true )
	g_pRadioButton_check3:SetShowOffBGByCheck( true )
	g_pRadioButton_check3:SetName( "pvp_player_check3" )
	g_pRadioButton_check3:SetNormalTex( "DLG_ui_button08.tga", "radio_normal" )
	g_pRadioButton_check3:SetOverTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check3:SetCheckedTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check3:SetBGPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,159)",
		"LEFT_TOP		= D3DXVECTOR2(18,152)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check3:SetBGMouseOverPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,159)",
		"LEFT_TOP		= D3DXVECTOR2(18,152)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check3:SetRBPoint
	{
 		USE_TEXTURE_SIZE	= FALSE,
 		--"LEFT_TOP		= D3DXVECTOR2(18,159)",
		--"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,137+15+22)",
		"LEFT_TOP		= D3DXVECTOR2(18,152)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,152+15)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check3:SetCheckPoint
	{
 		--"LEFT_TOP		= D3DXVECTOR2(18,159)",
		"LEFT_TOP		= D3DXVECTOR2(18,152)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButton_check3:SetDisabledPoint
	{
		--"LEFT_TOP		= D3DXVECTOR2(18,159)",
		"LEFT_TOP		= D3DXVECTOR2(18,152)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
		CHANGE_TIME		= 0.0,
	}
  g_pRadioButton_check3:SetGroupID(1)
  g_pRadioButton_check3:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_1"] )

----------3:3 안내글
 g_pStatic_PVP:AddString
{
	--MSG 			= STR_ID_13717, --"3:3으로 겨루어 6킬을 먼저 \n달성하는 편이 승리합니다 \n\n       의 보상이 큰 편입니다",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,187+6)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
 
--[[ 
   g_pStatic_PVP:AddString
{
	MSG 			= "AP/RP",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,235)",
	"COLOR			= D3DXCOLOR(0.9,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
--]]
 
  
--[[  
--------------------------난이도 전체선택
-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )
g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 160,
	"LEFT_TOP		= D3DXVECTOR2(14,180+4)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}



------------인원
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_12354, --"모드",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(16,187+4)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.6,0.9)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

-------------------팀매치  SET
------------팀매치
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_12338, --"팀 매치",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(95,210+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  

-------------체크 라디오버튼
    g_pRadioButton_check4 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButton_check4 )
	g_pRadioButton_check4:SetFixOverByCheck( true )
	g_pRadioButton_check4:SetShowOffBGByCheck( true )
	g_pRadioButton_check4:SetName( "pvp_mode_check1" )
	g_pRadioButton_check4:SetNormalTex( "DLG_ui_button08.tga", "radio_normal" )
	g_pRadioButton_check4:SetOverTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check4:SetCheckedTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check4:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(18,212)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check4:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(18,212)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check4:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(18,212)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,212+15)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check4:SetCheckPoint
	{

 		"LEFT_TOP		= D3DXVECTOR2(18,212)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButton_check4:SetDisabledPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(18,212)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
		CHANGE_TIME		= 0.0,
	}
  g_pRadioButton_check4:SetGroupID(2)
  g_pRadioButton_check4:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_2"] )
-------------------데스 매치
-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )
g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line:SetPoint
{
    ADD_SIZE_X = 155,
	ADD_SIZE_Y = -1,
	"LEFT_TOP		= D3DXVECTOR2(16,210+17+5)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}

------------데스 매치
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_12339, --"데스 매치",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(95,209+22+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  
-------------체크 라디오버튼
    g_pRadioButton_check5 = g_pUIDialog:CreateRadioButton()
	g_pUIDialog:AddControl( g_pRadioButton_check5 )
	g_pRadioButton_check5:SetFixOverByCheck( true )
	g_pRadioButton_check5:SetShowOffBGByCheck( true )
	g_pRadioButton_check5:SetName( "pvp_mode_check2" )
	g_pRadioButton_check5:SetNormalTex( "DLG_ui_button08.tga", "radio_normal" )
	g_pRadioButton_check5:SetOverTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check5:SetCheckedTex( "DLG_ui_button08.tga", "radio_over" )
	g_pRadioButton_check5:SetBGPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(18,212+22)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check5:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(18,212+22)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check5:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(18,212+22)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(18+15,212+15+22)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check5:SetCheckPoint
	{

 		"LEFT_TOP		= D3DXVECTOR2(18,212+22)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButton_check5:SetDisabledPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(18,212+22)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
		CHANGE_TIME		= 0.0,
	}
  g_pRadioButton_check5:SetGroupID(2)
  g_pRadioButton_check5:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_2"] )
  --]]
  
  
--[[
-------------------비활성화시
---------------------인원_BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(16,110+3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 51,
	"LEFT_TOP		= D3DXVECTOR2(16,116+4)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1= g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_bottom" )
g_pPicture_bg1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,171+4)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------난이도_BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(16,205+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 29,
	"LEFT_TOP		= D3DXVECTOR2(16,212+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1= g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49.TGA", "NEW_BOX_BG_bottom" )
g_pPicture_bg1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(16,245+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


--------------신청하기
g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "StartMatch" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON19.tga", "PVP_START_NORMAL" )
g_pButtonstart:SetOverTex( "DLG_UI_BUTTON19.tga", "PVP_START_OVER" )
g_pButtonstart:SetDownTex( "DLG_UI_BUTTON19.tga", "PVP_START_OVER" )
g_pButtonstart:SetDisableTex( "DLG_UI_BUTTON19.tga", "PVP_START_NOACTIVE" )
g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,285-3-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,285-2-15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_START_MATCH"] )

-----------------------파티만들기
g_pButtonMAKE_PARTY = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMAKE_PARTY )
g_pButtonMAKE_PARTY:SetName( "CreatePvpParty" )
g_pButtonMAKE_PARTY:SetNormalTex( "DLG_UI_BUTTON19.tga", "MAKE_NORMAL" )
g_pButtonMAKE_PARTY:SetOverTex( "DLG_UI_BUTTON19.tga", "MAKE_OVER" )
g_pButtonMAKE_PARTY:SetDownTex( "DLG_UI_BUTTON19.tga", "MAKE_OVER" )
g_pButtonMAKE_PARTY:SetDisableTex( "DLG_UI_BUTTON19.tga", "MAKE_GRAY" )
g_pButtonMAKE_PARTY:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMAKE_PARTY:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,341-2-27+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMAKE_PARTY:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,341-2-26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMAKE_PARTY:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMAKE_PARTY:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_CREATE_PARTY"] )


-----------------------파티탈퇴   (   파장, 파티원 공용)
g_pButtonleave = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonleave )
g_pButtonleave:SetName( "LeavePvpParty" )
g_pButtonleave:SetNormalTex( "DLG_UI_BUTTON19.tga", "LEAVE_NORMAL" )
g_pButtonleave:SetOverTex( "DLG_UI_BUTTON19.tga", "LEAVE_OVER" )
g_pButtonleave:SetDownTex( "DLG_UI_BUTTON19.tga", "LEAVE_OVER" )
g_pButtonleave:SetDisableTex( "DLG_UI_BUTTON19.tga", "LEAVE_GRAY" )
g_pButtonleave:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,341-2-27+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,341-2-26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleave:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_LEAVE_PARTY"] )


----------------------대기 취소
g_pButtonCANCLE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCANCLE )
g_pButtonCANCLE:SetName( "CancelMatch" )
g_pButtonCANCLE:SetNormalTex( "DLG_UI_BUTTON19.tga", "WAIT_CANCLE_NORMAL" )
g_pButtonCANCLE:SetOverTex( "DLG_UI_BUTTON19.tga", "WAIT_CANCLE_OVER" )
g_pButtonCANCLE:SetDownTex( "DLG_UI_BUTTON19.tga", "WAIT_CANCLE_OVER" )
g_pButtonCANCLE:SetDisableTex( "DLG_UI_BUTTON19.tga", "WAIT_CANCLE_GRAY" )
g_pButtonCANCLE:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCANCLE:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13-3+4,341-2-27+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCANCLE:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13-2+4,341-2-26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCANCLE:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13+4,341-26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCANCLE:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_CANCEL_MATCH"] )


--------대기중 STATIC
g_pStatic_WAITTING = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_WAITTING )
g_pStatic_WAITTING:SetName( "WAITTING" )

-----------------대기중입니다
g_pPicture_WAITTING_BG = g_pUIDialog:CreatePicture()
g_pStatic_WAITTING:AddPicture( g_pPicture_WAITTING_BG )
g_pPicture_WAITTING_BG:SetTex( "DLG_UI_BUTTON19.tga", "PVP_START_WAITTING" )
g_pPicture_WAITTING_BG:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(13+4,285-15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_WAITTING_BG:SetIndex(1)

--------대기 예상시간
g_pStatic_WAITTING:AddString
{
	--MSG 			= "대기예상",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(43+8,275+3)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  
--[[
------------대기시간 (GetString(7))
g_pStatic_WAITTING:AddString
{
	--MSG 			= --"00:00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(102+8,275+3)",
	"COLOR			= D3DXCOLOR(0.9,0.1,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 

--------경과시간
g_pStatic_WAITTING:AddString
{
	MSG 			= "경과시간",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(43+8,293+3)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  

------------대기시간 (GetString(7))
g_pStatic_WAITTING:AddString
{
	MSG 			= --"00:00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(102+8,293+3)",
	"COLOR			= D3DXCOLOR(0.9,0.1,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
--]]