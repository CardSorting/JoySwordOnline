-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Battle_Air_Ship_s1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Battle_Air_Ship_s1_linemap.lua" )
g_pWorld:SetBGM( "Music021_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaAirShip_Outside.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_AirShip_Wind.ogg" )


--g_pWorld:SetFogWorld( 1400, 6000, -1466, -1466, -0.42, D3DXCOLOR( 1, 0.713726, 0.411765, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_cloud1.y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_cloud1.y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.1, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_cloud2.y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_cloud2.y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.1, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_cloud3.y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_cloud3.y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.4, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_cloud4.y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_cloud4.y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.3, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_core1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_core1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_floor1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_floor1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_frontdeck.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_frontdeck.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_ground3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_ground3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_ground4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_ground4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_headdeck.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_headdeck.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_longcannon.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_longcannon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_miniship.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_miniship.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_pancaseL.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_pancaseL.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_pancaseR.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_pancaseR.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_shortcannon.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_shortcannon.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_sidewall1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_sidewall1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_sidewall2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_sidewall2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_sidewall3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_sidewall3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_sidewall4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_sidewall4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_sidewalltop.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_sidewalltop.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_sidewalltop2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_sidewalltop2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_syilinder1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_syilinder1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_syilinder2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_syilinder2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_syilinder3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_syilinder3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_syilinder4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_syilinder4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingendL.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingendL.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingendR.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingendR.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingfrontL.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingfrontL.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingfrontR.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingfrontR.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingmiddle.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingmiddle.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingmiddle2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingmiddle2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingmiddle3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingmiddle3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_wingpan.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_wingpan.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_cloud5.y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_cloud5.y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(-3000, 0, -2500) )
g_pObjectMesh:SetAngleDegree( D3DXVECTOR3(0, -90, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0.1, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Battle_Air_Ship_s1_back.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Battle_Air_Ship_s1_back.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pObjectMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_BATTLE_AIR_SHIP_S1_ELLCASE.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_BATTLE_AIR_SHIP_S1_ELLCASE.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
--g_pObjectSkinMesh:SetFog( 1400, 6000, -1466, -1466, D3DXCOLOR(1, 0.713726, 0.411765, 1), -0.42 )


-- PARTICLE -- 

