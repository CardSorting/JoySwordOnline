-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- OFFLINE: JoySword private server — channel points at local host

g_pMain:SetClientVersion_LUA("V4.0128.3")  
g_pMain:SetSubClientVersion_LUA("1")

--g_pMain:ResetFullScreenResolution(1024, 768)



-- 솔레스 채널 서버
g_pMain:AddChannelServerIP_LUA( "52.238.194.187", 9400 ) 
g_pMain:SetChannelServerPort( 9400 )
g_pMain:SetDefaultChannelServerIPIndex( 0 )

-- 가이아 서버군 추가 테스트로 채널 서버 하나 추가
--g_pMain:AddChannelServerIP_LUA( "52.238.194.187", 9400 )

g_pMain:SetServerTimeOut( 20 )

g_pMain:SetAutoLoginUnitIndex( 0 )
g_pMain:SetSafetyKey( "" )																		 

g_pMain:SetSquareMaxUserNum( 100 )

g_pMain:InstallFont( "Tahoma", "tahoma.ttf" )
g_pMain:InstallFont( "Blambot Pro Lite", "blambotprol.ttf" )
-- US 폰트 ( 캐릭터 대사에만 사용하는 폰트 )


g_pMain:DeleteFile( "ErrorLog.txt" )
g_pMain:DeleteFile( "DialogLog.txt" )
g_pMain:DeleteFile( "P2PLog.txt" )
g_pMain:DeleteFile( "State.log" )

g_pMain:SetNationFlag( NF_US )

--g_pMain:SetInGameInfoToExcel(True)

-- GAME_P2P_PORT = 8765



--폰트 생성
g_pFontManager:CreateNewUIFont( XF_DODUM_11_NORMAL, "Tahoma", 12, FONT_WEIGHT["FW_MEDIUM"]		)
g_pFontManager:CreateNewUIFont( XF_DODUM_15_NORMAL, "Tahoma", 16, FONT_WEIGHT["FW_MEDIUM"]		)



--X2Define에도 선언해줘야함
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_11_NORMAL,		"Tahoma",			12, FONT_WEIGHT["FW_MEDIUM"],	1,1,false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_13_SEMIBOLD,	"Tahoma",			14, FONT_WEIGHT["FW_MEDIUM"], 1,1,false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_15_BOLD,		"Tahoma",			16, FONT_WEIGHT["FW_MEDIUM"],		1,1,false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_15B_BOLD,		"Tahoma",			12, FONT_WEIGHT["FW_SEMIBOLD"],		1,1,false	)
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_20_BOLD,		"Tahoma",			21, FONT_WEIGHT["FW_MEDIUM"],		1,1,false	)
g_pFontManager:CreateNewUIUKFont( XUF_HEADLINE_30_NORMAL,	"Tahoma",	30, FONT_WEIGHT["FW_SEMIBOLD"],	1,1,false	)

-- US 폰트 ( 캐릭터 대사에만 사용하는 폰트 )
g_pFontManager:CreateNewUIUKFont( XUF_BLAM_SPEECH,		"Blambot Pro Lite",			22, FONT_WEIGHT["FW_MEDIUM"],	1,1,false	)
g_pFontManager:CreateNewUIUKFont( XUF_BLAM_TALK,		"Blambot Pro Lite",			20, FONT_WEIGHT["FW_SEMIBOLD"], 1,1,false	)

g_pFontManager:CreateNewUIUKFont( XUF_DODUM_11_NORMAL_MAPPED,	"Tahoma",		12, FONT_WEIGHT["FW_MEDIUM"],	1, 0, true )
g_pFontManager:CreateNewUIUKFont( XUF_DODUM_15_NORMAL_MAPPED,	"Tahoma",		16, FONT_WEIGHT["FW_MEDIUM"],	1, 0, true )


g_pFontManager:MapUIFontToUKFont( XF_DODUM_11_NORMAL, XUF_DODUM_11_NORMAL_MAPPED )
g_pFontManager:MapUIFontToUKFont( XF_DODUM_15_NORMAL, XUF_DODUM_15_NORMAL_MAPPED )





