-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 09.05.21 태완 : 이 LUA 자체는 Dialog로서 사용할 계획이 없음. 여러번 읽어들일 용도.


-------------------------- BackGround Static -------------------

g_pStaticSkill_Icon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Icon )
g_pStaticSkill_Icon:SetName( "g_pStaticSkill_Background" )


g_pPicture_Bg_Active = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon:AddPicture( g_pPicture_Bg_Active )

g_pPicture_Bg_Active:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG_Active" )

g_pPicture_Bg_Active:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(14-1,13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Bg_Active_Special = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon:AddPicture( g_pPicture_Bg_Active_Special )

g_pPicture_Bg_Active_Special:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG_Active_Special" )

g_pPicture_Bg_Active_Special:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(14-1,13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Bg_Active_Buff = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon:AddPicture( g_pPicture_Bg_Active_Buff )

g_pPicture_Bg_Active_Buff:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG_Active_Buff" )

g_pPicture_Bg_Active_Buff:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(14-1,13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Bg_Passive = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon:AddPicture( g_pPicture_Bg_Passive )

g_pPicture_Bg_Passive:SetTex( "DLG_UI_Common_Texture10.TGA", "Skill_BG_Passive" )

g_pPicture_Bg_Passive:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(14-1,13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[ 결혼시스템 #define ADDED_RELATIONSHIP_SYSTEM
g_pPicture_Bg_Relation = g_pUIDialog:CreatePicture()
g_pStaticSkill_Icon:AddPicture( g_pPicture_Bg_Relation )

g_pPicture_Bg_Relation:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_Skill_Marriage" )

g_pPicture_Bg_Relation:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(14-1,13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


--[[
	---------아이콘 들어갈 위치 -------
	g_pStaticSkill_Icon = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSkill_Icon )
	g_pStaticSkill_Icon:SetName( "g_pStaticSkill_Icon" )



	g_pPicture_Bg = g_pUIDialog:CreatePicture()
	g_pStaticSkill_Icon:AddPicture( g_pPicture_Bg )

	g_pPicture_Bg:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

	g_pPicture_Bg:SetPoint
	{   
		ADD_SIZE_X = 46,
		ADD_SIZE_Y = 46,
		"LEFT_TOP		= D3DXVECTOR2(3+14-1,3+13-1)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.0)",
		CHANGE_TIME		= 0.0,
	}



	----------스킬아이콘 버튼 ------------

	g_pButtonSkill = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButtonSkill )
	g_pButtonSkill:SetName( "Plus" )
	g_pButtonSkill:SetNormalTex( "DLG_UI_Common_Texture01.tga", "black_bar" )
	g_pButtonSkill:SetOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
	g_pButtonSkill:SetDownTex( "DLG_UI_Common_Texture09.tga", "Glow" )

	g_pButtonSkill:SetNormalPoint
	{
		ADD_SIZE_X = 46,
		ADD_SIZE_Y = 46,
		"LEFT_TOP		= D3DXVECTOR2(3-1,3-1)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonSkill:SetOverPoint
	{

	 
		"LEFT_TOP		= D3DXVECTOR2(-3-1,-3-1)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonSkill:SetDownPoint
	{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(-3+1-1,-3+1-1)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButtonSkill:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_EMOTION"] )
--]]




----------더하기 버튼 ------------

g_pButtonPlus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPlus )
g_pButtonPlus:SetName( "Button_Plus" )
g_pButtonPlus:SetNormalTex( "DLG_UI_Button11.tga", "Plus_Normal" )
g_pButtonPlus:SetOverTex( "DLG_UI_Button11.tga", "Plus_Over" )
g_pButtonPlus:SetDownTex( "DLG_UI_Button11.tga", "Plus_Over" )
g_pButtonPlus:SetDisableTex( "DLG_UI_Button11.tga", "Plus_Gray" )

g_pButtonPlus:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPlus:SetOverPoint
{

 
	"LEFT_TOP		= D3DXVECTOR2(3-2+14-1,52-2+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPlus:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3-2+1+14-1,52-2+1+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPlus:SetDisablePoint
{
    "LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPlus:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_PLUS"] )
g_pButtonPlus:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_PLUS_MOUSEOVER"] )
g_pButtonPlus:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_PLUS_MOUSEOUT"] )




----------빼기 버튼 ------------

g_pButtonMinus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMinus )
g_pButtonMinus:SetName( "Button_Minus" )
g_pButtonMinus:SetNormalTex( "DLG_UI_Button11.tga", "Minus_Normal" )
g_pButtonMinus:SetOverTex( "DLG_UI_Button11.tga", "Minus_Over" )
g_pButtonMinus:SetDownTex( "DLG_UI_Button11.tga", "Minus_Over" )
g_pButtonMinus:SetDisableTex( "DLG_UI_Button11.tga", "Minus_Gray" )

g_pButtonMinus:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMinus:SetOverPoint
{

 
	"LEFT_TOP		= D3DXVECTOR2(3-2+14-1,52-2+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMinus:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3-2+1+14-1,52-2+1+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMinus:SetDisablePoint
{
    "LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMinus:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_MINUS"] )
g_pButtonMinus:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_MINUS_MOUSEOVER"] )
g_pButtonMinus:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_MINUS_MOUSEOUT"] )

----------빼기 가이드 버튼 ------------

g_pButtonMinusGuide = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMinusGuide )
g_pButtonMinusGuide:SetName( "Button_Minus_Guide" )
g_pButtonMinusGuide:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )
g_pButtonMinusGuide:SetOverTex( "DLG_Common_Button00.tga", "invisible" )
g_pButtonMinusGuide:SetDownTex( "DLG_Common_Button00.tga", "invisible" ) 

g_pButtonMinusGuide:SetNormalPoint
{
     ADD_SIZE_X = 16,
	 ADD_SIZE_Y = 14,
    "LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMinusGuide:SetOverPoint
{ 
     ADD_SIZE_X = 16,
	 ADD_SIZE_Y = 14, 
	"LEFT_TOP		= D3DXVECTOR2(3-2+14-1,52-2+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMinusGuide:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3-2+1+14-1,52-2+1+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}  
g_pButtonMinusGuide:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_MINUS_GUIDE_MOUSEOVER"] )
g_pButtonMinusGuide:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_MINUS_GUIDE_MOUSEOUT"] )

----------마스터 ------------


g_pButtonMaster = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMaster )
g_pButtonMaster:SetName( "Button_Master" )
g_pButtonMaster:SetNormalTex( "DLG_UI_Button11.TGA", "Master_Normal" )
g_pButtonMaster:SetOverTex( "DLG_UI_Button11.TGA", "Master_Normal" )
g_pButtonMaster:SetDownTex( "DLG_UI_Button11.TGA", "Master_Normal" )
g_pButtonMaster:SetDisableTex( "DLG_UI_Button11.TGA", "Master_Normal" )

g_pButtonMaster:SetNormalPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaster:SetOverPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaster:SetDownPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMaster:SetDisablePoint
{   
	"LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaster:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_MASTER_MOUSEOVER"] )
g_pButtonMaster:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_MASTER_MOUSEOUT"] )

--[[
	g_pStaticSkill_Icon = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSkill_Icon )
	g_pStaticSkill_Icon:SetName( "Button_Master" )

	g_pPicture_Master = g_pUIDialog:CreatePicture()
	g_pStaticSkill_Icon:AddPicture( g_pPicture_Master )

	g_pPicture_Master:SetTex( "DLG_UI_Button11.TGA", "Master_Normal" )

	g_pPicture_Master:SetPoint
	{   
		"LEFT_TOP		= D3DXVECTOR2(3+14-1,52+13-1)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]


--[[
	-----스킬 레벨----
	g_pStaticLevel = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticLevel )
	g_pStaticLevel:SetName( "StaticLevel" )

	g_pStaticLevel:AddString
	{
		MSG 			= "5/5",
		FONT_INDEX		= XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(36-1,53-1)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
--]]

-----스킬 레벨----
g_pStaticLevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLevel )
g_pStaticLevel:SetName( "StaticLevel" )

g_pStaticLevel:AddString
{
	--MSG 			= "5/5",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(36+14-2,53+13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------- Skill Slot ------------------------


g_pSlotSkillTree = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlotSkillTree )
g_pSlotSkillTree:SetName( "g_pSlot_SkillTree" )
g_pSlotSkillTree:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlotSkillTree:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlotSkillTree:SetPoint
{
    ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
    "LEFT_TOP		= D3DXVECTOR2(3+14-1,3+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlotSkillTree:SetMouseOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(3+14-1-6,3+13-1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlotSkillTree:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOT_RMOUSEUP"] )
g_pSlotSkillTree:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOT_MOUSEIN"] )
g_pSlotSkillTree:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOT_MOUSEOUT"] )



----------------------액티브
g_pStaticActive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticActive )
g_pStaticActive:SetName( "StaticActive" )

g_pPictureActive = g_pUIDialog:CreatePicture()
g_pStaticActive:AddPicture( g_pPictureActive )

g_pPictureActive:SetTex( "DLG_UI_Common_Texture10.TGA", "Active" )

g_pPictureActive:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(18,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePassive = g_pUIDialog:CreatePicture()
g_pStaticActive:AddPicture( g_pPicturePassive )

g_pPicturePassive:SetTex( "DLG_UI_Common_Texture10.TGA", "Passive" )

g_pPicturePassive:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(18,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------자물쇠

g_pStaticSkill_Lock = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_Lock )
g_pStaticSkill_Lock:SetName( "g_pStaticSkill_Lock" )


g_pPictureSkill_Lock = g_pUIDialog:CreatePicture()
g_pStaticSkill_Lock:AddPicture( g_pPictureSkill_Lock )

g_pPictureSkill_Lock:SetTex( "DLG_UI_Common_Texture11.TGA", "Lock" )

g_pPictureSkill_Lock:SetPoint
{   
	"LEFT_TOP		= D3DXVECTOR2(22,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----인연 타입----
--[[ #define ADDED_RELATIONSHIP_SYSTEM
g_pStaticRelationType = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRelationType )
g_pStaticRelationType:SetName( "StaticRelationType" )

g_pStaticRelationType:AddString
{
	--MSG 			= "인연",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(16+14-1+9,53+13-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
--]]