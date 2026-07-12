-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Elder_Druid_Forest_Stage1-1A.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Elder_Druid_Forest_Stage1-1A_linemap.lua" )
g_pWorld:SetBGM( "Music012_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Owl.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Bug.ogg" )


g_pWorld:SetFogWorld( 1800, 2400, 2800, -466, 0, D3DXCOLOR( 0.0352941, 0, 0.156863, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "ELDER_DRUID_FOREST_STAGE1-1A_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Cloud2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Cloud2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Cloud3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Cloud3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Ground3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Ground3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Herb0.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Herb0.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Herb4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Herb4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Moon.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Moon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1A_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1A_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 2800, -466, D3DXCOLOR(0.0352941, 0, 0.156863, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1232, 1200, 1936) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -20, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 60 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1838, 1580, 248) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.5, 2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 12, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 2 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 40 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1890, 1469, 228) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 2, 3.5, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -4, 10) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1846, 1344, 227) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 2, 2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 20, 10) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(2247, 1266, 1900) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 2.7 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(3960, 1200, 1940) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1.2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 14, -10) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 2 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(5410, 1030, 1717) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -35, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 2.3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 40 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(5402, 989, 1698) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 0.9, 1.1, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -35, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 4 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10735, 1440, 507) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 2, 2.5, 1) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.5 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(8660, 900, 245) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 2, 2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -20, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 40 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(9330, 290, 2110) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.1, 1.1, 1) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 55 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10210, 430, 560) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 2, 2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -36, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- PARTICLE -- 
