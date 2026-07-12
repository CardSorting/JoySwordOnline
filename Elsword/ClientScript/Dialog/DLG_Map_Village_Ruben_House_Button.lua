-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

















-- 샵



g_pButtonShop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonShop )
g_pButtonShop:SetName( "Shop_House" )
g_pButtonShop:AddDummyInt( HOUSE_ID["HI_ANNE_HOUSE"] )
g_pButtonShop:SetNormalTex( "DLG_Common_New_Button04.dds", "Button_Shop_Normal" )

g_pButtonShop:SetOverTex( "DLG_Common_New_Button04.dds", "Button_Shop_Over" )

g_pButtonShop:SetDownTex( "DLG_Common_New_Button04.dds", "Button_Shop_Over" )

g_pButtonShop:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(45,382)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(45,382)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop:SetDownPoint
{
	ADD_SIZE_X=-2,
	ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(46,383)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}




g_pButtonShop:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonShop:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )







-- 촌장집



g_pButtonHouse_Village_CityHall = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Village_CityHall )
g_pButtonHouse_Village_CityHall:SetName( "NPC_House" )
g_pButtonHouse_Village_CityHall:AddDummyInt( HOUSE_ID["HI_HAGERS_HOUSE"] )
g_pButtonHouse_Village_CityHall:SetNormalTex( "DLG_Common_New_Button04.dds", "Button_Chonjang_Normal" )

g_pButtonHouse_Village_CityHall:SetOverTex( "DLG_Common_New_Button04.dds", "Button_Chonjang_Over" )

g_pButtonHouse_Village_CityHall:SetDownTex( "DLG_Common_New_Button04.dds", "Button_Chonjang_Over" )

g_pButtonHouse_Village_CityHall:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(649,286)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Village_CityHall:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(649,286)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Village_CityHall:SetDownPoint
{
	  ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(649,286)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonHouse_Village_CityHall:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Village_CityHall:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )











--훈련소 버튼

g_pButtonTraining_School = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTraining_School )
g_pButtonTraining_School:SetName( "Training_School" )
g_pButtonTraining_School:SetNormalTex( "DLG_Common_New_Button04.dds", "Button_Training_Room_Normal" )

g_pButtonTraining_School:SetOverTex( "DLG_Common_New_Button04.dds", "Button_Training_Room_Over" )

g_pButtonTraining_School:SetDownTex( "DLG_Common_New_Button04.dds", "Button_Training_Room_Over" )

g_pButtonTraining_School:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(360,266)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTraining_School:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(360,266)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTraining_School:SetDownPoint
{
       ADD_SIZE_X = -2,
       ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(361,267)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}


g_pButtonTraining_School:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_TRAINING_SCHOOL"] )
g_pButtonTraining_School:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )






-- 연금술사집
g_pButtonHouse_Alchemis = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Alchemis )
g_pButtonHouse_Alchemis:SetName( "ButtonHouse_Alchemis" )

g_pButtonHouse_Alchemis:AddDummyInt( HOUSE_ID["HI_ADAMS_HOUSE"] )

g_pButtonHouse_Alchemis:SetNormalTex( "DLG_Common_New_Button04.dds", "Button_Alchemy_House_Normal" )

g_pButtonHouse_Alchemis:SetOverTex( "DLG_Common_New_Button04.dds", "Button_Alchemy_House_Over" )

g_pButtonHouse_Alchemis:SetDownTex( "DLG_Common_New_Button04.dds", "Button_Alchemy_House_Over" )

g_pButtonHouse_Alchemis:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(121,185)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHouse_Alchemis:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(121,185)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHouse_Alchemis:SetDownPoint
{
         ADD_SIZE_X = -2,
         ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(122,186)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonHouse_Alchemis:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Alchemis:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )


