-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

------------(던전 이름)
g_pStaticVelder_North = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_North )
g_pStaticVelder_North:SetName( "Velder_North" )

---------밑으로 스태틱 빼고 다 바뀌었음-------------


--[[


		g_pPictureVelder_North_El_Tree_West = g_pUIDialog:CreatePicture()
		g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree_West )

		g_pPictureVelder_North_El_Tree_West:SetTex( "DLG_Common_New_Texture44.tga", "El_Tree_West" )

		g_pPictureVelder_North_El_Tree_West:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(261-4,541)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


--]]


---엘의나무
g_pPictureVelder_North_El_Tree = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree )

g_pPictureVelder_North_El_Tree:SetTex( "DLG_Common_New_Texture44.tga", "El_Tree" )

g_pPictureVelder_North_El_Tree:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(472,494)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---폐허
g_pPictureVelder_North_El_Tree_East = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree_East )

g_pPictureVelder_North_El_Tree_East:SetTex( "DLG_UI_Title02.tga", "Ruins" )

g_pPictureVelder_North_El_Tree_East:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(602,306)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---습지
g_pPictureVelder_North_El_Tree_North = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree_North )

g_pPictureVelder_North_El_Tree_North:SetTex( "DLG_UI_Title02.tga", "Swamp" )

g_pPictureVelder_North_El_Tree_North:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(295,334)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[

		g_pPictureVelder_North_Monkey_Forest = g_pUIDialog:CreatePicture()
		g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_Monkey_Forest )

		g_pPictureVelder_North_Monkey_Forest:SetTex( "DLG_Common_New_Texture44.tga", "Monkey_Forest" )

		g_pPictureVelder_North_Monkey_Forest:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(676,432)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
--]]





--[[
		-- 루벤마을 비밀 던전

		g_pStatic_Icon_Info = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStatic_Icon_Info )
		g_pStatic_Icon_Info:SetName( "엘의 나무 비밀 던전_Icon_Info" )


		g_pPictureVelder_North_Secreat_Dungeon = g_pUIDialog:CreatePicture()
		g_pStatic_Icon_Info:AddPicture( g_pPictureVelder_North_Secreat_Dungeon )

		g_pPictureVelder_North_Secreat_Dungeon:SetTex( "DLG_Common_New_Texture44.tga", "El_Tree_Secreat_Dungeon" )

		g_pPictureVelder_North_Secreat_Dungeon:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(59-8,344)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
--]]



--[[
		----어린이날 이벤트 던전
		----윌리엄의시공
		g_pStaticWilliam = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticWilliam )
		g_pStaticWilliam:SetName( "윌리엄의시공" )

			g_pPictureWilliam_space = g_pUIDialog:CreatePicture()
			g_pStaticWilliam:AddPicture( g_pPictureWilliam_space )

			g_pPictureWilliam_space:SetTex( "DLG_UI_Title02.tga", "William_Title" )

			g_pPictureWilliam_space:SetPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(742,247)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
--]]


--[[
		g_pPictureemir_space = g_pUIDialog:CreatePicture()
		g_pStaticVelder_North:AddPicture( g_pPictureemir_space )

		g_pPictureemir_space:SetTex( "DLG_UI_Title02.tga", "emir_space" )

		g_pPictureemir_space:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(742,247)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
--]]


