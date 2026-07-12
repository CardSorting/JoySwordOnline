-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_BATTLE_FIELD_NAME" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )

g_pStatictown = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictown )
g_pStatictown:SetName( "BATTLE_FIELD_NAME" )



----------------------        마을          --------------------------
-------------------------------------------------------------------


g_pPictureruben = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureruben )

g_pPictureruben:SetTex( "DLG_UI_Common_Texture_Fieldname_1.tga", "FIELD_NAME_RUBEN_0" )
--g_pPictureruben:SetIndex(1)

g_pPictureruben:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(340,259)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}