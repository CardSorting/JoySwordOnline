-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- New_Besma_Dragon_Road_Stage1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "New_Besma_Dragon_Road_Stage1_LineMap.lua" )
g_pWorld:SetBGM( "Music039_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaDragonRoad.ogg" )



g_pWorld:SetFogWorld( 3000, 10000, 500, -3000, 0, D3DXCOLOR( 0.784314, 0.901961, 1, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "Layer_Velder_Bridge_Hope_Light.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, -0.2, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.541176, 0.419608, 0, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_DRAGON_ROAD_STAGE1_SKY.Y" )
g_pSkyDome:SetPos( 4000, -2000, 5000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 1, 0.9, 1) )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "BESMA_VILLAGE_CLOUD02.Y" )
g_pSkyDome:SetPos( 11000, 4000, 6000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 0.58, 0.7, 0.58) )
g_pSkyDome:SetRotationSpeed( -0.7 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage1_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage1_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4000, 0, 5000) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Village_Back.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Village_Back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(8500, -3000, 3000) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 0.8, 0.8, 0.8) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Road2.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Road2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Road3.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Road3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Road4.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Road4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Road5.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Road5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Road6.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Road6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 300, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage1_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage1_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3000, 10000, 500, -3000, D3DXCOLOR(0.784314, 0.901961, 1, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
