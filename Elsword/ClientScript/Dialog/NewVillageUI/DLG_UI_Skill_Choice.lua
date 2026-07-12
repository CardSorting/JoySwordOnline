-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Mail_View_System" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_MSG["STUCM_RESET_SELECT_SKILL_CLOSE"] )

--BG
g_pStaticpaper_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpaper_window )
g_pStaticpaper_window:SetName( "g_pStaticpaper_window" )

g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )
g_pPicturepaper_window_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_L_Top" )
g_pPicturepaper_window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )
g_pPicturepaper_window_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_L_Middle" )
g_pPicturepaper_window_BG1:SetPoint
{
    -- ADD_SIZE_X	= 1,
	ADD_SIZE_Y	= 152,
	"LEFT_TOP		= D3DXVECTOR2(0,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )
g_pPicturepaper_window_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_L_Bottom" )
g_pPicturepaper_window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,192)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----분할 라인
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Horizon_Line" )
g_pPictureInfo_BG1:SetPoint
{
    ADD_SIZE_X = 270,
	"LEFT_TOP		= D3DXVECTOR2(6,38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----타이틀
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Title_ReSkill" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 270,
	"LEFT_TOP		= D3DXVECTOR2(4,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--BG_문구 출력 백판

g_pPicturepaper_window_BG1 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG1 )
g_pPicturepaper_window_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_M" )
g_pPicturepaper_window_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(10,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--- 더미 위치
--스킬 아이콘 들어갈 위치--왼쪽
g_pStatic_Icon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Icon )
g_pStatic_Icon:SetName( "g_pStatic_Icon" )

g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStatic_Icon:AddPicture( g_pPicturepaper_window_BG8 )
g_pPicturepaper_window_BG8:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Left_SkillBack" )
g_pPicturepaper_window_BG8:SetPoint
{
	ADD_SIZE_X = -44,
	ADD_SIZE_Y = -17,
	"LEFT_TOP		= D3DXVECTOR2(95,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--스킬 아이콘 들어갈 위치--오른쪽
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStatic_Icon:AddPicture( g_pPicturepaper_window_BG8 )
g_pPicturepaper_window_BG8:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Left_SkillBack" )
g_pPicturepaper_window_BG8:SetPoint
{
	ADD_SIZE_X = -44,
	ADD_SIZE_Y = -17,
	"LEFT_TOP		= D3DXVECTOR2(194,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--스킬 백판 위치_왼쪽
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG8 )

g_pPicturepaper_window_BG8:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Left_SkillBack" )

g_pPicturepaper_window_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(59,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--스킬 백판 위치_오른쪽
g_pPicturepaper_window_BG8 = g_pUIDialog:CreatePicture()
g_pStaticpaper_window:AddPicture( g_pPicturepaper_window_BG8 )

g_pPicturepaper_window_BG8:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Right_SkillBack" )

g_pPicturepaper_window_BG8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(186,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------내용_상단

--신랑
g_pStaticpost_window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticpost_window_Font )
g_pStaticpost_window_Font:SetName( "g_pStaticBoyFont" )
g_pStaticpost_window_Font:AddString
{
--	MSG 			= STR_ID_4620,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(19,128)",
	"COLOR			= D3DXCOLOR(0.6,0.4,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

-----------------버튼 모음
---왼쪽 스킬 선택 라디오 버튼
g_pRadioButton_Left = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Left )
g_pRadioButton_Left:SetFixOverByCheck( true ) 
g_pRadioButton_Left:SetShowOffBGByCheck( true )
g_pRadioButton_Left:SetName( "RadioButton_SkillLeft" )
g_pRadioButton_Left:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillChoice_Normal" )
g_pRadioButton_Left:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillChoice_Over" )
g_pRadioButton_Left:SetCheckedTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillChoice_Over" )

g_pRadioButton_Left:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(63,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Left:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(63,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Left:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(63,67)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(63+16,67+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Left:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(63,67)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Left:SetGroupID( 0 )
g_pRadioButton_Left:SetChecked( true )
g_pRadioButton_Left:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_MSG["STUCM_RESET_LEFT_SELECT_SKILL"] )


---오른쪽 스킬 선택 라디오 버튼
g_pRadioButton_Right = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Right )
g_pRadioButton_Right:SetFixOverByCheck( true ) 
g_pRadioButton_Right:SetShowOffBGByCheck( true )
g_pRadioButton_Right:SetName( "RadioButton_SkillRight" )
g_pRadioButton_Right:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillChoice_Normal" )
g_pRadioButton_Right:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillChoice_Over" )
g_pRadioButton_Right:SetCheckedTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillChoice_Over" )

g_pRadioButton_Right:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(252,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Right:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(252,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Right:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(252,67)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(252+16,67+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Right:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(252,67)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Right:SetGroupID( 2 )
g_pRadioButton_Right:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_MSG["STUCM_RESET_RIGHT_SELECT_SKILL"] )


---EXIT 버튼
g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "enter" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(308+4,4+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(308,4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(308+1,4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_RESET_SELECT_SKILL_CLOSE"] )


---취소 버튼
g_pButton_Cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Cancel )
g_pButton_Cancel:SetName( "Cancel" )
g_pButton_Cancel:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Normal" )
g_pButton_Cancel:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Over" )
g_pButton_Cancel:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Over" )

g_pButton_Cancel:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(203,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(203,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(203+1,174+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_RESET_SELECT_SKILL_CLOSE"] )


---결정하기 버튼
g_pButton_Decide = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Decide )
g_pButton_Decide:SetName( "Decide" )
g_pButton_Decide:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Normal" )
g_pButton_Decide:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Over" )
g_pButton_Decide:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Over" )

g_pButton_Decide:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(249,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(249,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(249+1,174+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_RESET_SELECT_SKILL_DECIDE"] )


---정보 표시 스트링 ----------------------------------------------------------------
g_pStaticString = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticString )
g_pStaticString:SetName( "g_pStatic_StringInfo" )

g_pStaticString:AddString		-- 0
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,128)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}