-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- testcastle.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.588235, 0.588235, 0.588235 ) 
g_pWorld:SetOriginColor_LUA(  0.258824, 0.25098, 0.219608 ) 
g_pWorld:SetLineMap( "LINEMAP_testcastle.lua" )
g_pWorld:SetBGM( "testcastle.mp3" )



g_pWorld:SetFogWorld( 12600, 31200, 933, 5600, 0.63, D3DXCOLOR( 1, 1, 1, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(2)
g_pWorldLayer:SetTex( "rain-blend.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.780392, 0.898039, 1, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "rain-light.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(-0.1, -0.1, 1.2, 1.2)
g_pWorldLayer:SetColor(D3DXCOLOR(0.364706, 0.443137, 0.552941, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(2)
g_pWorldLayer:SetTex( "world2.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0.8, 1, 0.2)
g_pWorldLayer:SetColor(D3DXCOLOR(0.0666667, 0.0745098, 0.0352941, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "
" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(1, -1.8)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "rain-02.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(1, 1, 1, 1))
g_pWorldLayer:SetTexUV(2, -2.8)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD02_WC.X" )
g_pSkyDome:SetPos( 0, 500, 7500 )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 12600, 31200, 933, 5600, D3DXCOLOR(1, 1, 1, 1), 0.01 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pSkyDome:SetDomeMesh( "CLOUD01_WC.X" )
g_pSkyDome:SetPos( 0, -700, 7500 )
g_pSkyDome:SetRotationSpeed( -0.25 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 12600, 31200, 933, 5600, D3DXCOLOR(1, 1, 1, 1), 0.63 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pSkyDome:SetDomeMesh( "SKY_WC2.X" )
g_pSkyDome:SetPos( 0, 0, 7500 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true
g_pSkyDome:SetFog( 12600, 31200, 933, 5600, D3DXCOLOR(1, 1, 1, 1), 0.63 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Wally_Castle_Stage2.X" )
g_pObjectMesh:SetXMeshLOD( "Wally_Castle_Stage2.X" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 12600, 31200, 933, 5600, D3DXCOLOR(1, 1, 1, 1), 0.63 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Wally_Castle_Stage2_Shadows.X" )
g_pObjectMesh:SetXMeshLOD( "Wally_Castle_Stage2_Shadows.X" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 12600, 31200, 933, 5600, D3DXCOLOR(1, 1, 1, 1), 0.63 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Wally_Castle_Stage2_BG.X" )
g_pObjectMesh:SetXMeshLOD( "Wally_Castle_Stage2_BG.X" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( false )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 12600, 31200, 933, 5600, D3DXCOLOR(1, 1, 1, 1), 0.63 )


-- SKIN MESH -- 
-- PARTICLE -- 
