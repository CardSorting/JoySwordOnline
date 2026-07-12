-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_core_S4_Middle.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_core_S4_Middle_linemap.lua" )
g_pWorld:SetBGM( "Music012_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_KingNasod_Mechanic1.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_KingNasod_Mechanic2.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_KingNasod_Mechanic3.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_KingNasod_Elevator.ogg" )



g_pWorld:SetFogWorld( 4200, 16200, 0, 0, 0, D3DXCOLOR( 0.776471, 1, 1, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_core_S4_Middle_Elevator.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_core_S4_Middle_Elevator.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4200, 16200, 0, 0, D3DXCOLOR(0.776471, 1, 1, 1), 0 )

-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "Altera_core_S4_Middle_Back.X" )
g_pObjectSkinMesh:AddXSkinModel( "Altera_core_S4_Middle_Back.X" )
g_pObjectSkinMesh:AddAnim( "normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_ONE_WAIT"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 4200, 16200, 0, 0, D3DXCOLOR(0.776471, 1, 1, 1), 0 )

-- PARTICLE -- 
