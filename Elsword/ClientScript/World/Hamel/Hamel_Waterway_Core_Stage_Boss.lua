-- Hamel_Waterway_Core_Stage_Boss.lua



-- Hamel_Waterway_Core_Stage_Boss.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.823529, 0.631373, 0.52549 ) 
g_pWorld:SetOriginColor_LUA(  0.768628, 0.611765, 0.721569 ) 
g_pWorld:SetLineMap( "Hamel_Waterway_Core_Stage_Boss_LineMap.lua" )
g_pWorld:SetBGM( "Music044_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Hamel_Waterway_Core_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Hamel_Waterway_Core_Chain.ogg" )


g_pWorld:SetFogWorld( 3800, 21200, -3932, 4933, 0, D3DXCOLOR( 0.486275, 1, 0.411765, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "SNOW_FOG.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.0313726, 0, 0, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "rain-light.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.164706, 0.211765, 0.27451, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_WATERWAY_CORE_SbOSS_GR1.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_WATERWAY_CORE_SbOSS_GR1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_WATERWAY_CORE_SbOSS_GR2.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_WATERWAY_CORE_SbOSS_GR2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3800, 21200, -3932, 4933, D3DXCOLOR(0.490196, 1, 0.411765, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "TRIGGER_HAMEL_WATERWAY_CORE_SBOSS_BODY.X" )
g_pObjectSkinMesh:AddXSkinModel( "Trigger_HAMEL_WATERWAY_CORE_SBOSS_BODY.X" )
g_pObjectSkinMesh:AddAnim( "Wait" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = false
g_pObjectSkinMesh:SetFog( 3800, 21200, -3932, 4933, D3DXCOLOR(0.490196, 1, 0.411765, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "TRIGGER_HAMEL_WATERWAY_CORE_SBOSS_CHAINUV.X" )
g_pObjectSkinMesh:AddXSkinModel( "Trigger_HAMEL_WATERWAY_CORE_SBOSS_CHAINUV.X" )
g_pObjectSkinMesh:AddAnim( "Wait" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.5, 0 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.560784, 0.423529, 0.596078, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 3800, 21200, -3932, 4933, D3DXCOLOR(0.490196, 1, 0.411765, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "TRIGGER_HAMEL_WATERWAY_CORE_SBOSS_GMUEL.X" )
g_pObjectSkinMesh:AddXSkinModel( "Trigger_HAMEL_WATERWAY_CORE_SBOSS_GMUEL.X" )
g_pObjectSkinMesh:AddAnim( "Wait" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.713726, 0.839216, 1, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 3800, 21200, -3932, 4933, D3DXCOLOR(0.490196, 1, 0.411765, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "TRIGGER_HAMEL_WATERWAY_CORE_SBOSS_LIGHT.X" )
g_pObjectSkinMesh:AddXSkinModel( "Trigger_HAMEL_WATERWAY_CORE_SBOSS_LIGHT.X" )
g_pObjectSkinMesh:AddAnim( "Wait" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0, 0.5 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.890196, 0.823529, 0.443137, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 3800, 21200, -3932, 4933, D3DXCOLOR(0.490196, 1, 0.411765, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "TRIGGER_HAMEL_WATERWAY_CORE_SBOSS_WATER.X" )
g_pObjectSkinMesh:AddXSkinModel( "Trigger_HAMEL_WATERWAY_CORE_SBOSS_WATER.X" )
g_pObjectSkinMesh:AddAnim( "Wait" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.643137, 1, 0.819608, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 3800, 21200, -3932, 4933, D3DXCOLOR(0.490196, 1, 0.411765, 1), 0 )


-- PARTICLE -- 
