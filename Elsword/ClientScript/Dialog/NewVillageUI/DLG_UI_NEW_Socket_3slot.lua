-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


dlgX = 250
dlgY = 302
g_pUIDialog:SetPos( dlgX, dlgY )


g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_EXIT"]  )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1190, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1150, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1110, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1070, 0 ) )

g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_soket" )






---------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture30.TGA", "bg_top" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture30.TGA", "bg_center" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,193)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture30.TGA", "bg_center" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,193+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_UI_Common_Texture30.TGA", "bg_bottom" )

g_pPicture_bg5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,193+40+40+40-1-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------------------  타이틀    --------------------------------

g_pStatic_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title )
g_pStatic_Title:SetName( "g_pStatic_Title" )

g_pStatic_Title:AddString
{
	MSG 			= STR_ID_5008,
	--MSG 			= "아이템 소켓",
	FONT_INDEX		= XUF_DODUM_20_BOLD,   
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17+2,17+2)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_Title:AddString
{
	MSG 			= STR_ID_5008,
	--MSG 			= "아이템 소켓",
	FONT_INDEX		= XUF_DODUM_20_BOLD,   
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_Slot_Image" )



g_pPictureWindow_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_slot1 )

g_pPictureWindow_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureWindow_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25+105,82-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_slot2 )

g_pPictureWindow_slot2:SetTex( "DLG_Icon_Sealed_Item.tga", "Sealed_Item" )

g_pPictureWindow_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25+105+1,82-20+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--------------------------------   아이템 명    --------------------------------

g_pStatic_item1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item1 )
g_pStatic_item1:SetName( "Static_Item_Name1" )

g_pStatic_item1:AddString
{
	MSG 			= "+9 엘리트 나소드 소드",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,   
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(153,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------  정보표시  한줄   --------------------------------

g_pStatic_Memo1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Memo1 )
g_pStatic_Memo1:SetName( "g_pStatic_Memo1" )

g_pStatic_Memo1:AddString
{
	MSG 			= "한줄로 표시되는 정보입니다.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,   
    --FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(153,158)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------------------  정보표시  두줄   --------------------------------

g_pStatic_Memo2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Memo2 )
g_pStatic_Memo2:SetName( "g_pStatic_Memo2" )

g_pStatic_Memo2:AddString
{
	MSG 			= "두줄로 표시되는 정보입니다.\n두줄로 표시되는 정보입니다.",
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,   
    --FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(153,150)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------------------------------------------
----------------------      ED         ----------------------
-----------------------------------------------------------

g_pStatic_ED= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ED)
g_pStatic_ED:SetName( "g_pStatic_ED" )

g_pStatic_ED:AddString
{
	MSG 			= "999,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,   
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(114,377-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



	
-----폰트----


	
	---------------------------  옵션 01  --------------------------------

	g_pStatic_Two_Line_Option_Desc_Slot1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot1 )
	g_pStatic_Two_Line_Option_Desc_Slot1:SetName( "g_pStatic_One_Line_Option_Desc_Slot1" )

	g_pStatic_Two_Line_Option_Desc_Slot1:AddString
	{
		MSG 			= STR_ID_1371,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

	g_pStatic_Two_Line_Option_Desc_Slot1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot1 )
	g_pStatic_Two_Line_Option_Desc_Slot1:SetName( "g_pStatic_Two_Line_Option_Desc_Slot1" )

	g_pStatic_Two_Line_Option_Desc_Slot1:AddString
	{
		MSG 			= STR_ID_1372,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204-6)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	---------------------------  옵션 02  --------------------------------
	
	g_pStatic_Two_Line_Option_Desc_Slot2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot2 )
	g_pStatic_Two_Line_Option_Desc_Slot2:SetName( "g_pStatic_One_Line_Option_Desc_Slot2" )

	g_pStatic_Two_Line_Option_Desc_Slot2:AddString
	{
		MSG 			= STR_ID_1373,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204+40)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	


	g_pStatic_Two_Line_Option_Desc_Slot2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot2 )
	g_pStatic_Two_Line_Option_Desc_Slot2:SetName( "g_pStatic_Two_Line_Option_Desc_Slot2" )

	g_pStatic_Two_Line_Option_Desc_Slot2:AddString
	{
		MSG 			= STR_ID_1374,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204-6+40)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	---------------------------  옵션 03  --------------------------------
	
	g_pStatic_Two_Line_Option_Desc_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot3 )
	g_pStatic_Two_Line_Option_Desc_Slot3:SetName( "g_pStatic_One_Line_Option_Desc_Slot3" )

	g_pStatic_Two_Line_Option_Desc_Slot3:AddString
	{
		MSG 			= STR_ID_1371,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204+40+40)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

	g_pStatic_Two_Line_Option_Desc_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot3 )
	g_pStatic_Two_Line_Option_Desc_Slot3:SetName( "g_pStatic_Two_Line_Option_Desc_Slot3" )

	g_pStatic_Two_Line_Option_Desc_Slot3:AddString
	{
		MSG 			= STR_ID_1372,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204-6+40+40)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	---------------------------  옵션 04  --------------------------------
	
	g_pStatic_Two_Line_Option_Desc_Slot4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot4 )
	g_pStatic_Two_Line_Option_Desc_Slot4:SetName( "g_pStatic_One_Line_Option_Desc_Slot4" )

	g_pStatic_Two_Line_Option_Desc_Slot4:AddString
	{
		MSG 			= STR_ID_1371,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204+40+40+40)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	

	g_pStatic_Two_Line_Option_Desc_Slot4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot4 )
	g_pStatic_Two_Line_Option_Desc_Slot4:SetName( "g_pStatic_Two_Line_Option_Desc_Slot4" )

	g_pStatic_Two_Line_Option_Desc_Slot4:AddString
	{
		MSG 			= STR_ID_1375,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,   
		--FONT_STYLE      = FONT_STYLE["FS_SHELL"],     
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(174,204-6+40+40+40)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	




------------ 소켓 슬롯

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30 + dlgX, 218-24 + dlgY)",
	"SIZE		= D3DXVECTOR2( 35,35 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30 + dlgX, 264-30 + dlgY)",
	"SIZE		= D3DXVECTOR2( 35,35 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30 + dlgX, 312-38 + dlgY)",
	"SIZE		= D3DXVECTOR2( 35,35 )",

}
pItemSlot:SetClickable( false )



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 3,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 30 + dlgX, 360-46 + dlgY)",
	"SIZE		= D3DXVECTOR2( 35,35 )",

}
pItemSlot:SetClickable( false )


------------ 아이템 정보 슬롯

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 4,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 25+105 + dlgX , 82-20 + dlgY )",
	"SIZE		= D3DXVECTOR2( 49,49 )",

}
pItemSlot:SetClickable( false )







g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "StaticStoneSlotImage" )


g_pPictureStoneSlot1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureStoneSlot1 )

g_pPictureStoneSlot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureStoneSlot1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,218-24)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureStoneSlot2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureStoneSlot2 )

g_pPictureStoneSlot2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureStoneSlot2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,264-30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureStoneSlot3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureStoneSlot3 )

g_pPictureStoneSlot3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureStoneSlot3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,312-38)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureStoneSlot4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureStoneSlot4 )

g_pPictureStoneSlot4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureStoneSlot4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,360-46)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------                                버튼                ------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------EXIT

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(261+4,13+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(261,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(261+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_EXIT"] )



-------------------------  장착 하기 버튼

g_pButton_Socket = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Socket )
g_pButton_Socket:SetName( "Button__Socket_Begin" )

g_pButton_Socket:SetNormalTex( "DLG_UI_BUTTON16.tga", "BTN_NORMAL" )
g_pButton_Socket:SetOverTex( "DLG_UI_BUTTON16.tga", "BTN_over" )
g_pButton_Socket:SetDownTex( "DLG_UI_BUTTON16.tga", "BTN_over" )

g_pButton_Socket:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(201+4,362+4-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Socket:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(201,362-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Socket:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(201+1,362+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Socket:SetCustomMsgMouseUp( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_SOCKET_EQUIP"] )


g_pStatic_Btn_Socket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Btn_Socket )
g_pStatic_Btn_Socket:SetName( "ButtonEquipStone" )

g_pStatic_Btn_Socket:AddString
{
	MSG 			= STR_ID_5067,
	--MSG 			= "장착하기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(246+2,373+2-40)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

g_pStatic_Btn_Socket:AddString
{
	MSG 			= STR_ID_5067,
	--MSG 			= "장착하기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(246,373-40)",
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "g_pCheckBoxForceSocket" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )

g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(245,18)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(260,33)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(243,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxsecret:SetChecked( false )
g_pCheckBoxsecret:SetCustomMsgChecked( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_SOCKET_SECRET"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_SOCKET_SECRET"] )
