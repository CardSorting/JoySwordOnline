-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticRelation = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRelation )
g_pStaticRelation:SetName( "Relation" )




-------------------------------------------------커플 하세요!

g_pPicture_Ariel = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_Ariel )
g_pPicture_Ariel:SetTex( "DLG_UI_Common_Texture_MarriageSystem_04.TGA", "Bg_Community_Ariel" )

g_pPicture_Ariel:SetPoint
{     
	"LEFT_TOP		= D3DXVECTOR2(26,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------프로포즈
g_pButtonPropose = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPropose )
g_pButtonPropose:SetName( "Button_Propose" )
g_pButtonPropose:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_BuyRing_Normal" )

g_pButtonPropose:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_BuyRing_Over" )

g_pButtonPropose:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_BuyRing_Over" )


g_pButtonPropose:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPropose:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPropose:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPropose:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_BUY_RING"] )

