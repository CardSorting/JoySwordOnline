-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticItem_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticItem_Box )
g_pStaticItem_Box:SetName( "g_pStaticItem_Box" )

g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_TEMP_INVENTORY_CUSTOM_MSG["UTICM_EXIT"] )
g_pUIDialog:AddDummyInt( 1 )

posX	= 881
posY	= 481
width	= 137
height	= 234

g_pUIDialog:AddDummyPos( D3DXVECTOR3( posX, posY, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( width, height, 0 ) ) -- Size

g_pPictureItem_Box_BG1 = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureItem_Box_BG1 )

g_pPictureItem_Box_BG1:SetTex( "DLG_UI_Common_Texture09.TGA", "Item_Box_Top" )

g_pPictureItem_Box_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX, posY)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	

g_pPictureItem_Box_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureItem_Box_BG2 )

g_pPictureItem_Box_BG2:SetTex( "DLG_UI_Common_Texture09.TGA", "Item_Box_middle" )

g_pPictureItem_Box_BG2:SetPoint
{
	ADD_SIZE_Y = 200,
	"LEFT_TOP		= D3DXVECTOR2(posX, posY + 17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	

g_pPictureItem_Box_BG3 = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureItem_Box_BG3 )

g_pPictureItem_Box_BG3:SetTex( "DLG_UI_Common_Texture09.TGA", "Item_Box_Bottom" )

g_pPictureItem_Box_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX, posY + 219)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	

	
	
-------슬롯

g_pPictureItem_Slot_BG1 = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureItem_Slot_BG1 )

g_pPictureItem_Slot_BG1:SetTex( "DLG_UI_Common_Texture09.TGA", "Slot_BG_Left" )

g_pPictureItem_Slot_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 15, posY + 45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	


g_pPictureItem_Slot_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureItem_Slot_BG2 )

g_pPictureItem_Slot_BG2:SetTex( "DLG_UI_Common_Texture09.TGA", "Slot_BG_center" )

g_pPictureItem_Slot_BG2:SetPoint
{
	ADD_SIZE_X = 82,
	"LEFT_TOP		= D3DXVECTOR2(posX + 26, posY + 45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	


g_pPictureItem_Slot_BG3 = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureItem_Slot_BG3 )

g_pPictureItem_Slot_BG3:SetTex( "DLG_UI_Common_Texture09.TGA", "Slot_BG_Right" )

g_pPictureItem_Slot_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 110, posY + 45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	


--------슬롯

g_pPictureSlot = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureSlot )

g_pPictureSlot:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(posX + 44, posY + 56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}

---------------페이지 넘김

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrowL" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(posX + 21, posY + 196 + 1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 21,posY + 196)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(posX + 21+1,posY + 196+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonL_arrow:SetCustomMsgMouseUp( UI_TEMP_INVENTORY_CUSTOM_MSG["UTICM_PREV_ITEM"] )

--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrowR" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(posX + 21+1+78,posY + 196+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 21+78,posY + 196)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(posX + 21+1+78,posY + 196+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonR_arrow:SetCustomMsgMouseUp( UI_TEMP_INVENTORY_CUSTOM_MSG["UTICM_NEXT_ITEM"] )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticItem_Box:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(posX + 39, posY + 195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Item_Box_Page_Num" )

g_pStaticnumber:AddString
{
	MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(posX + 68,posY + 201)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-----타이틀


g_pStaticTitle2= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTitle2)
g_pStaticTitle2:SetName( "g_pStaticTitle2" )

g_pStaticTitle2:AddString
{
	--MSG 			= "임시공간",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(posX + 16,posY + 19)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


g_pStaticTitle1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTitle1)
g_pStaticTitle1:SetName( "g_pStaticTitle1" )

g_pStaticTitle1:AddString
{
	--MSG 			= "임시공간",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(posX + 14,posY + 17)",
	"COLOR			= D3DXCOLOR(0.2,0.8,0.9,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


-------------Bar
g_pPictureBar = g_pUIDialog:CreatePicture() 
g_pStaticItem_Box:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureBar:SetPoint
{
   ADD_SIZE_X = 110,
	"LEFT_TOP		= D3DXVECTOR2(posX + 12,posY + 191)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	

	
----버튼

g_pButton_Take_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Take_Item )
g_pButton_Take_Item:SetName( "Take_Item" )

g_pButton_Take_Item:SetNormalTex( "DLG_UI_Button11.TGA", "Take_Normal" )
g_pButton_Take_Item:SetOverTex( "DLG_UI_Button11.TGA", "Take_Over" )
g_pButton_Take_Item:SetDownTex( "DLG_UI_Button11.TGA", "Take_Over" )

g_pButton_Take_Item:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(posX + 16,posY + 119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Take_Item:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 12,posY + 115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Take_Item:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(posX + 12+1,posY + 115+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Take_Item:SetCustomMsgMouseUp( UI_TEMP_INVENTORY_CUSTOM_MSG["UTICM_GET_ITEM"] )

g_pButton_Drop_Item = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Drop_Item )
g_pButton_Drop_Item:SetName( "Drop_Item" )

g_pButton_Drop_Item:SetNormalTex( "DLG_UI_Button11.TGA", "Drop_Normal" )
g_pButton_Drop_Item:SetOverTex( "DLG_UI_Button11.TGA", "Drop_Over" )
g_pButton_Drop_Item:SetDownTex( "DLG_UI_Button11.TGA", "Drop_Over" )

g_pButton_Drop_Item:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(posX + 16,posY + 154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Drop_Item:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 12,posY + 150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Drop_Item:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(posX + 12+1,posY + 150+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Drop_Item:SetCustomMsgMouseUp( UI_TEMP_INVENTORY_CUSTOM_MSG["UTICM_DELETE_ITEM"] )

---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(posX + 92+4, posY + 12+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(posX + 92,posY + 12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

	"LEFT_TOP		= D3DXVECTOR2(posX + 92+1,posY + 12+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_TEMP_INVENTORY_CUSTOM_MSG["UTICM_EXIT"] )

-----------------------------------------------------------------------
-- 아이템 박스 슬롯
-----------------------------------------------------------------------
slotID = 0

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

	"POS		= D3DXVECTOR2(posX + 44 + 1, posY + 56 + 1)",
	"SIZE		= D3DXVECTOR2( 47, 47 )",
}

			
