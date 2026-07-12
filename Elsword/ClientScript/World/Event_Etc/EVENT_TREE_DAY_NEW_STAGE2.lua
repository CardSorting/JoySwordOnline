-- EVENT_TREE_DAY_NEW_STAGE2.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "EVENT_TREE_DAY_NEW_STAGE2_LineMap.lua" )
g_pWorld:SetBGM( "Music035_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Ruben_Tree_BirdsSing.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Ruben_Tree_Waterfall_Small.ogg", 12086, 452, 1349, 3000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Ruben_Tree_Waterfall_Smal2.ogg", 19826, 444, 6906, 3000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Ruben_Tree_Waterfall.ogg", 14957, 1051, 2868, 9000 )


g_pWorld:SetFogWorld( 5600, 13000, 1867, 800, 0.1, D3DXCOLOR( 0.831373, 0.956863, 0.956863, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_3"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "ruben_village_Layer.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.913726, 1, 0.466667, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_Clo1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_Clo1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_Clo2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_Clo2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_Clo3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_Clo3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_pokpo1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_pokpo1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_pokpo2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_pokpo2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_pokpo3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_pokpo3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.7 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa4.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa5.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa6.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7b.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7b.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7c.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa7c.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8b.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8b.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8c.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa8c.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa9.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa9a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa9a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr1_alpa9b.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr1_alpa9b.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr2_alpa10.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr2_alpa10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr2_alpa11.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr2_alpa11.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa11a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa11a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr2_alpa12.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr2_alpa12.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa13.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa13.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa4.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa5.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa5a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa5a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa6.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa7.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa8Light.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa8Light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.08, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa8Light2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa8Light2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.08, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr2_alpa9.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr2_alpa9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_UNIT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr3_alpa10.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_Gr3_alpa10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa10Light.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa10Light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.08, 0 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa1a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa1a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa3aa.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa3aa.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa4.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa5.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa6.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa7.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa8.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpa9.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpa9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin3a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin3a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin4.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin4a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin4a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin5.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin5a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin5a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin6.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin6a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin6a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin7a.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin7a.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin8.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin9.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamin9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gr3_alpamini1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gr3_alpamini1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gra1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gra1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_Gra2.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_Gra2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Gra3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Gra3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Mt1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Mt1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Mt2.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Mt2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "EVENT_TREE_DAY_NEW_STAGE2_S2_tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "EVENT_TREE_DAY_NEW_STAGE2_S2_tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_tree7.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_tree7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_water1.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_water1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.6 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 13000, 1867, 800, D3DXCOLOR(0.831373, 0.956863, 0.960784, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Ruben_Ruin_Of_Elf_S2_alpa_rainbow.Y" )
g_pObjectMesh:SetXMeshLOD( "Ruben_Ruin_Of_Elf_S2_alpa_rainbow.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- SKIN MESH -- 
-- PARTICLE -- 
