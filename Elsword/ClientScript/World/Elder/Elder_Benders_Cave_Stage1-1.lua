-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetOriginColor_LUA(  0.431373, 0.368627, 0.52549 ) 
g_pWorld:SetLineMap( "Elder_Benders_Cave_Stage1-1_LineMap.lua" )
g_pWorld:SetBGM( "Music010_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_Bat.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_WaterFall.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Elder_Cave_WaterDrop.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Elder_Cave_WaterFall.ogg", 12059, 432, 336, 9000 )


g_pWorld:SetFogWorld( 4000, 6000, 533, -2732, 0.14, D3DXCOLOR( 0, 0.180392, 0.215686, 1.0 ) )

-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave3.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave4.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave5.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave6.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cave7.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cave7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cloud1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cloud1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Cloud2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Cloud2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Crystal2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Crystal2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Crystal3.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Crystal3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Crystal4.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Crystal4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Fog1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Fog1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Fog2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Fog2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Fog3.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Fog3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Fog4.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Fog4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Forest1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Forest1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Forest2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Forest2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Forest3.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Forest3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Ground3.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Ground3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Lantern1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Lantern1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_1"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Lantern2.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Lantern2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Logo1.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Logo1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "BENDERS_CAVE_STAGE1-1_SKY.Y" )
g_pObjectMesh:SetXMeshLOD( "BENDERS_CAVE_STAGE1-1_SKY.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Benders_Cave_Stage1-1_Water.Y" )
g_pObjectMesh:SetXMeshLOD( "Benders_Cave_Stage1-1_Water.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( 0, -0.2 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetUseWorldColor( false )
g_pObjectMesh:SetFog( 4000, 6000, 533, -2732, D3DXCOLOR(0, 0.180392, 0.215686, 1), 0.14 )


-- SKIN MESH -- 
-- PARTICLE -- 
