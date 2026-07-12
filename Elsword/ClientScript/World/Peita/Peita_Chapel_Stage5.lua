-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Chapel_Stage5.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Chapel_Stage5_LineMap.lua" )
g_pWorld:SetBGM( "Music028_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Church_Bell.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Church_Drone.ogg" )




g_pWorld:SetFogWorld( 3600, 2400, 800, -1199, 0.01, D3DXCOLOR( 0.0431373, 1, 0.803922, 1.0 ) )

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(1)
g_pWorldLayer:SetTex( "Peita_Chapel_S5_Lightt_Layer.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0.454902, 0.733333, 0.968628, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

g_pWorldLayer = g_pWorld:CreateWorldLayer()
g_pWorldLayer:SetLayer(X2_LAYER["XL_LENS_FLARE"])
g_pWorldLayer:SetBlendType(2)
g_pWorldLayer:SetTex( "rain-blend.tga" )
g_pWorldLayer:SetAlphaObject(true)
g_pWorldLayer:SetPos(0, 0, 1, 1)
g_pWorldLayer:SetColor(D3DXCOLOR(0, 1, 1, 1))
g_pWorldLayer:SetTexUV(0, 0)

g_pWorldLayer:SetFeedBackUV(0, 0)

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_alpa1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_alpa1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_alpa2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_alpa2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_Back.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_Back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_balpan.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_balpan.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_balpan2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_balpan2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_boddom1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_boddom1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_dongsang1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_dongsang1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_dongsang2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_dongsang2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_gate1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_gate1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_gateEnd.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_gateEnd.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_gatemiddle.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_gatemiddle.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_gidung_hidden.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_gidung_hidden.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_sasel1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_sasel1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_sasel2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_sasel2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_Top1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_Top1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_Top2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_Top2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_Top3.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_Top3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_Top4.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_Top4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_wall1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_wall1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_wall2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_wall2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_wall3.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_wall3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage5_wall4.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage5_wall4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 3600, 2400, 800, -1199, D3DXCOLOR(0.0431373, 1, 0.803922, 1), 0.01 )


-- SKIN MESH -- 



-- PARTICLE -- 









-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4212.392  ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -4212.392  ,1602.502 , 6680.008 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )









-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -3147.05    ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(-1995.376   ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )










-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -935.032  ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -935.032  ,1602.502 , 6680.008 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )









-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -474.638   ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -474.638   ,1602.502 , 6680.008 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )








-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 590.704    ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1742.378   ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )









-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 2802.722   ,1602.502 , 8853.715 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 2802.722   ,1602.502 , 6680.008 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )

