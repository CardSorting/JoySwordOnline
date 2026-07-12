-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "Shop_Buy_Slot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


















































-- 슬롯 정보
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pShopCharStatus:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_BUY"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= 0,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	"POS		= D3DXVECTOR2(4,11)",
	"SIZE		= D3DXVECTOR2( 55, 55 )",
}

----------------------------상점 노말-------------------------------------------


g_pStaticShop_Window_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShop_Window_Normal )
g_pStaticShop_Window_Normal:SetName( "Shop_Window23" )



g_pPictureShop_Normal_BG1= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Normal:AddPicture( g_pPictureShop_Normal_BG1)

g_pPictureShop_Normal_BG1:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Normal1"  )

g_pPictureShop_Normal_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Normal_BG2= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Normal:AddPicture( g_pPictureShop_Normal_BG2)

g_pPictureShop_Normal_BG2:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Normal2"  )

g_pPictureShop_Normal_BG2:SetPoint
{
    ADD_SIZE_X = 209,
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_Normal_BG3= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Normal:AddPicture( g_pPictureShop_Normal_BG3)

g_pPictureShop_Normal_BG3:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Normal3"  )

g_pPictureShop_Normal_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(216,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[




----------------------------상점 노말-------------------------------------------


g_pStaticShop_Window_Normal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShop_Window_Normal )
g_pStaticShop_Window_Normal:SetName( "Shop_Window23" )



g_pPictureShop_Normal_BG1= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Normal:AddPicture( g_pPictureShop_Normal_BG1)

g_pPictureShop_Normal_BG1:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Normal1"  )

g_pPictureShop_Normal_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Normal_BG2= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Normal:AddPicture( g_pPictureShop_Normal_BG2)

g_pPictureShop_Normal_BG2:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Normal2"  )

g_pPictureShop_Normal_BG2:SetPoint
{
    ADD_SIZE_X = 209,
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_Normal_BG3= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Normal:AddPicture( g_pPictureShop_Normal_BG3)

g_pPictureShop_Normal_BG3:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Normal3"  )

g_pPictureShop_Normal_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(216,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------상점 오버----------------------------------


g_pStaticShop_Window_Over = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShop_Window_Over )
g_pStaticShop_Window_Over:SetName( "Shop_Window22" )



g_pPictureShop_Over_BG1= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Over:AddPicture( g_pPictureShop_Over_BG1)

g_pPictureShop_Over_BG1:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Over1"  )

g_pPictureShop_Over_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Over_BG2= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Over:AddPicture( g_pPictureShop_Over_BG2)

g_pPictureShop_Over_BG2:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Over2"  )

g_pPictureShop_Over_BG2:SetPoint
{
    ADD_SIZE_X = 209,
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_Over_BG3= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Over:AddPicture( g_pPictureShop_Over_BG3)

g_pPictureShop_Over_BG3:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Over3"  )

g_pPictureShop_Over_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(216,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







-------------------------------------상점 오버2----------------------------------


g_pStaticShop_Window_Over2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShop_Window_Over2 )
g_pStaticShop_Window_Over2:SetName( "Shop_Window22" )



g_pPictureShop_Over_BG1= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Over2:AddPicture( g_pPictureShop_Over_BG1)

g_pPictureShop_Over_BG1:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Over1"  )

g_pPictureShop_Over_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Over_BG2= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Over2:AddPicture( g_pPictureShop_Over_BG2)

g_pPictureShop_Over_BG2:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Over2"  )

g_pPictureShop_Over_BG2:SetPoint
{
    ADD_SIZE_X = 209,
	"LEFT_TOP		= D3DXVECTOR2(6,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShop_Over_BG3= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Over2:AddPicture( g_pPictureShop_Over_BG3)

g_pPictureShop_Over_BG3:SetTex( "DLG_Common_Texture02.tga", "ShopBG_Over3"  )

g_pPictureShop_Over_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(216,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------버튼-------------------------------------------------------

g_pButtonQuest_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest_Button )
g_pButtonQuest_Button:SetName( "ButtonLeft_Arrow" )
g_pButtonQuest_Button:SetNormalTex( "DLG_Common_Button00.TGA", "invisible" )

--g_pButtonQuest_Button:SetOverTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Over" )

--g_pButtonQuest_Button:SetNormalStatic( g_pStaticMenu_QuestNormal )
g_pButtonQuest_Button:SetOverStatic( g_pStaticShop_Window_Over )
g_pButtonQuest_Button:SetDownStatic( g_pStaticShop_Window_Over2 )

--g_pButtonQuest_Button:SetDownTex( "DLG_Common_Texture01.TGA", "Right_Triangle_Down" )

g_pButtonQuest_Button:SetNormalPoint
{
	IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(221,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,76)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(221,76)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Button:SetOverPoint
{
    IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(221,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,76)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(221,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Button:SetDownPoint
{
     IS_RECT = FALSE,
	USE_TEXTURE_SIZE = FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_TOP		= D3DXVECTOR2(221,0)",
	"LEFT_BOTTOM		= D3DXVECTOR2(0,76)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(221,76)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest_Button:SetEnableClick( false )

g_pButtonQuest_Button:SetCustomMsgMouseOut( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_BUY_ITEM_MOUSEOUT"] )

--]]



















-------------------------------텍스쳐-------------------------------------------

g_pStaticShop_Window_Tex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShop_Window_Tex )
g_pStaticShop_Window_Tex:SetName( "Shop_Window" )


g_pPictureShop_Item_Slot = g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Tex:AddPicture( g_pPictureShop_Item_Slot )

g_pPictureShop_Item_Slot:SetTex( "DLG_Common_Texture01.TGA", "Box_Button4" )

g_pPictureShop_Item_Slot:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(4,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureShop_ED_Bar = g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Tex:AddPicture( g_pPictureShop_ED_Bar )

g_pPictureShop_ED_Bar:SetTex( "DLG_Common_Texture01.TGA", "Color10" )

g_pPictureShop_ED_Bar:SetPoint
{
     ADD_SIZE_X = 147,
     ADD_SIZE_Y = 19,
    "LEFT_TOP		= D3DXVECTOR2(66,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_VP_Bar = g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Tex:AddPicture( g_pPictureShop_VP_Bar )

g_pPictureShop_VP_Bar:SetTex( "DLG_Common_Texture01.TGA", "Color10" )

g_pPictureShop_VP_Bar:SetPoint
{
     ADD_SIZE_X = 47,
     ADD_SIZE_Y = 19,
    "LEFT_TOP		= D3DXVECTOR2(66,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--[[

g_pPictureEd= g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Tex:AddPicture( g_pPictureEd)

g_pPictureEd:SetTex( "DLG_Common_Texture01.tga", "Ed"  )

g_pPictureEd:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(112,23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]






g_pButtonIBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonIBuy )
g_pButtonIBuy:SetName( "ButtonBuy" )
g_pButtonIBuy:SetNormalTex( "DLG_Common_Texture07.tga", "Buy_Normal" )

g_pButtonIBuy:SetOverTex( "DLG_Common_Texture07.tga", "Buy_Over" )

g_pButtonIBuy:SetDownTex( "DLG_Common_Texture07.tga", "Buy_Normal" )

g_pButtonIBuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(173,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(173,47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIBuy:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(174,48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonIBuy:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_ITEM"] )

--[[
g_pButtonIPresent = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonIPresent )
g_pButtonIPresent:SetName( "Present" )
g_pButtonIPresent:SetNormalTex( "DLG_Common_Texture07.tga", "Present_Normal" )

g_pButtonIPresent:SetOverTex( "DLG_Common_Texture07.tga", "Present_Over" )

g_pButtonIPresent:SetDownTex( "DLG_Common_Texture07.tga", "Present_Normal" )

g_pButtonIPresent:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(175,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIPresent:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(175,50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonIPresent:SetDownPoint
{
     ADD_SIZE_X = -1,
     ADD_SIZE_Y = -1,
 	"LEFT_TOP		= D3DXVECTOR2(176,51)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]





g_pStatic_Shop_Buy_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Shop_Buy_Slot )
g_pStatic_Shop_Buy_Slot:SetName( "Static_Shop_Buy_Slot" )


-- 현재 착용중 이미지
g_pPicture_Shop_Item_Picture_Equiped = g_pUIDialog:CreatePicture()
g_pStatic_Shop_Buy_Slot:AddPicture( g_pPicture_Shop_Item_Picture_Equiped )
g_pPicture_Shop_Item_Picture_Equiped:SetTex( "HQ_ShopEqipedBorder.tga", "NULL" )
g_pPicture_Shop_Item_Picture_Equiped:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(4 - 2,11 - 2)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(59 + 3,66 + 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 아이템 그림
g_pPicture_Shop_Item_Picture = g_pUIDialog:CreatePicture()
g_pStatic_Shop_Buy_Slot:AddPicture( g_pPicture_Shop_Item_Picture )
g_pPicture_Shop_Item_Picture:SetTex( "HQ_DisableEqip.TGA", "NULL" )
g_pPicture_Shop_Item_Picture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(4,11)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(59,66)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 착용 불가 이미지
g_pPicture_Shop_Item_Picture_IMP = g_pUIDialog:CreatePicture()
g_pStatic_Shop_Buy_Slot:AddPicture( g_pPicture_Shop_Item_Picture_IMP )
g_pPicture_Shop_Item_Picture_IMP:SetTex( "HQ_DisableEqip.tga", "NULL" )
g_pPicture_Shop_Item_Picture_IMP:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(4,11)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(59,66)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME			= 0.0,
}


-- 아이템 이름
g_pStatic_Shop_Buy_Slot:AddString
{
 	 -- MSG    		 = " 엘핀보우",
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(71,4)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 아이템 가격
g_pStatic_Shop_Buy_Slot:AddString
{
 	 -- MSG    		 = "12000",
     FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(71,23)",
 	 "COLOR          = D3DXCOLOR(0.6,1.0,0.2,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 아이템 가격
g_pStatic_Shop_Buy_Slot:AddString
{
 	 -- MSG    		 = "1",
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(71+ 20,23 + 27)",
 	 "COLOR          = D3DXCOLOR(0.6,1.0,0.2,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



	 
	 









g_pButtonTriangle1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle1)
g_pButtonTriangle1:SetName( "UpArrow1" )
g_pButtonTriangle1:SetNormalTex( "DLG_Common_Texture01.tga", "Up_triangle_Normal" )

g_pButtonTriangle1:SetOverTex( "DLG_Common_Texture01.tga", "Up_triangle_Over" )

g_pButtonTriangle1:SetDownTex( "DLG_Common_Texture01.tga", "Up_triangle_Down" )

g_pButtonTriangle1:SetNormalPoint
{
    ADD_SIZE_X = -8,
 ADD_SIZE_Y = -8,
  "LEFT_TOP  = D3DXVECTOR2(119,37)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle1:SetOverPoint
{
    ADD_SIZE_X = -6,
 ADD_SIZE_Y = -6,
  "LEFT_TOP  = D3DXVECTOR2(118,36)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle1:SetDownPoint
{
    ADD_SIZE_X = -8,
 ADD_SIZE_Y = -8,
  "LEFT_TOP  = D3DXVECTOR2(119,37)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle1:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_NUM_CHANGE"] )




g_pButtonTriangle2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle2)
g_pButtonTriangle2:SetName( "DownArrow1" )
g_pButtonTriangle2:SetNormalTex( "DLG_Common_Texture01.tga", "Down_triangle_Normal" )

g_pButtonTriangle2:SetOverTex( "DLG_Common_Texture01.tga", "Down_triangle_Down" )

g_pButtonTriangle2:SetDownTex( "DLG_Common_Texture01.tga", "Downtriangle_Down" )

g_pButtonTriangle2:SetNormalPoint
{
      ADD_SIZE_X = -8,
 ADD_SIZE_Y = -8,
  "LEFT_TOP  = D3DXVECTOR2(119,58)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle2:SetOverPoint
{
      ADD_SIZE_X = -8,
 ADD_SIZE_Y = -8,
  "LEFT_TOP  = D3DXVECTOR2(119,58)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle2:SetDownPoint
{
     ADD_SIZE_X = -10,
 ADD_SIZE_Y = -10,
  "LEFT_TOP  = D3DXVECTOR2(120,59)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle2:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_NUM_CHANGE"] )








g_pButtonTriangle3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle3)
g_pButtonTriangle3:SetName( "UpArrow10" )
g_pButtonTriangle3:SetNormalTex( "DLG_Common_Texture01.tga", "Up_triangle_Normal" )

g_pButtonTriangle3:SetOverTex( "DLG_Common_Texture01.tga", "Up_triangle_Over" )

g_pButtonTriangle3:SetDownTex( "DLG_Common_Texture01.tga", "Up_triangle_Down" )

g_pButtonTriangle3:SetNormalPoint
{
    ADD_SIZE_X = -8,
 ADD_SIZE_Y = -8,
  "LEFT_TOP  = D3DXVECTOR2(145,37)",
 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle3:SetOverPoint
{
    ADD_SIZE_X = -6,
 ADD_SIZE_Y = -6,
  "LEFT_TOP  = D3DXVECTOR2(144,36)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle3:SetDownPoint
{
    ADD_SIZE_X = -8,
 ADD_SIZE_Y = -8,
  "LEFT_TOP  = D3DXVECTOR2(145,37)",

 "COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 CHANGE_TIME  = 0.0,
}
g_pButtonTriangle3:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_NUM_CHANGE"] )



g_pButtonTriangle4= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle4)
g_pButtonTriangle4:SetName( "DownArrow10" )
g_pButtonTriangle4:SetNormalTex( "DLG_Common_Texture01.tga", "Down_triangle_Normal" )

g_pButtonTriangle4:SetOverTex( "DLG_Common_Texture01.tga", "Down_triangle_Down" )

g_pButtonTriangle4:SetDownTex( "DLG_Common_Texture01.tga", "Downtriangle_Down" )

g_pButtonTriangle4:SetNormalPoint
{
	ADD_SIZE_X = -8,
	ADD_SIZE_Y = -8,
	"LEFT_TOP  = D3DXVECTOR2(145,58)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonTriangle4:SetOverPoint
{
		ADD_SIZE_X = -6,
	ADD_SIZE_Y = -6,
	"LEFT_TOP  = D3DXVECTOR2(144,57)",

	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}
g_pButtonTriangle4:SetDownPoint
{
	ADD_SIZE_X = -8,
	ADD_SIZE_Y = -8,
	"LEFT_TOP  = D3DXVECTOR2(145,58)",

	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}

g_pButtonTriangle4:SetCustomMsgMouseUp( SHOP_UI_CUSTOM_MSG["SUCM_BUY_NUM_CHANGE"] )


g_pStaticShop_Window_Tex1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShop_Window_Tex1 )
g_pStaticShop_Window_Tex1:SetName( "StaticShop_Window_Tex1" )


g_pPictureShop_Item_Slot_Num1 = g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Tex1:AddPicture( g_pPictureShop_Item_Slot_Num1 )

g_pPictureShop_Item_Slot_Num1:SetTex( "DLG_Common_Texture01.TGA", "Num_1" )

g_pPictureShop_Item_Slot_Num1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(130,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureShop_Item_Slot_Num10 = g_pUIDialog:CreatePicture()
g_pStaticShop_Window_Tex1:AddPicture( g_pPictureShop_Item_Slot_Num10 )

g_pPictureShop_Item_Slot_Num10:SetTex( "DLG_Common_Texture01.TGA", "Num_10" )

g_pPictureShop_Item_Slot_Num10:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(153,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



