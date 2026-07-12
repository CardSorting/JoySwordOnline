-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-- El_Forest_North_Stage2-1.lua
-- Nov 30 2006 16:36:42



g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "El_Forest_North_Stage2-1_LineMap.lua" )
g_pWorld:SetBGM( "Music008_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_El_Forest_Bird.ogg" )



g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "El_Forest_North_Stage2-1_Sky.Y" )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetAlphaObject( false )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetPos( 0, 0, 0 )




g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Ground.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Ground.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Herb1-1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Herb1-1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Herb4.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Herb4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Herb5.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Herb5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree1.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree2.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree3.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree4.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree5.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree6.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_North_Stage2-1_Tree7.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_North_Stage2-1_Tree7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )





