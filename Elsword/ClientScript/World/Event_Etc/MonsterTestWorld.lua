-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- MonsterTestWorld.lua


g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "MonsterTestWorld_linemap.lua" )


--[[
	g_pSkyDome = g_pWorld:CreateSkyDome()
	g_pSkyDome:SetDomeMesh( "ElTreeTop_sky.Y" )
	g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_DOME_0"] )
	g_pSkyDome:SetAlphaObject( false )
	g_pSkyDome:SetViewTrace( false )
	g_pSkyDome:SetRotationSpeed( 0 )
	g_pSkyDome:SetPos( 0, 0, 0 )
--]]

g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "MonsterTestWorld_Floor.Y" )
g_pObjectMesh:SetXMeshLOD( "MonsterTestWorld_Floor.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()





g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Main_Stage3_BigTree01.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Main_Stage3_BigTree01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(572, 0, 400) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 0.7, 0.7, 0.7) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Main_Stage3_BigTree02.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Main_Stage3_BigTree02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(572, 0, 400) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 0.7, 0.7, 0.7) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "El_Forest_Main_Stage3_BigTree03.Y" )
g_pObjectMesh:SetXMeshLOD( "El_Forest_Main_Stage3_BigTree03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(572, 0, 400) )
g_pObjectMesh:SetScale( D3DXVECTOR3( 0.7, 0.7, 0.7) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()




