-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Option_Window" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_WINDOW_CLOSE"] )









g_pStaticShadow_Line = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticShadow_Line )
g_pStaticShadow_Line:SetName( "Shadow_Line" )



g_pPictureShadow_Line1 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line1)

g_pPictureShadow_Line1:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line1" )

g_pPictureShadow_Line1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(332,491)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line2 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line2)

g_pPictureShadow_Line2:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line3" )

g_pPictureShadow_Line2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(687,491)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line3 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line3)

g_pPictureShadow_Line3:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line2" )

g_pPictureShadow_Line3:SetPoint
{
     ADD_SIZE_X = 342,
	"LEFT_TOP		= D3DXVECTOR2(344,491)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line4 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line4)

g_pPictureShadow_Line4:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line4" )

g_pPictureShadow_Line4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(687,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureShadow_Line5 = g_pUIDialog:CreatePicture()
g_pStaticShadow_Line:AddPicture(g_pPictureShadow_Line5)

g_pPictureShadow_Line5:SetTex( "DLG_Common_Texture01.tga", "Shadow_Line5" )

g_pPictureShadow_Line5:SetPoint
{
    ADD_SIZE_Y = 241,
	"LEFT_TOP		= D3DXVECTOR2(687,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


















g_pStaticOption_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOption_Window )
g_pStaticOption_Window:SetName( "Option_Window" )




--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_Texture01.tga", "Black"  )

g_pPictureBG1:SetPoint
{
     ADD_SIZE_X = 361,
 	ADD_SIZE_Y = 269,
	"LEFT_TOP		= D3DXVECTOR2(332,227)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 



g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_Texture01.tga", "Color6"  )

g_pPictureBG2:SetPoint
{
     ADD_SIZE_X = 351,
 	ADD_SIZE_Y = 259,
	"LEFT_TOP		= D3DXVECTOR2(337,232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_Texture01.tga", "Black"  )

g_pPictureBG3:SetPoint
{
     ADD_SIZE_X = 345,
 	ADD_SIZE_Y = 253,
	"LEFT_TOP		= D3DXVECTOR2(340,235)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_Common_Texture01.tga", "Main_Bar1"  )

g_pPictureBG4:SetPoint
{
     ADD_SIZE_X = 341,
 	ADD_SIZE_Y = 37,
	"LEFT_TOP		= D3DXVECTOR2(342,237)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_Texture01.tga", "Box"  )

g_pPictureBG5:SetPoint
{
     ADD_SIZE_X = 341,
 	ADD_SIZE_Y = 212,
	"LEFT_TOP		= D3DXVECTOR2(342,274)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_Texture01.tga", "Color11"  )

g_pPictureBG6:SetPoint
{
     ADD_SIZE_X = 335,
 	ADD_SIZE_Y = 206,
	"LEFT_TOP		= D3DXVECTOR2(345,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_Texture01.tga", "Box_Button5"  )

g_pPictureBG7:SetPoint
{
     ADD_SIZE_X = 331,
 	ADD_SIZE_Y = 202,
	"LEFT_TOP		= D3DXVECTOR2(347,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2"  )

g_pPictureBG8:SetPoint
{
     ADD_SIZE_X = 317,
 	ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(354,319)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2"  )

g_pPictureBG9:SetPoint
{
     ADD_SIZE_X = 317,
 	ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(354,346)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2"  )

g_pPictureBG10:SetPoint
{
     ADD_SIZE_X = 317,
 	ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(354,373)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG11= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG11)

g_pPictureBG11:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2"  )

g_pPictureBG11:SetPoint
{
     ADD_SIZE_X = 317,
 	ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(354,400)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG12= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG12)

g_pPictureBG12:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2"  )

g_pPictureBG12:SetPoint
{
     ADD_SIZE_X = 317,
 	ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(354,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG13= g_pUIDialog:CreatePicture()
g_pStaticOption_Window:AddPicture( g_pPictureBG13)

g_pPictureBG13:SetTex( "DLG_Common_Texture01.tga", "Gray_Box2"  )

g_pPictureBG13:SetPoint
{
     ADD_SIZE_X = 317,
 	ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(354,454)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------버튼









------메뉴 라디오 버튼

g_pRadioButtonOption_Menu_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Menu_Button1 )

g_pRadioButtonOption_Menu_Button1:SetFixOverByCheck( true )
g_pRadioButtonOption_Menu_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Menu_Button1:SetName( "Option_Graphic_Menu" )

g_pRadioButtonOption_Menu_Button1:SetNormalTex( "DLG_Common_Texture01.TGA", "Box_Button7" )


g_pRadioButtonOption_Menu_Button1:SetOverTex( "DLG_Common_Texture01.TGA", "Box_Button8" )


g_pRadioButtonOption_Menu_Button1:SetCheckedTex( "DLG_Common_Texture01.TGA", "Box_Button6" )


g_pRadioButtonOption_Menu_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(354,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(354,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(354,282)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(354+61,282+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(354,282)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button1:SetGroupID( 1 )
g_pRadioButtonOption_Menu_Button1:SetChecked( true )
g_pRadioButtonOption_Menu_Button1:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_GRAPHIC"] ) 













g_pRadioButtonOption_Menu_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Menu_Button2 )

g_pRadioButtonOption_Menu_Button2:SetFixOverByCheck( true )
g_pRadioButtonOption_Menu_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Menu_Button2:SetName( "Option_Sound_Menu" )

g_pRadioButtonOption_Menu_Button2:SetNormalTex( "DLG_Common_Texture01.TGA", "Box_Button7" )


g_pRadioButtonOption_Menu_Button2:SetOverTex( "DLG_Common_Texture01.TGA", "Box_Button8" )


g_pRadioButtonOption_Menu_Button2:SetCheckedTex( "DLG_Common_Texture01.TGA", "Box_Button6" )


g_pRadioButtonOption_Menu_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(418,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(418,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(418,282)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(418+61,282+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(418,282)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button2:SetGroupID( 1 )
g_pRadioButtonOption_Menu_Button2:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SOUND"] ) 














g_pRadioButtonOption_Menu_Button3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Menu_Button3 )

g_pRadioButtonOption_Menu_Button3:SetFixOverByCheck( true )
g_pRadioButtonOption_Menu_Button3:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Menu_Button3:SetName( "Option_Community_Menu" )

g_pRadioButtonOption_Menu_Button3:SetNormalTex( "DLG_Common_Texture01.TGA", "Box_Button7" )


g_pRadioButtonOption_Menu_Button3:SetOverTex( "DLG_Common_Texture01.TGA", "Box_Button8" )


g_pRadioButtonOption_Menu_Button3:SetCheckedTex( "DLG_Common_Texture01.TGA", "Box_Button6" )


g_pRadioButtonOption_Menu_Button3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(482,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(482,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(482,282)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(482+61,282+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(482,282)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button3:SetGroupID( 1 )
g_pRadioButtonOption_Menu_Button3:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_COMMUNITY"] ) 



-- fix!! 일단 제외
g_pRadioButtonOption_Menu_Button3:SetShow( false )
g_pRadioButtonOption_Menu_Button3:SetEnable( false )




g_pRadioButtonOption_Menu_Button4 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Menu_Button4 )

g_pRadioButtonOption_Menu_Button4:SetFixOverByCheck( true )
g_pRadioButtonOption_Menu_Button4:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Menu_Button4:SetName( "Option_Other_Menu" )

g_pRadioButtonOption_Menu_Button4:SetNormalTex( "DLG_Common_Texture01.TGA", "Box_Button7" )


g_pRadioButtonOption_Menu_Button4:SetOverTex( "DLG_Common_Texture01.TGA", "Box_Button8" )


g_pRadioButtonOption_Menu_Button4:SetCheckedTex( "DLG_Common_Texture01.TGA", "Box_Button6" )


g_pRadioButtonOption_Menu_Button4:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(546,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button4:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(546,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button4:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(546,282)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(546+61,282+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button4:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(546,282)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button4:SetGroupID( 1 )
g_pRadioButtonOption_Menu_Button4:SetCustomMsgChecked( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_OTHER"] ) 










--[[
g_pRadioButtonOption_Menu_Button5 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonOption_Menu_Button5 )

g_pRadioButtonOption_Menu_Button5:SetFixOverByCheck( true )
g_pRadioButtonOption_Menu_Button5:SetShowOffBGByCheck( true )

g_pRadioButtonOption_Menu_Button5:SetName( "Option_Menu_Button5" )

g_pRadioButtonOption_Menu_Button5:SetNormalTex( "DLG_Common_Texture01.TGA", "Box_Button7" )


g_pRadioButtonOption_Menu_Button5:SetOverTex( "DLG_Common_Texture01.TGA", "Box_Button8" )


g_pRadioButtonOption_Menu_Button5:SetCheckedTex( "DLG_Common_Texture01.TGA", "Box_Button6" )


g_pRadioButtonOption_Menu_Button5:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(610,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button5:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(610,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button5:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(610,282)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(610+61,282+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button5:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(610,282)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonOption_Menu_Button5:SetGroupID( 1 )
--]]

-------------------------------------------













g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "ButtonX" )
g_pButtonX:SetNormalTex( "DLG_Common_Button01.tga", "X_Icon_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_Button01.tga", "X_Icon_Over" )

g_pButtonX:SetDownTex( "DLG_Common_Button01.tga", "X_Icon_Normal" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(652,241)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(652,241)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(652,241)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonX:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_WINDOW_CLOSE"] )











































g_pStaticOption_Window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOption_Window_Font )
g_pStaticOption_Window_Font:SetName( "Option_Window" )


g_pPictureOption= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Font:AddPicture( g_pPictureOption)

g_pPictureOption:SetTex( "DLG_Common_Texture09.tga", "Option"  )

g_pPictureOption:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491,243)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGraphic= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Font:AddPicture( g_pPictureGraphic)

g_pPictureGraphic:SetTex( "DLG_Common_Texture09.tga", "Graphic"  )

g_pPictureGraphic:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(365,291)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureSound= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Font:AddPicture( g_pPictureSound)

g_pPictureSound:SetTex( "DLG_Common_Texture09.tga", "Sound"  )

g_pPictureSound:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(428,291)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCommunity= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Font:AddPicture( g_pPictureCommunity)

g_pPictureCommunity:SetTex( "DLG_Common_Texture09.tga", "Community"  )

g_pPictureCommunity:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(486,291)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- fix!! 일단 제외
g_pPictureCommunity:SetShow(false)




g_pPictureAnithing= g_pUIDialog:CreatePicture()
g_pStaticOption_Window_Font:AddPicture( g_pPictureAnithing)

g_pPictureAnithing:SetTex( "DLG_Common_Texture09.tga", "Anithing"  )

g_pPictureAnithing:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(562,291)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



































IncludeLua( "DLG_Option_Window_Graphic.lua" )
IncludeLua( "DLG_Option_Window_Sound.lua" )
IncludeLua( "DLG_Option_Window_Other.lua" )
IncludeLua( "DLG_Option_Window_Community.lua" )




