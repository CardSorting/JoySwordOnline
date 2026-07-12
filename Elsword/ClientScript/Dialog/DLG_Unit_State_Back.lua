-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Unit_State_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

--마이 인포 슬롯 반응 전역 범위
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 30, 147, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 475, 516, 0 ) )

g_pStaticUnit_Select = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Select )
g_pStaticUnit_Select:SetName( "StaticUnit_Select" )




g_pPictureUnit_Select_BG1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select:AddPicture( g_pPictureUnit_Select_BG1 )

g_pPictureUnit_Select_BG1:SetTex( "DLG_Unit_Select0.TGA", "Unit_Select_BG0" )

g_pPictureUnit_Select_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Select_BG2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select:AddPicture( g_pPictureUnit_Select_BG2 )

g_pPictureUnit_Select_BG2:SetTex( "DLG_Unit_Select1.TGA", "Unit_Select_BG1" )

g_pPictureUnit_Select_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Select_BG3 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select:AddPicture( g_pPictureUnit_Select_BG3 )

g_pPictureUnit_Select_BG3:SetTex( "DLG_Unit_Select2.TGA", "Unit_Select_BG2" )

g_pPictureUnit_Select_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUnit_Select_BG4 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Select:AddPicture( g_pPictureUnit_Select_BG4 )

g_pPictureUnit_Select_BG4:SetTex( "DLG_Unit_Select2.TGA", "Unit_Select_BG3" )

g_pPictureUnit_Select_BG4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--IncludeLua( "DLG_Unit_Select_Unit.lua" )




g_pUIDialog:AddDummyPos( D3DXVECTOR3( 568, 43, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 778, 43, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 568, 257, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 778, 257, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 568, 471, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 778, 471, 0 ) )


--g_pStage:SetFrameMoveLuaFunc( "UNIT_SELECT_FRAME_MOVE" )

--function UNIT_SELECT_FRAME_MOVE( fTime, fElapsedTime )
	
--	pDialogManager	= g_pKTDXApp:GetDialogManager()
--	pDialog			= pDialogManager:GetDialog( "DLG_Unit_Select_Back" )
--	pControl		= pDialog:GetControl( "StaticUnit_Select" )
--	pControl:SetShow( false )
	
--end

IncludeLua( "DLG_Unit_Select_Unit.lua" )

IncludeLua( "DLG_Unit_Select_FrontWindow.lua" )
