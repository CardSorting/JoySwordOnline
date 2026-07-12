-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 120116 김석근, barSize 조절
dlg_ui_option_etc__barSize = 40
dlg_ui_option_etc__buttonMoveX = 70
dlg_ui_option_etc__rBMoveX = 40

g_pStaticetc= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticetc )
g_pStaticetc:SetName( "Option_Window_Other" )

-----------------    
g_pStatic_auto = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_auto )
g_pStatic_auto:SetName( "auto_Camera" )

g_pStatic_auto:AddString
{
	MSG 			= STR_ID_1312,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,93)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----------------------on
g_pStatic_on= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_on )
g_pStatic_on:SetName( "onCamera" )

g_pStatic_on:AddString
{
	MSG 			= STR_ID_2606,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200+25+dlg_ui_option_etc__buttonMoveX,94)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "Option_Window_Dynamic_Camera_On" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,92)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(196+25+dlg_ui_option_etc__buttonMoveX,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,92)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetGroupID( 91 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_DYNAMIC_CAMERA_ON"] )

------------------off
g_pStatic_off= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_off )
g_pStatic_off:SetName( "offCamera" )

g_pStatic_off:AddString
{
	MSG 			= STR_ID_2607,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(271+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,94)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "Option_Window_Dynamic_Camera_Off" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonon:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,92)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(267+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,92)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetGroupID( 91 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_DYNAMIC_CAMERA_OFF"] )

---------------------플레이 가이드
g_pStatic_auto = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_auto )
g_pStatic_auto:SetName( "auto_Guide" )

g_pStatic_auto:AddString
{
	MSG 			= STR_ID_1313,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,120)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----------------------on
g_pStatic_on= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_on )
g_pStatic_on:SetName( "onGuide" )

g_pStatic_on:AddString
{
	MSG 			= STR_ID_2606,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200+25+dlg_ui_option_etc__buttonMoveX,121)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "Option_Window_Play_Guide_On" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonon:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(196+25+dlg_ui_option_etc__buttonMoveX,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetGroupID( 92 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_PLAY_GUIDE_ON"] )
g_pStatic_off= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_off )
g_pStatic_off:SetName( "offGuide" )

g_pStatic_off:AddString
{
	MSG 			= STR_ID_2607,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(271+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,121)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "Option_Window_Play_Guide_Off" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonon:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(267+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetGroupID( 92 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_PLAY_GUIDE_OFF"] )

---------------------수직동기화
g_pStatic_FRAME = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_FRAME )
g_pStatic_FRAME:SetName( "FRAME" )

g_pStatic_FRAME:AddString
{
	MSG 			= STR_ID_13651,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,120+26)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----------------------on
g_pStatic_on= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_on )
g_pStatic_on:SetName( "onVerticalSync" )

g_pStatic_on:AddString
{
	MSG 			= STR_ID_2606,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200+25+dlg_ui_option_etc__buttonMoveX,121+26)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "Option_Vertical_Sync_On" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonon:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118+26)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(196+25+dlg_ui_option_etc__buttonMoveX,134+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(180+25+dlg_ui_option_etc__buttonMoveX,118+26)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetGroupID( 93 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OHTER_VERTICAL_SYNC_ON"] )

g_pStatic_off= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_off )
g_pStatic_off:SetName( "offVerticalSync" )

g_pStatic_off:AddString
{
	MSG 			= STR_ID_2607,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(271+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,121+26)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "Option_Vertical_Sync_Off" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonon:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118+26)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(267+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,134+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(251+dlg_ui_option_etc__buttonMoveX+dlg_ui_option_etc__rBMoveX,118+26)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonon:SetGroupID( 93 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OHTER_VERTICAL_SYNC_OFF"] )

-------------------bar
g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticetc:AddPicture( g_pPicture_line1 )
g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 300+60+dlg_ui_option_etc__barSize,
	"LEFT_TOP		= D3DXVECTOR2(24,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticetc:AddPicture( g_pPicture_line2 )
g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 300+60+dlg_ui_option_etc__barSize,
	"LEFT_TOP		= D3DXVECTOR2(24,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticetc:AddPicture( g_pPicture_line3 )
g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 300+60+dlg_ui_option_etc__barSize,
	"LEFT_TOP		= D3DXVECTOR2(24,205+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticetc:AddPicture( g_pPicture_line4 )
g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 300+60+dlg_ui_option_etc__barSize,
	"LEFT_TOP		= D3DXVECTOR2(24,250+20+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticetc:AddPicture( g_pPicture_line5 )
g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 300+60+dlg_ui_option_etc__barSize,
	"LEFT_TOP		= D3DXVECTOR2(24,139+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------   캐릭터 정보 표시  --------------------------------
--------------------------------------------------------------------------------
g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "Charac_Info" )

g_pStaticCharacter:AddString
{
	MSG 			= STR_ID_1314,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,145+26)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticSign= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSign )
g_pStaticSign:SetName( "g_pStaticSign" )

-----------캐릭터 레벨표시
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticSign:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(32,165+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "Level" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,165+26)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(47,180+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(30,163+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_LEVEL_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_LEVEL_OFF"] )
g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "Charac_Level" )

g_pStaticCharacter:AddString
{
	MSG 			= STR_ID_1315,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(52,166+26)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

----------------------대전랭크표시
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticSign:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(171+25,165+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "PVP" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(171+25,165+26)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(186+25,180+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(169+25,164+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_PVP_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_PVP_OFF"] )


g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "pvp_rank" )

g_pStaticCharacter:AddString
{
	MSG 			= STR_ID_1316,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(188+25,166+26)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--[[
----------------------길드 표시
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticSign:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(32,185)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "CheckBox_Guild" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,185)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(47,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(30,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_GUILD_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_GUILD_OFF"] )

g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "Static_Guild" )

g_pStaticCharacter:AddString
{
	MSG 			= STR_ID_1317,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(51,185)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--]]

-----------------자신의 정보 보지 않기
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticSign:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(32,185+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "Nothing" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,185+26)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(47,200+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(30,183+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_NOTHING_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHARINFO_NOTHING_OFF"] )
g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "Info_hide" )

g_pStaticCharacter:AddString
{
	MSG 			= STR_ID_1318,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(51,185+26)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

--------------------------   프라이버시  --------------------------------
--------------------------------------------------------------------------------
g_pStaticPrivacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPrivacy )
g_pStaticPrivacy:SetName( "Privacy" )

g_pStaticPrivacy:AddString
{
	MSG 			= STR_ID_1319,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,211+22)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----------파티초대 거부
g_pStaticParty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty )
g_pStaticParty:SetName( "StaticPartyVeto" )

g_pStaticParty:AddString
{
	MSG 			= STR_ID_1320,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(52,232+26-6)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticParty:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(32,231+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "party_veto" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,231+26-6)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(47,246+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(30,230+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_PARTY_VETO_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_PARTY_VETO_OFF"] )

----------------------친구요청 거부
g_pStaticFriend= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFriend )
g_pStaticFriend:SetName( "StaticFriendVeto" )

g_pStaticFriend:AddString
{
	MSG 			= STR_ID_1321,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(188+25,231+26-6)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticFriend:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(171+25,231+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "friend_veto" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(171+25,231+26-6)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(186+25,246+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(169+25,230+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_FRIEND_VETO_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_FRIEND_VETO_OFF"] )

-----------거래요청 거부
g_pStaticTrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTrade )
g_pStaticTrade:SetName( "StaticTradeVeto" )

g_pStaticTrade:AddString
{
	MSG 			= STR_ID_2608,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(52,232+20+26-6)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticTrade:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(32,231+20+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "Trade_veto" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,231+20+26-6)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(47,246+20+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(30,230+20+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_PERSONAL_TRADE_VETO_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_PERSONAL_TRADE_VETO_OFF"] )

----------------------길드초대 거부
g_pStaticGuild= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild )
g_pStaticGuild:SetName( "StaticGuildVeto" )

g_pStaticGuild:AddString
{
	MSG 			= STR_ID_4600,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(188+25,231+20+26-6)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(171+25,231+20+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "guild_veto" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(171+25,231+20+26-6)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(186+25,246+20+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(169+25,230+20+26-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_GUILD_VETO_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_GUILD_VETO_OFF"] )

--[[ #define ADDED_RELATIONSHIP_SYSTEM
--요 위치에다가 해주송
-----------결혼 알림  거부
g_pStaticTrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTrade )
g_pStaticTrade:SetName( "StaticCoupleVeto" )

g_pStaticTrade:AddString
{
	MSG 			= STR_ID_24598,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(52,232+20+26-6+6+22)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticTrade:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(32,231+20+26-6+6+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxInfo = g_pUIDialog:CreateCheckBox()
g_pCheckBoxInfo:SetName( "couple_veto" )
g_pUIDialog:AddControl( g_pCheckBoxInfo )
g_pCheckBoxInfo:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxInfo:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxInfo:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,231+20+26-6+6+22)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(47,246+20+26-6+6+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxInfo:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(30,230+20+26-6+6+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxInfo:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_COUPLE_VETO_ON"] )
g_pCheckBoxInfo:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_COUPLE_VETO_OFF"] )
--]]

--------------------------------SKILL_CUT_IN_STATE--------------------------
g_pStatic_SkillCutin= g_pUIDialog:CreateStatic()
g_pStatic_SkillCutin:SetName( "SkillCutin" )
g_pUIDialog:AddControl( g_pStatic_SkillCutin )
g_pStatic_SkillCutin:AddString
{	
	--MSG 			= STR_ID_20328,--(스킬컷신)
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(22,121+180-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
----SCSS_PARTY_MEMBER
g_pStatic_SkillCutin:AddString
{	
	--MSG 			= STR_ID_20329,--(파티전체)
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(131,121+180-8)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---SCSS_ONESELF
g_pStatic_SkillCutin:AddString
{	
	--MSG 			= STR_ID_20330,--(자신만)
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(249,121+180-8)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---SCSS_HIDE
g_pStatic_SkillCutin:AddString
{	
	--MSG 			= STR_ID_20331,--(보지않기)
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(344,121+180-6)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
---SCSS_PARTY_MEMBER
g_pRadioButtonPartyMember = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPartyMember )
g_pRadioButtonPartyMember:SetFixOverByCheck( true ) 
g_pRadioButtonPartyMember:SetShowOffBGByCheck( true )
g_pRadioButtonPartyMember:SetName( "Option_SkillCutin_PartyMember" )
g_pRadioButtonPartyMember:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonPartyMember:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonPartyMember:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonPartyMember:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110,118+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPartyMember:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110,118+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPartyMember:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110,118+180-8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125,133+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPartyMember:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110,118+180-8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPartyMember:SetGroupID( 26 )
g_pRadioButtonPartyMember:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OHTER_SCSS_PARTY_MEMBER"] )
----SCSS_ONESELF
g_pRadioButtonOneSelf = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOneSelf )
g_pRadioButtonOneSelf:SetFixOverByCheck( true ) 
g_pRadioButtonOneSelf:SetShowOffBGByCheck( true )
g_pRadioButtonOneSelf:SetName( "Option_SkillCutin_OneSelf" )
g_pRadioButtonOneSelf:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonOneSelf:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonOneSelf:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonOneSelf:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(230,118+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonOneSelf:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(230,118+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonOneSelf:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(230,118+180-8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(245,133+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonOneSelf:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(230,118+180-8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonOneSelf:SetGroupID( 26 )
g_pRadioButtonOneSelf:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OHTER_SCSS_ONESELF"] )
---SCSS_HIDE    
g_pRadioButtonHide = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonHide )
g_pRadioButtonHide:SetFixOverByCheck( true ) 
g_pRadioButtonHide:SetShowOffBGByCheck( true )
g_pRadioButtonHide:SetName( "Option_SkillCutin_Hide" )
g_pRadioButtonHide:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonHide:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonHide:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonHide:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,118+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonHide:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(325,118+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonHide:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(325,118+180-8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(340,133+180-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonHide:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(325,118+180-8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonHide:SetGroupID( 26 )
g_pRadioButtonHide:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OHTER_SCSS_HIDE"] )
xposadd = 120

--------------------------------스킬슬롯 UI 타입 B--------------------------
g_pStatic_SkillSlotUI = g_pUIDialog:CreateStatic()
g_pStatic_SkillSlotUI:SetName( "SkillSlotUI" )
g_pUIDialog:AddControl( g_pStatic_SkillSlotUI )
g_pStatic_SkillSlotUI:AddString
{		
	MSG 			= STR_ID_21156,--스킬슬롯 UI
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(22,121+180+8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
g_pStatic_SkillSlotUI:AddString
{		
	MSG 			= STR_ID_21157,--타입 A
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(131+xposadd,121+180+8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 
g_pStatic_SkillCutin:AddString
{		
	MSG 			= STR_ID_21158,--타입 B
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(210+xposadd+5,121+180+8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----g_pRadioButton_Tybe_A
g_pRadioButton_Tybe_A = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Tybe_A )
g_pRadioButton_Tybe_A:SetFixOverByCheck( true ) 
g_pRadioButton_Tybe_A:SetShowOffBGByCheck( true )
g_pRadioButton_Tybe_A:SetName( "Option_SkillUI_TypeA" )
g_pRadioButton_Tybe_A:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButton_Tybe_A:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_A:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_A:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+xposadd,118+180+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+xposadd,118+180+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110+xposadd,118+180+8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125+xposadd,133+180+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110+xposadd,118+180+8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_A:SetGroupID( 27 )
g_pRadioButton_Tybe_A:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SKILL_UI_TYPE_A"] )
----g_pRadioButton_Tybe_B
g_pRadioButton_Tybe_B = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Tybe_B )
g_pRadioButton_Tybe_B:SetFixOverByCheck( true ) 
g_pRadioButton_Tybe_B:SetShowOffBGByCheck( true )
g_pRadioButton_Tybe_B:SetName( "Option_SkillUI_TypeB" )
g_pRadioButton_Tybe_B:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButton_Tybe_B:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_B:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButton_Tybe_B:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(191+xposadd+5,118+180+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(191+xposadd+5,118+180+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(191+xposadd+5,118+180+8)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(206+xposadd+5,133+180+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(191+xposadd+5,118+180+8)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Tybe_B:SetGroupID( 27 )
g_pRadioButton_Tybe_B:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SKILL_UI_TYPE_B"] )