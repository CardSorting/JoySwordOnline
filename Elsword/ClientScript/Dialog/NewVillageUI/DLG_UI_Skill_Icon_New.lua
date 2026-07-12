-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 스킬 배경 백판 -----------------------------------------------------------------------
g_pStaticBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBG )
g_pStaticBG:SetName( "g_pStatic_BackGround" )

-- 한쪽 배경 백판
g_pPictureBG = g_pUIDialog:CreatePicture()
g_pStaticBG:AddPicture( g_pPictureBG )
g_pPictureBG:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_SkillBack_Box2" )
g_pPictureBG:SetPoint
{
    -- ADD_SIZE_X = 299+186,
	"LEFT_TOP		= D3DXVECTOR2(77,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 양쪽 배경 백판
g_pPictureBG = g_pUIDialog:CreatePicture()
g_pStaticBG:AddPicture( g_pPictureBG )
g_pPictureBG:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_SkillBack_Box1" )
g_pPictureBG:SetPoint
{
    -- ADD_SIZE_X = 299+186,
	"LEFT_TOP		= D3DXVECTOR2(79,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 양쪽 배경 백판 가운데 선
g_pPictureBG = g_pUIDialog:CreatePicture()
g_pStaticBG:AddPicture( g_pPictureBG )
g_pPictureBG:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Box1_Line" )
g_pPictureBG:SetPoint
{
    -- ADD_SIZE_X = 299+186,
	"LEFT_TOP		= D3DXVECTOR2(184,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 스킬 백판 ----------------------------------------------------------------------------
g_pStaticSkillBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillBG )
g_pStaticSkillBG:SetName( "g_pStatic_SkillBackGround" )

g_pPictureSkillBG = g_pUIDialog:CreatePicture()
g_pStaticSkillBG:AddPicture( g_pPictureSkillBG )
g_pPictureSkillBG:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG_Passive" )				-- 0
g_pPictureSkillBG:SetPoint
{
	ADD_SIZE_X = -1,
	"LEFT_TOP		= D3DXVECTOR2(88,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureSkillBG2 = g_pUIDialog:CreatePicture()
g_pStaticSkillBG:AddPicture( g_pPictureSkillBG2 )
g_pPictureSkillBG2:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_SkillSp_Text_Box" )	-- 1
g_pPictureSkillBG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(88,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 스킬 마스터 이미지 -------------------------------------------------------------------
g_pStaticSkillMaster = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillMaster )
g_pStaticSkillMaster:SetName( "g_pStatic_SkillMaster" )

g_pPictureSkillMaster = g_pUIDialog:CreatePicture()
g_pStaticSkillMaster:AddPicture( g_pPictureSkillMaster )
g_pPictureSkillMaster:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bt_SkillMaster" )
g_pPictureSkillMaster:SetPoint
{
    -- ADD_SIZE_X = 299+186,
	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 스킬 습득 불가 이미지 ----------------------------------------------------------------
g_pStaticSkillNoLearn = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillNoLearn )
g_pStaticSkillNoLearn:SetName( "g_pStatic_SkillNoLearn" )

g_pPictureSkillNoLearn = g_pUIDialog:CreatePicture()
g_pStaticSkillNoLearn:AddPicture( g_pPictureSkillNoLearn )
g_pPictureSkillNoLearn:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_SkillBack_NoChoice" )
g_pPictureSkillNoLearn:SetPoint
{
    -- ADD_SIZE_X = 299+186,
	"LEFT_TOP		= D3DXVECTOR2(87,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 스킬 상태 버튼 -----------------------------------------------------------------------
g_pButtonSkillLearn = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkillLearn )
g_pButtonSkillLearn:SetName( "g_pButton_SkillLearn" )
g_pButtonSkillLearn:SetNormalTex( "DLG_UI_Button11.tga", "Plus_Normal" )
g_pButtonSkillLearn:SetOverTex( "DLG_UI_Button11.tga", "Plus_Over" )
g_pButtonSkillLearn:SetDownTex( "DLG_UI_Button11.tga", "Plus_Over" )
g_pButtonSkillLearn:SetDisableTex( "DLG_UI_Button11.tga", "Plus_Gray" )

g_pButtonSkillLearn:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillLearn:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(89,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillLearn:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(90,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillLearn:SetDisablePoint
{
	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillLearn:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_PLUS"] )



-- 스킬 툴팁용 버튼 ---------------------------------------------------------------------
g_pButtonSkillDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkillDesc )
g_pButtonSkillDesc:SetName( "g_pButton_SkillDesc" )
g_pButtonSkillDesc:SetNormalTex( "DLG_UI_Button11.tga", "Plus_Normal" )
g_pButtonSkillDesc:SetOverTex( "DLG_UI_Button11.tga", "Plus_Over" )
g_pButtonSkillDesc:SetDownTex( "DLG_UI_Button11.tga", "Plus_Over" )
g_pButtonSkillDesc:SetDisableTex( "DLG_UI_Button11.tga", "Plus_Gray" )

g_pButtonSkillDesc:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillDesc:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(89,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillDesc:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(90,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillDesc:SetDisablePoint
{
	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillDesc:SetGuideDesc( "" )



-- 스킬 되돌리기 버튼 -------------------------------------------------------------------
g_pButtonSkillInit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkillInit )
g_pButtonSkillInit:SetName( "g_pButton_SkillInit" )
g_pButtonSkillInit:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Return_Normal" )
g_pButtonSkillInit:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Return_Over" )
g_pButtonSkillInit:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Return_Over" )
g_pButtonSkillInit:SetDisableTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillReturn_Inable" )

g_pButtonSkillInit:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillInit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillInit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(92,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillInit:SetDisablePoint
{
	"LEFT_TOP		= D3DXVECTOR2(91,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkillInit:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_INIT_SKILL"] )



-- 스킬 정보 표시 스트링 ----------------------------------------------------------------
g_pStaticString = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticString )
g_pStaticString:SetName( "g_pStatic_StringInfo" )



-- 요구 SP 표시 (조건만족 시:파란 컬러 / 불만족 시:빨간 컬러)
g_pStaticString:AddString		-- 0
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(123,66)",
	"COLOR			= D3DXCOLOR(0.0,0.5,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}



-- 스킬 슬롯 ----------------------------------------------------------------------------
g_pSlotSkillTree = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlotSkillTree )
g_pSlotSkillTree:SetName( "g_pSlot_SkillTree" )
g_pSlotSkillTree:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlotSkillTree:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlotSkillTree:SetPoint
{
    ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
    "LEFT_TOP		= D3DXVECTOR2(91,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlotSkillTree:SetMouseOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(91-7,16-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlotSkillTree:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOT_RMOUSEUP"] )
g_pSlotSkillTree:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOT_MOUSEIN"] )
g_pSlotSkillTree:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOT_MOUSEOUT"] )



-- 자물쇠 -------------------------------------------------------------------------------
g_pStaticSkill_Lock = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Lock )
g_pStaticSkill_Lock:SetName( "g_pStaticSkill_Lock" )


g_pPictureSkill_Lock = g_pUIDialog:CreatePicture()
g_pStaticSkill_Lock:AddPicture( g_pPictureSkill_Lock )

g_pPictureSkill_Lock:SetTex( "DLG_UI_Common_Texture11.TGA", "Lock" )

g_pPictureSkill_Lock:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(98,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}