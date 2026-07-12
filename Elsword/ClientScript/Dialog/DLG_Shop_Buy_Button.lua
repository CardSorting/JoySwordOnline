-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )

g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )

g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Weapon" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "wapon_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "wapon_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "wapon_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )



---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Coat" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "armor1_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "armor1_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "armor1_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )



---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Trousers" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "armor2_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "armor2_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "armor2_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )


---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Hand" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "glove_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "grove_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "grove_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )

---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Footwear" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "shoes_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "shoes_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "shoes_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )

---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Special" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "special_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "special_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "special_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )

---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Accessory" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "accessory_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "accessory_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "accessory_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )

---------(인벤토리 라디오 버튼)

g_pRadioButtonShop_Button1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonShop_Button1 )
g_pRadioButtonShop_Button1:SetShow( false )
g_pRadioButtonShop_Button1:SetEnable( false )
g_pRadioButtonShop_Button1:SetFixOverByCheck( true )
g_pRadioButtonShop_Button1:SetShowOffBGByCheck( true )

g_pRadioButtonShop_Button1:SetName( "Quick_Slot" )

g_pRadioButtonShop_Button1:SetNormalTex( "DLG_Common_Texture17.TGA", "use_button_normal" )


g_pRadioButtonShop_Button1:SetOverTex( "DLG_Common_Texture17.TGA", "use_button_over" )


g_pRadioButtonShop_Button1:SetCheckedTex( "DLG_Common_Texture17.TGA", "use_button_down" )


g_pRadioButtonShop_Button1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(588,332-98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(527,300-98)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonShop_Button1:SetGroupID( 1 )
g_pRadioButtonShop_Button1:SetChecked( true )
g_pRadioButtonShop_Button1:SetCustomMsgChecked( SHOP_UI_CUSTOM_MSG["SUCM_BUY_SELECT_ITEM_TYPE"] )




