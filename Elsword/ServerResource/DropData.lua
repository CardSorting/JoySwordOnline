-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 드롭 획득 공지 여부
DropTable:SetNotifyDropItem( true )


-- 비밀 던전 드롭 아이템 공지

DropTable:AddNotifyDropItemInfo( 69005 ) -- 알테라시아 소드
DropTable:AddNotifyDropItemInfo( 69006 ) -- 알테라시아 보우
DropTable:AddNotifyDropItemInfo( 69007 ) -- 알테라시아 완드
DropTable:AddNotifyDropItemInfo( 69008 ) -- 알테라시아 시미터
DropTable:AddNotifyDropItemInfo( 69009 ) -- 알테라시아 기어
DropTable:AddNotifyDropItemInfo( 129795 ) -- 드래고닉 소드
DropTable:AddNotifyDropItemInfo( 129800 ) -- 드래고닉 보우
DropTable:AddNotifyDropItemInfo( 129805 ) -- 드래고닉 완드
DropTable:AddNotifyDropItemInfo( 129810 ) -- 드래고닉 시미터
DropTable:AddNotifyDropItemInfo( 129811 ) -- 드래고닉 기어
DropTable:AddNotifyDropItemInfo( 69000 ) -- 월리7호 강화 기계팔(엘소드)
DropTable:AddNotifyDropItemInfo( 69001 ) -- 월리7호 강화 기계팔(레나)
DropTable:AddNotifyDropItemInfo( 69002 ) -- 월리7호 강화 기계팔(아이샤)
DropTable:AddNotifyDropItemInfo( 69003 ) -- 월리7호 강화 기계팔(레이븐)
DropTable:AddNotifyDropItemInfo( 69004 ) -- 월리7호 강화 기계팔(이브)
-- 추가 김민성 10/26
DropTable:AddNotifyDropItemInfo( 130150 ) -- 강화의 부적 Lv.8
DropTable:AddNotifyDropItemInfo( 130151 ) -- 강화의 부적 Lv.9
-- 추가 김민성 11/19
DropTable:AddNotifyDropItemInfo( 160317 ) -- 로얄 블러드 큐브



-- 속성 몬스터 던전 사용 아이템 드롭 테이블(아이템, 확률)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77280	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77290	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77300	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77320	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77370	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77380	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77390	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77400	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77410	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77330	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77340	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77350	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77360	,	7	)
				
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77280	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77290	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77300	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77320	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77370	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77380	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77390	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77400	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77410	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77330	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77340	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77350	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77360	,	8	)
				
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77280	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77290	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77300	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77320	,	8	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77370	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77380	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77390	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77400	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77410	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77330	,	9	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77340	,	9	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77350	,	9	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77360	,	9	)


--[[
--에이핑크 손나은
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	135176	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	135177	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	135178	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	135179	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	135180	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],		135176	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],		135177	,	3.5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],		135178	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],		135179	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],		135180	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	135176	,	5.5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	135177	,	4	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	135178	,	5.5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	135179	,	5.5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	135180	,	5.5	)
--]]


--[[
---속성 몬스터 던전 사용 아이템 드롭 테이블
---일반
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77280	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77290	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77300	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77320	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77370	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77380	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77390	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77400	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77410	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77330	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77340	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77350	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	77360	,	3	)
--선생님 드랍
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	78835	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	78836	,	2	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	78837	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	78838	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_NORMAL"],	78839	,	5	)


--하드				
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77280	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77290	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77300	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77320	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77370	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77380	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77390	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77400	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77410	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77330	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77340	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77350	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	77360	,	3	)
--선생님 드랍
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	78835	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	78836	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	78837	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	78838	,	6	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_HARD"],	78839	,	6	)
	
--매어	
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77280	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77290	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77300	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77320	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77370	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77380	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77390	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77400	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77410	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77330	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77340	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77350	,	3	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	77360	,	3	)
--선생님 드랍
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	78835	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	78836	,	5	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	78837	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	78838	,	7	)
DropTable:AddAttribNpcSpecialDrop( DIFFICULTY_LEVEL["DL_EXPERT"],	78839	,	7	)


--]]


-- 특정 몬스터 ED대량 드롭 기능 on/off
DropTable:SetManyEDDropNpcEvent( false )	-- 해외팀 수정

-- 해외팀 제거
-- 특정 몬스터 ED대량 드롭 세팅 ( NPC_ID, 드롭ED동전량의 배수, 드롭하는ED동전갯수의 배수 )
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_DEVELOPER_D"], 2.5, 4 )		-- 배수 소숫점 3자리 까지 가능.
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER1"], 2, 3 )		-- 배수 소숫점 3자리 까지 가능.
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER2"], 2, 3 )		
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER3"], 2, 3 )		
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER4"], 2, 3 )		
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER5"], 2, 3 )		

--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_1"], 100, 10 )		
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_2"], 200, 10 )		
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_3"], 250, 10 )		
--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_4"], 300, 10 )		

--다오 대량 드랍

--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_EVENT_GOLDEN_DAO"], 3, 7 )	

---개발 레이저 대량 드랍---------

--DropTable:AddManyEDDropNpc( NPC_UNIT_ID["NUI_EVENT_TEACHER_ECHO"], 3, 7 )	