-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- New_Besma_Besma_Lake_Stage2A.lua



g_pWorld:SetLightPos( 50000, 50000, -100000 )
g_pWorld:SetLineMap( "New_Besma_Besma_Lake_Stage2A_LineMap.lua" )
g_pWorld:SetBGM( "Music019_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_BesmaLake_Day.ogg" )



g_pWorld:SetFogWorld( 6000, 11400, -6332, 6400, 0, D3DXCOLOR( 0.847059, 0.886275, 0.992157, 1.0 ) )

-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetDomeMesh( "BESMA_BESMA_LAKE_STAGE2A_SKY.Y" )
g_pSkyDome:SetPos( 0, 0, 0 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( false )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pSkyDome:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.78 )


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Column1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Column1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Column2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Column2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Herb1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Herb2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Herb3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Logo.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Logo.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Road1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Road1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Road5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Road5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp3.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp3.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Scarp9.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Scarp9.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water4.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water4.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water5.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water5.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water6.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water6.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water7.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water7.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water8.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water8.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water_S1.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water_S1.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Besma_Besma_Lake_Stage2A_Water_S2.Y" )
g_pObjectMesh:SetXMeshLOD( "Besma_Besma_Lake_Stage2A_Water_S2.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Column03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Column03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Fog01.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Fog01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 50, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Fog02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Fog02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 50, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Fog03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Fog03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 50, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Road02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Road02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Road03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Road03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Road04.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Road04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), 0 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Water02.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Water02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "New_Besma_Besma_Lake_Stage2A_Water03.Y" )
g_pObjectMesh:SetXMeshLOD( "New_Besma_Besma_Lake_Stage2A_Water03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( false, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pObjectMesh:SetFog( 6000, 11400, -6332, 6400, D3DXCOLOR(0.847059, 0.890196, 0.996078, 0), -0.72 )


-- SKIN MESH -- 
-- PARTICLE -- 
