-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Event" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pRadioSub_Tab_Total = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Total )

g_pRadioSub_Tab_Total:SetFixOverByCheck( true )
g_pRadioSub_Tab_Total:SetShowOffBGByCheck( true )


g_pRadioSub_Tab_Total:SetName( "Totalitem" )
g_pRadioSub_Tab_Total:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_ALL"] )

g_pRadioSub_Tab_Total:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "total_normal" )


g_pRadioSub_Tab_Total:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "total_Over" )


g_pRadioSub_Tab_Total:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "total_Over" )


g_pRadioSub_Tab_Total:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(372,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Total:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367-7,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Total:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(372-7,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(372+36-7,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Total:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(367-7,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Total:SetGroupID( 1 )
g_pRadioSub_Tab_Total:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Package = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Package )

g_pRadioSub_Tab_Package:SetFixOverByCheck( true )
g_pRadioSub_Tab_Package:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Package:SetName( "tab_Package" )
g_pRadioSub_Tab_Package:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_EVENT_PACKAGE"] )


g_pRadioSub_Tab_Package:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "package_normal" )


g_pRadioSub_Tab_Package:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "package_Over" )


g_pRadioSub_Tab_Package:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "package_Over" )


g_pRadioSub_Tab_Package:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(415+5,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Package:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(410+5-10,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Package:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(415+5-10,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(466+5-10,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Package:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(410+5-10,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Package:SetGroupID( 1 )
g_pRadioSub_Tab_Package:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 

--[[
g_pRadioSub_Tab_Fashion = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Fashion )

g_pRadioSub_Tab_Fashion:SetFixOverByCheck( true )
g_pRadioSub_Tab_Fashion:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Fashion:SetName( "tab_fashon" )
g_pRadioSub_Tab_Fashion:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_EVENT_FASHION"] )

g_pRadioSub_Tab_Fashion:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "fashion_normal" )


g_pRadioSub_Tab_Fashion:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "fashion_Over" )


g_pRadioSub_Tab_Fashion:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "fashion_Over" )


g_pRadioSub_Tab_Fashion:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(477+15,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Fashion:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(472+15-10,52-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Fashion:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(477+15-10,51-4)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(512+15-10+20,51+26-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Fashion:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(472+15-10,52-4)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Fashion:SetGroupID( 1 )
g_pRadioSub_Tab_Fashion:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 

g_pRadioSub_Tab_Accessory = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Accessory )

g_pRadioSub_Tab_Accessory:SetFixOverByCheck( true )
g_pRadioSub_Tab_Accessory:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Accessory:SetName( "Tab_Accessory" )
g_pRadioSub_Tab_Accessory:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_EVENT_ACCESSORY"] )

g_pRadioSub_Tab_Accessory:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "accessory_normal" )


g_pRadioSub_Tab_Accessory:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "accessory_Over" )


g_pRadioSub_Tab_Accessory:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "accessory_Over" )


g_pRadioSub_Tab_Accessory:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(525+35,52-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Accessory:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(520+35-5,52-1-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Accessory:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(525+35-5,51-1-4)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(583+35-5+15,51+26-1-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Accessory:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(520+35-5,52-1-4)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Accessory:SetGroupID( 1 )
g_pRadioSub_Tab_Accessory:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 










g_pRadioSub_Tab_Use = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Use )

g_pRadioSub_Tab_Use:SetFixOverByCheck( true )
g_pRadioSub_Tab_Use:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Use:SetName( "tab_Use" )
g_pRadioSub_Tab_Use:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_EVENT_CONSUME"] )

g_pRadioSub_Tab_Use:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "use_normal" )


g_pRadioSub_Tab_Use:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "use_Over" )


g_pRadioSub_Tab_Use:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "use_Over" )


g_pRadioSub_Tab_Use:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(595+58,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(590+58-8,52-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(595+58-8,51-4)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(631+58+20-8,51+26-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Use:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(590+58-8,52-4)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetGroupID( 1 )
g_pRadioSub_Tab_Use:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 



g_pRadioSub_Tab_Setup = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Setup )

g_pRadioSub_Tab_Setup:SetFixOverByCheck( true )
g_pRadioSub_Tab_Setup:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Setup:SetName( "Tab_Setup" )
g_pRadioSub_Tab_Setup:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_EVENT_INSTALL"] )

g_pRadioSub_Tab_Setup:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "setup_normal" )


g_pRadioSub_Tab_Setup:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "setup_Over" )


g_pRadioSub_Tab_Setup:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "setup_Over" )


g_pRadioSub_Tab_Setup:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(643+100,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Setup:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(638+100-6,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Setup:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(643+100-6,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(678+100-5+40,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Setup:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(638+100-6,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Setup:SetGroupID( 1 )
g_pRadioSub_Tab_Setup:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Pet = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Pet )

g_pRadioSub_Tab_Pet:SetFixOverByCheck( true )
g_pRadioSub_Tab_Pet:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Pet:SetName( "Tab_Pet" )
g_pRadioSub_Tab_Pet:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_EVENT_PET"] )

g_pRadioSub_Tab_Pet:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "pet_normal" )


g_pRadioSub_Tab_Pet:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "pet_Over" )


g_pRadioSub_Tab_Pet:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "pet_Over" )


g_pRadioSub_Tab_Pet:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(697+150,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Pet:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(692+150-8,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Pet:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(697+150-8,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(720+150-8,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Pet:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(692+150-8,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Pet:SetGroupID( 1 )
g_pRadioSub_Tab_Pet:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 
--]]