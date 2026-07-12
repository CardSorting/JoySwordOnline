-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Event_Cube_Result" )
g_pUIDialog:SetPos( 300, 200 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticMemo_Event_Success = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMemo_Event_Success )
g_pStaticMemo_Event_Success:SetName( "Event_Cube_Result" )


g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticMemo_Event_Success:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Common_TW_Event_Texture01Success.tga", "Note" )

g_pPictureImage:SetPoint
{
        
		                        
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}