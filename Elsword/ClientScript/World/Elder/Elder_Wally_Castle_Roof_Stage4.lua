-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- World_Elder_Wally_Castle_Roof_Stage4.lua

g_pWorld:SetLightColor_LUA( 0.698, 0.7294, 1 )
g_pWorld:SetOriginColor_LUA( 0.258, 0.3058, 0.7294 )

g_pWorld:SetLightPos( 500, 1000, -2000 )
g_pWorld:SetLineMap( "Elder_Wally_Castle_Roof_Stage4_linemap.lua" )
g_pWorld:SetBGM( "Music009_Boss.ogg" )
g_pWorld:AddEffectBGM_LUA( "Amb_WallyCastle_Wind.ogg" )



-- SKY / CLOUD -- 
g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pSkyDome:SetDomeMesh( "CLOUD02_WC.Y" )
g_pSkyDome:SetPos( 0, 1000, 4500 )
g_pSkyDome:SetRotationSpeed( -0.5 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_2"] )
g_pSkyDome:SetDomeMesh( "CLOUD01_WC.Y" )
g_pSkyDome:SetPos( 0, -1000, 4500 )
g_pSkyDome:SetRotationSpeed( -0.25 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


g_pSkyDome = g_pWorld:CreateSkyDome()
g_pSkyDome:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pSkyDome:SetDomeMesh( "SKY_WC2.Y" )
g_pSkyDome:SetPos( 0, 2000, 4500 )
g_pSkyDome:SetRotationSpeed( 0 )
g_pSkyDome:SetViewTrace( false )
g_pSkyDome:SetAlphaObject( true )
g_pRenderParam = g_pSkyDome:GetRenderParam()
g_pRenderParam.bAlphaBlend = true


-- STATIC MESH -- 
g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_BackTower01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_BackTower01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_BackTower02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_BackTower02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_BackTower03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_BackTower03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_BackWall01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_BackWall01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_BackWall02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_BackWall02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall01.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall01.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall02.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall02.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall03.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall03.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall04.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall04.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall05.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall05.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall06.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall06.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


g_pObjectMesh = g_pWorld:CreateObjectMesh()
g_pObjectMesh:SetXMesh(    "Elder_Wally_Castle_Roof_Stage4_Wall07.Y" )
g_pObjectMesh:SetXMeshLOD( "Elder_Wally_Castle_Roof_Stage4_Wall07.Y" )
g_pObjectMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_0"] )
g_pObjectMesh:SetPos( D3DXVECTOR3(0, 0, 0) )
g_pObjectMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectMesh:GetRenderParam()


-- SKIN MESH -- 
g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "FLAG02.X" )
g_pObjectSkinMesh:AddXSkinModel( "FLAG02.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(-520, 1700, 2750) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "FLAG.X" )
g_pObjectSkinMesh:AddXSkinModel( "FLAG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(-3224.44, 530, 946.16) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "FLAG.X" )
g_pObjectSkinMesh:AddXSkinModel( "FLAG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(3224.44, 530, 946.16) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "FLAG.X" )
g_pObjectSkinMesh:AddXSkinModel( "FLAG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(-1890, 700, 30.289) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true


g_pObjectSkinMesh = g_pWorld:CreateObjectSkinMesh()
g_pObjectSkinMesh:SetXSkinMotion( "FLAG.X" )
g_pObjectSkinMesh:AddXSkinModel( "FLAG.X" )
g_pObjectSkinMesh:AddAnim( "Normal" )
g_pObjectSkinMesh:PlayAnim( WORLD_OBJECT_SKIN_MESH_PLAY_TYPE["WOSMPY_LOOP"] )
g_pObjectSkinMesh:SetLayer( X2_LAYER["XL_SKY_WORLD_BASE_1"] )
g_pObjectSkinMesh:SetPos( D3DXVECTOR3(1890, 700, 30.289) )
g_pObjectSkinMesh:SetColorFactor( D3DXCOLOR(1,1,1,1) )
g_pObjectSkinMesh:SetCanHide( true, false )
g_pRenderParam = g_pObjectSkinMesh:GetRenderParam()
g_pObjectSkinMesh:SetAlphaObject( true )
g_pRenderParam.bAlphaBlend = true












-- MARIO_LIKE_BLOCK_TEST fix!!!! 테스트로 들어가는 스크립트 입니다. 













---------------------------------------------------------------------------------------------------------
-- 1st floor
g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -500, 640, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -380, 640, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -260, 640, 0 )", 
}

--[[

	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( -140, 640, 0 )", 
	}


	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( -20, 640, 0 )", 
	}

	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( 100, 640, 0 )", 
	}



	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( 220, 640, 0 )", 
	}
--]]

--[[
	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( 340, 640, 0 )", 
	}


	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( 460, 640, 0 )", 
	}


	g_pWorld:AddWorldMonster_LUA
	{
		TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
		NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
		LEVEL = 10, 
		"POSITION = D3DXVECTOR3( 580, 640, 0 )", 
	}

--]]














---------------------------------------------------------------------------------------------------------
-- 2nd floor

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -140, 880, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -20, 880, 0 )", 
}

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 100, 880, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 220, 880, 0 )", 
}





















---------------------------------------------------------------------------------------------------------
-- 3rd floor

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 340, 1120, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 460, 1120, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 580, 1120, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 700, 1120, 0 )", 
}

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 820, 1120, 0 )", 
}

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 940, 1120, 0 )", 
}






---------------------------------------------------------------------------------------------------------
-- 4th floor
g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -140, 1360, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -20, 1360, 0 )", 
}

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 100, 1360, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 220, 1360, 0 )", 
}







---------------------------------------------------------------------------------------------------------
-- 5th floor
g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -620, 1620, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -500, 1620, 0 )", 
}














---------------------------------------------------------------------------------------------------------
-- 6th floor
g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -860, 1900, 0 )", 
}

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -740, 1900, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -620, 1900, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -500, 1900, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -380, 1900, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -260, 1900, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -140, 1900, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( -20, 1900, 0 )", 
}

g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 100, 1900, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 220, 1900, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 340, 1900, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 460, 1900, 0 )", 
}


g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 580, 1900, 0 )", 
}



g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 700, 1900, 0 )", 
}




g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 820, 1900, 0 )", 
}





g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 940, 1900, 0 )", 
}




g_pWorld:AddWorldMonster_LUA
{
	TEAM_NUMBER = TEAM_NUM["TN_MONSTER"],
	NPC_ID = NPC_UNIT_ID["NUI_MARIO_BLOCK"],
	LEVEL = 10, 
	"POSITION = D3DXVECTOR3( 1060, 1900, 0 )", 
}




