-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_Guide" )
g_pUIDialog:SetPos( 248,126 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_CHANGE_CLASS_GUIDE_FIRST"] )

g_pStatic_class_change_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_class_change_window )
g_pStatic_class_change_window:SetName( "g_pStatic_class_change_window" )


g_pPictureWindow1 = g_pUIDialog:CreatePicture()
g_pStatic_class_change_window:AddPicture( g_pPictureWindow1 )

g_pPictureWindow1:SetTex( "DLG_CC_Guide_elsword1_ver2.tga", "DLG_CC_Guide_elsword1_ver2" )

g_pPictureWindow1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--캐쉬 전직 -- 해외팀 구매 버튼 추가
g_pStatic_class_change_window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_class_change_window )
g_pStatic_class_change_window:SetName( "g_pStatic_cash_change_window" )

g_pPictureWindow1 = g_pUIDialog:CreatePicture()
g_pStatic_class_change_window:AddPicture( g_pPictureWindow1 )
g_pPictureWindow1:SetTex( "Class_Change_Cash_Item_Pop01.tga", "POP_ELSWORD" )
g_pPictureWindow1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,394)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--종료버튼
g_pcancel_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pcancel_Button )
g_pcancel_Button:SetName( "g_pcancel_Button" )
g_pcancel_Button:SetNormalTex( "DLG_UI_Button17.tga", "Close_Window" )

g_pcancel_Button:SetOverTex( "DLG_UI_Button17.tga", "Close_Window_Over" )

g_pcancel_Button:SetDownTex( "DLG_UI_Button17.tga", "Close_Window_Over" )

g_pcancel_Button:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(588+6-180,370-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pcancel_Button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(588-180+6,370-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pcancel_Button:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(588-180+7,370+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pcancel_Button:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_CHANGE_CLASS_GUIDE_FIRST"] )


-- 해외팀 구매 버튼 추가
--매직나이트
g_pButtonMagicKnight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMagicKnight )
g_pButtonMagicKnight:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonMagicKnight:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonMagicKnight:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonMagicKnight:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110-10,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMagicKnight:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110-10,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMagicKnight:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(110-10+1,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMagicKnight:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_ELSWORD_MAGIC_KNIGHT"] )

--소드나이트
g_pButtonSwordKnight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSwordKnight )
g_pButtonSwordKnight:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonSwordKnight:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSwordKnight:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSwordKnight:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334-91,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSwordKnight:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334-91,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSwordKnight:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(334-91+1,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSwordKnight:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_ELSWORD_SWORD_KNIGHT"] )

--
g_pButtonSheathKnight = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSheathKnight )
g_pButtonSheathKnight:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonSheathKnight:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSheathKnight:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSheathKnight:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334+224-172,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSheathKnight:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334+224-172,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSheathKnight:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(334+1+224-172,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSheathKnight:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_ELSWORD_SHEATH_KNIGHT"] )

----엘소드
--[[

g_pStatic_class_change_elsword = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_class_change_elsword )
g_pStatic_class_change_elsword:SetName( "g_pStatic_class_change_elsword" )

g_pPicturecc_npc = g_pUIDialog:CreatePicture()
g_pStatic_class_change_elsword:AddPicture( g_pPicturecc_npc )

g_pPicturecc_npc:SetTex( "DLG_CC_PR3.tga", "cc_npc1" )

g_pPicturecc_npc:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(20,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureelsword_comment = g_pUIDialog:CreatePicture()
g_pStatic_class_change_elsword:AddPicture( g_pPictureelsword_comment )

g_pPictureelsword_comment:SetTex( "DLG_CC_PR3.tga", "elsword_comment" )

g_pPictureelsword_comment:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(220,358)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




	g_pStatic_class_change_elsword:AddString
	{
		MSG 			= STR_ID_976,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(260,465)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}




--]]
















