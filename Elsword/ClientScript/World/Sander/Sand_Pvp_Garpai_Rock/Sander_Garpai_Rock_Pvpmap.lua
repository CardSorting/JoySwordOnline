-- Sand_Pvp_Garpai_Rock.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Sander_Garpai_Rock_Pvpmap_Linemap.lua" )
g_pWorld:SetBGM( "Music055_Stage.ogg" )

g_pWorld:AddEffectBGM_LUA( "Amb_Sander_GarpaiRock0_Wind.ogg" ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_Sandgust2.ogg", 59, 1658, -718, 3500 ) 
g_pWorld:Add3DEffectBGM_LUA( "Amb_Sander_GarpaiRock1_Birds.ogg" )



g_pWorld:SetFogWorld( -3199, 70000, 0, 0, 0, D3DXCOLOR( 0.74902, 0.639216, 0.439216, 1.0 ) )
g_pWorld:SetProjection( 15, 500000, 4, 0, 0, 0, 0 )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "SAND_1VS1_PVP00.Y" )
g_pObjectMesh:SetXMeshLOD( "SAND_1VS1_PVP00.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( -3199, 70000, 0, 0, D3DXCOLOR(0.74902, 0.643137, 0.443137, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "SAND_1VS1_PVP01.Y" )
g_pObjectMesh:SetXMeshLOD( "SAND_1VS1_PVP01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( -3199, 70000, 0, 0, D3DXCOLOR(0.74902, 0.643137, 0.443137, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "SAND_1VS1_PVP02.Y" )
g_pObjectMesh:SetXMeshLOD( "SAND_1VS1_PVP02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( -3199, 70000, 0, 0, D3DXCOLOR(0.74902, 0.643137, 0.443137, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "SAND_1VS1_PVP_BACK03.Y" )
g_pObjectMesh:SetXMeshLOD( "SAND_1VS1_PVP_BACK03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaTestEnable = true
g_pObjectMesh:SetFog( -3199, 70000, 0, 0, D3DXCOLOR(0.74902, 0.643137, 0.443137, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "SAND_1VS1_PVP_WIND.X" )
g_pObjectSkinMesh:AddXSkinModel( "SAND_1VS1_PVP_WIND.X" )
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
g_pObjectSkinMesh:SetFog( -3199, 70000, 0, 0, D3DXCOLOR(0.74902, 0.643137, 0.443137, 1), 0 )


-- PARTICLE -- 
