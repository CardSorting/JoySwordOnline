-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "Weapon_Shop_Top_Menu" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )



-- 상단 메뉴 그림
g_pStaticWeapon_Shop = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWeapon_Shop )
g_pStaticWeapon_Shop:SetName( "Static_Weapon_Shop_Title_Bar" )


g_pPictureWeapon_Shop_Title = g_pUIDialog:CreatePicture()
g_pStaticWeapon_Shop:AddPicture( g_pPictureWeapon_Shop_Title )
g_pPictureWeapon_Shop_Title:SetTex( "DLG_Shop_Menu.TGA", "Weapon_Shop_Title" )
g_pPictureWeapon_Shop_Title:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWeapon_Shop_Menu_Bar1 = g_pUIDialog:CreatePicture()
g_pStaticWeapon_Shop:AddPicture( g_pPictureWeapon_Shop_Menu_Bar1 )
g_pPictureWeapon_Shop_Menu_Bar1:SetTex( "DLG_Shop_Menu.TGA", "Weapon_Shop_Title_Bar1" )
g_pPictureWeapon_Shop_Menu_Bar1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(375,17)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(847,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWeapon_Shop_Menu_Bar2 = g_pUIDialog:CreatePicture()
g_pStaticWeapon_Shop:AddPicture( g_pPictureWeapon_Shop_Menu_Bar2 )
g_pPictureWeapon_Shop_Menu_Bar2:SetTex( "DLG_Shop_Menu.TGA", "Weapon_Shop_Title_Bar2" )
g_pPictureWeapon_Shop_Menu_Bar2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(847,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







-- 팔기, 사기, 퀘스트 라디오 버튼
g_pRadioButtonWeapon_Shop_Buy = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonWeapon_Shop_Buy )

g_pRadioButtonWeapon_Shop_Buy:SetFixOverByCheck( true )
g_pRadioButtonWeapon_Shop_Buy:SetShowOffBGByCheck( true )
g_pRadioButtonWeapon_Shop_Buy:SetName( "ShopMode_Buy" )
g_pRadioButtonWeapon_Shop_Buy:SetNormalTex( "DLG_Shop_Menu.TGA", "Buy_Normal" )
g_pRadioButtonWeapon_Shop_Buy:SetOverTex( "DLG_Shop_Menu.TGA", "Buy_Over" )
g_pRadioButtonWeapon_Shop_Buy:SetCheckedTex( "DLG_Shop_Menu.TGA", "Buy_Down" )

g_pRadioButtonWeapon_Shop_Buy:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(459,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Buy:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(459,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Buy:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(459,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(511,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Buy:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(453,20)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonWeapon_Shop_Buy:SetGroupID( 1 )
g_pRadioButtonWeapon_Shop_Buy:SetChecked( true )
g_pRadioButtonWeapon_Shop_Buy:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_SELECT_MODE"] )




g_pRadioButtonWeapon_Shop_Sell = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonWeapon_Shop_Sell )
g_pRadioButtonWeapon_Shop_Sell:SetFixOverByCheck( true )
g_pRadioButtonWeapon_Shop_Sell:SetShowOffBGByCheck( true )
g_pRadioButtonWeapon_Shop_Sell:SetName( "ShopMode_Sell" )
g_pRadioButtonWeapon_Shop_Sell:SetNormalTex( "DLG_Shop_Menu.TGA", "Sell_Normal" )
g_pRadioButtonWeapon_Shop_Sell:SetOverTex( "DLG_Shop_Menu.TGA", "Sell_Over" )
g_pRadioButtonWeapon_Shop_Sell:SetCheckedTex( "DLG_Shop_Menu.TGA", "Sell_Down" )

g_pRadioButtonWeapon_Shop_Sell:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(570,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Sell:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(570,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Sell:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(570,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(630,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Sell:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(566,22)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Sell:SetGroupID( 1 )
g_pRadioButtonWeapon_Shop_Sell:SetChecked( false )
g_pRadioButtonWeapon_Shop_Sell:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_SELECT_MODE"] )



g_pRadioButtonWeapon_Shop_Sell:SetEnable( true )
g_pRadioButtonWeapon_Shop_Sell:SetShow( true )






g_pRadioButtonWeapon_Shop_Quest = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonWeapon_Shop_Quest )
g_pRadioButtonWeapon_Shop_Quest:SetFixOverByCheck( true )
g_pRadioButtonWeapon_Shop_Quest:SetShowOffBGByCheck( true )
g_pRadioButtonWeapon_Shop_Quest:SetName( "ShopMode_Quest" )
g_pRadioButtonWeapon_Shop_Quest:SetNormalTex( "DLG_Shop_Menu.TGA", "Quest_Normal" )
g_pRadioButtonWeapon_Shop_Quest:SetOverTex( "DLG_Shop_Menu.TGA", "Quest_Over" )
g_pRadioButtonWeapon_Shop_Quest:SetCheckedTex( "DLG_Shop_Menu.TGA", "Quest_Down" )

g_pRadioButtonWeapon_Shop_Quest:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(693,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Quest:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(693,25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Quest:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(693,25)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(769,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Quest:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(690,22)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonWeapon_Shop_Quest:SetGroupID( 1 )
g_pRadioButtonWeapon_Shop_Quest:SetChecked( false )
g_pRadioButtonWeapon_Shop_Quest:SetCustomMsgChecked( STATE_SHOP_UI_CUSTOM_MSG["SSUCM_SELECT_MODE"] )




