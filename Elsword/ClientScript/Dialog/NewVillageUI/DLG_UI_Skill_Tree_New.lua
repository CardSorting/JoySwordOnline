-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "g_pStaticSkill" )

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 452, 610, 0 ) ) -- Size 

-----BG
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )
g_pPictureInfo_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG2 )
g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )
g_pPictureInfo_BG2:SetPoint
{
    ADD_SIZE_Y = 535+31,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG3 )
g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )
g_pPictureInfo_BG3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,560+31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----BG2
g_pPictureInfo_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG13 )
g_pPictureInfo_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_top" )
g_pPictureInfo_BG13:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPictureInfo_BG14 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG14 )
g_pPictureInfo_BG14:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_MIDDLE" )
g_pPictureInfo_BG14:SetPoint
{
    ADD_SIZE_Y = 449,
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}		
	
g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG15 )
g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_bottom" )
g_pPictureInfo_BG15:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14,449+90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}		

-----BG3
g_pPictureInfo_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG13 )
g_pPictureInfo_BG13:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Separate_Top" )
g_pPictureInfo_BG13:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(99,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPictureInfo_BG14 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG14 )
g_pPictureInfo_BG14:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Separate_Middle" )
g_pPictureInfo_BG14:SetPoint
{
    ADD_SIZE_Y = 450,
	"LEFT_TOP		= D3DXVECTOR2(99,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}		
	
g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG15 )
g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Separate_Bottom" )
g_pPictureInfo_BG15:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(99,449+92+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- ------- 배경 그림--------
-- g_pPictureBG = g_pUIDialog:CreatePicture() 
-- g_pStaticSkill:AddPicture( g_pPictureBG )
-- g_pPictureBG:SetTex( "DLG_UI_Common_Texture11.TGA", "skill_bg" )
-- g_pPictureBG:SetPoint
-- {
 
   -- ADD_SIZE_X = 110 ,
   -- ADD_SIZE_Y = 110 ,  
	-- "LEFT_TOP		= D3DXVECTOR2(30+10,85+40)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	-- CHANGE_TIME		= 0.0,
	
-- }	

-----분할 라인
-- 가로 - 노전직, 1차 전직 사이
g_pStaticHorizonLine1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHorizonLine1 )
g_pStaticHorizonLine1:SetName( "g_pStatic_HorizonLine1" )

g_pPictureHorizonLine1 = g_pUIDialog:CreatePicture()	-- 6
g_pStaticHorizonLine1:AddPicture( g_pPictureHorizonLine1 )
g_pPictureHorizonLine1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Horizon_Line" )
g_pPictureHorizonLine1:SetPoint
{
    ADD_SIZE_X = 316+24,
	"LEFT_TOP		= D3DXVECTOR2(10-14,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 가로 - 1차 전직, 2차 전직 사이
g_pStaticHorizonLine2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHorizonLine2 )
g_pStaticHorizonLine2:SetName( "g_pStatic_HorizonLine2" )

g_pPictureHorizonLine2 = g_pUIDialog:CreatePicture()	-- 6
g_pStaticHorizonLine2:AddPicture( g_pPictureHorizonLine2 )
g_pPictureHorizonLine2:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Horizon_Line" )
g_pPictureHorizonLine2:SetPoint
{
    ADD_SIZE_X = 316+24,
	"LEFT_TOP		= D3DXVECTOR2(10-14,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----스크롤 리스트
g_pControlList = g_pUIDialog:CreateControlList()
g_pUIDialog:AddControl( g_pControlList )
g_pControlList:SetName( "SkillTreeControlList" )

g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pScrollBar = g_pControlList:InitYScrollBar()
g_pControlList:SetYScrollBarPos( 415, 80 )
g_pControlList:SetYScrollBarSize( 21, 372+95 )
g_pControlList:SetScrollOffset( 115, 92 )
g_pControlList:SetPos(19, 84)

g_pControlList:SetViewSize( 3, 5, true )
g_pControlList:SetCustomMsgScroll( SKILL_TREE_UI_CUSTOM_MSG["STUCM_CONTROLLIST_SCROLL"] )

---통상기 보기 버튼
g_pButton_CommandSkill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CommandSkill )
g_pButton_CommandSkill:SetName( "CommandSkill" )
g_pButton_CommandSkill:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_CommandSkill_View_Normal" )
g_pButton_CommandSkill:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_CommandSkill_View_Over" )
g_pButton_CommandSkill:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_CommandSkill_View_Over" )

g_pButton_CommandSkill:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(298+26,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CommandSkill:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298+26,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CommandSkill:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(298+1+26,15+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CommandSkill:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_OPEN_COMBO_TREE"] )

---스킬 초기화 버튼
g_pButton_CommandSkill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CommandSkill )
g_pButton_CommandSkill:SetName( "CommandSkill" )
g_pButton_CommandSkill:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillReturn_Normal" )
g_pButton_CommandSkill:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillReturn_Over" )
g_pButton_CommandSkill:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_SkillReturn_Over" )

g_pButton_CommandSkill:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(197,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CommandSkill:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(197,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CommandSkill:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(197+1,571+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CommandSkill:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_ENABLE_INIT_SKILL"] )

-------HELP 버튼
g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )
g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )
g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(386-88,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(386-4-88,15-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
    ADD_SIZE_X = -2 ,
    ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(386-4+1-88,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(110)

---EXIT 버튼
g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )
g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )
g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(412,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(408,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(408+1,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_EXIT"] )

---취소 버튼
g_pButton_Cancel = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Cancel )
g_pButton_Cancel:SetName( "Cancel" )
g_pButton_Cancel:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Normal" )
g_pButton_Cancel:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Over" )
g_pButton_Cancel:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Over" )
g_pButton_Cancel:SetDisableTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Cancel_Inactive" )

g_pButton_Cancel:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(303,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(303,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(303+1,571+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(303,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Cancel:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_PLUS_CANCEL"] )

---결정하기 버튼
g_pButton_Decide = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Decide )
g_pButton_Decide:SetName( "Decide" )
g_pButton_Decide:SetNormalTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Normal" )
g_pButton_Decide:SetOverTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Over" )
g_pButton_Decide:SetDownTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Over" )
g_pButton_Decide:SetDisableTex( "DLG_UI_Common_Texture_NewSkill_01.tga", "Bt_Decide_Inactive" )

g_pButton_Decide:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(349,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(349,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	 ADD_SIZE_Y = -2 ,
 	"LEFT_TOP		= D3DXVECTOR2(349+1,571+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetDisablePoint
{
 	"LEFT_TOP		= D3DXVECTOR2(349,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decide:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_BUTTON_SKILL_LEVEL_PLUS_RESULT"] )
-----------------------------------------------------------------------------------------------------------
------------------타이틀 모음
-----타이틀_스킬트리
g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "g_pStaticText" )

g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Title02.TGA", "Title_skill" )
g_pPictureInfo_BG1:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(15,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BAR

g_pPictureBar = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureBar:SetPoint
{
   ADD_SIZE_X = 434,
	"LEFT_TOP		= D3DXVECTOR2(8,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------남은 스킬 포인트 표시(스트링 포함)
g_pStaticSPBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSPBox )
g_pStaticSPBox:SetName( "g_pStaticSPBox" )

-----표시 박스
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSPBox:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "STitle_RemainSP" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(15,573)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----SP 표시 박스
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSPBox:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_SPBox" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(118,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticSPBox:AddString
{
	MSG 			= STR_ID_4770,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(124,577)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----캐시이아템 기간 알림창
g_pButton_Notice_Notice_SP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Notice_Notice_SP )
g_pButton_Notice_Notice_SP:SetName( "Button_Notice_Notice_SP" )
g_pButton_Notice_Notice_SP:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetNormalPoint
{

     ADD_SIZE_X = 77,
	 ADD_SIZE_Y = 24,
	 
 	"LEFT_TOP		= D3DXVECTOR2(118,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:SetOverPoint
{
     ADD_SIZE_X = 77,
	 ADD_SIZE_Y = 24,

	"LEFT_TOP		= D3DXVECTOR2(118,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:SetDownPoint
{                                           
     ADD_SIZE_X = 77,
	 ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(118,571)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:ChangeMouseUpSound_LUA( "" )
g_pButton_Notice_Notice_SP:ChangeMouseOverSound_LUA( "" )
g_pButton_Notice_Notice_SP:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_CSP_GUIDE_MOUSEIN"] )
g_pButton_Notice_Notice_SP:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_CSP_GUIDE_MOUSEOUT"] )

--------------------------아직 열리지 않은 스킬 블라인드
g_pStaticBlind = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBlind )
g_pStaticBlind:SetName( "g_pStaticBlind" )

-- 표시 스트링
-- 1번째
g_pStaticBlind:AddString							-- 0
{
	MSG 			= STR_ID_2680,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(115,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 2번째
g_pStaticBlind:AddString							-- 1
{
	MSG 			= STR_ID_2680,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(115,121+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 3번째
g_pStaticBlind:AddString							-- 2
{
	MSG 			= STR_ID_2680,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(115,121+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 4번째
g_pStaticBlind:AddString							-- 3
{
	MSG 			= STR_ID_2680,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(115,121+92+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 5번째
g_pStaticBlind:AddString							-- 4
{
	MSG 			= STR_ID_2680,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(115,121+92+92+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-- 검은 블라인드 배경
-- 1번째
g_pPictureBlind_1 = g_pUIDialog:CreatePicture()  	-- 0
g_pStaticBlind:AddPicture( g_pPictureBlind_1 )

g_pPictureBlind_1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Cover_Top" )
g_pPictureBlind_1:SetPoint
{
	ADD_SIZE_X = 320,
	"LEFT_TOP		= D3DXVECTOR2(17,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_1:SetShow(false)	

-- 2번째
g_pPictureBlind_2 = g_pUIDialog:CreatePicture()  	-- 1
g_pStaticBlind:AddPicture( g_pPictureBlind_2 )

g_pPictureBlind_2:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Cover_Middle" )
g_pPictureBlind_2:SetPoint
{
	ADD_SIZE_X = 320,
	"LEFT_TOP		= D3DXVECTOR2(17,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_2:SetShow(false)
	
-- 3번째
g_pPictureBlind_3 = g_pUIDialog:CreatePicture()  	-- 2
g_pStaticBlind:AddPicture( g_pPictureBlind_3 )

g_pPictureBlind_3:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Cover_Middle" )
g_pPictureBlind_3:SetPoint
{
	ADD_SIZE_X = 320,
	"LEFT_TOP		= D3DXVECTOR2(17,173+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_3:SetShow(false)

-- 4번째
g_pPictureBlind_4 = g_pUIDialog:CreatePicture()  	-- 3
g_pStaticBlind:AddPicture( g_pPictureBlind_4 )

g_pPictureBlind_4:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Cover_Middle" )
g_pPictureBlind_4:SetPoint
{
	ADD_SIZE_X = 320,
	"LEFT_TOP		= D3DXVECTOR2(17,173+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_4:SetShow(false)

-- 5번째
g_pPictureBlind_5 = g_pUIDialog:CreatePicture()  	-- 4
g_pStaticBlind:AddPicture( g_pPictureBlind_5 )

g_pPictureBlind_5:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Cover_Bottom" )
g_pPictureBlind_5:SetPoint
{
	ADD_SIZE_X = 320,
	ADD_SIZE_Y = -5,
	"LEFT_TOP		= D3DXVECTOR2(17,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_5:SetShow(false)

-- 느낌표 이미지
-- 1번째
g_pPictureBlind_Feel = g_pUIDialog:CreatePicture()  -- 5
g_pStaticBlind:AddPicture( g_pPictureBlind_Feel )

g_pPictureBlind_Feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
g_pPictureBlind_Feel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Feel:SetShow(false)

-- 2번째
g_pPictureBlind_Feel = g_pUIDialog:CreatePicture()  -- 6
g_pStaticBlind:AddPicture( g_pPictureBlind_Feel )

g_pPictureBlind_Feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
g_pPictureBlind_Feel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,120+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Feel:SetShow(false)

-- 3번째
g_pPictureBlind_Feel = g_pUIDialog:CreatePicture()  -- 7
g_pStaticBlind:AddPicture( g_pPictureBlind_Feel )

g_pPictureBlind_Feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
g_pPictureBlind_Feel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,120+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Feel:SetShow(false)

-- 4번째
g_pPictureBlind_Feel = g_pUIDialog:CreatePicture()  -- 8
g_pStaticBlind:AddPicture( g_pPictureBlind_Feel )

g_pPictureBlind_Feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
g_pPictureBlind_Feel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,120+92+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Feel:SetShow(false)

-- 5번째
g_pPictureBlind_Feel = g_pUIDialog:CreatePicture()  -- 9
g_pStaticBlind:AddPicture( g_pPictureBlind_Feel )

g_pPictureBlind_Feel:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )
g_pPictureBlind_Feel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(90,120+92+92+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Feel:SetShow(false)

-------------안내문

g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Notice" )

g_pPicture_Notice1 = g_pUIDialog:CreatePicture() 
g_pStatic_Notice:AddPicture( g_pPicture_Notice1 )
g_pPicture_Notice1:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Notice2 = g_pUIDialog:CreatePicture() 
g_pStatic_Notice:AddPicture( g_pPicture_Notice2 )
g_pPicture_Notice2:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_InfoText" )

g_pPicture_Notice2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(40,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}