-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Menu_Button" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )



g_pStaticMenu_Button = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button )
g_pStaticMenu_Button:SetName( "Static" )


---경험치/근성도 BG
g_pPicture_EXP_BG_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_EXP_BG_LEFT )

g_pPicture_EXP_BG_LEFT:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_LEFT" )

g_pPicture_EXP_BG_LEFT:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(0,746)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_EXP_BG_CENTER = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_EXP_BG_CENTER )

g_pPicture_EXP_BG_CENTER:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_CENTER" )

g_pPicture_EXP_BG_CENTER:SetPoint
{
	ADD_SIZE_X=435,	
	"LEFT_TOP		= D3DXVECTOR2(49,746)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---근성도_BG
g_pPicture_TIRED_BG_LEFT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_TIRED_BG_LEFT )

g_pPicture_TIRED_BG_LEFT:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_RIGHT" )

g_pPicture_TIRED_BG_LEFT:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(494,746)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TIRED_Bg_CENTER = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_TIRED_Bg_CENTER )

g_pPicture_TIRED_Bg_CENTER:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_CENTER_2" )

g_pPicture_TIRED_Bg_CENTER:SetPoint
{
	ADD_SIZE_X=433,	
	"LEFT_TOP		= D3DXVECTOR2(569,746)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_TIRED_Bg_RIGHT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPicture_TIRED_Bg_RIGHT )

g_pPicture_TIRED_Bg_RIGHT:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_BG_RIGHT_2" )

g_pPicture_TIRED_Bg_RIGHT:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(1011,746)",
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
	"LEFT_TOP		= D3DXVECTOR2(47,760)",
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
	"LEFT_TOP		= D3DXVECTOR2(567,760)",
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
	"POS 			= D3DXVECTOR2(8,755)",
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
	"POS 			= D3DXVECTOR2(527,755)",
	"COLOR			= D3DXCOLOR(0.7,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}  



--메인 버튼
---캐릭터
g_pButtonCharac = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCharac )
g_pButtonCharac:SetName( "Charac" )
g_pButtonCharac:SetNormalTex( "DLG_UI_Button19_NEW.tga", "CHARACTER_NORMAL" )
g_pButtonCharac:SetOverTex( "DLG_UI_Button19_NEW.tga", "CHARACTER_OVER" )
g_pButtonCharac:SetDownTex( "DLG_UI_Button19_NEW.tga", "CHARACTER_OVER" )
g_pButtonCharac:SetDisableTex( "DLG_UI_Button19_NEW.tga", "CHARACTER_NORMAL" )
g_pButtonCharac:SetNormalPoint
{      
 	"LEFT_TOP		= D3DXVECTOR2(712,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(712-9,720-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(712-8,720-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(712,720)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetGuideDesc( STR_ID_2700 )
g_pButtonCharac:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO"] )
---인벤토리
g_pButtonInven = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInven )
g_pButtonInven:SetName( "Inven" )
g_pButtonInven:SetNormalTex( "DLG_UI_Button19_NEW.tga", "INVEN_NORMAL" )
g_pButtonInven:SetOverTex( "DLG_UI_Button19_NEW.tga", "INVEN_OVER" )
g_pButtonInven:SetDownTex( "DLG_UI_Button19_NEW.tga", "INVEN_OVER" )
g_pButtonInven:SetDisableTex( "DLG_UI_Button19_NEW.tga", "INVEN_NORMAL" )
g_pButtonInven:SetNormalPoint
{   
 	"LEFT_TOP		= D3DXVECTOR2(746,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(746-8,720-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(746-7,720-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(746,720)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetGuideDesc( STR_ID_2701 )
g_pButtonInven:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_INVENTORY"] )


---- 소환수
 
g_pButtonPet = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPet )
g_pButtonPet:SetName( "Pet" )
g_pButtonPet:SetNormalTex( "DLG_UI_Button_RidingPet_01.tga", "SUMMON_NORMAL" )
g_pButtonPet:SetOverTex( "DLG_UI_Button_RidingPet_01.tga", "SUMMON_OVER" )
g_pButtonPet:SetDownTex( "DLG_UI_Button_RidingPet_01.tga", "SUMMON_OVER" )
g_pButtonPet:SetDisableTex( "DLG_UI_Button_RidingPet_01.tga", "SUMMON_NORMAL" )
g_pButtonPet:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(780-1+2,721-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(779-7+2,721-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(779-6+2,721-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(779+2,721)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPet:SetGuideDesc( STR_ID_5383 )
g_pButtonPet:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PET_LIST"] )

---스킬
g_pButtonSkill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill )
g_pButtonSkill:SetName( "Skill" )
g_pButtonSkill:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SKILL_NORMAL" )
g_pButtonSkill:SetOverTex( "DLG_UI_Button19_NEW.tga", "SKILL_OVER" )
g_pButtonSkill:SetDownTex( "DLG_UI_Button19_NEW.tga", "SKILL_OVER" )
g_pButtonSkill:SetDisableTex( "DLG_UI_Button19_NEW.tga", "SKILL_NORMAL" )
g_pButtonSkill:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(815,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(815-7,718-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(815-6,718-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(815,718)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill:SetGuideDesc( STR_ID_2702 )
g_pButtonSkill:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_SKILL_TREE"] )

---퀘스트
g_pButtonQuest = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest )
g_pButtonQuest:SetName( "Quest" )
g_pButtonQuest:SetNormalTex( "DLG_UI_Button19_NEW.tga", "QUEST_NORMAL" )
g_pButtonQuest:SetOverTex( "DLG_UI_Button19_NEW.tga", "QUEST_OVER" )
g_pButtonQuest:SetDownTex( "DLG_UI_Button19_NEW.tga", "QUEST_OVER" )
g_pButtonQuest:SetDisableTex( "DLG_UI_Button19_NEW.tga", "QUEST_NORMAL" )
g_pButtonQuest:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(851,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(851-9,720-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(851-7,720-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(944-152,711)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetGuideDesc( STR_ID_18665 )
g_pButtonQuest:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_QUEST"] )


---길드
g_pButtonGuild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild )
g_pButtonGuild:SetName( "Guild" )
g_pButtonGuild:SetNormalTex( "DLG_UI_Button19_NEW.tga", "GUILD_NORMAL" )
g_pButtonGuild:SetOverTex( "DLG_UI_Button19_NEW.tga", "GUILD_OVER" )
g_pButtonGuild:SetDownTex( "DLG_UI_Button19_NEW.tga", "GUILD_OVER" )
g_pButtonGuild:SetDisableTex( "DLG_UI_Button19_NEW.tga", "GUILD_NORMAL" )
g_pButtonGuild:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(886,721)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(886-9,721-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(886-8,721-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(886,721)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetGuideDesc( STR_ID_16507 )
g_pButtonGuild:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_GUILD"] )

----커뮤니티
g_pButtonComm = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonComm )
g_pButtonComm:SetName( "Comm" )
g_pButtonComm:SetNormalTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButtonComm:SetOverTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButtonComm:SetDownTex( "DLG_UI_Button19_NEW.tga", "COMM_OVER" )
g_pButtonComm:SetDisableTex( "DLG_UI_Button19_NEW.tga", "COMM_NORMAL" )
g_pButtonComm:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(920,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(920-8,720-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(920-7,720-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(920,720)",
    "COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButtonComm:SetGuideDesc( STR_ID_16506 )
g_pButtonComm:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMMUNITY"] )


---시스템
g_pButtonSystem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSystem )
g_pButtonSystem:SetName( "System" )
g_pButtonSystem:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SYSTEM_NORMAL" )
g_pButtonSystem:SetOverTex( "DLG_UI_Button19_NEW.tga", "SYSTEM_OVER" )
g_pButtonSystem:SetDownTex( "DLG_UI_Button19_NEW.tga", "SYSTEM_OVER" )
g_pButtonSystem:SetDisableTex( "DLG_UI_Button19_NEW.tga", "SYSTEM_NORMAL" )
g_pButtonSystem:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(954,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(954-7,720-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(954-6,720-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(954,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSystem:SetGuideDesc( STR_ID_2706 )
g_pButtonSystem:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SYSTEM"] )


---캐쉬샵

g_pButtonCash = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCash )
g_pButtonCash:SetName( "Cash" )
g_pButtonCash:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SHOP_NORMAL" )
g_pButtonCash:SetOverTex( "DLG_UI_Button19_NEW.tga", "SHOP_OVER" )
g_pButtonCash:SetDownTex( "DLG_UI_Button19_NEW.tga", "SHOP_OVER" )
g_pButtonCash:SetDisableTex( "DLG_UI_Button19_NEW.tga", "SHOP_NORMAL" )
g_pButtonCash:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(987,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(987-6,718-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(987-5,718-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(987,718)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CASH_SHOP"] )
g_pButtonCash:SetEnable( true )

---가이드북
g_pButtonGuide = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuide )
g_pButtonGuide:SetName( "Guide" )
g_pButtonGuide:SetNormalTex( "DLG_UI_Button19_NEW.tga", "BOOK_NORMAL" )
g_pButtonGuide:SetOverTex( "DLG_UI_Button19_NEW.tga", "BOOK_OVER" )
g_pButtonGuide:SetDownTex( "DLG_UI_Button19_NEW.tga", "BOOK_OVER" )
g_pButtonGuide:SetDisableTex( "DLG_UI_Button19_NEW.tga", "BOOK_NORMAL" )
g_pButtonGuide:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(682,726)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetOverPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(682-4,726-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(682-3,726-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(682,726)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuide:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE"] )
g_pButtonGuide:SetGuideDesc( STR_ID_2724 )
g_pButtonGuide:SetEnable( true )


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
	"LEFT_TOP		= D3DXVECTOR2(785,705)",
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
  
	"LEFT_TOP		= D3DXVECTOR2(785,703)",
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
	"LEFT_TOP		= D3DXVECTOR2(750,703)",
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
	"LEFT_TOP		= D3DXVECTOR2(820,703)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---캐쉬샵 NEW
g_pStaticCash_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCash_New )
g_pStaticCash_New:SetName( "Cash_New" )
g_pStaticCash_New:SetShowEnable( false, false )
g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticCash_New:AddPicture( g_pPictureImage )
g_pPictureImage:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "MENU_NEW" )
g_pPictureImage:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(995,703)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------파티,친구,길드만보기

g_pStaticParty_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Sign )
g_pStaticParty_Sign:SetName( "Static_MyPartyOnly" )

g_pPictureLook_Off = g_pUIDialog:CreatePicture()
g_pStaticParty_Sign:AddPicture( g_pPictureLook_Off )
g_pPictureLook_Off:SetTex( "DLG_UI_Button19_NEW.TGA", "F5_NORMAL" )

g_pPictureLook_Off:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(865+43-44,658-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticParty_Sign:AddPicture( g_pPictureLook_On )
g_pPictureLook_On:SetTex( "DLG_UI_Button19_NEW.TGA", "F5_OVER" )
g_pPictureLook_On:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(865+43-44,657-4)",
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
	
	"LEFT_TOP		= D3DXVECTOR2(865+43+64-44,658-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticSD_Sign:AddPicture( g_pPictureLook_On )
g_pPictureLook_On:SetTex( "DLG_UI_Button19_NEW.TGA", "F6_OVER" )
g_pPictureLook_On:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(865+43+64-44,657-4)",
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
	"LEFT_TOP		= D3DXVECTOR2(865+113,658-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticHelp_Sign:AddPicture( g_pPictureLook_On )
g_pPictureLook_On:SetTex( "DLG_UI_Button19_NEW.TGA", "F1_OVER" )
g_pPictureLook_On:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(865+113,657-4)",
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
	ADD_SIZE_Y = 20,
 	"LEFT_TOP		= D3DXVECTOR2(0,756-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
    ADD_SIZE_X = 435,	 
	ADD_SIZE_Y = 20,	 
 	"LEFT_TOP		= D3DXVECTOR2(0,756-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    ADD_SIZE_X = 435,	 
	ADD_SIZE_Y = 20,	 
 	"LEFT_TOP		= D3DXVECTOR2(0,756-5)",
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
	ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(514,756-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
    ADD_SIZE_X = 430,	 
	ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(514,756-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    ADD_SIZE_X = 430,	
	ADD_SIZE_Y = 20,	 
	"LEFT_TOP		= D3DXVECTOR2(514,756-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity1:ChangeMouseOverSound_LUA( "" )