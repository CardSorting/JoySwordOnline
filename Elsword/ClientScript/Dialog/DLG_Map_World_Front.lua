-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "Map_World_front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStaticWorld_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWorld_Info )
g_pStaticWorld_Info:SetName( "WorldMap" )

g_pPictureWorld_Info_Title = g_pUIDialog:CreatePicture()
g_pStaticWorld_Info:AddPicture( g_pPictureWorld_Info_Title )

g_pPictureWorld_Info_Title:SetTex( "DLG_Common_Texture00.TGA", "World_Map" )

g_pPictureWorld_Info_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

}


