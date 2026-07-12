-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- El_Forest_North_Stage3.lua


g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "El_Forest_North_Stage3_LineMap.lua" )
g_pWorld:SetBGM( "Music009_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_El_Forest_Bird2.ogg" )





g_pWorld:SetFogWorld( 2200, 2800, 5667, -3732, 0, D3DXCOLOR( 0, 0, 0, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Ground01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Ground01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Ground02.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Ground02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Herb01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Herb01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Herb02.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Herb02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Herb03.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Herb03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Herb04.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Herb04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Sky01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Sky01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Tree01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Tree01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Tree02.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Tree02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage3_Tree03.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage3_Tree03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 2200, 2800, 5667, -3732, D3DXCOLOR(0, 0, 0, 1), 0 )


-- SKIN MESH -- 
-- PARTICLE -- 
