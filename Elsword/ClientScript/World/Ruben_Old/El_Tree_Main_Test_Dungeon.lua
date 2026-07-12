-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- El_Tree_Main.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "El_Tree_Main_Test_Dungeon_linemap.lua" )
g_pWorld:SetBGM( "El_Tree_Main.ogg" )
g_pWorld:SetFogWorld( -1799, 200, 5800, -3999, 0.1, D3DXCOLOR(0.435294, 0.490196, 0.568627, 1) )


-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "a.Y" )
g_pObjectMesh:SetXMeshLOD( "a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( -1799, 200, 5800, -3999, D3DXCOLOR(0.435294, 0.490196, 0.568627, 1), 0.35 )


-- SKIN MESH -- 
-- PARTICLE -- 
