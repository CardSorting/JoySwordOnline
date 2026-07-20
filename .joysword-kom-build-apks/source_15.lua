-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_ItemToInven" )
g_pUIDialog:SetPos( 324,128-20 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_CANCEL"] )

g_pStaticCashShop_Move_Inventory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_Move_Inventory )
g_pStaticCashShop_Move_Inventory:SetName( "g_pStaticCashShop_Move_Inventory" )

-------제일 큰 배경
g_pPictureCashshop_MoveInventory_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG1 )

g_pPictureCashshop_MoveInventory_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPictureCashshop_MoveInventory_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG2 )

g_pPictureCashshop_MoveInventory_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPictureCashshop_MoveInventory_BG2:SetPoint
{
	ADD_SIZE_Y = 219+141+100,
	"LEFT_TOP		= D3DXVECTOR2(0,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_MoveInventory_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG3 )

g_pPictureCashshop_MoveInventory_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPictureCashshop_MoveInventory_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,275+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------타이틀
g_pPictureCashshop_MoveInventory_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_Title )

g_pPictureCashshop_MoveInventory_Title:SetTex( "DLG_Common_New_Texture53.TGA", "moveinventory" )

g_pPictureCashshop_MoveInventory_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(65 + 30,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







------위에 네모배경
g_pPictureCashshop_MoveInventory_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG4 )

g_pPictureCashshop_MoveInventory_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_MoveInventory_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG5 )

g_pPictureCashshop_MoveInventory_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_MoveInventory_BG5:SetPoint
{
	ADD_SIZE_Y = 104+141+100,
	"LEFT_TOP		= D3DXVECTOR2(17,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG6 )

g_pPictureCashshop_MoveInventory_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_MoveInventory_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,168+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----아레 네모 배경
g_pPictureCashshop_MoveInventory_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG7 )

g_pPictureCashshop_MoveInventory_BG7:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_MoveInventory_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,186+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG8 )

g_pPictureCashshop_MoveInventory_BG8:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_MoveInventory_BG8:SetPoint
{
	ADD_SIZE_Y = 67,
	"LEFT_TOP		= D3DXVECTOR2(17,197+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG9 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG9 )

g_pPictureCashshop_MoveInventory_BG9:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_MoveInventory_BG9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,265+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_MoveInventory_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG10 )

g_pPictureCashshop_MoveInventory_BG10:SetTex( "DLG_Common_New_Texture46.TGA", "slot1" )

g_pPictureCashshop_MoveInventory_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG11 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG11 )

g_pPictureCashshop_MoveInventory_BG11:SetTex( "DLG_Common_New_Texture46.TGA", "slot2" )

g_pPictureCashshop_MoveInventory_BG11:SetPoint
{
	ADD_SIZE_Y = 66+141+100,
	"LEFT_TOP		= D3DXVECTOR2(22,83)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_BG12 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG12 )

g_pPictureCashshop_MoveInventory_BG12:SetTex( "DLG_Common_New_Texture46.TGA", "slot3" )

g_pPictureCashshop_MoveInventory_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,150+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- g_pPictureCashshop_MoveInventory_BG13 = g_pUIDialog:CreatePicture()
-- g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_BG13 )

-- g_pPictureCashshop_MoveInventory_BG13:SetTex( "DLG_Common_New_Texture53.TGA", "moveinventory_comment" )

-- g_pPictureCashshop_MoveInventory_BG13:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(34,196+141+100)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


----------보내기 코멘트--

g_pPictureCashshop_Move_Inventory_ifo1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_Move_Inventory_ifo1 )

g_pPictureCashshop_Move_Inventory_ifo1:SetTex( "DLG_Common_New_Texture53.TGA", "info" )

g_pPictureCashshop_Move_Inventory_ifo1:SetPoint
{
ADD_SIZE_X =-3,
ADD_SIZE_Y =-3,

	"LEFT_TOP		= D3DXVECTOR2(32,196+141+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
	
	
g_pStaticCashshop_BuyWindow_info2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_BuyWindow_info2 )	
g_pStaticCashshop_BuyWindow_info2:SetName( "g_pStaticCashshop_PresentWindow_info" )
	g_pStaticCashshop_BuyWindow_info2:AddString
	{
	 MSG 			= STR_ID_9792,
	 --MSG 			= "해당 아이템을 이동하시겠습니까? \n(게임 인벤토리로) 이동한 후에는 청약 철회가 불가능합니다. ",
	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(34+15,196+141+100)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

g_pPictureCashshop_MoveInventory_Select_All = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_Select_All )

g_pPictureCashshop_MoveInventory_Select_All:SetTex( "DLG_Common_New_Texture53.TGA", "Select_All" )

g_pPictureCashshop_MoveInventory_Select_All:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168-112,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_Select_All = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_Select_All )

g_pPictureCashshop_MoveInventory_Select_All:SetTex( "DLG_Common_New_Texture53.TGA", "Item_Name" )

g_pPictureCashshop_MoveInventory_Select_All:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(190,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_MoveInventory_Bar2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_Bar2 )

g_pPictureCashshop_MoveInventory_Bar2:SetTex( "DLG_Common_New_Texture53.TGA", "line2" )

g_pPictureCashshop_MoveInventory_Bar2:SetPoint
{
ADD_SIZE_Y = -23,
	"LEFT_TOP		= D3DXVECTOR2(106,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_MoveInventory_Bar = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashshop_MoveInventory_Bar )

g_pPictureCashshop_MoveInventory_Bar:SetTex( "DLG_Common_New_Texture53.TGA", "line1" )

g_pPictureCashshop_MoveInventory_Bar:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----체크박스
g_pPictureCashShop_MoveInventory_Checkbox = g_pUIDialog:CreatePicture()
g_pStaticCashShop_Move_Inventory:AddPicture( g_pPictureCashShop_MoveInventory_Checkbox )

g_pPictureCashShop_MoveInventory_Checkbox:SetTex( "DLG_Common_New_Texture53.TGA", "checkbox" )

g_pPictureCashShop_MoveInventory_Checkbox:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(38,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	
	
	g_pCheckBoxCashShop_MoveInventory = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxCashShop_MoveInventory:SetName( "g_pCheckBoxCashShop_MoveInventory" )
	g_pUIDialog:AddControl( g_pCheckBoxCashShop_MoveInventory )

	g_pCheckBoxCashShop_MoveInventory:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashShop_MoveInventory:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashShop_MoveInventory:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(38,64)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(45+13,64+13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashShop_MoveInventory:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(36,62)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxCashShop_MoveInventory:SetChecked( true )
g_pCheckBoxCashShop_MoveInventory:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_ALL_CHECK_CHANGED"] )
g_pCheckBoxCashShop_MoveInventory:SetCustomMsgUnChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_ALL_CHECK_CHANGED"] )











----닫기 버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_MoveInventory_Exit" )
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
g_pButtonX:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_CANCEL"]  )

----취소 버튼
g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "Cashshop_MoveInventory_Cancel" )
g_pButtonCancel:SetNormalTex( "DLG_Common_New_Texture53.tga", "cancel_normal" )

g_pButtonCancel:SetOverTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetDownTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(188,223+141+100+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188,223+141+100+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(189,224+141+100+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_CANCEL"]  )

------확인 버튼 
g_pButtonOK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOK )
g_pButtonOK:SetName( "Cashshop_MoveInventory_OK" )
g_pButtonOK:SetNormalTex( "DLG_Common_New_Texture53.tga", "ok_button_normal" )

g_pButtonOK:SetOverTex( "DLG_Common_New_Texture53.tga", "ok_button_over" )

g_pButtonOK:SetDownTex( "DLG_Common_New_Texture53.tga", "ok_button_over" )

g_pButtonOK:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(78,223+141+100+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(78,223+141+100+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(79,224+141+100+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOK:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_OK"]  )





g_pButtonCashshop_Buywindow_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_Buywindow_Left_Triangle )
g_pButtonCashshop_Buywindow_Left_Triangle:SetName( "Cashshop_Movewindow_Left_Triangle" )
g_pButtonCashshop_Buywindow_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonCashshop_Buywindow_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )

g_pButtonCashshop_Buywindow_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )

g_pButtonCashshop_Buywindow_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902-759+10,101+204-25+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900-759+10,99+204-25+100)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(902-759+10,101+204-25+100)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Left_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_PREV_PAGE"] )



g_pButtonCashshop_Buywindow_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCashshop_Buywindow_Right_Triangle )
g_pButtonCashshop_Buywindow_Right_Triangle:SetName( "Cashshop_Movewindow_Right_Triangle" )
g_pButtonCashshop_Buywindow_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonCashshop_Buywindow_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )

g_pButtonCashshop_Buywindow_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )

g_pButtonCashshop_Buywindow_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966-759+10,101+204-25+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964-759+10,99+204-25+100)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(966-759+10,101+204-25+100)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCashshop_Buywindow_Right_Triangle:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_ITEM_TO_INVEN_POP_UP_NEXT_PAGE"] )

	g_pStaticCashshop_Buywindow_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_Buywindow_Font )
	g_pStaticCashshop_Buywindow_Font:SetName( "g_pStaticCashshop_Movewindow_Font" )

	g_pStaticCashshop_Buywindow_Font:AddString
	{
		-- MSG 			= "1/9",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(942-759+10,103+204-25+100)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
