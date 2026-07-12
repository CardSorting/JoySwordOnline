-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--g_pUIDialog:SetPos( 347,220 )

g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Buy" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 347,220, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 347,220 + 53, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 347,220 + 53 + 53, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 347,220 + 53 + 53 + 53, 0 ) )

g_pStaticCashShop_BuyWindow_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_BuyWindow_Slot )
g_pStaticCashShop_BuyWindow_Slot:SetName( "g_pStaticCashShop_BuyWindow_Slot" )


g_pPictureCashShop_BuyWindow_Slot_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow_Slot:AddPicture( g_pPictureCashShop_BuyWindow_Slot_BG1 )

g_pPictureCashShop_BuyWindow_Slot_BG1:SetTex( "DLG_Common_New_Texture53.TGA", "checkbox" )

g_pPictureCashShop_BuyWindow_Slot_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(8-3,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_BuyWindow_Slot_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow_Slot:AddPicture( g_pPictureCashShop_BuyWindow_Slot_BG2 )

g_pPictureCashShop_BuyWindow_Slot_BG2:SetTex( "DLG_Common_New_Texture53.TGA", "line2" )

g_pPictureCashShop_BuyWindow_Slot_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(77-5,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_BuyWindow_Slot_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow_Slot:AddPicture( g_pPictureCashShop_BuyWindow_Slot_BG3 )

g_pPictureCashShop_BuyWindow_Slot_BG3:SetTex( "DLG_Common_New_Texture53.TGA", "line2" )

g_pPictureCashShop_BuyWindow_Slot_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194-11,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashShop_BuyWindow_Slot_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow_Slot:AddPicture( g_pPictureCashShop_BuyWindow_Slot_BG4 )

g_pPictureCashShop_BuyWindow_Slot_BG4:SetTex( "DLG_Common_New_Texture53.TGA", "line1" )

g_pPictureCashShop_BuyWindow_Slot_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticCashShop_BuyWindow_Slot_Image = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_BuyWindow_Slot_Image )
g_pStaticCashShop_BuyWindow_Slot_Image:SetName( "g_pStaticCashShop_BuyWindow_Slot_Image" )

g_pPictureCashShop_BuyWindow_Slot_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow_Slot_Image:AddPicture( g_pPictureCashShop_BuyWindow_Slot_BG5 )

g_pPictureCashShop_BuyWindow_Slot_BG5:SetTex( "DLG_Common_New_Texture50.TGA", "black" )

g_pPictureCashShop_BuyWindow_Slot_BG5:SetPoint
{

	 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(32-5,5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(73-5,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










	g_pStatic_Item_ID_1Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_1Line )
	g_pStatic_Item_ID_1Line:SetName( "g_pStatic_Item_ID_1Line" )

	g_pStatic_Item_ID_1Line:AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(148-19,19)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	

	g_pStatic_Item_ID_2Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_2Line )
	g_pStatic_Item_ID_2Line:SetName( "g_pStatic_Item_ID_2Line" )

	g_pStatic_Item_ID_2Line:AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_HVCENTER"],
		"POS 			= D3DXVECTOR2(148-19,25)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	







---------------------------------콤보박스

g_pComboBoxOption_Window_Graphic = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxOption_Window_Graphic )
g_pComboBoxOption_Window_Graphic:SetName( "CashItemList" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxOption_Window_Graphic:SetDropHeight( 20 )
				   
g_pComboBoxOption_Window_Graphic:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxOption_Window_Graphic:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )


g_pComboBoxOption_Window_Graphic:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )


g_pComboBoxOption_Window_Graphic:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBoxOption_Window_Graphic:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBoxOption_Window_Graphic:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )


g_pComboBoxOption_Window_Graphic:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )




--자동으로 만들 때
--g_pComboBoxOption_Window_Graphic:SetPos( 200, 129 )
--g_pComboBoxOption_Window_Graphic:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboBoxOption_Window_Graphic:SetTextPos( 200-11, 14)
g_pComboBoxOption_Window_Graphic:SetTextSize( 115, 21)
--텍스트 시작 포인트
g_pComboBoxOption_Window_Graphic:SetTextStringOffsetPos( 3, 4 )
g_pComboBoxOption_Window_Graphic:SetButtonPos( 305, 14)
g_pComboBoxOption_Window_Graphic:SetButtonSize( 22, 22)

g_pComboBoxOption_Window_Graphic:SetCustomMsgSelectionChanged( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_PRICE_CHANGED"] ) 


		------------------(채크 박스)
	
	
	g_pCheckBoxCashShop_BuyWindow_Slot = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxCashShop_BuyWindow_Slot:SetName( "g_pCheckBoxCashShop_BuyWindow_Slot" )
	g_pUIDialog:AddControl( g_pCheckBoxCashShop_BuyWindow_Slot )

	g_pCheckBoxCashShop_BuyWindow_Slot:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashShop_BuyWindow_Slot:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(9,19)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(22,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(5,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxCashShop_BuyWindow_Slot:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_EACH_CHECK_CHANGED"] )
g_pCheckBoxCashShop_BuyWindow_Slot:SetCustomMsgUnChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_EACH_CHECK_CHANGED"] )







