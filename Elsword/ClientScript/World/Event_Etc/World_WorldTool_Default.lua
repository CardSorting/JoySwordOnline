-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pWorld:SetLightPos( 50000.0, 50000.0, -100000.0 )
g_pWorld:SetLineMap( "World_WorldTool_Default_linemap.lua" )




--[[
	g_pObjectMesh = g_pWorld:CreateObjectMesh()
	g_pObjectMesh:SetXMesh(    "GUAGUAGUA.Y" )
	g_pObjectMesh:SetXMeshLOD( "GUAGUAGUA.Y" )
	g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
	g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
	g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
	g_pObjectMesh:SetCanHide( false, false )
	g_pObjectMesh:SetAlphaObject( false )
--]]
