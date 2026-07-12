-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Item_Quantity_Window" )
g_pUIDialog:SetPos( 320,250 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CANCEL"] )

-------큰 바탕 윈도우
g_pStaticItem_Num_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticItem_Num_Window )
g_pStaticItem_Num_Window:SetName( "StaticTrade_Window" )


g_pPictureCashshop_BuyWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_BG1 )

g_pPictureCashshop_BuyWindow_BG1:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_1" )

g_pPictureCashshop_BuyWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG2 = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_BG2 )

g_pPictureCashshop_BuyWindow_BG2:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_2" )

g_pPictureCashshop_BuyWindow_BG2:SetPoint
{
	ADD_SIZE_Y = 100,
	"LEFT_TOP		= D3DXVECTOR2(0,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCashshop_BuyWindow_BG3 = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_BG3 )

g_pPictureCashshop_BuyWindow_BG3:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back1_3" )

g_pPictureCashshop_BuyWindow_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------타이틀
g_pPictureCashshop_BuyWindow_Title = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_Title )

g_pPictureCashshop_BuyWindow_Title:SetTex( "DLG_Common_New_Texture28.TGA", "Title1" )
;
g_pPictureCashshop_BuyWindow_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(147,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







---------작은 바탕 윈도우
g_pPictureCashshop_BuyWindow_BG4 = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_BG4 )

g_pPictureCashshop_BuyWindow_BG4:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_1" )

g_pPictureCashshop_BuyWindow_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,51-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG5 = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_BG5 )

g_pPictureCashshop_BuyWindow_BG5:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_2" )

g_pPictureCashshop_BuyWindow_BG5:SetPoint
{
	ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(17,63-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCashshop_BuyWindow_BG6 = g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureCashshop_BuyWindow_BG6 )

g_pPictureCashshop_BuyWindow_BG6:SetTex( "DLG_Common_New_Texture52.TGA", "cashpopup_back2_3" )

g_pPictureCashshop_BuyWindow_BG6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,128-5-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











---------버튼

g_pButtonOk = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOk )
g_pButtonOk:SetName( "Check" )
g_pButtonOk:SetNormalTex( "DLG_Common_New_Texture53.tga", "Ok_Button_normal" )

g_pButtonOk:SetOverTex( "DLG_Common_New_Texture53.tga", "Ok_Button_over" )

g_pButtonOk:SetDownTex( "DLG_Common_New_Texture53.tga", "Ok_Button_over" )

g_pButtonOk:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109-53+3,479-335-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOk:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109-53+3,479-335-25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOk:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109-53+3,480-335-25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOk:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_OK"] )



g_pButtonCancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCancel )
g_pButtonCancel:SetName( "Cancel" )
g_pButtonCancel:SetNormalTex( "DLG_Common_New_Texture53.tga", "cancel_normal" )

g_pButtonCancel:SetOverTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetDownTex( "DLG_Common_New_Texture53.tga", "cancel_over" )

g_pButtonCancel:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(27+109+56+3,479-335-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27+109+56+3,479-335-25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(28+109+56+3,480-335-25)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCancel:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CANCEL"] )






--------화살표버튼

---1
g_pButtonTriangle1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle1 )
g_pButtonTriangle1:SetName( "ButtonTriangle1" )
g_pButtonTriangle1:SetNormalTex( "DLG_Common_New_Texture16.tga", "Plus_Arrow" )

g_pButtonTriangle1:SetOverTex( "DLG_Common_New_Texture16.tga", "Plus_Arrow" )

g_pButtonTriangle1:SetDownTex( "DLG_Common_New_Texture16.tga", "Plus_Arrow" )

g_pButtonTriangle1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(268+15,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268+15,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(268+15+1,58+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle1:AddDummyInt( 10 )
g_pButtonTriangle1:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CHANGE"] )


---2
g_pButtonTriangle2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle2 )
g_pButtonTriangle2:SetName( "ButtonTriangle1" )
g_pButtonTriangle2:SetNormalTex( "DLG_Common_New_Texture16.tga", "Minus_Arrow" )

g_pButtonTriangle2:SetOverTex( "DLG_Common_New_Texture16.tga", "Minus_Arrow" )

g_pButtonTriangle2:SetDownTex( "DLG_Common_New_Texture16.tga", "Minus_Arrow" )

g_pButtonTriangle2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(268+15,58+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268+15,58+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(268+15+1,58+32+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle2:AddDummyInt( -10 )
g_pButtonTriangle2:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CHANGE"] )



---3
g_pButtonTriangle3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle3 )
g_pButtonTriangle3:SetName( "ButtonTriangle3" )
g_pButtonTriangle3:SetNormalTex( "DLG_Common_New_Texture16.tga", "Plus_Arrow" )

g_pButtonTriangle3:SetOverTex( "DLG_Common_New_Texture16.tga", "Plus_Arrow" )

g_pButtonTriangle3:SetDownTex( "DLG_Common_New_Texture16.tga", "Plus_Arrow" )

g_pButtonTriangle3:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(268+40,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268+40,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(268+40+1,58+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle3:AddDummyInt( 1 )
g_pButtonTriangle3:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CHANGE"] )




---4
g_pButtonTriangle4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTriangle4 )
g_pButtonTriangle4:SetName( "ButtonTriangle4" )
g_pButtonTriangle4:SetNormalTex( "DLG_Common_New_Texture16.tga", "Minus_Arrow" )

g_pButtonTriangle4:SetOverTex( "DLG_Common_New_Texture16.tga", "Minus_Arrow" )

g_pButtonTriangle4:SetDownTex( "DLG_Common_New_Texture16.tga", "Minus_Arrow" )

g_pButtonTriangle4:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(268+40,58+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268+40,58+32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle4:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(268+40+1,58+32+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTriangle4:AddDummyInt( -1 )
g_pButtonTriangle4:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CHANGE"] )



--EXIT버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Exit" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_NORMAL" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_OVER" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture28.tga", "ALCHEMY_X_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(341+2+1,52-38-3+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(341+2+1,52-38-3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(341+2+1+1,52-38-3+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( POSTBOX_SEND_UI_MSG["PBSUM_QUANTITY_CANCEL"] )




------------------회색박스
--------------1



g_pPictureItem_NumBG1= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumBG1)

g_pPictureItem_NumBG1:SetTex( "DLG_Common_New_Texture27.tga", "Commission_Box1"  )

g_pPictureItem_NumBG1:SetPoint
{

ADD_SIZE_Y = -13,
	"LEFT_TOP		= D3DXVECTOR2(397-360,201-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_NumBG2= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumBG2)

g_pPictureItem_NumBG2:SetTex( "DLG_Common_New_Texture27.tga", "Commission_Box2"  )

g_pPictureItem_NumBG2:SetPoint
{
ADD_SIZE_X = 147,
ADD_SIZE_Y = -13,
	"LEFT_TOP		= D3DXVECTOR2(397-352,201-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPictureItem_NumBG3= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumBG3)

g_pPictureItem_NumBG3:SetTex( "DLG_Common_New_Texture27.tga", "Commission_Box3"  )

g_pPictureItem_NumBG3:SetPoint
{

ADD_SIZE_Y = -13,
	"LEFT_TOP		= D3DXVECTOR2(397-204,201-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}





--------------2

g_pPictureItem_NumBG1= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumBG1)

g_pPictureItem_NumBG1:SetTex( "DLG_Common_New_Texture27.tga", "Commission_Box1"  )

g_pPictureItem_NumBG1:SetPoint
{

ADD_SIZE_Y = -13,
	"LEFT_TOP		= D3DXVECTOR2(397-184+15,201-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_NumBG2= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumBG2)

g_pPictureItem_NumBG2:SetTex( "DLG_Common_New_Texture27.tga", "Commission_Box2"  )

g_pPictureItem_NumBG2:SetPoint
{
ADD_SIZE_X = 24,
ADD_SIZE_Y = -13,
	"LEFT_TOP		= D3DXVECTOR2(397-176+15,201-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPictureItem_NumBG3= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumBG3)

g_pPictureItem_NumBG3:SetTex( "DLG_Common_New_Texture27.tga", "Commission_Box3"  )

g_pPictureItem_NumBG3:SetPoint
{

ADD_SIZE_Y = -13,
	"LEFT_TOP		= D3DXVECTOR2(397-151+15,201-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




----곱하기

g_pPictureItem_NumX_Black2= g_pUIDialog:CreatePicture()
g_pStaticItem_Num_Window:AddPicture( g_pPictureItem_NumX_Black2)

g_pPictureItem_NumX_Black2:SetTex( "DLG_Common_Texture07.tga", "X_Black" )

g_pPictureItem_NumX_Black2:SetPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,


	"LEFT_TOP		= D3DXVECTOR2(760-385-185+17,205-132)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------내 거래 물품 텍스트----------- 


	 g_pStaticItem_NumBox_Give_Num2 = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticItem_NumBox_Give_Num2 )
 	g_pStaticItem_NumBox_Give_Num2:SetName( "Item_Num" )

     g_pStaticItem_NumBox_Give_Num2:AddString
    {
 	 -- MSG    		 = "1",
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(792-385-180+21,209-135)",
 	 "COLOR          = D3DXCOLOR(0.1,0.1,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 


    g_pStaticItem_NumBox_Goods = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticItem_NumBox_Goods )
 	g_pStaticItem_NumBox_Goods:SetName( "Item_Name" )

     g_pStaticItem_NumBox_Goods:AddString
    {
 	 -- MSG    		 = "엘리트 브로드 소드",
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(623-385-130+11,209-135)",
 	 "COLOR          = D3DXCOLOR(0.1,0.1,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

	   g_pStaticItem_Num1 = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticItem_Num1 )
 	g_pStaticItem_Num1:SetName( "Item_NumBox_Goods" )

     g_pStaticItem_Num1:AddString
    {
 	 -- MSG    		 = "10",
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(281,209-135)",
 	 "COLOR          = D3DXCOLOR(0.1,0.1,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }

	    g_pStaticItem_Num1 = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticItem_Num1 )
 	g_pStaticItem_Num1:SetName( "Item_NumBox_Goods" )

     g_pStaticItem_Num1:AddString
    {
 	 -- MSG    		 = "1",
     FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(311,209-135)",
 	 "COLOR          = D3DXCOLOR(0.1,0.1,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
