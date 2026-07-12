-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- #ifdef SERV_SHARING_BANK_TEST

g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_EXIT"] )

numOfSlotPerLine		= 8											-- 한라인에 있는 슬롯의 갯수
totalNumOfSlotInBank	= g_pCX2SlotManager:GetDummyValue()			-- 다이얼로그 내에 있는 전체 슬롯의 갯수
numOfLineInBank			= totalNumOfSlotInBank / numOfSlotPerLine	-- 다이얼로그 내에 있는 라인의 갯수(일반회원 1개, 플래티넘 회원 6개 등)

sizeYForBG						= 391 	- ( 6 - numOfLineInBank ) * 50
posForBGLeftTopOfBottom			= 408	- ( 6 - numOfLineInBank ) * 50

sizeYForBlackBox				= 341	- ( 6 - numOfLineInBank ) * 50
posForBlackBoxLeftTopOfBottom	= 398	- ( 6 - numOfLineInBank ) * 50

sizeYForWin						= 331	- ( 6 - numOfLineInBank ) * 50
posForWinLeftTopOfBottom		= 393	- ( 6 - numOfLineInBank ) * 50



------------------------------------------6줄 배경-----------------------------------------------------
-----BG6
g_pStaticBank_BG6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_BG6 )
g_pStaticBank_BG6:SetName( "g_pStaticBank_BG6" )


g_pStaticBank_BG6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_BG6 )
g_pStaticBank_BG6:SetName( "g_pStaticBank_BG6" ) 

g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_BG_top )

g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

g_pPictureInven_BG_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_BG_middle )

g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

g_pPictureInven_BG_middle:SetPoint
{
     ADD_SIZE_Y = sizeYForBG+30,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_BG_bottom)

g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

g_pPictureInven_BG_bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0, posForBGLeftTopOfBottom+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----bg_b6


g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_black_box_top)

g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPictureInven_black_box_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_balck_box_middle)

g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPictureInven_balck_box_middle:SetPoint
{
     ADD_SIZE_Y = sizeYForBlackBox+30,
	"LEFT_TOP		= D3DXVECTOR2(14,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_balck_box_bottom)

g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPictureInven_balck_box_bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14, posForBlackBoxLeftTopOfBottom+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----인벤 창6

g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_win_top)

g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

g_pPictureInven_win_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_win_middle)

g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

g_pPictureInven_win_middle:SetPoint
{
    ADD_SIZE_Y = sizeYForWin,
	"LEFT_TOP		= D3DXVECTOR2(19,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_win_bottom)

g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

g_pPictureInven_win_bottom:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19, posForWinLeftTopOfBottom )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------------------인벤 슬롯--------------------------------------------------

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot1" )




-------------------------------line 1
slotID 	= 0
tempX 	= 0
tempY	= 0

for i = 1, numOfLineInBank do
	posY = ( i - 1 ) * 51
	
	for j = 1, numOfSlotPerLine do
	posX = ( j - 1 ) * 51
	
	g_pPictureInven_slot1= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot1)

	g_pPictureInven_slot1:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot1:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28 + posX, 91 + posY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )

	tempX = 29 + posX
	tempY = 92 + posY

	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,

		SLOT_TYPE	= SLOT_TYPE["ST_BANK"],

		SORT_TYPE	= 8,		-- SORT_TYPE::ST_BANK
		SLOT_ID		= slotID,

		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_NONE"],

		"POS		= D3DXVECTOR2( tempX ,tempY )",
		"SIZE		= D3DXVECTOR2( 47, 47 )",
	}
	
	slotID = slotID + 1
	end
end


g_pStaticBank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank )
g_pStaticBank:SetName( "g_pStaticBank" )

------------------------------타이틀

g_pPictureInven_title= g_pUIDialog:CreatePicture()
g_pStaticBank:AddPicture( g_pPictureInven_title)

g_pPictureInven_title:SetTex( "DLG_UI_Title02_B.tga", "Bank" )

g_pPictureInven_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticBank:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 409,
	"LEFT_TOP		= D3DXVECTOR2(26,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------------------은행 등급 아이콘------------------------------------
g_pMembershipIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pMembershipIcon )
g_pMembershipIcon:SetName( "g_pMembershipIcon" )

----실버
g_pPicture_Grade_Silver = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Silver )

g_pPicture_Grade_Silver:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Silver" )

g_pPicture_Grade_Silver:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----골드
g_pPicture_Grade_Gold = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Gold )

g_pPicture_Grade_Gold:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Gold" )

g_pPicture_Grade_Gold:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----에메랄드
g_pPicture_Grade_Emerald = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Emerald )

g_pPicture_Grade_Emerald:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Emerald" )

g_pPicture_Grade_Emerald:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----다이아몬드
g_pPicture_Grade_Diamond = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Diamond )

g_pPicture_Grade_Diamond:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Diamond" )

g_pPicture_Grade_Diamond:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----플래티넘
g_pPicture_Grade_Platinum = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Platinum )

g_pPicture_Grade_Platinum:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Platinum" )

g_pPicture_Grade_Platinum:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지
g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Staticnumber" )

g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticnumber:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(377,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호



g_pStaticnumber:AddString
{
	 MSG 			= "50/50",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(377+28,57+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




------------------------Notice
g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )

g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStatic_Notice:AddPicture( g_pPicture_Notice )

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(29,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Notice:AddString
{
	MSG 			= 'WWWWWWWWWWWW님의 개인은행(프리미엄회원)',
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(48,63-2)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(398,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(398-4+1,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(200)


-----EXIT  버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(424,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(420,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(420+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_EXIT"] )


-----확장하기  버튼

g_pButton_Upgrade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Upgrade )
g_pButton_Upgrade:SetName( "g_pButton_Upgrade" )
g_pButton_Upgrade:SetNormalTex( "DLG_UI_BUTTON11.tga", "Bank_Upgrade_Normal" )

g_pButton_Upgrade:SetOverTex( "DLG_UI_BUTTON11.tga", "Bank_Upgrade_Over" )

g_pButton_Upgrade:SetDownTex( "DLG_UI_BUTTON11.tga", "Bank_Upgrade_Over" )

g_pButton_Upgrade:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(305-26,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(305-26,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(305-26+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetCustomMsgMouseUp( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_CASHSHOP"] )

------------------------------- 유저선택 ------------------------------
-- 긴박스

g_pPictureBank_UserWindow = g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureBank_UserWindow )

g_pPictureBank_UserWindow:SetTex( "DLG_Common_New_Texture61.TGA", "box2" )

g_pPictureBank_UserWindow:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(25,15 + posForWinLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 유저선택 콤보박스

g_pComboBox_UserList = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_UserList )
g_pComboBox_UserList:SetName( "ComboUserList" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBox_UserList:SetDropHeight( 20 )
	   
g_pComboBox_UserList:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(25,40 + posForWinLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBox_UserList:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )
g_pComboBox_UserList:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )
g_pComboBox_UserList:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )
g_pComboBox_UserList:SetDropdownTex ( "DLG_Common_New_Texture68.tga", "box" )
g_pComboBox_UserList:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )


g_pComboBox_UserList:SetTextPos( 26,6 + posForWinLeftTopOfBottom)
g_pComboBox_UserList:SetTextSize( 240, 35)
--텍스트 시작 포인트
g_pComboBox_UserList:SetTextStringOffsetPos( 10, 14 )
g_pComboBox_UserList:SetButtonPos( 266,15 + posForWinLeftTopOfBottom)
g_pComboBox_UserList:SetButtonSize( 22, 22)

g_pComboBox_UserList:SetSelectTextShow(false)
g_pComboBox_UserList:SetCustomMsgSelectionChanged( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_USER_CHANGE"] )

g_pComboBox_UserList:AddItem( "엘소드" )



g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Static_Select_User" )

g_pStaticnumber:AddString
{
	 MSG 			= "50/50",
	FONT_INDEX		= XF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34,18 + posForWinLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-- 열기
g_pButton_UserSelect = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_UserSelect )
g_pButton_UserSelect:SetName( "Button_User_Select" )
g_pButton_UserSelect:SetNormalTex( "DLG_UI_Button10.tga", "character_selec_normal" )

g_pButton_UserSelect:SetOverTex( "DLG_UI_Button10.tga", "character_selec_over" )

g_pButton_UserSelect:SetDownTex( "DLG_UI_Button10.tga", "character_selec_over" )

g_pButton_UserSelect:SetNormalPoint
{
	ADD_SIZE_Y = -10,

 	"LEFT_TOP		= D3DXVECTOR2(300,14 + posForWinLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserSelect:SetOverPoint
{
	ADD_SIZE_Y = -12,

	"LEFT_TOP		= D3DXVECTOR2(297,12 + posForWinLeftTopOfBottom)",
 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_UserSelect:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -14,
 	"LEFT_TOP		= D3DXVECTOR2(297+1,13 + posForWinLeftTopOfBottom)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_UserSelect:SetCustomMsgMouseUp( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_USER_SELECT"] )

g_pButton_UserSelect:SetPrevTabControlName( "SystemMenuOption" )
g_pButton_UserSelect:SetTabControlName( "suver_selec" )
g_pButton_UserSelect:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

-- #endif SERV_SHARING_BANK_TEST