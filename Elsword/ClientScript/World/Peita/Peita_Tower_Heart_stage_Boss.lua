-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Tower_Heart_stage_Boss.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Peita_Tower_Heart_stage_Boss_LineMap.lua" )
g_pWorld:SetBGM( "Music011_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Boss_Ambience.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Boss_Chain.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Boss_Wind.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Boss_LazerBim.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_Heart_Boss_Stoneboard.ogg" )



g_pWorld:SetFogWorld( 1600, 32000, 0, 0, 0, D3DXCOLOR( 0.74902, 0.639216, 0.803922, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Tower_Heart_Boss_bottom.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Tower_Heart_Boss_bottom.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 1600, 32000, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_BOSS_BACK.X" )
g_pObjectSkinMesh:AddXSkinModel( "Peita_Tower_Heart_Boss_back.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 1600, 32000, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_BOSS_CHAIN1.X" )
g_pObjectSkinMesh:AddXSkinModel( "Peita_Tower_Heart_Boss_chain1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 1600, 32000, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_BOSS_CHAIN2.X" )
g_pObjectSkinMesh:AddXSkinModel( "Peita_Tower_Heart_Boss_chain2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 1600, 32000, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_TOWER_HEART_BOSS_UV_WIND.X" )
g_pObjectSkinMesh:AddXSkinModel( "Peita_Tower_Heart_Boss_uv_wind.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_EFFECT_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetTex0UVSpeed( 0, 0.8 )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectSkinMesh:SetFog( 1600, 32000, 0, 0, D3DXCOLOR(0.74902, 0.639216, 0.803922, 1), 0 )


-- PARTICLE -- 
