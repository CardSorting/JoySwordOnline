-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Buy" )
g_pUIDialog:SetPos( 324,128 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_CANCEL"] )

--------
g_pStaticCashShop_BuyWindow_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_BuyWindow_Back )
g_pStaticCashShop_BuyWindow_Back:SetName( "g_pStaticCashShop_BuyWindow_Back" )


g_pPictureCashshop_BuyWindow_BG0 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow_Back:AddPicture( g_pPictureCashshop_BuyWindow_BG0 )

g_pPictureCashshop_BuyWindow_BG0:SetTex( "DLG_Common_New_Texture50.TGA", "BLACK" )

g_pPictureCashshop_BuyWindow_BG0:SetPoint
{
 ADD_SIZE_X=1024 ,
 ADD_SIZE_Y=768,
 
	"LEFT_TOP		= D3DXVECTOR2(-324,-128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}

------


g_pStaticCashShop_BuyWindow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_BuyWindow )
g_pStaticCashShop_BuyWindow:SetName( "g_pStaticCashShop_BuyWindow" )

------제일 큰 배경
g_pPictureCashshop_BuyWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG1 )

g_pPictureCashshop_BuyWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPictureCashshop_BuyWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG2 )

g_pPictureCashshop_BuyWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPictureCashshop_BuyWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 480,
	"LEFT_TOP		= D3DXVECTOR2(0,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_BuyWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG3 )

g_pPictureCashshop_BuyWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPictureCashshop_BuyWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,525+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------타이틀
g_pPictureCashshop_BuyWindow_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_Title )

g_pPictureCashshop_BuyWindow_Title:SetTex( "DLG_Common_New_Texture53.TGA", "buy_title" )
;
g_pPictureCashshop_BuyWindow_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(124,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------- 위의 네모 배경
g_pPictureCashshop_BuyWindow_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG4 )

g_pPictureCashshop_BuyWindow_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_BuyWindow_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG5 )

g_pPictureCashshop_BuyWindow_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_BuyWindow_BG5:SetPoint
{
	ADD_SIZE_Y = 264,
	"LEFT_TOP		= D3DXVECTOR2(17,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG6 )

g_pPictureCashshop_BuyWindow_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_BuyWindow_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,328)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------아래 네모 배경
g_pPictureCashshop_BuyWindow_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG7 )

g_pPictureCashshop_BuyWindow_BG7:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_BuyWindow_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,345)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG8 )

g_pPictureCashshop_BuyWindow_BG8:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_BuyWindow_BG8:SetPoint
{
	ADD_SIZE_Y = 175,
	"LEFT_TOP		= D3DXVECTOR2(17,357)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG9 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG9 )

g_pPictureCashshop_BuyWindow_BG9:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_BuyWindow_BG9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,515+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_BuyWindow_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG10 )

g_pPictureCashshop_BuyWindow_BG10:SetTex( "DLG_Common_New_Texture46.TGA", "slot1" )

g_pPictureCashshop_BuyWindow_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG11 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG11 )

g_pPictureCashshop_BuyWindow_BG11:SetTex( "DLG_Common_New_Texture46.TGA", "slot2" )

g_pPictureCashshop_BuyWindow_BG11:SetPoint
{
	ADD_SIZE_Y = 196,
	"LEFT_TOP		= D3DXVECTOR2(21,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG12 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG12 )

g_pPictureCashshop_BuyWindow_BG12:SetTex( "DLG_Common_New_Texture46.TGA", "slot3" )

g_pPictureCashshop_BuyWindow_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,313)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--구입  코맨트--

g_pPictureCashshop_BuyWindow_ifo1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_ifo1 )

g_pPictureCashshop_BuyWindow_ifo1:SetTex( "DLG_Common_New_Texture53.TGA", "info" )

g_pPictureCashshop_BuyWindow_ifo1:SetPoint
{
ADD_SIZE_X =-5,
ADD_SIZE_Y =-5,

	"LEFT_TOP		= D3DXVECTOR2(33,351)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
	
	
g_pStaticCashshop_BuyWindow_info2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_BuyWindow_info2 )	
g_pStaticCashshop_BuyWindow_info2:SetName( "g_pStaticCashshop_BuyWindow_Refund" )
	g_pStaticCashshop_BuyWindow_info2:AddString
	{
	 MSG 			= STR_ID_9794,
	 --MSG 			= "해당 아이템을 구매하시겠습니까? \n구매 즉시 (인벤토리)에서 해당 아이템을 확인할 수 있으며,\n구매 후 7일 기간 내 청약 철회를 할 수 있습니다.",
	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(50,351)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	






-- g_pPictureCashshop_BuyWindow_BG13 = g_pUIDialog:CreatePicture()
-- g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG13 )

-- g_pPictureCashshop_BuyWindow_BG13:SetTex( "DLG_Common_New_Texture49.TGA", "buy_comment" )

-- g_pPictureCashshop_BuyWindow_BG13:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(39,351)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


g_pPictureCashshop_BuyWindow_BG14 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG14 )

g_pPictureCashshop_BuyWindow_BG14:SetTex( "DLG_Common_New_Texture52.TGA", "mycash_window" )

g_pPictureCashshop_BuyWindow_BG14:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,371+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pPictureCashshop_BuyWindow_BG15 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_BuyWindow:AddPicture( g_pPictureCashshop_BuyWindow_BG15 )

g_pPictureCashshop_BuyWindow_BG15:SetTex( "DLG_Common_New_Texture53.TGA", "index_title" )

g_pPictureCashshop_BuyWindow_BG15:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(359-20,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357-20,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358-20,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_CANCEL"]  )


----------------캐시, 구입, 취소 버튼
g_pButtonCash_Charge = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCash_Charge )
g_pButtonCash_Charge:SetName( "Cash_Charge" )
g_pButtonCash_Charge:SetNormalTex( "DLG_Common_New_Texture53.tga", "cash_charge_normal" )

g_pButtonCash_Charge:SetOverTex( "DLG_Common_New_Texture53.tga", "cash_charge_over" )

g_pButtonCash_Charge:SetDownTex( "DLG_Common_New_Texture53.tga", "cash_charge_over" )

g_pButtonCash_Charge:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+3,479+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+3,479+18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+3,480+18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CASH_CHARGE"]  )

g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "Buy_Window" )
g_pButtonBuy:SetNormalTex( "DLG_Common_New_Texture53.tga", "buy_normal" )

g_pButtonBuy:SetOverTex( "DLG_Common_New_Texture53.tga", "buy_over" )

g_pButtonBuy:SetDownTex( "DLG_Common_New_Texture53.tga", "buy_over" )

g_pButtonBuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109+3,479+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109+3,479+18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109+3,480+18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_OK"]  )

g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "Cancel" )
g_pButtonCancel:SetNormalTex( "DLG_Common_New_Texture53.tga", "cancel_normal" )

g_pButtonCancel:SetOverTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetDownTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109+109+3,479+18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109+109+3,479+18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109+109+3,480+18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_CANCEL"]  )



g_pButtonCashshop_Buywindow_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_Buywindow_Left_Triangle )
g_pButtonCashshop_Buywindow_Left_Triangle:SetName( "Cashshop_Buywindow_Left_Triangle" )
g_pButtonCashshop_Buywindow_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonCashshop_Buywindow_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonCashshop_Buywindow_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonCashshop_Buywindow_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902-759+10,101+204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900-759+10,99+204)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902-759+10,101+204)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCashshop_Buywindow_Left_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_PREV_PAGE"] )


g_pButtonCashshop_Buywindow_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_Buywindow_Right_Triangle )
g_pButtonCashshop_Buywindow_Right_Triangle:SetName( "Cashshop_Buywindow_Right_Triangle" )
g_pButtonCashshop_Buywindow_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonCashshop_Buywindow_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonCashshop_Buywindow_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonCashshop_Buywindow_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966-759+10,101+204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964-759+10,99+204)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966-759+10,101+204)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Right_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_NEXT_PAGE"] )


	g_pStaticCashshop_Buywindow_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_Buywindow_Font )
	g_pStaticCashshop_Buywindow_Font:SetName( "g_pStaticCashshop_Buywindow_Font" )

	g_pStaticCashshop_Buywindow_Font:AddString
	{
		-- MSG 			= "1/9",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(942-759+10,103+204)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
	
		g_pStaticCashshop_Buywindow_Mycash = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_Buywindow_Mycash )
	g_pStaticCashshop_Buywindow_Mycash:SetName( "g_pStaticCashshop_Buywindow_Mycash" )

	g_pStaticCashshop_Buywindow_Mycash:AddString
	{
		--MSG 			= "900,000",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(317,393+20)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
			g_pStaticCashshop_Buywindow_Myrest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_Buywindow_Myrest )
	g_pStaticCashshop_Buywindow_Myrest:SetName( "g_pStaticCashshop_Buywindow_Myrest" )

	g_pStaticCashshop_Buywindow_Myrest:AddString
	{
		--MSG 			= "900,000",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(317,436+20)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}









-----------체크박스

	g_pCheckBoxCashShop_BuyWindow_Slot = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxCashShop_BuyWindow_Slot:SetName( "g_pCheckBoxCashShop_BuyWindow_Slot" )
	g_pUIDialog:AddControl( g_pCheckBoxCashShop_BuyWindow_Slot )

	g_pCheckBoxCashShop_BuyWindow_Slot:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashShop_BuyWindow_Slot:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(30,62)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(45,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(30-2,62-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pCheckBoxCashShop_BuyWindow_Slot:SetChecked( true )
g_pCheckBoxCashShop_BuyWindow_Slot:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_ALL_CHECK_CHANGED"] )
g_pCheckBoxCashShop_BuyWindow_Slot:SetCustomMsgUnChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_BUY_POP_UP_ALL_CHECK_CHANGED"] )


















