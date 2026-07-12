-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Pet" )
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


g_pRadioSub_Tab_Pet = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Pet )

g_pRadioSub_Tab_Pet:SetFixOverByCheck( true )
g_pRadioSub_Tab_Pet:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Pet:SetName( "Tab_Pet" )
g_pRadioSub_Tab_Pet:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_PET_PET"] )

g_pRadioSub_Tab_Pet:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "pet_normal" )


g_pRadioSub_Tab_Pet:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "pet_Over" )


g_pRadioSub_Tab_Pet:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "pet_Over" )


g_pRadioSub_Tab_Pet:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(425,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Pet:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(415-4,52-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Pet:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(425,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(372+36+47+6,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Pet:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(415-4,52-6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Pet:SetGroupID( 1 )
g_pRadioSub_Tab_Pet:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 

---탈것 텝 --신규--
g_pRadioSub_Tab_Use = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Use )

g_pRadioSub_Tab_Use:SetFixOverByCheck( true )
g_pRadioSub_Tab_Use:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Use:SetName( "Tab_RidingPet" )
g_pRadioSub_Tab_Use:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_PET_RIDING"] )

g_pRadioSub_Tab_Use:SetNormalTex( "DLG_UI_Button_RidingPet_01.TGA", "CASH_SHOP_RIDING_pet_normal" )


g_pRadioSub_Tab_Use:SetOverTex( "DLG_UI_Button_RidingPet_01.TGA", "CASH_SHOP_RIDING_pet_Over" )


g_pRadioSub_Tab_Use:SetCheckedTex( "DLG_UI_Button_RidingPet_01.TGA", "CASH_SHOP_RIDING_pet_Over" )


g_pRadioSub_Tab_Use:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(466+2+2+12-6-5,51-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(461+12+2-5-5,52-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(466+12-5-5,51-2-6)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(466+47+2+12-5,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Use:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(461+12-3-5,52-6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetGroupID( 1 )
g_pRadioSub_Tab_Use:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] )

---- 소비 텝 

g_pRadioSub_Tab_Use = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Use )

g_pRadioSub_Tab_Use:SetFixOverByCheck( true )
g_pRadioSub_Tab_Use:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Use:SetName( "Tab_Use" )
g_pRadioSub_Tab_Use:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_PET_CONSUME"] )

g_pRadioSub_Tab_Use:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "use_normal" )


g_pRadioSub_Tab_Use:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "use_Over" )


g_pRadioSub_Tab_Use:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "use_Over" )


g_pRadioSub_Tab_Use:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(466+2+65,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461+2-8+65,52-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(466+2+65,51)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(466+47+2+65,51+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Use:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(461+2-8+65,52-6)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Use:SetGroupID( 1 )
g_pRadioSub_Tab_Use:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] )

