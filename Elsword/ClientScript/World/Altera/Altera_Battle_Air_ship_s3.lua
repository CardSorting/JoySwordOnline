-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Battle_Air_ship_s3.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Battle_Air_ship_s3_Linemap.lua" )
g_pWorld:SetBGM( "Music021_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaAirShip_Outside.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_AirShip_Wind.ogg" )



--g_pWorld:SetFogWorld( 800, 2600, 1667, 333, -0.42, D3DXCOLOR( 1, 0.760784, 0.494118, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_back.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -1, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.3, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.1, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.05, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.02, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.3, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud7.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.07, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_cloud8.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_cloud8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.7, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_frontfloor.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_frontfloor.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_fronthorn1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_fronthorn1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_fronthorn2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_fronthorn2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_fronthorn3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_fronthorn3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_leftfront.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_leftfront.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_leftwall.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_leftwall.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_leftwing.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_leftwing.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_minibattle.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_minibattle.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_righbuilding1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_righbuilding1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_righbuilding2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_righbuilding2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_rightfront.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_rightfront.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_rightwall1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_rightwall1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_rightwall2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_rightwall2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_rightwall3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_rightwall3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_rightwing1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_rightwing1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_rightwingbar.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_rightwingbar.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_sidewall1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_sidewall1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_ship_s3_sidewall1top.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_ship_s3_sidewall1top.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_BATTLE_AIR_SHIP_S3_MINIELROTATE.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_BATTLE_AIR_SHIP_S3_MINIELROTATE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetUseWorldColor( false )
--g_pObjectSkinMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_BATTLE_AIR_SHIP_S3_MOVEELL1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_BATTLE_AIR_SHIP_S3_MOVEELL1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetUseWorldColor( false )
--g_pObjectSkinMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_BATTLE_AIR_SHIP_S3_MOVEELL2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_BATTLE_AIR_SHIP_S3_MOVEELL2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetUseWorldColor( false )
--g_pObjectSkinMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_BATTLE_AIR_SHIP_S3_MOVEPAN1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_BATTLE_AIR_SHIP_S3_MOVEPAN1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetUseWorldColor( false )
--g_pObjectSkinMesh:SetFog( 800, 2600, 1667, 333, D3DXCOLOR(1, 0.760784, 0.494118, 1), -0.42 )


-- PARTICLE -- 
