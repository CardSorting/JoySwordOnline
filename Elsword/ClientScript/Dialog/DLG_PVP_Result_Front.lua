-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "PVP_Result_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




-- 캐릭터 위치 (team, team death)

g_pUIDialog:AddDummyPos( D3DXVECTOR3( -360, -30, 300 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -100, -30, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 137, -30, 100 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 380, -30, 0 ) )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 140, -370, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 240, -370, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 340, -370, 100 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 440, -370, 300 ) )



-- 캐릭터 위치 (death survival)
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 18, -105, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -300, -90, 100 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 340, -90, 200 ) )
