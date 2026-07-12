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

g_pPictureWindow1:SetTex( "DLG_CC_Guide_Raven_ver2.tga", "DLG_CC_Guide_Raven_ver2" )

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
g_pPictureWindow1:SetTex( "Class_Change_Cash_Item_Pop02.tga", "POP_RAVEN" )
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
--오버테이커
g_pButtonOverTaker = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOverTaker )
g_pButtonOverTaker:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonOverTaker:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonOverTaker:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonOverTaker:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110-10,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOverTaker:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110-10,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOverTaker:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(110-10+1,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOverTaker:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_RAVEN_SWORD_TAKER"] )

--소드테이커
g_pButtonSwordTaker = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSwordTaker )
g_pButtonSwordTaker:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonSwordTaker:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSwordTaker:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSwordTaker:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334-91,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSwordTaker:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334-91,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSwordTaker:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(334-91+1,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSwordTaker:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_RAVEN_WEAPON_TAKER"] )

--
g_pButtonWeaponTaker = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWeaponTaker )
g_pButtonWeaponTaker:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonWeaponTaker:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonWeaponTaker:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonWeaponTaker:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334+224-172,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeaponTaker:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334+224-172,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeaponTaker:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(334+1+224-172,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWeaponTaker:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_RAVEN_OVER_TAKER"] )
