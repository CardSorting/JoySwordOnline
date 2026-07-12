-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- El_Forest_Extra_Cave_Stage5.lua

g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "El_Forest_Extra_Cave_Stage5_LineMap.lua" )
g_pWorld:SetBGM( "Music011_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_Bat.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_WaterFall.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_WaterDrop.ogg" )







g_pWorld:SetFogWorld( 2300, 2600, -5666, 3800, 0.11, D3DXCOLOR( 0, 0.054902, 0.105882, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "EL_FOREST_EXTRA_CAVE_STAGE5_SKY.Y" )
g_pSkyDome:SetPos( 8, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Cave1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Cave1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Cave2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Cave2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Cave3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Cave3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Crystal1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Crystal1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Crystal2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Crystal2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Crystal3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Crystal3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Fog1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Fog1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Fog2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Fog2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Water1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Water1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.22 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_Water2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_Water2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.2 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true

g_pObjectMesh:SetFog( 2300, 2600, -5666, 3800, D3DXCOLOR(0, 0.054902, 0.105882, 1), 0.11 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_FogLight01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_FogLight01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(8, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage5_FogLight02.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage5_FogLight02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(8, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


-- SKIN MESH -- 
-- PARTICLE -- 
