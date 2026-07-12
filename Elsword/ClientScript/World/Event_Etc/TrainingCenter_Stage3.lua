-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- World_TrainingCenter_Stage3.lua



g_pWorld:SetLightPos( 2000, 2000, -1000 )
g_pWorld:SetLineMap( "TrainingCenter_Stage3_linemap.lua" )
g_pWorld:SetBGM( "Music001_Tutorial.ogg" )



-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD02_WC.Y" )
g_pSkyDome:SetPos( 10000, -2000, 3000 )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pSkyDome:SetDomeMesh( "CLOUD01_WC.Y" )
g_pSkyDome:SetPos( 10000, -3200, 3000 )
g_pSkyDome:SetRotationSpeed( -0.25 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pSkyDome:SetDomeMesh( "SKY_WC2.Y" )
g_pSkyDome:SetPos( 7500, -2000, 3000 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "TrainingCenter_Mesh.Y" )
g_pObjectMesh:SetXMeshLOD( "TrainingCenter_Mesh.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "TrainingCenter_Shadows.Y" )
g_pObjectMesh:SetXMeshLOD( "TrainingCenter_Shadows.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "TrainingCenter_Floor_Stage3.Y" )
g_pObjectMesh:SetXMeshLOD( "TrainingCenter_Floor_Stage3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


-- SKIN MESH -- 
-- PARTICLE -- 


