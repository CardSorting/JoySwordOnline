-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



 
 
 
--[[
	g_pStage:SetLuaFrameMoveFunc( "UIFrameMove" )

	function UIFrameMove( fTime, fElapsedTime )
		
		pDialogManager = g_pKTDXApp:GetDialogManager()
		pDialog = pDialogManager:GetDialog( "Map_Local_Back" )
		
		if g_pState:GetIsValidButton() == true then

			pButton = g_pState:GetDetailLocalButton()
			
			if pButton:GetMouseOver() == false then
			
				g_pState:InvalidButtonMouseOver()
				InitIcon()
				
			end
		
		end

	end
--]]



-----(타이틀)
g_pStaticVelder_North = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVelder_North )
g_pStaticVelder_North:SetName( "Velder_North" )

g_pPictureLocal_Velder_North_Title0 = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureLocal_Velder_North_Title0 )

g_pPictureLocal_Velder_North_Title0:SetTex( "DLG_Common_Texture00.TGA", "Velder_North2" )

g_pPictureLocal_Velder_North_Title0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,8)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureLocal_Velder_North_Title1 = g_pUIDialog:CreatePicture()
g_pStaticVelder_North:AddPicture( g_pPictureLocal_Velder_North_Title1 )

g_pPictureLocal_Velder_North_Title1:SetTex( "DLG_Common_Texture00.TGA", "Region" )

g_pPictureLocal_Velder_North_Title1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(151,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}













