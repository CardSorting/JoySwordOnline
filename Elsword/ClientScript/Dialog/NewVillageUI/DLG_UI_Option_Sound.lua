-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pStaticsound= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticsound )
g_pStaticsound:SetName( "Option_Window_Sound" )



-------------------배경음



g_pStatic_bgm= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_bgm )
g_pStatic_bgm:SetName( "bgm" )

g_pStatic_bgm:AddString
{
	MSG 			= STR_ID_1330,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(27,93)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



------------------             배경음       min / max

g_pPicture_gauge = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_gauge )

g_pPicture_gauge:SetTex( "DLG_UI_Common_Texture01.TGA", "gauge_bar_left" )

g_pPicture_gauge:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_gauge = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_gauge )

g_pPicture_gauge:SetTex( "DLG_UI_Common_Texture01.TGA", "gauge_bar_middle" )

g_pPicture_gauge:SetPoint
{
     ADD_SIZE_X = 223,
	"LEFT_TOP		= D3DXVECTOR2(60,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_gauge = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_gauge )

g_pPicture_gauge:SetTex( "DLG_UI_Common_Texture01.TGA", "gauge_bar_right" )

g_pPicture_gauge:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(284,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_min = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_min )

g_pPicture_min:SetTex( "DLG_UI_Title01.TGA", "min" )

g_pPicture_min:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_max = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_max )

g_pPicture_max:SetTex( "DLG_UI_Title01.TGA", "max" )

g_pPicture_max:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(296,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pSliderBGM_Gauge = g_pUIDialog:CreateSlider()
g_pUIDialog:AddControl( g_pSliderBGM_Gauge )
g_pSliderBGM_Gauge:SetName( "Slider_BGM_Volume" )

g_pSliderBGM_Gauge:SetBGTex( "DLG_Common_Button00.tga", "invisible" )
g_pSliderBGM_Gauge:SetButtonTex( "DLG_UI_Common_Texture02.tga", "Sound_Cursor_Vitality" )

g_pSliderBGM_Gauge:SetPos( 55,108 )
g_pSliderBGM_Gauge:SetSize( 234, 25 )

g_pSliderBGM_Gauge:SetRange( -3000 , -500 )
g_pSliderBGM_Gauge:SetValue( -2000 )


g_pSliderBGM_Gauge:SetCustomMsgValueChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_BGM_VOLUME"] )




------------- 배경음 끄기

g_pStatic_bgmoff= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_bgmoff )
g_pStatic_bgmoff:SetName( "bgmoff" )

g_pStatic_bgmoff:AddString
{
	MSG 			= STR_ID_1331,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(265,95)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



-------------------------           배경음 끄기 체크박스



g_pPicture_off = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_off )

g_pPicture_off:SetTex( "DLG_UI_Button08.TGA", "radio_normal" )

g_pPicture_off:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(303,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------체크 표시
	g_pCheckBoxbgm = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxbgm:SetName( "NoSound" )
	g_pUIDialog:AddControl( g_pCheckBoxbgm )

	g_pCheckBoxbgm:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxbgm:SetCheckedTex( "DLG_UI_Button08.TGA", "radio_over" )


g_pCheckBoxbgm:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(303,92)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(319,108)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxbgm:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(303,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxbgm:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_BGM_OFF"] )
g_pCheckBoxbgm:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_BGM_ON"] )







-------------------효과음



g_pStatic_effect= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_effect )
g_pStatic_effect:SetName( "effectSound" )

g_pStatic_effect:AddString
{
	MSG 			= STR_ID_1332,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(27,147)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




------------------       효과음    min / max




g_pPicture_gauge = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_gauge )

g_pPicture_gauge:SetTex( "DLG_UI_Common_Texture01.TGA", "gauge_bar_left" )

g_pPicture_gauge:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_gauge = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_gauge )

g_pPicture_gauge:SetTex( "DLG_UI_Common_Texture01.TGA", "gauge_bar_middle" )

g_pPicture_gauge:SetPoint
{
     ADD_SIZE_X = 223,
	"LEFT_TOP		= D3DXVECTOR2(60,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_gauge = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_gauge )

g_pPicture_gauge:SetTex( "DLG_UI_Common_Texture01.TGA", "gauge_bar_right" )

g_pPicture_gauge:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(284,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pSliderEFFECT_Gauge = g_pUIDialog:CreateSlider()
g_pUIDialog:AddControl( g_pSliderEFFECT_Gauge )
g_pSliderEFFECT_Gauge:SetName( "Slider_Sound_Volume" )

g_pSliderEFFECT_Gauge:SetBGTex( "DLG_Common_Button00.tga", "invisible" )
g_pSliderEFFECT_Gauge:SetButtonTex( "DLG_UI_Common_Texture02.tga", "Sound_Cursor_Vitality" )

g_pSliderEFFECT_Gauge:SetPos( 55,161 )
g_pSliderEFFECT_Gauge:SetSize( 234, 25 )

g_pSliderEFFECT_Gauge:SetRange( -3000 , -500 )
g_pSliderEFFECT_Gauge:SetValue( -800 )


g_pSliderEFFECT_Gauge:SetCustomMsgValueChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_SOUND_VOLUME"] )





------------- 효과음 끄기

g_pStatic_effectoff= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_effectoff )
g_pStatic_effectoff:SetName( "effectoff" )

g_pStatic_effectoff:AddString
{
	MSG 			= STR_ID_1331,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(265,148)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}







-------------------------           효과음 끄기 체크박스



g_pPicture_off = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_off )

g_pPicture_off:SetTex( "DLG_UI_Button08.TGA", "radio_normal" )

g_pPicture_off:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(303,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------체크 표시
	g_pCheckBoxeffect = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxeffect:SetName( "NoEffect_Sound" )
	g_pUIDialog:AddControl( g_pCheckBoxeffect )

	g_pCheckBoxeffect:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxeffect:SetCheckedTex( "DLG_UI_Button08.TGA", "radio_over" )


g_pCheckBoxeffect:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(303,145)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(319,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxeffect:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(303,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxeffect:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_SOUND_OFF"] )
g_pCheckBoxeffect:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_SOUND_ON"] )





g_pPicture_min = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_min )

g_pPicture_min:SetTex( "DLG_UI_Title01.TGA", "min" )

g_pPicture_min:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_max = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_max )

g_pPicture_max:SetTex( "DLG_UI_Title01.TGA", "max" )

g_pPicture_max:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(297,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------bar



g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,191)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticsound:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------    3D 사운드





g_pStatic_3dsound= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_3dsound )
g_pStatic_3dsound:SetName( "3dsound" )

g_pStatic_3dsound:AddString
{
	MSG 			= STR_ID_1333,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(27,201)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


---------------                      ON               --------------------


g_pStatic_on= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_on )
g_pStatic_on:SetName( "static_3DSound_on" )

g_pStatic_on:AddString
{
	MSG 			= STR_ID_2606,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(122,201)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}







g_pRadioButton3don = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton3don )

g_pRadioButton3don:SetFixOverByCheck( true ) 
g_pRadioButton3don:SetShowOffBGByCheck( true )

g_pRadioButton3don:SetName( "3DSound_on" )

g_pRadioButton3don:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )


g_pRadioButton3don:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButton3don:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButton3don:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3don:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3don:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(155,198)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(167,213)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3don:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(155,198)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton3don:SetGroupID( 24 )
g_pRadioButton3don:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_ENABLE_3D_SOUND_ON"] )






-------------------           OFF              ---------------------





g_pStatic_off= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_off )
g_pStatic_off:SetName( "static_3DSound_off" )

g_pStatic_off:AddString
{
	MSG 			= STR_ID_2607,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(227,201)",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






g_pRadioButton3doff = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton3doff )

g_pRadioButton3doff:SetFixOverByCheck( true ) 
g_pRadioButton3doff:SetShowOffBGByCheck( true )

g_pRadioButton3doff:SetName( "3DSound_off" )

g_pRadioButton3doff:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )


g_pRadioButton3doff:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButton3doff:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )


g_pRadioButton3doff:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(260,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3doff:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(260,198)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3doff:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(260,198)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(272,213)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3doff:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(260,198)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton3doff:SetGroupID( 24 )
g_pRadioButton3doff:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_ENABLE_3D_SOUND_OFF"] )

