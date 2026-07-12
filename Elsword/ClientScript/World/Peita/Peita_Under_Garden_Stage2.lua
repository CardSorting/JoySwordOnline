-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Under_Garden_Stage2.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Under_Garden_Stage2_LineMap.lua" )
g_pWorld:SetBGM( "Music029_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_UnderGarden_01.ogg" )


g_pWorld:SetFogWorld( 7600, 17600, 13000, -5000, 0, D3DXCOLOR( 0.384314, 0.776471, 0.784314, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Back_Wall.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Back_Wall.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, -1000, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Bramble01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Bramble01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Bramble02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Bramble02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Center_Island.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Center_Island.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Island01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Island01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Island02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Island02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(-1500, 0, -2000) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, 45, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Island03.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Island03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(-2000, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Stage2_Stem01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Stage2_Stem01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_UNDER_GARDEN_CENTER_CHOKSU.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_UNDER_GARDEN_CENTER_CHOKSU.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(-2350, 1200, -1500) )
g_pObjectSkinMesh:SetScale( D3DXVECTOR3( 0.5, 0.5, 0.5) )
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -70, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_UNDER_GARDEN_BACKFLARE02.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_UNDER_GARDEN_BACKFLARE02.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 100, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_UNDER_GARDEN_BACKFLARE01.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_UNDER_GARDEN_BACKFLARE01.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 100, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


-- PARTICLE -- 
