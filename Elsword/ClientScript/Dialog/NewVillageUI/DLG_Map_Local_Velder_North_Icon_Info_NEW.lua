-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

------------(던전 이름)
g_pStaticVelder_North = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_North )
g_pStaticVelder_North:SetName( "Velder_North" )


---엘의나무
g_pPictureVelder_North_El_Tree = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree )

g_pPictureVelder_North_El_Tree:SetTex( "DLG_Common_New_Texture44.tga", "El_Tree" )

g_pPictureVelder_North_El_Tree:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(472-210,494-200-44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---폐허
g_pPictureVelder_North_El_Tree_East = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree_East )

g_pPictureVelder_North_El_Tree_East:SetTex( "DLG_UI_Title02_B.tga", "Ruins" )

g_pPictureVelder_North_El_Tree_East:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(602-264+16,306-136-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---습지
g_pPictureVelder_North_El_Tree_North = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureVelder_North_El_Tree_North )

g_pPictureVelder_North_El_Tree_North:SetTex( "DLG_UI_Title02_B.tga", "Swamp" )

g_pPictureVelder_North_El_Tree_North:SetPoint
{
	RESIZE_X = 0.66,
	RESIZE_Y = 0.66,
	"LEFT_TOP		= D3DXVECTOR2(295-140-19-5,334-140-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
		----어린이날 이벤트 던전
		----윌리엄의시공
		g_pStaticWilliam = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticWilliam )
		g_pStaticWilliam:SetName( "윌리엄의시공" )

			g_pPictureWilliam_space = g_pUIDialog:CreatePicture()
			g_pStaticWilliam:AddPicture( g_pPictureWilliam_space )

	g_pPictureWilliam_space:SetTex( "DLG_UI_Title02_B.tga", "William_Title" )

			g_pPictureWilliam_space:SetPoint
			{

				"LEFT_TOP		= D3DXVECTOR2(742,247)",
				"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
				CHANGE_TIME		= 0.0,
			}
--]]

