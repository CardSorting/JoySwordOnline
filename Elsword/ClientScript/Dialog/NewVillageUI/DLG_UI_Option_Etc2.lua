-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- #ifdef 조이패드

g_pStaticInput = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInput )
g_pStaticInput:SetName( "Option_Window_Input" )

-----------------------조이스틱
g_pStatic_Joy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Joy )
g_pStatic_Joy:SetName( "Joy_Enable" )
g_pStatic_Joy:AddString
{
	MSG 			= STR_ID_5122,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32,93)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-----------------------on

g_pStatic_Joy_On= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Joy_On )
g_pStatic_Joy_On:SetName( "Joy_On" )
g_pStatic_Joy_On:AddString
{
	MSG 			= STR_ID_2606,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(135,94)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}  

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "JoyStick_On" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(115,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(115,93)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(131,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(115,93)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetGroupID( 25 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_ENABLE"] )

------------------off

g_pStatic_off= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_off )
g_pStatic_off:SetName( "Joy_Off" )
g_pStatic_off:AddString
{
	MSG 			= STR_ID_2607,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(206,94)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 

g_pRadioButtonon = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonon )
g_pRadioButtonon:SetFixOverByCheck( true ) 
g_pRadioButtonon:SetShowOffBGByCheck( true )
g_pRadioButtonon:SetName( "JoyStick_Off" )
g_pRadioButtonon:SetNormalTex( "DLG_UI_Button08.tga", "radio_normal" )
g_pRadioButtonon:SetOverTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetCheckedTex( "DLG_UI_Button08.tga", "radio_over" )
g_pRadioButtonon:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(186,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(186,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(186,93)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(202,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(186,93)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonon:SetGroupID( 25 )
g_pRadioButtonon:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_DISABLE"] )

--- 키설정 버튼

g_pButtonusual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonusual )
g_pButtonusual:SetName( "Key_Config" )
g_pButtonusual:SetNormalTex( "DLG_UI_Button03_A.tga", "KEY_CONFIG_NORMAL" )
g_pButtonusual:SetOverTex( "DLG_UI_Button03_A.TGA", "KEY_CONFIG_OVER" )
g_pButtonusual:SetDownTex( "DLG_UI_Button03_A.TGA", "KEY_CONFIG_OVER" )
g_pButtonusual:SetDisableTex( "DLG_UI_Button03_A.TGA", "KEY_CONFIG_NORMAL" )
g_pButtonusual:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(206 + 50,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(206 + 50 - 2,91 - 2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(206 + 50 - 1,91 - 1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetDisablePoint
{
    "LEFT_TOP		= D3DXVECTOR2(206 + 50,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_OPEN"] )

-------------------bar

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticInput:AddPicture( g_pPicture_line1 )
g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line1:SetPoint
{
      ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- #endif 조이패드

-- ifdef IDENTITY_CONFIRM ------------- 방침미 신분인증 버튼
--[[
g_pButtonIdentity_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pButtonIdentity_Name )
g_pButtonIdentity_Name:SetName( "Identity_Confirm_Name" )
g_pButtonIdentity_Name:AddString
{
	MSG 			= STR_ID_11549,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32-2,126)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pButtonIdentity = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonIdentity )
g_pButtonIdentity:SetName( "Identity_Confirm" )
g_pButtonIdentity:SetNormalTex( "DLG_UI_Button08_A.tga", "IDENTITY_CONFIRM_NORMAL" )
g_pButtonIdentity:SetOverTex( "DLG_UI_Button08_A.tga", "IDENTITY_CONFIRM_OVER" )
g_pButtonIdentity:SetDownTex( "DLG_UI_Button08_A.TGA", "IDENTITY_CONFIRM_OVER" )
g_pButtonIdentity:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(244-7,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIdentity:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(244 -3-7-1,122 -2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIdentity:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(244 -3-7-1 ,122 -2  +1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------bar

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticInput:AddPicture( g_pPicture_line1 )
g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_line1:SetPoint
{
      ADD_SIZE_X = 395,
	"LEFT_TOP		= D3DXVECTOR2(24,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIdentity:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_IDENTITY"] )
--]]
-- endif IDENTITY_CONFIRM