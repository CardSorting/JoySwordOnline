-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DeathSurvivalScore" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticPVPGameState = g_pUIDialog:CreateStatic()
g_pStaticPVPGameState:SetName( "StaticPVPGameState" )
g_pUIDialog:AddControl( g_pStaticPVPGameState )


g_pPictureState_Box1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_Box1 )

g_pPictureState_Box1:SetTex( "DLG_PVP_State_Info0.tga", "Black_Box1" )

g_pPictureState_Box1:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(431+10,128-58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureState_Box2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_Box2 )

g_pPictureState_Box2:SetTex( "DLG_PVP_State_Info0.tga", "Black_Box2" )

g_pPictureState_Box2:SetPoint
{

	
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(436+10,128-58)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(580+10,156-58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureState_Box3 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_Box3 )

g_pPictureState_Box3:SetTex( "DLG_PVP_State_Info0.tga", "Black_Box3" )

g_pPictureState_Box3:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(580+10,128-58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

