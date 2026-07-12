-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_UI_Security_Pad" )
g_pUIDialog:SetPos( 300-5, 200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_WINDOW_CLOSE"] )


g_pStatic_pass = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_pass )
g_pStatic_pass:SetName( "pass" )


----------BG

--------------------------------
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10+1+51-1,
ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10+1+51-1,
ADD_SIZE_Y = 100+110+10-1+80+6,
	"LEFT_TOP		= D3DXVECTOR2(0,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10+1+51-1,
ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(0,0+210+22+80+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
ADD_SIZE_X = -265+4+53-1-1,
ADD_SIZE_Y = -7,
	"LEFT_TOP		= D3DXVECTOR2(0+10-1,0+45+52-15-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
        ADD_SIZE_X = -265+4+53-1-1,
		ADD_SIZE_Y = 20+150-10+2-30+35-30+35,
	"LEFT_TOP		= D3DXVECTOR2(0+10-1,0+55+52-22-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
   ADD_SIZE_X = -265+4+53-1-1,
   ADD_SIZE_Y = -7,
	"LEFT_TOP		= D3DXVECTOR2(0+10-1,0+220-2+52-30+35-22-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	--분할 라인
	
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "pet_bg_bar" )

g_pPicture_line:SetPoint
{
ADD_SIZE_X = -100-45+53-1-1,
ADD_SIZE_Y = -8,
    "LEFT_TOP		= D3DXVECTOR2(0+15-2,0+50+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------
----------BG_텍스트 올라갈 박스
g_pPicture_bg_a = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg_a )
g_pPicture_bg_a:SetTex( "a_1.tga", "aaa")

g_pPicture_bg_a:SetPoint
{
     ADD_SIZE_Y = 256,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_bg_b = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg_b )
g_pPicture_bg_b:SetTex( "b_1.tga", "bbb")

g_pPicture_bg_b:SetPoint
{
     ADD_SIZE_Y = 256,
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------------------------
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10-15+52-1-1,
ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(0+8,0+45+300-84+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10-15+52-1-1,
ADD_SIZE_Y = -5+35,
	"LEFT_TOP		= D3DXVECTOR2(0+8,7+45+300-84+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPicture_bg1:SetPoint
{
ADD_SIZE_X = -277-10-15+52-1-1,
ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(0+8,0+22+45+21+300-84+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------1_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber1" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_1" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_1" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_1" )

	g_pButton_xicon:SetNormalPoint
	{

ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+10,0+82)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+82)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+10+1,0+82+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_1"] )

---------------------2_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber2" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_2" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_2" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_2" )

	g_pButton_xicon:SetNormalPoint
	{

ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+10,0+129)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+129)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+10+1,0+129+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_2"] )

---------------------3_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber3" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_3" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_3" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_3" )

	g_pButton_xicon:SetNormalPoint
	{

ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+10,0+176)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+10,0+176)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+10+1,0+176+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_3"] )

------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------4_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber4" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_4" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_4" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_4" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+59-1,0+82)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+59-1,0+82)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+59+1-1,0+82+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_4"] )

---------------------5_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber5" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_5" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_5" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_5" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+59-1,0+129)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+59-1,0+129)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+59-1+1,0+129+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_5"] )

---------------------6_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber6" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_6" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_6" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_6" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+59-1,0+176)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+59-1,0+176)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+59-1+1,0+176+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_6"] )

------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------7_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber7" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_7" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_7" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_7" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+106,0+82)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+106,0+82)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+106+1,0+82+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_7"] )

---------------------8_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber8" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_8" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_8" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_8" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+106,0+129)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+106,0+129)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+106+1,0+129+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_8"] )

---------------------9_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber9" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_9" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_9" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_9" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+106,0+176)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+106,0+176)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+106+1,0+176+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_9"] )



	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber0" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_0" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_0" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_0" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+154,0+176)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+154,0+176)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+154+1,0+176+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_0"] )

---------------------elsword_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber10" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_10" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_10" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_10" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+154,0+82)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+154,0+82)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+154+1,0+82+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_10"] )

---------------------chung_bt

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonDialNumber11" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "bt_normal_11" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "bt_over_11" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "bt_over_11" )

	g_pButton_xicon:SetNormalPoint
	{

	ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
 		"LEFT_TOP		= D3DXVECTOR2(0+154,0+129)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
		ADD_SIZE_X = 10,
    ADD_SIZE_Y = 10,
		"LEFT_TOP		= D3DXVECTOR2(0+154,0+129)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3+10,
    ADD_SIZE_Y = -3+10,
    "LEFT_TOP		= D3DXVECTOR2(0+154+1,0+129+1)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_DIAL_NUMBER_11"] )

------------------------------------------------------------------------------------------------------------------------------------------------------------


--다시 입력  버튼

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonCancel" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button20.tga", "reinput_normal" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button20.tga", "reinput_over" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button20.tga", "reinput_over" )

	g_pButton_xicon:SetNormalPoint
	{

    ADD_SIZE_X = 8,
    ADD_SIZE_Y = 1,
 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-325-4.3-2,0+15+40-5+35+170-25-0.5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
    ADD_SIZE_X = 8,
    ADD_SIZE_Y = 1,
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-324-4.3-2,0+15-4+40-4+35+170-25-0.5)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = 8-3,
    ADD_SIZE_Y = 1-3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-324-4.3-2+2-2,0+15-2+40-4+35+170-25-2+2-0.5)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_CANCEL"] )


--확인 버튼
	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "ButtonOK" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button05.tga", "ok_button_normal" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button05.tga", "ok_button_over" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button05.tga", "ok_button_over" )
	
	g_pButton_xicon:SetDisableTex( "DLG_ui_button20.tga", "ok_button_dis" )

	g_pButton_xicon:SetNormalPoint
	{

    ADD_SIZE_X = 8,
    ADD_SIZE_Y = 1,
 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-325+70+3+1-1.3-1+30-1-1,0+15+40-5+35+170-25)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
    ADD_SIZE_X = 8,
    ADD_SIZE_Y = 1,
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-324+70+3+1-1-1.3+30-1-1,0+15-4+40-4+35+170-25)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = 8-3,
    ADD_SIZE_Y = 1-3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-324+70+3+1-1.3-1+30-1-1-2+2,0+15-2+40-4+35+170-25-2+2)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetDisablePoint
{

	ADD_SIZE_X = 8,
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(0+400-61-325+70+3+1-1.3-1+30-1-1,0+15+40-5+35+170-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_OK"] )

--보안 패드 타이틀

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_pass:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_title03.TGA", "secu_pad" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0+10,0+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--엑스박스

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "Button_exit" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button01.tga", "exit_normal" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button01.tga", "exit_over" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button01.tga", "exit_over" )

	g_pButton_xicon:SetNormalPoint
	{


 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-210+2+53-1-1,0+15-5)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-210+2+53-1-1,0+15-4-5)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-210+2+53-1-1,0+15-2-5)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( SECURITY_PAD_UI_MSG["SPUM_EXIT"] )

-------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------여기 밑에가 진짜 라디오 버튼


g_pStatic_signal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_signal )
g_pStatic_signal:SetName( "StaticSignal" )


----------BG

--------------------------------
g_pPicture_signal1 = g_pUIDialog:CreatePicture()
g_pStatic_signal:AddPicture( g_pPicture_signal1 )
g_pPicture_signal1:SetTex( "DLG_ui_button08.tga", "radio_normal" )

g_pPicture_signal1:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(0+16+10,0+55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,

}

g_pPicture_signal2 = g_pUIDialog:CreatePicture()
g_pStatic_signal:AddPicture( g_pPicture_signal2 )
g_pPicture_signal2:SetTex( "DLG_ui_button08.tga", "radio_normal" )

g_pPicture_signal2:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(0+16+30+2.5+6,0+55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,

}

g_pPicture_signal3 = g_pUIDialog:CreatePicture()
g_pStatic_signal:AddPicture( g_pPicture_signal3 )
g_pPicture_signal3:SetTex( "DLG_ui_button08.tga", "radio_normal" )

g_pPicture_signal3:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(0+16+60+5+2,0+55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,

}


g_pPicture_signal4 = g_pUIDialog:CreatePicture()
g_pStatic_signal:AddPicture( g_pPicture_signal4 )
g_pPicture_signal4:SetTex( "DLG_ui_button08.tga", "radio_normal" )

g_pPicture_signal4:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(0+180-60-5-2,0+55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,

}

g_pPicture_signal5 = g_pUIDialog:CreatePicture()
g_pStatic_signal:AddPicture( g_pPicture_signal5 )
g_pPicture_signal5:SetTex( "DLG_ui_button08.tga", "radio_normal" )

g_pPicture_signal5:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(0+180-30-2.5-6,0+55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,

}

g_pPicture_signal6 = g_pUIDialog:CreatePicture()
g_pStatic_signal:AddPicture( g_pPicture_signal6 )
g_pPicture_signal6:SetTex( "DLG_ui_button08.tga", "radio_normal" )

g_pPicture_signal6:SetPoint
{
		"LEFT_TOP		= D3DXVECTOR2(0+180-10,0+55)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,

}

g_pStatic_Memo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Memo )
g_pStatic_Memo:SetName( "g_pStatic_Memo" )

g_pStatic_Memo:AddString
{
	MSG 			= "한줄로 표시되는 정보입니다.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,   
    --FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(108,284)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	
	
IncludeLua( "DLG_UI_Security_Pad_Tip1.lua" )
IncludeLua( "DLG_UI_Security_Pad_Tip2.lua" )
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
