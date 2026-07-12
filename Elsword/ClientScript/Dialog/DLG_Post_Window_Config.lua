-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_Option" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )
g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_MANAGER_UI_MSG["PBMUM_CLOSE"]  )






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


 	"LEFT_TOP		= D3DXVECTOR2(11,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(11,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(11,0)",

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


 	"LEFT_TOP		= D3DXVECTOR2(118-2,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtontrans:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(118-2,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrans:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(118-2,0)",
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


 	"LEFT_TOP		= D3DXVECTOR2(225-4,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonoption:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(225-4,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonoption:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(225-4,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonoption:SetCustomMsgMouseUp( POSTBOX_MANAGER_UI_MSG["PBMUM_SETTING"] )



------------------------------기본 배경

g_pStaticpost_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window )
g_pStaticpost_window:SetName( "Staticpost_window" )


g_pPicturePost_SendWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturePost_SendWindow_BG1 )

g_pPicturePost_SendWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPicturePost_SendWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-2,39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturePost_SendWindow_BG2 )

g_pPicturePost_SendWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPicturePost_SendWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 389,
	"LEFT_TOP		= D3DXVECTOR2(-2,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePost_SendWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturePost_SendWindow_BG3 )

g_pPicturePost_SendWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPicturePost_SendWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-2,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--BG_S
g_pPicturepost_window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG4 )

g_pPicturepost_window_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPicturepost_window_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(15,86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG5 )

g_pPicturepost_window_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPicturepost_window_BG5:SetPoint
{

	ADD_SIZE_Y = 378,
	"LEFT_TOP		= D3DXVECTOR2(15,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BG6 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG6 )

g_pPicturepost_window_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPicturepost_window_BG6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(15,475+2)", 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0, 1.0)",
	CHANGE_TIME		= 0.0,
}

--받는사람 BOX
g_pPicturepost_window_BG7 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG7 )

g_pPicturepost_window_BG7:SetTex( "DLG_Common_New_Texture61.TGA", "WINDOW_BOX_TOP" )

g_pPicturepost_window_BG7:SetPoint
{
    

	"LEFT_TOP		= D3DXVECTOR2(21,111)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG8 )

g_pPicturepost_window_BG8:SetTex( "DLG_Common_New_Texture61.TGA", "WINDOW_BOX_MIDDLE" )

g_pPicturepost_window_BG8:SetPoint
{

	ADD_SIZE_Y = 255,
	"LEFT_TOP		= D3DXVECTOR2(21,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BG8a = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG8a )

g_pPicturepost_window_BG8a:SetTex( "DLG_Common_New_Texture61.TGA", "WINDOW_BOX_MIDDLE" )

g_pPicturepost_window_BG8a:SetPoint
{

	ADD_SIZE_Y = 255,
	"LEFT_TOP		= D3DXVECTOR2(21,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturepost_window_BG9 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG9 )

g_pPicturepost_window_BG9:SetTex( "DLG_Common_New_Texture61.TGA", "WINDOW_BOX_BOTTOM" )

g_pPicturepost_window_BG9:SetPoint
{
    

	"LEFT_TOP		= D3DXVECTOR2(21,375)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--BOX 나누기2
g_pPicturepost_window_BG14 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG14 )

g_pPicturepost_window_BG14:SetTex( "DLG_Common_New_Texture53.TGA", "LINE1" )

g_pPicturepost_window_BG14:SetPoint
{
	

	"LEFT_TOP		= D3DXVECTOR2(23,435-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}






-----서브버튼 

--등록
g_pButton_record = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_record )
g_pButton_record:SetName( "_record" )
g_pButton_record:SetNormalTex( "DLG_Common_New_Texture61.tga", "RECORD_NORMAL" )

g_pButton_record:SetOverTex( "DLG_Common_New_Texture61.tga", "RECORD_OVER" )

g_pButton_record:SetDownTex( "DLG_Common_New_Texture61.tga", "RECORD_OVER" )

g_pButton_record:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(81,388)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_record:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(81,388)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_record:SetDownPoint
{
   	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(81+1,388+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_record:SetCustomMsgMouseUp( POSTBOX_OPTION["PBOUM_BLIST_ACCEPT"] )

--삭제
g_pButton_delete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_delete )
g_pButton_delete:SetName( "_delete" )
g_pButton_delete:SetNormalTex( "DLG_Common_New_Texture61.tga", "DELETE_NORMAL" )

g_pButton_delete:SetOverTex( "DLG_Common_New_Texture61.tga", "DELETE_OVER" )

g_pButton_delete:SetDownTex( "DLG_Common_New_Texture61.tga", "DELETE_OVER" )

g_pButton_delete:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(192,388)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_delete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(192,388)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_delete:SetDownPoint
{
   	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(192+1,388+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_delete:SetCustomMsgMouseUp( POSTBOX_OPTION["PBOUM_BLIST_DELETE"] )


----------------------------소제목

g_pPicturepost_window_BG15 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG15 )

g_pPicturepost_window_BG15:SetTex( "DLG_Common_New_Texture61.TGA", "TEXT_CUT" )

g_pPicturepost_window_BG15:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicturepost_window_BG18 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG18 )

g_pPicturepost_window_BG18:SetTex( "DLG_Common_New_Texture61.TGA", "TEXT_SETTING" )

g_pPicturepost_window_BG18:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BG19 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG19 )

g_pPicturepost_window_BG19:SetTex( "DLG_Common_New_Texture61.TGA", "TEXT_SOUND_OFF" )

g_pPicturepost_window_BG19:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(62,465)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BG20 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG20 )

g_pPicturepost_window_BG20:SetTex( "DLG_Common_New_Texture61.TGA", "TEXT_SETTING_OFF" )

g_pPicturepost_window_BG20:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(213,465)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}


--체크박스

g_pPicturepost_window_BOX2 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX2 )

g_pPicturepost_window_BOX2:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX2:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(62-23,463+19-20+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BOX3 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX3 )

g_pPicturepost_window_BOX3:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX3:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(39+153,463+19-20+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---체크

--2)
	g_pCheckBoxpost_window_Slot2 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot2:SetName( "g_pCheckBoxpost_window_Slot2" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot2 )

	g_pCheckBoxpost_window_Slot2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot2:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(39,482-20+2)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(54,497-20+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(37,481-20+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxpost_window_Slot2:SetCustomMsgChecked( POSTBOX_OPTION["PBOUM_CHECK_ALARM"] )
g_pCheckBoxpost_window_Slot2:SetCustomMsgUnChecked( POSTBOX_OPTION["PBOUM_CHECK_ALARM"] )


--3)
	g_pCheckBoxpost_window_Slot3 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot3:SetName( "g_pCheckBoxpost_window_Slot3" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot3 )

	g_pCheckBoxpost_window_Slot3:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot3:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot3:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(192,482-20+2)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(207,497-20+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot3:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(190,481-20+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxpost_window_Slot3:SetCustomMsgChecked( POSTBOX_OPTION["PBOUM_CHECK_NEWLETTER"] )
g_pCheckBoxpost_window_Slot3:SetCustomMsgUnChecked( POSTBOX_OPTION["PBOUM_CHECK_NEWLETTER"] )


--EXIT버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_NORMAL" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_OVER" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(341+1,52+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341+1,52+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+1+1,52+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( POSTBOX_MANAGER_UI_MSG["PBMUM_CLOSE"] )


--------------------------------------------------------리스트박스

g_pPicture_Scroll_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicture_Scroll_Bg1 )

g_pPicture_Scroll_Bg1:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPicture_Scroll_Bg1:SetPoint
{
	
ADD_SIZE_Y = 229,
	"LEFT_TOP		= D3DXVECTOR2(336,132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0 )",
	CHANGE_TIME		= 0.0,
}




-------------------------리스트박스 1--------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBoxChatContent" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 18, 111 )
g_pListBox:SetSize( 318,272 )

g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
g_pListBox:AddItem( "레나샤샤" )
g_pListBox:AddItem( "엘소드빵상" )
