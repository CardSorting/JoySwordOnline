-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Chapel_StageBoss.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Chapel_Stage_Boss_LineMap.lua" )
g_pWorld:SetBGM( "Music025_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Church_Bell.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Church_Drone.ogg" )



g_pWorld:SetFogWorld( 2600, 1000, 667, -1132, -0.22, D3DXCOLOR( 0.521569, 1, 0.803922, 1.0 ) )


-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_Back.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_Back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_bottom.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_bottom.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_desk1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_desk1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_desk2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_desk2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_desk3.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_desk3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_fire.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_fire.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_firealpa.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_firealpa.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_Front.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_Front.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_gateleft.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_gateleft.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_gateRight.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_gateRight.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_gidung1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_gidung1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_gidung_left.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_gidung_left.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_gidung_right.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_gidung_right.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_sidewall.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_sidewall.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 1200, 667, -1132, D3DXCOLOR(0.52549, 1, 0.803922, 1), -0.28 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Chapel_Stage_BOSS_alpaSign.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Chapel_Stage_BOSS_alpaSign.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]


-- SKIN MESH -- 

-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -612.94 ,  726.321 ,  3238.996 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -937.031 , 726.321   ,  2757.896
 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -1095.881 ,726.321 ,   1941.129

 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -1439.343 , 726.321  ,    862.549

 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -1671.042 , 726.321   ,  -692.162

 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )













-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 612.94 ,  726.321 ,  3238.996 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )



-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 937.031 ,  726.321   ,  2757.896
 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1095.881 ,726.321 ,   1941.129

 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1439.343 , 726.321  ,    862.549

 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1671.042 , 726.321   ,  -692.162

 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )















-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -1233.445 , 131.002   ,  321.261
 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )




-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pUIMajorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1233.445 , 131.002   ,  321.261
 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )

