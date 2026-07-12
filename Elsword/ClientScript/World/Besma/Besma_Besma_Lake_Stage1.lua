-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Besma_Besma_Lake_Stage1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Besma_Besma_Lake_Stage1_linemap.lua" )
g_pWorld:SetBGM( "Music019_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaLake_Day.ogg" )



g_pWorld:SetFogWorld( 4600, 11000, -2532, 4800, 0.13, D3DXCOLOR( 0.866667, 0.956863, 0.87451, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_BESMA_LAKE_STAGE1_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.99 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Column1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Column1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Column2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Column2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Column3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Column3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Column4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Column4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Herb4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Herb4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Herb5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Herb5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Logo.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Logo.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Road2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Road2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Road3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Road3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Road4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Road4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Road5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Road5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Road6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Road6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp10.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Scarp9.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Scarp9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), 0.13 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, -1500) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )
g_pObjectMesh:SetBillboardType( MATRIX_BILLBOARD_TYPE["BT_Y"] )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water10.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water9.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water_S1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water_S1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water_S2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water_S2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage1_Water_S3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage1_Water_S3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4600, 11000, -2532, 4800, D3DXCOLOR(0.866667, 0.960784, 0.87451, 1), -0.24 )


-- SKIN MESH -- 
-- PARTICLE -- 
