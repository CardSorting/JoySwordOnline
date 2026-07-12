-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "Tutorial_Exit" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



g_pButtonTutorial_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTutorial_Exit )
g_pButtonTutorial_Exit:SetName( "Tutorial_Exit" )
g_pButtonTutorial_Exit:SetNormalTex( "DLG_Common_New_Texture16.TGA", "Tutorial_Exit_Normal" )

g_pButtonTutorial_Exit:SetOverTex( "DLG_Common_New_Texture16.TGA", "Tutorial_Exit_Over" )

g_pButtonTutorial_Exit:SetDownTex( "DLG_Common_New_Texture16.TGA", "Tutorial_Exit_Over" )

g_pButtonTutorial_Exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(834,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTutorial_Exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(834,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTutorial_Exit:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(835,4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonTutorial_Exit:SetCustomMsgMouseUp( DUNGEON_GAME_UI_CUSTOM_MSG["DGUCM_TOTORIAL_EXIT"] )




