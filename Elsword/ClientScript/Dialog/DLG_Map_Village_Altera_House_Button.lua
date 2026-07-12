-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




----------------마을버튼

g_pButtonHouse_Alchemis = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Alchemis )
g_pButtonHouse_Alchemis:SetName( "House_Alchemis" )
g_pButtonHouse_Alchemis:AddDummyInt( HOUSE_ID["HI_AMOS_ALCHEMIST_HOUSE"] )
g_pButtonHouse_Alchemis:SetNormalTex( "DLG_Common_New_Button06.dds", "Button_Alchemy_House4_Normal" )

g_pButtonHouse_Alchemis:SetOverTex( "DLG_Common_New_Button06.dds", "Button_Alchemy_House4_Over" )

g_pButtonHouse_Alchemis:SetDownTex( "DLG_Common_New_Button06.dds", "Button_Alchemy_House4_Over" )

g_pButtonHouse_Alchemis:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(170-20,210)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(170-22,208)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(170-22,211)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,

}
g_pButtonHouse_Alchemis:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Alchemis:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )





g_pButtonShop_equip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonShop_equip )
g_pButtonShop_equip:SetName( "Shop_equip" )
g_pButtonShop_equip:AddDummyInt( HOUSE_ID["HI_AGATHA_EQUIP_SHOP_HOUSE"] )
g_pButtonShop_equip:SetNormalTex( "DLG_Common_New_Button06.dds", "Button_Shop_House4_Normal" )

g_pButtonShop_equip:SetOverTex( "DLG_Common_New_Button06.dds", "Button_Shop_House4_Over" )

g_pButtonShop_equip:SetDownTex( "DLG_Common_New_Button06.dds", "Button_Shop_House4_Over" )

g_pButtonShop_equip:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(222+4,396+2)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop_equip:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(218+10,393+4)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop_equip:SetDownPoint
{
        ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(218+10,395+4)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonShop_equip:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonShop_equip:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )



g_pButtonAccessories_Shop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAccessories_Shop )
g_pButtonAccessories_Shop:SetName( "Accessories_Shop" )
g_pButtonAccessories_Shop:AddDummyInt( HOUSE_ID["HI_AIDA_ACCESSORY_HOUSE"] )
g_pButtonAccessories_Shop:SetNormalTex( "DLG_Common_New_Button07.dds", "Button_ACC4_Normal" )

g_pButtonAccessories_Shop:SetOverTex( "DLG_Common_New_Button07.dds", "Button_ACC4_Over")

g_pButtonAccessories_Shop:SetDownTex( "DLG_Common_New_Button07.dds", "Button_ACC4_Over" )

g_pButtonAccessories_Shop:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(476,220)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonAccessories_Shop:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(476-23,216)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonAccessories_Shop:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(476-21,220-1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonAccessories_Shop:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonAccessories_Shop:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )





g_pButtonHouse_Bigshopkeeper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Bigshopkeeper )
g_pButtonHouse_Bigshopkeeper:SetName( "House_Bigshopkeeper" )
g_pButtonHouse_Bigshopkeeper:AddDummyInt( HOUSE_ID["HI_ADEL_HOUSE"] )
g_pButtonHouse_Bigshopkeeper:SetNormalTex( "DLG_Common_New_Button07.dds", "Button_Chonjang4_Normal" )

g_pButtonHouse_Bigshopkeeper:SetOverTex( "DLG_Common_New_Button07.dds", "Button_Chonjang4_Over")

g_pButtonHouse_Bigshopkeeper:SetDownTex( "DLG_Common_New_Button07.dds", "Button_Chonjang4_Over" )

g_pButtonHouse_Bigshopkeeper:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(680,326)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Bigshopkeeper:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(680-15,323)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Bigshopkeeper:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(680-13,326)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}



g_pButtonHouse_Bigshopkeeper:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Bigshopkeeper:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )











