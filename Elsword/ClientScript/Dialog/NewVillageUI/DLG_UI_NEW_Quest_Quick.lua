-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos( 817, 143 )
--g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


----일반 배경

g_pStaticExpandBGNormal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticExpandBGNormal )
g_pStaticExpandBGNormal:SetName( "StaticExpandBGNormal" )


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticExpandBGNormal:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_N_TOP" )

g_pPicture_bg1:SetPoint
{
	ADD_SIZE_X		= -45+11,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticExpandBGNormal:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_N_MIDDLE" )

g_pPicture_bg1:SetPoint
{
	ADD_SIZE_X		= -45+11,
    ADD_SIZE_Y 		= 70,
	"LEFT_TOP		= D3DXVECTOR2(0,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticExpandBGNormal:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_N_BOTTOM" )

g_pPicture_bg1:SetPoint
{
	ADD_SIZE_X		= -45+11,
	"LEFT_TOP		= D3DXVECTOR2(0,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}


----오버시 배경

g_pStaticExpandBGOver = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticExpandBGOver )
g_pStaticExpandBGOver:SetName( "StaticExpandBGOver" )


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticExpandBGOver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_TOP" )

g_pPicture_bg2:SetPoint
{
	ADD_SIZE_X		= -45+11,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticExpandBGOver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_MIDDLE" )

g_pPicture_bg2:SetPoint
{
	ADD_SIZE_X		= -45+11,
    ADD_SIZE_Y 		= 70,
	"LEFT_TOP		= D3DXVECTOR2(0,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticExpandBGOver:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_BOTTOM" )

g_pPicture_bg2:SetPoint
{   
	ADD_SIZE_X		= -45+11,
	"LEFT_TOP		= D3DXVECTOR2(0,90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


----------------- 투명 버튼
g_pButtonExpand = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonExpand )
g_pButtonExpand:SetName( "ButtonExpand" )
g_pButtonExpand:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )

g_pButtonExpand:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )

g_pButtonExpand:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )

g_pButtonExpand:SetNormalPoint
{
	ADD_SIZE_X = 200,
	ADD_SIZE_Y = 70+23,
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExpand:SetOverPoint
{
	ADD_SIZE_X = 200,
	ADD_SIZE_Y = 70+23,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonExpand:SetDownPoint
{
	ADD_SIZE_X = 200,
	ADD_SIZE_Y = 70+23,
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonExpand:AddDummyInt(ListID)
--[[오현빈//2012-10-02//퀵퀘스트 좌우 마우스 버튼 동작 변경
g_pButtonExpand:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_TO_MINIMIZE"] ) 
g_pButtonExpand:SetCustomMsgMouseRightUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_TO_DETAIL"] )
--]]
g_pButtonExpand:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_TO_DETAIL"] ) 
g_pButtonExpand:SetCustomMsgMouseRightUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_TO_MINIMIZE"] )
g_pButtonExpand:SetCustomMsgMouseOver( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_EXPAND_MOUSE_OVER"] )
g_pButtonExpand:SetCustomMsgMouseOut( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_EXPAND_MOUSE_OUT"] )

------------------리스트 버튼

g_pButtonMinimize = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMinimize )
g_pButtonMinimize:SetName( "ButtonMinimize" )
g_pButtonMinimize:SetNormalTex( "DLG_UI_Common_Texture06.tga", "BG_OVER" )

g_pButtonMinimize:SetOverTex( "DLG_UI_Common_Texture06.tga", "BG_OVER" )

g_pButtonMinimize:SetDownTex( "DLG_UI_Common_Texture06.tga", "BG_OVER" )

g_pButtonMinimize:SetNormalPoint
{	
	ADD_SIZE_X		= -45+11,
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMinimize:SetOverPoint
{
	ADD_SIZE_X		= -45+11+2,
	ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(0-1,0-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMinimize:SetDownPoint
{
	ADD_SIZE_X		= -45+11,      
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonMinimize:AddDummyInt(ListID)
--[[오현빈//2012-10-02//퀵퀘스트 좌우 마우스 버튼 동작 변경
g_pButtonMinimize:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_TO_EXPAND"] ) 
--]]
g_pButtonMinimize:SetCustomMsgMouseRightUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUICK_TO_EXPAND"] )






----------------String

g_pStaticQuestTitle = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuestTitle )
g_pStaticQuestTitle:SetName( "StaticQuestTitle" )

g_pStaticQuestTitle:AddString
{
	 MSG 			= "▶",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
--	"POS 			= D3DXVECTOR2(2,1)",
	"POS 			= D3DXVECTOR2(2-10,1)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.5)",
}

-----Quest Title
g_pStaticQuestTitle:AddString
{
	 MSG 			= "QUEST001",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFY"],
--	"POS 			= D3DXVECTOR2(15,2)",
	"POS 			= D3DXVECTOR2(15-10,2)",
	"COLOR			= D3DXCOLOR(0.68,0.95,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.5)",
}

----- 완료여부
g_pStaticQuestTitle:AddString
{
	 MSG 			= STR_ID_759,
	-- MSG 			= "완료",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFY"],
--	"POS 			= D3DXVECTOR2(213,2)",
	"POS 			= D3DXVECTOR2(213-10-30+10,2)",
	"COLOR			= D3DXCOLOR(0.9,0.9,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.5)",
}

g_pStaticQuestInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQuestInfo )
g_pStaticQuestInfo:SetName( "StaticQuestInfo" )

-----서부 퀘스트
g_pStaticQuestInfo:AddString
{
	 MSG 			= "● 퀘스트 01\n● 퀘스트 02\n● 퀘스트 03\n● 퀘스트 04\n● 퀘스트 05",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(13-10,20)",
--	"POS 			= D3DXVECTOR2(13,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.5)",
}

g_pButton_Complete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Complete )
g_pButton_Complete:SetName( "QuestComplete" )
g_pButton_Complete:SetNormalTex( "DLG_UI_Button20.tga", "BT_QUEST_COMPLETE_ACTIVITY" )
g_pButton_Complete:SetOverTex( "DLG_UI_Button20.tga", "BT_QUEST_COMPLETE_ACTIVITY" )
g_pButton_Complete:SetDownTex( "DLG_UI_Button20.tga", "BT_QUEST_COMPLETE_ACTIVITY" )
g_pButton_Complete:SetDisableTex( "DLG_UI_Button20.tga", "BT_QUEST_COMPLETE_INACTIVITY" )
g_pButton_Complete:SetShow(true)
g_pButton_Complete:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(-50,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(-50,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(-49,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetDisablePoint
{	
	"LEFT_TOP		= D3DXVECTOR2(-50,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetCustomMsgMouseUp( UI_QUEST_NEW_CUSTOM_MSG["UQNCM_QUEST_INSTANTLY_COMPLETE"] )

