-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Menu_Button" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )



g_pStaticMenu_Button = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button )
g_pStaticMenu_Button:SetName( "Static" )

-- #ifdef INT_WIDE_BAR
WIDE_BG_Y 	= 20
MOVE_BG_Y 	= -20
WIDE_BAR_Y  	= 4
MOVE_BAR_Y  	= -8
MOVE_TEXT_Y 	= -6
MOVE_BOX_Y 	= 0
-- #endif INT_WIDE_BAR

---경험치/근성도 BG
g_pPicture_EXP_BG_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_EXP_BG_LEFT )

g_pPicture_EXP_BG_LEFT:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_LEFT" )

g_pPicture_EXP_BG_LEFT:SetPoint
{
	ADD_SIZE_Y=	WIDE_BG_Y,		
	"LEFT_TOP		= D3DXVECTOR2(0,746 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_EXP_BG_CENTER = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_EXP_BG_CENTER )

g_pPicture_EXP_BG_CENTER:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_CENTER" )

g_pPicture_EXP_BG_CENTER:SetPoint
{
	ADD_SIZE_X=435,	
	ADD_SIZE_Y=	WIDE_BG_Y,		
	"LEFT_TOP		= D3DXVECTOR2(49,746 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---근성도_BG
g_pPicture_TIRED_BG_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_TIRED_BG_LEFT )

g_pPicture_TIRED_BG_LEFT:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_RIGHT" )

g_pPicture_TIRED_BG_LEFT:SetPoint
{
	ADD_SIZE_Y=	WIDE_BG_Y,	
	"LEFT_TOP		= D3DXVECTOR2(494,746 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TIRED_Bg_CENTER = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_TIRED_Bg_CENTER )

g_pPicture_TIRED_Bg_CENTER:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_CENTER_2" )

g_pPicture_TIRED_Bg_CENTER:SetPoint
{
	ADD_SIZE_X=433,	
	ADD_SIZE_Y=	WIDE_BG_Y,		
	"LEFT_TOP		= D3DXVECTOR2(569,746 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_TIRED_Bg_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_TIRED_Bg_RIGHT )

g_pPicture_TIRED_Bg_RIGHT:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_RIGHT_2" )

g_pPicture_TIRED_Bg_RIGHT:SetPoint
{
	ADD_SIZE_Y=	WIDE_BG_Y,			
	"LEFT_TOP		= D3DXVECTOR2(1011,746 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---경험치 Bar
g_pPicture_EXP_Gage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPicture_EXP_Gage )
g_pPicture_EXP_Gage:SetName( "StaticMenu_Button_EXP_Gauge" )

g_pPicture_EXP = g_pUIDialog:CreatePicture()
g_pPicture_EXP_Gage:AddPicture( g_pPicture_EXP )

g_pPicture_EXP:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP" )

g_pPicture_EXP:SetPoint
{
	ADD_SIZE_X=	438,
	ADD_SIZE_Y=	WIDE_BAR_Y,		
	"LEFT_TOP		= D3DXVECTOR2(47,760 + MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---근성도 bar
g_pStaticMenu_Button_Tired_Gage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button_Tired_Gage )
g_pStaticMenu_Button_Tired_Gage:SetName( "StaticMenu_Button_Tired_Gage" )

g_pPicture_TIRED = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button_Tired_Gage:AddPicture( g_pPicture_TIRED )
g_pPicture_TIRED:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "TIRED" )

g_pPicture_TIRED:SetPoint
{
	ADD_SIZE_X=	438,
	ADD_SIZE_Y=	WIDE_BAR_Y,		
	"LEFT_TOP		= D3DXVECTOR2(567,760 + MOVE_BAR_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--TEXT_경험치
--[[
g_pStaticMenu_Button_EXP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button_EXP )
g_pStaticMenu_Button_EXP:SetName( "StaticMenu_Button_EXP" )	 
--]]
--g_pStaticMenu_Button_EXP:AddString
g_pStaticMenu_Button:AddString
{
    MSG 			= "경험치",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(8,755 + MOVE_TEXT_Y )",		-- 경험치 스트링 가로 위치 -8, 2013-05-13 임홍락
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}  
--TEXT_근성도
--[[
g_pStaticMenu_Button_SPRIT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button_SPRIT )
g_pStaticMenu_Button_SPRIT:SetName( "StaticMenu_Button_SPRIT" )
--]]
--g_pStaticMenu_Button_SPRIT:AddString
g_pStaticMenu_Button:AddString
{
    MSG 			= "근성도",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(527-8,755 + MOVE_TEXT_Y )",		-- 근성도 스트링 가로 위치 -8, 2013-05-13 임홍락
	"COLOR			= D3DXCOLOR(0.7,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}  




--------------------------------------------------------------------------------------------


-- #ifdef INT_WIDE_BAR
ADD_ICON_X 	= -10
ADD_ICON_Y 	= -10
--MOVE_ICON_X  	= -8
MOVE_ICON_Y 	= -20
-- #endif INT_WIDE_BAR


--메인 버튼
---캐릭터
g_pButtonCharac = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCharac )
g_pButtonCharac:SetName( "Charac" )
g_pButtonCharac:SetNormalTex( "DLG_UI_Button_INT01.tga", "CHARACTER_NORMAL" )
g_pButtonCharac:SetOverTex( "DLG_UI_Button_INT01.tga", "CHARACTER_OVER" )
g_pButtonCharac:SetDownTex( "DLG_UI_Button_INT01.tga", "CHARACTER_OVER" )
g_pButtonCharac:SetDisableTex( "DLG_UI_Button_INT01.tga", "CHARACTER_NORMAL" )
g_pButtonCharac:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(712 -24 +28 +42,720 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(712-9 -24 +3 +28 +42,720-6 + MOVE_ICON_Y +1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(712-8 -24 + 2 +1 +28 +42 -4,720-5 + MOVE_ICON_Y -4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(712 -24 +28 +42,720 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetGuideDesc( STR_ID_2700 )
g_pButtonCharac:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO"] )
---인벤토리
g_pButtonInven = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInven )
g_pButtonInven:SetName( "Inven" )
g_pButtonInven:SetNormalTex( "DLG_UI_Button_INT01.tga", "INVEN_NORMAL" )
g_pButtonInven:SetOverTex( "DLG_UI_Button_INT01.tga", "INVEN_OVER" )
g_pButtonInven:SetDownTex( "DLG_UI_Button_INT01.tga", "INVEN_OVER" )
g_pButtonInven:SetDisableTex( "DLG_UI_Button_INT01.tga", "INVEN_NORMAL" )
g_pButtonInven:SetNormalPoint
{  
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(746 -25 +26 +38,720 + MOVE_ICON_Y +2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(746-8 -25 +3 +26 +38,720-6 + MOVE_ICON_Y +2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(746-7 -25 +2 +26 +38 -4 ,720-5 + MOVE_ICON_Y +2 -4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(746 -25 +20 +38,720 + MOVE_ICON_Y +2 )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetGuideDesc( STR_ID_2701 )
g_pButtonInven:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_INVENTORY"] )

--펫
g_pButtonPet = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPet )
g_pButtonPet:SetName( "Pet" )
g_pButtonPet:SetNormalTex( "DLG_UI_Button_INT01.tga", "PET_NORMAL" )
g_pButtonPet:SetOverTex( "DLG_UI_Button_INT01.tga", "PET_OVER" )
g_pButtonPet:SetDownTex( "DLG_UI_Button_INT01.tga", "PET_OVER" )
g_pButtonPet:SetDisableTex( "DLG_UI_Button_INT01.tga", "PET_NORMAL" )
g_pButtonPet:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(779 -25 +24 +34,721 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(779-7 -25 +1 +24 +34,721-8 + MOVE_ICON_Y +2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(779-6 -25 +24 +34 -4 ,721-7 + MOVE_ICON_Y +1 -4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(779 -25 +24 +34,721 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetGuideDesc( STR_ID_5383 )
g_pButtonPet:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PET_LIST"] )

---스킬
g_pButtonSkill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill )
g_pButtonSkill:SetName( "Skill" )
g_pButtonSkill:SetNormalTex( "DLG_UI_Button_INT01.tga", "SKILL_NORMAL" )
g_pButtonSkill:SetOverTex( "DLG_UI_Button_INT01.tga", "SKILL_OVER" )
g_pButtonSkill:SetDownTex( "DLG_UI_Button_INT01.tga", "SKILL_OVER" )
g_pButtonSkill:SetDisableTex( "DLG_UI_Button_INT01.tga", "SKILL_NORMAL" )
g_pButtonSkill:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(815 -28 +24 +30,718 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(815-7 -28 +2 +24 +30,718-6 + MOVE_ICON_Y+ 1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(815-6 -28 +2 +24 +30-4,718-5 + MOVE_ICON_Y -4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(815 -28 +24 +30,718 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill:SetGuideDesc( STR_ID_2702 )
g_pButtonSkill:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_SKILL_TREE"] )

---퀘스트
g_pButtonQuest = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest )
g_pButtonQuest:SetName( "Quest" )
g_pButtonQuest:SetNormalTex( "DLG_UI_Button_INT01.tga", "QUEST_NORMAL" )
g_pButtonQuest:SetOverTex( "DLG_UI_Button_INT01.tga", "QUEST_OVER" )
g_pButtonQuest:SetDownTex( "DLG_UI_Button_INT01.tga", "QUEST_OVER" )
g_pButtonQuest:SetDisableTex( "DLG_UI_Button_INT01.tga", "QUEST_NORMAL" )
g_pButtonQuest:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(851 -26 +22 +26,720 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(851-9 -26+3 +22 +26,720-6 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(851-7 -26 +2 +22 +26-4,720-5 + MOVE_ICON_Y -4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(944-152 -26 +22 +26,711 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetGuideDesc( STR_ID_18665 )
g_pButtonQuest:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_QUEST"] )


---길드
g_pButtonGuild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild )
g_pButtonGuild:SetName( "Guild" )
g_pButtonGuild:SetNormalTex( "DLG_UI_Button_INT01.tga", "GUILD_NORMAL" )
g_pButtonGuild:SetOverTex( "DLG_UI_Button_INT01.tga", "GUILD_OVER" )
g_pButtonGuild:SetDownTex( "DLG_UI_Button_INT01.tga", "GUILD_OVER" )
g_pButtonGuild:SetDisableTex( "DLG_UI_Button_INT01.tga", "GUILD_NORMAL" )
g_pButtonGuild:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(886 -25 +18 +22,721 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(886-9 -25 +3 +18 +22,721-7 + MOVE_ICON_Y + 1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(886-8 -25 +2 +18 +22-4,721-6 + MOVE_ICON_Y -4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(886 -25 +18 +22,721 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetGuideDesc( STR_ID_16507 )
g_pButtonGuild:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_GUILD"] )

----커뮤니티
g_pButtonComm = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonComm )
g_pButtonComm:SetName( "Comm" )
g_pButtonComm:SetNormalTex( "DLG_UI_Button_INT01.tga", "COMM_NORMAL" )
g_pButtonComm:SetOverTex( "DLG_UI_Button_INT01.tga", "COMM_OVER" )
g_pButtonComm:SetDownTex( "DLG_UI_Button_INT01.tga", "COMM_OVER" )
g_pButtonComm:SetDisableTex( "DLG_UI_Button_INT01.tga", "COMM_NORMAL" )
g_pButtonComm:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(920 -25 +14 +17,720 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(920-8 -25 +2 +14 +17,720-7 + MOVE_ICON_Y +1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(920-7 -25 +2 +14 +17-4,720-6 + MOVE_ICON_Y -4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(920 -25 +14 +17,720 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetGuideDesc( STR_ID_16506 )
g_pButtonComm:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMMUNITY"] )


---시스템
g_pButtonSystem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSystem )
g_pButtonSystem:SetName( "System" )
g_pButtonSystem:SetNormalTex( "DLG_UI_Button_INT01.tga", "SYSTEM_NORMAL" )
g_pButtonSystem:SetOverTex( "DLG_UI_Button_INT01.tga", "SYSTEM_OVER" )
g_pButtonSystem:SetDownTex( "DLG_UI_Button_INT01.tga", "SYSTEM_OVER" )
g_pButtonSystem:SetDisableTex( "DLG_UI_Button_INT01.tga", "SYSTEM_NORMAL" )
g_pButtonSystem:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(954 -17 +10 +12,720 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(954-7 -17 +2 +10 +12,720-8 + MOVE_ICON_Y +2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(954-6 -17 +2 +10 +12-4,720-7 + MOVE_ICON_Y +1 -4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(954 -17 +10 +12,720 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetGuideDesc( STR_ID_2706 )
g_pButtonSystem:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SYSTEM"] )


---캐쉬샵

g_pButtonCash = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCash )
g_pButtonCash:SetName( "Cash" )
g_pButtonCash:SetNormalTex( "DLG_UI_Button_INT01.tga", "SHOP_NORMAL" )
g_pButtonCash:SetOverTex( "DLG_UI_Button_INT01.tga", "SHOP_OVER" )
g_pButtonCash:SetDownTex( "DLG_UI_Button_INT01.tga", "SHOP_OVER" )
g_pButtonCash:SetDisableTex( "DLG_UI_Button_INT01.tga", "SHOP_NORMAL" )
g_pButtonCash:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(987 -10 +7 +5,718 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(987-6 -12 -2 +7 +5,718-6 + MOVE_ICON_Y -3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(987-5 -12 -2 +7 +5 -4,718-5 + MOVE_ICON_Y -3 -3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
 	"LEFT_TOP		= D3DXVECTOR2(987 -10 +7 +5,718 + MOVE_ICON_Y )",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CASH_SHOP"] )
g_pButtonCash:SetEnable( true )





---가이드북
g_pButtonGuide = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuide )
g_pButtonGuide:SetName( "Guide" )
g_pButtonGuide:SetNormalTex( "DLG_UI_Button_INT01.tga", "BOOK_NORMAL" )
g_pButtonGuide:SetOverTex( "DLG_UI_Button_INT01.tga", "BOOK_OVER" )
g_pButtonGuide:SetDownTex( "DLG_UI_Button_INT01.tga", "BOOK_OVER" )
g_pButtonGuide:SetDisableTex( "DLG_UI_Button_INT01.tga", "BOOK_NORMAL" )
g_pButtonGuide:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X +3,
     ADD_SIZE_Y = ADD_ICON_Y +3,
 	"LEFT_TOP		= D3DXVECTOR2(682 -23 +28 +44,726 + MOVE_ICON_Y -3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X +3,
     ADD_SIZE_Y = ADD_ICON_Y +3,
 	"LEFT_TOP		= D3DXVECTOR2(682-4 -23 -1 +28 +44,726-4 + MOVE_ICON_Y -2 -3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X +3,
     ADD_SIZE_Y = ADD_ICON_Y +3,
     ADD_SIZE_X = 0,
     ADD_SIZE_Y = 0,
 	"LEFT_TOP		= D3DXVECTOR2(682-3 -23 +28 +44 -4,726-3 + MOVE_ICON_Y -2 -3 -4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X +3,
     ADD_SIZE_Y = ADD_ICON_Y +3,
 	"LEFT_TOP		= D3DXVECTOR2(682 -23 +28 +44,726 + MOVE_ICON_Y -3  )",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE"] )
g_pButtonGuide:SetGuideDesc( STR_ID_2724 )
g_pButtonGuide:SetEnable( true )


--SERV_ADD_WARP_BUTTON
---이동 티켓  
g_pButtonWarp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWarp )
g_pButtonWarp:SetName( "Warp" )
g_pButtonWarp:SetNormalTex( "DLG_UI_Button_INT01.tga", "WARP_NORMAL" )
g_pButtonWarp:SetOverTex( "DLG_UI_Button_INT01.tga", "WARP_OVER" )
g_pButtonWarp:SetDownTex( "DLG_UI_Button_INT01.tga", "WARP_OVER" )
g_pButtonWarp:SetDisableTex( "DLG_UI_Button_INT01.tga", "WARP_NORMAL" )
g_pButtonWarp:SetNormalPoint
{
     ADD_SIZE_X = ADD_ICON_X-4,
     ADD_SIZE_Y = ADD_ICON_Y-4,
 	"LEFT_TOP		= D3DXVECTOR2(650 -40 +34 +48,718 + MOVE_ICON_Y +4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWarp:SetOverPoint
{
     ADD_SIZE_X = ADD_ICON_X-4,
     ADD_SIZE_Y = ADD_ICON_Y-4,
	"LEFT_TOP		= D3DXVECTOR2(650-7 -40 +2 +34 +48,718-6 + MOVE_ICON_Y +1 +4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWarp:SetDownPoint
{
     ADD_SIZE_X = ADD_ICON_X-4,
     ADD_SIZE_Y = ADD_ICON_Y-4,
     ADD_SIZE_X = -6,
     ADD_SIZE_Y = -6,
 	"LEFT_TOP		= D3DXVECTOR2(650-6 -40 +1 +34 +48 -4 ,718-5 + MOVE_ICON_Y +4 -4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWarp:SetDisablePoint
{
     ADD_SIZE_X = ADD_ICON_X-4,
     ADD_SIZE_Y = ADD_ICON_Y-4,
 	"LEFT_TOP		= D3DXVECTOR2(650 -40 +34 +48,718 + MOVE_ICON_Y +4)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}

g_pButtonWarp:SetGuideDesc( STR_ID_24618 )
g_pButtonWarp:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_WARP_BUTTON"] )
--SERV_ADD_WARP_BUTTON



---------------------------------------------------------------------------------------------------------










------------ 새로운것을 얻거나 배우거나 살것이 있을때 뜨는 NEW IMAGE

--펫 진환 NEW
g_pStatic_Pet_Inventory_Evolution = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Inventory_Evolution )
g_pStatic_Pet_Inventory_Evolution:SetName( "Pat_Inventory_Evolution" )

g_pPicture_Image = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Inventory_Evolution:AddPicture( g_pPicture_Image )
g_pPicture_Image:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "EVOLUTION_EFFECT" )
g_pPicture_Image:SetPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(785 -25 +24 +36 ,705 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
--------- 펫(소환가능) NEW
g_pStatic_Pet_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_New )
g_pStatic_Pet_New:SetName( "Pat_Inventory_New" )

g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStatic_Pet_New:AddPicture( g_pPictureImage )
g_pPictureImage:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "MENU_NEW" )
g_pPictureImage:SetPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y, 
	"LEFT_TOP		= D3DXVECTOR2(785 -25 +24 + 36 ,703 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---------인벤토리  NEW
g_pStaticInventory_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInventory_New )
g_pStaticInventory_New:SetName( "Inventory_New" )

g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticInventory_New:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "MENU_NEW" )

g_pPictureImage:SetPoint
{ 
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(750 -25 +26 +39,703 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----스킬 NEW
g_pStaticSkill_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_New )
g_pStaticSkill_New:SetName( "Skill_New" )

g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticSkill_New:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "MENU_NEW" )

g_pPictureImage:SetPoint
{  
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(820 -28 +24 +34,703 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---캐쉬샵 NEW
g_pStaticCash_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCash_New )
g_pStaticCash_New:SetName( "Cash_New" )
--g_pStaticCash_New:SetShowEnable( false, false )
g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticCash_New:AddPicture( g_pPictureImage )
g_pPictureImage:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "MENU_NEW" )
g_pPictureImage:SetPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(995 -8 +7 +5,703 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--SERV_ADD_WARP_BUTTON
---이동티켓 VIP
g_pStaticWarp_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWarp_New )
g_pStaticWarp_New:SetName( "Warp_VIP" )
g_pStaticWarp_New:SetShowEnable( false, false )
g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticWarp_New:AddPicture( g_pPictureImage )
g_pPictureImage:SetTex( "DLG_UI_Button_INT01.TGA", "WARP_VIP" )
g_pPictureImage:SetPoint
{
     ADD_SIZE_X = ADD_ICON_X,
     ADD_SIZE_Y = ADD_ICON_Y,
	"LEFT_TOP		= D3DXVECTOR2(642 -10 +34 +36 ,705 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--SERV_ADD_WARP_BUTTON

-- SHOW_DISCOUNT_TAG
g_pStatic_Discount_Tag = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Discount_Tag )
g_pStatic_Discount_Tag:SetName("DiscountTag")
g_pStatic_Discount_Tag:SetShowEnable( false, false )
g_pPicture_Discount_Tag = g_pUIDialog:CreatePicture()
g_pStatic_Discount_Tag:AddPicture( g_pPicture_Discount_Tag )
g_pPicture_Discount_Tag:SetTex( "DLG_UI_Button_INT01.TGA", "DISCOUNT_25" )
g_pPicture_Discount_Tag:SetPoint
{
	ADD_SIZE_X		= - 30,
	ADD_SIZE_Y		= - 20,
	"LEFT_TOP		= D3DXVECTOR2(842 +50 +36 ,705 - 10 + MOVE_ICON_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- SHOW_DISCOUNT_TAG

--------------------------------------------------------------------------------------------------------------------------------












----------파티,친구,길드만보기

g_pStaticParty_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Sign )
g_pStaticParty_Sign:SetName( "Static_MyPartyOnly" )

g_pPictureLook_Off = g_pUIDialog:CreatePicture()
g_pStaticParty_Sign:AddPicture( g_pPictureLook_Off )
g_pPictureLook_Off:SetTex( "DLG_UI_Button19_NEW.TGA", "F5_NORMAL" )

g_pPictureLook_Off:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(865+43-44,658-4 + MOVE_BOX_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticParty_Sign:AddPicture( g_pPictureLook_On )
g_pPictureLook_On:SetTex( "DLG_UI_Button19_NEW.TGA", "F5_OVER" )
g_pPictureLook_On:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(865+43-44,657-4 + MOVE_BOX_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----------SD로 표시

g_pStaticSD_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSD_Sign )
g_pStaticSD_Sign:SetName( "Static_SDMode" )

g_pPictureLook_Off = g_pUIDialog:CreatePicture()
g_pStaticSD_Sign:AddPicture( g_pPictureLook_Off )
g_pPictureLook_Off:SetTex( "DLG_UI_Button19_NEW.TGA", "F6_NORMAL" )
g_pPictureLook_Off:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(865+43+64-44,658-4 + MOVE_BOX_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticSD_Sign:AddPicture( g_pPictureLook_On )
g_pPictureLook_On:SetTex( "DLG_UI_Button19_NEW.TGA", "F6_OVER" )
g_pPictureLook_On:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(865+43+64-44,657-4 + MOVE_BOX_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

-----------도움말 

g_pStaticHelp_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHelp_Sign )
g_pStaticHelp_Sign:SetName( "Static_ShowHelp" )

g_pPictureLook_Off = g_pUIDialog:CreatePicture()
g_pStaticHelp_Sign:AddPicture( g_pPictureLook_Off )
g_pPictureLook_Off:SetTex( "DLG_UI_Button19_NEW.TGA", "F1_NORMAL" )
g_pPictureLook_Off:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(865+113,658-4 + MOVE_BOX_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticHelp_Sign:AddPicture( g_pPictureLook_On )
g_pPictureLook_On:SetTex( "DLG_UI_Button19_NEW.TGA", "F1_OVER" )
g_pPictureLook_On:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(865+113,657-4 + MOVE_BOX_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
--------경험치바 descv
g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "Button_Invisible_ExpGuage" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
    ADD_SIZE_X = 435,	 
	ADD_SIZE_Y = 20 + WIDE_BG_Y,
 	"LEFT_TOP		= D3DXVECTOR2(0,756-5 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
    ADD_SIZE_X = 435,	 
	ADD_SIZE_Y = 20 + WIDE_BG_Y,	 
 	"LEFT_TOP		= D3DXVECTOR2(0,756-5 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    ADD_SIZE_X = 435,	 
	ADD_SIZE_Y = 20 + WIDE_BG_Y,	 
 	"LEFT_TOP		= D3DXVECTOR2(0,756-5 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity1:ChangeMouseOverSound_LUA( "" )

--------근성도바 desc
g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "Button_Invisible_SpiritGuage" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
    ADD_SIZE_X = 430,	 
	ADD_SIZE_Y = 20 + WIDE_BG_Y,
	"LEFT_TOP		= D3DXVECTOR2(514,756-5 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
    ADD_SIZE_X = 430,	 
	ADD_SIZE_Y = 20 + WIDE_BG_Y,
	"LEFT_TOP		= D3DXVECTOR2(514,756-5 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    ADD_SIZE_X = 430,	
	ADD_SIZE_Y = 20 + WIDE_BG_Y,	 
	"LEFT_TOP		= D3DXVECTOR2(514,756-5 + MOVE_BG_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity1:ChangeMouseOverSound_LUA( "" )