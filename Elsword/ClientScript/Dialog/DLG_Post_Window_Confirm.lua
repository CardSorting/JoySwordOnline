-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_Receive" )
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

g_pStaticpost_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window )
g_pStaticpost_window:SetName( "Staticpost_window" )


g_pPicturePost_SendWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturePost_SendWindow_BG1 )

g_pPicturePost_SendWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPicturePost_SendWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX-2,dlgY+39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePost_SendWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturePost_SendWindow_BG2 )

g_pPicturePost_SendWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPicturePost_SendWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 389,
	"LEFT_TOP		= D3DXVECTOR2(dlgX-2,dlgY+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePost_SendWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturePost_SendWindow_BG3 )

g_pPicturePost_SendWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPicturePost_SendWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX-2,dlgY+484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------
g_pPicturepost_window_BG4 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG4 )

g_pPicturepost_window_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPicturepost_window_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+15,dlgY+86)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BG5 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG5 )

g_pPicturepost_window_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPicturepost_window_BG5:SetPoint
{
	ADD_SIZE_Y = 345+1,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+15,dlgY+98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BG6 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BG6 )

g_pPicturepost_window_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPicturepost_window_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+15,dlgY+404+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--우편확인 서브버튼

g_pButtonsystem_mail = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonsystem_mail )
g_pButtonsystem_mail:SetName( "system_mail" )
g_pButtonsystem_mail:SetNormalTex( "DLG_Common_New_Texture25.tga", "SYSTEM_MAIL_NORMAL" )

g_pButtonsystem_mail:SetOverTex( "DLG_Common_New_Texture25.tga", "SYSTEM_MAIL_OVER" )

g_pButtonsystem_mail:SetDownTex( "DLG_Common_New_Texture25.tga", "SYSTEM_MAIL_OVER" )

g_pButtonsystem_mail:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+23+8,dlgY+57+1+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsystem_mail:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+16+8-3,dlgY+55+4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsystem_mail:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+16+8-3,dlgY+55+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsystem_mail:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_SYSTEM_MAIL"] )


g_pButtoncommon_mail = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncommon_mail )
g_pButtoncommon_mail:SetName( "common_mail" )
g_pButtoncommon_mail:SetNormalTex( "DLG_Common_New_Texture25.tga", "COMMON_MAIL_NORMAL" )

g_pButtoncommon_mail:SetOverTex( "DLG_Common_New_Texture25.tga", "COMMON_MAIL_OVER" )

g_pButtoncommon_mail:SetDownTex( "DLG_Common_New_Texture25.tga", "COMMON_MAIL_OVER" )

g_pButtoncommon_mail:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+109+4+7,dlgY+57+2+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncommon_mail:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+103+11+3,dlgY+55+3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncommon_mail:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+103+11+3,dlgY+55+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncommon_mail:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_COMMON_MAIL"] )


--[[ #define ADDED_RELATIONSHIP_SYSTEM
g_pButtonWedding_mail = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWedding_mail )
g_pButtonWedding_mail:SetName( "wedding_mail" )
g_pButtonWedding_mail:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_MailBox_Wedding" )

g_pButtonWedding_mail:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_MailBox_Wedding_Over" )

g_pButtonWedding_mail:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_MailBox_Wedding_Over" )

g_pButtonWedding_mail:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+109+4+90-12,dlgY+57+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWedding_mail:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+103+11+89-12,dlgY+55+4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWedding_mail:SetDownPoint
{
      
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+103+11+89-12,dlgY+55+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWedding_mail:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_WEDDING_MAIL"] )
--]]

----받은 메일 갯수
g_pStaticpost_Mail_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_Mail_Num )
g_pStaticpost_Mail_Num:SetName( "g_pStaticpost_Mail_Num" )

g_pStaticpost_Mail_Num:AddString
{
	-- MSG 			= "10/30",
		FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
 	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(dlgX+318,dlgY+61-8)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-----------삭제버튼
g_pButtonDelete_mail = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDelete_mail )
g_pButtonDelete_mail:SetName( "Delete_mail" )
g_pButtonDelete_mail:SetNormalTex( "DLG_Common_New_Texture61_A.tga", "Post_Delete_normal" )
g_pButtonDelete_mail:SetOverTex( "DLG_Common_New_Texture61_A.tga", "Post_Delete_over" )
g_pButtonDelete_mail:SetDownTex( "DLG_Common_New_Texture61_A.tga", "Post_Delete_over" )
g_pButtonDelete_mail:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+51,dlgY+474-9-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete_mail:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(dlgX+51-1,dlgY+474-9-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete_mail:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+51,dlgY+474-9-5+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDelete_mail:AddDummyInt( 0 )
g_pButtonDelete_mail:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_DELETE_MAIL"] )



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


--페이지 넘기기

--[[ #define ADDED_RELATIONSHIP_SYSTEM
-- 맨 앞
g_pButtonpost_window_First_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonpost_window_First_Triangle )
g_pButtonpost_window_First_Triangle:SetName( "post_window_First_Triangle" )
g_pButtonpost_window_First_Triangle:SetNormalTex( "DLG_UI_Common_Texture75_NEW.TGA", "Double_LeftArrow" )
g_pButtonpost_window_First_Triangle:SetOverTex( "DLG_UI_Common_Texture75_NEW.TGA", "Double_LeftArrow_Over" )
g_pButtonpost_window_First_Triangle:SetDownTex( "DLG_UI_Common_Texture75_NEW.TGA", "Double_LeftArrow" )
g_pButtonpost_window_First_Triangle:SetNormalPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(dlgX+139-3+40+21,dlgY+474-9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonpost_window_First_Triangle:SetOverPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(dlgX+139-2-3+40+21,dlgY+474-2-9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonpost_window_First_Triangle:SetDownPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(dlgX+139-3+40+21,dlgY+474-9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonpost_window_First_Triangle:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_FIRST_PAGE"] )
--]]

--왼쪽
g_pButtonpost_window_Left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonpost_window_Left_Triangle )
g_pButtonpost_window_Left_Triangle:SetName( "post_window_Left_Triangle" )
g_pButtonpost_window_Left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )
g_pButtonpost_window_Left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )
g_pButtonpost_window_Left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )
g_pButtonpost_window_Left_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(dlgX+139-3+90,dlgY+474-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpost_window_Left_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+139-2-3+90,dlgY+474-2-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpost_window_Left_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(dlgX+139-3+90,dlgY+474-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpost_window_Left_Triangle:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_PREV_PAGE"] )


--오른쪽
g_pButtonpost_window_Right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonpost_window_Right_Triangle )
g_pButtonpost_window_Right_Triangle:SetName( "post_window_Right_Triangle" )
g_pButtonpost_window_Right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )
g_pButtonpost_window_Right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )
g_pButtonpost_window_Right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )
g_pButtonpost_window_Right_Triangle:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(dlgX+231-3+90,dlgY+474-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpost_window_Right_Triangle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+231-2-3+90,dlgY+474-2-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpost_window_Right_Triangle:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(dlgX+231-3+90,dlgY+474-9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonpost_window_Right_Triangle:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_NEXT_PAGE"] )

--[[ #define ADDED_RELATIONSHIP_SYSTEM
-- 맨 뒤
g_pButtonpost_window_Last_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonpost_window_Last_Triangle )
g_pButtonpost_window_Last_Triangle:SetName( "post_window_last_Triangle" )
g_pButtonpost_window_Last_Triangle:SetNormalTex( "DLG_UI_Common_Texture75_NEW.TGA", "Double_RightArrow" )
g_pButtonpost_window_Last_Triangle:SetOverTex( "DLG_UI_Common_Texture75_NEW.TGA", "Double_RightArrow_Over" )
g_pButtonpost_window_Last_Triangle:SetDownTex( "DLG_UI_Common_Texture75_NEW.TGA", "Double_RightArrow" )
g_pButtonpost_window_Last_Triangle:SetNormalPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(dlgX+231-3+110,dlgY+474-9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonpost_window_Last_Triangle:SetOverPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(dlgX+231-2-3+110,dlgY+474-2-9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonpost_window_Last_Triangle:SetDownPoint
{
	ADD_SIZE_X	= -2,
	ADD_SIZE_Y	= -2,
	"LEFT_TOP	= D3DXVECTOR2(dlgX+231-3+110,dlgY+474-9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonpost_window_Last_Triangle:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_LAST_PAGE"] )
--]]

--1/3
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticpost_window_Font )
	g_pStaticpost_window_Font:SetName( "g_pStaticpost_window_Font" )

	g_pStaticpost_window_Font:AddString
	{
		 MSG 			= "1 / 3",
		 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(dlgX+193-3+90,dlgY+476-2-8)",
		"COLOR			= D3DXCOLOR(1.05,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
