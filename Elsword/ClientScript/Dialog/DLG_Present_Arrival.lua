-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Present_Accept" )
g_pUIDialog:SetPos( 324,168 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PRESENT_ARRIVAL_CLOSE"] )



g_pStaticCashShop_PresentWindow_Accept = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Accept )
g_pStaticCashShop_PresentWindow_Accept:SetName( "g_pStaticCashShop_PresentWindow_Accept" )


g_pPictureCashshop_PresentWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG1 )

g_pPictureCashshop_PresentWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPictureCashshop_PresentWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG2 )

g_pPictureCashshop_PresentWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPictureCashshop_PresentWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 220,
	"LEFT_TOP		= D3DXVECTOR2(0,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_PresentWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG3 )

g_pPictureCashshop_PresentWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPictureCashshop_PresentWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCashshop_PresentWindow_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_Title )

g_pPictureCashshop_PresentWindow_Title:SetTex( "DLG_Common_New_Texture56.TGA", "ID_BOX" )
;
g_pPictureCashshop_PresentWindow_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	g_pStaticCashShop_PresentWindow_Accept = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Accept )
	g_pStaticCashShop_PresentWindow_Accept:SetName( "User_Name" )

	g_pStaticCashShop_PresentWindow_Accept:AddString
	{
		-- MSG 			= "엘소드테스트",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(20,23)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
	}
	
	








g_pPictureCashshop_PresentWindow_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG4 )

g_pPictureCashshop_PresentWindow_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_PresentWindow_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG5 )

g_pPictureCashshop_PresentWindow_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_PresentWindow_BG5:SetPoint
{
	ADD_SIZE_Y = 140,
	"LEFT_TOP		= D3DXVECTOR2(17,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG6 )

g_pPictureCashshop_PresentWindow_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_PresentWindow_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCashshop_PresentWindow_BG10 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG10 )

g_pPictureCashshop_PresentWindow_BG10:SetTex( "DLG_Common_New_Texture46.TGA", "slot1" )

g_pPictureCashshop_PresentWindow_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21+1,91-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG11 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG11 )

g_pPictureCashshop_PresentWindow_BG11:SetTex( "DLG_Common_New_Texture46.TGA", "slot2" )

g_pPictureCashshop_PresentWindow_BG11:SetPoint
{
	ADD_SIZE_Y = 48,
	"LEFT_TOP		= D3DXVECTOR2(21+1,116-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG12 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_BG12 )

g_pPictureCashshop_PresentWindow_BG12:SetTex( "DLG_Common_New_Texture46.TGA", "slot3" )

g_pPictureCashshop_PresentWindow_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21+1,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--선물메세지--

g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_Common_New_Texture54.TGA", "Present_Comment2" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(154,163)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_Line1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_Line1 )

g_pPictureCashshop_PresentWindow_Line1:SetTex( "DLG_Common_New_Texture53.TGA", "Line1" )

g_pPictureCashshop_PresentWindow_Line1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCashshop_PresentWindow_Box1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_Box1 )

g_pPictureCashshop_PresentWindow_Box1:SetTex( "DLG_Common_New_Texture54.TGA", "Message_Box" )

g_pPictureCashshop_PresentWindow_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,182)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	g_pStaticCashShop_PresentWindow_Accept = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Accept )
	g_pStaticCashShop_PresentWindow_Accept:SetName( "Present_Message" )

	g_pStaticCashShop_PresentWindow_Accept:AddString
	{
		-- MSG 			= "친구야 접속 좀 해라",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(27,187)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	





--선물 코맨트--

g_pPictureCashshop_PresentWindow_Comment1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept:AddPicture( g_pPictureCashshop_PresentWindow_Comment1 )

g_pPictureCashshop_PresentWindow_Comment1:SetTex( "DLG_Common_New_Texture54.TGA", "Cash_comment2" )

g_pPictureCashshop_PresentWindow_Comment1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42,220)",
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
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PRESENT_ARRIVAL_CLOSE"]  )


--버튼--



g_pButton_Ok = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ok )
g_pButton_Ok:SetName( "OK_Button" )
g_pButton_Ok:SetNormalTex( "DLG_Common_New_Texture53.tga", "Ok_Button_normal" )

g_pButton_Ok:SetOverTex( "DLG_Common_New_Texture53.tga", "Ok_Button_over" )

g_pButton_Ok:SetDownTex( "DLG_Common_New_Texture53.tga", "Ok_Button_over" )

g_pButton_Ok:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109+3,241)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ok:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109+3,241)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ok:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109+3,241+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Ok:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PRESENT_ARRIVAL_CLOSE"]  )
	
	
	
------------선물 슬롯------


g_pStaticCashShop_PresentWindow_Accept_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Accept_Slot )
g_pStaticCashShop_PresentWindow_Accept_Slot:SetName( "g_pStaticCashShop_PresentWindow_Accept_BigSlot" )



g_pPictureCashShop_PresentWindow_Slot_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept_Slot:AddPicture( g_pPictureCashShop_PresentWindow_Slot_BG3 )

g_pPictureCashShop_PresentWindow_Slot_BG3:SetTex( "DLG_Common_New_Texture51.TGA", "Itemslot_Big" )

g_pPictureCashShop_PresentWindow_Slot_BG3:SetPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(33,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticCashShop_PresentWindow_Accept_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow_Accept_Slot )
g_pStaticCashShop_PresentWindow_Accept_Slot:SetName( "g_pStaticCashShop_PresentWindow_Accept_Slot" )



g_pPictureCashShop_PresentWindow_Slot_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow_Accept_Slot:AddPicture( g_pPictureCashShop_PresentWindow_Slot_BG4 )

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
		MSG 			= STR_ID_974,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(220,96)",
		"COLOR			= D3DXCOLOR(0.5,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

