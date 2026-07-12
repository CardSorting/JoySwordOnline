-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





----------------마을버튼

g_pButtonHouse_Alchemis = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Alchemis )
g_pButtonHouse_Alchemis:SetName( "House_Alchemis" )
g_pButtonHouse_Alchemis:AddDummyInt( HOUSE_ID["HI_ECHO_ALCHEMIST_HOUSE"] )
g_pButtonHouse_Alchemis:SetNormalTex( "DLG_Common_New_Button04.dds", "Button_Alchemy_House2_Normal" )

g_pButtonHouse_Alchemis:SetOverTex( "DLG_Common_New_Button04.dds", "Button_Alchemy_House2_Over" )

g_pButtonHouse_Alchemis:SetDownTex( "DLG_Common_New_Button04.dds", "Button_Alchemy_House2_Over" )

g_pButtonHouse_Alchemis:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(121,193)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetOverPoint
{
  
  "LEFT_TOP  = D3DXVECTOR2(121,193)",
 
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetDownPoint
{
	  ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(122,194)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
} 

g_pButtonHouse_Alchemis:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Alchemis:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )







g_pButtonShop_equip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonShop_equip )
g_pButtonShop_equip:SetName( "Shop_equip" )
g_pButtonShop_equip:AddDummyInt( HOUSE_ID["HI_LENPAD_HOUSE"] )

g_pButtonShop_equip:SetNormalTex( "DLG_Common_New_Button05.dds", "Button_Shop_equip_Normal" )
g_pButtonShop_equip:SetOverTex( "DLG_Common_New_Button05.dds", "Button_Shop_equip_Over" )
g_pButtonShop_equip:SetDownTex( "DLG_Common_New_Button05.dds", "Button_Shop_equip_Over" )

g_pButtonShop_equip:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(31,389)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop_equip:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(31,389)",
 
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop_equip:SetDownPoint
{
       ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(32,390)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
} 

g_pButtonShop_equip:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonShop_equip:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )






g_pButtonAccessories_Shop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAccessories_Shop )
g_pButtonAccessories_Shop:SetName( "Accessories_Shop" )
g_pButtonAccessories_Shop:AddDummyInt( HOUSE_ID["HI_LUICHEL_HOUSE"] )

g_pButtonAccessories_Shop:SetNormalTex( "DLG_Common_New_Button04.dds", "Button_Accessories_Shop_Normal" )

g_pButtonAccessories_Shop:SetOverTex( "DLG_Common_New_Button04.dds", "Button_Accessories_Shop_Over")

g_pButtonAccessories_Shop:SetDownTex( "DLG_Common_New_Button04.dds", "Button_Accessories_Shop_Over" )

g_pButtonAccessories_Shop:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(353,247)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonAccessories_Shop:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(353,247)",
 
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonAccessories_Shop:SetDownPoint
{

       ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(354,248)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
} 

g_pButtonAccessories_Shop:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonAccessories_Shop:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )






g_pButtonHouse_Bigshopkeeper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Bigshopkeeper )
g_pButtonHouse_Bigshopkeeper:SetName( "House_Bigshopkeeper" )

g_pButtonHouse_Bigshopkeeper:AddDummyInt( HOUSE_ID["HI_HOFMANN_HOUSE"] )
g_pButtonHouse_Bigshopkeeper:SetNormalTex( "DLG_Common_New_Button05.dds", "Button_Big_Shopkeeper_Normal" )

g_pButtonHouse_Bigshopkeeper:SetOverTex( "DLG_Common_New_Button05.dds", "Button_Big_Shopkeeper_Over")

g_pButtonHouse_Bigshopkeeper:SetDownTex( "DLG_Common_New_Button05.dds", "Button_Big_Shopkeeper_Over" )

g_pButtonHouse_Bigshopkeeper:SetNormalPoint
{

	"LEFT_TOP  = D3DXVECTOR2(603,315)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Bigshopkeeper:SetOverPoint
{

	"LEFT_TOP  = D3DXVECTOR2(603-24,315)",

	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Bigshopkeeper:SetDownPoint
{
         ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
	"LEFT_TOP  = D3DXVECTOR2(604-24,316)",

	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}


g_pButtonHouse_Bigshopkeeper:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Bigshopkeeper:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )



