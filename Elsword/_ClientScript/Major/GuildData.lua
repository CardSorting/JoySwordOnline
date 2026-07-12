-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 길드 레벨 제한
g_pGuildManager:SetLimitGuildLevel( 15 )


-- 길드 경험치'명예 포인트' 테이블

g_pGuildManager:AddGuildEXP(  1,      0,     0 )
g_pGuildManager:AddGuildEXP(  2,     70,    70 )
g_pGuildManager:AddGuildEXP(  3,     75,    145 )
g_pGuildManager:AddGuildEXP(  4,     84,    229 )
g_pGuildManager:AddGuildEXP(  5,     98,    327 )
g_pGuildManager:AddGuildEXP(  6,    121,    448 )
g_pGuildManager:AddGuildEXP(  7,    156,    603 )
g_pGuildManager:AddGuildEXP(  8,    210,    814 )
g_pGuildManager:AddGuildEXP(  9,    299,    1112 )
g_pGuildManager:AddGuildEXP( 10,    445,    1557 )
g_pGuildManager:AddGuildEXP( 11,    694,    2251 )
g_pGuildManager:AddGuildEXP( 12,    708,    2959 )
g_pGuildManager:AddGuildEXP( 13,    757,    3716 )
g_pGuildManager:AddGuildEXP( 14,    848,    4564 )
g_pGuildManager:AddGuildEXP( 15,    992,    5557 )
g_pGuildManager:AddGuildEXP( 16,   1221,    6777 )
g_pGuildManager:AddGuildEXP( 17,   1575,    8352 )
g_pGuildManager:AddGuildEXP( 18,   2126,    10478 )
g_pGuildManager:AddGuildEXP( 19,   3019,    13497 )
g_pGuildManager:AddGuildEXP( 20,   4498,    17995 )
g_pGuildManager:AddGuildEXP( 21,   7017,  25011 )
g_pGuildManager:AddGuildEXP( 22,   7157,  32168 )
g_pGuildManager:AddGuildEXP( 23,   7658,  39826 )
g_pGuildManager:AddGuildEXP( 24,   8577,  48403 )
g_pGuildManager:AddGuildEXP( 25,   10035, 58438 )
g_pGuildManager:AddGuildEXP( 26,   12343, 70781 )
g_pGuildManager:AddGuildEXP( 27,   15923, 86704 )
g_pGuildManager:AddGuildEXP( 28,   21495, 108199)
g_pGuildManager:AddGuildEXP( 29,   30523, 138722 )
g_pGuildManager:AddGuildEXP( 30,   45480, 184202 )






-- 명예 포인트 캐릭터 레벨 상수 : ( ?레벨부터, ?레벨까지, 상수값 )
g_pGuildManager:SetCharLevelFactor(  1, 10,   2 )
g_pGuildManager:SetCharLevelFactor( 11, 20, 1.8 )
g_pGuildManager:SetCharLevelFactor( 21, 30, 1.4 )
g_pGuildManager:SetCharLevelFactor( 31, 40, 1.2 )
g_pGuildManager:SetCharLevelFactor( 41, 50, 1.1 )
g_pGuildManager:SetCharLevelFactor( 51, 60, 1.0 )
g_pGuildManager:SetCharLevelFactor( 61, 70, 0.9 )

-- 명예 포인트 길드원 등급 상수
g_pGuildManager:SetGuildMemberGradeFactor( GUILD_USER_GRADE["GUG_MASTER"],		  2 ) -- 길드 마스터
g_pGuildManager:SetGuildMemberGradeFactor( GUILD_USER_GRADE["GUG_SYSOP"],		1.5 ) -- 길드 관리자
g_pGuildManager:SetGuildMemberGradeFactor( GUILD_USER_GRADE["GUG_OLD_USER"],	  1 ) -- 원로 길드원
g_pGuildManager:SetGuildMemberGradeFactor( GUILD_USER_GRADE["GUG_VIP_USER"],	  1 ) -- 우수 길드원
g_pGuildManager:SetGuildMemberGradeFactor( GUILD_USER_GRADE["GUG_NORMAL_USER"],   1 ) -- 일반 길드원
g_pGuildManager:SetGuildMemberGradeFactor( GUILD_USER_GRADE["GUG_NEW_USER"],	  1 ) -- 신입 길드원


-- 명예 포인트 PC방 상수
g_pGuildManager:SetPcBangFactor( 1 )




-- 대전 사람 숫자에 따른 상수 : ( 대전멤버수, 상수값 )
g_pGuildManager:SetPvpMemberFactor( 1, 0.5 )
g_pGuildManager:SetPvpMemberFactor( 2, 0.5 )
g_pGuildManager:SetPvpMemberFactor( 3, 0.5 )
g_pGuildManager:SetPvpMemberFactor( 4, 0.6 )
g_pGuildManager:SetPvpMemberFactor( 5, 0.6 )
g_pGuildManager:SetPvpMemberFactor( 6, 0.8 )
g_pGuildManager:SetPvpMemberFactor( 7, 0.8 )
g_pGuildManager:SetPvpMemberFactor( 8, 1 )





