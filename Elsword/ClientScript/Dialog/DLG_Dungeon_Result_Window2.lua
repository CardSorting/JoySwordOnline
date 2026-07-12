-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pStaticDungeon_Result_Window= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_Window)
g_pStaticDungeon_Result_Window:SetName( "TotalScore_BG" )
g_pStaticDungeon_Result_Window:SetShow( false )

---------진행점수-----------
g_pPictureDungeon_Result_ED_Window = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_Window:AddPicture( g_pPictureDungeon_Result_ED_Window )

g_pPictureDungeon_Result_ED_Window:SetTex( "DLG_Common_New_Texture19.tga", "Dungeon_Result_Bg2" )

g_pPictureDungeon_Result_ED_Window:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(495,268)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDungeon_Result_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_Window:AddPicture( g_pPictureDungeon_Result_Info_Window2 )

g_pPictureDungeon_Result_Info_Window2:SetTex( "DLG_Common_New_Texture18.tga", "Dungeon_Result_BgArrow" )

g_pPictureDungeon_Result_Info_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(439,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




















 



 


































