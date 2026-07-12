-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.











g_pStaticReady = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReady )
g_pStaticReady:SetName( "Static_Dungeon_Room_Ready" )



g_pPictureReady1= g_pUIDialog:CreatePicture()
g_pStaticReady:AddPicture( g_pPictureReady1)

g_pPictureReady1:SetTex( "DLG_Common_New_Texture04.tga", "Ready" )

g_pPictureReady1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(126-14,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureReady2= g_pUIDialog:CreatePicture()
g_pStaticReady:AddPicture( g_pPictureReady2)

g_pPictureReady2:SetTex( "DLG_Common_New_Texture04.tga", "Ready" )

g_pPictureReady2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(373-31,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureReady3= g_pUIDialog:CreatePicture()
g_pStaticReady:AddPicture( g_pPictureReady3)

g_pPictureReady3:SetTex( "DLG_Common_New_Texture04.tga", "Ready" )

g_pPictureReady3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(612-45,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureReady4= g_pUIDialog:CreatePicture()
g_pStaticReady:AddPicture( g_pPictureReady4)

g_pPictureReady4:SetTex( "DLG_Common_New_Texture04.tga", "Ready" )

g_pPictureReady4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(829-35,525+58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


















-----------------(PCroom)------------------------
g_pStaticDungeon_Room_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_PCRoom )
g_pStaticDungeon_Room_PCRoom:SetName( "Static_Dungeon_Room_PCRoom" )




g_pPictureDungeon_Room_PCRoom1_1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_PCRoom:AddPicture( g_pPictureDungeon_Room_PCRoom1_1 )

g_pPictureDungeon_Room_PCRoom1_1:SetTex( "DLG_Common_New_Texture08.TGA", "PCRoom" )

g_pPictureDungeon_Room_PCRoom1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_PCRoom1_2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_PCRoom:AddPicture( g_pPictureDungeon_Room_PCRoom1_2 )

g_pPictureDungeon_Room_PCRoom1_2:SetTex( "DLG_Common_New_Texture08.TGA", "PCRoom" )

g_pPictureDungeon_Room_PCRoom1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(300,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_PCRoom1_3 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_PCRoom:AddPicture( g_pPictureDungeon_Room_PCRoom1_3 )

g_pPictureDungeon_Room_PCRoom1_3:SetTex( "DLG_Common_New_Texture08.TGA", "PCRoom" )

g_pPictureDungeon_Room_PCRoom1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(525,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_PCRoom1_4 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_PCRoom:AddPicture( g_pPictureDungeon_Room_PCRoom1_4 )

g_pPictureDungeon_Room_PCRoom1_4:SetTex( "DLG_Common_New_Texture08.TGA", "PCRoom" )

g_pPictureDungeon_Room_PCRoom1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(747,256)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-----------------(200_Emblem)------------------------
g_pStaticDungeon_Room_200Emblem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_200Emblem )
g_pStaticDungeon_Room_200Emblem:SetName( "g_pStaticDungeon_Room_200Emblem" )




g_pPictureDungeon_Room_200Emblem1_1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_200Emblem:AddPicture( g_pPictureDungeon_Room_200Emblem1_1 )

g_pPictureDungeon_Room_200Emblem1_1:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_200" )

g_pPictureDungeon_Room_200Emblem1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_200Emblem1_2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_200Emblem:AddPicture( g_pPictureDungeon_Room_200Emblem1_2 )

g_pPictureDungeon_Room_200Emblem1_2:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_200" )

g_pPictureDungeon_Room_200Emblem1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(300+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_200Emblem1_3 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_200Emblem:AddPicture( g_pPictureDungeon_Room_200Emblem1_3 )

g_pPictureDungeon_Room_200Emblem1_3:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_200" )

g_pPictureDungeon_Room_200Emblem1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(525+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_200Emblem1_4 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_200Emblem:AddPicture( g_pPictureDungeon_Room_200Emblem1_4 )

g_pPictureDungeon_Room_200Emblem1_4:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_200" )

g_pPictureDungeon_Room_200Emblem1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(747+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-----------------(금메달_Emblem)------------------------
g_pStaticDungeon_Room_Gold_Emblem = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_Gold_Emblem )
g_pStaticDungeon_Room_Gold_Emblem:SetName( "g_pStaticDungeon_Room_Gold_Emblem" )




g_pPictureDungeon_Room_Gold_Emblem1_1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Gold_Emblem:AddPicture( g_pPictureDungeon_Room_Gold_Emblem1_1 )

g_pPictureDungeon_Room_Gold_Emblem1_1:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_Gold" )

g_pPictureDungeon_Room_Gold_Emblem1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(75+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_Gold_Emblem1_2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Gold_Emblem:AddPicture( g_pPictureDungeon_Room_Gold_Emblem1_2 )

g_pPictureDungeon_Room_Gold_Emblem1_2:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_Gold" )

g_pPictureDungeon_Room_Gold_Emblem1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(300+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_Gold_Emblem1_3 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Gold_Emblem:AddPicture( g_pPictureDungeon_Room_Gold_Emblem1_3 )

g_pPictureDungeon_Room_Gold_Emblem1_3:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_Gold" )

g_pPictureDungeon_Room_Gold_Emblem1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(525+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_Gold_Emblem1_4 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_Gold_Emblem:AddPicture( g_pPictureDungeon_Room_Gold_Emblem1_4 )

g_pPictureDungeon_Room_Gold_Emblem1_4:SetTex( "DLG_Common_New_Texture20.TGA", "Emblem_Gold" )

g_pPictureDungeon_Room_Gold_Emblem1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(747+90,256-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
