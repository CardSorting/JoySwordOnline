-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pUIStatic )
g_pUIStatic:SetName( "GuideDesc" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pUIStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "UIEdge.tga" )
g_pPicture:SetEdge( false, 2, D3DXCOLOR(1,1,1,1) );
