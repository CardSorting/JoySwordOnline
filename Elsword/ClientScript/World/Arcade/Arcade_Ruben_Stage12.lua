-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 신모드_테스트맵12.lua



g_pWorld:SetLightPos( 0.45, 0.45, -0.9 )
g_pWorld:SetLineMap( "Arcade_Ruben_Stage12_linemap.lua" )
g_pWorld:SetBGM( "MiniGame001.ogg" )



-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "SKY_FOE.Y" )
g_pSkyDome:SetPos( 0, -2000, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD01_WC.Y" )
g_pSkyDome:SetPos( 1000, 0, 0 )
g_pSkyDome:SetScale( D3DXVECTOR3( 0.3, 0.3, 0.3) )
g_pSkyDome:SetRotationSpeed( -0.8 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD02_WC.Y" )
g_pSkyDome:SetPos( 1000, 0, 0 )
g_pSkyDome:SetScale( D3DXVECTOR3( 0.3, 0.3, 0.3) )
g_pSkyDome:SetRotationSpeed( -0.8 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "신모드_테스트맵12_발판.Y" )
g_pObjectMesh:SetXMeshLOD( "신모드_테스트맵12_발판.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "신모드_테스트맵_배경12.Y" )
g_pObjectMesh:SetXMeshLOD( "신모드_테스트맵_배경12.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


-- SKIN MESH -- 
-- PARTICLE -- 
