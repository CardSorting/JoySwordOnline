-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Dungeon_Game_Arcade_Frame" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pStaticArcade_Frame = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticArcade_Frame )
g_pStaticArcade_Frame:SetName( "Arcade_Frame" )

--프레임 상--
g_pPictureArcade_Frame_Top1 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Top1 )

g_pPictureArcade_Frame_Top1:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Top1" )

g_pPictureArcade_Frame_Top1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Frame_Top2 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Top2 )

g_pPictureArcade_Frame_Top2:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Top2" )

g_pPictureArcade_Frame_Top2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--프레임 하--
g_pPictureArcade_Frame_Bottom1 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Bottom1 )

g_pPictureArcade_Frame_Bottom1:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Bottom1" )

g_pPictureArcade_Frame_Bottom1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,745)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureArcade_Frame_Bottom2 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Bottom2 )

g_pPictureArcade_Frame_Bottom2:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Bottom2" )

g_pPictureArcade_Frame_Bottom2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(948,690)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Frame_Bottom3 = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Bottom3 )

g_pPictureArcade_Frame_Bottom3:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Bar_Bottom" )

g_pPictureArcade_Frame_Bottom3:SetPoint
{
    ADD_SIZE_X = 928,
	"LEFT_TOP		= D3DXVECTOR2(19,745)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--프레임 좌우--


g_pPictureArcade_Frame_Left = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Left )

g_pPictureArcade_Frame_Left:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Bar_Left" )

g_pPictureArcade_Frame_Left:SetPoint
{
    ADD_SIZE_Y = 587,
	"LEFT_TOP		= D3DXVECTOR2(0,158)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureArcade_Frame_Right = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Frame_Right )

g_pPictureArcade_Frame_Right:SetTex( "DLG_Dungeon_Arcade01.TGA", "Arcade_Frame_Bar_Right" )

g_pPictureArcade_Frame_Right:SetPoint
{
    ADD_SIZE_Y = 541,
	"LEFT_TOP		= D3DXVECTOR2(999,149)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--시계--
g_pPictureArcade_Clock_Bg = g_pUIDialog:CreatePicture()
g_pStaticArcade_Frame:AddPicture( g_pPictureArcade_Clock_Bg )

g_pPictureArcade_Clock_Bg:SetTex( "DLG_Dungeon_Arcade01.TGA", "Clock_Bg" )

g_pPictureArcade_Clock_Bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(471,8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
