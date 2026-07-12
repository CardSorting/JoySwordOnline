-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 신모드_테스트맵08.lua



g_pWorld:SetLightPos( 0.45, 0.45, -0.9 )
g_pWorld:SetOriginColor_LUA(  0.6, 0.67451, 0.839216 ) 
g_pWorld:SetLineMap( "Arcade_Elder_Stage09_LineMap.lua" )
g_pWorld:SetBGM( "MiniGame002.ogg" )


-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Arcade_Elder_Stage09_Floor.Y" )
g_pObjectMesh:SetXMeshLOD( "Arcade_Elder_Stage09_Floor.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Arcade_Elder_Stage09_Wall.Y" )
g_pObjectMesh:SetXMeshLOD( "Arcade_Elder_Stage09_Wall.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Arcade_Elder_WallyCastle_Roof_BackImage.Y" )
g_pObjectMesh:SetXMeshLOD( "Arcade_Elder_WallyCastle_Roof_BackImage.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(-100, 50, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 0.9, 0.8, 1) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


-- SKIN MESH -- 
-- PARTICLE -- 
