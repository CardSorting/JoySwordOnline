-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Besma_Dragon_Road_Canyon_Stage2-1B.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  1, 0.862745, 0.662745 ) 
g_pWorld:SetOriginColor_LUA(  1, 0.784314, 0.505882 ) 
g_pWorld:SetLineMap( "Besma_Dragon_Road_Canyon_Stage2-1B_linemap.lua" )
g_pWorld:SetBGM( "Music039_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaCanyon.ogg" )



g_pWorld:SetFogWorld( 3600, 10200, 3400, -4732, 0.11, D3DXCOLOR( 1, 0.819608, 0.392157, 1.0 ) )
-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_DRAGON_ROAD_CANYON_STAGE2-1B_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Column1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Column1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Road7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Road7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Dragon_Road_Stage2-1B_Scarp8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Dragon_Road_Stage2-1B_Scarp8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 10200, 3400, -4732, D3DXCOLOR(1, 0.823529, 0.396078, 1), 0.11 )


-- SKIN MESH -- 
-- PARTICLE -- 

