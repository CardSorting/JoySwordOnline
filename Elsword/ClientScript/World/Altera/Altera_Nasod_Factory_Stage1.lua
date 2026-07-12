-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- Altera_Nasod_Factory_Stage1.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "Altera_Nasod_Factory_Stage1_Linemap.lua" )
g_pWorld:SetBGM( "Music020_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_Altera_NasodFactory.ogg" )
--g_pWorld:AddEffectBGM_LUA( "Amb_Altera_NasodFactory_CylinderBig.ogg" )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Altera_NasodFactory_CylinderBig.ogg",  2119,  811, -412, 5000 )
g_pWorld:Add3DEffectBGM_LUA( "Amb_Altera_NasodFactory_CylinderBig2.ogg",  6966, 824, 1470, 5000 )


g_pWorld:SetFogWorld( 2600, 5000, 0, 0, 0.1, D3DXCOLOR( 1, 0.894118, 0.729412, 1.0 ) )
-- SKY / CLOUD -- 
-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_beltL.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_beltL.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.2, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_beltR.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_beltR.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetTex0UVSpeed( -0.2, 0 )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_door1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_door1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_door1sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_door1sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_door2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_door2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_door2sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_door2sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_door3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_door3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_door3sub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_door3sub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_gr1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_gr1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_gr2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_gr2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_ground1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_ground1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_ground2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_ground2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_ground2subL.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_ground2subL.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_ground2subR.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_ground2subR.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_Lightred.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_Lightred.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_Lightred2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_Lightred2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_Lightyellow.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_Lightyellow.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_Lightyellow2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_Lightyellow2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pRenderParam.srcBlend = D3DBLEND["D3DBLEND_SRCALPHA"]
g_pRenderParam.destBlend = D3DBLEND["D3DBLEND_DESTALPHA"]
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_pipetopcase.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_pipetopcase.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_pipe_ell1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_pipe_ell1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_pipe_ell2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_pipe_ell2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder3.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder4.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder5.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder6.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder7.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_sylinder8.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_sylinder8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_top1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_top1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_top2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_top2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_wall1.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_wall1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_wall2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_wall2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_wallsub.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_wallsub.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Altera_Nasod_Factory_S1_wallsub2.Y" )
g_pObjectMesh:SetXMeshLOD( "Altera_Nasod_Factory_S1_wallsub2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )



-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_PAN1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_PAN1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_PAN2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_PAN2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_PAN3.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_PAN3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_PIPE1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_PIPE1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_PIPE2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_PIPE2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_PIPE3.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_PIPE3.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_TOPNI1.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_TOPNI1.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ALTERA_NASOD_FACTORY_S1_TOPNI2.X" )
g_pObjectSkinMesh:AddXSkinModel( "ALTERA_NASOD_FACTORY_S1_TOPNI2.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetFog( 2600, 5000, 0, 0, D3DXCOLOR(1, 0.894118, 0.729412, 1), 0.1 )


-- PARTICLE -- 
