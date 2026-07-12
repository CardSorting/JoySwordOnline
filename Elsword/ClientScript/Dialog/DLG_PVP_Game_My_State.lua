-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVPGameMyState" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )
--g_pUIDialog:SetShow( false )

---- 최우측 상단의 캐릭터 이미지 UI-------------------
g_pStaticPVPGameMyChar = g_pUIDialog:CreateStatic()
g_pStaticPVPGameMyChar:SetName( "StaticPVPGameMyChar" )
g_pUIDialog:AddControl( g_pStaticPVPGameMyChar )



g_pPictureElswordState = g_pUIDialog:CreatePicture()
g_pStaticPVPGameMyChar:AddPicture( g_pPictureElswordState )
g_pPictureElswordState:SetTex( "DLG_PVP_State_Info0.tga", "ElswordState" )
g_pPictureElswordState:SetPoint
{
	--USE_TEXTURE_SIZE = FALSE,
	--IS_RECT = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	--"RIGHT_TOP		= D3DXVECTOR2(317,0)",
	--"LEFT_BOTTOM		= D3DXVECTOR2(0,184)",
	--"RIGHT_BOTTOM		= D3DXVECTOR2(146,184)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}








------------- 빈 HP/MP 게이지 틀 -------------------
g_pStaticPVPGameInfo = g_pUIDialog:CreateStatic()
g_pStaticPVPGameInfo:SetName( "StaticPVPGameInfo" )
g_pUIDialog:AddControl( g_pStaticPVPGameInfo )



g_pPictureMyState = g_pUIDialog:CreatePicture()
g_pStaticPVPGameInfo:AddPicture( g_pPictureMyState )
g_pPictureMyState:SetTex( "DLG_PVP_State_Info0.tga", "MyState" )
g_pPictureMyState:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(118,37)",
	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME    		= 0.0,
}

------------------HP 게이지
g_pStaticPVPGameStateBar = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateBar:SetName( "StaticPVPGameStateBar_HP" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateBar )


g_pPictureMyHP = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMyHP )


g_pPictureMyHP:SetTex( "DLG_PVP_State_Info0.tga", "MyHP" )

g_pPictureMyHP:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(123,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------------------MP 게이지

g_pStaticPVPGameStateBar = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateBar:SetName( "StaticPVPGameStateBar" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateBar )



g_pPictureMyMP = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMyMP )
g_pPictureMyMP:SetTex( "DLG_PVP_State_Info0.tga", "MyMP" )
g_pPictureMyMP:SetPoint
{
--ADD_SIZE_X = 1,
	"LEFT_TOP		= D3DXVECTOR2(123,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------------------MP차지

g_pPictureMyMPActive = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMyMPActive )
g_pPictureMyMPActive:SetTex( "DLG_PVP_State_Info0.tga", "MyMPActive" )
g_pPictureMyMPActive:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,


	"LEFT_TOP		= D3DXVECTOR2(123,66)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(443,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureMySoul = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMySoul )


----------------각성 게이지
g_pPictureMySoul:SetTex( "DLG_PVP_State_Info0.tga", "Myanger_Gauge" )

g_pPictureMySoul:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(123,87)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(443,94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



------------------- 기폭 포인트
g_pStaticPVPGameStatePoint = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStatePoint:SetName( "StaticPVPGameStatePoint" )
g_pUIDialog:AddControl( g_pStaticPVPGameStatePoint )

g_pPictureNormalMPPoint1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStatePoint:AddPicture( g_pPictureNormalMPPoint1 )

g_pPictureNormalMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "Arrow" )

g_pPictureNormalMPPoint1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(230,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



							--[[
							------------------- 1필 구슬
							g_pStaticPVPGameStatePoint = g_pUIDialog:CreateStatic()
							g_pStaticPVPGameStatePoint:SetName( "StaticPVPGameStatePoint" )
							g_pUIDialog:AddControl( g_pStaticPVPGameStatePoint )

							g_pPictureNormalMPPoint1 = g_pUIDialog:CreatePicture()
							g_pStaticPVPGameStatePoint:AddPicture( g_pPictureNormalMPPoint1 )

							g_pPictureNormalMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "NormalMPPoint" )

							g_pPictureNormalMPPoint1:SetPoint
							{
								"LEFT_TOP		= D3DXVECTOR2(218,67)",
								"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
								CHANGE_TIME     	= 0.0,
							}

							g_pPictureActivMPPoint1 = g_pUIDialog:CreatePicture()
							g_pStaticPVPGameStatePoint:AddPicture( g_pPictureActivMPPoint1 )
							g_pPictureActivMPPoint1:SetShow(false)

							g_pPictureActivMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "ActivMPPoint" )

							g_pPictureActivMPPoint1:SetPoint
							{
								

								"LEFT_TOP		= D3DXVECTOR2(216,67)",

								"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
								CHANGE_TIME     	= 0.0,
							}


							g_pPictureHoldMPPoint1 = g_pUIDialog:CreatePicture()
							g_pStaticPVPGameStatePoint:AddPicture( g_pPictureHoldMPPoint1 )
							g_pPictureHoldMPPoint1:SetShow(false)


							g_pPictureHoldMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "HoldMPPoint" )

							g_pPictureHoldMPPoint1:SetPoint
							{

								"LEFT_TOP		= D3DXVECTOR2(213,62)",
								"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
								CHANGE_TIME     	= 0.0,
							}
							--]]

								--[[
									g_pStaticPVPGameStatePoint = g_pUIDialog:CreateStatic()
									g_pStaticPVPGameStatePoint:SetName( "StaticPVPGameStatePoint" )
									g_pUIDialog:AddControl( g_pStaticPVPGameStatePoint )



									g_pPictureNormalMPPoint1 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureNormalMPPoint1 )



									g_pPictureNormalMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "NormalMPPoint" )

									g_pPictureNormalMPPoint1:SetPoint
									{
										"LEFT_TOP		= D3DXVECTOR2(218,67)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureNormalMPPoint2 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureNormalMPPoint2 )


									g_pPictureNormalMPPoint2:SetTex( "DLG_PVP_State_Info0.tga", "NormalMPPoint" )

									g_pPictureNormalMPPoint2:SetPoint
									{
										
										"LEFT_TOP		= D3DXVECTOR2(322,67)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureNormalMPPoint3 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureNormalMPPoint3 )


									g_pPictureNormalMPPoint3:SetTex( "DLG_PVP_State_Info0.tga", "NormalMPPoint" )

									g_pPictureNormalMPPoint3:SetPoint
									{
										

										"LEFT_TOP		= D3DXVECTOR2(430,67)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}




									g_pPictureActivMPPoint1 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureActivMPPoint1 )
									g_pPictureActivMPPoint1:SetShow(false)


									g_pPictureActivMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "ActivMPPoint" )

									g_pPictureActivMPPoint1:SetPoint
									{
										

										"LEFT_TOP		= D3DXVECTOR2(216,67)",

										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureActivMPPoint2 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureActivMPPoint2 )
									g_pPictureActivMPPoint2:SetShow(false)


									g_pPictureActivMPPoint2:SetTex( "DLG_PVP_State_Info0.tga", "ActivMPPoint" )

									g_pPictureActivMPPoint2:SetPoint
									{


										"LEFT_TOP		= D3DXVECTOR2(320,67)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureActivMPPoint3 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureActivMPPoint3 )
									g_pPictureActivMPPoint3:SetShow(false)


									g_pPictureActivMPPoint3:SetTex( "DLG_PVP_State_Info0.tga", "ActivMPPoint" )

									g_pPictureActivMPPoint3:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(428,67)",
											"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}


									g_pPictureChargeMPPoint1 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureChargeMPPoint1 )
									g_pPictureChargeMPPoint1:SetShow(false)


									g_pPictureChargeMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "ChargeMPPoint" )

									g_pPictureChargeMPPoint1:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(218,67)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureChargeMPPoint2 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureChargeMPPoint2 )
									g_pPictureChargeMPPoint2:SetShow(false)


									g_pPictureChargeMPPoint2:SetTex( "DLG_PVP_State_Info0.tga", "ChargeMPPoint" )

									g_pPictureChargeMPPoint2:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(322,67)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureChargeMPPoint3 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureChargeMPPoint3 )
									g_pPictureChargeMPPoint3:SetShow(false)


									g_pPictureChargeMPPoint3:SetTex( "DLG_PVP_State_Info0.tga", "ChargeMPPoint" )

									g_pPictureChargeMPPoint3:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(430,67)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureHoldMPPoint1 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureHoldMPPoint1 )
									g_pPictureHoldMPPoint1:SetShow(false)


									g_pPictureHoldMPPoint1:SetTex( "DLG_PVP_State_Info0.tga", "HoldMPPoint" )

									g_pPictureHoldMPPoint1:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(213,62)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureHoldMPPoint2 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureHoldMPPoint2 )
									g_pPictureHoldMPPoint2:SetShow(false)


									g_pPictureHoldMPPoint2:SetTex( "DLG_PVP_State_Info0.tga", "HoldMPPoint" )

									g_pPictureHoldMPPoint2:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(316,62)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}

									g_pPictureHoldMPPoint3 = g_pUIDialog:CreatePicture()
									g_pStaticPVPGameStatePoint:AddPicture( g_pPictureHoldMPPoint3 )
									g_pPictureHoldMPPoint3:SetShow(false)


									g_pPictureHoldMPPoint3:SetTex( "DLG_PVP_State_Info0.tga", "HoldMPPoint" )

									g_pPictureHoldMPPoint3:SetPoint
									{

										"LEFT_TOP		= D3DXVECTOR2(424,62)",
										"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
										CHANGE_TIME     	= 0.0,
									}
								--]]


-----------각성 빈 구슬 ------------------------
g_pStaticPVPGameStateWakeSlot = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateWakeSlot:SetName( "StaticPVPGameStateWakeSlot" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateWakeSlot )

g_pPictureWakeSlot = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot )


g_pPictureWakeSlot:SetTex( "DLG_PVP_State_Info0.tga", "WakeSlot" )

g_pPictureWakeSlot:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(21,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWakeSlot = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot )


g_pPictureWakeSlot:SetTex( "DLG_PVP_State_Info0.tga", "WakeSlot" )

g_pPictureWakeSlot:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(47,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWakeSlot = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot )


g_pPictureWakeSlot:SetTex( "DLG_PVP_State_Info0.tga", "WakeSlot" )

g_pPictureWakeSlot:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(86,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


-----------------3번째 각성 빈구슬_청
g_pPictureWakeSlot_Chung = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot_Chung )


g_pPictureWakeSlot_Chung:SetTex( "DLG_UI_Character04.tga", "Chung_Berserker_bg" )

g_pPictureWakeSlot_Chung:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(74,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-----------------3번째 각성 빈구슬_레이븐
g_pPictureWakeSlot_Raven = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot_Raven )


g_pPictureWakeSlot_Raven:SetTex( "DLG_UI_Common_Texture24.tga", "Raven_3_bg" )

g_pPictureWakeSlot_Raven:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(74-1,103+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------------------- 차지된 각성 구슬 ----------------------------------
g_pStaticPVPGameStateWakeOrb = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateWakeOrb:SetName( "StaticPVPGameStateWakeOrb" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateWakeOrb )


g_pPictureWakeOrb = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb )



g_pPictureWakeOrb:SetTex( "DLG_PVP_State_Info0.tga", "WakeOrb" )

g_pPictureWakeOrb:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,92)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureWakeOrb = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb )
g_pPictureWakeOrb:SetTex( "DLG_PVP_State_Info0.tga", "WakeOrb" )
g_pPictureWakeOrb:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(50,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWakeOrb = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb )


g_pPictureWakeOrb:SetTex( "DLG_PVP_State_Info0.tga", "WakeOrb" )

g_pPictureWakeOrb:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(89,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


------차지된 각성 구슬_청
g_pPictureWakeOrb_Chung = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb_Chung )


g_pPictureWakeOrb_Chung:SetTex( "DLG_UI_Character04.tga", "Chung_Berserker" )

g_pPictureWakeOrb_Chung:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(79,111)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------차지된 각성 구슬_레이븐
g_pPictureWakeOrb_Raven = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb_Raven )


g_pPictureWakeOrb_Raven:SetTex( "DLG_UI_Common_Texture24.tga", "Raven_3" )

g_pPictureWakeOrb_Raven:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(79-1,111+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--[[
-- 핑 안테나
--------------------------------------------------------------------------------
g_pStatic_Ping = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ping )
g_pStatic_Ping:SetName( "UserInfo_Ping" )



g_pPicture_Ping0 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping0 )
g_pPicture_Ping0:SetTex( "DLG_PVP_Lobby6.TGA", "Ping0" )
g_pPicture_Ping0:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(50,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_Ping1 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping1 )
g_pPicture_Ping1:SetTex( "DLG_PVP_Lobby6.TGA", "Ping1" )
g_pPicture_Ping1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(50,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Ping2 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping2 )
g_pPicture_Ping2:SetTex( "DLG_PVP_Lobby6.TGA", "Ping2" )
g_pPicture_Ping2:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(50,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Ping3 = g_pUIDialog:CreatePicture()
g_pStatic_Ping:AddPicture( g_pPicture_Ping3 )
g_pPicture_Ping3:SetTex( "DLG_PVP_Lobby6.TGA", "Ping3" )
g_pPicture_Ping3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(50,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}
--]]

g_pStatic_HyperMode_Time = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HyperMode_Time )
g_pStatic_HyperMode_Time:SetName( "Static_HyperMode_Time" )

g_pStatic_HyperMode_Time:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(75,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------------------------MP수치

g_pStatic_MP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MP )
g_pStatic_MP:SetName( "g_pStatic_MP" )

g_pStatic_MP:AddString
{
	--MSG 			= "200/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(429,70)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------------------Soul수치

g_pStatic_Soul = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Soul )
g_pStatic_Soul:SetName( "g_pStatic_Soul" )

g_pStatic_Soul:AddString
{
	--MSG 			= "200/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(429,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--[[
-------------------100mp 구분선

g_pStatic_100MP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_100MP )
g_pStatic_100MP:SetName( "g_pStatic_100MP" )

g_pPicture_100MP_1 = g_pUIDialog:CreatePicture()
g_pStatic_100MP:AddPicture( g_pPicture_100MP_1 )
g_pPicture_100MP_1:SetTex( "DLG_PVP_State_Info0.TGA", "100MP_BAR" )
g_pPicture_100MP_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(228,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
	
}


g_pStatic_200MP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_200MP )
g_pStatic_200MP:SetName( "g_pStatic_200MP" )

g_pPicture_200MP_2 = g_pUIDialog:CreatePicture()
g_pStatic_200MP:AddPicture( g_pPicture_200MP_2 )
g_pPicture_200MP_2:SetTex( "DLG_PVP_State_Info0.TGA", "100MP_BAR" )
g_pPicture_200MP_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(334,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
	
}


g_pStatic_300MP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_300MP )
g_pStatic_300MP:SetName( "g_pStatic_300MP" )

g_pPicture_300MP_3 = g_pUIDialog:CreatePicture()
g_pStatic_300MP:AddPicture( g_pPicture_300MP_3 )
g_pPicture_300MP_3:SetTex( "DLG_PVP_State_Info0.TGA", "100MP_BAR" )
g_pPicture_300MP_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(441,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
	
}
--]]

--IncludeLua( "DLG_Elsword_WayOfSword.lua" )
--IncludeLua( "DLG_Chung_Cannonball.lua" )