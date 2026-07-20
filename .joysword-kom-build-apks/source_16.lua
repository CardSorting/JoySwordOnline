-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Buy" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 324 + 24 ,128+  80-20, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 324 + 24,	128 + 180-20, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 324 + 24,	128 + 280-20, 0 ) )


g_pStaticCashShop_Move_Inventory_Window_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Move_Inventory_Window_Slot )
g_pStaticCashShop_Move_Inventory_Window_Slot:SetName( "g_pStaticCashShop_Move_Inventory_Window_Slot" )





g_pPictureCashShop_Move_Inventory_Window_Slot_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory_Window_Slot:AddPicture( g_pPictureCashShop_Move_Inventory_Window_Slot_BG2 )

g_pPictureCashShop_Move_Inventory_Window_Slot_BG2:SetTex( "DLG_Common_New_Texture53.TGA", "line2" )

g_pPictureCashShop_Move_Inventory_Window_Slot_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(77-15+18+2,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCashShop_Move_Inventory_Window_Slot_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory_Window_Slot:AddPicture( g_pPictureCashShop_Move_Inventory_Window_Slot_BG4 )

g_pPictureCashShop_Move_Inventory_Window_Slot_BG4:SetTex( "DLG_Common_New_Texture53.TGA", "line1" )

g_pPictureCashShop_Move_Inventory_Window_Slot_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureCashShop_Move_Inventory_Window_Slot_BG4:SetShow( false )




g_pStaticCashShop_Move_Inventory_Window_Slot_Image = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Move_Inventory_Window_Slot_Image )
g_pStaticCashShop_Move_Inventory_Window_Slot_Image:SetName( "g_pStaticCashShop_Move_Inventory_Window_Slot_Image" )



g_pPictureCashShop_Move_Inventory_Window_Slot_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory_Window_Slot_Image:AddPicture( g_pPictureCashShop_Move_Inventory_Window_Slot_BG5 )

g_pPictureCashShop_Move_Inventory_Window_Slot_BG5:SetTex( "DLG_Common_New_Texture50.TGA", "black" )

g_pPictureCashShop_Move_Inventory_Window_Slot_BG5:SetPoint
{

	 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(32-5-10+18,5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73-5-10+18,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










	g_pStatic_Item_ID_1Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_1Line )
	g_pStatic_Item_ID_1Line:SetName( "g_pStatic_Item_ID_1Line" )

	g_pStatic_Item_ID_1Line:AddString
	{
		-- MSG 			= "판타스틱 원더스 그레이트 그레이트",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(70+18+2,19)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}


	g_pStatic_Item_ID_2Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_2Line )
	g_pStatic_Item_ID_2Line:SetName( "g_pStatic_Item_ID_2Line" )

	g_pStatic_Item_ID_2Line:AddString
	{
		-- MSG 			= "판타스틱 원더스 그레이트 그레이트\n판타스틱 원더스 그레이트 그레이트",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(70+18+2,5)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	
	
--체크박스
g_pPictureCashShop_MoveInventory_Slot_Checkbox = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory_Window_Slot:AddPicture( g_pPictureCashShop_MoveInventory_Slot_Checkbox )

g_pPictureCashShop_MoveInventory_Slot_Checkbox:SetTex( "DLG_Common_New_Texture53.TGA", "checkbox" )

g_pPictureCashShop_MoveInventory_Slot_Checkbox:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	
	
	g_pCheckBoxCashShop_MoveInventory_Slot = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxCashShop_MoveInventory_Slot:SetName( "g_pCheckBoxCashShop_MoveInventory_Slot" )
	g_pUIDialog:AddControl( g_pCheckBoxCashShop_MoveInventory_Slot )

	g_pCheckBoxCashShop_MoveInventory_Slot:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashShop_MoveInventory_Slot:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashShop_MoveInventory_Slot:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(14,19)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(14+13,19+13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashShop_MoveInventory_Slot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(12,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxCashShop_MoveInventory_Slot:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_EACH_CHECK_CHANGED"] )
g_pCheckBoxCashShop_MoveInventory_Slot:SetCustomMsgUnChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_EACH_CHECK_CHANGED"] )




	






-- Offline mode: default socket is auto-applied on claim when DI_ISCASHINVENSKIP=1.
-- Multi-option ice-burner rare drops keep DI_ISCASHINVENSKIP=0 so this picker stays visible.
---------------------------------콤보박스

g_pComboBoxOption_Window_Graphic = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxOption_Window_Graphic )
g_pComboBoxOption_Window_Graphic:SetName( "Option_ComboBox" )

g_pComboBoxOption_Window_Graphic:SetDropHeight( 20 )

g_pComboBoxOption_Window_Graphic:SetString
{
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxOption_Window_Graphic:SetTextTex( "DLG_Common_New_Texture55.tga", "LONG_BAR" )
g_pComboBoxOption_Window_Graphic:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )
g_pComboBoxOption_Window_Graphic:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )
g_pComboBoxOption_Window_Graphic:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )
g_pComboBoxOption_Window_Graphic:SetDropdownTex ( "DLG_Common_New_Texture55.tga", "combo_box_bg4" )
g_pComboBoxOption_Window_Graphic:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "blue1" )

g_pComboBoxOption_Window_Graphic:SetTextPos( 17-6, 48)
g_pComboBoxOption_Window_Graphic:SetTextSize( 290, 21)
g_pComboBoxOption_Window_Graphic:SetTextStringOffsetPos( 2+6, 4 )
g_pComboBoxOption_Window_Graphic:SetButtonPos( 308-6, 48)
g_pComboBoxOption_Window_Graphic:SetButtonSize( 22, 22)

g_pComboBoxOption_Window_Graphic:SetCustomMsgSelectionChanged( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_OPTION_CHANGED"] )
g_pComboBoxOption_Window_Graphic:SetShow( true )
