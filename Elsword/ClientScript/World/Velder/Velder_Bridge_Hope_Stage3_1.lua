-- Velder_Bridge_Hope_Stage3_1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Velder_Bridge_Hope_Stage3_1_LineMap.lua" )
g_pWorld:SetBGM( "Music032_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_VELDER_BRIDGE_Wind.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_VELDER_BRIDGE_Water.ogg" )



g_pWorld:SetFogWorld( 3600, 26600, 2500, 1000, 0, D3DXCOLOR( 1, 1, 1, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(2)
g_pWorldLayer:SetTex( "Tree_Fog.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0.23, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.403922, 0.176471, 0.176471, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "VELDER_DWELLING_STAGE_BOSS_SKY.Y" )
g_pSkyDome:SetPos( 2000, 200, -6000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 1.2, 1.2, 1.2) )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "VELDER_DWELLING_STAGE_BOSS_CLOUD.Y" )
g_pSkyDome:SetPos( 2000, 500, 0 )
g_pSkyDome:SetRotationSpeed( 0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Back02.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Back02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Back_Mountain.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Back_Mountain.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_BackMesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_BackMesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_BackMesh01_Bottom.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_BackMesh01_Bottom.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_BackMesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_BackMesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_BackMesh02_Bottom.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_BackMesh02_Bottom.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage2_Gate_Window.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage2_Gate_Window.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage2_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage2_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage2_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage2_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage2_Mesh06.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage2_Mesh06.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage2_Mesh07.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage2_Mesh07.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_Mesh03.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_Mesh03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_Mesh04.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_Mesh04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_River_Wave_A.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_River_Wave_A.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_River_Wave_B.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_River_Wave_B.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.1 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_Hope_Stage3_1_River_Wave_C.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_Hope_Stage3_1_River_Wave_C.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 5, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_River.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_River.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1015, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Velder_Bridge_River_Wave_A.Y" )
g_pObjectMesh:SetXMeshLOD( "Velder_Bridge_River_Wave_A.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 1000, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.2, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 26600, 2500, 1000, D3DXCOLOR(1, 1, 1, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
