-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Event_Halloween_Stage2.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.509804, 0.627451, 0.584314 ) 
g_pWorld:SetOriginColor_LUA(  0.239216, 0.329412, 0.286275 ) 
g_pWorld:SetLineMap( "Event_Halloween_Stage2_Linemap.lua" )
g_pWorld:SetBGM( "Music014_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Owl.ogg" )


g_pWorld:SetFogWorld( 3600, 6800, -1932, 733, 0.2, D3DXCOLOR( 0.431373, 0.811765, 1, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(2)
g_pWorldLayer:SetTex( "rain-blend.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(2)
g_pWorldLayer:SetTex( "world2.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0.7, 1, 0.3)
g_pWorldLayer:SetColor(D3DXCOLOR(0.286275, 0.219608, 0.164706, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "rain-light.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(-0.2, -0.23, 1.5, 1.5)
g_pWorldLayer:SetColor(D3DXCOLOR(0.321569, 0.619608, 0.87451, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "ELDER_DRUID_FOREST_STAGE1-1B_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Ground3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Ground3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Moon.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Moon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage1-1B_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage1-1B_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1980, 680, 591) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 0.9, 0.9, 1) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.5 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1940, 620, 575) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1.9, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 15) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 2 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(2000, 580, 575) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 0.8, 1.2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 0, 10) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(5256, 360, 703) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -60, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 45 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(5280, 276, 719) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.3, 1, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -60, -10) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.1 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10050, 1131, 135) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.5, 1.2, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 5, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 2.1 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10100, 1043, 130) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.5 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10080, 1211, 125) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1, 1.3, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 5, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.7 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10050, 935, 140) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.5, 1.9, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 20, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3.4 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 30 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(10050, 995, 130) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 20, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.6 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 60 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(11790, 490, 1773) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -22, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 2600, 1867, -599, D3DXCOLOR(0.431373, 0.811765, 1, 1.0), 0 )


-- PARTICLE -- 
