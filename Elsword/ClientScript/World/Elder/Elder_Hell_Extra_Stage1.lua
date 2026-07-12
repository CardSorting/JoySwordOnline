-- Elder_Hell_Extra_Stage1.lua



g_pWorld:SetLightPos( 2000, 2000, -1000 )
g_pWorld:SetLightColor_LUA(  0.588235, 0.588235, 0.588235 ) 
g_pWorld:SetOriginColor_LUA(  0.27451, 0.235294, 0.215686 ) 
g_pWorld:SetLineMap( "Elder_Wally_Castle_Lab_Stage1_LineMap.lua" )
g_pWorld:SetBGM( "Music014_Stage.ogg" )



g_pWorld:SetFogWorld( 800, 11400, -7932, 133, -0.02, D3DXCOLOR( 1, 1, 1, 1.0 ) )

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
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "rain-light.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(-0.04, -0.1, 1.15, 1.15)
g_pWorldLayer:SetColor(D3DXCOLOR(0.333333, 0.380392, 0.407843, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD02_WC.Y" )
g_pSkyDome:SetPos( 10000, 0, 3000 )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.62 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pSkyDome:SetDomeMesh( "CLOUD01_WC.Y" )
g_pSkyDome:SetPos( 10000, -1200, 3000 )
g_pSkyDome:SetRotationSpeed( -0.25 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pSkyDome:SetDomeMesh( "SKY_WC2.Y" )
g_pSkyDome:SetPos( 7500, 0, 3000 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_BackWall01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_BackWall01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Ceiling01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Ceiling01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Ceiling02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Ceiling02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Ceiling03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Ceiling03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Roof.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Roof.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Shadows.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Shadows.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Wall01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Wall01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Wall02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Wall02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Wall03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Wall03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage1_Wall04.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage1_Wall04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(1, 1, 1, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 800, 11400, -7932, 133, D3DXCOLOR(1, 1, 1, 1), -0.02 )


-- SKIN MESH -- 
-- PARTICLE -- 
