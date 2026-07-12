-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_UI_CHRISTMAS" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )

-----------크리스마스 장식

g_pStaticCHRISTMAS = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCHRISTMAS )
g_pStaticCHRISTMAS:SetName( "Static_CHRISTMAS" )


g_pPictureLeft = g_pUIDialog:CreatePicture()
g_pStaticCHRISTMAS:AddPicture( g_pPictureLeft )

g_pPictureLeft:SetTex( "DLG_UI_Common_Texture60.tga", "CHRIST_1" )

g_pPictureLeft:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(-1,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRight = g_pUIDialog:CreatePicture()
g_pStaticCHRISTMAS:AddPicture( g_pPictureRight )

g_pPictureRight:SetTex( "DLG_UI_Common_Texture60.tga", "CHRIST_2" )

g_pPictureRight:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(508,581)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRight = g_pUIDialog:CreatePicture()
g_pStaticCHRISTMAS:AddPicture( g_pPictureRight )

g_pPictureRight:SetTex( "DLG_UI_Common_Texture60.tga", "CHRIST_3" )

g_pPictureRight:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(1016+4,598)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

