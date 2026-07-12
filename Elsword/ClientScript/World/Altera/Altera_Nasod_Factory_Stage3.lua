-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Nasod_Factory_Stage3.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Nasod_Factory_Stage3_Linemap.lua" )
g_pWorld:SetBGM( "Music020_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_NasodFactory.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Altera_NasodFactory_CylinderBig.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Altera_NasodFactory_CylinderBig.ogg",  3159,  873, -880, 5000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Altera_NasodFactory_CylinderBig2.ogg",  8570, 873, -852, 5000 )



g_pWorld:SetFogWorld( 2000, 4200, 0, 0, -0.08, D3DXCOLOR( 1, 0.890196, 0.694118, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_alpalight1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_alpalight1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_alpalight2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_alpalight2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_alpalight3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_alpalight3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_alpalight4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_alpalight4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door1_sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door1_sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door2_sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door2_sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door3_sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door3_sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_door4_sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_door4_sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_floor1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_floor1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_floor2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_floor2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_floor3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_floor3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_floor4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_floor4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_floor5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_floor5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_floor6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_floor6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_gr1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_gr1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_gr2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_gr2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_gr3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_gr3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_groundsub1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_groundsub1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_groundsub2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_groundsub2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_groundsub3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_groundsub3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_groundsub4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_groundsub4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder7.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_sylinder8.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_sylinder8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_top1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_top1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_top2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_top2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_wall1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_wall1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_wall2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_wall2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_wallsub1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_wallsub1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S3_wallsub2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S3_wallsub2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S3_PAN.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S3_PAN.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S3_PISTON1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S3_PISTON1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S3_PISTON2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S3_PISTON2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S3_PISTON3.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S3_PISTON3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S3_PISTON4.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S3_PISTON4.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetFog( 2000, 4200, 0, 0, D3DXCOLOR(1, 0.890196, 0.694118, 1), -0.08 )


-- PARTICLE -- 
