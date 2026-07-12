-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticChange = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChange )
g_pStaticChange:SetName( "g_pStaticChange" )

g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_EXIT"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 502, 456, 0 ) ) -- Size

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_X= 51+51,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_X= 51+51,
    ADD_SIZE_Y = 402,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPicture_BG1:SetPoint
{
    ADD_SIZE_X= 51+51,    
	"LEFT_TOP		= D3DXVECTOR2(0,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---BG2

g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPicture_BG2:SetPoint
{
     ADD_SIZE_X= 51+51,   
	"LEFT_TOP		= D3DXVECTOR2(14,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPicture_BG2:SetPoint
{
    ADD_SIZE_X= 51+51,    
	ADD_SIZE_Y = 304 ,
	"LEFT_TOP		= D3DXVECTOR2(14,87)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicture_BG2 )
 
g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPicture_BG2:SetPoint
{
    ADD_SIZE_X= 51+51,   
	"LEFT_TOP		= D3DXVECTOR2(14,393)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




	
---------BAR

g_pPicture_Bar = g_pUIDialog:CreatePicture() 
g_pStaticChange:AddPicture( g_pPicture_Bar )

g_pPicture_Bar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPicture_Bar:SetPoint
{
   ADD_SIZE_X = 481+51,
	"LEFT_TOP		= D3DXVECTOR2(9,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}




---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(411+51+51,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(407+51+51,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(407+1+51+51,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_EXIT"] )



---TITLE

g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "g_pStaticText" )


g_pPictureText_title = g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_title )

g_pPictureText_title:SetTex( "DLG_UI_Title02_B.tga", "CHANGE" )

g_pPictureText_title:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(15,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 


--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrowL" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(886-544+51+51,603-194)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(886-544+51+51,602-194)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(886+1-544+51+51,602-194+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_PUSH_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrowR" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(965-544+51+51,603-194)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(964-544+51+51,602-194)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(964-544+1+51+51,602-194+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_PUSH_NEXT_PAGE"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(904-544+51+51,601-194)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Page_Num" )

g_pStaticnumber:AddString
{
	--MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(932-544+51+51,606-194-1)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




----타이틀
	g_pStaticChange_name = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticChange_name )
	g_pStaticChange_name:SetName( "helpString1" )

	g_pStaticChange_name:AddString
	{
		MSG 			= "교환 가능 아이템 리스트",
		FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(18,54)",
		"COLOR			= D3DXCOLOR(0.0,0.6,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


---도움말
g_pPictureNotice= g_pUIDialog:CreatePicture()
g_pStaticChange:AddPicture( g_pPictureNotice)

g_pPictureNotice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureNotice:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(120+10,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticChange_PVP_Win= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChange_PVP_Win )
g_pStaticChange_PVP_Win:SetName( "helpString2" )

g_pStaticChange_PVP_Win:AddString
{
	MSG 			= "교환 버튼을 누르시면 아이템이 교환됩니다.",
		 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(139+10,21)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",

}

slot_set_start_pos_x 	= 15
slot_set_start_pos_y 	= 78
slot_set_y_gap			= 64
---------------------------------------------------------------------------------------------
---- 첫번째 슬롯  세트
---------------------------------------------------------------------------------------------

----- 0
g_pStaticFirstSlotSet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFirstSlotSet )
g_pStaticFirstSlotSet:SetName( "staticSlotSet1" )

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 1
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X = 130,
	"LEFT_TOP		= D3DXVECTOR2( 10 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 2
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 3
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 4
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
ADD_SIZE_X = 302+51,
	"LEFT_TOP		= D3DXVECTOR2(158 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 5
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148+251+12+51+51 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 6
g_pPictureText_BG = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureText_BG )
g_pPictureText_BG:SetTex( "DLG_UI_Common_Texture10.TGA", "text_bg" )
g_pPictureText_BG:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(62 + slot_set_start_pos_x, 37 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.3)",
	CHANGE_TIME			= 0.0,
}

----아이템 종류
g_pStaticFirstSlotSet:AddString
{
MSG 			= "ALL",
FONT_INDEX      = XUF_DODUM_15_BOLD,
SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
"POS 			= D3DXVECTOR2(103 + slot_set_start_pos_x, 40 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
"COLOR			= D3DXCOLOR(0.0,0.5,1.0,1.0)",
}


----------교환버튼
g_pButtonChange_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChange_Item)
g_pButtonChange_Item:SetName( "ButtonChange_Item1" )
g_pButtonChange_Item:SetNormalTex( "DLG_UI_Button11.TGA", "change_Normal")

g_pButtonChange_Item:SetOverTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDownTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDisableTex( "DLG_UI_Button11.tga", "change_Normal" )

g_pButtonChange_Item:SetNormalPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(65 + slot_set_start_pos_x, 12 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetOverPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(63 + slot_set_start_pos_x, 11 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonChange_Item:SetDownPoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -2-3,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
g_pButtonChange_Item:SetDisablePoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -2-3,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",

	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.5)",
	CHANGE_TIME		= 0.0,
}	
g_pButtonChange_Item:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_FIRST_EXCHANGE_BUTTON"] )
	
------------------내 아이템 슬롯

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(10 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


------------------교환 아이템 슬롯
g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

--아라용 슬롯 추가--
g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFirstSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 0 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

---------------------------------------------------------------------------------------------
-- 두번째 슬롯  세트
---------------------------------------------------------------------------------------------

----- 0
g_pStaticSecondSlotSet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSecondSlotSet )
g_pStaticSecondSlotSet:SetName( "staticSlotSet2" )

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 1
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X = 130,
	"LEFT_TOP		= D3DXVECTOR2( 10 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 2
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 3
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 4
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
ADD_SIZE_X = 302+51,
	"LEFT_TOP		= D3DXVECTOR2(158 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 5
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148+251+12+51+51 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 6
g_pPictureText_BG = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureText_BG )
g_pPictureText_BG:SetTex( "DLG_UI_Common_Texture10.TGA", "text_bg" )
g_pPictureText_BG:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(62 + slot_set_start_pos_x, 37 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.3)",
	CHANGE_TIME			= 0.0,
}


----아이템 종류
g_pStaticSecondSlotSet:AddString
{
MSG 			= "ALL",
FONT_INDEX      = XUF_DODUM_15_BOLD,
SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
"POS 			= D3DXVECTOR2(103 + slot_set_start_pos_x, 40 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
"COLOR			= D3DXCOLOR(0.0,0.5,1.0,1.0)",
}


----------교환버튼
g_pButtonChange_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChange_Item)
g_pButtonChange_Item:SetName( "ButtonChange_Item2" )
g_pButtonChange_Item:SetNormalTex( "DLG_UI_Button11.TGA", "change_Normal")

g_pButtonChange_Item:SetOverTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDownTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDisableTex( "DLG_UI_Button11.tga", "change_Normal" )

g_pButtonChange_Item:SetNormalPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(65 + slot_set_start_pos_x, 12 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetOverPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(63 + slot_set_start_pos_x, 11 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonChange_Item:SetDownPoint
{
    ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetDisablePoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",

	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.5)",
	CHANGE_TIME		= 0.0,
}		
g_pButtonChange_Item:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_SECOND_EXCHANGE_BUTTON"] )
	
------------------내 아이템 슬롯

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(10 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


------------------교환 아이템 슬롯
g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+ slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticSecondSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+51+ slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 1 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

---------------------------------------------------------------------------------------------
-- 세번째 슬롯  세트
---------------------------------------------------------------------------------------------

----- 0
g_pStaticThirdSlotSet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticThirdSlotSet )
g_pStaticThirdSlotSet:SetName( "staticSlotSet3" )

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 1
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X = 130,
	"LEFT_TOP		= D3DXVECTOR2( 10 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 2
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 3
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 4
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
ADD_SIZE_X = 302+51,
	"LEFT_TOP		= D3DXVECTOR2(158 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 5
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148+251+12+51+51 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 6
g_pPictureText_BG = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureText_BG )
g_pPictureText_BG:SetTex( "DLG_UI_Common_Texture10.TGA", "text_bg" )
g_pPictureText_BG:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(62 + slot_set_start_pos_x, 37 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.3)",
	CHANGE_TIME			= 0.0,
}

----아이템 종류
g_pStaticThirdSlotSet:AddString
{
MSG 			= "ALL",
FONT_INDEX      = XUF_DODUM_15_BOLD,
SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
"POS 			= D3DXVECTOR2(103 + slot_set_start_pos_x, 40 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
"COLOR			= D3DXCOLOR(0.0,0.5,1.0,1.0)",
}


----------교환버튼
g_pButtonChange_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChange_Item)
g_pButtonChange_Item:SetName( "ButtonChange_Item3" )
g_pButtonChange_Item:SetNormalTex( "DLG_UI_Button11.TGA", "change_Normal")

g_pButtonChange_Item:SetOverTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDownTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDisableTex( "DLG_UI_Button11.tga", "change_Normal" )

g_pButtonChange_Item:SetNormalPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(65 + slot_set_start_pos_x, 12 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetOverPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(63 + slot_set_start_pos_x, 11 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonChange_Item:SetDownPoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetDisablePoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",

	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.5)",
	CHANGE_TIME		= 0.0,
}	
g_pButtonChange_Item:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_THIRD_EXCHANGE_BUTTON"] )	

------------------내 아이템 슬롯

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(10 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


------------------교환 아이템 슬롯
g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+ slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticThirdSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+51+ slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 2 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}
---------------------------------------------------------------------------------------------
-- 네번째 슬롯  세트
---------------------------------------------------------------------------------------------

----- 0
g_pStaticFourthSlotSet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFourthSlotSet )
g_pStaticFourthSlotSet:SetName( "staticSlotSet4" )

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 1
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X = 130,
	"LEFT_TOP		= D3DXVECTOR2( 10 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 2
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 3
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 4
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
ADD_SIZE_X = 302+51,
	"LEFT_TOP		= D3DXVECTOR2(158 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 5
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148+251+12+51+51+ slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 6
g_pPictureText_BG = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureText_BG )
g_pPictureText_BG:SetTex( "DLG_UI_Common_Texture10.TGA", "text_bg" )
g_pPictureText_BG:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(62 + slot_set_start_pos_x, 37 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.3)",
	CHANGE_TIME			= 0.0,
}

----아이템 종류
g_pStaticFourthSlotSet:AddString
{
MSG 			= "ALL",
FONT_INDEX      = XUF_DODUM_15_BOLD,
SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
"POS 			= D3DXVECTOR2(103 + slot_set_start_pos_x, 40 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
"COLOR			= D3DXCOLOR(0.0,0.5,1.0,1.0)",
}


----------교환버튼
g_pButtonChange_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChange_Item)
g_pButtonChange_Item:SetName( "ButtonChange_Item4" )
g_pButtonChange_Item:SetNormalTex( "DLG_UI_Button11.TGA", "change_Normal")

g_pButtonChange_Item:SetOverTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDownTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDisableTex( "DLG_UI_Button11.TGA", "change_Normal")

g_pButtonChange_Item:SetNormalPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(65 + slot_set_start_pos_x, 12 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetOverPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(63 + slot_set_start_pos_x, 11 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonChange_Item:SetDownPoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetDisablePoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",

	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_FOURTH_EXCHANGE_BUTTON"] )	
	
------------------내 아이템 슬롯

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(10 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


------------------교환 아이템 슬롯
g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFourthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 3 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}
---------------------------------------------------------------------------------------------
-- 다섯번째 슬롯  세트
---------------------------------------------------------------------------------------------

----- 0
g_pStaticFifthSlotSet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFifthSlotSet )
g_pStaticFifthSlotSet:SetName( "staticSlotSet5" )

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 1
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
	ADD_SIZE_X = 130,
	"LEFT_TOP		= D3DXVECTOR2( 10 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 2
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 3
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_left" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 4
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_center" )

g_pPicture_BG1:SetPoint
{
ADD_SIZE_X = 302+51,
	"LEFT_TOP		= D3DXVECTOR2(158 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 5
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_normal_right" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(148+251+12+51+51 + slot_set_start_pos_x, 0 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

------ 6
g_pPictureText_BG = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureText_BG )
g_pPictureText_BG:SetTex( "DLG_UI_Common_Texture10.TGA", "text_bg" )
g_pPictureText_BG:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(62 + slot_set_start_pos_x, 37 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.3)",
	CHANGE_TIME			= 0.0,
}

----아이템 종류
g_pStaticFifthSlotSet:AddString
{
MSG 			= "ALL",
FONT_INDEX      = XUF_DODUM_15_BOLD,
SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
"POS 			= D3DXVECTOR2(103 + slot_set_start_pos_x, 40 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
"COLOR			= D3DXCOLOR(0.0,0.5,1.0,1.0)",
}


----------교환버튼
g_pButtonChange_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonChange_Item)
g_pButtonChange_Item:SetName( "ButtonChange_Item5" )

g_pButtonChange_Item:SetNormalTex( "DLG_UI_Button11.TGA", "change_Normal")
g_pButtonChange_Item:SetOverTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDownTex( "DLG_UI_Button11.tga", "change_Over" )
g_pButtonChange_Item:SetDisableTex( "DLG_UI_Button11.TGA", "change_Normal")

g_pButtonChange_Item:SetNormalPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(65 + slot_set_start_pos_x, 12 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetOverPoint
{
	ADD_SIZE_X = -15,
	ADD_SIZE_Y = -3,
	"LEFT_TOP		= D3DXVECTOR2(63 + slot_set_start_pos_x, 11 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0, 
}
g_pButtonChange_Item:SetDownPoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
g_pButtonChange_Item:SetDisablePoint
{
     ADD_SIZE_X = -15-2,
	ADD_SIZE_Y = -3-2,  
 	"LEFT_TOP		= D3DXVECTOR2(63+1 + slot_set_start_pos_x, 11 + 1 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",

	"COLOR			= D3DXCOLOR(0.8,0.8,0.8,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pButtonChange_Item:SetCustomMsgMouseUp( ITEM_EXCHANGE_SHOP_CUSTOM_MSG["IESCM_FIFTH_EXCHANGE_BUTTON"] )
	
------------------내 아이템 슬롯

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(10 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


------------------교환 아이템 슬롯
g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}


g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

g_pPictureSlot = g_pUIDialog:CreatePicture()
g_pStaticFifthSlotSet:AddPicture( g_pPictureSlot )
g_pPictureSlot:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )
g_pPictureSlot:SetPoint
{
	"LEFT_TOP			= D3DXVECTOR2(158+51+51+51+51+51+51 + slot_set_start_pos_x, 10 + slot_set_start_pos_y  + slot_set_y_gap * 4 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.6)",
	CHANGE_TIME			= 0.0,
}

-----------------------------------------------------------------------
-- 아이템 박스 슬롯
-----------------------------------------------------------------------

pos_x = 15
pos_y = 78
gap   = 64

for i = 0, 4 do
	
	-- 내 아이템 슬롯
	slotID = i * 10
	
	x = 10 + pos_x + 1
	y = 10 + pos_y  + gap * i + 1
	
	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )

	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,

		SLOT_TYPE	= SLOT_TYPE["ST_INVENTORY"],

		SORT_TYPE	= 0,
		SLOT_ID		= slotID,

		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_NONE"],

		"POS		= D3DXVECTOR2( x, y )",
		"SIZE		= D3DXVECTOR2( 47, 47 )",
	}
	
	for j= 0, 6 do
	
	-- 교환 아이템 슬롯
	slotID = i * 10 + j + 1
	
	x = 158 + pos_x + 51 * j + 1
	y = 10 + pos_y + gap * i + 1
	
	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )

	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,

		SLOT_TYPE	= SLOT_TYPE["ST_INVENTORY"],

		SORT_TYPE	= 0,
		SLOT_ID		= slotID,

		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_NONE"],

		"POS		= D3DXVECTOR2( x, y )",
		"SIZE		= D3DXVECTOR2( 47, 47 )",
	}
	
	end

end

----------------------------------------------------
--- 슬롯 선택
----------------------------------------------------
g_pStaticSelected = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSelected )
g_pStaticSelected:SetName( "staticSlotSelected" )

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSelected:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Button04.tga", "pay_selec" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2( 0, 0 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
