-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- #ifdef SERV_SYNTHESIS_AVATAR

g_pStatic_avatar_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_avatar_window )
g_pStatic_avatar_window:SetName( "avatar_window" )
--g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 417, 511, 0 ) ) -- Size
g_pUIDialog:SetCloseCustomUIEventID( UI_SYNTHESIS_ITEM_CUSTOM_MSG["USICM_SYNTHESIS_ITEM_CANCLE"] )

----------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPicture_bg1:SetPoint
{
       ADD_SIZE_X = -74,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = -74,
	ADD_SIZE_Y = 400+70-20+25,
	"LEFT_TOP		= D3DXVECTOR2(0,0+19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPicture_bg1:SetPoint
{
       ADD_SIZE_X = -74,
	"LEFT_TOP		= D3DXVECTOR2(0,0+425+70-20+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = -60,
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = -60,
	ADD_SIZE_Y = 250+80+30,
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = -60,
	"LEFT_TOP		= D3DXVECTOR2(0+15,0+351+80+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------BG3
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = -80,
	
	"LEFT_TOP		= D3DXVECTOR2(0+25,0+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_bg3 )

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
g_pStatic_avatar_window:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_X = -80,
	"LEFT_TOP		= D3DXVECTOR2(0+25,0+401+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--아이템 합성 타이틀

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_title03.TGA", "AVATAR_SYNTHESIS" )

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
g_pButton_xicon:SetCustomMsgMouseUp( UI_SYNTHESIS_ITEM_CUSTOM_MSG["USICM_SYNTHESIS_ITEM_CANCLE"] )
	
	--분할 라인
	
g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_line )

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
	MSG 			= STR_ID_12153,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(38,63)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,0.0)",

}


--느낌표
g_pPicture_smRla = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_smRla )

g_pPicture_smRla:SetTex( "DLG_UI_Common_Texture41.TGA", "pat_excla_mark" )

g_pPicture_smRla:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+15,0+60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--마법진 합성용
g_pPicture_magic = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_magic )

g_pPicture_magic:SetTex( "DLG_UI_Common_Texture37.TGA", "bg_magic_synthesis" )

g_pPicture_magic:SetPoint
{
ADD_SIZE_X = -5,
ADD_SIZE_Y = -5,
    "LEFT_TOP		= D3DXVECTOR2(0+25+10-22+15-15, 0+100-5+10-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--마법 소켓

g_pPicture_slot = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_slot )

g_pPicture_slot:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+90,0+160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--마법 소켓 2
g_pPicture_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_slot2 )

g_pPicture_slot2:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot2:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+90+140,0+160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--마법 소켓 3
g_pPicture_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_slot3 )

g_pPicture_slot3:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot3:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+90,0+160+155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--마법 소켓 4
g_pPicture_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_slot4 )

g_pPicture_slot4:SetTex( "DLG_UI_Common_Texture01.TGA", "empty_slot" )

g_pPicture_slot4:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+90+140,0+160+155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--마법 소켓 중간
g_pPicture_slot5 = g_pUIDialog:CreatePicture()
g_pStatic_avatar_window:AddPicture( g_pPicture_slot5 )

g_pPicture_slot5:SetTex( "DLG_UI_Common_Texture01.TGA", "synthesis_slot" )

g_pPicture_slot5:SetPoint
{

    "LEFT_TOP		= D3DXVECTOR2(0+90+71+1,0+160+78+2)",
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

	SLOT_TYPE	= SLOT_TYPE["ST_SYNTHESIS"],

	SORT_TYPE	= SORT_TYPE["ST_AVARTA"],
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+90+5,0+160+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SYNTHESIS"],

	SORT_TYPE	= SORT_TYPE["ST_AVARTA"],
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+90+140+5,0+160+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SYNTHESIS"],

	SORT_TYPE	= SORT_TYPE["ST_AVARTA"],
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+90+5,0+160+155+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SYNTHESIS"],

	SORT_TYPE	= SORT_TYPE["ST_AVARTA"],
	SLOT_ID		= 3,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2(0+90+140+5,0+160+155+5 )",
	"SIZE		= D3DXVECTOR2( 47, 47 )",

}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SYNTHESIS"],

	SORT_TYPE	= SORT_TYPE["ST_SPECIAL"],
	SLOT_ID		= 4,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 0+90+71+1+3,0+160+78+2+3 )",
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


 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-62,0+15+432+28)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_BT_cancel:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-62-2+2,0+15-4+432+28)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_BT_cancel:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-62-2+2,0+15-2+432+28)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_BT_cancel:SetCustomMsgMouseUp( UI_SYNTHESIS_ITEM_CUSTOM_MSG["USICM_SYNTHESIS_ITEM_CANCLE"] )

--합성하기 버튼

	g_pButton_BT_break = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_BT_break )
	g_pButton_BT_break:SetName( "Button_break" )
	g_pButton_BT_break:SetNormalTex( "DLG_ui_button17.tga", "BT_SYNTHESIS_NORMAL" )

	g_pButton_BT_break:SetOverTex( "DLG_ui_button17.tga", "BT_SYNTHESIS_OVER" )

	g_pButton_BT_break:SetDownTex( "DLG_ui_button17.tga", "BT_SYNTHESIS_OVER" )

	g_pButton_BT_break:SetNormalPoint
	{


 		"LEFT_TOP		= D3DXVECTOR2(0+400-61-62-92, 0+15+432+28-2)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_BT_break:SetOverPoint
	{
	
		"LEFT_TOP		= D3DXVECTOR2(0+400-4-61-62-2-92+3, 0+15-4+432+28-2)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_BT_break:SetDownPoint
{
    ADD_SIZE_X = -3,
    ADD_SIZE_Y = -3,
    "LEFT_TOP		= D3DXVECTOR2(0+400-61-2-62-2-92+3,0+15-2+430+30-2)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}

g_pButton_BT_break:SetCustomMsgMouseUp( UI_SYNTHESIS_ITEM_CUSTOM_MSG["USICM_SYNTHESIS_ITEM_OK"] )
g_pButton_BT_break:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )


---------------------------------콤보박스

g_pComboBoxOption_Window_Graphic = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxOption_Window_Graphic )
g_pComboBoxOption_Window_Graphic:SetName( "Option_ComboBox" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxOption_Window_Graphic:SetDropHeight( 20 )
				   
g_pComboBoxOption_Window_Graphic:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	"POS 			= D3DXVECTOR2(40,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboBoxOption_Window_Graphic:SetTextTex( "DLG_Common_New_Texture55.tga", "LONG_BAR" )

g_pComboBoxOption_Window_Graphic:SetButtonTex ( "DLG_Common_New_Texture53.TGA", "ARROW_DOWN1" )

g_pComboBoxOption_Window_Graphic:SetButtonMouseOverTex( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )

g_pComboBoxOption_Window_Graphic:SetButtonMouseDownTex ( "DLG_Common_New_Texture53.TGA", "combo_DOWN_OVER1" )

g_pComboBoxOption_Window_Graphic:SetDropdownTex ( "DLG_Common_New_Texture55.tga", "combo_box_bg4" )

g_pComboBoxOption_Window_Graphic:SetDropdownTextTex ( "DLG_Common_New_Texture55.tga", "blue1" )

--수동으로 만들 때
g_pComboBoxOption_Window_Graphic:SetTextPos( 17-6+20, 48+390)
g_pComboBoxOption_Window_Graphic:SetTextSize( 290, 21)
--텍스트 시작 포인트
g_pComboBoxOption_Window_Graphic:SetTextStringOffsetPos( 2+6, 4 )
g_pComboBoxOption_Window_Graphic:SetButtonPos( 308-6+20, 48+390)
g_pComboBoxOption_Window_Graphic:SetButtonSize( 22, 22)

g_pComboBoxOption_Window_Graphic:SetCustomMsgSelectionChanged( UI_SYNTHESIS_ITEM_CUSTOM_MSG["USICM_SYNTHESIS_ITEM_OPTION_CHANGED"] ) 

-- #endif SERV_SYNTHESIS_AVATAR