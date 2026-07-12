-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Offerings_Alter_Stage_Boss.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Offerings_Alter_Stage_Boss_LineMap.lua" )
g_pWorld:SetBGM( "Music031_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Offerings_Alter_Ambience.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Offerings_Alter_LazerBim.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Offerings_Alter_Wind.ogg" )


-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Back_Light01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Back_Light01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.3 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Column01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Column01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 250) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Column02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Column02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 250) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Column03.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Column03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 250) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Column04.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Column04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 250) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Land01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Land01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Boss_Land02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Boss_Land02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Light02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Light02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.4 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage4_Bottom01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage4_Bottom01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage4_Bottom02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage4_Bottom02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage4_Land01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage4_Land01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage4_Land02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage4_Land02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage_Boss_Platform01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage_Boss_Platform01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage_Boss_Platform02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage_Boss_Platform02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Alter_Stage_Boss_Platform03.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Alter_Stage_Boss_Platform03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


-- SKIN MESH -- 
--[[
-- PARTICLE --
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "BackLight_Peita_Stage6_Particle01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0 ,  4731.059 , 1541.319 ) )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_1"] )

-- PARTICLE --
g_pObjectParticle = g_pWorld:CreateObjectParticleDelay( g_pUIMajorParticle, "BackLight_Peita_Stage6_Particle02", 2 )
--g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0 ,  0 , 1541.319 ) )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0 ,  4731.059 , 1541.319 ) )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_1"] )

-- PARTICLE --
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "BackLight_Peita_Stage6_Particle03" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 0 ,  5708.375 , 1541.319 ) )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetLayer( X2_LAYER["XL_UNIT_0"] )
--]]



