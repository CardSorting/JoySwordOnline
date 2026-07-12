-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


----STATIC
g_pStatic_SKILL_SLOT_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SKILL_SLOT_B )
g_pStatic_SKILL_SLOT_B:SetName( "Static_SKILL_SLOT_B" )
g_pStatic_SKILL_SLOT_B:SetShow(true)

-- #ifdef INT_WIDE_BAR
MOVE_BAR_Y  = 20
-- #endif INT_WIDE_BAR

--{{스킬슬롯 상단
--Picture
g_pPictureSlot1 = g_pUIDialog:CreatePicture()  --picture 0
g_pStatic_SKILL_SLOT_B:AddPicture( g_pPictureSlot1 )
g_pPictureSlot1:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot1:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(411-6,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSlot2 = g_pUIDialog:CreatePicture()  --picture 1
g_pStatic_SKILL_SLOT_B:AddPicture( g_pPictureSlot2 )
g_pPictureSlot2:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot2:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(411+51-4-2,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSlot3 = g_pUIDialog:CreatePicture()  --picture 2
g_pStatic_SKILL_SLOT_B:AddPicture( g_pPictureSlot3 )
g_pPictureSlot3:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot3:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(411+102-4-2,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSlot4 = g_pUIDialog:CreatePicture()  --picture 3
g_pStatic_SKILL_SLOT_B:AddPicture( g_pPictureSlot4 )
g_pPictureSlot4:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot4:SetPoint
{	

	"LEFT_TOP		= D3DXVECTOR2(411+153-4-2,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--Slot 상단
g_pSlot = g_pUIDialog:CreateSlot()  --picture 4
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB1" ) --1
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411-4+1,653+1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411-7,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB2" ) --2
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411+51-4+1,653+1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411+51-7,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB3" ) --3
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411+102-4+1,653+1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+102-7,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB4" ) --4
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411+153-4+1,653+1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411+153-7,653-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )
--}} 스킬슬롯 상단

--{{ 스킬슬롯 하단

g_pStatic_SKILL_SLOT_A = g_pUIDialog:CreateStatic()g_pUIDialog:AddControl( g_pStatic_SKILL_SLOT_A )
g_pStatic_SKILL_SLOT_A:SetName( "Static_SKILL_SLOT_A" )
g_pStatic_SKILL_SLOT_A:SetShow(true)

g_pPictureSlot2_1 = g_pUIDialog:CreatePicture()
g_pStatic_SKILL_SLOT_A:AddPicture( g_pPictureSlot2_1 )
g_pPictureSlot2_1:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot2_1:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(411-4-2,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSlot2_2 = g_pUIDialog:CreatePicture()
g_pStatic_SKILL_SLOT_A:AddPicture( g_pPictureSlot2_2 )
g_pPictureSlot2_2:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot2_2:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(411+51-4-2,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSlot2_3 = g_pUIDialog:CreatePicture()
g_pStatic_SKILL_SLOT_A:AddPicture( g_pPictureSlot2_3 )
g_pPictureSlot2_3:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot2_3:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(411+102-4-2,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSlot2_4 = g_pUIDialog:CreatePicture()
g_pStatic_SKILL_SLOT_A:AddPicture( g_pPictureSlot2_4 )
g_pPictureSlot2_4:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPictureSlot2_4:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(411+153-4-2,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--slot하단
g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA1" ) --1
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411-4+2-1,651+53+2-1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411-7,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA2" ) --2
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411+51-4+2-1,651+53+2-1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411+51-7,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA3" ) --3
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411+102-4+2-1,651+53+2-1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411+102-7,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA4" ) --4
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(411+153-4+2-1,651+53+2-1 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411+153-7,651+53-2 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


--}} 스킬슬롯 하단


--{{ 스킬 슬롯 체인지 가이드
g_pStatic_Slot_Guide = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Slot_Guide )
g_pStatic_Slot_Guide:SetName( "g_pStatic_Slot_Guide" )
g_pStatic_Slot_Guide:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Slot_Guide:AddPicture( g_pPicture  )
g_pPicture:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_SKILLSLOT_CHANGE" )---스킬슬롯 체인지
g_pPicture:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(596,728 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 스킬 슬롯 체인지 가이드



----------단축키
g_pStatic_SKILL_TEXT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SKILL_TEXT )
g_pStatic_SKILL_TEXT:SetName( "SkillHotKeyEx" )
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "Q",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436-2+1,654 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "W",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436+51-2+1,654 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "E",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436+102-2,654 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "R",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436+153-2-1,654 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_SKILL_TEXT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SKILL_TEXT )
g_pStatic_SKILL_TEXT:SetName( "SkillHotKey" )
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "A",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436-2+1,654+51 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "S",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436+51-2+1,654+51 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 
g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "D",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436+102-2,654+51 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 

g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "F",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(436+153-2-1,654+51 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.2,0.2,1.0)",
} 


--쿨타임 비활성화
g_pStaticCollTimeFade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCollTimeFade )
g_pStaticCollTimeFade:SetName( "Static_Skill_Cool_Time_Fade" )
---하단 스킬 슬롯
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411-4,651+53 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411-4+46,651+53+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411+51-4,651+53 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411+51-4+46,651+53+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411+102-4,651+53 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411+102-4+46,651+53+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411+153-4,651+53 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411+153-4+46,651+53+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
--상단 스킬 슬롯

g_pStaticCollTimeFade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCollTimeFade )
g_pStaticCollTimeFade:SetName( "Static_Skill_Cool_Time_Fade_B" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411-4,653 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411-4+46,653+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411+51-4,653 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411+51-4+46,653+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411+102-4,653 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411+102-4+46,653+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCollTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(411+153-4,653 - MOVE_BAR_Y )",
	"RIGHT_BOTTOM		= D3DXVECTOR2(411+153-4+46,653+46 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
--쿨타임 
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Cool_Time" )
---하단 스킬 슬롯
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS		= D3DXVECTOR2(411-4+25,651+53+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS		= D3DXVECTOR2(411+51-4+25,651+53+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	 "POS	 	 	 = D3DXVECTOR2(411+102-4+25,651+53+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	 "POS			 = D3DXVECTOR2(411+153-4+25,651+53+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--상단 스킬 슬롯

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Cool_Time_B" )

g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS		= D3DXVECTOR2(411-4+25,653+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS		= D3DXVECTOR2(411+51-4+25,653+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	 "POS	 	 	 = D3DXVECTOR2(411+102-4+25,653+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic:AddString
{
	 -- MSG    		 = "1",
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE		 = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	 "POS			 = D3DXVECTOR2(411+153-4+25,653+12 - MOVE_BAR_Y )",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


-----활력의 검사 스킬 활성화
g_pStatic_EL_SKILL_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_SKILL_B )
g_pStatic_EL_SKILL_B:SetName( "Static_EL_SKILL_B" )
g_pStatic_EL_SKILL_B:SetShow(false)

-- 슬롯 1
g_pPicture_EL_SKILL_B_1 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_1)
g_pPicture_EL_SKILL_B_1:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 2
g_pPicture_EL_SKILL_B_2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_2)
g_pPicture_EL_SKILL_B_2:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+51-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 슬롯 3
g_pPicture_EL_SKILL_B_3 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_3)
g_pPicture_EL_SKILL_B_3:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+102-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 4
g_pPicture_EL_SKILL_B_4 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_4)
g_pPicture_EL_SKILL_B_4:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(411+153-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

g_pStatic_EL_SKILL_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_SKILL_B )
g_pStatic_EL_SKILL_B:SetName( "Static_EL_SKILL_B_B" )
g_pStatic_EL_SKILL_B:SetShow(false)

-- 슬롯 5
g_pPicture_EL_SKILL_B_1 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_1)
g_pPicture_EL_SKILL_B_1:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 6
g_pPicture_EL_SKILL_B_2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_2)
g_pPicture_EL_SKILL_B_2:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+51-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 슬롯 7
g_pPicture_EL_SKILL_B_3 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_3)
g_pPicture_EL_SKILL_B_3:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+102-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 8
g_pPicture_EL_SKILL_B_4 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_B:AddPicture( g_pPicture_EL_SKILL_B_4)
g_pPicture_EL_SKILL_B_4:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_B_EFFECT" )
g_pPicture_EL_SKILL_B_4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+153-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}


-----파괴의 검사 스킬 활성화
g_pStatic_EL_SKILL_R = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_SKILL_R )
g_pStatic_EL_SKILL_R:SetName( "Static_EL_SKILL_R" )
g_pStatic_EL_SKILL_R:SetShow(false)

-- 슬롯 1
g_pPicture_EL_SKILL_R_1 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_1)
g_pPicture_EL_SKILL_R_1:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 2
g_pPicture_EL_SKILL_R_2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_2)
g_pPicture_EL_SKILL_R_2:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+51-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 슬롯 3
g_pPicture_EL_SKILL_R_3 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_3)
g_pPicture_EL_SKILL_R_3:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+102-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 4
g_pPicture_EL_SKILL_R_4 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_4)
g_pPicture_EL_SKILL_R_4:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+153-4-8,651+53-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

g_pStatic_EL_SKILL_R = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_SKILL_R )
g_pStatic_EL_SKILL_R:SetName( "Static_EL_SKILL_R_B" )
g_pStatic_EL_SKILL_R:SetShow(false)

-- 슬롯 5
g_pPicture_EL_SKILL_R_1 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_1)
g_pPicture_EL_SKILL_R_1:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 6
g_pPicture_EL_SKILL_R_2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_2)
g_pPicture_EL_SKILL_R_2:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+51-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

-- 슬롯 7
g_pPicture_EL_SKILL_R_3 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_3)
g_pPicture_EL_SKILL_R_3:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+102-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}
-- 슬롯 8
g_pPicture_EL_SKILL_R_4 = g_pUIDialog:CreatePicture()
g_pStatic_EL_SKILL_R:AddPicture( g_pPicture_EL_SKILL_R_4)
g_pPicture_EL_SKILL_R_4:SetTex( "DLG_UI_Common_Texture20.TGA", "SKII_R_EFFECT" )
g_pPicture_EL_SKILL_R_4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(411+153-4-8,653-7 - MOVE_BAR_Y )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0, 0.7)",
	CHANGE_TIME			= 0.0,
}

--스킬슬롯 B 구매 가이드.
g_pButton_Notice_Slot = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Notice_Slot )
g_pButton_Notice_Slot:SetName( "Button_Buy_Guide_Slot" )
g_pButton_Notice_Slot:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_Notice_Slot:SetOverTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_Notice_Slot:SetDownTex( "DLG_Common_Button00.tga", "invisible" )
g_pButton_Notice_Slot:SetNormalPoint
{
     ADD_SIZE_X = 153+48,
	 ADD_SIZE_Y = 46,	 
 	"LEFT_TOP		= D3DXVECTOR2(411-4,653 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetOverPoint
{
     ADD_SIZE_X = 153+48,
	 ADD_SIZE_Y = 59, 
 	"LEFT_TOP		= D3DXVECTOR2(411-4,653 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetDownPoint
{                           
     ADD_SIZE_X = 153+48,
	 ADD_SIZE_Y = 59, 
 	"LEFT_TOP		= D3DXVECTOR2(411-4,653 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetGuideDesc( STR_ID_16473 )
g_pButton_Notice_Slot:SetCustomMsgMouseUp(  STATE_MENU_UI_CUSTOM_MSG["SMUCM_DISABLE_SKILL_SLOT_MOUSE_UP"] )


g_pStatic_LOCK = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LOCK )
g_pStatic_LOCK:SetName( "LOCK" )

g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(420,665 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(420+51,665 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(420+102,665 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLOCK = g_pUIDialog:CreatePicture()
g_pStatic_LOCK:AddPicture( g_pPictureLOCK )
g_pPictureLOCK:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "LOCK" )
g_pPictureLOCK:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(420+153,665 - MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(0.5,0.5,0.5,0.5)",
	CHANGE_TIME		= 0.0,
}
