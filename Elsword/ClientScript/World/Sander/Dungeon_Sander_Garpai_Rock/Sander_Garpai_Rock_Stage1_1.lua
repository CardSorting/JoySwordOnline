-- Sander_Garpai_Rock_Stage1-1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetOriginColor_LUA(  0.960784, 0.894118, 0.768627 ) 
g_pWorld:SetLineMap( "Sander_Garpai_Rock_Stage1_1_LineMap.lua" )
g_pWorld:SetBGM( "Music056_Stage.ogg" )

g_pWorld:AddEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Wind.ogg" ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Sandgust1.ogg", 3582, 1773, -16831, 6000 )  
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Sandgust2.ogg", 9440, 3808, -17020, 8000 ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Birds.ogg", 7316, 6796, -15685, 6000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Sandgust3.ogg", 3079, 4861, -12235, 9000 ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Eagle1.ogg", 218, 9836, -4654, 8000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Sandgust4.ogg", 3837, 7293, 1876, 15000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Sandgust5.ogg", 5888, 7381, 17789, 10000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Sandgust6.ogg", 7372, 12352, 25291, 8000 ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_1_Eagle2.ogg", 16277, 15008, 14414, 8000 )

g_pWorld:SetFogWorld( 600, 19000, 0, 0, -0.08, D3DXCOLOR( 0.592157, 0.419608, 0.231373, 1.0 ) )
g_pWorld:SetProjection( 10, 500000, 4, 0, 0, 0, 0 )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "rain-blend.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.992157, 0.533333, 0.780392, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer:SetLayerId(0)
g_pWorldLayer:SetInitShow( true )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_behimos.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_behimos.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.705882, 0.745098, 0.831373, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_bone1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_bone1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_bone10.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_bone10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_bone4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_bone4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_bone6.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_bone6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_dust1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_dust1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_dust2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_dust2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_dust3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_dust3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_dust4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_dust4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_dust5.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_dust5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_dust6.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_dust6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_gasi1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_gasi1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_gasi2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_gasi2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_gasi3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_gasi3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_gasi4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_gasi4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_gasi5.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_gasi5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_gasi6.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_gasi6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pRenderParam.cullMode = D3DCULL["D3DCULL_NONE"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_ground_Boss.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_ground_Boss.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_plant3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_plant3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_plant4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_plant4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_plant5.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_plant5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_plant6.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_plant6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_uv.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_uv.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -1, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_uv_add.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_uv_add.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_valley1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_valley1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.6, 0.709804, 0.819608, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_valley2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_valley2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.6, 0.709804, 0.819608, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_alpa_valley3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_alpa_valley3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.6, 0.709804, 0.819608, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_balpan3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_balpan3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Bone.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Bone.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_alpa_bone.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_alpa_bone.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_alpa_bone5.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_alpa_bone5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_alpa_dust9.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_alpa_dust9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_alpa_plant10.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_alpa_plant10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_alpa_plant12.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_alpa_plant12.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_alpa_plant9.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_alpa_plant9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_Balpan4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_Balpan4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_light1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_light1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_light2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_light2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_mainlight.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_mainlight.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_spot1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_spot1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
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
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_spot2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_spot2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
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
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_spot3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_spot3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
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
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_spot4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_spot4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
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
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_spot5.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_spot5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
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
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_spot6.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_spot6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
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
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_bijew_UV.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_bijew_UV.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 1 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_gasi10.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_gasi10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_Obj1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_Obj1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_Stormgate.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_Stormgate.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_valley16.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_valley16.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_valley17.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_valley17.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_valley18.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_valley18.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Boss_valley19.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Boss_valley19.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_BossSKY.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_BossSKY.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_gasi_Boss.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_gasi_Boss.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_gate1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_gate1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Normal_End.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Normal_End.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_sand_uv1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_sand_uv1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.5 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_sand_uv2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_sand_uv2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.5 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_stormBoss.X" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_stormBoss.X" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 1.7, 1 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley14.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley14.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley15.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley15.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley2.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley3.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley4-1.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley4-1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley4.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley5.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Sander_Garpai_Rock_valley6.Y" )
g_pObjectMesh:SetXMeshLOD( "Sander_Garpai_Rock_valley6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SANDER_GARPAI_ROCK_STORM5.X" )
g_pObjectSkinMesh:AddXSkinModel( "SANDER_GARPAI_ROCK_STORM5.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.5, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SANDER_GARPAI_ROCK_STORM4.X" )
g_pObjectSkinMesh:AddXSkinModel( "SANDER_GARPAI_ROCK_STORM4.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.5, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SANDER_GARPAI_ROCK_STORM3.X" )
g_pObjectSkinMesh:AddXSkinModel( "SANDER_GARPAI_ROCK_STORM3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.5, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SANDER_GARPAI_ROCK_STORM1.X" )
g_pObjectSkinMesh:AddXSkinModel( "SANDER_GARPAI_ROCK_STORM1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.5, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SANDER_GARPAI_ROCK_STORM2.X" )
g_pObjectSkinMesh:AddXSkinModel( "SANDER_GARPAI_ROCK_STORM2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.5, 1 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 600, 19000, 0, 0, D3DXCOLOR(0.596078, 0.423529, 0.231373, 1), -0.08 )


-- PARTICLE -- 
