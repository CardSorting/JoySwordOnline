-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Event_Halloween_Stage_Boss.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.509804, 0.627451, 0.584314 ) 
g_pWorld:SetOriginColor_LUA(  0.294118, 0.4, 0.376471 ) 
g_pWorld:SetLineMap( "Event_Halloween_Stage_Boss_Linemap.lua" )
g_pWorld:SetBGM( "Music013_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Owl.ogg" )


g_pWorld:SetFogWorld( 2400, 6800, -1932, 733, 0.2, D3DXCOLOR( 0.254902, 0.713726, 0.866667, 1.0 ) )

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
g_pSkyDome:SetDomeMesh( "ELDER_DRUID_FOREST_STAGE3_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage3_Herb4.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage3_Herb4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.5 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(2677, 452, 898) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.7, 1.6, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 19, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 1.9 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1202, 270, 1699) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 1.1, 1.4, 1) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -25, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "BAT_EYE.X" )
g_pObjectSkinMesh:AddXSkinModel( "BAT_EYE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_OCCASIONAL_ONE_WAIT"] )
g_pObjectSkinMesh:SetOccasionalEventTime( 3 )
g_pObjectSkinMesh:SetOccasionalPlayRate( 50 )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(2093, 392, 1681) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, 20, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2400, 6800, -1932, 733, D3DXCOLOR(0.254902, 0.713726, 0.866667, 1), 0.2 )


-- PARTICLE -- 
