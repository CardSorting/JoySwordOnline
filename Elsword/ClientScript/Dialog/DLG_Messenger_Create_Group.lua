-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Messenger_Create_Group" )
g_pUIDialog:SetPos( 300,250 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CREATE_GROUP_CLOSE"] )
























g_pStaticMaking_Group_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMaking_Group_Window )
g_pStaticMaking_Group_Window:SetName( "Making_Group_Window" )





--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background1"  )
g_pPictureBG1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(123-50,194-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background2"  )
g_pPictureBG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50-50,194-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background3"  )
g_pPictureBG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123-50,101-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background4"  )
g_pPictureBG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50-50,101-101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background5"  )
g_pPictureBG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background6"  )
g_pPictureBG6:SetPoint
{
          ADD_SIZE_X = 330,

	"LEFT_TOP		= D3DXVECTOR2(35,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background7"  )
g_pPictureBG7:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background8"  )
g_pPictureBG8:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(109,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background9"  )
g_pPictureBG9:SetPoint
{
         ADD_SIZE_Y = 14,


	"LEFT_TOP		= D3DXVECTOR2(109,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Background10"  )
g_pPictureBG10:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(109,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----------------글자----------------------

g_pPictureMaking_Group_Title= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureMaking_Group_Title)

g_pPictureMaking_Group_Title:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group"  )
g_pPictureMaking_Group_Title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(11,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMaking_Group_Text= g_pUIDialog:CreatePicture()
g_pStaticMaking_Group_Window:AddPicture( g_pPictureMaking_Group_Text)

g_pPictureMaking_Group_Text:SetTex( "DLG_Common_New_Texture04.tga", "Making_Group_Text"  )
g_pPictureMaking_Group_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(35,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








----------------버튼----------------------------------
 g_pButtonConfirm = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonConfirm )
g_pButtonConfirm:SetName( "GroupOk" )
g_pButtonConfirm:SetNormalTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Normal" )

g_pButtonConfirm:SetOverTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Over" )

g_pButtonConfirm:SetDownTex( "DLG_Common_New_Texture04.tga", "Button_Confirm_Over" )

g_pButtonConfirm:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(155,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(155,119)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(155,119)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonConfirm:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CREATE_GROUP_REQ"] )






g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "exitButton" )
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
g_pButtonX:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_CREATE_GROUP_CLOSE"] )


g_pIMEEditBoxGroupName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxGroupName )
g_pIMEEditBoxGroupName:SetName( "IMEEditBoxGroupName" )
g_pIMEEditBoxGroupName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(120,80)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(352,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxGroupName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxGroupName:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxGroupName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxGroupName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxGroupName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxGroupName:SetTabControlName( "IMEEditBoxGroupName" )
g_pIMEEditBoxGroupName:RequestFocus()
g_pIMEEditBoxGroupName:SetLengthLimit( 6 )
