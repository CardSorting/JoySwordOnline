-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Plain_Stage2B.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Plain_Recycle_Stage2B_linemap.lua" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_Recycle_Plain_Wind.ogg" )
g_pWorld:SetBGM( "Music018_Stage.ogg" )



--g_pWorld:SetFogWorld( 600, 16000, 0, 0, -0.26, D3DXCOLOR( 1, 0.576471, 0.54902, 1.0 ) )
-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "ALTERA_PLAIN_RECYCLE_STAGE2B_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
--g_pSkyDome:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -1 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Cloud3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Cloud3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Cloud4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Cloud4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Fog1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Fog1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Fog2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Fog2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Land1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Land1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Land2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Land2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Land3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Land3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Land4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Land4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Cloud2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Cloud2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage2B_Cloud2_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage2B_Cloud2_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 600, 16000, 0, 0, D3DXCOLOR(1, 0.576471, 0.54902, 1), -0.26 )


-- SKIN MESH -- 
-- PARTICLE -- 

