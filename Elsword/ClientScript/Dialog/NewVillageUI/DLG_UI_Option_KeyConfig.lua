-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticheater_use = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticheater_use )
g_pStaticheater_use:SetName( "g_pStaticheater_use" )
g_pUIDialog:SetCloseCustomUIEventID( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_CLOSE_CANCEL"])

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pUIDialog:SetPos( 196 + 95, 34 )


MOVE_ALL_X = 35
MOVE_SETTING_X = -92
MOVE_BUTTON_X = -31
-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "KeyConfig_01.tga", "KEY_CONFIG_BOARD1" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+MOVE_ALL_X,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticheater_use:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "KeyConfig_02.TGA", "KEY_CONFIG_BOARD2" )

g_pPicture_BG2:SetPoint
{	

	"LEFT_TOP		= D3DXVECTOR2(0+MOVE_ALL_X,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------------------JoyPad

--UP
g_pButtonJoyConfig = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig )
g_pButtonJoyConfig:SetName( "JoyButtonUP" )
g_pButtonJoyConfig:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig:SetNormalPoint
{
      
	  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 - 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig:AddDummyInt(0)

g_pStatic_UP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_UP )
g_pStatic_UP:SetName( "Joy0" )

g_pStatic_UP:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--DOWN
g_pButtonJoyConfig2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig2 )
g_pButtonJoyConfig2:SetName( "JoyButtonDOWN" )
g_pButtonJoyConfig2:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig2:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig2:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig2:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig2:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + 26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig2:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + 26- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig2:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + 26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig2:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + 26)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig2:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig2:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig2:AddDummyInt(1)

g_pStatic_DOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_DOWN )
g_pStatic_DOWN:SetName( "Joy1" )

g_pStatic_DOWN:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + 26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}

--LEFT
g_pButtonJoyConfig3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig3 )
g_pButtonJoyConfig3:SetName( "JoyButtonLEFT" )
g_pButtonJoyConfig3:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig3:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig3:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig3:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig3:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 2) )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig3:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 2)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig3:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 2))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig3:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 2))",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig3:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig3:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig3:AddDummyInt(2)


g_pStatic_LEFT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LEFT )
g_pStatic_LEFT:SetName( "Joy2" )

g_pStatic_LEFT:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 2))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}

--RIGHT
g_pButtonJoyConfig4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig4 )
g_pButtonJoyConfig4:SetName( "JoyButtonRIGHT" )
g_pButtonJoyConfig4:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig4:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig4:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig4:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig4:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 3))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig4:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 3)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig4:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 3))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig4:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 3))",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig4:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig4:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig4:AddDummyInt(3)

g_pStatic_RIGHT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RIGHT )
g_pStatic_RIGHT:SetName( "Joy3" )

g_pStatic_RIGHT:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 3))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}
--ATTACKZ
g_pButtonJoyConfig5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig5 )

g_pButtonJoyConfig5:SetName( "JoyButtonATTACKZ" )
g_pButtonJoyConfig5:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig5:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig5:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig5:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 4))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig5:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 4)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig5:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 4))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig5:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig5:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig5:AddDummyInt(4)

g_pStatic_ATTACKZ = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ATTACKZ )
g_pStatic_ATTACKZ:SetName( "Joy4" )

g_pStatic_ATTACKZ:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 4))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--ATTACKX
g_pButtonJoyConfig6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig6 )

g_pButtonJoyConfig6:SetName( "JoyButtonATTACKX" )
g_pButtonJoyConfig6:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig6:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig6:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig6:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 5))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig6:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 5)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig6:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 5))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig6:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig6:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig6:AddDummyInt(5)

g_pStatic_ATTACKX = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ATTACKX )
g_pStatic_ATTACKX:SetName( "Joy5" )

g_pStatic_ATTACKX:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 5))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--SPECIALA
g_pButtonJoyConfig7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig7 )

g_pButtonJoyConfig7:SetName( "JoyButtonSPECIALA" )
g_pButtonJoyConfig7:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig7:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig7:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig7:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 6))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig7:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 6)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig7:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 6))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig7:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig7:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig7:AddDummyInt(6)

g_pStatic_SPECIALA = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SPECIALA )
g_pStatic_SPECIALA:SetName( "Joy6" )

g_pStatic_SPECIALA:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 6))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--SPECIALS
g_pButtonJoyConfig8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig8 )

g_pButtonJoyConfig8:SetName( "JoyButtonSPECIALS" )
g_pButtonJoyConfig8:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig8:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig8:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig8:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 7))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig8:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 7)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig8:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 7))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig8:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig8:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig8:AddDummyInt(7)

g_pStatic_SPECIALS = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SPECIALS )
g_pStatic_SPECIALS:SetName( "Joy7" )

g_pStatic_SPECIALS:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 7))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--SPECIALD
g_pButtonJoyConfig9 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig9 )

g_pButtonJoyConfig9:SetName( "JoyButtonSPECIALD" )
g_pButtonJoyConfig9:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig9:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig9:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig9:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 8))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig9:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 8)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig9:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 8))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig9:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig9:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig9:AddDummyInt(8)

g_pStatic_SPECIALD = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SPECIALD )
g_pStatic_SPECIALD:SetName( "Joy8" )

g_pStatic_SPECIALD:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 8))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--SPECIALC
g_pButtonJoyConfig10 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig10 )

g_pButtonJoyConfig10:SetName( "JoyButtonSPECIALC" )
g_pButtonJoyConfig10:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig10:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig10:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig10:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 9))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig10:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 9)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig10:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 9))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig10:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig10:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig10:AddDummyInt(9)

g_pStatic_SPECIALC = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SPECIALC )
g_pStatic_SPECIALC:SetName( "Joy9" )

g_pStatic_SPECIALC:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 9))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--AWAKE
g_pButtonJoyConfig11 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig11 )

g_pButtonJoyConfig11:SetName( "JoyButtonAWAKE" )
g_pButtonJoyConfig11:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig11:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig11:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig11:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 10))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig11:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 10)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig11:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 10))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig11:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig11:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig11:AddDummyInt(10)

g_pStatic_AWAKE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_AWAKE )
g_pStatic_AWAKE:SetName( "Joy10" )

g_pStatic_AWAKE:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 10))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--CHANGESKILLSLOT
g_pButtonJoyConfig12 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig12 )

g_pButtonJoyConfig12:SetName( "JoyButtonCHANGESKILLSLOT" )
g_pButtonJoyConfig12:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig12:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig12:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig12:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 11))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig12:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 11)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig12:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 11))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig12:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig12:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig12:AddDummyInt(11)

g_pStatic_CHANGESKILLSLOT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_CHANGESKILLSLOT )
g_pStatic_CHANGESKILLSLOT:SetName( "Joy11" )

g_pStatic_CHANGESKILLSLOT:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 11))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--RETURN
g_pButtonJoyConfig13 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig13 )

g_pButtonJoyConfig13:SetName( "JoyButtonRETURN" )
g_pButtonJoyConfig13:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig13:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig13:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig13:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 12))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig13:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 12)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig13:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 12))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig13:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig13:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig13:AddDummyInt(12)

g_pStatic_RETURN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RETURN )
g_pStatic_RETURN:SetName( "Joy12" )

g_pStatic_RETURN:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 12))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--ESCAPE
g_pButtonJoyConfig14 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig14 )

g_pButtonJoyConfig14:SetName( "JoyButtonESCAPE" )
g_pButtonJoyConfig14:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig14:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig14:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig14:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 13))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig14:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 13)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig14:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 13))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig14:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig14:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig14:AddDummyInt(13)

g_pStatic_ESCAPE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ESCAPE )
g_pStatic_ESCAPE:SetName( "Joy13" )

g_pStatic_ESCAPE:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 13))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--READY
g_pButtonJoyConfig15 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig15 )

g_pButtonJoyConfig15:SetName( "JoyButtonREADY" )
g_pButtonJoyConfig15:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig15:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig15:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig15:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 14))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig15:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 14)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig15:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 14))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig15:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig15:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig15:AddDummyInt(14)

g_pStatic_READY = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_READY )
g_pStatic_READY:SetName( "Joy14" )

g_pStatic_READY:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 14))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--QUICKSLOT1
g_pButtonJoyConfig16 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig16 )

g_pButtonJoyConfig16:SetName( "JoyButtonQUICKSLOT1" )
g_pButtonJoyConfig16:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig16:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig16:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig16:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 15))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig16:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 15)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig16:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 15))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig16:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig16:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig16:AddDummyInt(15)

g_pStatic_QUICKSLOT1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICKSLOT1 )
g_pStatic_QUICKSLOT1:SetName( "Joy15" )

g_pStatic_QUICKSLOT1:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 15))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--QUICKSLOT2
g_pButtonJoyConfig17 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig17 )

g_pButtonJoyConfig17:SetName( "JoyButtonQUICKSLOT2" )
g_pButtonJoyConfig17:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig17:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig17:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig17:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 16))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig17:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 16)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig17:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 16))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig17:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig17:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig17:AddDummyInt(16)

g_pStatic_QUICKSLOT2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICKSLOT2 )
g_pStatic_QUICKSLOT2:SetName( "Joy16" )

g_pStatic_QUICKSLOT2:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 16))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--QUICKSLOT3
g_pButtonJoyConfig18 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig18 )

g_pButtonJoyConfig18:SetName( "JoyButtonQUICKSLOT3" )
g_pButtonJoyConfig18:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig18:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig18:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig18:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 17))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig18:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 17)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig18:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 17))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig18:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig18:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig18:AddDummyInt(17)

g_pStatic_QUICKSLOT3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICKSLOT3 )
g_pStatic_QUICKSLOT3:SetName( "Joy17" )

g_pStatic_QUICKSLOT3:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 17))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--QUICKSLOT4
g_pButtonJoyConfig19 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig19 )

g_pButtonJoyConfig19:SetName( "JoyButtonQUICKSLOT4" )
g_pButtonJoyConfig19:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig19:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig19:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig19:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig19:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 18))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig19:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 18)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig19:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 18))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig19:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 18))",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig19:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig19:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig19:AddDummyInt(18)

g_pStatic_QUICKSLOT4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICKSLOT4 )
g_pStatic_QUICKSLOT4:SetName( "Joy18" )

g_pStatic_QUICKSLOT4:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 18))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--QUICKSLOT5
g_pButtonJoyConfig20 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig20 )

g_pButtonJoyConfig20:SetName( "JoyButtonQUICKSLOT5" )
g_pButtonJoyConfig20:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig20:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig20:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig20:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig20:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 19))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig20:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 19)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig20:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 19))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig20:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 19))",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig20:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig20:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig20:AddDummyInt(19)


g_pStatic_QUICKSLOT5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICKSLOT5 )
g_pStatic_QUICKSLOT5:SetName( "Joy19" )

g_pStatic_QUICKSLOT5:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 19))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--QUICKSLOT6
g_pButtonJoyConfig21 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoyConfig21 )

g_pButtonJoyConfig21:SetName( "JoyButtonQUICKSLOT6" )
g_pButtonJoyConfig21:SetNormalTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig21:SetOverTex( "KeyConfig_02.TGA",  "KEY_BUTTON_OVER" )

g_pButtonJoyConfig21:SetDownTex( "KeyConfig_02.tga", "KEY_BUTTON_OVER" )

g_pButtonJoyConfig21:SetDisableTex( "KeyConfig_02.tga", "KEY_BUTTON_NORMAL" )

g_pButtonJoyConfig21:SetNormalPoint
{

	ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,

 	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 20))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig21:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 20)- 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig21:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355+1+MOVE_SETTING_X,89 + (26 * 20))",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoyConfig21:SetDisablePoint
{
		  ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(355+MOVE_SETTING_X,89 + (26 * 20))",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoyConfig21:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_CLICKED"] )
g_pButtonJoyConfig21:SetCustomMsgMouseRightUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_JOY_CONFIG_BUTTON_RCLICKED"] )
g_pButtonJoyConfig21:AddDummyInt(20)

g_pStatic_QUICKSLOT6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICKSLOT6 )
g_pStatic_QUICKSLOT6:SetName( "Joy20" )

g_pStatic_QUICKSLOT6:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(355 + 50+MOVE_SETTING_X,91 + (26 * 20))",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





---------------------------------EXIT


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(441 + 4+MOVE_SETTING_X,14 + 4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(441+MOVE_SETTING_X,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(441 + 1+MOVE_SETTING_X,14 + 1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_CLOSE_CANCEL"] )


---------------------------------RESET


g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "RESET" )
g_pButtonOK:SetNormalTex( "KeyConfig_02.tga", "KEY_RESET_NORMAL" )

g_pButtonOK:SetOverTex( "KeyConfig_02.tga", "KEY_RESET_OVER" )

g_pButtonOK:SetDownTex( "KeyConfig_02.tga", "KEY_RESET_OVER" )

g_pButtonOK:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(150 - 58+MOVE_BUTTON_X,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(150 - 58 - 3+MOVE_BUTTON_X,645 - 3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(150 - 58 + 1  - 3+MOVE_BUTTON_X,645 + 1 - 3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_RESET"] )

---------------------------------OK


g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "OK" )
g_pButtonOK:SetNormalTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_NORMAL" )

g_pButtonOK:SetOverTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButtonOK:SetDownTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_OVER" )

g_pButtonOK:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(150 + 52+MOVE_BUTTON_X,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(150 + 52 - 3+MOVE_BUTTON_X,645 - 3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(150 + 52 + 1  - 3+MOVE_BUTTON_X,645 + 1 - 3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_CLOSE_SAVE"] )

---------------------------------Cancel


g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "CANCEL" )
g_pButtonCancel:SetNormalTex( "KeyConfig_02.tga", "KEY_WINDOWS_OUT_NORMAL" )

g_pButtonCancel:SetOverTex( "KeyConfig_02.tga", "KEY_WINDOWS_OUT_OVER" )

g_pButtonCancel:SetDownTex( "KeyConfig_02.tga", "KEY_WINDOWS_OUT_OVER" )

g_pButtonCancel:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(260 + 52+MOVE_BUTTON_X,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(260 + 52 - 3+MOVE_BUTTON_X,645 - 3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(260  + 52 + 1 - 3+MOVE_BUTTON_X,645 + 1 - 3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_KEY_CONFIG_CLOSE_CANCEL"] )
