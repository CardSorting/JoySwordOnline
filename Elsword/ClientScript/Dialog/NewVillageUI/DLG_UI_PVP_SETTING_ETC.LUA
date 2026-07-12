-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Partu_PVP_ETC_SETTING" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_CLOSE"] )


g_pStatic_SETTING_ETC = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SETTING_ETC )
g_pStatic_SETTING_ETC:SetName( "SETTING_ETC" )

--------내용  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG3_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG3_middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 278,
	"LEFT_TOP		= D3DXVECTOR2(14,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG3_bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------아이템전 파워전 배경

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "ITEM_LEFT" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(50,113-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "ITEM_CENTER" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = 245,
	"LEFT_TOP		= D3DXVECTOR2(55,113-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "ITEM_RIGHT" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(302,113-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------------대전방식
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12346, --"대전방식",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,90-8)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 

-----------------파워전
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12347, --"파워전",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(88,129-8)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
-----체크박스1
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,128-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시1
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK1" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(68,128-8)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(68+15,128+15-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(68-2,128-2-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

-----------------아이템전
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12348, --"아이템전",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(235,129-8)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 



-----체크박스2
g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(215,128-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시2
g_pCheckBox_CHECK2 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK2:SetName( "g_pCheckBox_CHECK2" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK2 )
g_pCheckBox_CHECK2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK2:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )
g_pCheckBox_CHECK2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(215,128-8)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(215+15,128+15-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK2:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(215-2,128-2-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

------파워전
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12347, --"파워전",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,180-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.5,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  

------파워전 설명
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12349, --"대전에 도움이 되는 아이템이\n생성되지 않는 대전 방식",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(135,180-8)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
------------bar
g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_ETC:AddPicture( g_pPicture_bar )
g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_bar:SetPoint
{
   ADD_SIZE_X=258,
	"LEFT_TOP		= D3DXVECTOR2(50,225-8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
------아이템전
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12348, --"아이템전",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,240-8)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.5,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
------아이템전 설명
g_pStatic_SETTING_ETC:AddString
{
	MSG 			= STR_ID_12350, --"대전에 도움이 되는 아이템이\n랜덤하게 생성되는 대전 방식",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(135,240-8)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 


-------------------확인 버튼
g_pButton_OK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK )
g_pButton_OK:SetName( "OK" )
g_pButton_OK:SetNormalTex( "DLG_UI_BUTTON19.tga", "OK_NORMAL" )
g_pButton_OK:SetOverTex( "DLG_UI_BUTTON19.tga", "OK_OVER" )
g_pButton_OK:SetDownTex( "DLG_UI_BUTTON19.tga", "OK_OVER" )
g_pButton_OK:SetDisableTex( "DLG_UI_BUTTON19.tga", "OK_GRAY" )
g_pButton_OK:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(262,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(262-3,305-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(262-2,305-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_CLOSE"] )




