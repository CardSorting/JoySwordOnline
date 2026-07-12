-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Plain_Stage3.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Plain_Recycle_Stage3_linemap.lua" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_Recycle_Plain_Wind.ogg" )
g_pWorld:SetBGM( "Music013_Boss.ogg" )



--g_pWorld:SetFogWorld( 2600, 9600, 0, 0, 0.16, D3DXCOLOR( 1, 0.588235, 0.380392, 1.0 ) )
-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "ALTERA_PLAIN_RECYCLE_STAGE3_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
--g_pSkyDome:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), -0.39 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Cloud2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Cloud2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Cloud3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Cloud3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Fog.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Fog.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Herb.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Herb.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Land1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Land1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Land2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Land2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree7.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Tree8.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Tree8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage3_Cloud4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage3_Cloud4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 2600, 9600, 0, 0, D3DXCOLOR(1, 0.588235, 0.380392, 1), 0.16 )


-- SKIN MESH -- 
-- PARTICLE -- 
