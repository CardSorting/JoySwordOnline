-- ANCIENT_WATERWAY_S1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Hamel_Waterway_Stage1_LineMap.lua" )
g_pWorld:SetBGM( "ANCIENT_WATERWAY_S1.ogg" )
g_pWorld:SetBGM( "Music043_Stage.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Resiam_WaterFall1.ogg", 5359, 1359, -17, 4000  )               -- 폭포 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Hamel_Waterway_Gear1.ogg", -3213, 1229, -386, 4000  )               -- 기어1 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Hamel_Waterway_Gear2.ogg", 4127, 1225, -17, 4000  )               -- 기어2 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Hamel_Waterway_Gear3.ogg", 10672, 1229, -17, 4000  )               -- 기어3 
g_pWorld:AddEffectBGM_LUA( "Amb_ResiamUnderWater_WaterFlow.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Hamel_Waterway_ExteriorFall.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Hamel_Waterway_LightLaser.ogg" )



g_pWorld:SetFogWorld( 6800, 40000, 4667, 1333, 0, D3DXCOLOR( 1, 1, 0.866667, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "ruben_village_Layer.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 0.819608, 1, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_chain1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_chain1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_chain2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_chain2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_chainuv1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_chainuv1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.3, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_chainuv2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_chainuv2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.3, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Light_uv.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Light_uv.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -2 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Light_uv1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Light_uv1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -2 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Lightttttt_uv1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Lightttttt_uv1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.6, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Lightttttt_uv2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Lightttttt_uv2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.6, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Lightttttt_uv3.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Lightttttt_uv3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.6, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Round1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Round1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Round2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Round2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Round3.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Round3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Round4.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Round4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Round5.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Round5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_Round6.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_Round6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_shadow1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_shadow1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.780392, 0.588235, 0.6, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_shadow2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_shadow2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.780392, 0.588235, 0.6, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_shadow3.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_shadow3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.780392, 0.588235, 0.6, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_H1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_H1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.7, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_H2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_H2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.3, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_H3.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_H3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.4, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_H4.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_H4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.4, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_H5.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_H5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.4, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_H6.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_H6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.7, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V3.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V4.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V5.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.4 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V6.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V7.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_uv_V8.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_uv_V8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.7 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpa_water.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpa_water.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.623529, 0.788235, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpaclo1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpaclo1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_alpaclo2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_alpaclo2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR1.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR10.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR11.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR11.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR12.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR12.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR13.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR13.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR14.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR14.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR15.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR15.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR16.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR16.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR17.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR17.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR18.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR18.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR19.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR19.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR2.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR20.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR20.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR3.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR4.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR5.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR6.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR7.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR8.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GR9.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GR9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_GRound.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_GRound.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "ANCIENT_WATERWAY_S1_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "ANCIENT_WATERWAY_S1_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 0.968628, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI1503.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI1503.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI1502.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI1502.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_ALPA_MOVELIGHT2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_ALPA_MOVELIGHT2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.6, 0.6 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_MOVEROCK3.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_MOVEROCK3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI2002.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI2002.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_MOVEROCK1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_MOVEROCK1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_ALPALIGHT.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_ALPALIGHT.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_ALPA_MOVELIGHT3.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_ALPA_MOVELIGHT3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.6, 0.6 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_MOVEROCK2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_MOVEROCK2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI2001.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI2001.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI1505.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI1505.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI1504.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI1504.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_TOPNI1501.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_TOPNI1501.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ANCIENT_WATERWAY_S1_ALPA_MOVELIGHT1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ANCIENT_WATERWAY_S1_ALPA_MOVELIGHT1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.6, 0.6 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 6800, 40000, 4667, 1333, D3DXCOLOR(1, 1, 0.866667, 1), 0 )


-- PARTICLE -- 
