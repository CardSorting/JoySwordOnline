-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Mainpage_Itemslot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticMain_ItemSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMain_ItemSlot )
g_pStaticMain_ItemSlot:SetName( "g_pStaticMain_ItemSlot" )


g_pPictureMain_ItemSlot_BG1 = g_pUIDialog:CreatePicture()
g_pStaticMain_ItemSlot:AddPicture( g_pPictureMain_ItemSlot_BG1 )

g_pPictureMain_ItemSlot_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "mainitem_slot" )

g_pPictureMain_ItemSlot_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureMain_ItemSlot_BG2 = g_pUIDialog:CreatePicture()
g_pStaticMain_ItemSlot:AddPicture( g_pPictureMain_ItemSlot_BG2 )

g_pPictureMain_ItemSlot_BG2:SetTex( "DLG_Common_New_Texture51.TGA", "itemslot_big" )

g_pPictureMain_ItemSlot_BG2:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(6,7)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMain_ItemSlot_BG3 = g_pUIDialog:CreatePicture()
g_pStaticMain_ItemSlot:AddPicture( g_pPictureMain_ItemSlot_BG3 )

g_pPictureMain_ItemSlot_BG3:SetTex( "DLG_Common_New_Texture37.TGA", "cash2" )

g_pPictureMain_ItemSlot_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "MainItemSlot_Buy" )
g_pButtonBuy:SetNormalTex( "DLG_Common_New_Texture51.TGA", "buybutton_small_normal" )

g_pButtonBuy:SetOverTex( "DLG_Common_New_Texture51.TGA", "buybutton_small_over" )

g_pButtonBuy:SetDownTex( "DLG_Common_New_Texture51.TGA", "buybutton_small_over" )

g_pButtonBuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(80-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(80-1,53)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(81-1,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY"] )


g_pButtonPresent = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPresent )
g_pButtonPresent:SetName( "MainItemSlot_Present" )
g_pButtonPresent:SetDisableTex( "DLG_Common_New_Texture51.TGA", "presentbutton_small_normal" )
g_pButtonPresent:SetNormalTex( "DLG_Common_New_Texture51.TGA", "presentbutton_small_normal" )
g_pButtonPresent:SetOverTex( "DLG_Common_New_Texture51.TGA", "presentbutton_small_over" )
g_pButtonPresent:SetDownTex( "DLG_Common_New_Texture51.TGA", "presentbutton_small_over" )

g_pButtonPresent:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(82+40-2-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPresent:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(82+40-2-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPresent:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(82+40-2-1,53)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPresent:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(83+40-2-1,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonPresent:SetGuideDesc( STR_ID_2749 )
g_pButtonPresent:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT"] )


g_pButtonCheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCheck )
g_pButtonCheck:SetName( "MainItemSlot_Check" )
g_pButtonCheck:SetDisableTex( "DLG_Common_New_Texture51.TGA", "checkbutton_small_normal" )
g_pButtonCheck:SetNormalTex( "DLG_Common_New_Texture51.TGA", "checkbutton_small_normal" )
g_pButtonCheck:SetOverTex( "DLG_Common_New_Texture51.TGA", "checkbutton_small_over" )
g_pButtonCheck:SetDownTex( "DLG_Common_New_Texture51.TGA", "checkbutton_small_over" )

g_pButtonCheck:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(82+40+40-2-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(82+40+40-2-1,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(82+40+40-2-1,53)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(83+40+40-2-1,54)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCheck:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_STORE"] )


	g_pStaticItemName= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticItemName)
	g_pStaticItemName:SetName( "g_pStaticItemName" )

	g_pStaticItemName:AddString
	{
		-- -- MSG 			= "드래곤 브레스",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(86,14)",
  "COLOR			= D3DXCOLOR(0.35,0.4,0.35,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
		g_pStaticCashNum= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashNum)
	g_pStaticCashNum:SetName( "g_pStaticCashNum" )

	g_pStaticCashNum:AddString
	{
		-- MSG 			= "999,999 캐시",
		FONT_INDEX		= XF_DODUM_15_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(102,32)",
  "COLOR			= D3DXCOLOR(0.35,0.4,0.35,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}


