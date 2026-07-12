-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Spiral_Corridor_Pvp.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Spiral_Corridor_Pvp_LineMap.lua" )
g_pWorld:SetBGM( "Music026_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Drone01.ogg" )



g_pWorld:SetFogWorld( 1000, 12200, 467, 7200, 0, D3DXCOLOR( 0.839216, 0.709804, 0.839216, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Back_Column.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Back_Column.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Back_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Back_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Back_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Back_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Back_Mesh03.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Back_Mesh03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Background.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Background.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Cloud01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Cloud01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Cloud02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Cloud02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Flare01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Flare01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Flare02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Flare02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Front_Mesh01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Front_Mesh01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Front_Mesh02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Front_Mesh02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Herb01.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Herb01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Herb02.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Herb02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Lava.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Lava.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.2 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Lava_Alpha.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Lava_Alpha.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.25 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Sky.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Sky.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Spiral_Corridor_Pvp_Tower.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Spiral_Corridor_Pvp_Tower.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1000, 12200, 467, 7200, D3DXCOLOR(0.839216, 0.709804, 0.839216, 1), 0 )


-- SKIN MESH -- 



-- PARTICLE -- 

g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Flare_Particle_Peita_BossStage2_01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -3080.763, 1169.937, 560.617 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Flare_Particle_Peita_BossStage2_01" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -916.792, 1169.937, 560.617 ) )
--g_pObjectParticle:SetEmitMinMax( 20, 40 )
--g_pObjectParticle:SetTriggerCount( -1 )
--g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



