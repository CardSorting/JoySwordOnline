-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticauto = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticauto )
g_pStaticauto:SetName( "Option_Window_Graphic" )


-----------------    자동설정단계
g_pStatic_auto = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_auto )
g_pStatic_auto:SetName( "auto" )
g_pStatic_auto:AddString
{
	MSG 			= STR_ID_1322,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(26-2,94)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

----------------         자동설정단계 박스
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_UI_Common_Texture08.TGA", "auto_box_left" )
g_pPicture_box1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(116+10,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_UI_Common_Texture08.TGA", "auto_box_middle" )
g_pPicture_box1:SetPoint
{
     ADD_SIZE_X = 25 ,
	"LEFT_TOP		= D3DXVECTOR2(121+10,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box1)
g_pPicture_box1:SetTex( "DLG_UI_Common_Texture08.TGA", "auto_box_right" )
g_pPicture_box1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(147+10,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------          ↑   단계 수치
g_pStatic_num= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_num )
g_pStatic_num:SetName( "Option_Window_Graphic_Num" )
g_pStatic_num:AddString
{
	-- MSG 			= "3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(133+10,92)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------------BLANK
g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )
g_pPicture_blank:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(174+10,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_blank )
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )
g_pPicture_blank:SetPoint
{
     ADD_SIZE_X = 119 +90,
	"LEFT_TOP		= D3DXVECTOR2(179+10,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_blank)
g_pPicture_blank:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )
g_pPicture_blank:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(299+10+90,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_blank_line = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_blank_line)
g_pPicture_blank_line:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_line" )
g_pPicture_blank_line:SetPoint
{
     ADD_SIZE_X = 125+90,
	"LEFT_TOP		= D3DXVECTOR2(176+10,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------     -      +    커서      ---------------------
g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "ButtonLeft_AutoSetLevel" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )
g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )
g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )
g_pButton_minus:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(156+10,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(155+10,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(155+1+10,88+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_AUTOSET_LEFT"] )

g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "ButtonRight_AutoSetLevel" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )
g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )
g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )
g_pButton_plus:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(307+10+90,89-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(306+10+90,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(306+1+10+90,88+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_AUTOSET_RIGHT"] )

------------------------------------                   유닛                      -----------------------------------------------
g_pStatic_you= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_you )
g_pStatic_you:SetName( "you" )
g_pStatic_you:AddString
{
	MSG 			= STR_ID_1323,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,121)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----낮음
g_pPicture_low = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_low )
g_pPicture_low:SetTex( "DLG_UI_Title01_A.TGA", "low" )
g_pPicture_low:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+137,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonlow )
g_pRadioButtonlow:SetFixOverByCheck( true ) 
g_pRadioButtonlow:SetShowOffBGByCheck( true )
g_pRadioButtonlow:SetName( "Option_Window_Unit_Low" )
g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonlow:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110+137,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125+137,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110+137,118)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetGroupID( 2 )
g_pRadioButtonlow:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT_LOW"] )

---중간
g_pPicture_middle = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_middle )
g_pPicture_middle:SetTex( "DLG_UI_Title01_A.TGA", "middle" )
g_pPicture_middle:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+110,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonmiddle )
g_pRadioButtonmiddle:SetFixOverByCheck( true ) 
g_pRadioButtonmiddle:SetShowOffBGByCheck( true )
g_pRadioButtonmiddle:SetName( "Option_Window_Unit_Middle" )
g_pRadioButtonmiddle:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonmiddle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonmiddle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonmiddle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(198+110,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(213+110,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(198+110,118)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetGroupID( 2 )
g_pRadioButtonmiddle:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT_MEDIUM"] )

---높음
g_pPicture_high = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_high )
g_pPicture_high:SetTex( "DLG_UI_Title01_A.TGA", "high" )
g_pPicture_high:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+100,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhigh )
g_pRadioButtonhigh:SetFixOverByCheck( true ) 
g_pRadioButtonhigh:SetShowOffBGByCheck( true )
g_pRadioButtonhigh:SetName( "Option_Window_Unit_High" )
g_pRadioButtonhigh:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonhigh:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonhigh:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonhigh:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(279+100,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(294+100,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(279+100,118)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetGroupID( 2 )
g_pRadioButtonhigh:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT_HIGH"] )

------------------------                                        텍스쳐                         ---------------------------------------------
g_pStatic_texture= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_texture )
g_pStatic_texture:SetName( "texture" )

g_pStatic_texture:AddString
{
	MSG 			= STR_ID_1324,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,146)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----낮음
g_pPicture_low = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_low )
g_pPicture_low:SetTex( "DLG_UI_Title01_A.TGA", "low" )
g_pPicture_low:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+137,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonlow )
g_pRadioButtonlow:SetFixOverByCheck( true ) 
g_pRadioButtonlow:SetShowOffBGByCheck( true )
g_pRadioButtonlow:SetName( "Option_Window_Texture_Low" )
g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonlow:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110+137,144)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125+137,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110+137,144)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetGroupID( 3 )
g_pRadioButtonlow:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_TEXTURE_LOW"] )
 
---            중간
g_pPicture_middle = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_middle )
g_pPicture_middle:SetTex( "DLG_UI_Title01_A.TGA", "middle" )
g_pPicture_middle:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+110,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonmiddle )
g_pRadioButtonmiddle:SetFixOverByCheck( true ) 
g_pRadioButtonmiddle:SetShowOffBGByCheck( true )
g_pRadioButtonmiddle:SetName( "Option_Window_Texture_Middle" )
g_pRadioButtonmiddle:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonmiddle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonmiddle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonmiddle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(198+110,144)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(213+110,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(198+110,144)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetGroupID( 3 )
g_pRadioButtonmiddle:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_TEXTURE_MEDIUM"] )

---높음
g_pPicture_high = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_high )
g_pPicture_high:SetTex( "DLG_UI_Title01_A.TGA", "high" )

g_pPicture_high:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+100,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhigh )
g_pRadioButtonhigh:SetFixOverByCheck( true ) 
g_pRadioButtonhigh:SetShowOffBGByCheck( true )
g_pRadioButtonhigh:SetName( "Option_Window_Texture_High" )
g_pRadioButtonhigh:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonhigh:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonhigh:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonhigh:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(279+100,144)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(294+100,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(279+100,144)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetGroupID( 3 )
g_pRadioButtonhigh:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_TEXTURE_HIGH"] )

------------------------                           배경                              ------------------------
g_pStatic_background= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_background )  
g_pStatic_background:SetName( "background" )

g_pStatic_background:AddString
{
	MSG 			= STR_ID_1199,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,172)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----낮음 
g_pPicture_low = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_low )
g_pPicture_low:SetTex( "DLG_UI_Title01_A.TGA", "low" )

g_pPicture_low:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+137,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonlow )
g_pRadioButtonlow:SetFixOverByCheck( true ) 
g_pRadioButtonlow:SetShowOffBGByCheck( true )
g_pRadioButtonlow:SetName( "Option_Window_BackGround_Low" )
g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonlow:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110+137,170)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125+137,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110+137,170)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetGroupID( 4 )
g_pRadioButtonlow:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_BACKGROUND_LOW"] )


---중간
g_pPicture_middle = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_middle )
g_pPicture_middle:SetTex( "DLG_UI_Title01_A.TGA", "middle" )

g_pPicture_middle:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+110,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonmiddle )
g_pRadioButtonmiddle:SetFixOverByCheck( true ) 
g_pRadioButtonmiddle:SetShowOffBGByCheck( true )
g_pRadioButtonmiddle:SetName( "Option_Window_BackGround_Middle" )
g_pRadioButtonmiddle:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonmiddle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonmiddle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonmiddle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(198+110,170)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(213+110,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(198+110,170)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetGroupID( 4 )
g_pRadioButtonmiddle:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_BACKGROUND_MEDIUM"] )

---높음
g_pPicture_high = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_high )
g_pPicture_high:SetTex( "DLG_UI_Title01_A.TGA", "high" )

g_pPicture_high:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+100,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhigh )
g_pRadioButtonhigh:SetFixOverByCheck( true ) 
g_pRadioButtonhigh:SetShowOffBGByCheck( true )
g_pRadioButtonhigh:SetName( "Option_Window_BackGround_High" )
g_pRadioButtonhigh:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonhigh:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonhigh:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonhigh:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,170)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(279+100,170)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(294+100,186)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(279+100,170)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetGroupID( 4 )
g_pRadioButtonhigh:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_BACKGROUND_HIGH"] )

------------------------                    이팩트                       ------------------------
g_pStatic_effect= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_effect )
g_pStatic_effect:SetName( "effect" )

g_pStatic_effect:AddString
{
	MSG 			= STR_ID_1325,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,199)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----낮음 
g_pPicture_low = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_low )
g_pPicture_low:SetTex( "DLG_UI_Title01_A.TGA", "low" )
g_pPicture_low:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+137,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonlow )
g_pRadioButtonlow:SetFixOverByCheck( true ) 
g_pRadioButtonlow:SetShowOffBGByCheck( true )
g_pRadioButtonlow:SetName( "Option_Window_Effect_Low" )
g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonlow:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110+137,196)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(125+137,212)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110+137,196)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetGroupID( 5 )
g_pRadioButtonlow:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_EFFECT_LOW"] )

---중간
g_pPicture_middle = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_middle )
g_pPicture_middle:SetTex( "DLG_UI_Title01_A.TGA", "middle" )

g_pPicture_middle:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+110,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonmiddle )
g_pRadioButtonmiddle:SetFixOverByCheck( true ) 
g_pRadioButtonmiddle:SetShowOffBGByCheck( true )
g_pRadioButtonmiddle:SetName( "Option_Window_Effect_Middle" )
g_pRadioButtonmiddle:SetNormalTex( "DLG_UI_Button08.tga", "radio_Normal" )
g_pRadioButtonmiddle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonmiddle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonmiddle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(198+110,196)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(213+110,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(198+110,196)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetGroupID( 5 )
g_pRadioButtonmiddle:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_EFFECT_MEDIUM"] )

---높음
g_pPicture_high = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_high )
g_pPicture_high:SetTex( "DLG_UI_Title01_A.TGA", "high" )

g_pPicture_high:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+100,199)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhigh )
g_pRadioButtonhigh:SetFixOverByCheck( true ) 
g_pRadioButtonhigh:SetShowOffBGByCheck( true )
g_pRadioButtonhigh:SetName( "Option_Window_Effect_High" )
g_pRadioButtonhigh:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonhigh:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonhigh:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonhigh:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(279+100,196)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(294+100,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(279+100,196)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetGroupID( 5 )
g_pRadioButtonhigh:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_EFFECT_HIGH"] )

------------------------          캐릭터 표시 제한     ------------------------
g_pStatic_limite= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_limite )
g_pStatic_limite:SetName( "limite" )

g_pStatic_limite:AddString
{
	MSG 			= STR_ID_1326,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,249-25)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

----낮음 
g_pPicture_low = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_low )
g_pPicture_low:SetTex( "DLG_UI_Title01_A.TGA", "low" )

g_pPicture_low:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+137,250-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonlow )
g_pRadioButtonlow:SetFixOverByCheck( true ) 
g_pRadioButtonlow:SetShowOffBGByCheck( true )
g_pRadioButtonlow:SetName( "FieldLow" )
g_pRadioButtonlow:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonlow:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonlow:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonlow:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,247-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+137,247-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(110+137,247-25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(127+137,264-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(110+137,247-25)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonlow:SetGroupID( 6 )
g_pRadioButtonlow:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_LOW"] )

---중간
g_pPicture_middle = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_middle )
g_pPicture_middle:SetTex( "DLG_UI_Title01_A.TGA", "middle" )

g_pPicture_middle:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(217+110,250-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonmiddle )
g_pRadioButtonmiddle:SetFixOverByCheck( true ) 
g_pRadioButtonmiddle:SetShowOffBGByCheck( true )
g_pRadioButtonmiddle:SetName( "FieldMiddle" )
g_pRadioButtonmiddle:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonmiddle:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonmiddle:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonmiddle:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,247-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(198+110,247-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(198+110,247-25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(213+110,264-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(198+110,247-25)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonmiddle:SetGroupID( 6 )
g_pRadioButtonmiddle:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_MEDIUM"] )

---높음
g_pPicture_high = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_high )
g_pPicture_high:SetTex( "DLG_UI_Title01_A.TGA", "high" )

g_pPicture_high:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+100,250-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonhigh )
g_pRadioButtonhigh:SetFixOverByCheck( true ) 
g_pRadioButtonhigh:SetShowOffBGByCheck( true )
g_pRadioButtonhigh:SetName( "FieldHigh" )
g_pRadioButtonhigh:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonhigh:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonhigh:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )

g_pRadioButtonhigh:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,247-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(279+100,247-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(279+100,247-25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(294+100,264-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(279+100,247-25)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonhigh:SetGroupID( 6 )
g_pRadioButtonhigh:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_HIGH"] )

---------------------------내 파티만 보기
-----체크박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(57-30,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "FieldParty" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )
g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(57-30,249)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(72-30,264)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(55-30,247)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_friend= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_friend )
g_pStatic_friend:SetName( "OptionParty" )

g_pStatic_friend:AddString
{
	MSG 			= STR_ID_1327,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(74-28,250)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
g_pCheckBoxsecret:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_PARTY_ON"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_PARTY_OFF"] )

--------------------------SD로 보기
-----체크박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(57-30+240,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "FieldSD" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )
g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(57-30+240,249)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(72-30+240,264)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(55-30+240,247)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------SD로 보기-----
g_pStatic_SD= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SD )
g_pStatic_SD:SetName( "OptionSD" )

g_pStatic_SD:AddString
{
	MSG 			= STR_ID_1328,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(74-28+240,250)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
g_pCheckBoxsecret:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_SD_ON"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FIELD_SD_OFF"] )

---------------------------화면 번쩍임 효과 제거
-----체크박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(57-30,249+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "FlashEffect" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )
g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(57-30,249+21)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(72-30,264+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(55-30,247+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_EFFECT= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EFFECT )
g_pStatic_EFFECT:SetName( "OptionEffect" )

g_pStatic_EFFECT:AddString
{
	MSG 			= STR_ID_13650,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(74-28,250+21)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  
g_pCheckBoxsecret:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FLASH_EFFECT"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_FLASH_EFFECT"] )

---------------------------------------해상도
g_pStatic_resolusion= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_resolusion )
g_pStatic_resolusion:SetName( "resolusion" )

g_pStatic_resolusion:AddString
{
	MSG 			= STR_ID_1329,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25,277+26)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_left" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(114,272+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 198-100,
	"LEFT_TOP		= D3DXVECTOR2(119,272+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_UI_Common_Texture08.TGA", "blank_right" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(318-100,272+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line1 )
g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line2 )
g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line3 )
g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line4 )
g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,190)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line5 )
g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,217)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line6 )
g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,243)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line7 )
g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,269+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticauto:AddPicture( g_pPicture_line8 )
g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,269+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pComboBoxOption_Window_Graphic = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxOption_Window_Graphic )
g_pComboBoxOption_Window_Graphic:SetName( "Option_Resolution" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxOption_Window_Graphic:SetDropHeight( 40 )

g_pComboBoxOption_Window_Graphic:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxOption_Window_Graphic:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboBoxOption_Window_Graphic:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboBoxOption_Window_Graphic:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboBoxOption_Window_Graphic:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboBoxOption_Window_Graphic:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboBoxOption_Window_Graphic:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )
g_pComboBoxOption_Window_Graphic:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboBoxOption_Window_Graphic:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboBoxOption_Window_Graphic:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboBoxOption_Window_Graphic:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboBoxOption_Window_Graphic:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboBoxOption_Window_Graphic:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboBoxOption_Window_Graphic:InitScrollBar()

--수동으로 만들 때
g_pComboBoxOption_Window_Graphic:SetTextPos( 114, 275+26)
g_pComboBoxOption_Window_Graphic:SetTextSize( 209-17-100, 21)

--텍스트 시작 포인트
g_pComboBoxOption_Window_Graphic:SetTextStringOffsetPos( 6, 1 )
g_pComboBoxOption_Window_Graphic:SetButtonPos( 302-100, 277+26)
g_pComboBoxOption_Window_Graphic:SetButtonSize( 15, 12)

--[[
g_pComboBoxOption_Window_Graphic:AddItem( "640 × 480" )
g_pComboBoxOption_Window_Graphic:AddItem( "800 × 600" )
g_pComboBoxOption_Window_Graphic:AddItem( "1024 × 768" )
g_pComboBoxOption_Window_Graphic:AddItem( "1158 × 846" )
g_pComboBoxOption_Window_Graphic:AddItem( "1280 × 1024" )
g_pComboBoxOption_Window_Graphic:AddItem( "1600 × 1200" )
--]]
g_pComboBoxOption_Window_Graphic:SetCustomMsgSelectionChanged( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_RESOLUTION"] )

-----------창모드
g_pStaticWindow_Mode = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWindow_Mode )
g_pStaticWindow_Mode:SetName( "Static_WindowMode" )

g_pStaticWindow_Mode:AddString
{
	MSG 			= STR_ID_4771,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(74-28+240,249+21)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPictureWindow_Mode = g_pUIDialog:CreatePicture()
g_pStaticWindow_Mode:AddPicture( g_pPictureWindow_Mode )
g_pPictureWindow_Mode:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureWindow_Mode:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(57-30+240,249+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxWindow_Mode = g_pUIDialog:CreateCheckBox()
g_pCheckBoxWindow_Mode:SetName( "Window_Mode" )
g_pUIDialog:AddControl( g_pCheckBoxWindow_Mode )
g_pCheckBoxWindow_Mode:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxWindow_Mode:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxWindow_Mode:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(57-30+240,249+21)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(72-30+240,254+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxWindow_Mode:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(55-30+240,247+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxWindow_Mode:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHECK_FULLSCREEN"] )
g_pCheckBoxWindow_Mode:SetCustomMsgUnChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER_CHECK_FULLSCREEN"] )
