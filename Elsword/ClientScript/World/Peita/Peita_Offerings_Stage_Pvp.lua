-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Offerings_Stage_Pvp.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Offerings_Stage_Pvp_LineMap.lua" )
g_pWorld:SetBGM( "Music026_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Drone01.ogg" )



g_pWorld:SetFogWorld( 2200, 4200, 1533, -932, 0, D3DXCOLOR( 0.101961, 0.0666667, 0.101961, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(0)
g_pWorldLayer:SetTex( "Tree_Fog.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1.7)
g_pWorldLayer:SetColor(D3DXCOLOR(0.27451, 0.509804, 0.556863, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Back_Alpha.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Back_Alpha.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, -1500) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Back_Mesh.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Back_Mesh.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, -1500) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Cloud01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Cloud01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Cloud02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Cloud02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Herb01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Herb01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Herb02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Herb02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, -50, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Tower_Down.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Tower_Down.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Tower_Side.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Tower_Side.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Boss_Tower_Up.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Boss_Tower_Up.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Pvp_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Pvp_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Pvp_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Pvp_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Pvp_Mesh03.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Pvp_Mesh03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(4, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Pvp_Arc.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Pvp_Arc.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Pvp_Flare01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Pvp_Flare01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Offerings_Stage_Pvp_Flare02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Offerings_Stage_Pvp_Flare02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2200, 4200, 1533, -932, D3DXCOLOR(0.101961, 0.0666667, 0.101961, 1), 0 )










-- SKIN MESH -- 
-- PARTICLE -- 



g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Flare_Particle_Peita_BossStage1_01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -3296.663, 862.462, -17.151 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Flare_Particle_Peita_BossStage1_01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -573.956, 862.462, -17.151 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )





g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Light_Peita_BossStage1_02" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -3296.663, 862.462, -17.151 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Light_Peita_BossStage1_02" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -573.956, 862.462, -17.151 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




