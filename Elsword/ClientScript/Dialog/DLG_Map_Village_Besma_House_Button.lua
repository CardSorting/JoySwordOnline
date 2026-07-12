-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




----------------마을버튼

g_pButtonHouse_Alchemis = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Alchemis )
g_pButtonHouse_Alchemis:SetName( "House_Alchemis" )
g_pButtonHouse_Alchemis:AddDummyInt( HOUSE_ID["HI_CHACHABUK_HOUSE"] )
g_pButtonHouse_Alchemis:SetNormalTex( "DLG_Common_New_Button06.dds", "Button_Alchemy_House3_Normal" )

g_pButtonHouse_Alchemis:SetOverTex( "DLG_Common_New_Button06.dds", "Button_Alchemy_House3_Over" )

g_pButtonHouse_Alchemis:SetDownTex( "DLG_Common_New_Button06.dds", "Button_Alchemy_House3_Over" )

g_pButtonHouse_Alchemis:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(240,150)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(240,150)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(241,151)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Alchemis:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Alchemis:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )





g_pButtonShop_equip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonShop_equip )
g_pButtonShop_equip:SetName( "Shop_equip" )
g_pButtonShop_equip:AddDummyInt( HOUSE_ID["HI_TOMA_HOUSE"] )
g_pButtonShop_equip:SetNormalTex( "DLG_Common_New_Button05.dds", "Button_Shop_Equip2_Normal" )

g_pButtonShop_equip:SetOverTex( "DLG_Common_New_Button05.dds", "Button_Shop_Equip2_Over" )

g_pButtonShop_equip:SetDownTex( "DLG_Common_New_Button05.dds", "Button_Shop_Equip2_Over" )

g_pButtonShop_equip:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(26,338)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop_equip:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(26+2,338)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonShop_equip:SetDownPoint
{
        ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(27+2,339)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonShop_equip:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonShop_equip:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )



g_pButtonAccessories_Shop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAccessories_Shop )
g_pButtonAccessories_Shop:SetName( "Accessories_Shop" )
g_pButtonAccessories_Shop:AddDummyInt( HOUSE_ID["HI_RICHANG_HOUSE"] )
g_pButtonAccessories_Shop:SetNormalTex( "DLG_Common_New_Button05.dds", "Button_Accessories_Shop2_Normal" )

g_pButtonAccessories_Shop:SetOverTex( "DLG_Common_New_Button05.dds", "Button_Accessories_Shop2_Over")

g_pButtonAccessories_Shop:SetDownTex( "DLG_Common_New_Button05.dds", "Button_Accessories_Shop2_Over" )

g_pButtonAccessories_Shop:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(310,299)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonAccessories_Shop:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(310-7,299)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonAccessories_Shop:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(310+1-7,299+1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonAccessories_Shop:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonAccessories_Shop:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )



g_pButtonHouse_Bigshopkeeper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHouse_Bigshopkeeper )
g_pButtonHouse_Bigshopkeeper:SetName( "House_Bigshopkeeper" )
g_pButtonHouse_Bigshopkeeper:AddDummyInt( HOUSE_ID["HI_STELLA_HOUSE"] )
g_pButtonHouse_Bigshopkeeper:SetNormalTex( "DLG_Common_New_Button05.dds", "Button_Police_Normal" )

g_pButtonHouse_Bigshopkeeper:SetOverTex( "DLG_Common_New_Button06.dds", "Button_Police_Over")

g_pButtonHouse_Bigshopkeeper:SetDownTex( "DLG_Common_New_Button06.dds", "Button_Police_Over" )

g_pButtonHouse_Bigshopkeeper:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(836,489)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Bigshopkeeper:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(836-4,489)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonHouse_Bigshopkeeper:SetDownPoint
{
      ADD_SIZE_X=-2,
	  ADD_SIZE_Y=-2,
  "LEFT_TOP  = D3DXVECTOR2(836-4,490)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}



g_pButtonHouse_Bigshopkeeper:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonHouse_Bigshopkeeper:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )




------------------------페이타지역 NPC




g_pButtonrento = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonrento )
g_pButtonrento:SetName( "rento" )


g_pButtonrento:SetNormalTex( "DLG_Common_New_Button09.dds", "Button_rento_Normal" )

g_pButtonrento:SetOverTex( "DLG_Common_New_Button09.dds", "Button_rento_Over")

g_pButtonrento:SetDownTex( "DLG_Common_New_Button09.dds", "Button_rento_Over" )

g_pButtonrento:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(713,221)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonrento:SetOverPoint
{

  "LEFT_TOP  = D3DXVECTOR2(707,218)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonrento:SetDownPoint
{
      ADD_SIZE_X = -2,
	  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(707+1,219+1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonrento:AddDummyInt( HOUSE_ID["HI_PEITA_LENTO_HOUSE"] )
g_pButtonrento:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonrento:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )







g_pButtonalregro = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonalregro )
g_pButtonalregro:SetName( "alregro" )

g_pButtonalregro:SetNormalTex( "DLG_Common_New_Button09.dds", "Button_alregro_Normal" )

g_pButtonalregro:SetOverTex( "DLG_Common_New_Button09.dds", "Button_alregro_Over")

g_pButtonalregro:SetDownTex( "DLG_Common_New_Button09.dds", "Button_alregro_Over" )

g_pButtonalregro:SetNormalPoint
{

  "LEFT_TOP  = D3DXVECTOR2(856+4,215)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonalregro:SetOverPoint
{
   
  "LEFT_TOP  = D3DXVECTOR2(850+4,208)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonalregro:SetDownPoint
{
      ADD_SIZE_X = -2,
	  ADD_SIZE_Y = -2,
  "LEFT_TOP  = D3DXVECTOR2(849+1+5,209+1)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}

g_pButtonalregro:AddDummyInt( HOUSE_ID["HI_PEITA_ALLEGRO_HOUSE"] )
g_pButtonalregro:SetCustomMsgMouseUp( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_NPC_HOUSE"] )
g_pButtonalregro:SetCustomMsgMouseOver( STATE_VILLAGE_MAP_UI_CUSTOM_MSG["SVMUCM_HOUSE_BUTTON_OVER"] )
