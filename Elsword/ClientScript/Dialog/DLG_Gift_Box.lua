-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_GIFT_BOX" )
g_pUIDialog:SetPos( 206, 80 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_CLOSE_COUPON_BOX"] )




g_pStaticGift_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGift_Box )
g_pStaticGift_Box:SetName( "Gift_Box" )




--------------밑판 하얀바닥-------------------
g_pPictureWhite_BG1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG1)

g_pPictureWhite_BG1:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background1"  )

g_pPictureWhite_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWhite_BG2= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG2)

g_pPictureWhite_BG2:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background2"  )

g_pPictureWhite_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_BG3= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG3)

g_pPictureWhite_BG3:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background3"  )

g_pPictureWhite_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWhite_BG4= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG4)

g_pPictureWhite_BG4:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background4"  )

g_pPictureWhite_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,382)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_BG5= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG5)

g_pPictureWhite_BG5:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background5"  )

g_pPictureWhite_BG5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,451)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_BG6= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG6)

g_pPictureWhite_BG6:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background6"  )

g_pPictureWhite_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureWhite_BG7= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG7)

g_pPictureWhite_BG7:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background7"  )

g_pPictureWhite_BG7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureWhite_BG8= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG8)

g_pPictureWhite_BG8:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background8"  )

g_pPictureWhite_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWhite_BG9= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG9)

g_pPictureWhite_BG9:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background9"  )

g_pPictureWhite_BG9:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,194)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_BG10= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG10)

g_pPictureWhite_BG10:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background10"  )

g_pPictureWhite_BG10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_BG11= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG11)

g_pPictureWhite_BG11:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background11"  )

g_pPictureWhite_BG11:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(578,364)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWhite_BG12= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureWhite_BG12)

g_pPictureWhite_BG12:SetTex( "DLG_Common_New_Texture04.tga", "Gift_Box_Background12"  )

g_pPictureWhite_BG12:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(304,451)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}












---------------밑판붉은바닥-----------------------

g_pPictureRed_BG0= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG0)

g_pPictureRed_BG0:SetTex( "DLG_Common_Texture20.tga", "Back5"  )

g_pPictureRed_BG0:SetPoint
{
               ADD_SIZE_X = 489,
             ADD_SIZE_Y = 421,
	"LEFT_TOP		= D3DXVECTOR2(114+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG0_1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG0_1)

g_pPictureRed_BG0_1:SetTex( "DLG_Common_Texture20.tga", "Back5"  )

g_pPictureRed_BG0_1:SetPoint
{
               ADD_SIZE_X = 5,
             ADD_SIZE_Y = 421,
	"LEFT_TOP		= D3DXVECTOR2(600+9,54+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG0_2= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG0_2)

g_pPictureRed_BG0_2:SetTex( "DLG_Common_Texture20.tga", "Back5"  )

g_pPictureRed_BG0_2:SetPoint
{
               ADD_SIZE_X = 486,
               ADD_SIZE_Y = 10,
	"LEFT_TOP		= D3DXVECTOR2(117+9,464+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG0_3= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG0_3)

g_pPictureRed_BG0_3:SetTex( "DLG_Common_Texture20.tga", "Back5"  )

g_pPictureRed_BG0_3:SetPoint
{
               ADD_SIZE_X = 50,
               ADD_SIZE_Y = 50,
	"LEFT_TOP		= D3DXVECTOR2(115+9,50+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRed_BG2= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG2)

g_pPictureRed_BG2:SetTex( "DLG_Common_Texture20.tga", "Back1"  )

g_pPictureRed_BG2:SetPoint
{
        ADD_SIZE_X = 485,
	"LEFT_TOP		= D3DXVECTOR2(115+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRed_BG1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG1)

g_pPictureRed_BG1:SetTex( "DLG_Common_Texture20.tga", "Back4"  )

g_pPictureRed_BG1:SetPoint
{
        ADD_SIZE_Y = 419,
	"LEFT_TOP		= D3DXVECTOR2(114+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureRed_BG3= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG3)

g_pPictureRed_BG3:SetTex( "DLG_Common_Texture20.tga", "Color_Red"  )

g_pPictureRed_BG3:SetPoint
{

        ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(116+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRed_BG3_1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG3_1)

g_pPictureRed_BG3_1:SetTex( "DLG_Common_Texture20.tga", "Color_Red"  )

g_pPictureRed_BG3_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(116+9,50+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG4= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG4)

g_pPictureRed_BG4:SetTex( "DLG_Common_Texture20.tga", "Back6"  )

g_pPictureRed_BG4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(601+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG5= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG5)

g_pPictureRed_BG5:SetTex( "DLG_Common_Texture20.tga", "Back2"  )

g_pPictureRed_BG5:SetPoint
{

         ADD_SIZE_Y = 412,
	"LEFT_TOP		= D3DXVECTOR2(606+9,56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureRed_BG6= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG6)

g_pPictureRed_BG6:SetTex( "DLG_Common_Texture20.tga", "Back7"  )

g_pPictureRed_BG6:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(601+9,465+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG7= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG7)

g_pPictureRed_BG7:SetTex( "DLG_Common_Texture20.tga", "Back3"  )

g_pPictureRed_BG7:SetPoint
{

         ADD_SIZE_X = 479,
	"LEFT_TOP		= D3DXVECTOR2(122+9,473+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRed_BG7= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureRed_BG7)

g_pPictureRed_BG7:SetTex( "DLG_Common_Texture20.tga", "Back8"  )

g_pPictureRed_BG7:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(114+9,465+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------간판________________________





g_pPictureTitle= g_pUIDialog:CreatePicture()
g_pStaticGift_Box:AddPicture( g_pPictureTitle)

g_pPictureTitle:SetTex( "DLG_Common_New_Texture04.tga", "Gift_BoX_Title2"  )

g_pPictureTitle:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(267,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--------------------버튼---------------






g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "X" )
g_pButtonX:SetNormalTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_Texture20.tga", "Button_X_Over" )

g_pButtonX:SetDownTex( "DLG_Common_Texture20.tga", "Button_X_Normal" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(572+19,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(572+19,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(573+19,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_CLOSE_COUPON_BOX"] )





g_pButtonArrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonArrow )
g_pButtonArrow:SetName( "Arrow" )
g_pButtonArrow:SetNormalTex( "DLG_Common_Texture20.tga", "Arrow_Normal2" )

g_pButtonArrow:SetOverTex( "DLG_Common_Texture20.tga", "Arrow_Over2" )

g_pButtonArrow:SetDownTex( "DLG_Common_Texture20.tga", "Arrow_Normal2" )

g_pButtonArrow:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(300+15,434+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(300+15,434+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArrow:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(300+15,434+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArrow:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_PREV_PAGE"] )



g_pButtonArrow2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonArrow2 )
g_pButtonArrow2:SetName( "Arrow2" )
g_pButtonArrow2:SetNormalTex( "DLG_Common_Texture20.tga", "Arrow_Normal" )

g_pButtonArrow2:SetOverTex( "DLG_Common_Texture20.tga", "Arrow_Over" )

g_pButtonArrow2:SetDownTex( "DLG_Common_Texture20.tga", "Arrow_Normal" )

g_pButtonArrow2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(397+15,434+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArrow2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(397+15,434+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArrow2:SetDownPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(397+15,434+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonArrow2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_NEXT_PAGE"] )



--------------------라디오버튼-----------------------------



--[[
g_pRadioButtonPresent_Button2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPresent_Button2 )

g_pRadioButtonPresent_Button2:SetFixOverByCheck( true )
g_pRadioButtonPresent_Button2:SetShowOffBGByCheck( true )

g_pRadioButtonPresent_Button2:SetName( "Present_Button2" )

g_pRadioButtonPresent_Button2:SetNormalTex( "DLG_Common_Texture20.tga", "Gift2_Button_Normal" )


g_pRadioButtonPresent_Button2:SetOverTex( "DLG_Common_Texture20.tga", "Gift2_Button_Over" )


g_pRadioButtonPresent_Button2:SetCheckedTex( "DLG_Common_Texture20.tga", "Gift2_Button_Down" )


g_pRadioButtonPresent_Button2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10+9,95+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10+9,95+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(10+9,95+6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(10+100+9,95+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(7+9,95+6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button2:SetGroupID( 1 )

--]]





g_pRadioButtonPresent_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPresent_Button1 )

g_pRadioButtonPresent_Button1:SetFixOverByCheck( true )
g_pRadioButtonPresent_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonPresent_Button1:SetName( "Present_Button1" )

g_pRadioButtonPresent_Button1:SetNormalTex( "DLG_Common_Texture20.tga", "Gift1_Button_Normal" )


g_pRadioButtonPresent_Button1:SetOverTex( "DLG_Common_Texture20.tga", "Gift1_Button_Over" )


g_pRadioButtonPresent_Button1:SetCheckedTex( "DLG_Common_Texture20.tga", "Gift1_Button_Down" )


g_pRadioButtonPresent_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10+9,49+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(10+9,49+6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(10+100,49+50+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(7+9,49+6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPresent_Button1:SetGroupID( 1 )
g_pRadioButtonPresent_Button1:SetChecked( true )










--------------------텍스트---------------------------------



    g_pStaticNum= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticNum)
 	g_pStaticNum:SetName( "Page_Num" )

     g_pStaticNum:AddString
    {
 	 -- MSG    		 = " 1/1 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(344+9,437+6)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }


















-----------------선물목록---------------------------

g_pStaticGift_Box2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGift_Box2 )
g_pStaticGift_Box2:SetName( "Gift_Box" )




--------------밑판 하얀바닥-------------------
g_pPictureGift_Box1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPictureGift_Box1)

g_pPictureGift_Box1:SetTex( "DLG_Common_Texture20.tga", "Gift_Box"  )

g_pPictureGift_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+126+9,0+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureGift_Name= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPictureGift_Name)

g_pPictureGift_Name:SetTex( "DLG_Common_Texture20.tga", "Gift_Name"  )

g_pPictureGift_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+126+9,20+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGift_Man= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPictureGift_Man)

g_pPictureGift_Man:SetTex( "DLG_Common_Texture20.tga", "Gift_Man"  )

g_pPictureGift_Man:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+126+9,52+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------버튼----------------------
g_pButtonRed1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed1 )
g_pButtonRed1:SetName( "1Red1" )
g_pButtonRed1:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red1_Over" )

g_pButtonRed1:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(71+126+9,94+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(71+126+9,94+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(72+126+9,95+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

		





g_pButtonRed2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed2 )
g_pButtonRed2:SetName( "1Red2" )
g_pButtonRed2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red2_Over" )

g_pButtonRed2:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(119+126+9,94+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+126+9,94+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetDownPoint
{
           ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(120+126+9,95+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRed2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_ACCEPT0"] )





----------------텍스트-----------------------
 g_pStaticGift_Name= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticGift_Name)
 	g_pStaticGift_Name:SetName( "1Gift_Name" )

     g_pStaticGift_Name:AddString
    {
 	 -- MSG    		 = " 상황버섯3종세트 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+126+9,36+56+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



     g_pStaticId= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticId)
 	g_pStaticId:SetName( "1Id" )

     g_pStaticId:AddString
    {
 	 -- MSG    		 = " gorebab09 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+126+9,67+56+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }




















 --------------밑판 하얀바닥-------------------
g_pPicture2Gift_Box1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture2Gift_Box1)

g_pPicture2Gift_Box1:SetTex( "DLG_Common_Texture20.tga", "Gift_Box"  )

g_pPicture2Gift_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+126+9,0+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture2Gift_Name= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture2Gift_Name)

g_pPicture2Gift_Name:SetTex( "DLG_Common_Texture20.tga", "Gift_Name"  )

g_pPicture2Gift_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+126+9,20+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture2Gift_Man= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture2Gift_Man)

g_pPicture2Gift_Man:SetTex( "DLG_Common_Texture20.tga", "Gift_Man"  )

g_pPicture2Gift_Man:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+126+9,52+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------버튼----------------------
g_pButton2Red1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton2Red1 )
g_pButton2Red1:SetName( "2Red1" )
g_pButton2Red1:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButton2Red1:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red1_Over" )

g_pButton2Red1:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButton2Red1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(71+126+9,94+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton2Red1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(71+126+9,94+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton2Red1:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(72+126+9,95+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButton2Red2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton2Red2 )
g_pButton2Red2:SetName( "2Red2" )
g_pButton2Red2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButton2Red2:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red2_Over" )

g_pButton2Red2:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButton2Red2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(119+126+9,94+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton2Red2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+126+9,94+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton2Red2:SetDownPoint
{
           ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(120+126+9,95+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton2Red2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_ACCEPT1"] )





----------------텍스트-----------------------
 g_pStaticGift_Name= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticGift_Name)
 	g_pStaticGift_Name:SetName( "2Gift_Name" )

     g_pStaticGift_Name:AddString
    {
 	 -- MSG    		 = " 상황버섯3종세트 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+126+9,36+178+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



     g_pStaticId= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticId)
 	g_pStaticId:SetName( "2Id" )

     g_pStaticId:AddString
    {
 	 -- MSG    		 = " gorebab09 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+126+9,67+178+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }







--------------밑판 하얀바닥-------------------
g_pPicture3Gift_Box1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture3Gift_Box1)

g_pPicture3Gift_Box1:SetTex( "DLG_Common_Texture20.tga", "Gift_Box"  )

g_pPicture3Gift_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+126+9,0+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture3Gift_Name= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture3Gift_Name)

g_pPicture3Gift_Name:SetTex( "DLG_Common_Texture20.tga", "Gift_Name"  )

g_pPicture3Gift_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+126+9,20+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture3Gift_Man= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture3Gift_Man)

g_pPicture3Gift_Man:SetTex( "DLG_Common_Texture20.tga", "Gift_Man"  )

g_pPicture3Gift_Man:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+126+9,52+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------버튼----------------------
g_pButtonRed1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed1 )
g_pButtonRed1:SetName( "3Red1" )
g_pButtonRed1:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red1_Over" )

g_pButtonRed1:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(71+126+9,94+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(71+126+9,94+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(72+126+9,95+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtonRed2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed2 )
g_pButtonRed2:SetName( "3Red2" )
g_pButtonRed2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red2_Over" )

g_pButtonRed2:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(119+126+9,94+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+126+9,94+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetDownPoint
{
           ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(120+126+9,95+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_ACCEPT2"] )






----------------텍스트-----------------------
 g_pStaticGift_Name= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticGift_Name)
 	g_pStaticGift_Name:SetName( "3Gift_Name" )

     g_pStaticGift_Name:AddString
    {
 	 -- MSG    		 = " 상황버섯3종세트 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+126+9,36+300+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



     g_pStaticId= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticId)
 	g_pStaticId:SetName( "3Id" )

     g_pStaticId:AddString
    {
 	 -- MSG    		 = " gorebab09 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+126+9,67+300+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }














































--------------밑판 하얀바닥-------------------
g_pPicture4Gift_Box1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture4Gift_Box1)

g_pPicture4Gift_Box1:SetTex( "DLG_Common_Texture20.tga", "Gift_Box"  )

g_pPicture4Gift_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+364+9,0+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture4Gift_Name= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture4Gift_Name)

g_pPicture4Gift_Name:SetTex( "DLG_Common_Texture20.tga", "Gift_Name"  )

g_pPicture4Gift_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+364+9,20+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture4Gift_Man= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture4Gift_Man)

g_pPicture4Gift_Man:SetTex( "DLG_Common_Texture20.tga", "Gift_Man"  )

g_pPicture4Gift_Man:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+364+9,52+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------버튼----------------------
g_pButtonRed1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed1 )
g_pButtonRed1:SetName( "4Red1" )
g_pButtonRed1:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red1_Over" )

g_pButtonRed1:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(71+364+9,94+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(71+364+9,94+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(72+364+9,95+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonRed2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed2 )
g_pButtonRed2:SetName( "4Red2" )
g_pButtonRed2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red2_Over" )

g_pButtonRed2:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(119+364+9,94+56+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+364+9,94+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetDownPoint
{
           ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(120+364+9,95+56+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRed2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_ACCEPT3"] )





----------------텍스트-----------------------
 g_pStaticGift_Name= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticGift_Name)
 	g_pStaticGift_Name:SetName( "4Gift_Name" )

     g_pStaticGift_Name:AddString
    {
 	 -- MSG    		 = " 상황버섯3종세트 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+364+9,36+56+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



     g_pStaticId= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticId)
 	g_pStaticId:SetName( "4Id" )

     g_pStaticId:AddString
    {
 	 -- MSG    		 = " gorebab09 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+364+9,67+56+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }




















 --------------밑판 하얀바닥-------------------
g_pPicture5Gift_Box1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture5Gift_Box1)

g_pPicture5Gift_Box1:SetTex( "DLG_Common_Texture20.tga", "Gift_Box"  )

g_pPicture5Gift_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+364+9,0+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture5Gift_Name= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture5Gift_Name)

g_pPicture5Gift_Name:SetTex( "DLG_Common_Texture20.tga", "Gift_Name"  )

g_pPicture5Gift_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+364+9,20+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture5Gift_Man= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture5Gift_Man)

g_pPicture5Gift_Man:SetTex( "DLG_Common_Texture20.tga", "Gift_Man"  )

g_pPicture5Gift_Man:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+364+9,52+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------버튼----------------------
g_pButtonRed1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed1 )
g_pButtonRed1:SetName( "5Red1" )
g_pButtonRed1:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red1_Over" )

g_pButtonRed1:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(71+364+9,94+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(71+364+9,94+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(72+364+9,95+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtonRed2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed2 )
g_pButtonRed2:SetName( "5Red2" )
g_pButtonRed2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red2_Over" )

g_pButtonRed2:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(119+364+9,94+178+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+364+9,94+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetDownPoint
{
           ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(120+364+9,95+178+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_ACCEPT4"] )






----------------텍스트-----------------------
 g_pStaticGift_Name= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticGift_Name)
 	g_pStaticGift_Name:SetName( "5Gift_Name" )

     g_pStaticGift_Name:AddString
    {
 	 -- MSG    		 = " 상황버섯3종세트 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+364+9,36+178+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



     g_pStaticId= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticId)
 	g_pStaticId:SetName( "5Id" )

     g_pStaticId:AddString
    {
 	 -- MSG    		 = " gorebab09 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+364+9,67+178+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }







--------------밑판 하얀바닥-------------------
g_pPicture6Gift_Box1= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture6Gift_Box1)

g_pPicture6Gift_Box1:SetTex( "DLG_Common_Texture20.tga", "Gift_Box"  )

g_pPicture6Gift_Box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0+364+9,0+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture6Gift_Name= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture6Gift_Name)

g_pPicture6Gift_Name:SetTex( "DLG_Common_Texture20.tga", "Gift_Name"  )

g_pPicture6Gift_Name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+364+9,20+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture6Gift_Man= g_pUIDialog:CreatePicture()
g_pStaticGift_Box2:AddPicture( g_pPicture6Gift_Man)

g_pPicture6Gift_Man:SetTex( "DLG_Common_Texture20.tga", "Gift_Man"  )

g_pPicture6Gift_Man:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+364+9,52+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------------버튼----------------------
g_pButtonRed1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed1 )
g_pButtonRed1:SetName( "6Red1" )
g_pButtonRed1:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red1_Over" )

g_pButtonRed1:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red1_Normal" )

g_pButtonRed1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(71+364+9,94+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(71+364+9,94+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed1:SetDownPoint
{
         ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(72+364+9,95+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonRed2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRed2 )
g_pButtonRed2:SetName( "6Red2" )
g_pButtonRed2:SetNormalTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetOverTex( "DLG_Common_Texture20.tga", "Button_Red2_Over" )

g_pButtonRed2:SetDownTex( "DLG_Common_Texture20.tga", "Button_Red2_Normal" )

g_pButtonRed2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(119+364+9,94+300+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(119+364+9,94+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRed2:SetDownPoint
{
           ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(120+364+9,95+300+6)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRed2:SetCustomMsgMouseUp( COUPON_BOX_CUSTOM_UI_MSG["CBCUM_ACCEPT5"] )





----------------텍스트-----------------------
 g_pStaticGift_Name= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticGift_Name)
 	g_pStaticGift_Name:SetName( "6Gift_Name" )

     g_pStaticGift_Name:AddString
    {
 	 -- MSG    		 = " 상황버섯3종세트 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+364+9,36+300+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }



     g_pStaticId= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticId)
 	g_pStaticId:SetName( "6Id" )

     g_pStaticId:AddString
    {
 	 -- MSG    		 = " gorebab09 ",
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(99+364+9,67+300+6)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }












----------------------------------------------------------------------------------------------------
-- 슬롯 관련
----------------------------------------------------------------------------------------------------

slotID = 0
tempX = 0
tempY = 0


posx = 145 + 206 - 6 + 9
posy = 84 + 143 - 6 + 6

gapx = 238
gapy = 123




for j = 0, 1 do

	for i = 0, 2 do
		
		pItemSlot = g_pCouponBox:CreateItemSlot()
		g_pCouponBox:AddSlot( pItemSlot )
		
		tempX =  posx + j * gapx
		tempY =  posy + i * gapy
		
		pItemSlot:SetSlotData
		{
			ENABLE		= TRUE,
			SHOW		= TRUE,
			
			SLOT_TYPE	= SLOT_TYPE["ST_SHOP_BUY"],
			
			SORT_TYPE	= 0,
			SLOT_ID		= slotID,
			
			FASHION		= FALSE,
			EQUIP_POS	= EQIP_POSITION["EP_NONE"],
			
			"POS		= D3DXVECTOR2( tempX ,tempY )",
			"SIZE		= D3DXVECTOR2( 52, 52 )",
		}

		slotID = slotID + 1

	end
	
end
