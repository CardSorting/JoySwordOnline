-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


-----결혼 시작
g_pButton_WeddingStart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_WeddingStart )
g_pButton_WeddingStart:SetName( "WeddingStart" )

g_pButton_WeddingStart:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_Wedding_Start_Normal" )
g_pButton_WeddingStart:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_Wedding_Start_Over" )
g_pButton_WeddingStart:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bt_Wedding_Start_Over" )
g_pButton_WeddingStart:SetNormalPoint
{

	"LEFT_TOP		= D3DXVECTOR2(899,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WeddingStart:SetOverPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(899,11)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WeddingStart:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(899+1,11+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WeddingStart:SetCustomMsgMouseUp( STATE_WEDDING_GAME_UI_CUSTOM_MSG["SWGUCM_WEDDING_START"] )
