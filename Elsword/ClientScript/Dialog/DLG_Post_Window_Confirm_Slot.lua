-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_Receive_Slot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"] )

dlgX = 100 --624
dlgY = 140


-------------------------슬롯버튼

--봉투1

g_pButton_Slot_Button1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Slot_Button1 )
g_pButton_Slot_Button1:SetName( "Slot_Button1" )
g_pButton_Slot_Button1:SetNormalTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Normal" )

g_pButton_Slot_Button1:SetOverTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button1:SetDownTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+52+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+52+41-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button1:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23+1,dlgY+52+41-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button1:AddDummyInt( 1 )
g_pButton_Slot_Button1:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_OPEN_MAIL"] )

--봉투2

g_pButton_Slot_Button2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Slot_Button2 )
g_pButton_Slot_Button2:SetName( "Slot_Button2" )
g_pButton_Slot_Button2:SetNormalTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Normal" )

g_pButton_Slot_Button2:SetOverTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button2:SetDownTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+112+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+112+41-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button2:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23+1,dlgY+112+41-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button2:AddDummyInt( 2 )
g_pButton_Slot_Button2:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_OPEN_MAIL"] )


--봉투3

g_pButton_Slot_Button3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Slot_Button3 )
g_pButton_Slot_Button3:SetName( "Slot_Button3" )
g_pButton_Slot_Button3:SetNormalTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Normal" )

g_pButton_Slot_Button3:SetOverTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button3:SetDownTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+172+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+172+41-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button3:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23+1,dlgY+172+41-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button3:AddDummyInt( 3 )
g_pButton_Slot_Button3:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_OPEN_MAIL"] )

--봉투4

g_pButton_Slot_Button4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Slot_Button4 )
g_pButton_Slot_Button4:SetName( "Slot_Button4" )
g_pButton_Slot_Button4:SetNormalTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Normal" )

g_pButton_Slot_Button4:SetOverTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button4:SetDownTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+232+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+232+41-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button4:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23+1,dlgY+232+41-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button4:AddDummyInt( 4 )
g_pButton_Slot_Button4:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_OPEN_MAIL"] )

--봉투5

g_pButton_Slot_Button5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Slot_Button5 )
g_pButton_Slot_Button5:SetName( "Slot_Button5" )
g_pButton_Slot_Button5:SetNormalTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Normal" )

g_pButton_Slot_Button5:SetOverTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button5:SetDownTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button5:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+292+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button5:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+292+41-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button5:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23+1,dlgY+292+41-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button5:AddDummyInt( 5 )
g_pButton_Slot_Button5:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_OPEN_MAIL"] )

--봉투6

g_pButton_Slot_Button6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Slot_Button6 )
g_pButton_Slot_Button6:SetName( "Slot_Button6" )
g_pButton_Slot_Button6:SetNormalTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Normal" )

g_pButton_Slot_Button6:SetOverTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button6:SetDownTex( "DLG_Common_New_Texture65.tga", "Slot_Button_Over" )

g_pButton_Slot_Button6:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+352+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button6:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23,dlgY+352+41-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button6:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+22+23+1,dlgY+352+41-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Slot_Button6:AddDummyInt( 6 )
g_pButton_Slot_Button6:SetCustomMsgMouseUp( POSTBOX_RECEIVE_UI_MSG["PBRUM_OPEN_MAIL"] )


--봉투1 슬롯
g_pStaticpost_ItemSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_ItemSlot )
g_pStaticpost_ItemSlot:SetName( "Staticpost_ItemSlot" )


g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+59+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투2슬롯
g_pPicturepost_window_BG26 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot:AddPicture( g_pPicturepost_window_BG26 )

g_pPicturepost_window_BG26:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturepost_window_BG26:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+119+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투3슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+179+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투4슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+239+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투5슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+299+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투6슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+359+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--STICK
g_pPicturepost_window_STICK1 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_STICK1 )

g_pPicturepost_window_STICK1:SetTex( "DLG_Common_New_Texture25.TGA", "GRAY_STICK" )

g_pPicturepost_window_STICK1:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+133-31,dlgY+120-19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_STICK2 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_STICK2 )

g_pPicturepost_window_STICK2:SetTex( "DLG_Common_New_Texture25.TGA", "GRAY_STICK" )

g_pPicturepost_window_STICK2:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+133-31,dlgY+161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_STICK3 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_STICK3 )

g_pPicturepost_window_STICK3:SetTex( "DLG_Common_New_Texture25.TGA", "GRAY_STICK" )

g_pPicturepost_window_STICK3:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+133-31,dlgY+221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_STICK4 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_STICK4 )

g_pPicturepost_window_STICK4:SetTex( "DLG_Common_New_Texture25.TGA", "GRAY_STICK" )

g_pPicturepost_window_STICK4:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+133-31,dlgY+281)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_STICK5 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_STICK5 )

g_pPicturepost_window_STICK5:SetTex( "DLG_Common_New_Texture25.TGA", "GRAY_STICK" )

g_pPicturepost_window_STICK5:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+133-31,dlgY+341)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_STICK6 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_STICK6 )

g_pPicturepost_window_STICK6:SetTex( "DLG_Common_New_Texture25.TGA", "GRAY_STICK" )

g_pPicturepost_window_STICK6:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+133-31,dlgY+401)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--체크박스
g_pPicturepost_window_BOX1 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX1 )

g_pPicturepost_window_BOX1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX1:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+132-19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BOX2 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX2 )

g_pPicturepost_window_BOX2:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX2:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BOX3 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX3 )

g_pPicturepost_window_BOX3:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX3:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+233)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BOX4 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX4 )

g_pPicturepost_window_BOX4:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX4:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BOX5 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX5 )

g_pPicturepost_window_BOX5:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX5:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepost_window_BOX6 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX6 )

g_pPicturepost_window_BOX6:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX6:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+413)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturepost_window_BOX7 = g_pUIDialog:CreatePicture()
g_pStaticpost_window:AddPicture( g_pPicturepost_window_BOX7 )

g_pPicturepost_window_BOX7:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicturepost_window_BOX7:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7,dlgY+468)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------체크

--1)
	g_pCheckBoxpost_window_Slot1 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot1:SetName( "g_pCheckBoxpost_window_Slot1" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot1 )

	g_pCheckBoxpost_window_Slot1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot1:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+113-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+128+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

--2)
g_pCheckBoxpost_window_Slot2 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot2:SetName( "g_pCheckBoxpost_window_Slot2" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot2 )

	g_pCheckBoxpost_window_Slot2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot2:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+173-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+188+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

--3)
g_pCheckBoxpost_window_Slot3 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot3:SetName( "g_pCheckBoxpost_window_Slot3" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot3 )

	g_pCheckBoxpost_window_Slot3:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot3:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot3:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+233-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+248+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot3:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

--4)
g_pCheckBoxpost_window_Slot4 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot4:SetName( "g_pCheckBoxpost_window_Slot4" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot4 )

	g_pCheckBoxpost_window_Slot4:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot4:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot4:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+293-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+308+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot4:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+292)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

--5)
g_pCheckBoxpost_window_Slot5 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot5:SetName( "g_pCheckBoxpost_window_Slot5" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot5 )

	g_pCheckBoxpost_window_Slot5:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot5:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot5:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+353-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+368+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot5:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+352)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

--6)
g_pCheckBoxpost_window_Slot6 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot6:SetName( "g_pCheckBoxpost_window_Slot6" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot6 )

	g_pCheckBoxpost_window_Slot6:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot6:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot6:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+413-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+428+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot6:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+412)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


--7)
g_pCheckBoxpost_window_Slot7 = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxpost_window_Slot7:SetName( "g_pCheckBoxpost_window_Slot7" )
	g_pUIDialog:AddControl( g_pCheckBoxpost_window_Slot7 )

	g_pCheckBoxpost_window_Slot7:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxpost_window_Slot7:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxpost_window_Slot7:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(dlgX+31-7-5,dlgY+468-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(dlgX+46-7+5,dlgY+483+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxpost_window_Slot7:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(dlgX+29-7,dlgY+467)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


------메시지
	--봉투1 -1
    g_pStatic_message1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message1 )
	g_pStatic_message1:SetName( "g_pStatic_message1" )

	g_pStatic_message1:AddString
	{
		--MSG 			= "08.08.13 엘소드 고객센터",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+99)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투1-2
	g_pStatic_message2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message2 )
	g_pStatic_message2:SetName( "g_pStatic_message2" )

	g_pStatic_message2:AddString
	{
		-- MSG 			= "제목:고객님의 캐릭터는 부정한 행위...",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+114)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투1-3
	g_pStatic_message3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message3 )
	g_pStatic_message3:SetName( "g_pStatic_message3" )

	g_pStatic_message3:AddString
	{
		-- MSG 			= "첨부:비었음",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+129)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투2-1
	g_pStatic_message4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message4 )
	g_pStatic_message4:SetName( "g_pStatic_message4" )

	g_pStatic_message4:AddString
	{
		-- MSG 			= "08.08.14 엘소드 고객센터",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+159)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투2-2
	g_pStatic_message5 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message5 )
	g_pStatic_message5:SetName( "g_pStatic_message5" )

	g_pStatic_message5:AddString
	{
		-- MSG 			= "제목:...........",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+174)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투2-3
	g_pStatic_message6 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message6 )
	g_pStatic_message6:SetName( "g_pStatic_message6" )

	g_pStatic_message6:AddString
	{
		-- MSG 			= "첨부:........",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+189)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	--봉투3-1
	g_pStatic_message7 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message7 )
	g_pStatic_message7:SetName( "g_pStatic_message7" )

	g_pStatic_message7:AddString
	{
		-- MSG 			= "08.08.15 엘소드 고객센터",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+219)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투3-2
	g_pStatic_message8 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message8 )
	g_pStatic_message8:SetName( "g_pStatic_message8" )

	g_pStatic_message8:AddString
	{
		-- MSG 			= "제목:............",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+234)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투3-3
	g_pStatic_message9 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message9 )
	g_pStatic_message9:SetName( "g_pStatic_message9" )

	g_pStatic_message9:AddString
	{
		-- MSG 			= "첨부:.........",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+249)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투4-1
	g_pStatic_message10 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message10 )
	g_pStatic_message10:SetName( "g_pStatic_message10" )

	g_pStatic_message10:AddString
	{
		-- MSG 			= "08.08.16 엘소드 고객센터",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+279)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투4-2
	g_pStatic_message11 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message11 )
	g_pStatic_message11:SetName( "g_pStatic_message11" )

	g_pStatic_message11:AddString
	{
		-- MSG 			= "제목:.........",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+294)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투4-3
	g_pStatic_message12 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message12 )
	g_pStatic_message12:SetName( "g_pStatic_message12" )

	g_pStatic_message12:AddString
	{
		-- MSG 			= "첨부:.........",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+309)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투5-1
	g_pStatic_message13 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message13 )
	g_pStatic_message13:SetName( "g_pStatic_message13" )

	g_pStatic_message13:AddString
	{
		-- MSG 			= "08.08.17 엘소드 고객센터",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+341)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투5-2
	g_pStatic_message14 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message14 )
	g_pStatic_message14:SetName( "g_pStatic_message14" )

	g_pStatic_message14:AddString
	{
		-- MSG 			= "제목:.................",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+356)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투5-3
	g_pStatic_message15 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message15 )
	g_pStatic_message15:SetName( "g_pStatic_message15" )

	g_pStatic_message15:AddString
	{
		-- MSG 			= "첨부:...........",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+371)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투6-1
	g_pStatic_message16 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message16 )
	g_pStatic_message16:SetName( "g_pStatic_message16" )

	g_pStatic_message16:AddString
	{
		-- MSG 			= "08.08.18 엘소드 고객센터",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+399)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투6-2
	g_pStatic_message17 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message17 )
	g_pStatic_message17:SetName( "g_pStatic_message17" )

	g_pStatic_message17:AddString
	{
		-- MSG 			= "제목:............",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+414)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	--봉투6-3
	g_pStatic_message18 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_message18 )
	g_pStatic_message18:SetName( "g_pStatic_message18" )

	g_pStatic_message18:AddString
	{
		-- MSG 			= "첨부:.............",
		 	 FONT_INDEX      = XUF_DODUM_13_BOLD,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(dlgX+106,dlgY+429)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
	
------------------------------------------------------------------------------------------------	
---------------미확인 편지 


--봉투1 슬롯
g_pStaticpost_ItemSlot1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_ItemSlot1 )
g_pStaticpost_ItemSlot1:SetName( "Staticpost_ItemSlot_NotRead" )


g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot1:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_A" )
g_pPicturepost_window_BG25:SetIndex(1)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+59+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투2슬롯
g_pPicturepost_window_BG26 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot1:AddPicture( g_pPicturepost_window_BG26 )

g_pPicturepost_window_BG26:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_A" )
g_pPicturepost_window_BG26:SetIndex(2)
g_pPicturepost_window_BG26:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+119+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투3슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot1:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_A" )
g_pPicturepost_window_BG25:SetIndex(3)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+179+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투4슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot1:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_A" )
g_pPicturepost_window_BG25:SetIndex(4)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+239+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투5슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot1:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_A" )
g_pPicturepost_window_BG25:SetIndex(5)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+299+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투6슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot1:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_A" )
g_pPicturepost_window_BG25:SetIndex(6)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+359+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------확인한 편지

--봉투1 슬롯
g_pStaticpost_ItemSlot2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_ItemSlot2 )
g_pStaticpost_ItemSlot2:SetName( "Staticpost_ItemSlot_Read" )


g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot2:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_B" )
g_pPicturepost_window_BG25:SetIndex(1)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+59+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투2슬롯
g_pPicturepost_window_BG26 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot2:AddPicture( g_pPicturepost_window_BG26 )

g_pPicturepost_window_BG26:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_B" )
g_pPicturepost_window_BG26:SetIndex(2)
g_pPicturepost_window_BG26:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+119+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투3슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot2:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_B" )
g_pPicturepost_window_BG25:SetIndex(3)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+179+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투4슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot2:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_B" )
g_pPicturepost_window_BG25:SetIndex(4)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+239+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투5슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot2:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_B" )
g_pPicturepost_window_BG25:SetIndex(5)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+299+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--봉투6슬롯
g_pPicturepost_window_BG25 = g_pUIDialog:CreatePicture()
g_pStaticpost_ItemSlot2:AddPicture( g_pPicturepost_window_BG25 )

g_pPicturepost_window_BG25:SetTex( "DLG_Common_New_Texture62.TGA", "Mail_B" )
g_pPicturepost_window_BG25:SetIndex(6)
g_pPicturepost_window_BG25:SetPoint
{
            	
	"LEFT_TOP		= D3DXVECTOR2(dlgX+55,dlgY+359+41)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	
