-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "RIDING_SKILL_SLOT" )
g_pStatic:SetShow(true)

INT_MOVE_Y = -20
------------------------슬롯 A 타입----------------------------


--- Z 키 ---
g_pPicture_Slot1 = g_pUIDialog:CreatePicture() -- --picture 0
g_pStatic:AddPicture( g_pPicture_Slot1 )
g_pPicture_Slot1:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPicture_Slot1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(405,702+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- X 키 ---
g_pPicture_Slot2 = g_pUIDialog:CreatePicture() -- --picture 1
g_pStatic:AddPicture( g_pPicture_Slot2 )
g_pPicture_Slot2:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPicture_Slot2:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(405+51,702+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- C 키 ---
g_pPicture_Slot3 = g_pUIDialog:CreatePicture() -- --picture 2
g_pStatic:AddPicture( g_pPicture_Slot3 )
g_pPicture_Slot3:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPicture_Slot3:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(405+51*2,702+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- F 키 / 내리기버튼  ---
g_pPicture_Slot4 = g_pUIDialog:CreatePicture() -- --picture 3
g_pStatic:AddPicture( g_pPicture_Slot4 )
g_pPicture_Slot4:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SKILL_SLOT" )
g_pPicture_Slot4:SetPoint
{  

	ADD_SIZE_X = -15,
    ADD_SIZE_Y = -13,
	
	"LEFT_TOP		= D3DXVECTOR2(405+51*3+1,702+15-3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 

----- 스테미너 표시------

g_pStaticStamina = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStamina )
g_pStaticStamina:SetName( "STAMINA" )
g_pStaticStamina:SetShow(true)

--스테미너 배경
g_pPicture_StaminaBack = g_pUIDialog:CreatePicture() -- --picture 0
g_pStaticStamina:AddPicture( g_pPicture_StaminaBack )
g_pPicture_StaminaBack:SetTex( "DLG_UI_Common_Texture_RidingPet_01.TGA", "RIDING_STAMINA_BAR_BG" )
g_pPicture_StaminaBack:SetPoint
{  

	ADD_SIZE_X = 5,
	ADD_SIZE_Y = 2,
 
	"LEFT_TOP		= D3DXVECTOR2(406,702-14+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 

--스테미너 수치바 -- 
g_pPicture_StaminaCenter = g_pUIDialog:CreatePicture() -- --picture 1
g_pStaticStamina:AddPicture( g_pPicture_StaminaCenter )
g_pPicture_StaminaCenter:SetTex( "DLG_UI_Common_Texture_RidingPet_01.TGA", "RIDING_STAMINA_BAR" )
g_pPicture_StaminaCenter:SetPoint
{  
	ADD_SIZE_X = 5,
    ADD_SIZE_Y = 0,

	"LEFT_TOP		= D3DXVECTOR2(406,702-12+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 

--스테미너 수치-- 
g_pStaticStamina:AddString
{
    MSG 			= "C",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(406+5+90+35,702-12-3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}

------- Slot --------
--1번 Slot
g_pSlot = g_pUIDialog:CreateSlot()  --picture 4
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB0" ) --1
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(408,705+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(408-4,705-3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
--g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
--g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
--g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
--g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

--2번 Slot
g_pSlot = g_pUIDialog:CreateSlot()  --picture 4
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB1" ) --1
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(408+51,705+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(408-4+51,705-3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
--g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
--g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
--g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
--g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

--3번 Slot
g_pSlot = g_pUIDialog:CreateSlot()  --picture 4
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB2" ) --1
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 44,
    ADD_SIZE_Y = 44,
	"LEFT_TOP		= D3DXVECTOR2(408+51*2,705+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(408-4+51*2,705-3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
--g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
--g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
--g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
--g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

--4번 Slot
g_pSlot = g_pUIDialog:CreateSlot()  --picture 4
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB3" ) --1
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture64_NEW.tga", "Glow" )
g_pSlot:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP			= D3DXVECTOR2(408+51*3+1,714+3+INT_MOVE_Y)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(408+51*3+1+31,716+33+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	
	"LEFT_TOP		= D3DXVECTOR2(408+51*3+1-4+1,716-1+INT_MOVE_Y)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(408+51*3+1+33,716+37-1+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetDragable(false)
--g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
--g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
--g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
--g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )

--단축키--
g_pStatic_SKILL_TEXT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SKILL_TEXT )
g_pStatic_SKILL_TEXT:SetName( "SkillHotKey" )
g_pStatic_SKILL_TEXT:SetShow(true)

g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "Z",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(405+29, 702+3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}

g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "X",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(405+51+29, 702+3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}

g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "C",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(405+51*2+29, 702+3+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}

g_pStatic_SKILL_TEXT:AddString
{
    MSG 			= "F",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(405+51*3+1+18-2, 702+15-1+2+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}


--쿨타임 비활성화--
g_pStaticCoolTimeFade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCoolTimeFade )
g_pStaticCoolTimeFade:SetName( "Skill_CoolTime" )
--Slot1
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCoolTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(408,705+INT_MOVE_Y)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(408+45,705+45+INT_MOVE_Y)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
--Slot2
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCoolTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(408+51,705+INT_MOVE_Y)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(408+51+45,705+45+INT_MOVE_Y)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
--Slot3
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCoolTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(408+51*2,705+INT_MOVE_Y)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(408+51*2+45,705+45+INT_MOVE_Y)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)
--Slot4
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCoolTimeFade:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(408+51*3+1,714+3+INT_MOVE_Y)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(408+51*3+1+31,716+33+INT_MOVE_Y)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetShow(false)

--쿨타임 시간--
g_pStatic_CoolTime_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_CoolTime_Text )
g_pStatic_CoolTime_Text:SetName( "CoolTime" )
g_pStatic_CoolTime_Text:SetShow( true )

g_pStatic_CoolTime_Text:AddString
{
    MSG 			= "",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(431+1, 702+17+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}

g_pStatic_CoolTime_Text:AddString
{
    MSG 			= "",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(430+51+1, 702+17+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}

g_pStatic_CoolTime_Text:AddString
{
    MSG 			= "",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(429+51*2+1, 702+17+INT_MOVE_Y)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.3,0.2,0.2,1.0)",
}