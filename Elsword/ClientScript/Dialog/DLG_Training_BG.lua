-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticTraining_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining_Background )
g_pStaticTraining_Background:SetName( "StaticTraining_Background" )



g_pPictureBackground1 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureBackground1 )

g_pPictureBackground1:SetTex( "DLG_Background_Training1_1.TGA", "back_training1" )

g_pPictureBackground1:SetPoint
{
	ADD_SIZE_Y = 210,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackground2 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureBackground2 )

g_pPictureBackground2:SetTex( "DLG_Background_Training1_2.TGA", "back_training2" )

g_pPictureBackground2:SetPoint
{
	ADD_SIZE_Y = 210,
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureTraining_Background_Line1 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureTraining_Background_Line1 )

g_pPictureTraining_Background_Line1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureTraining_Background_Line1:SetPoint
{

    ADD_SIZE_X = 972,
    ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(27,127)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTraining_Background_Line2 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureTraining_Background_Line2 )

g_pPictureTraining_Background_Line2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureTraining_Background_Line2:SetPoint
{

    ADD_SIZE_X = 972,
    ADD_SIZE_Y = 4,
	"LEFT_TOP		= D3DXVECTOR2(27,637)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTraining_Background_Line3 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureTraining_Background_Line3 )

g_pPictureTraining_Background_Line3:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureTraining_Background_Line3:SetPoint
{

    ADD_SIZE_X = 4,
    ADD_SIZE_Y = 512,
	"LEFT_TOP		= D3DXVECTOR2(27,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTraining_Background_Line4 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureTraining_Background_Line4 )

g_pPictureTraining_Background_Line4:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureTraining_Background_Line4:SetPoint
{

    ADD_SIZE_X = 4,
    ADD_SIZE_Y = 512,
	"LEFT_TOP		= D3DXVECTOR2(995,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]
--[[
g_pButtonTriangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle )
g_pButtonTriangle:SetName( "ExitButton" )
g_pButtonTriangle:SetNormalTex( "DLG_Common_Button02.tga", "Exit_Button_Normal" )

g_pButtonTriangle:SetOverTex( "DLG_Common_Button02.tga", "Exit_Button_Over" )

g_pButtonTriangle:SetDownTex( "DLG_Common_Button02.tga", "Exit_Button_Over" )

g_pButtonTriangle:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(860,1)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(860,1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle:SetDownPoint
{
   ADD_SIZE_X = -4,
 ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(862,2)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonTriangle:SetCustomMsgMouseUp( STATE_TRAINING_SCHOOL_UI_CUSTOM_MSG["STSUCM_EXIT_TRAINING_SCHOOL"] )
--]]
