-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Besma_Dragon_Road_Stage1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Besma_Dragon_Road_Stage1_linemap.lua" )
g_pWorld:SetBGM( "Music039_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaDragonRoad.ogg" )


g_pWorld:SetFogWorld( 2400, 12000, 0, 0, -0.16, D3DXCOLOR( 0.85098, 1, 1, 1.0 ) )
-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_DRAGON_ROAD_STAGE1_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Road7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Road7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Scarp5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Scarp5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Column1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Column1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 12000, 0, 0, D3DXCOLOR(0.85098, 1, 1, 1), -0.16 )


-- SKIN MESH -- 
-- PARTICLE -- 
