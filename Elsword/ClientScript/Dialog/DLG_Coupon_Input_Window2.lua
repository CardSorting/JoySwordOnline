-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



--[[
g_pUIDialog:SetName( "DLG_COUPON_INPUT_BOX" )
g_pUIDialog:SetPos( 250, 200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_CLOSE_COUPON_INPUT_BOX"] )

--]]

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pStaticCoupon_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCoupon_Window )
g_pStaticCoupon_Window:SetName( "Coupon_Window" )
g_pUIDialog:SetCloseCustomUIEventID( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_CLOSE_COUPON_INPUT_BOX"] )



--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background"  )

g_pPictureBG1:SetPoint
{
	ADD_SIZE_X = -140,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture04.tga", "Coupon_Input"  )

g_pPictureBG2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background4"  )

g_pPictureBG3:SetPoint
{
    ADD_SIZE_X = -140,
	"LEFT_TOP		= D3DXVECTOR2(25,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background5"  )

g_pPictureBG4:SetPoint
{
ADD_SIZE_X = -140,
    ADD_SIZE_Y = 74,
	"LEFT_TOP		= D3DXVECTOR2(25,73)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background6"  )

g_pPictureBG5:SetPoint
{
    ADD_SIZE_X = -140,
	"LEFT_TOP		= D3DXVECTOR2(25,144)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_New_Texture04.tga", "COUPON_TEXT"  )

g_pPictureBG6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(38,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background3"  )

g_pPictureBG7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(35,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background3"  )

g_pPictureBG8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(104,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background3"  )

g_pPictureBG9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(173,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStaticCoupon_Window:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_New_Texture04.tga", "Popup_Background3"  )

g_pPictureBG10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(242,107)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



















g_pButtonUse = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUse )
g_pButtonUse:SetName( "Use" )
g_pButtonUse:SetNormalTex( "DLG_Common_New_Texture04.tga", "Button_Use_Normal" )

g_pButtonUse:SetOverTex( "DLG_Common_New_Texture04.tga", "Button_Use_Over" )

g_pButtonUse:SetDownTex( "DLG_Common_New_Texture04.tga", "Button_Use_Over" )

g_pButtonUse:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(193-70,162)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUse:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(193-70,162)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUse:SetDownPoint
{
     ADD_SIZE_X = -2,
ADD_SIZE_Y =-2,	 
 	"LEFT_TOP		= D3DXVECTOR2(194-70,163)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUse:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_USE_COUPON"] )
--g_pButtonUse:SetGuideDesc( STR_ID_2748 )

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "X" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture04.tga", "Exit_Button" )

g_pButtonX:SetNormalPoint
{
	ADD_SIZE_X = -4,
     ADD_SIZE_Y = -4,

 	"LEFT_TOP		= D3DXVECTOR2(435-140,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(433-140,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(434-140,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_CLOSE_COUPON_INPUT_BOX"] )




























	 
	 
	 
























-------------IME-------------------------------
posx = 40
posy = 112

sizex = 50
sizey = 22

gapx = 69


for i=0, 3 do 

	controlName = string.format( "EditBox%d", i )

	g_pIMEEditBoxChatBox = g_pUIDialog:CreateIMEEditBox()
	g_pUIDialog:AddControl( g_pIMEEditBoxChatBox )
	g_pIMEEditBoxChatBox:SetName( controlName )
	g_pIMEEditBoxChatBox:SetTextPoint
	{
		USE_TEXTURE_SIZE= FALSE,
		"LEFT_TOP		= D3DXVECTOR2(posx, posy)",
		"RIGHT_BOTTOM	= D3DXVECTOR2(posx+sizex, posy+sizey)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pIMEEditBoxChatBox:SetFont( XF_DODUM_15_NORMAL )
	g_pIMEEditBoxChatBox:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
	g_pIMEEditBoxChatBox:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
	g_pIMEEditBoxChatBox:SetSelectedBackColor( 1.0, 1.0, 0.0, 1.0 )
	g_pIMEEditBoxChatBox:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
	g_pIMEEditBoxChatBox:SetOnlyNumAndEnglishMode( true, true, true )
	g_pIMEEditBoxChatBox:SetLengthLimit( 4 )
	g_pIMEEditBoxChatBox:SetMultiLineOption( 0, i )
	g_pIMEEditBoxChatBox:SetAutoChangeBigEnglish( true )
	
	if i == 0 then
		g_pIMEEditBoxChatBox:RequestFocus()
	end
	
	
	if i ~= 3 then
	
		nextControlName = string.format( "EditBox%d", i+1 )
		g_pIMEEditBoxChatBox:SetTabControlName( nextControlName )
			
	end
		
	posx = posx + gapx

end



