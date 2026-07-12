-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )
g_pUIDialog:SetPos( 720,2 )


g_pStaticOver = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOver )
g_pStaticOver:SetName( "MouseOver" )