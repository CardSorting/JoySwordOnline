-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Cash_Shop_Popup_Present" )
g_pUIDialog:SetPos( 324-100-70,128 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_CANCEL"] )


---------static
g_pStaticCashShop_PresentWindow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow )
g_pStaticCashShop_PresentWindow:SetName( "g_pStaticCashShop_PresentWindow" )

------제일 큰 배경
g_pPictureCashshop_PresentWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG1 )

g_pPictureCashshop_PresentWindow_BG1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_451px_Top" )

g_pPictureCashshop_PresentWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG2 )

g_pPictureCashshop_PresentWindow_BG2:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_451px_Middle" )

g_pPictureCashshop_PresentWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 257,
	"LEFT_TOP		= D3DXVECTOR2(0,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_PresentWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG3 )

g_pPictureCashshop_PresentWindow_BG3:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_451px_Bottom" )

g_pPictureCashshop_PresentWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------타이틀
g_pPictureCashshop_PresentWindow_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Title )

g_pPictureCashshop_PresentWindow_Title:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_Title_WeddingWrite" )
;
g_pPictureCashshop_PresentWindow_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(8,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------위에 있는 네모배경
g_pPictureCashshop_PresentWindow_BG4 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG4 )

g_pPictureCashshop_PresentWindow_BG4:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_2_432px_Top" )

g_pPictureCashshop_PresentWindow_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(9,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_PresentWindow_BG5 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG5 )

g_pPictureCashshop_PresentWindow_BG5:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_2_432px_Middle" )

g_pPictureCashshop_PresentWindow_BG5:SetPoint
{
	ADD_SIZE_Y = 215,
	"LEFT_TOP		= D3DXVECTOR2(9,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_RemainingMany = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RemainingMany )
g_pStatic_RemainingMany:SetName( "g_pStatic_RemainingMany" )

g_pStatic_RemainingMany:AddString
{
--	MSG 			= STR_ID_106,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241+70+2+2,178-55-14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureCashshop_PresentWindow_BG6 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG6 )

g_pPictureCashshop_PresentWindow_BG6:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_2_432px_Bottom" )

g_pPictureCashshop_PresentWindow_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(9,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BAR
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )
g_pPictureInfo_BG17:SetPoint
{
	ADD_SIZE_Y	= 222,
	"LEFT_TOP	= D3DXVECTOR2(237,49)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---------문구 입력 BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_Couple_MessageInputt" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(246,131)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---------예식장 이미지 위치  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_InviteWedding_Ruben" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(74,153)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---------예식장 이미지 위치  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_InviteWedding_Sander" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(74,153)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


---------현재 초대 인원 상태창 위치  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_TextInput" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(310,105)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---------아이디 입력창 배경
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_TextInput" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(310,105-27)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---------아이디 입력창 배경
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_TextInput" )
g_pPictureInfo_BG17:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(310-233,105-27-31+5+2)",
	ADD_SIZE_X 	= 32, 
	ADD_SIZE_Y  = -2,
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


---------주례사 배경
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_TextInput" )
g_pPictureInfo_BG17:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(310-233,105-27-31+5+30-2)",
	ADD_SIZE_X 	= 32, 
	ADD_SIZE_Y  = -2,
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

---------결혼 식장 배경
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_TextInput" )
g_pPictureInfo_BG17:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(310-233,105-27-31+5+30-1+25)",
	ADD_SIZE_X 	= 32, 
	ADD_SIZE_Y  = -2,
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
---------------------------------버튼 모음
---HELP 버튼
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )
g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )
g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(390,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(390-4,9-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
    ADD_SIZE_X = -2 ,
    ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(390-4+1,9-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(290)

-----EXIT  버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(417,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(417-4,9-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(417-3,9-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_CANCEL"]  )

------친구 버튼--
g_pButtonFriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend )
g_pButtonFriend:SetName( "Buy_Window" )
g_pButtonFriend:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Friend_Normal" )

g_pButtonFriend:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Friend_Over" )

g_pButtonFriend:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Friend_Over" )

g_pButtonFriend:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(310,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310+1,50+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_FRIEND_LIST"] )

------길드 버튼--
g_pButtonGuild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild )
g_pButtonGuild:SetName( "Guild" )
g_pButtonGuild:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Guild_Normal" )

g_pButtonGuild:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Guild_Over" )

g_pButtonGuild:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Guild_Over" )

g_pButtonGuild:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(376,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(376,50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(376+1,50+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 g_pButtonGuild:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_GUILD_LIST"]  )

------초대목록 버튼--

g_pButtonCash_Charge = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCash_Charge )
g_pButtonCash_Charge:SetName( "Cash_Charge" )
g_pButtonCash_Charge:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Couple_InvireList_Normal" )

g_pButtonCash_Charge:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Couple_InvireList_Over" )

g_pButtonCash_Charge:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Couple_InvireList_Over" )

g_pButtonCash_Charge:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(246,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(246,249)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(246+1,249+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash_Charge:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_ADD_LIST"] )



g_pComboInviteUserList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboInviteUserList )
g_pComboInviteUserList:SetName( "g_pComboInviteUserList" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboInviteUserList:SetDropHeight( 20 )
				   
--수동으로 만들 때
g_pComboInviteUserList:SetTextPos( 210-100, 189+36)
g_pComboInviteUserList:SetTextSize( 115+100, 21)
--텍스트 시작 포인트
g_pComboInviteUserList:SetTextStringOffsetPos( 10, 4 )
g_pComboInviteUserList:SetButtonPos( 326, 189+36)
g_pComboInviteUserList:SetButtonSize( 22, 22)


g_pComboInviteUserList:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(70,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboInviteUserList:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )
g_pComboInviteUserList:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )
g_pComboInviteUserList:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )
g_pComboInviteUserList:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )
g_pComboInviteUserList:SetDropdownTex ( "DLG_Common_New_Texture51.tga", "combobox_bg3" )
g_pComboInviteUserList:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )


g_pComboInviteUserList:SetCustomMsgSelectionChanged( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_POP_UP_CHANGED_CASH_PRODUCT"] ) 

g_pComboInviteUserList:SetShow ( false )
	

------보내기 버튼--
g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "Buy_Window" )
g_pButtonBuy:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Couple_Send_Normal" )

g_pButtonBuy:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Couple_Send_Over" )

g_pButtonBuy:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Couple_Send_Over" )

g_pButtonBuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(350,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(350,249)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(350+1,249+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_OK"]  )

------엔터 버튼--
g_pButtonBuy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBuy )
g_pButtonBuy:SetName( "Buy_Window" )
g_pButtonBuy:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Enter" )

g_pButtonBuy:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Enter_Over" )

g_pButtonBuy:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Enter_Over" )

g_pButtonBuy:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(410+5,82-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(410+5,82-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(410+1+5,82+1-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBuy:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_ADD_INVITE_USER_ID"]  )

----------------------------------------------------------------------------------------------
-------------------작은 타이틀 모음
--일시--
g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_Date" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--주례사--
g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_Officiant" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--결혼 식장--
g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_WeddingPlace" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,106)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--선택 초대--
g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_ChoiceInvite" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(247,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--직접 입력--
g_pPictureCashshop_PresentWindow_Nicname_Title = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_Nicname_Title )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_DirectWrite" )

g_pPictureCashshop_PresentWindow_Nicname_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(247,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







	
--[[	
------------결혼식장 이미지 부분------

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

]]--


---------------------------------일시

g_pPickedWeddingDay = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pPickedWeddingDay )
g_pPickedWeddingDay:SetName( "g_pPickedWeddingDay" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pPickedWeddingDay:SetDropHeight( 20 )
				   
g_pPickedWeddingDay:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(80,55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPickedWeddingDay:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pPickedWeddingDay:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pPickedWeddingDay:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pPickedWeddingDay:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pPickedWeddingDay:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pPickedWeddingDay:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )
g_pPickedWeddingDay:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pPickedWeddingDay:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pPickedWeddingDay:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pPickedWeddingDay:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pPickedWeddingDay:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pPickedWeddingDay:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pPickedWeddingDay:InitScrollBar()


--수동으로 만들 때
g_pPickedWeddingDay:SetTextPos( 210-100-35-25+20+8, 189-69-60)
g_pPickedWeddingDay:SetTextSize( 115+30-8, 21)
--텍스트 시작 포인트
g_pPickedWeddingDay:SetTextStringOffsetPos( 10, -3 )
g_pPickedWeddingDay:SetButtonPos( 205-22+30+3, 60-4+1)
g_pPickedWeddingDay:SetButtonSize( 15, 12)




---------------------------------주례사

g_pComboHireNPC = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboHireNPC )
g_pComboHireNPC:SetName( "g_pComboHireNPC" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboHireNPC:SetDropHeight( 20 )
				   
g_pComboHireNPC:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(80,83)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pComboHireNPC:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboHireNPC:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboHireNPC:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboHireNPC:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboHireNPC:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboHireNPC:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )
g_pComboHireNPC:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboHireNPC:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboHireNPC:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboHireNPC:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboHireNPC:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboHireNPC:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboHireNPC:InitScrollBar()




--수동으로 만들 때
g_pComboHireNPC:SetTextPos( 210-100-35-25+20+8, 189-69-65-4+30+7)
g_pComboHireNPC:SetTextSize( 115+30-8, 21)
--텍스트 시작 포인트
g_pComboHireNPC:SetTextStringOffsetPos( 10, -3 )
g_pComboHireNPC:SetButtonPos( 205-22+3+30, 60-4+30+1-3)
g_pComboHireNPC:SetButtonSize( 15, 12)







--#define SERV_RELATIONSHIP_SYSTEM_INT
g_pComboHireNPC:AddItemStrID( 1829 ) -- 하거스
g_pComboHireNPC:AddItemStrID( 1863 ) -- 헬렌
g_pComboHireNPC:AddItemStrID( 3826 ) -- 글레이브

-- g_pComboHireNPC:SetCustomMsgSelectionChanged( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_POP_UP_CHANGED_CASH_PRODUCT"] ) 


	
---------------------------------결혼 식장

g_pPickedWeddingHall = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pPickedWeddingHall )
g_pPickedWeddingHall:SetName( "g_pPickedWeddingHall" )

--거꾸로 나오게 할것인가?
--g_pComboBoxOption_Window_Graphic:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pPickedWeddingHall:SetDropHeight( 20 )
				   
g_pPickedWeddingHall:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(70,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pPickedWeddingHall:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pPickedWeddingHall:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pPickedWeddingHall:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pPickedWeddingHall:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pPickedWeddingHall:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pPickedWeddingHall:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )
g_pPickedWeddingHall:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pPickedWeddingHall:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pPickedWeddingHall:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pPickedWeddingHall:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pPickedWeddingHall:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pPickedWeddingHall:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pPickedWeddingHall:InitScrollBar()





--자동으로 만들 때
--g_pComboBoxOption_Window_Graphic:SetPos( 200, 129 )
--g_pComboBoxOption_Window_Graphic:SetSize( 100, 50 )

--수동으로 만들 때
g_pPickedWeddingHall:SetTextPos( 210-100, 189+73)
g_pPickedWeddingHall:SetTextSize( 115+100, 21)
--텍스트 시작 포인트
g_pPickedWeddingHall:SetTextStringOffsetPos( 10, -3 )
g_pPickedWeddingHall:SetButtonPos( 326, 189+73-5)
g_pPickedWeddingHall:SetButtonSize( 15, 12)








--수동으로 만들 때
g_pPickedWeddingHall:SetTextPos( 210-100-35-25+20+8, 189-69-65-4+60+4)
g_pPickedWeddingHall:SetTextSize( 115+30-8, 21)
--텍스트 시작 포인트
g_pPickedWeddingHall:SetTextStringOffsetPos( 10, -4 )
g_pPickedWeddingHall:SetButtonPos( 205-22+30+3, 60-4+1+53)
g_pPickedWeddingHall:SetButtonSize( 15, 12)

--#define SERV_RELATIONSHIP_SYSTEM_INT
g_pPickedWeddingHall:AddItemStrID( 24474 )
g_pPickedWeddingHall:AddItemStrID( 24475 )

g_pPickedWeddingHall:SetCustomMsgSelectionChanged( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_CHANGE_WEDDING_HALL"] ) 


		
g_pIME_Nickname= g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Nickname )
g_pIME_Nickname:SetName( "IME_Nicname" )
g_pIME_Nickname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(320-8+3,112-30)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(418-8,130-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Nickname:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Nickname:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Nickname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Nickname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Nickname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Nickname:SetByteLimit( 12 )	
g_pIME_Nickname:SetCustomMsgEnter ( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_ADD_INVITE_USER_ID"] )

		
		

--선물메세지 입력--	
	
g_pIME_Invite_Message = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Invite_Message )
g_pIME_Invite_Message:SetName( "IME_Present_Message" )
g_pIME_Invite_Message:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(50+195+3+5+5,350-220+5+3+4)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(50+195+3+185+5+5,370-200+5+3+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Invite_Message:SetFont( XF_DODUM_11_NORMAL )
g_pIME_Invite_Message:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Invite_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Invite_Message:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Invite_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )	
g_pIME_Invite_Message:SetMultiLineOption(0, 0)
g_pIME_Invite_Message:SetWidthLimit(160)
g_pIME_Invite_Message:SetLineLimit(4)
g_pIME_Invite_Message:SetByteLimit(80)
g_pIME_Invite_Message:SetEnablePaste(false)

	
	


g_pStatic_RemainingMany = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RemainingMany )
g_pStatic_RemainingMany:SetName( "g_pStatic_RemainingMany" )

g_pStatic_RemainingMany:AddString
{
	MSG 			= STR_ID_24604,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241+70+2+2-55,178-55-14+110-3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}