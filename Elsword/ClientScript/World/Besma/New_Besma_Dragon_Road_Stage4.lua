-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- New_Besma_Dragon_Road_Stage4.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "New_Besma_Dragon_Road_Stage4_LineMap.lua" )
g_pWorld:SetBGM( "Music009_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaDragonRoad.ogg" )



g_pWorld:SetFogWorld( 6000, 8400, 2867, -3399, 0, D3DXCOLOR( 0.223529, 0.0509804, 0, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "WorldLayer_NonAlpha.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, -0.6, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.541176, 0.419608, 0, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_DRAGON_ROAD_STAGE4_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetScale( D3DXVECTOR3( 1.2, 1, 1.4) )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetDomeMesh( "BESMA_VILLAGE_CLOUD01.Y" )
g_pSkyDome:SetPos( 2500, 1000, 7000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 0.7, 1, 0.7) )
g_pSkyDome:SetRotationSpeed( -0.8 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "BESMA_VILLAGE_CLOUD02.Y" )
g_pSkyDome:SetPos( 2500, 4000, 7000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 0.75, 1, 0.75) )
g_pSkyDome:SetRotationSpeed( -1 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Road2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Road2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Road3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Road3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Road6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Road6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage4_Scarp7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage4_Scarp7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage4_Road04.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage4_Road04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage4_Road05.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage4_Road05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 8400, 2867, -3399, D3DXCOLOR(0.223529, 0.0509804, 0, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
