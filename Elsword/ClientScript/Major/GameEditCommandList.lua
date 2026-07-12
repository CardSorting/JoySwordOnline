-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--전역으로 등록된 객체
--g_pGameEdit, g_pData, g_pMain, g_pKTDXApp, g_pStage(현재 보여지는 state)



-- 개발자용 help

g_pGameEdit:AddHelperText('/n 공지내용 (서버군 공지)', 3)
g_pGameEdit:AddHelperText('/l "닉네임" 레벨 경험치', 3)
g_pGameEdit:AddHelperText('/cm "몬스터이름"( 예: "BEE" ) 강화1 강화2 속성1 속성2', 3)
g_pGameEdit:AddHelperText('/mhp 셋팅할자기에너지', 3)
g_pGameEdit:AddHelperText('/b 구매할아이템아이디, 구매수량, 아이템 기간(기간제 아이템일 경우)', 3)
g_pGameEdit:AddHelperText('/ak -- 모든 NPC Kill', 3)
g_pGameEdit:AddHelperText('/ai bAIEnable', 3)
g_pGameEdit:AddHelperText('/fc bEnable -- 프리 카메라 모드', 3)
g_pGameEdit:AddHelperText('/a ID level -- 권한 설정', 3)
g_pGameEdit:AddHelperText('/al level -- 권한을 가진 사람보기', 3)
g_pGameEdit:AddHelperText('/e "닉네임" 원하는돈', 3)
g_pGameEdit:AddHelperText('/stage 스테이지번호', 3)
g_pGameEdit:AddHelperText('/q questID, [0~5]', 3)
g_pGameEdit:AddHelperText('/isk -- 스킬 초기화	', 3)
g_pGameEdit:AddHelperText('/fsk --전체 스킬 최대 레벨로 활성화', 3)
g_pGameEdit:AddHelperText('/sp 원하는SP', 3)
g_pGameEdit:AddHelperText('/stloc --Local Statitics', 3)
g_pGameEdit:AddHelperText('/stdb -- DB Statitics', 3)
g_pGameEdit:AddHelperText('/bel 레벨 -- 이 캐릭터의 레벨 장비 다 가져오기', 3)
g_pGameEdit:AddHelperText('/ad 수치 -- add damage', 3)
g_pGameEdit:AddHelperText('/lp -- load picture characters ', 3)
g_pGameEdit:AddHelperText('/sld -- saveFile loaded device ', 3)
g_pGameEdit:AddHelperText('/uuu -- unload all ui unit ', 3)
g_pGameEdit:AddHelperText('/crash -- 게임 뻗어요!! ', 3)
g_pGameEdit:AddHelperText('/nmp -- 몬스터 MP full!! ', 3)
g_pGameEdit:AddHelperText('/sf -- SlowFrame( 1.5, 2.0 )!! ', 3)
g_pGameEdit:AddHelperText('/k "닉네임" --해당 유저 강제 종료 시키기 ', 3)
g_pGameEdit:AddHelperText('/kid "넥슨ID" --해당 유저 강제 종료 시키기 ', 3)
g_pGameEdit:AddHelperText('/cs 근성도 --근성도 수치 변경 ', 3)
g_pGameEdit:AddHelperText('/spc true Or false --피시방 On And Off', 3)
g_pGameEdit:AddHelperText('/vp 현재VP 최대VP --대전 포인트 수치 변경', 3)
g_pGameEdit:AddHelperText('/sdm true Or false --다이얼로그 매니져 렌더링 On And Off ', 3)
g_pGameEdit:AddHelperText('/suv true Or false --유닛 뷰어 유아이 렌더링 On And Off ', 3)
g_pGameEdit:AddHelperText('/linemap 라인맵 toggle ', 3)
g_pGameEdit:AddHelperText('/uc 유닛클래스 --이 캐릭터의 유닛 클래스 변경 ', 3)
g_pGameEdit:AddHelperText('/cmp 몬스터이름( 예: BEE ) posX posY posZ ', 3)
g_pGameEdit:AddHelperText('/t 칭호ID 기간 --칭호얻기(기간 안넣으면 무제한)', 3)
g_pGameEdit:AddHelperText('/dev true/false 개발자 기능 on/off ', 3)
g_pGameEdit:AddHelperText('/pf 횟수 --PARTY FEVER치트 ', 3)
g_pGameEdit:AddHelperText('/guest true Or false --체험ID 기능 on/off ', 3)
g_pGameEdit:AddHelperText('/gsp -- 길드스킬포인트', 3)
g_pGameEdit:AddHelperText('/na 공지내용 (서버전체공지)', 3)
g_pGameEdit:AddHelperText('/msc -- 몬스터 스테이트 변경', 3)
g_pGameEdit:AddHelperText('/pet 타입 수치 -- 펫 치트 (0:진화단계, 1:포만도, 2:친밀도, 3:외향성, 4:감수성)', 3)
g_pGameEdit:AddHelperText('/pa MotionName', 3)
g_pGameEdit:AddHelperText('/usered 닉네임', 3)
g_pGameEdit:AddHelperText('/shop 기간', 3)
g_pGameEdit:AddHelperText('/channel 채널코드', 3)
g_pGameEdit:AddHelperText('/henir 헤니르 보상 가능 횟수', 3)
g_pGameEdit:AddHelperText('/buff 헤니르 버프 번호', 3)
g_pGameEdit:AddHelperText('/em ED Monitoring true/false', 3)
g_pGameEdit:AddHelperText('/wsp 합산할 엘소드검의길포인트(정수)', 3)
g_pGameEdit:AddHelperText('/ms "몬스터이름" 크기 지속시간', 3)
g_pGameEdit:AddHelperText('/cmt "몬스터이름" --아군 몬스터 소환', 3)
g_pGameEdit:AddHelperText('/csd (그노시스 만료될)년 월 일 시간 분', 3)
g_pGameEdit:AddHelperText('/fsk --Full Skill Tree', 3)
g_pGameEdit:AddHelperText('/danger --필드 위험도', 3)
g_pGameEdit:AddHelperText('/fwarp 필드 이동(0~24)', 3)
g_pGameEdit:AddHelperText('/obs 공지내용 (영웅 대전 그룹 공지)', 3)
g_pGameEdit:AddHelperText('/obsw 닉네임 공지내용 (영웅 대전 귓속말 공지)', 3)
g_pGameEdit:AddHelperText('/obsdel 서버코드 닉네임 (해당 유저를 영웅 대전 그룹에서 제외)', 3)
g_pGameEdit:AddHelperText('/Ping -- Ping변경(방장 변경 테스트용)', 3)
g_pGameEdit:AddHelperText('/obsmode -- 옵저버 대전 난입 모드 변경(대전 모니터링용)', 3)
g_pGameEdit:AddHelperText('/uc2 "전직명"', 3)
g_pGameEdit:AddHelperText('/rps --라이딩펫 스테미너 풀', 3)
g_pGameEdit:AddHelperText('/couple 수치 -- 커플로 지낸 시간 증가 (과거로 갈려면 - 넣어주세요!)', 3)
g_pGameEdit:AddHelperText('/EffectLog 레벨 -- 이펙트 로그', 3)


--넥슨 QA 요청
g_pGameEdit:AddHelperText('/wakeup 각성의 구슬을 한칸 채워주는 명령어', 3)
g_pGameEdit:AddHelperText('/energy 아라 기력칸을 한칸 채워주는 명령어', 3)
g_pGameEdit:AddHelperText('/canon 청 포탄 게이지를 채워주는 명령어', 3)
g_pGameEdit:AddHelperText('/Scanon 청 특수 포탄 게이지를 채워주는 명령어', 3)
g_pGameEdit:AddHelperText('/monhp 수치 -- 맵 안의 몬스터 hp를 입력수치로 만드는 명령어 ', 3)
g_pGameEdit:AddHelperText('/monhpR 수치 -- 맵 안의 몬스터 hp를 입력수치 %로 만드는 명령어', 3)
g_pGameEdit:AddHelperText('/CM "몬스터이름" 수치 -- 몬스터가 수치만큼 소환되는 명령어', 3)
g_pGameEdit:AddHelperText('/invin 숫자(0,1) -- 캐릭터 무적상태. 0이면 ON 1이면 OFF', 3)
g_pGameEdit:AddHelperText('/nocooltime -- 스킬 쿨타임을 리셋시키는 명령어, 모두 즉시 리셋', 3)
g_pGameEdit:AddHelperText('/destroy 숫자 -- 인벤토리 아이템 모두 삭제, 1~8(슬롯)', 3)

-- ACTIVE_KOG_GAME_PERFORMANCE_CHECK( by hcsung: 게임 성능 측정 시스템 포팅후 랙 테스트를 위해 추가함 )
g_pGameEdit:AddHelperText('/lag 렉타임 렉타입', 3)
-- ACTIVE_KOG_GAME_PERFORMANCE_PING_TEST( by hcsung: 게임 성능 측정 시스템 포팅후 핑 테스트를 위해 추가함 )
g_pGameEdit:AddHelperText('/forcehost 활성화여부', 3)
g_pGameEdit:AddHelperText('/switchconnect 모드', 3)

-- 영자용 help
g_pGameEdit:AddHelperText('/n 공지내용 bIsAllServers(True/False)', 2)
g_pGameEdit:AddHelperText('/l "닉네임" 레벨 경험치', 2)
g_pGameEdit:AddHelperText('/b 구매할아이템아이디, 구매수량, 아이템 기간(기간제 아이템일 경우)', 2)
g_pGameEdit:AddHelperText('/sp 원하는SP', 2)
g_pGameEdit:AddHelperText('/bel 레벨 -- 이 캐릭터의 레벨 장비 다 가져오기', 2)
g_pGameEdit:AddHelperText('/ak -- 모든 NPC Kill', 2)
g_pGameEdit:AddHelperText('/stage 스테이지번호', 2)
g_pGameEdit:AddHelperText('/lp -- load picture characters ', 2)
g_pGameEdit:AddHelperText('/ad 수치 -- add damage', 2)
g_pGameEdit:AddHelperText('/k "닉네임" --해당 유저 강제 종료 시키기 ', 2)
g_pGameEdit:AddHelperText('/cs 근성도 --근성도 수치 변경 ', 2)
g_pGameEdit:AddHelperText('/spc true Or false --피시방 On And Off ', 2)
g_pGameEdit:AddHelperText('/vp 현재VP 최대VP --대전 포인트 수치 변경 ', 2)
g_pGameEdit:AddHelperText('/t 칭호ID 기간 --칭호얻기(기간 안넣으면 무제한)', 2)
g_pGameEdit:AddHelperText('/dev true/false 개발자 기능 on/off ', 2)
g_pGameEdit:AddHelperText('/na 공지내용 (서버전체공지)', 2)
g_pGameEdit:AddHelperText('/usered 닉네임', 2)
g_pGameEdit:AddHelperText('/fwarp 필드 이동(0~24)', 2)
g_pGameEdit:AddHelperText('/obs 공지내용 (영웅 대전 그룹 공지)', 2)
g_pGameEdit:AddHelperText('/obsw 닉네임 공지내용 (영웅 대전 귓속말 공지)', 2)
g_pGameEdit:AddHelperText('/obsdel 서버코드 닉네임 (해당 유저를 영웅 대전 그룹에서 제외)', 2)
g_pGameEdit:AddHelperText('/Ping -- Ping변경(방장 변경 테스트용)', 2)
g_pGameEdit:AddHelperText('/obsmode -- 옵저버 대전 난입 모드 변경(대전 모니터링용)', 2)
g_pGameEdit:AddHelperText('/uc2 "전직명"', 2)
g_pGameEdit:AddHelperText('/afd 수치 -- 위험도', 2)
g_pGameEdit:AddHelperText('/couple 수치 -- 커플로 지낸 시간 증가 (과거로 갈려면 - 넣어주세요!)', 2)


g_pGameEdit:AddCommandChange( "ㅜ", "n" )
g_pGameEdit:AddCommandChange( "ㅜㅁ", "na" )
g_pGameEdit:AddCommandChange( "츠", "cm" )
g_pGameEdit:AddCommandChange( "ㅡㅗㅔ", "mhp" )
g_pGameEdit:AddCommandChange( "ㅗ", "h" )
g_pGameEdit:AddCommandChange( "ㅠ", "b" )
g_pGameEdit:AddCommandChange( "마", "ak" )
g_pGameEdit:AddCommandChange( "먀", "ai" )
g_pGameEdit:AddCommandChange( "ㄹㅊ", "fc" )
g_pGameEdit:AddCommandChange( "ㄷ", "e" )
g_pGameEdit:AddCommandChange( "ㅠ디", "bel" )
g_pGameEdit:AddCommandChange( "ㅣ", "l" )
g_pGameEdit:AddCommandChange( "ㄴㅅㅁㅎㄷ", "stage" )
g_pGameEdit:AddCommandChange( "ㅁㅇ", "ad" )
g_pGameEdit:AddCommandChange( "ㅣㅔ", "lp" )
g_pGameEdit:AddCommandChange( "닝", "sld" )
g_pGameEdit:AddCommandChange( "ㅕㅕㅕ", "uuu" )
g_pGameEdit:AddCommandChange( "ㅊㄱㅁ노", "crash" )
g_pGameEdit:AddCommandChange( "ㄴㄹ", "sf" )
g_pGameEdit:AddCommandChange( "ㅏ", "k" )
g_pGameEdit:AddCommandChange( "ㅊㄴ", "cs" )
g_pGameEdit:AddCommandChange( "넻", "spc" )
g_pGameEdit:AddCommandChange( "페", "vp" )
g_pGameEdit:AddCommandChange( "ㅕㅊ", "uc" )
g_pGameEdit:AddCommandChange( "츠ㅔ", "cmp" )
g_pGameEdit:AddCommandChange( "ㅅ", "t" )
g_pGameEdit:AddCommandChange( "ㅎ네", "gsp" )
g_pGameEdit:AddCommandChange( "ㅁㄴㅊ", "msc" )
g_pGameEdit:AddCommandChange( "ㅔㄷㅅ", "pet" )
g_pGameEdit:AddCommandChange( "ㅔㅁ", "pa" )
g_pGameEdit:AddCommandChange( "ㅕㄴㄷㄱㄷㅇ", "usered" )
g_pGameEdit:AddCommandChange( "놰ㅔ", "shop" )
g_pGameEdit:AddCommandChange( "초무ㅜ디", "channel" )
g_pGameEdit:AddCommandChange( "ㅗ두ㅑㄱ", "henir" )
g_pGameEdit:AddCommandChange( "ㅠㅕㄹㄹ", "buff" )
g_pGameEdit:AddCommandChange( "드", "em" )
g_pGameEdit:AddCommandChange( "ㅈ네", "wsp" )
g_pGameEdit:AddCommandChange( "ㅊㄴㅇ", "csd" )
g_pGameEdit:AddCommandChange( "ㄹ나", "fsk" )
g_pGameEdit:AddCommandChange( "ㄹㅈㅁ게", "fwarp" )
g_pGameEdit:AddCommandChange( "ㅇ뭏ㄷㄱ", "danger" )
g_pGameEdit:AddCommandChange( "ㅐㅠㄴ", "obs" )
g_pGameEdit:AddCommandChange( "ㅐㅠㄵ", "obsw" )
g_pGameEdit:AddCommandChange( "ㅐㅠㄴㅇ디", "obsdel" )
g_pGameEdit:AddCommandChange( "ㅐㅠ느ㅐㅇㄷ", "obsmode" )
g_pGameEdit:AddCommandChange( "전직", "uc2")
g_pGameEdit:AddCommandChange( "스킬", "fsk")
g_pGameEdit:AddCommandChange( "스킬초기화", "isk")
g_pGameEdit:AddCommandChange( "스킬포인트", "sp")
g_pGameEdit:AddCommandChange( "체력", "mhp")
g_pGameEdit:AddCommandChange( "공지", "n")
g_pGameEdit:AddCommandChange( "돈", "e")
g_pGameEdit:AddCommandChange( "라인맵", "linemap")
g_pGameEdit:AddCommandChange( "ㅁㄹㅇ", "afd")
g_pGameEdit:AddCommandChange( "ㄱㅔㄴ", "rps")
g_pGameEdit:AddCommandChange( "라이딩스테미너", "rps")
g_pGameEdit:AddCommandChange( "채ㅕㅔㅣㄷ", "couple")
g_pGameEdit:AddCommandChange( "이펙트로그", "EffectLog")
g_pGameEdit:AddCommandChange( "EFFECTLOG", "EffectLog")
g_pGameEdit:AddCommandChange( "effectlog", "EffectLog")

--일반 명령

function OKMsgBox( posX, posY, msg )

	g_pMain:KTDGUIOKMsgBox( D3DXVECTOR2(posX,posY), msg, g_pStage )

end









--슬래시 명령

--{{ 2012-02-29 // 오현빈 // npc 스케일 수정
function Slash_ms( npcName, fScale, fTime )
	
	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	npcName = string.upper( npcName )
	npcEnumID = string.format( "NUI_%s", npcName )	
	if NPC_UNIT_ID[ npcEnumID ] == nil then 
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못된 몬스터 이름입니다." )
		return nil 
	end
		
	pUnit	= g_pX2Game:GetMyUnit()
	if pUnit == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil	
	end 
	
	UnitPos = pUnit:GetPos()	
	NpcUID = g_pX2Game:GetNearNPCUnitUID_LUA( UnitPos, NPC_UNIT_ID[npcEnumID], 99999)
	pNpc = g_pX2Game:GetNPCUnitByUID(NpcUID)
	if pNpc == nil then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "NPC를 찾을 수 없습니다." )
	end
	
	pNpc:TransformScale_LUA(fScale, fTime)  
end
--}}


function Slash_n( msg )
	
	iCount = 1
	
	g_pState:Handler_EGS_NOTIFY_MSG_REQ( iCount, msg, false )

end


function Slash_na( msg )
	
	iCount = 1
	
	g_pState:Handler_EGS_NOTIFY_MSG_REQ( iCount, msg, true )

end


function Slash_l( nickName, changeLevel, changeExp )

	g_pState:Handler_EGS_ADMIN_MODIFY_UNIT_LEVEL_REQ( nickName, changeLevel, changeExp )
	
end










function Slash_cm( npcName, iAttrib1, iAttrib2, iSA1, iSA2 )	-- gameedit.cpp에 예외처리 코드가 있습니다 "cm" 로 검색
--function Slash_cm( npcName )	-- gameedit.cpp에 예외처리 코드가 있습니다 "cm" 로 검색


	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
	if 3 == g_pX2Game:GetGameType() then
		Slash_CM( npcName, iAttrib1 )
		return nil
	end
	
	npcName = string.upper( npcName )
	npcEnumID = string.format( "NUI_%s", npcName )
	
	if NPC_UNIT_ID[ npcEnumID ] == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못된 몬스터 이름입니다." )
		return nil
		
	end
	
	if iElite == nil then
	
		iElite = 0
		
	end
	
	myUnit	= g_pX2Game:GetMyUnit()
	
	if myUnit == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil
	
	end
	
	pos	= myUnit:GetPos()
	bRight = myUnit:GetIsRight()
	--g_pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID[ npcEnumID ], 1, true, pos, bRight, 0, false ) 	
	g_pX2Game:Send_EGS_ADMIN_NPC_UNIT_CREATE_REQ_LUA( NPC_UNIT_ID[ npcEnumID ], 1, pos, bRight, iAttrib1, iAttrib2, iSA1, iSA2 )
	
	g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], npcEnumID )
	
	g_pGameEdit:SetLastCreatedMonster(NPC_UNIT_ID[ npcEnumID ])
	
end


function Slash_cmt( npcName, iLevel, iTeam )	-- gameedit.cpp에 예외처리 코드가 있습니다 "cm" 로 검색


	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
	npcName = string.upper( npcName )
	npcEnumID = string.format( "NUI_%s", npcName )
	
	if NPC_UNIT_ID[ npcEnumID ] == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못된 몬스터 이름입니다." )
		return nil
		
	end
	
	
	myUnit	= g_pX2Game:GetMyUnit()
	
	if myUnit == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil
	
	end
	
	pos	= myUnit:GetPos()	
	bRight = myUnit:GetIsRight()

	g_pX2Game:CreateNPCReqAlly( NPC_UNIT_ID[ npcEnumID ], iLevel, true, pos, bRight, D3DXVECTOR3(0, 0, 0), false, iTeam )
	
	g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], npcEnumID )
	
	g_pGameEdit:SetLastCreatedMonster(NPC_UNIT_ID[ npcEnumID ])
	
end




function Slash_cmp( npcName, posX, posY, posZ )

	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
	npcName = string.upper( npcName )
	npcEnumID = string.format( "NUI_%s", npcName )
	
	if NPC_UNIT_ID[ npcEnumID ] == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못된 몬스터 이름입니다." )
		return nil
		
	end
	
	myUnit	= g_pX2Game:GetMyUnit()
	
	if myUnit == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil
	
	end
	
	pos	= g_pKTDXApp:GetVec3( posX, posY, posZ )	
	
	if pos.x ~= 0 then
		g_pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID[ npcEnumID ], 1, true, pos, bRight, 0, false ) 
	else
		g_pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID[ npcEnumID ], 1, true, myUnit:GetPos(), bRight, 0, false ) 
	end
	
	
	g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], npcEnumID )

end

function Slash_mhp( myHP )

	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
	myUnit	= g_pX2Game:GetMyUnit()
	
	if myUnit == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil
	
	end
	
	myUnit:SetNowHP( myHP )

end


function Slash_h()

	g_pGameEdit:ToggleCommandList()

end



function Slash_b( itemID, quantity, period )

	g_pMain:BuyItemSuper_LUA( itemID, quantity, period )

end



function Slash_ak()
		
	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
			
	g_pX2Game:KillAllNPC_LUA( false )

end


function Slash_ai( bEnable )

	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
	g_pX2Game:EnableAllNPCAI( bEnable )

end	


function Slash_fc( bEnable )

	g_pMain:SetFreeCamera( bEnable )
	if bEnable == false then
		g_pMain:EndWorldCamera()
	end


end	

function Slash_kfc( bEnable )

	g_pMain:SetFreeCamera( bEnable )
	g_pMain:SetWorldCameraEdit( bEnable )
end	



function Slash_mc( bEnable )

	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end

	g_pX2Game:EnableManualCameraPosition( bEnable )

end	




function Slash_a( userID, authLevel )
	
	g_pMain:SetAuthLevel_LUA( userID, authLevel )

end 

function Slash_al( authLevel )

	g_pMain:GetAuthUserList_LUA( authLevel )

end 


function Slash_e( nickName, changeED )

	g_pState:Handler_EGS_ADMIN_CHANGE_ED_REQ( nickName, changeED )

end



function Slash_stage( iStageIndex )

	
	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end

	
	iSubStageIndex = 0	
	if g_pX2Game:GoStage( iStageIndex, iSubStageIndex ) then
		
		g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], "stage 이동에 성공 했습니다" )
	
	else
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "stage 이동에 실패 했습니다" )
		
	end

end


function Slash_q( iQuestID, iWhichString )

	--[[
		-- not working fix!! 새마을 버전으로 바뀌면서 이 코드 작동안함, 다시 만들어야 됨
				pQuestUI = g_pMain:GetQuestUI_LUA()
				if nil ~= pQuestUI then
					bReloadQMgr = false
					pQuestUI:QuestDescTestView_LUA( iQuestID, iWhichString, bReloadQMgr )
					g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], "quest desc 로딩 성공" )
				
				else
					g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "quest desc 로딩 실패" )
					
				end
	--]]
		
end




function Slash_isk()

	g_pMain:InitMyUnitSkillTree()	
	
end

function Slash_fsk()
	g_pMain:FullMyUnitSkillTree()
end

function Slash_fskl()
	g_pMain:FullMyUnitSkillTreeByLevel()
end

function Slash_skl( iSkillID, iSkillLevel )

	local bIsError = false
	
	if false == g_pSkillTree:IsMyClassSkillID_LUA( iSkillID ) then
		g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], "잘못된 스킬 아이디 혹은 해당 유닛의 스킬이 아닙니다." )
		bIsError = true
	end
		
	if 0 >= iSkillLevel or g_pSkillTree:GetMaxLimitedSkillLevel_LUA() < iSkillLevel then
		g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], "유효 스킬 레벨이 아닙니다." )
		bIsError = true
	end

	if false == bIsError then
		g_pMain:SetMyUnitSkillLevel( iSkillID, iSkillLevel )
	else
		return nil
	end
end

function Slash_sp( iSP )
	
	g_pMain:SetMyUnitSP( iSP )
	
end


function Slash_stloc()
	
	g_pMain:SendStatisticsLocLog()
	
end

function Slash_stdb()
	
	g_pMain:SendStatisticsDBLog()
	
end

function Slash_bel( level )
	
	g_pMain:BuySuperEqipLevel_LUA( level )
	
end

function Slash_ad( fAddDamage )

	pMyUnit = g_pX2Game:GetMyUnit()
	
	if pMyUnit ~= nil then
	
		pMyUnit:SetDevAddDamage( fAddDamage )
	
	end
end


function Slash_lp()						-- load picture charters

	g_pData:LoadPicCharAll_LUA()
	
end


function Slash_sld()						-- savefile loaded device

	g_pGameEdit:SaveFileLoadedDevices()

end



function Slash_uuu()						

	pUIUnitManager = g_pData:GetUIUnitManager()
	if pUIUnitManager ~= nil then
	
		pUIUnitManager:ClearAllUIUnit()
	
	end

end


function Slash_crash()						

	g_pMain:IntentionalCrash()

end


function Slash_nmp()						
		
	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
		
	g_pX2Game:SetAllNPCMPFull()

end

function Slash_sf( fSlowFactor, fSlowTime )						
		
	g_pKTDXApp:SlowFrame_LUA( fSlowFactor, fSlowTime )

end


function Slash_k( userNickName )

	g_pState:Handler_EGS_ADMIN_KICK_USER_REQ( userNickName, false )

end

function Slash_kid( userID )

	g_pState:Handler_EGS_ADMIN_KICK_USER_REQ( userID, true )

end

function Slash_cs( changeSpirit )

	g_pMain:ChangeSpirit( changeSpirit )

end

--#ifdef SERV_PC_BANG_TYPE -- PcBangType 추가되엇음
function Slash_spc( bEnable, pcBangType )

	g_pState:Handler_EGS_ADMIN_SET_PC_BANG_REQ( bEnable, pcBangType )

end
-- #endif SERV_PC_BANG_TYPE

function Slash_vp( changeRating, changeRPoint, changeAPoint )

	g_pMain:ChangeVSPoint( changeRating, changeRPoint, changeAPoint )

end



function Slash_sdm( bEnable )

 	dialogManager = g_pKTDXApp:GetDialogManager()
	dialogManager:SetShow( bEnable )

end

function Slash_suv( bEnable )

	g_pMain:SetShowUnitViewerUI( bEnable )

end


function Slash_linemap()

	if g_pX2Game ~= nil and g_pX2Game:GetWorld() ~= nil then
	
		if g_pX2Game:GetWorld():GetRenderLineMap() == true then
			g_pX2Game:GetWorld():SetRenderLineMap( false )
		else
			g_pX2Game:GetWorld():SetRenderLineMap( true )
		end
		
	else
		
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
end


function Slash_uc( cUnitClass )

	g_pMain:ChangeUnitClass( cUnitClass )
end

function Slash_uc2( UnitClassName )
	g_pMain:ModifyChangeUnitClass( UnitClassName )
end
function Slash_csd( iYear, iMonth, iDay, iHour, iMinute )	-- cash_skill_date -> csd

	g_pMain:ChangeCashSkillPointDate( iYear, iMonth, iDay, iHour, iMinute )

end

function Slash_t( iTitleID, iPeriod )

	g_pMain:GetTitleCheat( iTitleID, iPeriod )

end




function Slash_dev( bDevModeOn )

	g_pMain:SetEnabledDeveloperCheatCode( bDevModeOn )

end




function Slash_pf( iCount )

	g_pMain:IncreasePartyFeverPoint( iCount )

end


function Slash_guest( bVal )

	g_pMain:SetGuestUserMode( bVal )

end


function Slash_gsp( count )
	
	g_pGameEdit:AdminGetGuildSPoint( count )

end



function Slash_afd ( count )
	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
	end
		
	g_pGameEdit:IncreaseFieldDangerousValue ( count )
	g_pGameEdit:RequireGetDangerousValue()
end

function Slash_UnitScale( fScale, fTime )

	if g_pX2Game ~= nil and g_pX2Game:GetMyUnit() ~= nil then
		
		g_pX2Game:GetMyUnit():TransformScale_LUA( fScale, fTime )	
		
	else

		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "ERROR" )
		
	end
	
end

function Slash_tf( npcName )	-- gameedit.cpp에 예외처리 코드가 있습니다 "tf" 로 검색


	if g_pX2Game == nil then

		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	

	myUnit	= g_pX2Game:GetMyUnit()
	if myUnit == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil
	
	end


	npcName = string.upper( npcName )
	npcEnumID = string.format( "NUI_%s", npcName )

	if NPC_UNIT_ID[ npcEnumID ] == nil then
		g_pX2Game:GetMyUnit():TransformIntoUser()	
	else
		g_pX2Game:GetMyUnit():TransformIntoMonster( NPC_UNIT_ID[ npcEnumID ] )	
	end
	
end



function Slash_msc( stateName )

	g_pGameEdit:MonsterStateChange( stateName )

end



-- warp
function Slash_warp( iPosition )

	if iPosition < 15 then
		g_pMain:WarpByCommand( iPosition )
	else
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "허용되지 않은 범위입니다" )
	end
	
end


--#ifdef BATTLE_FIELD_WARP_EDIT	 // 오현빈 // 2012-08-22  // 필드 워프 치트
function Slash_fwarp( iPosition )

	if iPosition == 0 then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "루벤:1,  엘더:2~3,  베스마:4~6,  알테라:7~9,  페이타:10~12, 벨더:13~17, 하멜:18~22 샌더:23~24" )
		return nilh
	end	
	
	if iPosition < 25 then
		g_pMain:FieldWarpByCommand( iPosition )
	else
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "허용되지 않은 범위입니다" )		
	end
	
end
--#endif BATTLE_FIELD_WARP_EDIT	 // 오현빈 // 2012-08-22  // 필드 워프 치트

function Slash_pet( iType, iValue )

	g_pGameEdit:PetCheat( iType, iValue )

end

function Slash_pa( motionName )

	g_pGameEdit:PetActionCheat( motionName )

end


function Slash_usered( nickName )

	g_pGameEdit:UserEdCheat( nickName )

end

function Slash_shop( period )

	g_pGameEdit:ShopCheat( period )

end

function Slash_fov( fFov )

	g_pMain:SetProjectionFov( fFov )

end


function Slash_channel( channelcode )

	g_pGameEdit:ChannelingCodeCheat( channelcode )

end


function Slash_henir( henirreward )

	g_pGameEdit:HenirRewardCountCheat( henirreward )

end

function Slash_buff( henirbuff )

	g_pGameEdit:HenirBuffCheat( henirbuff )

end

function Slash_quest()

	g_pGameEdit:RefreshDailyQuest()

end

function Slash_em( mode )

	g_pGameEdit:EDMonitoringModeCheat( mode )

end

function Slash_wsp( wsp )

	g_pGameEdit:ElswordWSPCheat( wsp )

end

function Slash_danger()
	g_pGameEdit:RequireGetDangerousValue()
end

function Slash_ping( averagePingTime )
	g_pGameEdit:AveragePingTime( averagePingTime )
end

function Slash_obs( msg )							-- 영웅 대전 공지
	g_pState:Handler_EGS_ADMIN_NOTIFY_HERO_PVP_USER_REQ_LUA( msg, nil, -1 )
end

function Slash_obsw( serverCode, nickName, msg )	-- 영웅 대전 귓속말 공지

	if nil == serverCode or nil == nickName then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못 입력하였습니다." )
	else
		g_pState:Handler_EGS_ADMIN_NOTIFY_HERO_PVP_USER_REQ_LUA( msg, nickName, serverCode )
	end
	
end

function Slash_obsdel( serverCode, nickName )		-- 영웅 대전 유저 그룹 제거

	if nil == serverCode or nil == nickName then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못 입력하였습니다." )
	else
		g_pState:Handler_EGS_ADMIN_REMOVE_HERO_PVP_USER_REQ( serverCode, nickName )
	end

end


function Slash_obsmode( mode )		-- 옵저버 모드 켜고 끄기

	if nil == mode then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못 입력하였습니다." )
	else
		g_pState:Handler_EGS_ADMIN_OBSERVER_MODE_REQ( mode )
	end

end

-- #ifdef SERV_DELETE_GUILD_ADD_CHEAT
function Slash_dg( iGuildUID )

	g_pGameEdit:DeleteGUildAdd( iGuildUID )

end
-- #endif SERV_DELETE_GUILD_ADD_CHEAT

-- #ifdef SERV_DELETE_HENIR_RANKING
-- 헤니르 랭킹 삭제 치트 (순위용 1~100위까지)- 11.03.04 임규수(일본)
-- Delete Henir Ranking Rank 의 약자로 dhr 로 하였습니다.
-- 타입은 일일 : 0 , 한주 : 1 , 한달 : 2 ex) /dhn 1 순위

function Slash_dhr( iRankingType, iRank )

	g_pGameEdit:DeleteHenirRankingRank( iRankingType, iRank )

end

-- 헤니르 랭킹 삭제 치트 (닉네임용)- 11.03.04 임규수(일본)
-- Delete Henir Ranking Nickname 의 약자로 dhn 로 하였습니다.
-- 타입은 일일 : 0 , 한주 : 1 , 한달 : 2 ex) /dhn 1 "닉네임"

function Slash_dhn( iRankingType, nickName )

	g_pGameEdit:DeleteHenirRankingNickName( iRankingType, nickName )

end

-- 헤니르 랭킹 삭제 치트 - 12.10.30 임규수(일본)
-- Delete Henir Ranking UnitUID 의 약자로 dhu 로 하였습니다.
-- 타입은 일일 : 0 , 한주 : 1 , 한달 : 2 ex) /dhn 1 UnitUID

function Slash_dhu( iRankingType, iUnitUID )

	g_pGameEdit:DeleteHenirRankingUnitUID( iRankingType, iUnitUID )

end
-- #endif SERV_DELETE_HENIR_RANKING

-- #ifdef SERV_INVISIBLE_GM
function Slash_i()

	g_pGameEdit:ToggleInvisible()

end
-- #endif SERV_INVISIBLE_GM

--#ifdef SERV_DEVELOPER_RANDOM_OPEN_ITEM_LOG
function Slash_randomcube( itemId, KeyId, count )

	g_pGameEdit:RandomCubeOpen( itemId, KeyId, count  )

end
--#endif//SERV_DEVELOPER_RANDOM_OPEN_ITEM_LOG

--넥슨 QA 요청
function Slash_wakeup() --각성 구슬을 하나씩 채워줌

	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	g_pX2Game:AddHyperModeCount()
end

function Slash_energy() --아라의 기력 게이지를 하나씩 채워줌
	
	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	g_pX2Game:AddAraGage()
end

function Slash_canon() --청 포탄 게이지를 채워줌
	
	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	g_pX2Game:AddChungCannonBall()
end

function Slash_Scanon() --청 특스 포탄 게이지를 채워줌

	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	g_pX2Game:AddChungExtraCannonBall()
end

function Slash_monhp( setHpValue ) --해당 맵 내에 존재하는 모든 몬스터의 HP를 입력 수치로 만듬

	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	local iNumOfNpc = g_pX2Game:GetNPCUnitListSize()
	
	for i = 0, iNumOfNpc - 1 do
		local pNpc = g_pX2Game:GetNPCUnit( i )
		
		if nil ~= pNpc then
			local npcHp = pNpc:GetNowHP_LUA()
			
			if npcHp > 0 then
				pNpc:SetNowHP_LUA( setHpValue )
			end
		end
	end	
end

function Slash_monhpR( SetHpPercent ) --해당 맵 내에 존재하는 모든 몬스터의 HP를 입력 수치 %로 만듬
	
	if g_pX2Game == nil then	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil		
	end
	
	local iNumOfNpc = g_pX2Game:GetNPCUnitListSize()
	
	for i = 0, iNumOfNpc - 1 do
		local pNpc = g_pX2Game:GetNPCUnit( i )
		
		if nil ~= pNpc then
			local npcHp = pNpc:GetNowHP_LUA()
			
			if npcHp > 0 then
				local setHp = pNpc:GetMaxHP() * SetHpPercent * 0.01
				pNpc:SetNowHP_LUA( setHp )
			end
		end
	end
end

function Slash_CM( npcName, npcNum ) --몬스터를 수치만큼 소환

	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	local iNpcNum = npcNum
	if iNpcNum == nil then
		iNpcNum = 1
	end
	
	npcName = string.upper( npcName )
	npcEnumID = string.format( "NUI_%s", npcName )
	
	if NPC_UNIT_ID[ npcEnumID ] == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못된 몬스터 이름입니다." )
		return nil
		
	end
	
	
	myUnit	= g_pX2Game:GetMyUnit()
	
	if myUnit == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "나의 유닛을 찾을 수 없습니다." )
		return nil
	
	end
	
	pos	= myUnit:GetPos()
	bRight = myUnit:GetIsRight()
			
	if iNpcNum > 50 then
		iNpcNum = 50
	end
		
	for i = 0, iNpcNum do
		g_pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID[ npcEnumID ], 1, true, pos, bRight, 0, false ) 
	end
	
	g_pGameEdit:AddString( CHAT_TYPE["CT_NORMAL"], npcEnumID )
	
	g_pGameEdit:SetLastCreatedMonster(NPC_UNIT_ID[ npcEnumID ])
end

function Slash_invin( checkOnOff ) --캐릭터 무적상태, 몬스터에게 데미지는 입지만 HP는 닳지 않고, 스킬 사용 시 MP소모도 없음
	
	if g_pX2Game == nil then
	
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "게임중에만 실행 가능합니다" )
		return nil
		
	end
	
	local pUnit = g_pX2Game:GetMyUnit()
	
	if pUnit == nil then
			
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "유닛이 없습니다." )
		return nil
		
	end
	
	local check = false
	
	if checkOnOff == 0 then
		check = true
	elseif checkOnOff == 1 then
		check = false
	else
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "0,1을 입력하세요." )
		return nil
	end

	pUnit:SetInvincible_Cheat( check )
end

function Slash_nocooltime() --스킬 쿨타임을 리셋시키는 명령어, 모두 즉시 리셋

	g_pMain:SetNoCoolTime( true )
	
end

function Slash_destroy( iSelect ) -- 인벤토리 아이템 모두 삭제하는 명령어,1~8(슬롯)

	if iSelect < 1 or iSelect > 8 then
			
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "1~8까지 입력하세요." )
		return nil
		
	end
	
	g_pMain:InventoryClear( iSelect )
	
end

-- ACTIVE_KOG_GAME_PERFORMANCE_CHECK( by hcsung: 게임 성능 측정 시스템 포팅후 테스트를 위해 추가함 )
function Slash_lag( lagTime, lagType )		-- 일부러 렉 발생 시키기

	if nil == lagTime or nil == lagType then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못 입력하였습니다." )
	else
		g_pMain:OccurLag_LUA( lagTime, lagType )
	end

end

-- ACTIVE_KOG_GAME_PERFORMANCE_PING_TEST( by hcsung: 게임 성능 측정 시스템 포팅후 핑 테스트를 위해 추가함 )
function Slash_forcehost( bEnable )		-- 강제로 host 전환
	if bEnable == 0 then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "강제 host 해제" )
		g_pMain:ForceHost_LUA( bEnable )
	elseif bEnable == 1 then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "강제 host 설정" )
		g_pMain:ForceHost_LUA( bEnable )
	else
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못 입력하였습니다." )
	end
end

function Slash_switchconnect( mode )		-- 연결방식 강제 전환

	if mode == 0 then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "기본방식 연결" )
		g_pMain:SwitchConnect_LUA( mode )
	elseif mode == 1 then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "p2p로 강제 연결" )
		g_pMain:SwitchConnect_LUA( mode )
	elseif mode == 2 then
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "relay로 강제 연결" )	
		g_pMain:SwitchConnect_LUA( mode )
	else
		g_pGameEdit:AddString( CHAT_TYPE["CT_KILL"], "잘못 입력하였습니다." )
	end

end


function Slash_rps(iValue )
	g_pGameEdit:FullChargeRidingStamina( iValue )
end


function Slash_couple ( count )
	g_pGameEdit:IncreaseLoverDate_LUA ( count )
end

function Slash_EffectLog( iLevel )
	g_pGameEdit:SetEffectLogLevel( iLevel )
end