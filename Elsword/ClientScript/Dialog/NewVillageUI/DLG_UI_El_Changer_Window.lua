-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_EL_CHANGER_EXIT"] )

g_pUIDialog:SetPos( 348,272 )

g_pStatic_Identify_Window_Bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Identify_Window_Bg )
g_pStatic_Identify_Window_Bg:SetName( "Shop_Trade_Sale_Window_Bg" )



--------------개인거래 설정창 밑판-------------------
g_pPictureShop_Sale_WindowBg1= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Window_Bg:AddPicture( g_pPictureShop_Sale_WindowBg1)

g_pPictureShop_Sale_WindowBg1:SetTex( "DLG_UI_Common_Texture08.tga", "TRADE_SHOP_BG1"  )

g_pPictureShop_Sale_WindowBg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Sale_WindowBg2= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Window_Bg:AddPicture( g_pPictureShop_Sale_WindowBg2)

g_pPictureShop_Sale_WindowBg2:SetTex( "DLG_UI_Common_Texture08.tga", "TRADE_SHOP_BG2" )

g_pPictureShop_Sale_WindowBg2:SetPoint
{
		ADD_SIZE_Y=198-10 ,
	"LEFT_TOP		= D3DXVECTOR2(4,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureShop_Sale_WindowBg3= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Window_Bg:AddPicture( g_pPictureShop_Sale_WindowBg3)

g_pPictureShop_Sale_WindowBg3:SetTex( "DLG_UI_Common_Texture08.tga", "TRADE_SHOP_BG3" )

g_pPictureShop_Sale_WindowBg3:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(4,213-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
g_pPictureShop_Sale_Window_Line= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Window_Bg:AddPicture( g_pPictureShop_Sale_Window_Line)

g_pPictureShop_Sale_Window_Line:SetTex( "DLG_Common_New_Texture26.tga", "Trade_Shop_Sale_Line"  )

g_pPictureShop_Sale_Window_Line:SetPoint
{
		ADD_SIZE_X=292,
	"LEFT_TOP		= D3DXVECTOR2(114-97,213)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--]]



---------------확인버튼


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON05.tga", "ok_button_NORMAL" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(78,175-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75,172-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(75+1,172+1-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncheck:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_OK"] )








------------취소버튼




g_pButtonCencle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCencle )
g_pButtonCencle:SetName( "MsgBoxOkAndCancelCancelButton" )


g_pButtonCencle:SetNormalTex( "DLG_UI_BUTTON02.tga", "cancle_normal" )

g_pButtonCencle:SetOverTex( "DLG_UI_BUTTON02.tga", "cancle_over" )

g_pButtonCencle:SetDownTex( "DLG_UI_BUTTON02.tga", "cancle_over" )

g_pButtonCencle:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(168,175-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165-1,172-10-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCencle:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(165+1-1,172+1-10-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCencle:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_EXIT"] )








-------------------exit버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(290,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(286+1,10+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_EXIT"] )







----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------




g_pStaticIdentify_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticIdentify_Window )
g_pStaticIdentify_Window:SetName( "Identify_Window" )



--(아이템 큰 회색박스)--
g_pPictureIdentify_Gray_Window1= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_Gray_Window1)

g_pPictureIdentify_Gray_Window1:SetTex( "DLG_UI_Common_Texture08.tga", "Trade_Item_Gray_Box1"  )

g_pPictureIdentify_Gray_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,54-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureIdentify_Gray_Window2= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_Gray_Window2)

g_pPictureIdentify_Gray_Window2:SetTex( "DLG_UI_Common_Texture08.tga", "Trade_Item_Gray_Box2"  )

g_pPictureIdentify_Gray_Window2:SetPoint
{
		ADD_SIZE_Y = 92,
	"LEFT_TOP		= D3DXVECTOR2(18,63-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureIdentify_Gray_Window3= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_Gray_Window3)

g_pPictureIdentify_Gray_Window3:SetTex( "DLG_UI_Common_Texture08.tga", "Trade_Item_Gray_Box3"  )

g_pPictureIdentify_Gray_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,156-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---(작은회색박스)-------- 
g_pPictureIdentify_White_SWindow1= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_White_SWindow1)

g_pPictureIdentify_White_SWindow1:SetTex( "DLG_UI_Common_Texture08.tga", "Trade_Item_White_Box1"  )

g_pPictureIdentify_White_SWindow1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,58-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureIdentify_White_SWindow2= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_White_SWindow2)

g_pPictureIdentify_White_SWindow2:SetTex( "DLG_UI_Common_Texture08.tga", "Trade_Item_White_Box2"  )

g_pPictureIdentify_White_SWindow2:SetPoint
{
		 ADD_SIZE_Y=88,
	"LEFT_TOP		= D3DXVECTOR2(22,65-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureIdentify_White_SWindow3= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_White_SWindow3)

g_pPictureIdentify_White_SWindow3:SetTex( "DLG_UI_Common_Texture08.tga", "Trade_Item_White_Box3"  )

g_pPictureIdentify_White_SWindow3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,154-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------------------------
----------------엘 판별기--------------
-------------------------------------------

g_pStatic_Identify_Tool = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Identify_Tool )
g_pStatic_Identify_Tool:SetName( "Identify_Tool" )
g_pStatic_Identify_Tool:SetShow( false )


-----감정 수량 결정 타이틀
g_pPictureIdentify_Title= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Tool:AddPicture( g_pPictureIdentify_Title )

g_pPictureIdentify_Title:SetTex( "DLG_UI_Title01.tga", "distinction"  )

g_pPictureIdentify_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureIdentify_Title= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Tool:AddPicture( g_pPictureIdentify_Title )

g_pPictureIdentify_Title:SetTex( "DLG_UI_Title01.tga", "num"  )

g_pPictureIdentify_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(62+40,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureIdentify_Title= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Tool:AddPicture( g_pPictureIdentify_Title )

g_pPictureIdentify_Title:SetTex( "DLG_UI_Title01.tga", "decision"  )

g_pPictureIdentify_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(108+65,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


---------엘 속성 판별기--------- 
	
g_pPictureIdentify_Tool= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Tool:AddPicture( g_pPictureIdentify_Tool)

g_pPictureIdentify_Tool:SetTex( "DLG_Common_New_Texture46.tga", "Identify_Tool"  )

g_pPictureIdentify_Tool:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,120-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	
	
	 g_pStatic_Identify_Tool:AddString
 	{
 	 MSG    		 = STR_ID_1271,
 	 FONT_INDEX      = XUF_DODUM_12_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
     SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(83-7,130-5)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }



-------------------------------------------
----------------엘 환원기--------------
-------------------------------------------


g_pStatic_Identify_Tool = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Identify_Tool )
g_pStatic_Identify_Tool:SetName( "Identify_Tool2" )
g_pStatic_Identify_Tool:SetShow( false )

-----감정 수량 결정 타이틀
g_pPictureIdentify_Title= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Tool:AddPicture( g_pPictureIdentify_Title )

g_pPictureIdentify_Title:SetTex( "DLG_Common_New_Texture46.tga", "Return_Title"  )

g_pPictureIdentify_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,16-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------엘 속성 환원기--------- 
	
g_pPictureIdentify_Tool= g_pUIDialog:CreatePicture()
g_pStatic_Identify_Tool:AddPicture( g_pPictureIdentify_Tool)

g_pPictureIdentify_Tool:SetTex( "DLG_Common_New_Texture46.tga", "Return_Tool"  )

g_pPictureIdentify_Tool:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,127-13-12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	 g_pStatic_Identify_Tool:AddString
 	{
 	 MSG    		 = STR_ID_1272,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
     SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(83,136-13-11)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }





-----엘의 조각 (랜덤)BG------------- 

g_pPictureIdentify_SWindow_MiniBox1= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_SWindow_MiniBox1)

g_pPictureIdentify_SWindow_MiniBox1:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_left"  )

g_pPictureIdentify_SWindow_MiniBox1:SetPoint
{
		  
		  
		
	"LEFT_TOP		= D3DXVECTOR2(112-10,88-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_Identify_SWindow_MiniBox1_2= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_Identify_SWindow_MiniBox1_2)

g_Identify_SWindow_MiniBox1_2:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_middle"  )

g_Identify_SWindow_MiniBox1_2:SetPoint
{
		  
		    ADD_SIZE_X=143+22 ,
		
	"LEFT_TOP		= D3DXVECTOR2(117-10,88-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_Identify_SWindow_MiniBox1_3= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_Identify_SWindow_MiniBox1_3)

g_Identify_SWindow_MiniBox1_3:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_right"  )

g_Identify_SWindow_MiniBox1_3:SetPoint
{
		  
		    
		
	"LEFT_TOP		= D3DXVECTOR2(261+12,88-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------






-----엘 속성 판별기BG------------- 
g_pPictureIdentify_SWindow_MiniBox2_1= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureIdentify_SWindow_MiniBox2_1)

g_pPictureIdentify_SWindow_MiniBox2_1:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_left"  )

g_pPictureIdentify_SWindow_MiniBox2_1:SetPoint
{
		  
		  
		
	"LEFT_TOP		= D3DXVECTOR2(197-23,125-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_Identify_SWindow_MiniBox2_2= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_Identify_SWindow_MiniBox2_2)

g_Identify_SWindow_MiniBox2_2:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_middle"  )

g_Identify_SWindow_MiniBox2_2:SetPoint
{
		  
		    ADD_SIZE_X=90+23 ,
		
	"LEFT_TOP		= D3DXVECTOR2(202-23,125-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_Identify_SWindow_MiniBox2_3= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_Identify_SWindow_MiniBox2_3)

g_Identify_SWindow_MiniBox2_3:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_right"  )

g_Identify_SWindow_MiniBox2_3:SetPoint
{
		  
		    
	
	"LEFT_TOP		= D3DXVECTOR2(293,125-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------


----------아이템 슬롯

g_pStatic_Item_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Item_Slot )
g_pStatic_Item_Slot:SetName( "ItemImage" )

g_pPictureIdentify_Window_Item_Slot= g_pUIDialog:CreatePicture()
g_pStatic_Item_Slot:AddPicture( g_pPictureIdentify_Window_Item_Slot)

g_pPictureIdentify_Window_Item_Slot:SetTex( "DLG_UI_Common_Texture02.tga", "Slot"  )

g_pPictureIdentify_Window_Item_Slot:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(29,64-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




   
	 ------------------ 
	 g_pStaticIdentify_Window_El = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticIdentify_Window_El )
 	g_pStaticIdentify_Window_El:SetName( "Identify_Window_Price" )

	 g_pStaticIdentify_Window_El:AddString
 	{
 	 MSG    		 = STR_ID_1273,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(94,69-7)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

--[[
	 ---------X---------
	 g_pStaticIdentify_Window:AddString
 	{
 	 MSG    		 = STR_ID_2604,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
     SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(118-10,92-7)",
 	 "COLOR          = D3DXCOLOR(0.3,0.3,0.3,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	---------숫자--------- 
	 g_pStaticIdentify_Window_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticIdentify_Window_Num )
 	g_pStaticIdentify_Window_Num:SetName( "Identify_Window_Num" )

	 g_pStaticIdentify_Window_Num:AddString
 	{
 	 -- MSG    		 = "9999",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
 	 "POS            = D3DXVECTOR2(230+12,92-7)",
 	 "COLOR          = D3DXCOLOR(0.3,0.3,0.3,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	---------개--------- 
	 g_pStaticIdentify_Window:AddString
 	{
 	 MSG    		 = STR_ID_24,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
     SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(246+12,92-7)",
 	 "COLOR          = D3DXCOLOR(0.3,0.3,0.3,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
--]]	 

	 
	 
	 
	  
	 
	 	 ---------X---------
	 g_pStaticIdentify_Window:AddString
 	{
 	 MSG    		 = STR_ID_2604,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
     SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(200-19,129-5)",
 	 "COLOR          = D3DXCOLOR(0.3,0.3,0.3,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 

 g_pStaticIdentify_Window_Stone_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl(  g_pStaticIdentify_Window_Stone_Num )
 	 g_pStaticIdentify_Window_Stone_Num:SetName( "Identify_Window_Num2" )

      g_pStaticIdentify_Window_Stone_Num:AddString
 	{
 	 MSG    		 = STR_ID_1274,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
     SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
 	 "POS            = D3DXVECTOR2(279,129-5)",
 	 "COLOR          = D3DXCOLOR(0.3,0.3,0.3,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }



-----------------------------     -      +    커서      ---------------------


g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "minus" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )

g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(94-10,88-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(93-10,87-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(93+1-10,87+1-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_NUM_MINUS"] )




g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "plus" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )

g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(269+12,88-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268+12,88-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(268+1+12,87+1+1-7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_EL_CHANGER_NUM_PLUS"] )



---------BAR


--[[
g_pPictureBar1= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureBar1)

g_pPictureBar1:SetTex( "DLG_UI_Common_Texture01.tga", "bar2"  )

g_pPictureBar1:SetPoint
{
    ADD_SIZE_Y = 50,
	"LEFT_TOP		= D3DXVECTOR2(83,63-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPictureBar2= g_pUIDialog:CreatePicture()
g_pStaticIdentify_Window:AddPicture( g_pPictureBar2)

g_pPictureBar2:SetTex( "DLG_UI_Common_Texture01.tga", "bar1"  )

g_pPictureBar2:SetPoint
{
    ADD_SIZE_X = 272,
	"LEFT_TOP		= D3DXVECTOR2(27,116-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pIME_Identify_Window = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Identify_Window )
g_pIME_Identify_Window:SetName( "IME_Identify_Window" )
g_pIME_Identify_Window:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(132-10,92-7)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(247+12,107-7)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Identify_Window:SetFont( XF_DODUM_13_SEMIBOLD )
g_pIME_Identify_Window:SetTextColor( 0.3, 0.3, 0.3, 1.0 )
g_pIME_Identify_Window:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Identify_Window:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Identify_Window:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Identify_Window:SetByteLimit(13)
g_pIME_Identify_Window:SetOnlyNumMode( true )
g_pIME_Identify_Window:SetCustomMsgChange( UI_INVENTORY_MSG["UIM_EL_CHANGER_NUM_UPDATE"] )
g_pIME_Identify_Window:SetCustomMsgEnter( UI_INVENTORY_MSG["UIM_EL_CHANGER_OK"] )
	 
 
