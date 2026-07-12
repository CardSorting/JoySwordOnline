-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Mail_Send" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )
g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_MANAGER_UI_MSG["PBMUM_CLOSE"]  )

dlgX = 100 --624
dlgY = 140

---메인 버튼

--우편확인
g_pButtonenter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonenter )
g_pButtonenter:SetName( "enter" )
g_pButtonenter:SetNormalTex( "DLG_Common_New_Texture25.tga", "POST_ENTER_NORMAL" )

g_pButtonenter:SetOverTex( "DLG_Common_New_Texture25.tga", "POST_ENTER_OVER" )

g_pButtonenter:SetDownTex( "DLG_Common_New_Texture25.tga", "POST_ENTER_OVER" )

g_pButtonenter:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+11,dlgY+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+11,dlgY+0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+11,dlgY+0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetCustomMsgMouseUp( POSTBOX_MANAGER_UI_MSG["PBMUM_RECEIVE"] )

--우편전송

g_pButtontrans = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtontrans )
g_pButtontrans:SetName( "trans" )
g_pButtontrans:SetNormalTex( "DLG_Common_New_Texture25.tga", "POST_TRANS_NORMAL" )

g_pButtontrans:SetOverTex( "DLG_Common_New_Texture25.tga", "POST_TRANS_OVER" )

g_pButtontrans:SetDownTex( "DLG_Common_New_Texture25.tga", "POST_TRANS_OVER" )

g_pButtontrans:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+118-2,dlgY+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrans:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+118-2,dlgY+0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrans:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+118-2,dlgY+0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrans:SetCustomMsgMouseUp( POSTBOX_MANAGER_UI_MSG["PBMUM_SEND"] )

--우편함설정

g_pButtonoption = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonoption )
g_pButtonoption:SetName( "option" )
g_pButtonoption:SetNormalTex( "DLG_Common_New_Texture25.tga", "POST_OPTION_NORMAL" )

g_pButtonoption:SetOverTex( "DLG_Common_New_Texture25.tga", "POST_OPTION_OVER" )

g_pButtonoption:SetDownTex( "DLG_Common_New_Texture25.tga", "POST_OPTION_OVER" )

g_pButtonoption:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+225-4,dlgY+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonoption:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+225-4,dlgY+0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonoption:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+225-4,dlgY+0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonoption:SetCustomMsgMouseUp( POSTBOX_MANAGER_UI_MSG["PBMUM_SETTING"] )



------------------------------기본 배경

g_pStaticPost_SendWindow = g_pUIDialog:CreateStatic( )
g_pUIDialog:AddControl( g_pStaticPost_SendWindow )
g_pStaticPost_SendWindow:SetName( "g_pStaticPost_SendWindow" )


g_pPicturePost_SendWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG1 )

g_pPicturePost_SendWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPicturePost_SendWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX-2,dlgY+39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG2 )

g_pPicturePost_SendWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPicturePost_SendWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 389,
	"LEFT_TOP		= D3DXVECTOR2(dlgX-2,dlgY+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePost_SendWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG3 )

g_pPicturePost_SendWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPicturePost_SendWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX-2,dlgY+484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPicturePost_SendWindow_BG4 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG4 )

g_pPicturePost_SendWindow_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPicturePost_SendWindow_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+15,dlgY+86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG5 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG5 )

g_pPicturePost_SendWindow_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPicturePost_SendWindow_BG5:SetPoint
{
	ADD_SIZE_Y = 338,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+15,dlgY+98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG6 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG6 )

g_pPicturePost_SendWindow_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPicturePost_SendWindow_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+15,dlgY+437)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------------------콤보박스

g_pComboBox_to = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBox_to )
g_pComboBox_to:SetName( "_to" )

--거꾸로 나오게 할것인가?
--g_pComboBox_to:SetReverseDropdown( TRUE )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBox_to:SetDropHeight( 20 )
	   
g_pComboBox_to:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(dlgX+93,dlgY+117)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--g_pComboBox_to:SetTextTex( "DLG_Common_New_Texture53.tga", "COMBOBOX2" )

g_pComboBox_to:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )


g_pComboBox_to:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBox_to:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )


g_pComboBox_to:SetDropdownTex ( "DLG_Common_New_Texture68.tga", "box" )


g_pComboBox_to:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "BLUE1" )




--자동으로 만들 때
--g_pComboBox_to:SetPos( 200, 129 )
--g_pComboBox_to:SetSize( 100, 50 )

--수동으로 만들 때

g_pComboBox_to:SetTextPos( dlgX+94,dlgY+83)
g_pComboBox_to:SetTextSize( 240, 35)
--텍스트 시작 포인트
g_pComboBox_to:SetTextStringOffsetPos( 10, 14 )
g_pComboBox_to:SetButtonPos( dlgX+334,dlgY+92)
g_pComboBox_to:SetButtonSize( 22, 22)

g_pComboBox_to:SetSelectTextShow(false)
g_pComboBox_to:SetCustomMsgSelectionChanged( POSTBOX_SEND_UI_MSG["PBSUM_GET_MYUSER_NAME"] )

g_pComboBox_to:AddItem( "123" )
g_pComboBox_to:AddItem( "가나다" )
g_pComboBox_to:AddItem( "ABC" )
g_pComboBox_to:AddItem( "abc" )
g_pComboBox_to:AddItem( "지끄무" )
g_pComboBox_to:AddItem( "니기미" )





----------긴 박스


g_pPicturePost_SendWindow_BG20 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG20 )

g_pPicturePost_SendWindow_BG20:SetTex( "DLG_Common_New_Texture61.TGA", "box2" )

g_pPicturePost_SendWindow_BG20:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(dlgX+93,dlgY+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturePost_SendWindow_BG21 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG21 )

g_pPicturePost_SendWindow_BG21:SetTex( "DLG_Common_New_Texture61.TGA", "box2" )

g_pPicturePost_SendWindow_BG21:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+93,dlgY+117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePost_SendWindow_BG22 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG22 )

g_pPicturePost_SendWindow_BG22:SetTex( "DLG_Common_New_Texture61.TGA", "box1" )

g_pPicturePost_SendWindow_BG22:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+136,dlgY+420)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG23 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG23 )

g_pPicturePost_SendWindow_BG23:SetTex( "DLG_Common_New_Texture52.TGA", "WINDOW10" )

g_pPicturePost_SendWindow_BG23:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(dlgX+106,dlgY+453)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePost_SendWindow_BG24 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG24 )
g_pPicturePost_SendWindow_BG24:SetIndex(5)
g_pPicturePost_SendWindow_BG24:SetTex( "DLG_Common_New_Texture53.TGA", "checkbox" )

g_pPicturePost_SendWindow_BG24:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+320,dlgY+65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----메세지입력 박스

g_pPicturePost_SendWindow_Box1 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Box1 )

g_pPicturePost_SendWindow_Box1:SetTex( "DLG_Common_New_Texture61.TGA", "Window_Box_Top" )

g_pPicturePost_SendWindow_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+21,dlgY+143)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_Box2 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Box2 )

g_pPicturePost_SendWindow_Box2:SetTex( "DLG_Common_New_Texture61.TGA", "Window_Box_Middle" )

g_pPicturePost_SendWindow_Box2:SetPoint
{
	ADD_SIZE_Y = 207,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+21,dlgY+151)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_Box3 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Box3 )

g_pPicturePost_SendWindow_Box3:SetTex( "DLG_Common_New_Texture61.TGA", "Window_Box_Middle" )

g_pPicturePost_SendWindow_Box3:SetPoint
{
	ADD_SIZE_Y = 208,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+21,dlgY+150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_Box4 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Box4 )

g_pPicturePost_SendWindow_Box4:SetTex( "DLG_Common_New_Texture61.TGA", "Window_Box_Bottom" )

g_pPicturePost_SendWindow_Box4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+21,dlgY+359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------------소제목

g_pPicturePost_SendWindow_BG17 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG17 )

g_pPicturePost_SendWindow_BG17:SetTex( "DLG_Common_New_Texture61.TGA", "user_nicname" )

g_pPicturePost_SendWindow_BG17:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+25,dlgY+96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG18 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG18 )

g_pPicturePost_SendWindow_BG18:SetTex( "DLG_Common_New_Texture61.TGA", "Mail_Name" )

g_pPicturePost_SendWindow_BG18:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+25,dlgY+121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG19 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG19 )

g_pPicturePost_SendWindow_BG19:SetTex( "DLG_Common_New_Texture61.TGA", "Add_Item" )
g_pPicturePost_SendWindow_BG19:SetIndex(3)
g_pPicturePost_SendWindow_BG19:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+25,dlgY+383)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG20 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG20 )
g_pPicturePost_SendWindow_BG20:SetTex( "DLG_Common_New_Texture61.TGA", "Add_ED" )
g_pPicturePost_SendWindow_BG20:SetIndex(1)
g_pPicturePost_SendWindow_BG20:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+25,dlgY+424)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG21 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG21 )

g_pPicturePost_SendWindow_BG21:SetTex( "DLG_Common_New_Texture61.TGA", "ED" )
g_pPicturePost_SendWindow_BG21:SetIndex(2)
g_pPicturePost_SendWindow_BG21:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+332,dlgY+425)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG21_1 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG21_1 )

g_pPicturePost_SendWindow_BG21_1:SetTex( "DLG_Common_New_Texture61.TGA", "ED" )
g_pPicturePost_SendWindow_BG21_1:SetIndex(2)
g_pPicturePost_SendWindow_BG21_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+220,dlgY+466)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG22 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG22 )

g_pPicturePost_SendWindow_BG22:SetTex( "DLG_Common_New_Texture25.TGA", "CHARGE" )
g_pPicturePost_SendWindow_BG22:SetIndex(2)
g_pPicturePost_SendWindow_BG22:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+25,dlgY+463)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------슬롯

g_pPicturePost_SendWindow_Slot1 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Slot1 )

g_pPicturePost_SendWindow_Slot1:SetTex( "DLG_Common_New_Texture61.TGA", "Slot_Small" )
g_pPicturePost_SendWindow_Slot1:SetIndex(4)
g_pPicturePost_SendWindow_Slot1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+136,dlgY+372)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
g_pPicturePost_SendWindow_Slot2 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Slot2 )

g_pPicturePost_SendWindow_Slot2:SetTex( "DLG_Common_New_Texture61.TGA", "Slot_Small" )

g_pPicturePost_SendWindow_Slot2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+136+45,dlgY+372)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_Slot3 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Slot3 )

g_pPicturePost_SendWindow_Slot3:SetTex( "DLG_Common_New_Texture61.TGA", "Slot_Small" )

g_pPicturePost_SendWindow_Slot3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+136+45+45,dlgY+372)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_Slot4 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Slot4 )

g_pPicturePost_SendWindow_Slot4:SetTex( "DLG_Common_New_Texture61.TGA", "Slot_Small" )

g_pPicturePost_SendWindow_Slot4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+136+45+45+45,dlgY+372)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_Slot5 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_Slot5 )

g_pPicturePost_SendWindow_Slot5:SetTex( "DLG_Common_New_Texture61.TGA", "Slot_Small" )

g_pPicturePost_SendWindow_Slot5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+136+45+45+45+45,dlgY+372)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

--------- 라인
g_pPicturePost_SendWindow_BG24 = g_pUIDialog:CreatePicture()
g_pStaticPost_SendWindow:AddPicture( g_pPicturePost_SendWindow_BG24 )

g_pPicturePost_SendWindow_BG24:SetTex( "DLG_Common_New_Texture53.TGA", "line1" )

g_pPicturePost_SendWindow_BG24:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+23,dlgY+415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	



--EXIT버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_NORMAL" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_OVER" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_OVER" )

g_pButtonX:SetNormalPoint
{
	
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+341+1,dlgY+52+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+341+1,dlgY+52+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+341+1+1,dlgY+52+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( POSTBOX_MANAGER_UI_MSG["PBMUM_CLOSE"] )



-------------체크박스


g_pCheckBoxCashShop_BuyWindow_Slot = g_pUIDialog:CreateCheckBox()
g_pCheckBoxCashShop_BuyWindow_Slot:SetName( "Check_SystemMessage" )
g_pUIDialog:AddControl( g_pCheckBoxCashShop_BuyWindow_Slot )

g_pCheckBoxCashShop_BuyWindow_Slot:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "Check" )


g_pCheckBoxCashShop_BuyWindow_Slot:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+323,dlgY+65)",
 	"RIGHT_BOTTOM   = D3DXVECTOR2(dlgX+336,dlgY+78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxCashShop_BuyWindow_Slot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+319,dlgY+61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxCashShop_BuyWindow_Slot:SetShow(false)
g_pCheckBoxCashShop_BuyWindow_Slot:SetEnable(false)

------------------버튼---------------------

g_pButtonSend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSend )
g_pButtonSend:SetName( "Send" )
g_pButtonSend:SetNormalTex( "DLG_Common_New_Texture61.tga", "Send_Button_normal" )

g_pButtonSend:SetOverTex( "DLG_Common_New_Texture61.tga", "Send_Button_over" )

g_pButtonSend:SetDownTex( "DLG_Common_New_Texture61.tga", "Send_Button_over" )

g_pButtonSend:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+255,dlgY+451)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+255,dlgY+451)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+256,dlgY+451+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSend:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_MAIL_SEND"] )


--발송 수수료ED 창

g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font" )

g_pStaticpost_window_Font:AddString
{
	-- MSG 			= "30,000,000",
		 	FONT_INDEX      = XUF_DODUM_15_BOLD,

 	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(dlgX+198,dlgY+464)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	




-------------------- 받는사람
--[[
	g_pStatic_Item_ID_1Line = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Item_ID_1Line )
	g_pStatic_Item_ID_1Line:SetName( "g_pStatic_Item_ID_1Line" )

	g_pStatic_Item_ID_1Line:AddString
	{
		-- MSG 			= "제일긴닉네임",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+98,dlgY+96)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
--]]	
	
g_pIME_EditMail_To = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_EditMail_To )
g_pIME_EditMail_To:SetName( "IME_EditMail_To" )
g_pIME_EditMail_To:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+98,dlgY+96)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(dlgX+98+220,dlgY+96+14)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_EditMail_To:SetFont( XF_DODUM_15_BOLD )
g_pIME_EditMail_To:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_EditMail_To:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditMail_To:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_EditMail_To:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditMail_To:SetByteLimit(12)
g_pIME_EditMail_To:SetCustomMsgChange( POSTBOX_SEND_UI_MSG["PBSUM_RECEIVER_NAME_CHANGE"] )
g_pIME_EditMail_To:SetCustomMsgEnter( POSTBOX_SEND_UI_MSG["PBSUM_RECEIVER_NAME_CHANGE"] )
g_pIME_EditMail_To:SetTabControlName( "IME_EditMail_Name" )



------제목입력창

g_pIME_EditMail_Name = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_EditMail_Name )
g_pIME_EditMail_Name:SetName( "IME_EditMail_Name" )
g_pIME_EditMail_Name:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+98,dlgY+121)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(dlgX+344,dlgY+121+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_EditMail_Name:SetFont( XF_DODUM_15_BOLD )
g_pIME_EditMail_Name:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_EditMail_Name:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditMail_Name:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_EditMail_Name:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_EditMail_Name:SetLengthLimit(18)
g_pIME_EditMail_Name:SetCustomMsgChange( POSTBOX_SEND_UI_MSG["PBSUM_TITLE_CHANGE"] )
g_pIME_EditMail_Name:SetCustomMsgEnter( POSTBOX_SEND_UI_MSG["PBSUM_TITLE_CHANGE"] )
g_pIME_EditMail_Name:SetTabControlName( "IME_Edit_Message" )


-------내용 입력창

g_pIME_Edit_Message = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Edit_Message )
g_pIME_Edit_Message:SetName( "IME_Edit_Message" )
g_pIME_Edit_Message:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+30,dlgY+148)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(dlgX+349,dlgY+363)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Edit_Message:SetFont( XF_DODUM_13_SEMIBOLD )
g_pIME_Edit_Message:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Edit_Message:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_Message:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Edit_Message:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )

g_pIME_Edit_Message:SetMultiLineOption(0, 0)
g_pIME_Edit_Message:SetWidthLimit(300)
g_pIME_Edit_Message:SetLineLimit(13)
g_pIME_Edit_Message:SetByteLimit(400)
g_pIME_Edit_Message:SetTabControlName( "IME_Add_Ed" )
g_pIME_Edit_Message:SetEnablePaste(false)




--------첨부 ED창
g_pIME_Add_Ed = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Add_Ed )
g_pIME_Add_Ed:SetName( "IME_Add_Ed" )
g_pIME_Add_Ed:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+141,dlgY+424)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(dlgX+344,dlgY+424+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Add_Ed:SetFont( XF_DODUM_15_BOLD )
g_pIME_Add_Ed:SetTextColor( 0.9, 1.0, 0.1, 1.0 )
g_pIME_Add_Ed:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Add_Ed:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Add_Ed:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Add_Ed:SetOutlineColor(0.0,0.0,0.0,1.0)

g_pIME_Add_Ed:SetOnlyNumMode( true )
g_pIME_Add_Ed:SetByteLimit(13)
g_pIME_Add_Ed:SetCustomMsgChange( POSTBOX_SEND_UI_MSG["PBSUM_ED_CHANGE"] )
g_pIME_Add_Ed:SetCustomMsgEnter( POSTBOX_SEND_UI_MSG["PBSUM_ED_CHANGE"] )


----- postbox slot
slotID = 100
pPostSlot = g_pPostBoxInventory:CreateItemSlot()
g_pPostBoxInventory:AddSlot( pPostSlot )
			
tempX =  136 + dlgX
tempY =  372 + dlgY

pPostSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
	
	SLOT_TYPE	= SLOT_TYPE["ST_POST_SEND"],
	
	SORT_TYPE	= 0,
	SLOT_ID		= slotID,
	
	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],
	
	--SLOT_BACK_DLG_FILE = "DLG_Unit_State_Inventory_Slot_Back.lua",
	
	"POS		= D3DXVECTOR2( tempX ,tempY )",
	"SIZE		= D3DXVECTOR2( 41, 41 )",
}

