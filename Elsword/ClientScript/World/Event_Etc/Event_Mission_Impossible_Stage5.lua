-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Peita_Under_Garden_Stage1.lua



--g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Event_Mission_Impossible_Stage5_Linemap.lua" )
g_pWorld:SetBGM( "Music029_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Peita_UnderGarden_01.ogg" )



--g_pWorld:SetFogWorld( 7600, 17600, 13000, -5000, 0, D3DXCOLOR( 0.384314, 0.776471, 0.784314, 1.0 ) )


------------------------------------------------------------------


-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Back_Wall.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Back_Wall.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 100, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0, 0, 0, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(0,0,0,1) )
g_pObjectMesh:SetCanHide( false, false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Peita_Under_Garden_Bottom_Light.Y" )
g_pObjectMesh:SetXMeshLOD( "Peita_Under_Garden_Bottom_Light.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 100, 0) )
g_pObjectMesh:SetOriginalColorFactor( D3DXCOLOR(0, 0, 0, 1))
g_pObjectMesh:SetColorFactor( D3DXCOLOR(0,0,0,1) )
g_pObjectMesh:SetCanHide( false, false )
--g_pObjectMesh:SetFog( 7600, 17600, 13000, -5000, D3DXCOLOR(0.384314, 0.776471, 0.784314, 1), 0 )



g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "PEITA_UNDER_GARDEN_BACKFLARE01.X" )
g_pObjectSkinMesh:AddXSkinModel( "PEITA_UNDER_GARDEN_BACKFLARE01.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 100, 0) )
g_pObjectSkinMesh:SetOriginalColorFactor( D3DXCOLOR(0, 0, 0, 1))
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(0,0,0,1) )
g_pObjectSkinMesh:SetCanHide( false, false )

-- PARTICLE -- 
