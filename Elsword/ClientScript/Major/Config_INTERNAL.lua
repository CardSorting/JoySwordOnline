-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- OFFLINE: JoySword private server — channel points at local host

g_pMain:SetClientVersion_LUA("N_20100405_A")
--g_pMain:SetSubClientVersion_LUA( "B" )

 


--g_pMain:ResetFullScreenResolution(1024, 768)



-- 솔레스 채널 서버 
g_pMain:AddChannelServerIP_LUA( "136.36.127.72", 9400 )  ---
--g_pMain:AddChannelServerIP_LUA( "136.36.127.72", 9400 ) -- 육사 서버
g_pMain:SetChannelServerPort( 9400 )
--g_pMain:SetDefaultChannelServerIPIndex( -1 )
g_pMain:SetDefaultChannelServerIPIndex( 0 )

-- 가이아 서버군 추가 테스트로 채널 서버 하나 추가
--g_pMain:AddChannelServerIP_LUA( "136.36.127.72", 9400 )  ---

-- 게임 서버 : 사내 로그인 할 때 계정 생성을 위해서 사용되는 정보입니다.
g_pMain:AddGameServerIPForCreateID_LUA( "136.36.127.72" )
g_pMain:SetGameServerPortForCreateID( 9300 )

g_pMain:SetServerTimeOut( 20 )

g_pMain:SetAutoLoginUnitIndex( 0 )
g_pMain:SetSafetyKey( "" )																		 

g_pMain:SetSquareMaxUserNum( 100 )

g_pMain:InstallFont( "HY헤드라인M (TrueType)", "H2HDRM.TTF" )
g_pMain:InstallFont( "2002L_KOG (TrueType)", "2002LKOG.ttf" )


g_pMain:DeleteFile( "ErrorLog.txt" )
g_pMain:DeleteFile( "DialogLog.txt" )
g_pMain:DeleteFile( "P2PLog.txt" )
g_pMain:DeleteFile( "State.log" )



-- GAME_P2P_PORT = 8765



--폰트 생성
g_pFontManager:CreateNewUIFont( XF_DODUM_11_NORMAL, "2002L_KOG", 12, FONT_WEIGHT["FW_NORMAL"]		)
g_pFontManager:CreateNewUIFont( XF_DODUM_15_NORMAL, "2002L_KOG", 16, FONT_WEIGHT["FW_NORMAL"]		)



--X2Define에도 선언해줘야함

g_pFontManager:CreateNewUIUKFont( XUF_DODUM_11_NORMAL,		"2002L_KOG",			12, FONT_WEIGHT["FW_NORMAL"],	1, 1, false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_13_SEMIBOLD,	"2002L_KOG",			14, FONT_WEIGHT["FW_NORMAL"], 1, 1, false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_15_BOLD,		"2002L_KOG",			16, FONT_WEIGHT["FW_NORMAL"],		1, 1, false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_20_BOLD,		"2002L_KOG",			21, FONT_WEIGHT["FW_NORMAL"],		1, 1, false	)
g_pFontManager:CreateNewUIUKFont( XUF_HEADLINE_30_NORMAL,	"HY헤드라인M",			30, FONT_WEIGHT["FW_NORMAL"],	1, 1, false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_8_NORMAL,		"2002L_KOG",			8,	FONT_WEIGHT["FW_NORMAL"],	1, 1, false	)

g_pFontManager:CreateNewUIUKFont( XUF_DODUM_11_NORMAL_MAPPED,	"2002L_KOG",		12, FONT_WEIGHT["FW_NORMAL"],	1, 0, true )
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_15_NORMAL_MAPPED,	"2002L_KOG",		16, FONT_WEIGHT["FW_NORMAL"],	1, 0, true )

g_pFontManager:CreateNewUIUKFont( XUF_DODUM_15_EXBOLD,		"2002L_KOG",			16, FONT_WEIGHT["FW_EXTRABOLD"],		1, 2, false	)

g_pFontManager:MapUIFontToUKFont( XF_DODUM_11_NORMAL, XUF_DODUM_11_NORMAL_MAPPED )
g_pFontManager:MapUIFontToUKFont( XF_DODUM_15_NORMAL, XUF_DODUM_15_NORMAL_MAPPED )




