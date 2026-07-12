-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Ending_Event_Character" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )






g_pStaticCharacter = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter )
g_pStaticCharacter:SetName( "Character_Picture" )


g_pPictureCharacter= g_pUIDialog:CreatePicture()
g_pStaticCharacter:AddPicture( g_pPictureCharacter)
g_pPictureCharacter:SetTex2( "HQ_CutIn_Elsword_1.dds" )
g_pPictureCharacter:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(1024-361,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024, 768)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



