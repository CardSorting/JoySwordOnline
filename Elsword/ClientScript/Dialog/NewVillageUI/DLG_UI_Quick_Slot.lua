-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "Slot" )

-- #ifdef INT_WIDE_BAR
MOVE_BAR_Y  = 20
-- #endif INT_WIDE_BAR

----- 슬롯 배경
g_pPictureSlot1 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureSlot1 )
g_pPictureSlot1:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureSlot1:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(18-10-2,710-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSlot2 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureSlot2 )
g_pPictureSlot2:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureSlot2:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(18+46-10-2,710-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSlot3 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureSlot3 )
g_pPictureSlot3:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureSlot3:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(18+92-10-2,710-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSlot4 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureSlot4 )
g_pPictureSlot4:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureSlot4:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(18+138-10-2,710-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSlot5 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureSlot5 )
g_pPictureSlot5:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureSlot5:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(18+184-10-2,710-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSlot6 = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureSlot6 )
g_pPictureSlot6:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureSlot6:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(18+230-10-2,710-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


----- 어둠의 문 소환 카드 슬롯 배경

g_pStaticCardSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCardSlot )
g_pStaticCardSlot:SetName( "CardSlot" )


g_pPictureCardSlot1 = g_pUIDialog:CreatePicture()
g_pStaticCardSlot:AddPicture( g_pPictureCardSlot1 )
g_pPictureCardSlot1:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureCardSlot1:SetPoint
{	
     ADD_SIZE_X = 22+6,
	 ADD_SIZE_Y = 22+6,
	"LEFT_TOP		= D3DXVECTOR2(18-10-2,710-2-27 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureCardSlot2 = g_pUIDialog:CreatePicture()
g_pStaticCardSlot:AddPicture( g_pPictureCardSlot2 )
g_pPictureCardSlot2:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureCardSlot2:SetPoint
{	
     ADD_SIZE_X = 22+6,
	 ADD_SIZE_Y = 22+6,
	"LEFT_TOP		= D3DXVECTOR2(18-10-2+64+4+4,710-2-27 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureCardSlot3 = g_pUIDialog:CreatePicture()
g_pStaticCardSlot:AddPicture( g_pPictureCardSlot3 )
g_pPictureCardSlot3:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "QUICK_SLOT" )
g_pPictureCardSlot3:SetPoint
{	
     ADD_SIZE_X = 22+6,
	 ADD_SIZE_Y = 22+6,
	"LEFT_TOP		= D3DXVECTOR2(18-10-2+64+4+64+4+4*2,710-2-27 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureCardSlot4 = g_pUIDialog:CreatePicture()
g_pStaticCardSlot:AddPicture( g_pPictureCardSlot4 )
g_pPictureCardSlot4:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "DARK_CARD_QUICK_SLOT" )
g_pPictureCardSlot4:SetPoint
{	
     ADD_SIZE_X = 22+6-1,
	 ADD_SIZE_Y = 22+6-1,
	"LEFT_TOP		= D3DXVECTOR2(18-10-2+64+4+64+4+64+4+1+4*3,710-2-26 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


----- 슬롯
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_1"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],

	"POS		= D3DXVECTOR2(9,711 - MOVE_BAR_Y )",
	"SIZE		= D3DXVECTOR2( 40, 40 )",

	SLOT_DESC	= STR_ID_981,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_2"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],

	"POS		= D3DXVECTOR2(9+46,711 - MOVE_BAR_Y )",
	"SIZE		= D3DXVECTOR2( 40, 40 )",

	SLOT_DESC	= STR_ID_981,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_3"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],

	"POS		= D3DXVECTOR2(9+92,711 - MOVE_BAR_Y )",
	"SIZE		= D3DXVECTOR2( 40, 40 )",

	SLOT_DESC	= STR_ID_981,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_4"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],

	"POS		= D3DXVECTOR2(9+138,711 - MOVE_BAR_Y )",
	"SIZE		= D3DXVECTOR2( 40, 40 )",

	SLOT_DESC	= STR_ID_981,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_5"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],

	"POS		= D3DXVECTOR2(9+184,711 - MOVE_BAR_Y )",
	"SIZE		= D3DXVECTOR2( 40, 40 )",

	SLOT_DESC	= STR_ID_981,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_QUICK_SLOT"],
	SLOT_ID		= NOW_QUICK_SLOT_ID["NQSI_QUICK_SLOT_6"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_QUICK_SLOT"],

	"POS		= D3DXVECTOR2(9+230,711 - MOVE_BAR_Y )",
	"SIZE		= D3DXVECTOR2( 40, 40 )",

	SLOT_DESC	= STR_ID_981,
}

-----단축 번호
g_pStatic_QUICK_NUM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICK_NUM )
g_pStatic_QUICK_NUM:SetName( "Static_QUICK_NUM" )

g_pStatic_QUICK_NUM:AddString
{
    MSG 			= "1",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(45-10,711 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
    MSG 			= "2",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(45+46-10,711 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
    MSG 			= "3",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(45+92-10,711 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
    MSG 			= "4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(45+138-10,711 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
    MSG 			= "5",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(45+184-10,711 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
    MSG 			= "6",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(45+230-10,711 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 

-----카드 슬롯 단축 번호
g_pStatic_QUICK_CARD_NUM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICK_CARD_NUM )
g_pStatic_QUICK_CARD_NUM:SetName( "Static_QUICK_CARD_NUM" )
g_pStatic_QUICK_CARD_NUM:SetShow(true)

g_pStatic_QUICK_CARD_NUM:AddString
{
    MSG 			= "1",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(70-10-10,687 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_CARD_NUM:AddString
{
    MSG 			= "2",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(70+62-10,687 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_CARD_NUM:AddString
{
    MSG 			= "3",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(70+134-10,687 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}
g_pStatic_QUICK_CARD_NUM:AddString
{
    MSG 			= "4",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(70+206-10,687 - MOVE_BAR_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 

--슬롯 비활성화 상태
g_pStaticSlotDisable = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlotDisable )
g_pStaticSlotDisable:SetName( "Slot_Black" )
g_pStaticSlotDisable:SetShow(false)

g_pPictureGray1 = g_pUIDialog:CreatePicture()
g_pStaticSlotDisable:AddPicture( g_pPictureGray1 )
g_pPictureGray1:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )
g_pPictureGray1:SetPoint
{
     ADD_SIZE_X = 36,
	 ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(20-10,712 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.3)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGray2 = g_pUIDialog:CreatePicture()
g_pStaticSlotDisable:AddPicture( g_pPictureGray2 )
g_pPictureGray2:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )
g_pPictureGray2:SetPoint
{
     ADD_SIZE_X = 36,
	 ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(20+46-10,712 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.3)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGray3 = g_pUIDialog:CreatePicture()
g_pStaticSlotDisable:AddPicture( g_pPictureGray3 )
g_pPictureGray3:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )
g_pPictureGray3:SetPoint
{
     ADD_SIZE_X = 36,
	 ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(20+92-10,712 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.3)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGray4 = g_pUIDialog:CreatePicture()
g_pStaticSlotDisable:AddPicture( g_pPictureGray4 )
g_pPictureGray4:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )
g_pPictureGray4:SetPoint
{
     ADD_SIZE_X = 36,
	 ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(20+138-10,712 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.3)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGray5 = g_pUIDialog:CreatePicture()
g_pStaticSlotDisable:AddPicture( g_pPictureGray5 )
g_pPictureGray5:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )
g_pPictureGray5:SetPoint
{
     ADD_SIZE_X = 36,
	 ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(20+184-10,712 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.3)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGray6 = g_pUIDialog:CreatePicture()
g_pStaticSlotDisable:AddPicture( g_pPictureGray6 )
g_pPictureGray6:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )
g_pPictureGray6:SetPoint
{
     ADD_SIZE_X = 36,
	 ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(20+230-10,712 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.3)",
	CHANGE_TIME		= 0.0,
}


--비활성화 슬롯 구매를 위한 버튼 4~6
g_pPictureGray4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pPictureGray4 )
g_pPictureGray4:SetName( "Button_Buy_Guide_Quick_Slot" )
g_pPictureGray4:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pPictureGray4:SetOverTex( "DLG_Common_Button00.tga", "invisible" )
g_pPictureGray4:SetDownTex( "DLG_Common_Button00.tga", "invisible" )
g_pPictureGray4:SetNormalPoint
{
     ADD_SIZE_X = 40+92,
	 ADD_SIZE_Y = 40,
	"LEFT_TOP		= D3DXVECTOR2(18+138-10,710 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureGray4:SetOverPoint
{
     ADD_SIZE_X = 40+92,
	 ADD_SIZE_Y = 40,
	"LEFT_TOP		= D3DXVECTOR2(18+138-10,710 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureGray4:SetDownPoint
{
     ADD_SIZE_X = 40+92,
	 ADD_SIZE_Y = 40,
	"LEFT_TOP		= D3DXVECTOR2(18+138-10,710 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureGray4:SetCustomMsgMouseUp(  STATE_MENU_UI_CUSTOM_MSG["SMUCM_DISABLE_QUICK_SLOT_MOUSE_UP"] )
g_pPictureGray4:SetGuideDesc( STR_ID_16472 )


-----쿨타임.
--[[
g_pStatic_QUICK_NUM = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_QUICK_NUM )
g_pStatic_QUICK_NUM:SetName( "QuickSlotCoolTime" )
g_pStatic_QUICK_NUM:SetShow(true)
g_pStatic_QUICK_NUM:AddString
{
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45-14,711+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45-14+46,711+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45-14-2+46+46,711+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45-14+46+46+46,711+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45-14+46+46+46+46,711+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_QUICK_NUM:AddString
{
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45-14+46+46+46+46+46,711+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
--]]



--------------
g_pStatic_LOCK = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LOCK )
g_pStatic_LOCK:SetName( "LOCK" )

g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(19+138,719 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(19+184,719 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(19+230,719 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
