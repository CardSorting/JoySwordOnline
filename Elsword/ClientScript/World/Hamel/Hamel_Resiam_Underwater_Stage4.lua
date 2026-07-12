-- Hamel_Resiam_Underwater_Stage4.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Hamel_Resiam_Underwater_Stage4_LineMap.lua" )
g_pWorld:SetBGM( "Music042_Stage.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_ResiamUnderWater_Bubble1.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_ResiamUnderWater_Bubble2.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_ResiamUnderWater_Bubble3.ogg" )



g_pWorld:SetFogWorld( 2000, 5000, 1000, 6000, 0, D3DXCOLOR( 0.176471, 0.137255, 0.356863, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Building_Far.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Building_Far.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Building_Hide01.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Building_Hide01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Building_Hide02.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Building_Hide02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.65098, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Coral_Blue.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Coral_Blue.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.392157, 0.784314, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Fence.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Fence.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.65098, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Ground_Far.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Ground_Far.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Mesh03.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Mesh03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Mesh04.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Mesh04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Mesh05.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Mesh05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_Resiam_Underwater_Stage4_Sea_Mustard_Far.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_Resiam_Underwater_Stage4_Sea_Mustard_Far.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0.14902, 0.647059, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(3295, 3400, 4055) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -90, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.588235, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(3325, 3540, 4245) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -90, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.588235, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(-2055, 4850, -325) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -30, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.588235, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(-1910, 4940, -400) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -30, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.588235, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD_BLUE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD_BLUE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1940, 3545, 5170) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -90, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.384314, 0.6, 0.862745, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD_BLUE.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_RESIAM_UNDERWATER_STAGE1_SEAMUSTARD_BLUE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1980, 3615, 5250) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -90, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.392157, 0.588235, 0.862745, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 5000, 1000, 6000, D3DXCOLOR(0.176471, 0.137255, 0.356863, 1), 0 )


-- PARTICLE -- 


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMinorParticle, "Pa_DeepSea_Bouble_Big" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 750, 4325, 55 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_2"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMinorParticle, "Pa_DeepSea_Bouble_Small" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 750, 4325, 55 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_2"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMinorParticle, "Pa_DeepSea_Bouble_Big" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 2430, 2270, 3405 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_2"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMinorParticle, "Pa_DeepSea_Bouble_Small" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 2430, 2270, 3405 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( true )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_2"] )
