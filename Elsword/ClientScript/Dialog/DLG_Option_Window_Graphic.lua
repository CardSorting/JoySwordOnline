-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.







g_pButtonGraphic_Option_Arrow_Left = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGraphic_Option_Arrow_Left )
g_pButtonGraphic_Option_Arrow_Left:SetName( "ButtonLeft_AutoSetLevel" )
g_pButtonGraphic_Option_Arrow_Left:SetNormalTex( "DLG_Common_Texture09.tga", "Arrow_Left_Normal" )

g_pButtonGraphic_Option_Arrow_Left:SetOverTex( "DLG_Common_Texture09.tga", "Arrow_Left_Over" )

g_pButtonGraphic_Option_Arrow_Left:SetDownTex( "DLG_Common_Texture09.tga", "Arrow_Left_Over" )

g_pButtonGraphic_Option_Arrow_Left:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(448,318)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGraphic_Option_Arrow_Left:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(448,318)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGraphic_Option_Arrow_Left:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(449,319)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}


g_pButtonGraphic_Option_Arrow_Left:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_AUTOSET_LEFT"] )







g_pButtonGraphic_Option_Arrow_Right = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGraphic_Option_Arrow_Right )
g_pButtonGraphic_Option_Arrow_Right:SetName( "ButtonRight_AutoSetLevel" )
g_pButtonGraphic_Option_Arrow_Right:SetNormalTex( "DLG_Common_Texture09.tga", "Arrow_Right_Normal" )

g_pButtonGraphic_Option_Arrow_Right:SetOverTex( "DLG_Common_Texture09.tga", "Arrow_Right_Over" )

g_pButtonGraphic_Option_Arrow_Right:SetDownTex( "DLG_Common_Texture09.tga", "Arrow_Right_Over" )

g_pButtonGraphic_Option_Arrow_Right:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(645,318)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGraphic_Option_Arrow_Right:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(645,318)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonGraphic_Option_Arrow_Right:SetDownPoint
{
  ADD_SIZE_X = -2,
  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(646,319)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}  



g_pButtonGraphic_Option_Arrow_Right:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_AUTOSET_RIGHT"] )



----------------------------유닛------------------------------------------------



------------------------라디오 버튼--------------------------------------------- 







g_pRadioButtonOption_Graphic_Unit_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Unit_Button1 )

g_pRadioButtonOption_Graphic_Unit_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Unit_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Unit_Button1:SetName( "Option_Window_Unit_High" )

g_pRadioButtonOption_Graphic_Unit_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,349+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pRadioButtonOption_Graphic_Unit_Button1:SetGroupID( 5 )
--g_pRadioButtonOption_Graphic_Unit_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT"] ) 
g_pRadioButtonOption_Graphic_Unit_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT_HIGH"] ) 












g_pRadioButtonOption_Graphic_Unit_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Unit_Button2 )

g_pRadioButtonOption_Graphic_Unit_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Unit_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Unit_Button2:SetName( "Option_Window_Unit_Middle" )

g_pRadioButtonOption_Graphic_Unit_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,349+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button2:SetGroupID( 5 )
--g_pRadioButtonOption_Graphic_Unit_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT"] ) 
g_pRadioButtonOption_Graphic_Unit_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT_MEDIUM"] ) 











g_pRadioButtonOption_Graphic_Unit_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Unit_Button3 )

g_pRadioButtonOption_Graphic_Unit_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Unit_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Unit_Button3:SetName( "Option_Window_Unit_Low" )

g_pRadioButtonOption_Graphic_Unit_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Unit_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,349+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Unit_Button3:SetGroupID( 5 )
--g_pRadioButtonOption_Graphic_Unit_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT"] ) 
g_pRadioButtonOption_Graphic_Unit_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_UNIT_LOW"] ) 



--------------------------------------------------------------------------------







------------------------라디오 버튼--------------------------------------------- 




g_pRadioButtonOption_Graphic_Texture_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Texture_Button1 )

g_pRadioButtonOption_Graphic_Texture_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Texture_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Texture_Button1:SetName( "Option_Window_Texture_High" )

g_pRadioButtonOption_Graphic_Texture_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,376)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,376+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,376)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonOption_Graphic_Texture_Button1:SetGroupID( 2 )
g_pRadioButtonOption_Graphic_Texture_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_TEXTURE_HIGH"] ) 






g_pRadioButtonOption_Graphic_Texture_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Texture_Button2 )

g_pRadioButtonOption_Graphic_Texture_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Texture_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Texture_Button2:SetName( "Option_Window_Texture_Middle" )

g_pRadioButtonOption_Graphic_Texture_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,376)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,376+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,376)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pRadioButtonOption_Graphic_Texture_Button2:SetGroupID( 2 )
g_pRadioButtonOption_Graphic_Texture_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_TEXTURE_MEDIUM"] ) 







g_pRadioButtonOption_Graphic_Texture_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Texture_Button3 )

g_pRadioButtonOption_Graphic_Texture_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Texture_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Texture_Button3:SetName( "Option_Window_Texture_Low" )

g_pRadioButtonOption_Graphic_Texture_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Texture_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,376)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,376)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,376+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Texture_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,376)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonOption_Graphic_Texture_Button3:SetGroupID( 2 )
g_pRadioButtonOption_Graphic_Texture_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_TEXTURE_LOW"] ) 


--------------------------------------------------------------------------------




------------------------라디오 버튼--------------------------------------------- 






g_pRadioButtonOption_Graphic_BackGround_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_BackGround_Button1 )

g_pRadioButtonOption_Graphic_BackGround_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_BackGround_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_BackGround_Button1:SetName( "Option_Window_BackGround_High" )

g_pRadioButtonOption_Graphic_BackGround_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,403)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,403+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,403)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button1:SetGroupID( 3 )
g_pRadioButtonOption_Graphic_BackGround_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_BACKGROUND_HIGH"] ) 






g_pRadioButtonOption_Graphic_BackGround_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_BackGround_Button2 )

g_pRadioButtonOption_Graphic_BackGround_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_BackGround_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_BackGround_Button2:SetName( "Option_Window_BackGround_Middle" )

g_pRadioButtonOption_Graphic_BackGround_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,403)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,403+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,403)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button2:SetGroupID( 3 )
g_pRadioButtonOption_Graphic_BackGround_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_BACKGROUND_MEDIUM"] ) 







g_pRadioButtonOption_Graphic_BackGround_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_BackGround_Button3 )

g_pRadioButtonOption_Graphic_BackGround_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_BackGround_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_BackGround_Button3:SetName( "Option_Window_BackGround_Low" )

g_pRadioButtonOption_Graphic_BackGround_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_BackGround_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,403)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,403+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,403)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_BackGround_Button3:SetGroupID( 3 )
g_pRadioButtonOption_Graphic_BackGround_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_BACKGROUND_LOW"] ) 


--------------------------------------------------------------------------------








------------------------라디오 버튼--------------------------------------------- 






g_pRadioButtonOption_Graphic_Effect_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Effect_Button1 )

g_pRadioButtonOption_Graphic_Effect_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Effect_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Effect_Button1:SetName( "Option_Window_Effect_High" )

g_pRadioButtonOption_Graphic_Effect_Button1:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button1:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button1:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(449,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(449,430)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(449+19,430+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(449,430)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button1:SetGroupID( 4 )
g_pRadioButtonOption_Graphic_Effect_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_EFFECT_HIGH"] ) 









g_pRadioButtonOption_Graphic_Effect_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Effect_Button2 )

g_pRadioButtonOption_Graphic_Effect_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Effect_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Effect_Button2:SetName( "Option_Window_Effect_Middle" )

g_pRadioButtonOption_Graphic_Effect_Button2:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button2:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button2:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513,430)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+19,430+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513,430)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonOption_Graphic_Effect_Button2:SetGroupID( 4 )
g_pRadioButtonOption_Graphic_Effect_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_EFFECT_MEDIUM"] ) 








g_pRadioButtonOption_Graphic_Effect_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Graphic_Effect_Button3 )

g_pRadioButtonOption_Graphic_Effect_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Graphic_Effect_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Graphic_Effect_Button3:SetName( "Option_Window_Effect_Low" )

g_pRadioButtonOption_Graphic_Effect_Button3:SetNormalTex( "DLG_Common_Texture09.tga", "Option_Not_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button3:SetOverTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button3:SetCheckedTex( "DLG_Common_Texture09.tga", "Option_Vitality" )


g_pRadioButtonOption_Graphic_Effect_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(578,430)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(578+19,430+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Graphic_Effect_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(578,430)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonOption_Graphic_Effect_Button3:SetGroupID( 4 )
g_pRadioButtonOption_Graphic_Effect_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC_EFFECT_LOW"] ) 


--------------------------------------------------------------------------------



g_pStaticOption_Graphic_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOption_Graphic_Window )
g_pStaticOption_Graphic_Window:SetName( "Option_Window_Graphic" )







g_pPictureAuto_Setup= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureAuto_Setup)

g_pPictureAuto_Setup:SetTex( "DLG_Common_Texture09.tga", "Auto_Setup"  )

g_pPictureAuto_Setup:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,324)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCharacter= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureCharacter)

g_pPictureCharacter:SetTex( "DLG_Common_Texture09.tga", "Character"  )

g_pPictureCharacter:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTexture= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureTexture)

g_pPictureTexture:SetTex( "DLG_Common_Texture09.tga", "TexTure"  )

g_pPictureTexture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureBackGround)

g_pPictureBackGround:SetTex( "DLG_Common_Texture09.tga", "BackGround"  )

g_pPictureBackGround:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,405)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureEffect= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureEffect)

g_pPictureEffect:SetTex( "DLG_Common_Texture09.tga", "Effect"  )

g_pPictureEffect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,432)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureResolution= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureResolution)

g_pPictureResolution:SetTex( "DLG_Common_Texture09.tga", "Resolution"  )

g_pPictureResolution:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(360,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAuto_Setup_Bar= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureAuto_Setup_Bar)

g_pPictureAuto_Setup_Bar:SetTex( "DLG_Common_Texture09.tga", "Making_Window9"  )

g_pPictureAuto_Setup_Bar:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(477,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAuto_Setup_Bar2= g_pUIDialog:CreatePicture()
g_pStaticOption_Graphic_Window:AddPicture( g_pPictureAuto_Setup_Bar2)

g_pPictureAuto_Setup_Bar2:SetTex( "DLG_Common_Texture09.tga", "Making_Window9"  )

g_pPictureAuto_Setup_Bar2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(477,456)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticOption_Graphic_Window:AddString
{
	-- MSG    		 = "1 ",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(555,325)",
	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


    -------------------------------폰트-----------------





    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1135,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,352)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 


    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1135,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,379)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 


    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1135,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,406)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 


    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1135,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(475,432)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 
	 
	 


    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1136,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,352)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }




    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1136,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,379)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }




    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1136,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,406)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }



    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1136,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(539,432)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 


    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1137,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,352)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }



    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1137,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,379)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }




    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1137,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,406)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 


    g_pStaticOption_Graphic_Window:AddString
    {
 	 MSG    		 = STR_ID_1137,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(604,432)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 
	 











IncludeLua( "DLG_Option_Window_Resolution.lua" )







