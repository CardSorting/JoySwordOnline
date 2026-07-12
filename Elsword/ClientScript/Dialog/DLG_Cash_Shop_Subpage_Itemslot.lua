-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Itemslot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 500, 115, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 500, 115+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 500, 115+89+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 500, 115+89+89+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 500, 115+89+89+89+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 750, 115, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 750, 115+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 750, 115+89+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 750, 115+89+89+89, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 750, 115+89+89+89+89, 0 ) )

g_pStaticCashshop_Subwindow_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_Subwindow_Slot )
g_pStaticCashshop_Subwindow_Slot:SetName( "g_pStaticCashshop_Subwindow_Slot" )


g_pPictureCashshop_Subwindow_Slot_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Subwindow_Slot:AddPicture( g_pPictureCashshop_Subwindow_Slot_BG1 )

g_pPictureCashshop_Subwindow_Slot_BG1:SetTex( "DLG_Common_New_Texture51.TGA", "item_info_back" )

g_pPictureCashshop_Subwindow_Slot_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCashshop_Subwindow_Slot_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashshop_Subwindow_Slot:AddPicture( g_pPictureCashshop_Subwindow_Slot_BG2 )

g_pPictureCashshop_Subwindow_Slot_BG2:SetTex( "DLG_Common_New_Texture37.TGA", "coin" )

g_pPictureCashshop_Subwindow_Slot_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(88,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStatic_Item_ID_1Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_1Line )
	g_pStatic_Item_ID_1Line:SetName( "g_pStaticItemName" )

	g_pStatic_Item_ID_1Line:AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(90,12)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	g_pStatic_Gold = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Gold )
	g_pStatic_Gold:SetName( "g_pStaticCashNum" )

	g_pStatic_Gold:AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(110,32)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
	
	
	
	
	
	
	
	g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "buy" )
g_pButtonBuy:SetNormalTex( "DLG_Common_New_Texture51.TGA", "buy_small_normal" )

g_pButtonBuy:SetOverTex( "DLG_Common_New_Texture51.TGA", "buy_small_over" )

g_pButtonBuy:SetDownTex( "DLG_Common_New_Texture51.TGA", "buy_small_over" )

g_pButtonBuy:SetNormalPoint
{

	ADD_SIZE_X		= -5,
 	"LEFT_TOP		= D3DXVECTOR2(90-3-4-5,63-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{
	ADD_SIZE_X		= -5,
	"LEFT_TOP		= D3DXVECTOR2(86-3-4-5,59-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
     ADD_SIZE_X = -2-5,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(87-3-4-5,60-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY"] )


	g_pButtonPresent = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPresent )
g_pButtonPresent:SetName( "Present" )
g_pButtonPresent:SetDisableTex( "DLG_Common_New_Texture51.TGA", "present_small_normal" )
g_pButtonPresent:SetNormalTex( "DLG_Common_New_Texture51.TGA", "present_small_normal" )
g_pButtonPresent:SetOverTex( "DLG_Common_New_Texture51.TGA", "present_small_over" )
g_pButtonPresent:SetDownTex( "DLG_Common_New_Texture51.TGA", "present_small_over" )

g_pButtonPresent:SetDisablePoint
{

	ADD_SIZE_X		= -5,
 	"LEFT_TOP		= D3DXVECTOR2(90+52-3-4-8,63-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPresent:SetNormalPoint
{

	ADD_SIZE_X		= -5,
 	"LEFT_TOP		= D3DXVECTOR2(90+52-3-4-8,63-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPresent:SetOverPoint
{
	ADD_SIZE_X		= -5,
	"LEFT_TOP		= D3DXVECTOR2(86+52-3-4-8,59-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPresent:SetDownPoint
{
     ADD_SIZE_X = -2 - 5,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(87+52-3-4-8,60-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonPresent:SetGuideDesc( STR_ID_2749 )
g_pButtonPresent:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT"] )



	g_pButtonCart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCart )
g_pButtonCart:SetName( "Cart" )
g_pButtonCart:SetNormalTex( "DLG_Common_New_Texture51_A.TGA", "cart_small_normal" )

g_pButtonCart:SetOverTex( "DLG_Common_New_Texture51_A.TGA", "cart_over" )

g_pButtonCart:SetDownTex( "DLG_Common_New_Texture51_A.TGA", "cart_over" )

g_pButtonCart:SetNormalPoint
{



 	"LEFT_TOP		= D3DXVECTOR2(90+52+52-3-4-10,63-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(86+53+52-3-4-10,59-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCart:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(87+53+52-3-4-10,60-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonCart:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_STORE"] )
