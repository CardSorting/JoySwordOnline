-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Plain_Stage_2-1B.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Plain_Stage2-1B_linemap.lua" )
g_pWorld:SetBGM( "Music024_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_Recycle_Plain_Wind.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_Plain_Insects.ogg" )


g_pWorld:SetFogWorld( 2800, 7600, -8799, 9000, 0.33, D3DXCOLOR( 0.631373, 0.831373, 0.819608, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_BackTree01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_BackTree01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_BackTree02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_BackTree02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_BackTree03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_BackTree03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_BackTree04.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_BackTree04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_BackTree05.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_BackTree05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Cloud01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Cloud01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Cloud02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Cloud02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Cloud03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Cloud03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Cloud04.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Cloud04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Cloud05.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Cloud05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Herb01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Herb01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Herb02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Herb02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Herb03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Herb03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Land01.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Land01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Land02.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Land02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Land03.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Land03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Land04.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Land04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Land05.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Land05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Plain_Stage2-1B_Star.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Plain_Stage2-1B_Star.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2800, 7600, -8799, 9000, D3DXCOLOR(0.631373, 0.831373, 0.819608, 1), 0.33 )


-- SKIN MESH -- 
-- PARTICLE -- 
