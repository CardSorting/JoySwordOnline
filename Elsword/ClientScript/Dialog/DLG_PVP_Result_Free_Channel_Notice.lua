-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVP_Result_Front_Free_Channel" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pStaticFree_Channel_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFree_Channel_Notice )
g_pStaticFree_Channel_Notice:SetName( "g_pStaticFree_Channel_Notice" )




g_pPicture_Free_Channel_Notice = g_pUIDialog:CreatePicture()
g_pStaticFree_Channel_Notice:AddPicture( g_pPicture_Free_Channel_Notice )

g_pPicture_Free_Channel_Notice:SetTex( "DLG_Common_New_Texture63.TGA", "Free_Channel_Notice" )

g_pPicture_Free_Channel_Notice:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(645,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
