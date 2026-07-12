-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "SlotManager" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

--마이 인포 슬롯 반응 전역 범위
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 30, 147, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 500, 570, 0 ) )
