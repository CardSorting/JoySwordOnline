-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_UI_Festival" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )

-----------SD로 표시

g_pStaticFestival = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFestival )
g_pStaticFestival:SetName( "Static_Festival" )


g_pPictureLeft = g_pUIDialog:CreatePicture()
g_pStaticFestival:AddPicture( g_pPictureLeft )

g_pPictureLeft:SetTex( "DLG_UI_Common_Texture49.tga", "bg_left" )

g_pPictureLeft:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(116+103,557+41+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureRight = g_pUIDialog:CreatePicture()
g_pStaticFestival:AddPicture( g_pPictureRight )

g_pPictureRight:SetTex( "DLG_UI_Common_Texture49.tga", "bg_right" )

g_pPictureRight:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(717,634+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
