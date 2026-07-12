-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-----------------사운드 메뉴---------------------
g_pStaticOption_Window_Sound_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOption_Window_Sound_Menu )
g_pStaticOption_Window_Sound_Menu:SetName( "Option_Window_Sound" )






g_pPictureOption_Sound_BGM_Font= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_BGM_Font)

g_pPictureOption_Sound_BGM_Font:SetTex( "DLG_Common_Texture09.tga", "BGM"  )

g_pPictureOption_Sound_BGM_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOption_Sound_Effect_Sound_Font= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_Effect_Sound_Font)

g_pPictureOption_Sound_Effect_Sound_Font:SetTex( "DLG_Common_Texture09.tga", "Effect_Sound"  )

g_pPictureOption_Sound_Effect_Sound_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
















-----------배경음 비활성화-----------





g_pPictureOption_Sound_GaugeBar_UnSelect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_GaugeBar_UnSelect)

g_pPictureOption_Sound_GaugeBar_UnSelect:SetTex( "DLG_Common_Texture09.tga", "Sound_Gauge_UnVitality"  )

g_pPictureOption_Sound_GaugeBar_UnSelect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(387,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureOption_Sound_Max_Font_Unselect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_Max_Font_Unselect)

g_pPictureOption_Sound_Max_Font_Unselect:SetTex( "DLG_Common_Texture09.tga", "Max_UnVitality"  )

g_pPictureOption_Sound_Max_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOption_Sound_Min_Font_Unselect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_Min_Font_Unselect)

g_pPictureOption_Sound_Min_Font_Unselect:SetTex( "DLG_Common_Texture09.tga", "Min_UnVitality"  )

g_pPictureOption_Sound_Min_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








------------배경음 활성화---------




g_pPictureOption_Sound_GaugeBar_select= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_GaugeBar_select)

g_pPictureOption_Sound_GaugeBar_select:SetTex( "DLG_Common_Texture09.tga", "Sound_Gauge_Vitality"  )

g_pPictureOption_Sound_GaugeBar_select:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(387,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOption_Sound_Max_Font_select= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_Max_Font_select)

g_pPictureOption_Sound_Max_Font_select:SetTex( "DLG_Common_Texture09.tga", "Max_Vitality"  )

g_pPictureOption_Sound_Max_Font_select:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOption_Sound_Min_Font_select= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Sound_Min_Font_select)

g_pPictureOption_Sound_Min_Font_select:SetTex( "DLG_Common_Texture09.tga", "Min_Vitality"  )

g_pPictureOption_Sound_Min_Font_select:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









--------------효과음 비활성화-----------








g_pPictureOption_Effect_Sound_Max_Font_Unselect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Effect_Sound_Max_Font_Unselect)

g_pPictureOption_Effect_Sound_Max_Font_Unselect:SetTex( "DLG_Common_Texture09.tga", "Max_UnVitality"  )

g_pPictureOption_Effect_Sound_Max_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureOption_Effect_Sound_Min_Font_Unselect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Effect_Sound_Min_Font_Unselect)

g_pPictureOption_Effect_Sound_Min_Font_Unselect:SetTex( "DLG_Common_Texture09.tga", "Min_UnVitality"  )

g_pPictureOption_Effect_Sound_Min_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------효과음 활성화---------------







pPictureOption_Effect_Sound_GaugeBar_UnSelect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( pPictureOption_Effect_Sound_GaugeBar_UnSelect)

pPictureOption_Effect_Sound_GaugeBar_UnSelect:SetTex( "DLG_Common_Texture09.tga", "Sound_Gauge_Vitality"  )

pPictureOption_Effect_Sound_GaugeBar_UnSelect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(387,402)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureOption_Effect_Sound_Max_Font_Unselect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Effect_Sound_Max_Font_Unselect)

g_pPictureOption_Effect_Sound_Max_Font_Unselect:SetTex( "DLG_Common_Texture09.tga", "Max_Vitality"  )

g_pPictureOption_Effect_Sound_Max_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOption_Effect_Sound_Min_Font_Unselect= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOption_Effect_Sound_Min_Font_Unselect)

g_pPictureOption_Effect_Sound_Min_Font_Unselect:SetTex( "DLG_Common_Texture09.tga", "Min_Vitality"  )

g_pPictureOption_Effect_Sound_Min_Font_Unselect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(364,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









      -------------------------------폰트-----------------






    g_pStaticOption_Window_Sound_Menu:AddString
    {
 	 MSG    		 = STR_ID_2600,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(560,326)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 


    g_pStaticOption_Window_Sound_Menu:AddString
    {
 	 MSG    		 = STR_ID_2600,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(560,380)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 


 
 
 	g_pCheckBoxNoSound = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxNoSound:SetName( "NoSound" )
	g_pUIDialog:AddControl( g_pCheckBoxNoSound )

	g_pCheckBoxNoSound:SetNormalTex( "DLG_Common_Texture09.TGA", "Option_Not_Vitality" )



g_pCheckBoxNoSound:SetCheckedTex( "DLG_Common_Texture09.TGA", "Option_Vitality" )


g_pCheckBoxNoSound:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(610,322)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(629,341)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxNoSound:SetCheckPoint
{
  "LEFT_TOP		= D3DXVECTOR2(610,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxNoSound:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_BGM_OFF"] )
g_pCheckBoxNoSound:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_BGM_ON"] )




g_pCheckBoxNoEffect_Sound = g_pUIDialog:CreateCheckBox()
g_pCheckBoxNoEffect_Sound:SetName( "NoEffect_Sound" )
g_pUIDialog:AddControl( g_pCheckBoxNoEffect_Sound )

g_pCheckBoxNoEffect_Sound:SetNormalTex( "DLG_Common_Texture09.TGA", "Option_Not_Vitality" )



g_pCheckBoxNoEffect_Sound:SetCheckedTex( "DLG_Common_Texture09.TGA", "Option_Vitality" )


g_pCheckBoxNoEffect_Sound:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(610,376)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(629,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxNoEffect_Sound:SetCheckPoint
{
  "LEFT_TOP		= D3DXVECTOR2(610,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pCheckBoxNoEffect_Sound:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_SOUND_OFF"] )
g_pCheckBoxNoEffect_Sound:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_SOUND_ON"] )










g_pSliderBGM_Gauge = g_pUIDialog:CreateSlider()
g_pUIDialog:AddControl( g_pSliderBGM_Gauge )
g_pSliderBGM_Gauge:SetName( "Slider_BGM_Volume" )

g_pSliderBGM_Gauge:SetBGTex( "DLG_Common_Button00.tga", "invisible" )
g_pSliderBGM_Gauge:SetButtonTex( "DLG_Common_Texture09.tga", "Sound_Cursor_Vitality" )

g_pSliderBGM_Gauge:SetPos( 395,352 )
g_pSliderBGM_Gauge:SetSize( 228, 12 )

g_pSliderBGM_Gauge:SetRange( -3000, -500 )
g_pSliderBGM_Gauge:SetValue( -1500 )


g_pSliderBGM_Gauge:SetCustomMsgValueChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_BGM_VOLUME"] )


g_pSliderEffect_Sound = g_pUIDialog:CreateSlider()
g_pUIDialog:AddControl( g_pSliderEffect_Sound )
g_pSliderEffect_Sound:SetName( "Slider_Sound_Volume" )

g_pSliderEffect_Sound:SetBGTex( "DLG_Common_Button00.tga", "invisible" )
g_pSliderEffect_Sound:SetButtonTex( "DLG_Common_Texture09.tga", "Sound_Cursor_Vitality" )

g_pSliderEffect_Sound:SetPos( 395,405 )
g_pSliderEffect_Sound:SetSize( 228, 12 )

g_pSliderEffect_Sound:SetRange( -3000, -500 )
g_pSliderEffect_Sound:SetValue( -1500 )

g_pSliderEffect_Sound:SetCustomMsgValueChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_SOUND_VOLUME"] )





---3D SOUND

g_pPicture3Dsound_Font= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPicture3Dsound_Font)

g_pPicture3Dsound_Font:SetTex( "DLG_Common_Texture09.tga", "3DSOUND"  )

g_pPicture3Dsound_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 3d text   on/ off
g_pPictureOn_Font= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOn_Font)

g_pPictureOn_Font:SetTex( "DLG_Common_New_Texture11.tga", "ON"  )

g_pPictureOn_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(450,435)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOff_Font= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Sound_Menu:AddPicture( g_pPictureOff_Font)

g_pPictureOff_Font:SetTex( "DLG_Common_New_Texture11.tga", "OFF"  )

g_pPictureOff_Font:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(567,435)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---버튼

--on

g_pRadioButton3DSound_on = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton3DSound_on )

g_pRadioButton3DSound_on:SetFixOverByCheck( true )
g_pRadioButton3DSound_on:SetShowOffBGByCheck( true )

g_pRadioButton3DSound_on:SetName( "3DSound_on" )

g_pRadioButton3DSound_on:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButton3DSound_on:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButton3DSound_on:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButton3DSound_on:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(475+18,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3DSound_on:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(475+18,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3DSound_on:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(475+18,431)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(495+18,450)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3DSound_on:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(475+18,431)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton3DSound_on:SetGroupID( 6 )
g_pRadioButton3DSound_on:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_ENABLE_3D_SOUND_ON"] ) 



--off


g_pRadioButton3DSound_off = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton3DSound_off )

g_pRadioButton3DSound_off:SetFixOverByCheck( true )
g_pRadioButton3DSound_off:SetShowOffBGByCheck( true )

g_pRadioButton3DSound_off:SetName( "3DSound_off" )

g_pRadioButton3DSound_off:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButton3DSound_off:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButton3DSound_off:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButton3DSound_off:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(581+28,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3DSound_off:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(581+28,431)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3DSound_off:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(581+28,431)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(600+28,450)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton3DSound_off:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(581+28,431)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton3DSound_off:SetGroupID( 6 )
g_pRadioButton3DSound_off:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND_ENABLE_3D_SOUND_OFF"] ) 
 


