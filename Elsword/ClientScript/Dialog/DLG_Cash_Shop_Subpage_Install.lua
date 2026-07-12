-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Install" )
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


g_pRadioSub_Tab_Slot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Slot )

g_pRadioSub_Tab_Slot:SetFixOverByCheck( true )
g_pRadioSub_Tab_Slot:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Slot:SetName( "Tab_Slot" )
g_pRadioSub_Tab_Slot:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_INSTALL_ADD_SLOT"] )


g_pRadioSub_Tab_Slot:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "slot_normal" )


g_pRadioSub_Tab_Slot:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "slot_Over" )


g_pRadioSub_Tab_Slot:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "slot_Over" )


g_pRadioSub_Tab_Slot:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(419,50)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Slot:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367+47-8,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Slot:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(372+47-8,50-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(372+36+47-8+20,50+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Slot:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(367+47-8,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Slot:SetGroupID( 1 )
g_pRadioSub_Tab_Slot:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 


g_pRadioSub_Tab_Shop = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Shop )

g_pRadioSub_Tab_Shop:SetFixOverByCheck( true )
g_pRadioSub_Tab_Shop:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Shop:SetName( "Tab_Shop" )
g_pRadioSub_Tab_Shop:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_INSTALL_PERSONAL_SHOP"] )

g_pRadioSub_Tab_Shop:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "shop_normal" )


g_pRadioSub_Tab_Shop:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "shop_Over" )


g_pRadioSub_Tab_Shop:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "shop_Over" )


g_pRadioSub_Tab_Shop:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(466+29,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Shop:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461+26-5,51-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Shop:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(466+29-5,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(466+36+47+29-5,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Shop:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(461+26-5,51-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Shop:SetGroupID( 1 )
g_pRadioSub_Tab_Shop:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 

g_pRadioSub_Tab_Other = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Other )

g_pRadioSub_Tab_Other:SetFixOverByCheck( true )
g_pRadioSub_Tab_Other:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Other:SetName( "Tab_Other" )
g_pRadioSub_Tab_Other:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_INSTALL_ETC"] )

g_pRadioSub_Tab_Other:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "other_normal" )


g_pRadioSub_Tab_Other:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "other_Over" )


g_pRadioSub_Tab_Other:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "other_Over" )


g_pRadioSub_Tab_Other:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513+27+26+30,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Other:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513+22+26+30-6,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Other:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513+27+26+30-6,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+47+27+26+30-6,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Other:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513+22+26+30-6,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Other:SetGroupID( 1 )
g_pRadioSub_Tab_Other:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 
