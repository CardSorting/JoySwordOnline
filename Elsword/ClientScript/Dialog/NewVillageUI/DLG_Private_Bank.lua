-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_EXIT"] )

numOfSlotPerLine		= 8											-- 한라인에 있는 슬롯의 갯수
totalNumOfSlotInBank	= g_pCX2SlotManager:GetDummyValue()			-- 다이얼로그 내에 있는 전체 슬롯의 갯수
numOfLineInBank			= totalNumOfSlotInBank / numOfSlotPerLine	-- 다이얼로그 내에 있는 라인의 갯수(일반회원 1개, 플래티넘 회원 6개 등)

sizeYForBG						= 391 	- ( 6 - numOfLineInBank ) * 50
posForBGLeftTopOfBottom			= 408	- ( 6 - numOfLineInBank ) * 50

sizeYForBlackBox				= 341	- ( 6 - numOfLineInBank ) * 50
posForBlackBoxLeftTopOfBottom	= 398	- ( 6 - numOfLineInBank ) * 50

sizeYForWin						= 331	- ( 6 - numOfLineInBank ) * 50
posForWinLeftTopOfBottom		= 393	- ( 6 - numOfLineInBank ) * 50


------------------------------------------6줄 배경-----------------------------------------------------
-----BG6
g_pStaticBank_BG6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_BG6 )
g_pStaticBank_BG6:SetName( "g_pStaticBank_BG6" )


g_pStaticBank_BG6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_BG6 )
g_pStaticBank_BG6:SetName( "g_pStaticBank_BG6" ) 

g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_BG_top )

g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

g_pPictureInven_BG_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_BG_middle )

g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

g_pPictureInven_BG_middle:SetPoint
{
     ADD_SIZE_Y = sizeYForBG,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_BG_bottom)

g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

g_pPictureInven_BG_bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0, posForBGLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----bg_b6


g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_black_box_top)

g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPictureInven_black_box_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_balck_box_middle)

g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPictureInven_balck_box_middle:SetPoint
{
     ADD_SIZE_Y = sizeYForBlackBox,
	"LEFT_TOP		= D3DXVECTOR2(14,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_balck_box_bottom)

g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPictureInven_balck_box_bottom:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14, posForBlackBoxLeftTopOfBottom)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----인벤 창6

g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_win_top)

g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

g_pPictureInven_win_top:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(19,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_win_middle)

g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

g_pPictureInven_win_middle:SetPoint
{
    ADD_SIZE_Y = sizeYForWin,
	"LEFT_TOP		= D3DXVECTOR2(19,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
g_pStaticBank_BG6:AddPicture( g_pPictureInven_win_bottom)

g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

g_pPictureInven_win_bottom:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19, posForWinLeftTopOfBottom )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
		------------------------------------------5줄 배경-----------------------------------------------------
		-----BG5
		g_pStaticBank_BG5 = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticBank_BG5 )
		g_pStaticBank_BG5:SetName( "g_pStaticBank_BG5" )


		g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_BG_top )

		g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

		g_pPictureInven_BG_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,0)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_BG_middle )

		g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

		g_pPictureInven_BG_middle:SetPoint
		{
			 ADD_SIZE_Y = 391-50,
			"LEFT_TOP		= D3DXVECTOR2(0,15)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_BG_bottom)

		g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

		g_pPictureInven_BG_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,408-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		----bg_b5


		g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_black_box_top)

		g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

		g_pPictureInven_black_box_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,45)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_balck_box_middle)

		g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

		g_pPictureInven_balck_box_middle:SetPoint
		{
			 ADD_SIZE_Y = 341-50,
			"LEFT_TOP		= D3DXVECTOR2(14,55)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_balck_box_bottom)

		g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

		g_pPictureInven_balck_box_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,398-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		-----인벤 창5

		g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_win_top)

		g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

		g_pPictureInven_win_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(19,49)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_win_middle)

		g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

		g_pPictureInven_win_middle:SetPoint
		{
			ADD_SIZE_Y = 331-50,
			"LEFT_TOP		= D3DXVECTOR2(19,60)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG5:AddPicture( g_pPictureInven_win_bottom)

		g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

		g_pPictureInven_win_bottom:SetPoint
		{
			
			"LEFT_TOP		= D3DXVECTOR2(19,393-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		------------------------------------------4줄 배경-----------------------------------------------------
		-----BG4
		g_pStaticBank_BG4 = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticBank_BG4 )
		g_pStaticBank_BG4:SetName( "g_pStaticBank_BG4" )


		g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_BG_top )

		g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

		g_pPictureInven_BG_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,0)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_BG_middle )

		g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

		g_pPictureInven_BG_middle:SetPoint
		{
			 ADD_SIZE_Y = 391-50-50,
			"LEFT_TOP		= D3DXVECTOR2(0,15)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_BG_bottom)

		g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

		g_pPictureInven_BG_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,408-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		----bg_b4


		g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_black_box_top)

		g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

		g_pPictureInven_black_box_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,45)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_balck_box_middle)

		g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

		g_pPictureInven_balck_box_middle:SetPoint
		{
			 ADD_SIZE_Y = 341-50-50,
			"LEFT_TOP		= D3DXVECTOR2(14,55)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_balck_box_bottom)

		g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

		g_pPictureInven_balck_box_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,398-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		-----인벤 창4

		g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_win_top)

		g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

		g_pPictureInven_win_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(19,49)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_win_middle)

		g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

		g_pPictureInven_win_middle:SetPoint
		{
			ADD_SIZE_Y = 331-50-50,
			"LEFT_TOP		= D3DXVECTOR2(19,60)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG4:AddPicture( g_pPictureInven_win_bottom)

		g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

		g_pPictureInven_win_bottom:SetPoint
		{
			
			"LEFT_TOP		= D3DXVECTOR2(19,393-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}




		------------------------------------------3줄 배경-----------------------------------------------------
		-----BG3
		g_pStaticBank_BG3 = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticBank_BG3 )
		g_pStaticBank_BG3:SetName( "g_pStaticBank_BG3" )



		g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_BG_top )

		g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

		g_pPictureInven_BG_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,0)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_BG_middle )

		g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

		g_pPictureInven_BG_middle:SetPoint
		{
			 ADD_SIZE_Y = 391-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(0,15)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_BG_bottom)

		g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

		g_pPictureInven_BG_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,408-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		----bg_b3


		g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_black_box_top)

		g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

		g_pPictureInven_black_box_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,45)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_balck_box_middle)

		g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

		g_pPictureInven_balck_box_middle:SetPoint
		{
			 ADD_SIZE_Y = 341-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(14,55)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_balck_box_bottom)

		g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

		g_pPictureInven_balck_box_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,398-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		-----인벤 창3

		g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_win_top)

		g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

		g_pPictureInven_win_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(19,49)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_win_middle)

		g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

		g_pPictureInven_win_middle:SetPoint
		{
			ADD_SIZE_Y = 331-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(19,60)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG3:AddPicture( g_pPictureInven_win_bottom)

		g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

		g_pPictureInven_win_bottom:SetPoint
		{
			
			"LEFT_TOP		= D3DXVECTOR2(19,393-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		------------------------------------------2줄 배경-----------------------------------------------------
		-----BG2
		g_pStaticBank_BG2 = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticBank_BG2 )
		g_pStaticBank_BG2:SetName( "g_pStaticBank_BG2" )


		g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_BG_top )

		g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

		g_pPictureInven_BG_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,0)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_BG_middle )

		g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

		g_pPictureInven_BG_middle:SetPoint
		{
			 ADD_SIZE_Y = 391-50-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(0,15)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_BG_bottom)

		g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

		g_pPictureInven_BG_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,408-50-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		----bg_b2


		g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_black_box_top)

		g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

		g_pPictureInven_black_box_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,45)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_balck_box_middle)

		g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

		g_pPictureInven_balck_box_middle:SetPoint
		{
			 ADD_SIZE_Y = 341-50-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(14,55)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_balck_box_bottom)

		g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

		g_pPictureInven_balck_box_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,398-50-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		-----인벤 창2

		g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_win_top)

		g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

		g_pPictureInven_win_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(19,49)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_win_middle)

		g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

		g_pPictureInven_win_middle:SetPoint
		{
			ADD_SIZE_Y = 331-50-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(19,60)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG2:AddPicture( g_pPictureInven_win_bottom)

		g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

		g_pPictureInven_win_bottom:SetPoint
		{
			
			"LEFT_TOP		= D3DXVECTOR2(19,393-50-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		------------------------------------------1줄 배경-----------------------------------------------------
		-----BG1
		g_pStaticBank_BG1 = g_pUIDialog:CreateStatic()
		g_pUIDialog:AddControl( g_pStaticBank_BG1 )
		g_pStaticBank_BG1:SetName( "g_pStaticBank_BG1" )


		g_pPictureInven_BG_top = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_BG_top )

		g_pPictureInven_BG_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_TOP" )

		g_pPictureInven_BG_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,0)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_BG_middle = g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_BG_middle )

		g_pPictureInven_BG_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_middle" )

		g_pPictureInven_BG_middle:SetPoint
		{
			 ADD_SIZE_Y = 391-50-50-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(0,15)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		g_pPictureInven_BG_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_BG_bottom)

		g_pPictureInven_BG_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_BG_bottom" )

		g_pPictureInven_BG_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(0,408-50-50-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		----bg_b1


		g_pPictureInven_black_box_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_black_box_top)

		g_pPictureInven_black_box_top:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

		g_pPictureInven_black_box_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,45)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_balck_box_middle)

		g_pPictureInven_balck_box_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

		g_pPictureInven_balck_box_middle:SetPoint
		{
			 ADD_SIZE_Y = 341-50-50-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(14,55)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_balck_box_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_balck_box_bottom)

		g_pPictureInven_balck_box_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

		g_pPictureInven_balck_box_bottom:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(14,398-50-50-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}

		-----인벤 창1
		g_pPictureInven_win_top= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_win_top)

		g_pPictureInven_win_top:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

		g_pPictureInven_win_top:SetPoint
		{

			"LEFT_TOP		= D3DXVECTOR2(19,49)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}


		g_pPictureInven_win_middle= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_win_middle)

		g_pPictureInven_win_middle:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

		g_pPictureInven_win_middle:SetPoint
		{
			ADD_SIZE_Y = 331-50-50-50-50-50,
			"LEFT_TOP		= D3DXVECTOR2(19,60)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}



		g_pPictureInven_win_bottom= g_pUIDialog:CreatePicture()
		g_pStaticBank_BG1:AddPicture( g_pPictureInven_win_bottom)

		g_pPictureInven_win_bottom:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

		g_pPictureInven_win_bottom:SetPoint
		{
			
			"LEFT_TOP		= D3DXVECTOR2(19,393-50-50-50-50-50)",
			"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
			CHANGE_TIME		= 0.0,
		}
--]]




-------------------------------------인벤 슬롯--------------------------------------------------

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot1" )




-------------------------------line 1
slotID 	= 0
tempX 	= 0
tempY	= 0

for i = 1, numOfLineInBank do
	posY = ( i - 1 ) * 51
	
	for j = 1, numOfSlotPerLine do
	posX = ( j - 1 ) * 51
	
	g_pPictureInven_slot1= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot1)

	g_pPictureInven_slot1:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot1:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28 + posX, 91 + posY)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
	pItemSlot = g_pCX2SlotManager:CreateItemSlot()
	g_pCX2SlotManager:AddSlot( pItemSlot )

	tempX = 29 + posX
	tempY = 92 + posY

	pItemSlot:SetSlotData
	{
		ENABLE		= TRUE,
		SHOW		= TRUE,

		SLOT_TYPE	= SLOT_TYPE["ST_BANK"],

		SORT_TYPE	= 8,		-- SORT_TYPE::ST_BANK
		SLOT_ID		= slotID,

		FASHION		= FALSE,
		EQUIP_POS	= EQIP_POSITION["EP_NONE"],

		"POS		= D3DXVECTOR2( tempX ,tempY )",
		"SIZE		= D3DXVECTOR2( 47, 47 )",
	}
	
	slotID = slotID + 1
	end
end

--[[
	g_pPictureInven_slot2= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot2)

	g_pPictureInven_slot2:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot2:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureInven_slot3= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot3)

	g_pPictureInven_slot3:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot3:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureInven_slot4= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot4)

	g_pPictureInven_slot4:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot4:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51+51+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureInven_slot5= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot5)

	g_pPictureInven_slot5:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot5:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureInven_slot6= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot6)

	g_pPictureInven_slot6:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot6:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureInven_slot7= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot7)

	g_pPictureInven_slot7:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot7:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pPictureInven_slot8= g_pUIDialog:CreatePicture()
	g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot8)

	g_pPictureInven_slot8:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

	g_pPictureInven_slot8:SetPoint
	{
		
		"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51+51,91)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

--]]

--[[
---------------------------------line2

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot2" )



g_pPictureInven_slot9= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot9)

g_pPictureInven_slot9:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot10= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot10)

g_pPictureInven_slot10:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot11= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot11)

g_pPictureInven_slot11:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot12= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot12)

g_pPictureInven_slot12:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot13= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot13)

g_pPictureInven_slot13:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot14= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot14)

g_pPictureInven_slot14:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot14:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot15= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot15)

g_pPictureInven_slot15:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot15:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot16= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot16)

g_pPictureInven_slot16:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51+51,91+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------------------------------line3

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot3" )


g_pPictureInven_slot17= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot17)

g_pPictureInven_slot17:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot18= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot18)

g_pPictureInven_slot18:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot18:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot19= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot19)

g_pPictureInven_slot19:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot19:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot20= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot20)

g_pPictureInven_slot20:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot20:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot21= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot21)

g_pPictureInven_slot21:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot21:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot22= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot22)

g_pPictureInven_slot22:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot22:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot23= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot23)

g_pPictureInven_slot23:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot23:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot24= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot24)

g_pPictureInven_slot24:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot24:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51+51,91+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------------------------------------------line4

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot4" )


g_pPictureInven_slot25= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot25)

g_pPictureInven_slot25:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot25:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot26= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot26)

g_pPictureInven_slot26:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot26:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot27= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot27)

g_pPictureInven_slot27:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot27:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot28= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot28)

g_pPictureInven_slot28:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot28:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot29= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot29)

g_pPictureInven_slot29:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot29:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot30= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot30)

g_pPictureInven_slot30:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot30:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot31= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot31)

g_pPictureInven_slot31:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot31:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot32= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot32)

g_pPictureInven_slot32:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot32:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51+51,91+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------------------------------line5

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot4" )


g_pPictureInven_slot25= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot25)

g_pPictureInven_slot25:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot25:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot26= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot26)

g_pPictureInven_slot26:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot26:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot27= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot27)

g_pPictureInven_slot27:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot27:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot28= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot28)

g_pPictureInven_slot28:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot28:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot29= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot29)

g_pPictureInven_slot29:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot29:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot30= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot30)

g_pPictureInven_slot30:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot30:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot31= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot31)

g_pPictureInven_slot31:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot31:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot32= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot32)

g_pPictureInven_slot32:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot32:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51+51,91+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------------------------------line6

g_pStaticBank_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank_Slot )
g_pStaticBank_Slot:SetName( "g_pStaticBankSlot5" )


g_pPictureInven_slot25= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot25)

g_pPictureInven_slot25:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot25:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot26= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot26)

g_pPictureInven_slot26:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot26:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot27= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot27)

g_pPictureInven_slot27:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot27:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot28= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot28)

g_pPictureInven_slot28:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot28:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot29= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot29)

g_pPictureInven_slot29:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot29:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot30= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot30)

g_pPictureInven_slot30:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot30:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot31= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot31)

g_pPictureInven_slot31:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot31:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot32= g_pUIDialog:CreatePicture()
g_pStaticBank_Slot:AddPicture( g_pPictureInven_slot32)

g_pPictureInven_slot32:SetTex( "DLG_UI_COMMON_TEXTURE02.TGA", "Slot" )

g_pPictureInven_slot32:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(28+51+51+51+51+51+51+51,91+51+51+51+51+51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


g_pStaticBank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBank )
g_pStaticBank:SetName( "g_pStaticBank" )

------------------------------타이틀

g_pPictureInven_title= g_pUIDialog:CreatePicture()
g_pStaticBank:AddPicture( g_pPictureInven_title)

g_pPictureInven_title:SetTex( "DLG_UI_TITLE02.TGA", "Bank" )

g_pPictureInven_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticBank:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 409,
	"LEFT_TOP		= D3DXVECTOR2(26,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------------------------은행 등급 아이콘------------------------------------
g_pMembershipIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pMembershipIcon )
g_pMembershipIcon:SetName( "g_pMembershipIcon" )

----실버
g_pPicture_Grade_Silver = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Silver )

g_pPicture_Grade_Silver:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Silver" )

g_pPicture_Grade_Silver:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----골드
g_pPicture_Grade_Gold = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Gold )

g_pPicture_Grade_Gold:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Gold" )

g_pPicture_Grade_Gold:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----에메랄드
g_pPicture_Grade_Emerald = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Emerald )

g_pPicture_Grade_Emerald:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Emerald" )

g_pPicture_Grade_Emerald:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----다이아몬드
g_pPicture_Grade_Diamond = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Diamond )

g_pPicture_Grade_Diamond:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Diamond" )

g_pPicture_Grade_Diamond:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----플래티넘
g_pPicture_Grade_Platinum = g_pUIDialog:CreatePicture()
g_pMembershipIcon:AddPicture( g_pPicture_Grade_Platinum )

g_pPicture_Grade_Platinum:SetTex( "DLG_UI_Common_Texture11.TGA", "Grade_Platinum" )

g_pPicture_Grade_Platinum:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(377-26,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지
g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Staticnumber" )

g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticnumber:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(377,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----페이지 번호



g_pStaticnumber:AddString
{
	 MSG 			= "50/50",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(377+28,57+5)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




------------------------Notice
g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )

g_pPicture_Notice = g_pUIDialog:CreatePicture()
g_pStatic_Notice:AddPicture( g_pPicture_Notice )

g_pPicture_Notice:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(29,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Notice:AddString
{
	MSG 			= 'WWWWWWWWWWWW님의 개인은행(프리미엄회원)',
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(48,63)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(398,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(398-4+1,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(200)


-----EXIT  버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(424,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(420,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(420+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_EXIT"] )

--[[
-------------------------------------------------- 마우스 오버 용 버튼
g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "CashShopButton" )
--g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
--g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
--g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture01.tga", "LIVE_STONE" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture01.tga", "LIVE_STONE" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture01.tga", "LIVE_STONE" )

g_pButton_opacity1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 12)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+40, 12+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 12)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+40, 12+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320, 12)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+40, 12+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
--g_pButton_opacity1:SetGuideDesc( STR_ID_2573 )
--]]


-----확장하기  버튼

g_pButton_Upgrade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Upgrade )
g_pButton_Upgrade:SetName( "g_pButton_Upgrade" )
g_pButton_Upgrade:SetNormalTex( "DLG_UI_BUTTON11.tga", "Bank_Upgrade_Normal" )

g_pButton_Upgrade:SetOverTex( "DLG_UI_BUTTON11.tga", "Bank_Upgrade_Over" )

g_pButton_Upgrade:SetDownTex( "DLG_UI_BUTTON11.tga", "Bank_Upgrade_Over" )

g_pButton_Upgrade:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(305-26,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(305-26,14)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(305-26+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetCustomMsgMouseUp( UI_PRIVATE_BANK_CUSTOM_MSG["UPBCM_CASHSHOP"] )
