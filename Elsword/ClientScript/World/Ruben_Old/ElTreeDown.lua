-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 2006년 9월 29일


g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "ElTreeDown_LineMap.lua" )
g_pWorld:SetBGM( "Music005_Stage.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_El_Forest_Main_Wind.ogg" )

g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "ElTreeDown_sky.Y" )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
g_pSkyDome:SetAlphaObject( false )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetPos( 0, 0, 0 )


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "ElTreeDown_cloud02.Y" )
g_pSkyDome:SetPos( 1400, 600, 800 )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_1"] )
g_pSkyDome:SetRotationSpeed( -1 )
g_pSkyDome:SetAlphaObject( true )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetTex0UVSpeed( 0.0, 0.0 )
g_pSkyDome:SetTex1UVSpeed( 0.0, 0.0 )
g_pSkyDome:SetTex2UVSpeed( 0.0, 0.0 )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true

	
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetDomeMesh( "ElTreeDown_cloud01.Y" )
g_pSkyDome:SetPos( 1400, 700, 800 )
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_2"] )
g_pSkyDome:SetRotationSpeed( -2 )
g_pSkyDome:SetAlphaObject( true )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetTex0UVSpeed( 0.0, 0.0 )
g_pSkyDome:SetTex1UVSpeed( 0.0, 0.0 )
g_pSkyDome:SetTex2UVSpeed( 0.0, 0.0 )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true



g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_field1.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_field1.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
--pObjectData->billboardType		=  CKTDGMatrix::BT_NONE;
--pMeshObjectData->bAddBlend		= false;


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_field2.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_field2.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_field3.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_field3.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_field4.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_field4.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_field5.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_field5.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_wall.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_wall.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( false )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )






-- 사슬
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh( "ElTreeDown_alpha_A.Y" )
g_pObjectMesh:SetXMeshLOD( "ElTreeDown_alpha_A.Y" )
g_pObjectMesh:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] ) 
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pObjectMesh:SetAlphaObject( true )
g_pRenderParam = g_pObjectMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true





g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ElTreeDown_HerbA.X" )
g_pObjectSkinMesh:AddXSkinModel( "ElTreeDown_HerbA.X" )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(714.036, -4, 212) )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] ) -- Warning
g_pObjectSkinMesh:SetCanHide( true, false )
g_pObjectSkinMesh:SetAlphaObject( true )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:AddAnim( "Anim01" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	




g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ElTreeDown_HerbA.X" )
g_pObjectSkinMesh:AddXSkinModel( "ElTreeDown_HerbA.X" )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1885.37, 0, 705.958) )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] ) -- Warning
g_pObjectSkinMesh:SetCanHide( true, false )
g_pObjectSkinMesh:SetAlphaObject( true )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:AddAnim( "Anim01" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pRenderParam.bAlphaBlend = true
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -45, 0) )


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:AddXSkinModel( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(620.012, 0.4155, 230.076) )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pObjectSkinMesh:SetAlphaObject( true )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:AddAnim( "Anim01" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:AddXSkinModel( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(931.341, -2.9813, 232.175) )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pObjectSkinMesh:SetAlphaObject( true )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:AddAnim( "Anim01" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:AddXSkinModel( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1578.62, -1.02809, 416.328) )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pObjectSkinMesh:SetAlphaObject( true )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:AddAnim( "Anim01" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -45, 0) )

g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:AddXSkinModel( "ElTreeDown_HerbB.X" )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1953.01, -3.54043, 832.712) )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pObjectSkinMesh:SetAlphaObject( true )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:AddAnim( "Anim01" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pRenderParam.bAlphaBlend = true	
g_pObjectSkinMesh:SetAngleDegree( D3DXVECTOR3(0, -45, 0) )





g_pObjectLightFlow = g_pWorld:CreateObjectLightFlow()
g_pObjectLightFlow:SetXMesh( "ElTreeDown_L1.Y" )
g_pObjectLightFlow:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectLightFlow:SetFlowMin( 0.0 )
g_pObjectLightFlow:SetFlowMax( 3000.0 )
g_pObjectLightFlow:SetFlowSpeed( 300.0 )
g_pObjectLightFlow:SetWide( 10.0 )
g_pObjectLightFlow:SetColorFactor( D3DXCOLOR(0,0,1,1) )
g_pObjectLightFlow:SetRenderType( RENDER_TYPE["RT_LIGHT_FLOW_LOCAL_Y"] )
g_pObjectLightFlow:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectLightFlow:SetAlphaObject( true )
g_pRenderParam = g_pObjectLightFlow:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectLightFlow = g_pWorld:CreateObjectLightFlow()
g_pObjectLightFlow:SetXMesh( "ElTreeDown_L2.Y" )
g_pObjectLightFlow:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectLightFlow:SetFlowMin( -500.0 )
g_pObjectLightFlow:SetFlowMax( 4000.0 )
g_pObjectLightFlow:SetFlowSpeed( 400.0 )
g_pObjectLightFlow:SetWide( 20.0 )
g_pObjectLightFlow:SetColorFactor( D3DXCOLOR(0,0,1,1) )
g_pObjectLightFlow:SetRenderType( RENDER_TYPE["RT_LIGHT_FLOW_LOCAL_Y"] )
g_pObjectLightFlow:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectLightFlow:SetAlphaObject( true )
g_pRenderParam = g_pObjectLightFlow:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectLightFlow = g_pWorld:CreateObjectLightFlow()
g_pObjectLightFlow:SetXMesh( "ElTreeDown_L3.Y" )
g_pObjectLightFlow:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectLightFlow:SetFlowMin( 0.0 )
g_pObjectLightFlow:SetFlowMax( 3000.0 )
g_pObjectLightFlow:SetFlowSpeed( 200.0 )
g_pObjectLightFlow:SetWide( 20.0 )
g_pObjectLightFlow:SetColorFactor( D3DXCOLOR(0,0,1,1) )
g_pObjectLightFlow:SetRenderType( RENDER_TYPE["RT_LIGHT_FLOW_LOCAL_Y"] )
g_pObjectLightFlow:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectLightFlow:SetAlphaObject( true )
g_pRenderParam = g_pObjectLightFlow:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectLightFlow = g_pWorld:CreateObjectLightFlow()
g_pObjectLightFlow:SetXMesh( "ElTreeDown_L4.Y" )
g_pObjectLightFlow:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectLightFlow:SetFlowMin( 0.0 )
g_pObjectLightFlow:SetFlowMax( 3000.0 )
g_pObjectLightFlow:SetFlowSpeed( 300.0 )
g_pObjectLightFlow:SetWide( 10.0 )
g_pObjectLightFlow:SetColorFactor( D3DXCOLOR(0,0,1,1) ) 
g_pObjectLightFlow:SetRenderType( RENDER_TYPE["RT_LIGHT_FLOW_LOCAL_Y"] )
g_pObjectLightFlow:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectLightFlow:SetAlphaObject( true )
g_pRenderParam = g_pObjectLightFlow:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pObjectLightFlow = g_pWorld:CreateObjectLightFlow()
g_pObjectLightFlow:SetXMesh( "ElTreeDown_L.Y" )
g_pObjectLightFlow:SetPos( D3DXVECTOR3(0,0,0) )
g_pObjectLightFlow:SetFlowMin( -1000.0 )
g_pObjectLightFlow:SetFlowMax( 4000.0 )
g_pObjectLightFlow:SetFlowSpeed( 600.0 )
g_pObjectLightFlow:SetWide( 5.0 )
g_pObjectLightFlow:SetColorFactor( D3DXCOLOR(1, 0.5, 1, 1) )
g_pObjectLightFlow:SetRenderType( RENDER_TYPE["RT_LIGHT_FLOW_LOCAL_Y"] )
g_pObjectLightFlow:SetLayer( X2_LAYER["XL_SKY_WORLD_OBJECT_0"] )
g_pObjectLightFlow:SetAlphaObject( true )
g_pRenderParam = g_pObjectLightFlow:GetRenderParam()
g_pRenderParam.bAlphaBlend = true




