-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 2006년 9월 29일

g_pWorld:SetLightPos( 15000.0, 10000.0, -500.0 )
g_pWorld:SetLineMap( "TreeOfLightTop_LineMap.Lua" )
g_pWorld:SetBGM( "Music006_Boss.ogg" )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "ElTreeTop_sky.Y" )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetAlphaObject( false )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetPos( 0, 0, 0 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "ElTreeTop_cloud02.Y" )
g_pSkyDome:SetPos( 1600, 500, 500 )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetRotationSpeed( -1 )
g_pSkyDome:SetAlphaObject( true )
g_pSkyDome:SetViewTrace( false )
--g_pSkyDome:SetTex0UVSpeed( 0.0, 0.0 )
--g_pSkyDome:SetTex1UVSpeed( 0.0, 0.0 )
--g_pSkyDome:SetTex2UVSpeed( 0.0, 0.0 )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true

	
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "ElTreeTop_cloud01.Y" )
g_pSkyDome:SetPos( 1600, 500, 500 )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetRotationSpeed( -2 )
g_pSkyDome:SetAlphaObject( true )
g_pSkyDome:SetViewTrace( false )
--g_pSkyDome:SetTex0UVSpeed( 0.0, 0.0 )
--g_pSkyDome:SetTex1UVSpeed( 0.0, 0.0 )
--g_pSkyDome:SetTex2UVSpeed( 0.0, 0.0 )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_BaseField.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_BaseField.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
--pObjectData->billboardType		=  CKTDGMatrix::BT_NONE;
--pMeshObjectData->bAddBlend		= false;


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Floor1.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Floor1.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Floor2.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Floor2.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Floor3.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Floor3.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Floor4.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Floor4.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Crystal.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Crystal.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, true )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
--g_pRenderParam = g_pObjectMesh:GetRenderParam()
--g_pRenderParam.bAlphaBlend = true						



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_LeftTreeUp.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_LeftTreeUp.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )

g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_LeftTreeDown.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_LeftTreeDown.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )

g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_RightTreeUp.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_RightTreeUp.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )

g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_RightTreeDown.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_RightTreeDown.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(		"ElTreeTop_Ground.Y" )
g_pObjectMesh:SetXMeshLOD(	"ElTreeTop_Ground.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( false, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )



-- 풀
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Herb1.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Herb1.Y" )
--g_pObjectMesh:SetPos( D3DXVECTOR3(293.821, 203.986, 384.525) )
g_pObjectMesh:SetPos( D3DXVECTOR3(35.5067, 28.0317, -109.868) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Herb2.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Herb2.Y" )
--g_pObjectMesh:SetPos( D3DXVECTOR3(440.592, 85.686,-280.04) ) 
g_pObjectMesh:SetPos( D3DXVECTOR3(9.73399, -1.6048, 1.15616) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Herb3.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Herb3.Y" )
--g_pObjectMesh:SetPos( D3DXVECTOR3(2641.69, 246.49, 1294.68) )
g_pObjectMesh:SetPos( D3DXVECTOR3(12.548, 4.4155, 46.309) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeTop_Herb4.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeTop_Herb4.Y" )
--g_pObjectMesh:SetPos( D3DXVECTOR3(2250.26, 99.939, 529.944) )
g_pObjectMesh:SetPos( D3DXVECTOR3(4.14655, 9.0187, -39.265) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	


