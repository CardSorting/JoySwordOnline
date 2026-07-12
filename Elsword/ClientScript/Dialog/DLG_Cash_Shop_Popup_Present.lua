-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Present" )
g_pUIDialog:SetPos( 324,128 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_CANCEL"]  )

g_pStaticCashShop_PresentWindow_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Back )
g_pStaticCashShop_PresentWindow_Back:SetName( "g_pStaticCashShop_PresentWindow_Back" )


g_pPictureCashshop_PresentWindow_BG0 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Back:AddPicture( g_pPictureCashshop_PresentWindow_BG0 )

g_pPictureCashshop_PresentWindow_BG0:SetTex( "DLG_Common_New_Texture50.TGA", "BLACK" )

g_pPictureCashshop_PresentWindow_BG0:SetPoint
{
 ADD_SIZE_X=1024 ,
 ADD_SIZE_Y=768,
 
	"LEFT_TOP		= D3DXVECTOR2(-324,-128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


---------static
g_pStaticCashShop_PresentWindow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow )
g_pStaticCashShop_PresentWindow:SetName( "g_pStaticCashShop_PresentWindow" )

------제일 큰 배경
g_pPictureCashshop_PresentWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG1 )

g_pPictureCashshop_PresentWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPictureCashshop_PresentWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG2 )

g_pPictureCashshop_PresentWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPictureCashshop_PresentWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 469-38,
	"LEFT_TOP		= D3DXVECTOR2(0,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_PresentWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG3 )

g_pPictureCashshop_PresentWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPictureCashshop_PresentWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,525-38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------타이틀
g_pPictureCashshop_PresentWindow_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Title )

g_pPictureCashshop_PresentWindow_Title:SetTex( "DLG_Common_New_Texture53.TGA", "PRESENT_title" )
;
g_pPictureCashshop_PresentWindow_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(124+19,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







--------위에 있는 네모배경
g_pPictureCashshop_PresentWindow_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG4 )

g_pPictureCashshop_PresentWindow_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_PresentWindow_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG5 )

g_pPictureCashshop_PresentWindow_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_PresentWindow_BG5:SetPoint
{
	ADD_SIZE_Y = 219,
	"LEFT_TOP		= D3DXVECTOR2(17,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG6 )

g_pPictureCashshop_PresentWindow_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_PresentWindow_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,283)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------밑에 네모 배경
g_pPictureCashshop_PresentWindow_BG7 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG7 )

g_pPictureCashshop_PresentWindow_BG7:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_PresentWindow_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,345-41-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG8 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG8 )

g_pPictureCashshop_PresentWindow_BG8:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_PresentWindow_BG8:SetPoint
{
	ADD_SIZE_Y = 167,
	"LEFT_TOP		= D3DXVECTOR2(17,357-41-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG9 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG9 )

g_pPictureCashshop_PresentWindow_BG9:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_PresentWindow_BG9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,515-41+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- g_pPictureCashshop_PresentWindow_BG10 = g_pUIDialog:CreatePicture()
-- g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG10 )

-- g_pPictureCashshop_PresentWindow_BG10:SetTex( "DLG_Common_New_Texture46.TGA", "slot1" )

-- g_pPictureCashshop_PresentWindow_BG10:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(21+1,91-34)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


-- g_pPictureCashshop_PresentWindow_BG11 = g_pUIDialog:CreatePicture()
-- g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG11 )

-- g_pPictureCashshop_PresentWindow_BG11:SetTex( "DLG_Common_New_Texture46.TGA", "slot2" )

-- g_pPictureCashshop_PresentWindow_BG11:SetPoint
-- {
	-- ADD_SIZE_Y = 48,
	-- "LEFT_TOP		= D3DXVECTOR2(21+1,116-34)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


-- g_pPictureCashshop_PresentWindow_BG12 = g_pUIDialog:CreatePicture()
-- g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG12 )

-- g_pPictureCashshop_PresentWindow_BG12:SetTex( "DLG_Common_New_Texture46.TGA", "slot3" )

-- g_pPictureCashshop_PresentWindow_BG12:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(21+1,131)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }




--선물옵션--


g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_Common_New_Texture53.TGA", "User_Nicname" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(28,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_PresentWindow_Message_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Message_Title )

g_pPictureCashshop_PresentWindow_Message_Title:SetTex( "DLG_Common_New_Texture53.TGA", "Present_Message" )

g_pPictureCashshop_PresentWindow_Message_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(28,228)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureCashshop_PresentWindow_Password_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Password_Title )

g_pPictureCashshop_PresentWindow_Password_Title:SetTex( "DLG_Common_New_Texture53.TGA", "Nexon_Password" )

g_pPictureCashshop_PresentWindow_Password_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(28,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


g_pPictureCashshop_PresentWindow_Line1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Line1 )

g_pPictureCashshop_PresentWindow_Line1:SetTex( "DLG_Common_New_Texture53.TGA", "Line1" )

g_pPictureCashshop_PresentWindow_Line1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_Line2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Line2 )

g_pPictureCashshop_PresentWindow_Line2:SetTex( "DLG_Common_New_Texture53.TGA", "Line1" )

g_pPictureCashshop_PresentWindow_Line2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,253)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_Box1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Box1 )

g_pPictureCashshop_PresentWindow_Box1:SetTex( "DLG_Common_New_Texture52.TGA", "Box1" )

g_pPictureCashshop_PresentWindow_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCashshop_PresentWindow_Box3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Box3 )

g_pPictureCashshop_PresentWindow_Box3:SetTex( "DLG_Common_New_Texture52.TGA", "Box1" )

g_pPictureCashshop_PresentWindow_Box3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureCashshop_PresentWindow_Box4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Box4 )

g_pPictureCashshop_PresentWindow_Box4:SetTex( "DLG_Common_New_Texture52.TGA", "Box1" )

g_pPictureCashshop_PresentWindow_Box4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,261)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]























---------------------------------콤보박스

g_pComboBoxPresent_Select_User = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxPresent_Select_User )
g_pComboBoxPresent_Select_User:SetName( "g_pComboBoxPresent_Select_User" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxPresent_Select_User:SetDropHeight( 40 )
				   
g_pComboBoxPresent_Select_User:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxPresent_Select_User:SetTextTex( "DLG_Common_New_Texture52.tga", "BOX2" )


g_pComboBoxPresent_Select_User:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )


g_pComboBoxPresent_Select_User:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBoxPresent_Select_User:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBoxPresent_Select_User:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )


g_pComboBoxPresent_Select_User:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )




--g_pComboBoxPresent_Select_User:SetTextTex( "DLG_Common_Button00.tga", "invisible" )


--g_pComboBoxPresent_Select_User:SetButtonTex ( "DLG_Common_Texture09.tga", "Arrow_Down_Normal" )


--g_pComboBoxPresent_Select_User:SetButtonMouseOverTex( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )


--g_pComboBoxPresent_Select_User:SetButtonMouseDownTex ( "DLG_Common_Texture09.tga", "Arrow_Down_Over" )


g_pComboBoxPresent_Select_User:SetDropdownTex ( "DLG_Common_Texture01.tga", "White" )


g_pComboBoxPresent_Select_User:SetDropdownTextTex ( "DLG_Common_Texture09.tga", "Black" )


g_pComboBoxPresent_Select_User:SetScollBarUpButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Over" )

g_pComboBoxPresent_Select_User:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Normal" )

g_pComboBoxPresent_Select_User:SetScollBarDownButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Over" )

g_pComboBoxPresent_Select_User:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Normal" )

g_pComboBoxPresent_Select_User:SetScollBarThumbTex( "DLG_Common_New_Texture02.dds", "Scroll" )

g_pComboBoxPresent_Select_User:SetScollBarTrackTex( "DLG_Common_New_Texture11.tga", "Messenger_1Pix_Deepgrey" )

g_pComboBoxPresent_Select_User:InitScrollBar()



--자동으로 만들 때
--g_pComboBoxOption_Window_Graphic:SetPos( 200, 129 )
--g_pComboBoxOption_Window_Graphic:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboBoxPresent_Select_User:SetTextPos( 155, 189)
g_pComboBoxPresent_Select_User:SetTextSize( 176, 21)
--텍스트 시작 포인트
g_pComboBoxPresent_Select_User:SetTextStringOffsetPos( 3, 4 )
g_pComboBoxPresent_Select_User:SetButtonPos( 330, 189)
g_pComboBoxPresent_Select_User:SetButtonSize( 22, 22)



g_pComboBoxPresent_Select_User:AddItem( "친구에게 선물하기" )
g_pComboBoxPresent_Select_User:SetCustomMsgSelectionChanged( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_POP_UP_CAHNGED_FRIEND"] ) 
g_pComboBoxPresent_Select_User:AddItem( "a" )
g_pComboBoxPresent_Select_User:AddItem( "b" )
g_pComboBoxPresent_Select_User:AddItem( "c" )
g_pComboBoxPresent_Select_User:AddItem( "d" )
g_pComboBoxPresent_Select_User:AddItem( "e" )
g_pComboBoxPresent_Select_User:AddItem( "fF" )
g_pComboBoxPresent_Select_User:AddItem( "g" )
g_pComboBoxPresent_Select_User:AddItem( "h" )




------선물 코맨트--

g_pPictureCashshop_PresentWindow_Comment1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Comment1 )

g_pPictureCashshop_PresentWindow_Comment1:SetTex( "DLG_Common_New_Texture53.TGA", "info" )

g_pPictureCashshop_PresentWindow_Comment1:SetPoint
{
ADD_SIZE_X =-5,
ADD_SIZE_Y =-5,

	"LEFT_TOP		= D3DXVECTOR2(23,312-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
	
	
g_pStaticCashshop_PresentWindow_info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashshop_PresentWindow_info )	
g_pStaticCashshop_PresentWindow_info:SetName( "g_pStaticCashshop_PresentWindow_info" )
	g_pStaticCashshop_PresentWindow_info:AddString
	{
	 MSG 			= STR_ID_9793,
	 --MSG 			= "해당 아이템을 선물하시겠습니까? \n(단, 선물한 아이템은 청약 철회가 불가능합니다.)",
	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(38+2,312-7)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

g_pPictureCashshop_PresentWindow_BG14 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG14 )

g_pPictureCashshop_PresentWindow_BG14:SetTex( "DLG_Common_New_Texture52.TGA", "mycash_window" )

g_pPictureCashshop_PresentWindow_BG14:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,371-41+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--닫기--

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_PresentWindow_Exit" )
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
g_pButtonX:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_CANCEL"]  )



------버튼--

g_pButtonCash_Charge = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCash_Charge )
g_pButtonCash_Charge:SetName( "Cash_Charge" )
g_pButtonCash_Charge:SetNormalTex( "DLG_Common_New_Texture53.tga", "cash_charge_normal" )

g_pButtonCash_Charge:SetOverTex( "DLG_Common_New_Texture53.tga", "cash_charge_over" )

g_pButtonCash_Charge:SetDownTex( "DLG_Common_New_Texture53.tga", "cash_charge_over" )

g_pButtonCash_Charge:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+3,479-41+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+3,479-41+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+3,480-41+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_CASH_CHARGE"]  )


g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "Buy_Window" )
g_pButtonBuy:SetNormalTex( "DLG_Common_New_Texture53.tga", "Gift_normal" )

g_pButtonBuy:SetOverTex( "DLG_Common_New_Texture53.tga", "Gift_over" )

g_pButtonBuy:SetDownTex( "DLG_Common_New_Texture53.tga", "Gift_over" )

g_pButtonBuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109+3,479-41+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109+3,479-41+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109+3,480-41+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_OK"]  )

g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "Cancel" )
g_pButtonCancel:SetNormalTex( "DLG_Common_New_Texture53.tga", "cancel_normal" )

g_pButtonCancel:SetOverTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetDownTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109+109+3,479-41+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109+109+3,479-41+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109+109+3,480-41+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_CANCEL"]  )



	
	
		g_pStaticCashshop_PresentWindow_Mycash = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_PresentWindow_Mycash )
	g_pStaticCashshop_PresentWindow_Mycash:SetName( "g_pStaticCashshop_PresentWindow_Mycash" )

	g_pStaticCashshop_PresentWindow_Mycash:AddString
	{
		-- MSG 			= "900,000",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(317,393-41+3)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
			g_pStaticCashshop_PresentWindow_Myrest = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashshop_PresentWindow_Myrest )
	g_pStaticCashshop_PresentWindow_Myrest:SetName( "g_pStaticCashshop_PresentWindow_Myrest" )

	g_pStaticCashshop_PresentWindow_Myrest:AddString
	{
		-- MSG 			= "900,000",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(317,436-41+3)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



--닉네임 입력--
	
g_pIME_Nicname= g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Nicname )
g_pIME_Nicname:SetName( "IME_Nicname" )
g_pIME_Nicname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(159,164+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(341,182-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Nicname:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Nicname:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Nicname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Nicname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Nicname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Nicname:SetByteLimit( 12 )	
	

	
--선물메세지 입력--	
	
g_pIME_Present_Message = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Present_Message )
g_pIME_Present_Message:SetName( "IME_Present_Message" )
g_pIME_Present_Message:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(159,226+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(341,244-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Present_Message:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Present_Message:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Present_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Present_Message:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Present_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Present_Message:SetLengthLimit( 20 )
	

--넥슨비번 입력--	
--[[	
g_pIME_Password = g_pUIDialog:CreateEditBox()
g_pUIDialog:AddControl( g_pIME_Password )
g_pIME_Password:SetName( "IME_Password" )
g_pIME_Password:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(159,263+1)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(341,281-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Password:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Password:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Password:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Password:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Password:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Password:SetHideChar( "*" )
--]]
	

	
	
------------선물 슬롯------

g_pStaticCashShop_PresentWindow_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Slot )
g_pStaticCashShop_PresentWindow_Slot:SetName( "g_pStaticCashShop_PresentWindow_Slot" )



g_pPictureCashShop_PresentWindow_Slot_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Slot:AddPicture( g_pPictureCashShop_PresentWindow_Slot_BG2 )

g_pPictureCashShop_PresentWindow_Slot_BG2:SetTex( "DLG_Common_New_Texture53.TGA", "line3" )

g_pPictureCashShop_PresentWindow_Slot_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(109,106)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashShop_PresentWindow_Slot_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Slot:AddPicture( g_pPictureCashShop_PresentWindow_Slot_BG3 )

g_pPictureCashShop_PresentWindow_Slot_BG3:SetTex( "DLG_Common_New_Texture51.TGA", "Itemslot_Big" )

g_pPictureCashShop_PresentWindow_Slot_BG3:SetPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(33,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStaticCashShop_PresentWindow_ItemSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_ItemSlot )
g_pStaticCashShop_PresentWindow_ItemSlot:SetName( "g_pStaticCashShop_PresentWindow_ItemSlot" )



g_pPictureCashShop_PresentWindow_Slot_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_ItemSlot:AddPicture( g_pPictureCashShop_PresentWindow_Slot_BG4 )

g_pPictureCashShop_PresentWindow_Slot_BG4:SetTex( "DLG_Common_New_Texture50.TGA", "black" )

g_pPictureCashShop_PresentWindow_Slot_BG4:SetPoint
{

	 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(33+3,68+3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(97+3,132+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










	g_pStatic_Item_ID_1Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_1Line )
	g_pStatic_Item_ID_1Line:SetName( "g_pStatic_Item_ID_1Line" )

	g_pStatic_Item_ID_1Line:AddString
	{
		-- MSG 			= "라이온 하트 댄디룩 상의 (파랑)",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(110,80)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	




---------------------------------콤보박스

g_pComboCash_Shop_Present_Option = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboCash_Shop_Present_Option )
g_pComboCash_Shop_Present_Option:SetName( "g_pComboCash_Shop_Present_Option" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboCash_Shop_Present_Option:SetDropHeight( 20 )
				   
g_pComboCash_Shop_Present_Option:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(70,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboCash_Shop_Present_Option:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )


g_pComboCash_Shop_Present_Option:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )


g_pComboCash_Shop_Present_Option:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboCash_Shop_Present_Option:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboCash_Shop_Present_Option:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )


g_pComboCash_Shop_Present_Option:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )




--자동으로 만들 때
--g_pComboBoxOption_Window_Graphic:SetPos( 200, 129 )
--g_pComboBoxOption_Window_Graphic:SetSize( 100, 50 )

--수동으로 만들 때
g_pComboCash_Shop_Present_Option:SetTextPos( 210, 116)
g_pComboCash_Shop_Present_Option:SetTextSize( 115, 21)
--텍스트 시작 포인트
g_pComboCash_Shop_Present_Option:SetTextStringOffsetPos( 3, 4 )
g_pComboCash_Shop_Present_Option:SetButtonPos( 326, 116)
g_pComboCash_Shop_Present_Option:SetButtonSize( 22, 22)



g_pComboCash_Shop_Present_Option:AddItem( "3개월/15000캐시" )

g_pComboCash_Shop_Present_Option:SetCustomMsgSelectionChanged( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_POP_UP_CHANGED_CASH_PRODUCT"] ) 





	
	
