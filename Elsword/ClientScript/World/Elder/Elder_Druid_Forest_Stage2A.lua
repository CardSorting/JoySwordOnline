-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Elder_Druid_Forest_Stage2A.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Elder_Druid_Forest_Stage2A_linemap.lua" )
g_pWorld:SetBGM( "Music012_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Owl.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Bug.ogg" )



g_pWorld:SetFogWorld( 1800, 2400, 3000, -1000, 0, D3DXCOLOR( 0.0392157, 0, 0.156863, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "ELDER_DRUID_FOREST_STAGE2A_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Ground3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Ground3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Moon.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Moon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage2A_Tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage2A_Tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1800, 2400, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.156863, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.9 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(11, 436, 501) )
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
g_pObjectSkinMesh:SetOccasionalEventTime( 2.5 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1305, 484, 1566) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 20, 0) )
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
g_pObjectSkinMesh:SetOccasionalEventTime( 2.3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(3223, 471, 1358) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 20, 0) )
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
g_pObjectSkinMesh:SetOccasionalEventTime( 1.9 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(5225, 1080, 459) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.7, 2.5, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -25, 0) )
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
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(8022, 1217, 933) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 0.9, 1) )
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
g_pObjectSkinMesh:SetOccasionalEventTime( 2.1 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(8090, 1189, 909) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.2, 1.5, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 10, 0) )
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
g_pObjectSkinMesh:SetOccasionalEventTime( 2.5 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10310, 1600, 1610) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1.2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 5, 0) )
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
g_pObjectSkinMesh:SetOccasionalEventTime( 2.8 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(9700, 1150, 465) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -40, 0) )
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
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(9620, 1200, 440) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- PARTICLE -- 
