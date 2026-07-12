-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-- El_Forest_North_Stage2.lua
-- Nov 30 2006 16:36:42


g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "El_Forest_North_Stage2_LineMap.lua" )
g_pWorld:SetBGM( "Music008_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_El_Forest_Bird2.ogg" )


g_pWorld:SetFogWorld( 32200, 11600, 1333, -866, -0.25, D3DXCOLOR( 0.0666667, 0.0941177, 0.0666667, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "EL_FOREST_NORTH_STAGE2_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 1000 )
g_pSkyDome:SetScale( D3DXVECTOR3( 1.3, 1.3, 1.3) )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Herb4.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Herb4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Herb5.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Herb5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree7.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 32200, 11600, 1333, -866, D3DXCOLOR(0.0666667, 0.0941177, 0.0705882, 1), -0.25 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Cloud02.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Cloud02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2_Cloud01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2_Cloud01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- SKIN MESH -- 
-- PARTICLE -- 
