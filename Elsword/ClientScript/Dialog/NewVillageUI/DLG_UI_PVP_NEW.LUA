-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_UI_Party_PVP" )
g_pUIDialog:SetPos( 0, 0 )
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
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "PVP_BG_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(794,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "DUNGEON_BG_MIDDLE" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 363-35,
	"LEFT_TOP		= D3DXVECTOR2(794,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "DUNGEON_BG_BOTTOM" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(794,530-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------난이도_BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(805,198+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 60,
	"LEFT_TOP		= D3DXVECTOR2(805,198+7+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1= g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_BOTTOM" )
g_pPicture_bg1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(805,264+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--설명 BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_TOP" )
g_pPicture_bg1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(805,198+80+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 57+35,
	"LEFT_TOP		= D3DXVECTOR2(805,198+6+81+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1= g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_BOTTOM" )
g_pPicture_bg1:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(805,263+140+31-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )
g_pPicture_line:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_line:SetPoint
{
   ADD_SIZE_X=34,
	"LEFT_TOP		= D3DXVECTOR2(805,195)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )
g_pPicture_line:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_line:SetPoint
{
   ADD_SIZE_X=34,
	"LEFT_TOP		= D3DXVECTOR2(805,445-35)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,0.5)",
	CHANGE_TIME		= 0.0,
}

---------------------버튼 BG
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_TOP" )
g_pPicture_bg2:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(805,430+22-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_MIDDLE" )
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 68,
	"LEFT_TOP		= D3DXVECTOR2(805,430+7+22-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_BOTTOM" )
g_pPicture_bg2:SetPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(805,510-3+19-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------exit버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Close_Window" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "X_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(988+4,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
 
	"LEFT_TOP		= D3DXVECTOR2(988+4,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(988+4+1,125+15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )


---------------- 도움말 버튼 
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Button_Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "Help_Normal" )
g_pButton_Help:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "Help_Over" )
g_pButton_Help:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "Help_Over" )
g_pButton_Help:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(967+3,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(967+3,125+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(967+3+1,125+15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(30)

------------대전 설정 버튼
g_pButton_Setting = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Setting )
g_pButton_Setting:SetName( "pvpSetting" )
g_pButton_Setting:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_SET_NORMAL" )
g_pButton_Setting:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_SET_OVER" )
g_pButton_Setting:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_SET_OVER" )
g_pButton_Setting:SetDisableTex( "DLG_UI_Button19_NEW.tga", "PVP_SET_NORMAL" )
g_pButton_Setting:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(804,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Setting:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(804,164)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Setting:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(804+1,164+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Setting:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(803,162)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Setting:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING"] )


-----------bar
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_PVP:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_line:SetPoint
{
   ADD_SIZE_X=28,
	"LEFT_TOP		= D3DXVECTOR2(808,257)",
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
	"POS 			= D3DXVECTOR2(808,200)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  

-------------------1대1 SET
------------1대1
g_pStatic_PVP:AddString
{
	MSG 			= STR_ID_13714, --"1 대 1 매치",
	--MSG 			= "1 대 1 매치",
	--MSG 			= STR_ID_12335, --"1 대 1",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(912,224+5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,0.9)",
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

		"LEFT_TOP		= D3DXVECTOR2(816,222+5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check1:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(816,222+5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check1:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(816,222+5)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(816+15,222+15+5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check1:SetCheckPoint
	{

 		"LEFT_TOP		= D3DXVECTOR2(816,222+5)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButton_check1:SetDisabledPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(816,222+5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check1:SetGroupID(1)
g_pRadioButton_check1:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_1"] )
-------------------3대3 SET

------------3대3
g_pStatic_PVP:AddString
{
	--MSG 			= "3 대 3 데스매치",
	MSG 			= STR_ID_13716, --"3 대 3 데스매치",
	--MSG 			= STR_ID_12337, --"3 대 3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(912,224+49-5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,0.9)",
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

		"LEFT_TOP		= D3DXVECTOR2(816,248+23-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pRadioButton_check3:SetBGMouseOverPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(816,248+23-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check3:SetRBPoint
	{

 		USE_TEXTURE_SIZE	= FALSE,

 		"LEFT_TOP		= D3DXVECTOR2(816,248+23-5)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(816+15,248+23+15-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	g_pRadioButton_check3:SetCheckPoint
	{

 		"LEFT_TOP		= D3DXVECTOR2(816,248+23-5)",
 		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pRadioButton_check3:SetDisabledPoint
	{
		"LEFT_TOP		= D3DXVECTOR2(816,248+23-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
		CHANGE_TIME		= 0.0,
	}
  g_pRadioButton_check3:SetGroupID(1)
  g_pRadioButton_check3:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_1"] )

----------3:3 안내글
 g_pStatic_PVP:AddString
{
    MSG 			= "3:3으로 겨루어 6킬을 먼저 \n달성하는 편이 승리합니다 \n\nAP와 RP의 보상이 큰 편입니다",
	--MSG 			= STR_ID_13717, --"3:3으로 겨루어 6킬을 먼저 \n달성하는 편이 승리합니다 \n\n       의 보상이 큰 편입니다",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(816,346-35)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
 
 
--------------신청하기
g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "StartMatch" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_START_NORMAL" )
g_pButtonstart:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_START_OVER" )
g_pButtonstart:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_START_OVER" )
g_pButtonstart:SetDisableTex( "DLG_UI_BUTTON19_NEW.tga", "PVP_START_NORMAL" )
g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(810,455+7-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(810,455+7-35)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(810+1,455+7+1-35)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDisablePoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(810,455+7-35)",
	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_START_MATCH"] )

