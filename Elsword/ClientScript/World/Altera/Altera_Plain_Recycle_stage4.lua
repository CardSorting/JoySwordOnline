-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Plain_stage4.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Plain_Recycle_stage4_linemap.lua" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_Recycle_Plain_Wind.ogg" )
g_pWorld:SetBGM( "Music013_Boss.ogg" )



--g_pWorld:SetFogWorld( 3800, 10400, 0, 0, 0.32, D3DXCOLOR( 1, 0.505882, 0.376471, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Cloud2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Cloud2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Cloud3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Cloud3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Cloud4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Cloud4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Fog.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Fog.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Herb.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Herb.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Herb_1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Herb_1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Land1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Land1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Land2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Land2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Land3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Land3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), -0.7 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree7.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Recycle_Stage4_Tree8.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Recycle_Stage4_Tree8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 3800, 10400, 0, 0, D3DXCOLOR(1, 0.505882, 0.376471, 1), 0.32 )


-- SKIN MESH -- 
-- PARTICLE -- 

