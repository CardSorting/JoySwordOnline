-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Tower_Heart_stage3.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Tower_Heart_stage3_LineMap.lua" )
g_pWorld:SetBGM( "Music026_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Ambience.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Rumble.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Wind.ogg" )



g_pWorld:SetFogWorld( 1200, 23200, 0, 0, 0.01, D3DXCOLOR( 0.74902, 0.639216, 0.803922, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_back.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom10.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom10.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom3.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom4.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom5.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom6.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom7.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom8.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Bottom9.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Bottom9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Chain1.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Chain1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Chain2.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Chain2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Chain3.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Chain3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Chain4.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Chain4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_Chain5.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_Chain5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_E_gate.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_E_gate.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_E_gate_Light.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_E_gate_Light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_fire_light.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_fire_light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_S_gate.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_S_gate.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_S_gate_light.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_S_gate_light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_top.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_top.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_top_chain.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_top_chain.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_s3_uv_wind.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_s3_uv_wind.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_EFFECT_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, 0.8 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE4.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE4.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE3.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE2.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE1.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE8.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE8.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE7.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE7.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE6.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE6.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_S3_ROTATE5.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_TOWER_HEART_S3_ROTATE5.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 1200, 23200, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0.01 )


-- PARTICLE -- 


-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -1989.542 ,   1785.496   ,  2371.044 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)




-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -3048.156 ,   1785.496  ,    537.472 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)











-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -2680.503 , 1785.496   ,    -1547.589 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)




-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( -1058.613 ,  1785.496   ,  -2908.516 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)









-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1058.613 ,   1785.496   ,  -2908.516 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)




-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 2680.503 ,  1785.496   ,  -1547.589 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)










-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3(3048.156  , 1785.496  ,  537.472 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)





-- PARTICLE -- 
g_pObjectParticle = g_pWorld:CreateObjectParticle( g_pMinorParticle, "Torch" )
g_pObjectParticle:SetParticlePos( D3DXVECTOR3( 1989.542   , 1785.496    , 2371.044 ) )
g_pObjectParticle:SetEmitMinMax( 20, 40 )
g_pObjectParticle:SetTriggerCount( -1 )
g_pObjectParticle:SetTriggerTime( -1 )
g_pObjectParticle:SetDrawCount( 1 )
g_pObjectParticle:SetCullCheck( false )
g_pObjectParticle:SetParticleType( PARTICLE_TYPE["PT_3D_PLANE"] )
g_pObjectParticle:SetLayer( X2_LAYER["XL_EFFECT_0"] )
g_pObjectParticle:SetHideNearDistance(1500)
