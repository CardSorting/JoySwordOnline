-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Cash_Shop_Subpage_Consume" )
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
