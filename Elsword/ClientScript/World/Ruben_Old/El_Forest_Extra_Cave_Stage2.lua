-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- El_Forest_Extra_Cave_Stage2.lua


g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "El_Forest_Extra_Cave_Stage2_LineMap.lua" )
g_pWorld:SetBGM( "Music010_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_Bat.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_WaterFall.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_WaterDrop.ogg" )







g_pWorld:SetFogWorld( 2400, 2600, -4599, -1132, -1, D3DXCOLOR( 0, 0.0313726, 0.0705882, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetDomeMesh( "EL_FOREST_EXTRA_CAVE_STAGE2_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -0.9 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Cave1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Cave1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Cave2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Cave2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Cave3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Cave3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Cave4.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Cave4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Cave5.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Cave5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Crystal1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Crystal1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Crystal2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Crystal2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Crystal3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Crystal3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Fog1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Fog1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Fog2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Fog2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Fog3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Fog3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Extra_Cave_Stage2_Ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Extra_Cave_Stage2_Ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2400, 2600, -4599, -1132, D3DXCOLOR(0, 0.0313726, 0.0705882, 1), -1 )


-- SKIN MESH -- 
-- PARTICLE -- 
