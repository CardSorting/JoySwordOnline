-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Elder_Druid_Forest_Stage_Pvp.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLightColor_LUA(  0.901961, 0.901961, 1 ) 
g_pWorld:SetLineMap( "Elder_Druid_Forest_Stage_Pvp_LineMap.lua" )
g_pWorld:SetBGM( "Music012_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Owl.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_DarkForest_Bug.ogg" )



g_pWorld:SetFogWorld( 1600, 1800, 3000, -1000, 0, D3DXCOLOR( 0.0392157, 0, 0.0784314, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "WorldLayer_NonAlpha.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, -0.6, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.431373, 0.207843, 1, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Back_Ground01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Back_Ground01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Back_Ground02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Back_Ground02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Back_Mushroom.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Back_Mushroom.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Back_Tree01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Back_Tree01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Back_Tree02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Back_Tree02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Back_Tree03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Back_Tree03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Cloud01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Cloud01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Cloud02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Cloud02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Ground01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Ground01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Ground02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Ground02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Herb01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Herb01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Herb02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Herb02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Herb03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Herb03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Herb04.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Herb04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Moon.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Moon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Moon_Flare.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Moon_Flare.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Tree01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Tree01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Tree02_Body.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Tree02_Body.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Tree02_Head.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Tree02_Head.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Tree03_Body.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Tree03_Body.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Tree03_Head.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Tree03_Head.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Druid_Forest_Stage_Pvp_Tree04.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Druid_Forest_Stage_Pvp_Tree04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 1800, 3000, -1000, D3DXCOLOR(0.0392157, 0, 0.0784314, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
