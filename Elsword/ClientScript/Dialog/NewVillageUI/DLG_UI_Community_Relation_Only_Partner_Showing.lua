-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 145, 0 ) ) -- 유저1  ---  31 , 145
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 176, 0 ) ) -- 유저2  ---  31 , 176

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 400, -150, 0.8 ) ) -- 화면 중앙을 기준으로 유닛의 뷰어 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -250000, 50000, -500000 ) ) -- 유닛뷰어에 적용될 LightPos