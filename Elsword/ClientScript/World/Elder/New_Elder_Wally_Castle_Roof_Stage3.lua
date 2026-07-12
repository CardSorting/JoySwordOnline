-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- New_Elder_Wally_Castle_Roof_Stage3.lua



g_pWorld:SetLightPos( 2000, 2000, -1000 )
g_pWorld:SetLightColor_LUA(  0.698, 0.7294, 1 ) 
g_pWorld:SetOriginColor_LUA(  0.258, 0.3058, 0.7294 ) 
g_pWorld:SetLineMap( "New_Elder_Wally_Castle_Roof_Stage3_LineMap.lua" )
g_pWorld:SetBGM( "Music016_Stage.ogg" )



g_pWorld:SetFogWorld( 1500, 1700, 2000, -1000, 0, D3DXCOLOR( 0.0588235, 0.0392157, 0.0588235, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD02_WC.Y" )
g_pSkyDome:SetPos( 0, 0, 4500 )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetDomeMesh( "CLOUD01_WC.Y" )
g_pSkyDome:SetPos( 0, -2000, 4500 )
g_pSkyDome:SetRotationSpeed( -0.25 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "SKY_WC2.Y" )
g_pSkyDome:SetPos( 0, 0, 4500 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_BackWall.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_BackWall.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Shadow01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Shadow01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Shadow03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Shadow03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Shadow04.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Shadow04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Shadow05.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Shadow05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall06.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall06.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall07.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall07.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall08.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall08.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall09.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall09.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall10.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage3_Wall11.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage3_Wall11.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Elder_Wally_Castle_Roof_Stage3_Shadow02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Elder_Wally_Castle_Roof_Stage3_Shadow02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Elder_Wally_Castle_Roof_Stage3_Wall03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Elder_Wally_Castle_Roof_Stage3_Wall03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Elder_Wally_Castle_Roof_Stage3_Wall04.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Elder_Wally_Castle_Roof_Stage3_Wall04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Elder_Wally_Castle_Roof_Stage3_Wall05.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Elder_Wally_Castle_Roof_Stage3_Wall05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1500, 1700, 2000, -1000, D3DXCOLOR(0.0588235, 0.0392157, 0.0588235, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
