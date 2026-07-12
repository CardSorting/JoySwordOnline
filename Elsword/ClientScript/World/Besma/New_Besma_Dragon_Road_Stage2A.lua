-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- New_Besma_Dragon_Road_Stage2A.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "New_Besma_Dragon_Road_Stage2A_LineMap.lua" )
g_pWorld:SetBGM( "Music039_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaDragonRoad.ogg" )



g_pWorld:SetFogWorld( 5200, 7600, 3600, 467, -0.04, D3DXCOLOR( 1, 0.858824, 0.666667, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "Layer_Velder_Bridge_Hope_Light.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, -0.3, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.541176, 0.419608, 0, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_DRAGON_ROAD_STAGE2A_SKY.Y" )
g_pSkyDome:SetPos( -2800, 500, 0 )
g_pSkyDome:SetScale( D3DXVECTOR3( 1.2, 1, 1.2) )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetDomeMesh( "BESMA_VILLAGE_CLOUD01.Y" )
g_pSkyDome:SetPos( 4000, 2500, 4000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 0.7, 0.9, 0.7) )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2A_Column1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2A_Column1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 500, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2A_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2A_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(-2800, 500, 0) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 1.2, 1, 1.2) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Column02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Column02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Road01.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Road01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Road02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Road02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Road03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Road03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Road04.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Road04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Road05.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Road05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp01.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp04.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp05.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp06.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp06.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Dragon_Road_Stage2A_Scarp07.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Dragon_Road_Stage2A_Scarp07.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5200, 7600, 3600, 467, D3DXCOLOR(1, 0.858824, 0.666667, 1), -0.04 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "EAGLE_BALD_A.X" )
g_pObjectSkinMesh:AddXSkinModel( "EAGLE_BALD_A.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(13200, 1180, -530) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 50, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- PARTICLE -- 
