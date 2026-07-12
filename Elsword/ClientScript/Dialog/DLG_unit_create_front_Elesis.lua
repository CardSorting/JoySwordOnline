-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Unit_Create_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

--IncludeLua( "DLG_Unit_Create_Unit_Button.lua" )
--IncludeLua( "DLG_Unit_Create_FrontWindow.lua" )
--IncludeLua( "DLG_Unit_Create_Info_Window.lua" )
--IncludeLua( "DLG_Unit_Create_Unit_Button_Season3.lua" )		-- 아라 추가로 인한 변경
--IncludeLua( "DLG_Unit_Create_NickName.lua" )
--IncludeLua( "DLG_Unit_Create_Front_Menu.lua" )
IncludeLua( "DLG_Unit_Create_Unit_Button_Elesis.lua" )	-- 엘리시스 추가
IncludeLua( "DLG_Unit_Create_NickName_Elesis.lua" )
IncludeLua( "DLG_Unit_Create_Front_Menu_Elesis.lua" )

g_pStaticCharacter_Create_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter_Create_Menu )
g_pStaticCharacter_Create_Menu:SetName( "Character_Create_Title" )
g_pPictureUnit_Create_Title = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_Menu:AddPicture( g_pPictureUnit_Create_Title )
g_pPictureUnit_Create_Title:SetTex( "DLG_UI_Button21_NEW.tga", "Unit_Create" )
g_pPictureUnit_Create_Title:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(4,8)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}




