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


g_pRadioSub_Tab_Heal = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Heal )

g_pRadioSub_Tab_Heal:SetFixOverByCheck( true )
g_pRadioSub_Tab_Heal:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Heal:SetName( "Tab_Heal" )
g_pRadioSub_Tab_Heal:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_CONSUME_RESTORE"] )


g_pRadioSub_Tab_Heal:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "heal_normal" )


g_pRadioSub_Tab_Heal:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "heal_Over" )


g_pRadioSub_Tab_Heal:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "heal_Over" )


g_pRadioSub_Tab_Heal:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(419+2,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Heal:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367+47+2-4,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Heal:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(372+47+2-4,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(372+36+47+2-4+20,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Heal:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(367+47+2-4,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Heal:SetGroupID( 1 )
g_pRadioSub_Tab_Heal:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 



g_pRadioSub_Tab_Premium = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Premium )

g_pRadioSub_Tab_Premium:SetFixOverByCheck( true )
g_pRadioSub_Tab_Premium:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Premium:SetName( "Tab_Premium" )
g_pRadioSub_Tab_Premium:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_CONSUME_PREMIUM"] )

g_pRadioSub_Tab_Premium:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "premium_normal" )


g_pRadioSub_Tab_Premium:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "premium_Over" )


g_pRadioSub_Tab_Premium:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "premium_Over" )


g_pRadioSub_Tab_Premium:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(466+4+30,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Premium:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461+4+30-6,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Premium:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(466+4+30-6,52-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(466+36+47+4+30-6+10,52+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Premium:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(461+4+30-6,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Premium:SetGroupID( 1 )
g_pRadioSub_Tab_Premium:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 






g_pRadioSub_Tab_Reset = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Reset )

g_pRadioSub_Tab_Reset:SetFixOverByCheck( true )
g_pRadioSub_Tab_Reset:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Reset:SetName( "Tab_Reset" )
g_pRadioSub_Tab_Reset:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_CONSUME_INIT"] )


g_pRadioSub_Tab_Reset:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "reset_normal" )


g_pRadioSub_Tab_Reset:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "reset_Over" )


g_pRadioSub_Tab_Reset:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "reset_Over" )


g_pRadioSub_Tab_Reset:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513+27+5+40,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Reset:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(513+22+5+40-6,52-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Reset:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(513+27+5+40-6,51-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(513+47+27+5+40-6+30,51+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Reset:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(513+22+5+40-6,52-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Reset:SetGroupID( 1 )
g_pRadioSub_Tab_Reset:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 



g_pRadioSub_Tab_Other = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioSub_Tab_Other )

g_pRadioSub_Tab_Other:SetFixOverByCheck( true )
g_pRadioSub_Tab_Other:SetShowOffBGByCheck( true )

g_pRadioSub_Tab_Other:SetName( "Tab_Other" )
g_pRadioSub_Tab_Other:AddDummyInt( CASH_SHOP_SUB_CATEGORY["CSSC_CONSUME_ETC"] )

g_pRadioSub_Tab_Other:SetNormalTex( "DLG_Common_New_Texture54_A.TGA", "other_normal" )


g_pRadioSub_Tab_Other:SetOverTex( "DLG_Common_New_Texture54_A.TGA", "other_Over" )


g_pRadioSub_Tab_Other:SetCheckedTex( "DLG_Common_New_Texture54_A.TGA", "other_Over" )


g_pRadioSub_Tab_Other:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(598+7+80 - 35,52+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Other:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593+7+80-7 - 35,52+1-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Other:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(598+7+80-7 - 35,51+1-5)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(631+7+80-7 - 35,51+26+1-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioSub_Tab_Other:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(593+7+80-7 - 35,52+1-5)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioSub_Tab_Other:SetGroupID( 1 )
g_pRadioSub_Tab_Other:SetCustomMsgChecked( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_SUB_CATEGORY_CHANGE"] ) 

