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

g_pPictureWindow1:SetTex( "DLG_CC_Guide_lena_ver2.tga", "DLG_CC_Guide_lena_ver2" )

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
g_pPictureWindow1:SetTex( "Class_Change_Cash_Item_Pop02.tga", "POP_RENA" )
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
--컴뱃레인저
g_pButtonCombatRanger = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCombatRanger )
g_pButtonCombatRanger:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonCombatRanger:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonCombatRanger:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonCombatRanger:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110-10,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCombatRanger:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110-10,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCombatRanger:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(110-10+1,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCombatRanger:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_RENA_COMBAT_RANGER"] )

--스나이핑레인저
g_pButtonSnipingRanger = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSnipingRanger )
g_pButtonSnipingRanger:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonSnipingRanger:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSnipingRanger:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonSnipingRanger:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334-91,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSnipingRanger:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334-91,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSnipingRanger:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(334-91+1,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSnipingRanger:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_RENA_SNIPING_RANGER"] )

--
g_pButtonTrappingRanger = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTrappingRanger )
g_pButtonTrappingRanger:SetNormalTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_NORMAL" )
g_pButtonTrappingRanger:SetOverTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonTrappingRanger:SetDownTex( "Class_Change_Cash_Item_Pop01.tga", "BUY_OVER" )
g_pButtonTrappingRanger:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334+224-172,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrappingRanger:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(334+224-172,534-50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrappingRanger:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(334+1+224-172,534-50+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTrappingRanger:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_LIRE_TRAPPING_RANGER"] )