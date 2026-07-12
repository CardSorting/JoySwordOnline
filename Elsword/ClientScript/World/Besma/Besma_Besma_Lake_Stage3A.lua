-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Besma_Besma_Lake_Stage3A.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Besma_Besma_Lake_Stage3A_linemap.lua" )
g_pWorld:SetBGM( "Music019_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaLake_Day.ogg" )


g_pWorld:SetFogWorld( 6400, 12800, -2932, 4600, 0, D3DXCOLOR( 0.847059, 0.886275, 0.992157, 1.0 ) )
-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_BESMA_LAKE_STAGE3A_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Logo.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Logo.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )

g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Road2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Road2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Road3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Road3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Road4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Road4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Road5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Road5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Scarp8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Scarp8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Water.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Water.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Water1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Water1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Water2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Water2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Water3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Water3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Water4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Water4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Water_S1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Water_S1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Column1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Column1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Column2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Column2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage3A_Column3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage3A_Column3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6400, 12800, -2932, 4600, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 




