-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- #ifdef SERV_MULTI_RESOLVE

g_pStatic_partylist = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist )
g_pStatic_partylist:SetName( "partylist" )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 417, 511, 0 ) ) -- Size
g_pUIDialog:SetCloseCustomUIEventID( UI_RESOLVE_ITEM_CUSTOM_MSG["URICM_RESOLVE_ITEM_CANCLE"] )

----------BG


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_bg1:SetPoint
{
       ADD_SIZE_X = -74,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = -74,
	ADD_SIZE_Y = 400+70-20,
	"LEFT_TOP		= D3DXVECTOR2(0,0+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPicture_bg1:SetPoint
{
       ADD_SIZE_X = -74,
	"LEFT_TOP		= D3DXVECTOR2(0,0+425+70-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = -60,
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = -60,
	ADD_SIZE_Y = 250+80,
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = -60,
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+351+80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------BG3
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = -80,
	
	"LEFT_TOP		= D3DXVECTOR2(0+25,0+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_middle" )

g_pPicture_bg3:SetPoint
{
ADD_SIZE_X = -80,
    ADD_SIZE_Y = 290+20,
	"LEFT_TOP		= D3DXVECTOR2(0+25,0+110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = -80,
	"LEFT_TOP		= D3DXVECTOR2(0+25,0+401+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--아이템 분해 타이틀

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_title03.TGA", "ITEM_BREAK" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--엑스박스

	g_pButton_xicon = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_xicon )
	g_pButton_xicon:SetName( "Button_exit" )
	g_pButton_xicon:SetNormalTex( "DLG_ui_button01.tga", "exit_normal" )

	g_pButton_xicon:SetOverTex( "DLG_ui_button01.tga", "exit_over" )

	g_pButton_xicon:SetDownTex( "DLG_ui_button01.tga", "exit_over" )

	g_pButton_xicon:SetNormalPoint
	{


 		"LEFT_TOP		= D3DXVECTOR2(0+400-61,0+15)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_xicon:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61,0+15-4)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
g_pButton_xicon:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2,0+15-2)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( UI_RESOLVE_ITEM_CUSTOM_MSG["URICM_RESOLVE_ITEM_CANCLE"] )

--분할 라인
	
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture42.TGA", "pet_bg_bar" )

g_pPicture_line:SetPoint
{
ADD_SIZE_X = 66,
ADD_SIZE_Y = -7,
    "LEFT_TOP		= D3DXVECTOR2(0+15,0+50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----안내문구

g_pStatic_avatar_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_avatar_window )
g_pStatic_avatar_window:SetName( "avatar_window" )

g_pStatic_avatar_window:AddString
{
	MSG 			= STR_ID_12154,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(38,61)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,0.0)",
}

--느낌표
g_pPicture_smRla = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_smRla )

g_pPicture_smRla:SetTex( "DLG_UI_Common_Texture41.TGA", "pat_excla_mark" )

g_pPicture_smRla:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+15,0+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--돈 표시창
g_pPicture_ed = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_ed )

g_pPicture_ed:SetTex( "DLG_UI_Common_Texture02.TGA", "ED_BOX" )

g_pPicture_ed:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+25-11,0+458)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 수수료ED 창

g_pStatic_ED= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ED)
g_pStatic_ED:SetName( "g_pStatic_ED" )

g_pStatic_ED:AddString
{
	MSG 			= "999,999,999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,   
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],     
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(45,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--마법진

g_pPicture_magic = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_magic )

g_pPicture_magic:SetTex( "DLG_UI_Common_Texture35.TGA", "bg_magic_break" )

g_pPicture_magic:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+25+10-1-8+8,0+100+10-9+10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--마법 소켓 왼쪽 상단
g_pPicture_slot = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_slot )

g_pPicture_slot:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+85,0+190)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--마법 소켓 왼쪽 하단
g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot2:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+85,0+190+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--마법 소켓 오른쪽 상단

g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot3:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+85+150,0+190)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--마법 소켓 오른쪽 하단
g_pPicture_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_slot4 )

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot4:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+85+150,0+190+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--마법 소켓 중간 상단

g_pPicture_slot5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_slot5 )

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot5:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+85+150-75,0+190-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--마법 소켓 중간 하단

g_pPicture_slot6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_slot6 )

g_pPicture_slot6:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot6:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+85+150-75,0+190+92+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 슬롯

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_RESOLVE"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+85+5,0+190+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_RESOLVE"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+85+5,0+190+92+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_RESOLVE"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+85+150+5,0+190+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_RESOLVE"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= 3,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+85+150+5,0+190+92+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_RESOLVE"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= 4,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+85+150-75+5,0+190-40+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_RESOLVE"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= 5,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+85+150-75+5,0+190+92+40+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

--취소하기 버튼

	g_pButton_BT_cancel = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_BT_cancel )
	g_pButton_BT_cancel:SetName( "Button_cancel" )
	g_pButton_BT_cancel:SetNormalTex( "DLG_ui_button17.tga", "cancel_button_normal" )

	g_pButton_BT_cancel:SetOverTex( "DLG_ui_button17.tga", "cancel_button_over" )

	g_pButton_BT_cancel:SetDownTex( "DLG_ui_button17.tga", "cancel_button_over" )

	g_pButton_BT_cancel:SetNormalPoint
	{


 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-62,0+15+432)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_BT_cancel:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-62-2+2,0+15-4+432)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_BT_cancel:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-62-2+2,0+15-2+432)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_BT_cancel:SetCustomMsgMouseUp( UI_RESOLVE_ITEM_CUSTOM_MSG["URICM_RESOLVE_ITEM_CANCLE"] )


--분해하기 버튼

	g_pButton_BT_break = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_BT_break )
	g_pButton_BT_break:SetName( "Button_break" )
	g_pButton_BT_break:SetNormalTex( "DLG_ui_button17.tga", "BT_BREAK_NORMAL" )

	g_pButton_BT_break:SetOverTex( "DLG_ui_button17.tga", "BT_BREAK_OVER" )

	g_pButton_BT_break:SetDownTex( "DLG_ui_button17.tga", "BT_BREAK_OVER" )

	g_pButton_BT_break:SetNormalPoint
	{

 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-62-92,0+15+430)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_BT_break:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-62-2-92+3,0+15-4+430-1)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
g_pButton_BT_break:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-62-2-92+3,0+15-2+430)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}

g_pButton_BT_break:SetCustomMsgMouseUp( UI_RESOLVE_ITEM_CUSTOM_MSG["URICM_RESOLVE_ITEM_OK"] )
g_pButton_BT_break:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

-- #endif SERV_MULTI_RESOLVE