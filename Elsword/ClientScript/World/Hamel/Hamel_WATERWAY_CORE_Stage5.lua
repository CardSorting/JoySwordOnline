-- Hamel_WATERWAY_CORE_Stage5.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.756863, 0.788235, 0.839216 ) 
g_pWorld:SetOriginColor_LUA(  0.756863, 0.788235, 0.839216 ) 
g_pWorld:SetLineMap( "Hamel_WATERWAY_CORE_Stage5_LineMap.lua" )
g_pWorld:SetBGM( "Music025_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Hamel_Waterway_Core_PlateMove.ogg" )



g_pWorld:SetFogWorld( 5600, 12000, -2799, 4533, -0.2, D3DXCOLOR( 0.364706, 0.776471, 0.419608, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_0"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "SNOW_FOG.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.0588235, 0, 0, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_SKY_WORLD_OBJECT_OVER_EFFECT_2"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "Peita_Chapel_S5_Lightt_Layer.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.121569, 0.309804, 0.490196, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_WATERWAY_CORE_S5_Gorund.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_WATERWAY_CORE_S5_Gorund.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 0.929412, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 5600, 12000, -2799, 4533, D3DXCOLOR(0.368627, 0.780392, 0.419608, 1), -0.2 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Hamel_WATERWAY_CORE_S5_Lightuv.Y" )
g_pObjectMesh:SetXMeshLOD( "Hamel_WATERWAY_CORE_S5_Lightuv.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 1 )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 0.490196, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetNotRenderWhenHidden( false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 5600, 12000, -2799, 4533, D3DXCOLOR(0.368627, 0.780392, 0.419608, 1), -0.2 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_WATERWAY_CORE_S5_ELV1.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_WATERWAY_CORE_S5_ELV1.X" )
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
g_pObjectSkinMesh:SetFog( 5600, 12000, -2799, 4533, D3DXCOLOR(0.368627, 0.780392, 0.419608, 1), -0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_WATERWAY_CORE_S5_ELV1GMUEL1.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_WATERWAY_CORE_S5_ELV1GMUEL1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.52549, 0.639216, 0.705882, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 5600, 12000, -2799, 4533, D3DXCOLOR(0.368627, 0.780392, 0.419608, 1), -0.2 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "HAMEL_WATERWAY_CORE_S5_ELV1SASEL.X" )
g_pObjectSkinMesh:AddXSkinModel( "HAMEL_WATERWAY_CORE_S5_ELV1SASEL.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0.7, 0 )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0.239216, 0.286275, 0.364706, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 5600, 12000, -2799, 4533, D3DXCOLOR(0.368627, 0.780392, 0.419608, 1), -0.2 )


-- PARTICLE -- 
