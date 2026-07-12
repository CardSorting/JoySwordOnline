-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Add_BlackList" )
g_pUIDialog:SetPos( 300,200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"] )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_OPTION["PBOUM_CLOSE"] )





g_pStaticMaking_Friend_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMaking_Friend_Window )
g_pStaticMaking_Friend_Window:SetName( "Making_Group_Window" )




--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background1"  )
g_pPictureBG1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2( 114-41,261-121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background2"  )
g_pPictureBG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(41-41,261-121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background3"  )
g_pPictureBG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 114-41,30-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background4"  )
g_pPictureBG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(41-41,30-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------



g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background2"  )
g_pPictureBG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background3"  )
g_pPictureBG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(126,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background1"  )
g_pPictureBG7:SetPoint
{
            ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(22,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background1"  )
g_pPictureBG8:SetPoint
{
            ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(22,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background1"  )
g_pPictureBG9:SetPoint
{
            ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(22,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background1"  )
g_pPictureBG10:SetPoint
{
            ADD_SIZE_Y = 76,
	"LEFT_TOP		= D3DXVECTOR2(22,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---bottom

g_pPictureBG11= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG11)

g_pPictureBG11:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background4"  )
g_pPictureBG11:SetPoint
{
            
	"LEFT_TOP		= D3DXVECTOR2(22,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG12= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG12)

g_pPictureBG12:SetTex( "DLG_Common_New_Texture04.tga", "Making_Friend_Background5"  )
g_pPictureBG12:SetPoint
{
            
	"LEFT_TOP		= D3DXVECTOR2(126,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








-------입력창 배경
g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background8"  )
g_pPictureBG8:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(109-62,73+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background9"  )
g_pPictureBG9:SetPoint
{
         ADD_SIZE_Y = 8,


	"LEFT_TOP		= D3DXVECTOR2(109-62,84+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background10"  )
g_pPictureBG10:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(109-62,98+28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











-----------------글자----------------------

g_pPictureMaking_Group_Title= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureMaking_Group_Title)

g_pPictureMaking_Group_Title:SetTex( "DLG_Common_New_Texture62.tga", "Cut_Title"  )
g_pPictureMaking_Group_Title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(11,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMaking_Group_Text= g_pUIDialog:CreatePicture()
g_pStaticMaking_Friend_Window:AddPicture( g_pPictureMaking_Group_Text)

g_pPictureMaking_Group_Text:SetTex( "DLG_Common_New_Texture62.tga", "Cut_Message"  )
g_pPictureMaking_Group_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(39,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








----------------버튼----------------------------------
 g_pButtonConfirm = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonConfirm )
g_pButtonConfirm:SetName( "AddFriend" )
g_pButtonConfirm:SetNormalTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Normal" )

g_pButtonConfirm:SetOverTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Over" )

g_pButtonConfirm:SetDownTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Over" )

g_pButtonConfirm:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(155,251-89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,251-89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetDownPoint
{
       ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(156,252-89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonConfirm:SetCustomMsgMouseUp( POSTBOX_OPTION["PBOUM_BLIST_OK"] )




g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "ExitButton" )
g_pButtonX:SetNormalTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_Texture20.tga", "Button_X_Over" )

g_pButtonX:SetDownTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(357,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(358,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( POSTBOX_OPTION["PBOUM_CLOSE"] )




g_pIMEID = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEID )
g_pIMEID:SetName( "IMEID" )
g_pIMEID:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(56,116-4)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(292,135-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEID:SetFont( XF_DODUM_15_NORMAL )
g_pIMEID:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEID:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEID:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEID:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEID:SetTabControlName( "IMEMessage" )
g_pIMEID:RequestFocus()
