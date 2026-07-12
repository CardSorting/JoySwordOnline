-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--[[
g_pButtonTriangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle )
g_pButtonTriangle:SetName( "ButtonSelect" )
g_pButtonTriangle:SetNormalTex( "DLG_Common_Button02.tga", "Triangle" )

g_pButtonTriangle:SetOverTex( "DLG_Common_Button02.tga", "Triangle" )

g_pButtonTriangle:SetDownTex( "DLG_Common_Button02.tga", "Triangle" )

g_pButtonTriangle:SetNormalPoint
{
   ADD_SIZE_X = -4,
 ADD_SIZE_Y = -4,
  "LEFT_TOP  = D3DXVECTOR2(10,629)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(8,627)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle:SetDownPoint
{
   ADD_SIZE_X = -4,
 ADD_SIZE_Y = -4,
  "LEFT_TOP  = D3DXVECTOR2(10,629)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_BACK_TO_LOGIN"] )


g_pStaticCharacter_Select = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter_Select )

g_pStaticCharacter_Select:SetName( "BACK_TO_LOGIN" )

g_pPictureExit_Room = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureExit_Room )

g_pPictureExit_Room:SetTex( "DLG_Common_Texture08.tga", "Exit" )

g_pPictureExit_Room:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(87,640)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]


g_pButtonMenu1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu1 )
g_pButtonMenu1:SetName( "Menu1" )
g_pButtonMenu1:SetNormalTex( "DLG_Common_Texture12.TGA", "Big_Window_Normal" )

g_pButtonMenu1:SetOverTex( "DLG_Common_Texture12.TGA", "Big_Window_Over" )

g_pButtonMenu1:SetDownTex( "DLG_Common_Texture12.TGA", "Big_Window_Over" )

g_pButtonMenu1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(26,729)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,729)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu1:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27,730)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu1:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_TUTORIAL"] )


g_pButtonMenu2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu2 )
g_pButtonMenu2:SetName( "Menu2" )
g_pButtonMenu2:SetNormalTex( "DLG_Common_Texture12.TGA", "Middle_Window_Normal" )

g_pButtonMenu2:SetOverTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonMenu2:SetDownTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonMenu2:SetNormalPoint
{



 	"LEFT_TOP		= D3DXVECTOR2(210,729)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu2:SetOverPoint
{


	"LEFT_TOP		= D3DXVECTOR2(210,729)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu2:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(210,730)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu2:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_SELECT_UNIT"] )
g_pButtonMenu2:SetGuideDesc( STR_ID_2716 )
--g_pButtonMenu2:SetGuideDescPos( D3DXVECTOR2( 264,709 ) )





g_pButtonMenu3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu3 )
g_pButtonMenu3:SetName( "Menu3" )
g_pButtonMenu3:SetNormalTex( "DLG_Common_Texture12.TGA", "Middle_Window_Normal" )

g_pButtonMenu3:SetOverTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonMenu3:SetDownTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonMenu3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(318,729)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(318,729)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu3:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(319,730)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu3:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_CREATE_UNIT"] )
g_pButtonMenu3:SetGuideDesc( STR_ID_2727 )

g_pButtonMenu4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu4 )
g_pButtonMenu4:SetName( "Menu4" )
g_pButtonMenu4:SetNormalTex( "DLG_Common_Texture12.TGA", "Middle_Window_Normal" )

g_pButtonMenu4:SetOverTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonMenu4:SetDownTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonMenu4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(426,729)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(426,729)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu4:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(427,730)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu4:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_DELETE_UNIT"] )
g_pButtonMenu4:SetGuideDesc( STR_ID_2717 )




-- cb3차에서 캐릭터 슬롯 구입 버튼 제외
--[[

		g_pButtonMenu5 = g_pUIDialog:CreateButton()
		g_pUIDialog:AddControl( g_pButtonMenu5 )
		g_pButtonMenu5:SetName( "Menu5" )
		g_pButtonMenu5:SetNormalTex( "DLG_Common_Texture12.TGA", "Big_Window_Over" )

		g_pButtonMenu5:SetOverTex( "DLG_Common_Texture12.TGA", "Big_Window_Over" )

		g_pButtonMenu5:SetDownTex( "DLG_Common_Texture12.TGA", "Big_Window_Over" )

		g_pButtonMenu5:SetNormalPoint
		{


		 	"LEFT_TOP		= D3DXVECTOR2(846,729)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonMenu5:SetOverPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(846,729)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
		g_pButtonMenu5:SetDownPoint
		{
		    ADD_SIZE_X = -2,
		    ADD_SIZE_Y = -2,
		 	"LEFT_TOP		= D3DXVECTOR2(847,730)",

			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pButtonMenu5:SetGuideDesc( STR_ID_2728 )


--]]
















g_pStaticCharacter_Select = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter_Select )

g_pStaticCharacter_Select:SetName( "Character_Select" )







	





g_pPictureYellow_V1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureYellow_V1 )

g_pPictureYellow_V1:SetTex( "DLG_Common_Button02.tga", "Yellow_V" )

g_pPictureYellow_V1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(38,733)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTutorial = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureTutorial )

g_pPictureTutorial:SetTex( "DLG_Common_Texture00.tga", "Tutorial" )

g_pPictureTutorial:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureYellow_V2 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureYellow_V2 )

g_pPictureYellow_V2:SetTex( "DLG_Common_Button02.tga", "Yellow_V" )

g_pPictureYellow_V2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(222,733)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSelect = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureSelect )

g_pPictureSelect:SetTex( "DLG_Common_Texture04.tga", "GameStart_Font" )

g_pPictureSelect:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268 - 17,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBlue_Plus = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureBlue_Plus )

g_pPictureBlue_Plus:SetTex( "DLG_Common_Button02.tga", "Blue_Plus" )

g_pPictureBlue_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(330,733)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCreat= g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureCreat)

g_pPictureCreat:SetTex( "DLG_Common_Texture00.tga", "Create" )

g_pPictureCreat:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePink_X= g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPicturePink_X)

g_pPicturePink_X:SetTex( "DLG_Common_Button02.tga", "Pink_X" )

g_pPicturePink_X:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(437,733)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureEliminate= g_pUIDialog:CreatePicture()
g_pStaticCharacter_Select:AddPicture( g_pPictureEliminate)

g_pPictureEliminate:SetTex( "DLG_Common_Texture00.tga", "Eliminate" )

g_pPictureEliminate:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(481,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


