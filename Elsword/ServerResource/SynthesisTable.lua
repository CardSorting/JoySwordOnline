-- #ifdef SERV_SYNTHESIS_AVATAR

-- 옵션 개편에 따른 옵션 그룹 ID 지정
-- #ifdef SERV_CASH_ITEM_SOCKET_OPTION
--8	상의
--9	하의
--10	장갑
--11	신발
--2	무기
--6	헤어스타일

-- Offline mode: keep avatar socket groups registered and populate
-- EB_ProductAttribute so cash-locker claims expose selectable socket options.
g_pSynthesisManager:AddAvatarSocketOptionForEquipPosition( 2, 2000 )	--2	무기

g_pSynthesisManager:AddAvatarSocketOptionForEquipPosition( 8, 1000 )	--8	상의
g_pSynthesisManager:AddAvatarSocketOptionForEquipPosition( 9, 1000 )	--9	하의
g_pSynthesisManager:AddAvatarSocketOptionForEquipPosition( 10, 1000 )	--10	장갑
g_pSynthesisManager:AddAvatarSocketOptionForEquipPosition( 11, 1000 )	--11	신발
g_pSynthesisManager:AddAvatarSocketOptionForEquipPosition( 6, 1000 )	--6	헤어스타일

--#endif SERV_CASH_ITEM_SOCKET_OPTION

g_pSynthesisManager:AddSynthesisGroup(	10	,	67002660	,	6.25	)	 --	엘소드 응원단 대검(빨강)
g_pSynthesisManager:AddSynthesisGroup(	10	,	67002670	,	6.25	)	--	엘소드 응원단 대검(자주)
g_pSynthesisManager:AddSynthesisGroup(	10	,	90001150	,	6.25	)	--	엘소드 닌자 무기 (1P)
g_pSynthesisManager:AddSynthesisGroup(	10	,	90001160	,	6.25	)	--	엘소드 닌자 무기 (2P)
g_pSynthesisManager:AddSynthesisGroup(	10	,	238340	,	6.25	)	--	엘소드 알프스 류트 소드
g_pSynthesisManager:AddSynthesisGroup(	10	,	238400	,	6.25	)	--	엘소드 알프스 류트 소드(빨강)
g_pSynthesisManager:AddSynthesisGroup(	10	,	236050	,	6.25	)	--	엘소드 다크 프리스트 크로스로드
g_pSynthesisManager:AddSynthesisGroup(	10	,	236110	,	6.25	)	--	엘소드 홀리 프리스트 크로스로드
g_pSynthesisManager:AddSynthesisGroup(	10	,	67002210	,	6.25	)	--	고딕 펑크룩 소드(엘소드)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	10	,	67002220	,	6.25	)	--	고딕 펑크룩 소드(엘소드)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	10	,	231330	,	6.25	)	--	대구경 렌즈 대검(연두)
g_pSynthesisManager:AddSynthesisGroup(	10	,	231390	,	6.25	)	--	대구경 렌즈 대검(와인)
g_pSynthesisManager:AddSynthesisGroup(	10	,	219170	,	6.25	)	--	겨울 스포츠 스키점프 Ver. 소드 (보라)
g_pSynthesisManager:AddSynthesisGroup(	10	,	219240	,	6.25	)	--	겨울 스포츠 스키점프 Ver. 소드 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	10	,	223680	,	6.25	)	--	태양의 기사-기사도(황록)
g_pSynthesisManager:AddSynthesisGroup(	10	,	223740	,	6.25	)	--	태양의 기사-기사도(보라)
g_pSynthesisManager:AddSynthesisGroup(	11	,	67002661	,	6.25	)	 --	엘소드 응원단 상의(검정)
g_pSynthesisManager:AddSynthesisGroup(	11	,	67002671	,	6.25	)	--	엘소드 응원단 상의(하양)
g_pSynthesisManager:AddSynthesisGroup(	11	,	90001151	,	6.25	)	--	엘소드 닌자 상의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	11	,	90001161	,	6.25	)	--	엘소드 닌자 상의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	11	,	238350	,	6.25	)	--	엘소드 알프스 트랭거 셔츠
g_pSynthesisManager:AddSynthesisGroup(	11	,	238410	,	6.25	)	--	엘소드 알프스 트랭거 셔츠(빨강)
g_pSynthesisManager:AddSynthesisGroup(	11	,	236060	,	6.25	)	--	엘소드 다크 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	11	,	236120	,	6.25	)	--	엘소드 홀리 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	11	,	67002211	,	6.25	)	--	고딕 펑크룩 상의(엘소드)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	11	,	67002221	,	6.25	)	--	고딕 펑크룩 상의(엘소드)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	11	,	231340	,	6.25	)	--	벨더 아카데미 사진부 상의(연두)
g_pSynthesisManager:AddSynthesisGroup(	11	,	231400	,	6.25	)	--	벨더 아카데미 사진부 상의(와인)
g_pSynthesisManager:AddSynthesisGroup(	11	,	219180	,	6.25	)	--	겨울 스포츠 스키점프 복장 상의 (보라)
g_pSynthesisManager:AddSynthesisGroup(	11	,	219250	,	6.25	)	--	겨울 스포츠 스키점프 복장 상의 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	11	,	223690	,	6.25	)	--	태양의 기사 상의(황록)
g_pSynthesisManager:AddSynthesisGroup(	11	,	223750	,	6.25	)	--	태양의 기사 상의(보라)
g_pSynthesisManager:AddSynthesisGroup(	12	,	67002662	,	6.25	)	 --	엘소드 응원단 하의(검정)
g_pSynthesisManager:AddSynthesisGroup(	12	,	67002672	,	6.25	)	--	엘소드 응원단 하의(하양)
g_pSynthesisManager:AddSynthesisGroup(	12	,	90001152	,	6.25	)	--	엘소드 닌자 하의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	12	,	90001162	,	6.25	)	--	엘소드 닌자 하의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	12	,	238360	,	6.25	)	--	엘소드 알프스 레더호젠 바지
g_pSynthesisManager:AddSynthesisGroup(	12	,	238420	,	6.25	)	--	엘소드 알프스 레더호젠 바지(빨강)
g_pSynthesisManager:AddSynthesisGroup(	12	,	236070	,	6.25	)	--	엘소드 다크 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	12	,	236130	,	6.25	)	--	엘소드 홀리 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	12	,	67002212	,	6.25	)	--	고딕 펑크룩 하의(엘소드)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	12	,	67002222	,	6.25	)	--	고딕 펑크룩 하의(엘소드)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	12	,	231350	,	6.25	)	--	벨더 아카데미 사진부 하의(연두)
g_pSynthesisManager:AddSynthesisGroup(	12	,	231410	,	6.25	)	--	벨더 아카데미 사진부 하의(와인)
g_pSynthesisManager:AddSynthesisGroup(	12	,	219190	,	6.25	)	--	겨울 스포츠 스키점프 복장 하의 (보라)
g_pSynthesisManager:AddSynthesisGroup(	12	,	219260	,	6.25	)	--	겨울 스포츠 스키점프 복장 하의 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	12	,	223700	,	6.25	)	--	태양의 기사 하의(황록)
g_pSynthesisManager:AddSynthesisGroup(	12	,	223760	,	6.25	)	--	태양의 기사 하의(보라)
g_pSynthesisManager:AddSynthesisGroup(	13	,	67002663	,	6.25	)	 --	엘소드 응원단 장갑(검정)
g_pSynthesisManager:AddSynthesisGroup(	13	,	67002673	,	6.25	)	--	엘소드 응원단 장갑(갈색)
g_pSynthesisManager:AddSynthesisGroup(	13	,	90001153	,	6.25	)	--	엘소드 닌자 장갑 (1P)
g_pSynthesisManager:AddSynthesisGroup(	13	,	90001163	,	6.25	)	--	엘소드 닌자 장갑 (2P)
g_pSynthesisManager:AddSynthesisGroup(	13	,	238370	,	6.25	)	--	엘소드 알프스 목동 장갑
g_pSynthesisManager:AddSynthesisGroup(	13	,	238430	,	6.25	)	--	엘소드 알프스 목동 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	13	,	236080	,	6.25	)	--	엘소드 다크 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	13	,	236140	,	6.25	)	--	엘소드 홀리 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	13	,	67002213	,	6.25	)	--	고딕 펑크룩 장갑(엘소드)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	13	,	67002223	,	6.25	)	--	고딕 펑크룩 장갑(엘소드)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	13	,	231360	,	6.25	)	--	벨더 아카데미 사진부 장갑(연두)
g_pSynthesisManager:AddSynthesisGroup(	13	,	231420	,	6.25	)	--	벨더 아카데미 사진부 장갑(와인)
g_pSynthesisManager:AddSynthesisGroup(	13	,	219200	,	6.25	)	--	겨울 스포츠 스키점프 복장 장갑 (보라)
g_pSynthesisManager:AddSynthesisGroup(	13	,	219270	,	6.25	)	--	겨울 스포츠 스키점프 복장 장갑 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	13	,	223710	,	6.25	)	--	태양의 기사 장갑(황록)
g_pSynthesisManager:AddSynthesisGroup(	13	,	223770	,	6.25	)	--	태양의 기사 장갑(보라)
g_pSynthesisManager:AddSynthesisGroup(	14	,	67002664	,	6.25	)	 --	엘소드 응원단 신발(갈색)
g_pSynthesisManager:AddSynthesisGroup(	14	,	67002674	,	6.25	)	--	엘소드 응원단 신발(검정)
g_pSynthesisManager:AddSynthesisGroup(	14	,	90001154	,	6.25	)	--	엘소드 닌자 신발 (1P)
g_pSynthesisManager:AddSynthesisGroup(	14	,	90001164	,	6.25	)	--	엘소드 닌자 신발 (2P)
g_pSynthesisManager:AddSynthesisGroup(	14	,	238380	,	6.25	)	--	엘소드 알프스 브레드종 슈즈
g_pSynthesisManager:AddSynthesisGroup(	14	,	238440	,	6.25	)	--	엘소드 알프스 브레드종 슈즈(빨강)
g_pSynthesisManager:AddSynthesisGroup(	14	,	236090	,	6.25	)	--	엘소드 다크 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	14	,	236150	,	6.25	)	--	엘소드 홀리 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	14	,	67002214	,	6.25	)	--	고딕 펑크룩 신발(엘소드)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	14	,	67002224	,	6.25	)	--	고딕 펑크룩 신발(엘소드)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	14	,	231370	,	6.25	)	--	벨더 아카데미 사진부 신발(연두)
g_pSynthesisManager:AddSynthesisGroup(	14	,	231430	,	6.25	)	--	벨더 아카데미 사진부 신발(와인)
g_pSynthesisManager:AddSynthesisGroup(	14	,	219210	,	6.25	)	--	겨울 스포츠 스키점프 복장 신발 (보라)
g_pSynthesisManager:AddSynthesisGroup(	14	,	219280	,	6.25	)	--	겨울 스포츠 스키점프 복장 신발 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	14	,	223720	,	6.25	)	--	태양의 기사 신발(황록)
g_pSynthesisManager:AddSynthesisGroup(	14	,	223780	,	6.25	)	--	태양의 기사 신발(보라)
g_pSynthesisManager:AddSynthesisGroup(	15	,	67002665	,	6.25	)	 --	엘소드 응원단 헤어(검정)
g_pSynthesisManager:AddSynthesisGroup(	15	,	67002675	,	6.25	)	--	엘소드 응원단 헤어(갈색)
g_pSynthesisManager:AddSynthesisGroup(	15	,	90001155	,	6.25	)	--	엘소드 닌자 헤어 (1P)
g_pSynthesisManager:AddSynthesisGroup(	15	,	90001165	,	6.25	)	--	엘소드 닌자 헤어 (2P)
g_pSynthesisManager:AddSynthesisGroup(	15	,	238390	,	6.25	)	--	엘소드 알프스 쉐도우펌 헤어
g_pSynthesisManager:AddSynthesisGroup(	15	,	238450	,	6.25	)	--	엘소드 알프스 쉐도우펌 헤어(노랑)
g_pSynthesisManager:AddSynthesisGroup(	15	,	236100	,	6.25	)	--	엘소드 다크 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	15	,	236160	,	6.25	)	--	엘소드 홀리 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	15	,	67002215	,	6.25	)	--	고딕 펑크룩 헤어(엘소드)(검정)
g_pSynthesisManager:AddSynthesisGroup(	15	,	67002225	,	6.25	)	--	고딕 펑크룩 헤어(엘소드)(노랑)
g_pSynthesisManager:AddSynthesisGroup(	15	,	231380	,	6.25	)	--	벨더 아카데미 사진부 꽁지머리(빨강)
g_pSynthesisManager:AddSynthesisGroup(	15	,	231440	,	6.25	)	--	벨더 아카데미 사진부 꽁지머리(고동)
g_pSynthesisManager:AddSynthesisGroup(	15	,	219220	,	6.25	)	--	겨울 스포츠 스키점프 복장 헤어 (보라)
g_pSynthesisManager:AddSynthesisGroup(	15	,	219290	,	6.25	)	--	겨울 스포츠 스키점프 복장 헤어 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	15	,	223730	,	6.25	)	--	태양의 기사 꽁지머리(갈색)
g_pSynthesisManager:AddSynthesisGroup(	15	,	223790	,	6.25	)	--	태양의 기사 꽁지머리(상아)
g_pSynthesisManager:AddSynthesisGroup(	20	,	67002680	,	6.25	)	 --	아이샤 응원단 지팡이(빨강)
g_pSynthesisManager:AddSynthesisGroup(	20	,	67002690	,	6.25	)	--	아이샤 응원단 지팡이(파랑)
g_pSynthesisManager:AddSynthesisGroup(	20	,	90001170	,	6.25	)	--	아이샤 닌자 무기 (1P)
g_pSynthesisManager:AddSynthesisGroup(	20	,	90001180	,	6.25	)	--	아이샤 닌자 무기 (2P)
g_pSynthesisManager:AddSynthesisGroup(	20	,	238460	,	6.25	)	--	아이샤 알프스 레이디 양산
g_pSynthesisManager:AddSynthesisGroup(	20	,	238520	,	6.25	)	--	아이샤 알프스 레이디 양산(빨강)
g_pSynthesisManager:AddSynthesisGroup(	20	,	236170	,	6.25	)	--	아이샤 다크 프리스트 소울브리더
g_pSynthesisManager:AddSynthesisGroup(	20	,	236230	,	6.25	)	--	아이샤 홀리 프리스트 소울브리더
g_pSynthesisManager:AddSynthesisGroup(	20	,	67002230	,	6.25	)	--	고딕 펑크룩 지팡이(아이샤)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	20	,	67002240	,	6.25	)	--	고딕 펑크룩 지팡이(아이샤)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	20	,	231450	,	6.25	)	--	호신용 붓(연두)
g_pSynthesisManager:AddSynthesisGroup(	20	,	231510	,	6.25	)	--	호신용 붓(와인)
g_pSynthesisManager:AddSynthesisGroup(	20	,	219310	,	6.25	)	--	겨울 스포츠 스노우보드 Ver. 스태프 (보라)
g_pSynthesisManager:AddSynthesisGroup(	20	,	219380	,	6.25	)	--	겨울 스포츠 스노우보드 Ver. 스태프 (분홍)
g_pSynthesisManager:AddSynthesisGroup(	20	,	223800	,	6.25	)	--	순수의 마법사-축복의 지팡이(분홍)
g_pSynthesisManager:AddSynthesisGroup(	20	,	223860	,	6.25	)	--	순수의 마법사-축복의 지팡이(하늘)
g_pSynthesisManager:AddSynthesisGroup(	21	,	67002681	,	6.25	)	 --	아이샤 응원단 상의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	21	,	67002691	,	6.25	)	--	아이샤 응원단 상의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	21	,	90001171	,	6.25	)	--	아이샤 닌자 상의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	21	,	90001181	,	6.25	)	--	아이샤 닌자 상의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	21	,	238470	,	6.25	)	--	아이샤 알프스 드린들 셔츠
g_pSynthesisManager:AddSynthesisGroup(	21	,	238530	,	6.25	)	--	아이샤 알프스 드린들 셔츠(빨강)
g_pSynthesisManager:AddSynthesisGroup(	21	,	236180	,	6.25	)	--	아이샤 다크 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	21	,	236240	,	6.25	)	--	아이샤 홀리 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	21	,	67002231	,	6.25	)	--	고딕 펑크룩 상의(아이샤)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	21	,	67002241	,	6.25	)	--	고딕 펑크룩 상의(아이샤)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	21	,	231460	,	6.25	)	--	벨더 아카데미 미술부 상의(연두)
g_pSynthesisManager:AddSynthesisGroup(	21	,	231520	,	6.25	)	--	벨더 아카데미 미술부 상의(와인)
g_pSynthesisManager:AddSynthesisGroup(	21	,	219320	,	6.25	)	--	겨울 스포츠 스노우보드 복장 상의 (보라)
g_pSynthesisManager:AddSynthesisGroup(	21	,	219390	,	6.25	)	--	겨울 스포츠 스노우보드 복장 상의 (분홍)
g_pSynthesisManager:AddSynthesisGroup(	21	,	223810	,	6.25	)	--	순수의 마법사 상의(분홍)
g_pSynthesisManager:AddSynthesisGroup(	21	,	223870	,	6.25	)	--	순수의 마법사 상의(하늘)
g_pSynthesisManager:AddSynthesisGroup(	22	,	67002682	,	6.25	)	--	아이샤 응원단 하의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	22	,	67002692	,	6.25	)	--	아이샤 응원단 하의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	22	,	90001172	,	6.25	)	--	아이샤 닌자 하의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	22	,	90001182	,	6.25	)	--	아이샤 닌자 하의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	22	,	238480	,	6.25	)	--	아이샤 알프스 드린들 치마
g_pSynthesisManager:AddSynthesisGroup(	22	,	238540	,	6.25	)	--	아이샤 알프스 드린들 치마(빨강)
g_pSynthesisManager:AddSynthesisGroup(	22	,	236190	,	6.25	)	--	아이샤 다크 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	22	,	236250	,	6.25	)	--	아이샤 홀리 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	22	,	67002232	,	6.25	)	--	고딕 펑크룩 하의(아이샤)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	22	,	67002242	,	6.25	)	--	고딕 펑크룩 하의(아이샤)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	22	,	231470	,	6.25	)	--	벨더 아카데미 미술부 하의(연두)
g_pSynthesisManager:AddSynthesisGroup(	22	,	231530	,	6.25	)	--	벨더 아카데미 미술부 하의(와인)
g_pSynthesisManager:AddSynthesisGroup(	22	,	219330	,	6.25	)	 --	겨울 스포츠 스노우보드 복장 하의 (보라)
g_pSynthesisManager:AddSynthesisGroup(	22	,	219400	,	6.25	)	--	겨울 스포츠 스노우보드 복장 하의 (분홍)
g_pSynthesisManager:AddSynthesisGroup(	22	,	223820	,	6.25	)	--	순수의 마법사 하의(분홍)
g_pSynthesisManager:AddSynthesisGroup(	22	,	223880	,	6.25	)	--	순수의 마법사 하의(하늘)
g_pSynthesisManager:AddSynthesisGroup(	23	,	67002683	,	6.25	)	--	아이샤 응원단 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	23	,	67002693	,	6.25	)	--	아이샤 응원단 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	23	,	90001173	,	6.25	)	--	아이샤 닌자 장갑 (1P)
g_pSynthesisManager:AddSynthesisGroup(	23	,	90001183	,	6.25	)	--	아이샤 닌자 장갑 (2P)
g_pSynthesisManager:AddSynthesisGroup(	23	,	238490	,	6.25	)	--	아이샤 알프스 레이디 손장식
g_pSynthesisManager:AddSynthesisGroup(	23	,	238550	,	6.25	)	--	아이샤 알프스 레이디 손장식(빨강)
g_pSynthesisManager:AddSynthesisGroup(	23	,	236200	,	6.25	)	--	아이샤 다크 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	23	,	236260	,	6.25	)	--	아이샤 홀리 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	23	,	67002233	,	6.25	)	--	고딕 펑크룩 장갑(아이샤)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	23	,	67002243	,	6.25	)	--	고딕 펑크룩 장갑(아이샤)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	23	,	231480	,	6.25	)	 --	벨더 아카데미 미술부 장갑(연두)
g_pSynthesisManager:AddSynthesisGroup(	23	,	231540	,	6.25	)	--	벨더 아카데미 미술부 장갑(와인)
g_pSynthesisManager:AddSynthesisGroup(	23	,	219340	,	6.25	)	--	겨울 스포츠 스노우보드 복장 장갑 (보라)
g_pSynthesisManager:AddSynthesisGroup(	23	,	219410	,	6.25	)	--	겨울 스포츠 스노우보드 복장 장갑 (분홍)
g_pSynthesisManager:AddSynthesisGroup(	23	,	223830	,	6.25	)	--	순수의 마법사 장갑(분홍)
g_pSynthesisManager:AddSynthesisGroup(	23	,	223890	,	6.25	)	--	순수의 마법사 장갑(하늘)
g_pSynthesisManager:AddSynthesisGroup(	24	,	67002684	,	6.25	)	--	아이샤 응원단 신발(빨강)
g_pSynthesisManager:AddSynthesisGroup(	24	,	67002694	,	6.25	)	--	아이샤 응원단 신발(파랑)
g_pSynthesisManager:AddSynthesisGroup(	24	,	90001174	,	6.25	)	--	아이샤 닌자 신발 (1P)
g_pSynthesisManager:AddSynthesisGroup(	24	,	90001184	,	6.25	)	--	아이샤 닌자 신발 (2P)
g_pSynthesisManager:AddSynthesisGroup(	24	,	238500	,	6.25	)	--	아이샤 알프스 레이디 슈즈
g_pSynthesisManager:AddSynthesisGroup(	24	,	238560	,	6.25	)	--	아이샤 알프스 레이디 슈즈(빨강)
g_pSynthesisManager:AddSynthesisGroup(	24	,	236210	,	6.25	)	--	아이샤 다크 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	24	,	236270	,	6.25	)	--	아이샤 홀리 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	24	,	67002234	,	6.25	)	 --	고딕 펑크룩 신발(아이샤)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	24	,	67002244	,	6.25	)	--	고딕 펑크룩 신발(아이샤)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	24	,	231490	,	6.25	)	--	벨더 아카데미 미술부 신발(연두)
g_pSynthesisManager:AddSynthesisGroup(	24	,	231550	,	6.25	)	--	벨더 아카데미 미술부 신발(와인)
g_pSynthesisManager:AddSynthesisGroup(	24	,	219350	,	6.25	)	--	겨울 스포츠 스노우보드 복장 신발 (보라)
g_pSynthesisManager:AddSynthesisGroup(	24	,	219420	,	6.25	)	--	겨울 스포츠 스노우보드 복장 신발 (분홍)
g_pSynthesisManager:AddSynthesisGroup(	24	,	223840	,	6.25	)	--	순수의 마법사 신발(분홍)
g_pSynthesisManager:AddSynthesisGroup(	24	,	223900	,	6.25	)	--	순수의 마법사 신발(하늘)
g_pSynthesisManager:AddSynthesisGroup(	25	,	67002685	,	6.25	)	--	아이샤 응원단 헤어(검정)
g_pSynthesisManager:AddSynthesisGroup(	25	,	67002695	,	6.25	)	--	아이샤 응원단 헤어(갈색)
g_pSynthesisManager:AddSynthesisGroup(	25	,	90001175	,	6.25	)	--	아이샤 닌자 헤어 (1P)
g_pSynthesisManager:AddSynthesisGroup(	25	,	90001185	,	6.25	)	--	아이샤 닌자 헤어 (2P)
g_pSynthesisManager:AddSynthesisGroup(	25	,	238510	,	6.25	)	--	아이샤 알프스 큐트리본 헤어
g_pSynthesisManager:AddSynthesisGroup(	25	,	238570	,	6.25	)	--	아이샤 알프스 큐트리본 헤어(노랑)
g_pSynthesisManager:AddSynthesisGroup(	25	,	236220	,	6.25	)	 --	아이샤 다크 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	25	,	236280	,	6.25	)	--	아이샤 홀리 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	25	,	67002235	,	6.25	)	--	고딕 펑크룩 헤어(아이샤)(검정)
g_pSynthesisManager:AddSynthesisGroup(	25	,	67002245	,	6.25	)	--	고딕 펑크룩 헤어(아이샤)(노랑)
g_pSynthesisManager:AddSynthesisGroup(	25	,	231500	,	6.25	)	--	벨더 아카데미 미술부 양갈래 묶은머리(보라)
g_pSynthesisManager:AddSynthesisGroup(	25	,	231560	,	6.25	)	--	벨더 아카데미 미술부 양갈래 묶은머리(분홍)
g_pSynthesisManager:AddSynthesisGroup(	25	,	219360	,	6.25	)	--	겨울 스포츠 스노우보드 복장 헤어 (보라)
g_pSynthesisManager:AddSynthesisGroup(	25	,	219430	,	6.25	)	--	겨울 스포츠 스노우보드 복장 헤어 (분홍)
g_pSynthesisManager:AddSynthesisGroup(	25	,	223850	,	6.25	)	--	순수의 마법사 헤어(갈색)
g_pSynthesisManager:AddSynthesisGroup(	25	,	223910	,	6.25	)	--	순수의 마법사 헤어(연갈)
g_pSynthesisManager:AddSynthesisGroup(	30	,	67002700	,	6.25	)	--	레나 응원단 활(빨강)
g_pSynthesisManager:AddSynthesisGroup(	30	,	67002710	,	6.25	)	--	레나 응원단 활(파랑)
g_pSynthesisManager:AddSynthesisGroup(	30	,	90001190	,	6.25	)	--	레나 닌자 무기 (1P)
g_pSynthesisManager:AddSynthesisGroup(	30	,	90001200	,	6.25	)	--	레나 닌자 무기 (2P)
g_pSynthesisManager:AddSynthesisGroup(	30	,	238580	,	6.25	)	 --	레나 알프스 에델바이스 보우
g_pSynthesisManager:AddSynthesisGroup(	30	,	238640	,	6.25	)	--	레나 알프스 에델바이스 보우(빨강)
g_pSynthesisManager:AddSynthesisGroup(	30	,	236290	,	6.25	)	--	레나 다크 프리스트 클레릭보우
g_pSynthesisManager:AddSynthesisGroup(	30	,	236350	,	6.25	)	--	레나 홀리 프리스트 클레릭보우
g_pSynthesisManager:AddSynthesisGroup(	30	,	67002250	,	6.25	)	--	고딕 펑크룩 활(레나)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	30	,	67002260	,	6.25	)	--	고딕 펑크룩 활(레나)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	30	,	231570	,	6.25	)	--	나뭇잎 장식 목궁(연두)
g_pSynthesisManager:AddSynthesisGroup(	30	,	231630	,	6.25	)	--	나뭇잎 장식 목궁(와인)
g_pSynthesisManager:AddSynthesisGroup(	30	,	219450	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 Ver. 보우 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	30	,	219520	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 Ver. 보우 (보라)
g_pSynthesisManager:AddSynthesisGroup(	30	,	223920	,	6.25	)	--	바람의 사냥꾼-무반동 철궁(하양)
g_pSynthesisManager:AddSynthesisGroup(	30	,	223980	,	6.25	)	--	바람의 사냥꾼-무반동 철궁(청록)
g_pSynthesisManager:AddSynthesisGroup(	31	,	67002701	,	6.25	)	--	레나 응원단 상의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	31	,	67002711	,	6.25	)	--	레나 응원단 상의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	31	,	90001191	,	6.25	)	 --	레나 닌자 상의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	31	,	90001201	,	6.25	)	--	레나 닌자 상의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	31	,	238590	,	6.25	)	--	레나 알프스 드린들 셔츠
g_pSynthesisManager:AddSynthesisGroup(	31	,	238650	,	6.25	)	--	레나 알프스 드린들 셔츠(빨강)
g_pSynthesisManager:AddSynthesisGroup(	31	,	236300	,	6.25	)	--	레나 다크 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	31	,	236360	,	6.25	)	--	레나 홀리 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	31	,	67002251	,	6.25	)	--	고딕 펑크룩 상의(레나)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	31	,	67002261	,	6.25	)	--	고딕 펑크룩 상의(레나)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	31	,	231580	,	6.25	)	--	벨더 아카데미 원예부 상의(연두)
g_pSynthesisManager:AddSynthesisGroup(	31	,	231640	,	6.25	)	--	벨더 아카데미 원예부 상의(와인)
g_pSynthesisManager:AddSynthesisGroup(	31	,	219460	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 상의 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	31	,	219530	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 상의 (보라)
g_pSynthesisManager:AddSynthesisGroup(	31	,	223930	,	6.25	)	--	바람의 사냥꾼 상의(하양)
g_pSynthesisManager:AddSynthesisGroup(	31	,	223990	,	6.25	)	--	바람의 사냥꾼 상의(청록)
g_pSynthesisManager:AddSynthesisGroup(	32	,	67002702	,	6.25	)	--	레나 응원단 하의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	32	,	67002712	,	6.25	)	--	레나 응원단 하의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	32	,	90001192	,	6.25	)	--	레나 닌자 하의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	32	,	90001202	,	6.25	)	--	레나 닌자 하의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	32	,	238600	,	6.25	)	--	레나 알프스 드린들 치마
g_pSynthesisManager:AddSynthesisGroup(	32	,	238660	,	6.25	)	--	레나 알프스 드린들 치마(빨강)
g_pSynthesisManager:AddSynthesisGroup(	32	,	236310	,	6.25	)	--	레나 다크 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	32	,	236370	,	6.25	)	--	레나 홀리 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	32	,	67002252	,	6.25	)	--	고딕 펑크룩 하의(레나)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	32	,	67002262	,	6.25	)	--	고딕 펑크룩 하의(레나)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	32	,	231590	,	6.25	)	--	벨더 아카데미 원예부 하의(연두)
g_pSynthesisManager:AddSynthesisGroup(	32	,	231650	,	6.25	)	--	벨더 아카데미 원예부 하의(와인)
g_pSynthesisManager:AddSynthesisGroup(	32	,	219470	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 하의 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	32	,	219540	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 하의 (보라)
g_pSynthesisManager:AddSynthesisGroup(	32	,	223940	,	6.25	)	--	바람의 사냥꾼 하의(하양)
g_pSynthesisManager:AddSynthesisGroup(	32	,	224000	,	6.25	)	--	바람의 사냥꾼 하의(청록)
g_pSynthesisManager:AddSynthesisGroup(	33	,	67002703	,	6.25	)	 --	레나 응원단 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	33	,	67002713	,	6.25	)	--	레나 응원단 장갑(파랑)
g_pSynthesisManager:AddSynthesisGroup(	33	,	90001193	,	6.25	)	--	레나 닌자 장갑 (1P)
g_pSynthesisManager:AddSynthesisGroup(	33	,	90001203	,	6.25	)	--	레나 닌자 장갑 (2P)
g_pSynthesisManager:AddSynthesisGroup(	33	,	238610	,	6.25	)	--	레나 알프스 레이디 손장식
g_pSynthesisManager:AddSynthesisGroup(	33	,	238670	,	6.25	)	--	레나 알프스 레이디 손장식(빨강)
g_pSynthesisManager:AddSynthesisGroup(	33	,	236320	,	6.25	)	--	레나 다크 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	33	,	236380	,	6.25	)	--	레나 홀리 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	33	,	67002253	,	6.25	)	--	고딕 펑크룩 장갑(레나)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	33	,	67002263	,	6.25	)	--	고딕 펑크룩 장갑(레나)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	33	,	231600	,	6.25	)	--	벨더 아카데미 원예부 장갑(연두)
g_pSynthesisManager:AddSynthesisGroup(	33	,	231660	,	6.25	)	--	벨더 아카데미 원예부 장갑(와인)
g_pSynthesisManager:AddSynthesisGroup(	33	,	219480	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 장갑 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	33	,	219550	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 장갑 (보라)
g_pSynthesisManager:AddSynthesisGroup(	33	,	223950	,	6.25	)	 --	바람의 사냥꾼 장갑(하양)
g_pSynthesisManager:AddSynthesisGroup(	33	,	224010	,	6.25	)	--	바람의 사냥꾼 장갑(청록)
g_pSynthesisManager:AddSynthesisGroup(	34	,	67002704	,	6.25	)	--	레나 응원단 신발(빨강)
g_pSynthesisManager:AddSynthesisGroup(	34	,	67002714	,	6.25	)	--	레나 응원단 신발(파랑)
g_pSynthesisManager:AddSynthesisGroup(	34	,	90001194	,	6.25	)	--	레나 닌자 신발 (1P)
g_pSynthesisManager:AddSynthesisGroup(	34	,	90001204	,	6.25	)	--	레나 닌자 신발 (2P)
g_pSynthesisManager:AddSynthesisGroup(	34	,	238620	,	6.25	)	--	레나 알프스 레이디 슈즈
g_pSynthesisManager:AddSynthesisGroup(	34	,	238680	,	6.25	)	--	레나 알프스 레이디 슈즈(빨강)
g_pSynthesisManager:AddSynthesisGroup(	34	,	236330	,	6.25	)	--	레나 다크 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	34	,	236390	,	6.25	)	--	레나 홀리 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	34	,	67002254	,	6.25	)	--	고딕 펑크룩 신발(레나)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	34	,	67002264	,	6.25	)	--	고딕 펑크룩 신발(레나)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	34	,	231610	,	6.25	)	--	벨더 아카데미 원예부 신발(연두)
g_pSynthesisManager:AddSynthesisGroup(	34	,	231670	,	6.25	)	--	벨더 아카데미 원예부 신발(와인)
g_pSynthesisManager:AddSynthesisGroup(	34	,	219490	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 신발 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	34	,	219560	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 신발 (보라)
g_pSynthesisManager:AddSynthesisGroup(	34	,	223960	,	6.25	)	--	바람의 사냥꾼 신발(하양)
g_pSynthesisManager:AddSynthesisGroup(	34	,	224020	,	6.25	)	--	바람의 사냥꾼 신발(청록)
g_pSynthesisManager:AddSynthesisGroup(	35	,	67002705	,	6.25	)	--	레나 응원단 헤어(검정)
g_pSynthesisManager:AddSynthesisGroup(	35	,	67002715	,	6.25	)	--	레나 응원단 헤어(갈색)
g_pSynthesisManager:AddSynthesisGroup(	35	,	90001195	,	6.25	)	--	레나 닌자 헤어 (1P)
g_pSynthesisManager:AddSynthesisGroup(	35	,	90001205	,	6.25	)	--	레나 닌자 헤어 (2P)
g_pSynthesisManager:AddSynthesisGroup(	35	,	238630	,	6.25	)	--	레나 알프스 보닛 헤어
g_pSynthesisManager:AddSynthesisGroup(	35	,	238690	,	6.25	)	--	레나 알프스 보닛 헤어(빨강)
g_pSynthesisManager:AddSynthesisGroup(	35	,	236340	,	6.25	)	--	레나 다크 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	35	,	236400	,	6.25	)	--	레나 홀리 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	35	,	67002255	,	6.25	)	--	고딕 펑크룩 헤어(레나)(검정)
g_pSynthesisManager:AddSynthesisGroup(	35	,	67002265	,	6.25	)	--	고딕 펑크룩 헤어(레나)(노랑)
g_pSynthesisManager:AddSynthesisGroup(	35	,	231620	,	6.25	)	--	벨더 아카데미 원예부 양갈래머리(연두)
g_pSynthesisManager:AddSynthesisGroup(	35	,	231680	,	6.25	)	--	벨더 아카데미 원예부 양갈래머리(갈색)
g_pSynthesisManager:AddSynthesisGroup(	35	,	219500	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 헤어 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	35	,	219570	,	6.25	)	--	겨울 스포츠 스피드 스케이팅 복장 헤어 (보라)
g_pSynthesisManager:AddSynthesisGroup(	35	,	223970	,	6.25	)	--	바람의 사냥꾼 틀어올린 머리(검정)
g_pSynthesisManager:AddSynthesisGroup(	35	,	224030	,	6.25	)	--	바람의 사냥꾼 틀어올린 머리(노랑)
g_pSynthesisManager:AddSynthesisGroup(	40	,	67002720	,	6.25	)	--	레이븐 응원단 장검(빨강)
g_pSynthesisManager:AddSynthesisGroup(	40	,	67002730	,	6.25	)	--	레이븐 응원단 장검(자주)
g_pSynthesisManager:AddSynthesisGroup(	40	,	90001210	,	6.25	)	--	레이븐 닌자 무기 (1P)
g_pSynthesisManager:AddSynthesisGroup(	40	,	90001220	,	6.25	)	--	레이븐 닌자 무기 (2P)
g_pSynthesisManager:AddSynthesisGroup(	40	,	238700	,	6.25	)	--	레이븐 알프스 류트 블레이드
g_pSynthesisManager:AddSynthesisGroup(	40	,	238760	,	6.25	)	--	레이븐 알프스 류트 블레이드(빨강)
g_pSynthesisManager:AddSynthesisGroup(	40	,	236410	,	6.25	)	--	레이븐 다크 프리스트 레이지커터
g_pSynthesisManager:AddSynthesisGroup(	40	,	236470	,	6.25	)	--	레이븐 홀리 프리스트 레이지커터
g_pSynthesisManager:AddSynthesisGroup(	40	,	67002270	,	6.25	)	--	고딕 펑크룩 블레이드(레이븐)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	40	,	67002280	,	6.25	)	--	고딕 펑크룩 블레이드(레이븐)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	40	,	231690	,	6.25	)	--	깨우침의 목도(연두)
g_pSynthesisManager:AddSynthesisGroup(	40	,	231750	,	6.25	)	--	깨우침의 목도(와인)
g_pSynthesisManager:AddSynthesisGroup(	40	,	219590	,	6.25	)	--	겨울 스포츠 아이스 하키 Ver. 블레이드 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	40	,	219660	,	6.25	)	--	겨울 스포츠 아이스 하키 Ver. 블레이드 (주황)
g_pSynthesisManager:AddSynthesisGroup(	40	,	224040	,	6.25	)	--	사풍의 자객-신월의 암살도(파랑)
g_pSynthesisManager:AddSynthesisGroup(	40	,	224100	,	6.25	)	--	사풍의 자객-신월의 암살도(빨강)
g_pSynthesisManager:AddSynthesisGroup(	41	,	67002721	,	6.25	)	--	레이븐 응원단 상의(검정)
g_pSynthesisManager:AddSynthesisGroup(	41	,	67002731	,	6.25	)	--	레이븐 응원단 상의(하양)
g_pSynthesisManager:AddSynthesisGroup(	41	,	90001211	,	6.25	)	--	레이븐 닌자 상의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	41	,	90001221	,	6.25	)	--	레이븐 닌자 상의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	41	,	238710	,	6.25	)	--	레이븐 알프스 트랭거 셔츠
g_pSynthesisManager:AddSynthesisGroup(	41	,	238770	,	6.25	)	--	레이븐 알프스 트랭거 셔츠(빨강)
g_pSynthesisManager:AddSynthesisGroup(	41	,	236420	,	6.25	)	--	레이븐 다크 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	41	,	236480	,	6.25	)	--	레이븐 홀리 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	41	,	67002271	,	6.25	)	--	고딕 펑크룩 상의(레이븐)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	41	,	67002281	,	6.25	)	--	고딕 펑크룩 상의(레이븐)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	41	,	231700	,	6.25	)	--	벨더 아카데미 선도부 상의(연두)
g_pSynthesisManager:AddSynthesisGroup(	41	,	231760	,	6.25	)	--	벨더 아카데미 선도부 상의(와인)
g_pSynthesisManager:AddSynthesisGroup(	41	,	219600	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 상의 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	41	,	219670	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 상의 (주황)
g_pSynthesisManager:AddSynthesisGroup(	41	,	224050	,	6.25	)	--	사풍의 자객 상의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	41	,	224110	,	6.25	)	--	사풍의 자객 상의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	42	,	67002722	,	6.25	)	--	레이븐 응원단 하의(검정)
g_pSynthesisManager:AddSynthesisGroup(	42	,	67002732	,	6.25	)	--	레이븐 응원단 하의(하양)
g_pSynthesisManager:AddSynthesisGroup(	42	,	90001212	,	6.25	)	--	레이븐 닌자 하의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	42	,	90001222	,	6.25	)	--	레이븐 닌자 하의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	42	,	238720	,	6.25	)	--	레이븐 알프스 레더호젠 바지
g_pSynthesisManager:AddSynthesisGroup(	42	,	238780	,	6.25	)	--	레이븐 알프스 레더호젠 바지(빨강)
g_pSynthesisManager:AddSynthesisGroup(	42	,	236430	,	6.25	)	--	레이븐 다크 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	42	,	236490	,	6.25	)	--	레이븐 홀리 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	42	,	67002272	,	6.25	)	--	고딕 펑크룩 하의(레이븐)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	42	,	67002282	,	6.25	)	--	고딕 펑크룩 하의(레이븐)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	42	,	231710	,	6.25	)	--	벨더 아카데미 선도부 하의(연두)
g_pSynthesisManager:AddSynthesisGroup(	42	,	231770	,	6.25	)	--	벨더 아카데미 선도부 하의(와인)
g_pSynthesisManager:AddSynthesisGroup(	42	,	219610	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 하의 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	42	,	219680	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 하의 (주황)
g_pSynthesisManager:AddSynthesisGroup(	42	,	224060	,	6.25	)	--	사풍의 자객 하의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	42	,	224120	,	6.25	)	--	사풍의 자객 하의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	43	,	67002723	,	6.25	)	--	레이븐 응원단 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	43	,	67002733	,	6.25	)	--	레이븐 응원단 장갑(자주)
g_pSynthesisManager:AddSynthesisGroup(	43	,	90001213	,	6.25	)	--	레이븐 닌자 장갑 (1P)
g_pSynthesisManager:AddSynthesisGroup(	43	,	90001223	,	6.25	)	--	레이븐 닌자 장갑 (2P)
g_pSynthesisManager:AddSynthesisGroup(	43	,	238730	,	6.25	)	--	레이븐 알프스 목동 장갑
g_pSynthesisManager:AddSynthesisGroup(	43	,	238790	,	6.25	)	--	레이븐 알프스 목동 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	43	,	236440	,	6.25	)	--	레이븐 다크 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	43	,	236500	,	6.25	)	--	레이븐 홀리 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	43	,	67002273	,	6.25	)	--	고딕 펑크룩 장갑(레이븐)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	43	,	67002283	,	6.25	)	--	고딕 펑크룩 장갑(레이븐)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	43	,	231720	,	6.25	)	--	벨더 아카데미 선도부 장갑(연두)
g_pSynthesisManager:AddSynthesisGroup(	43	,	231780	,	6.25	)	--	벨더 아카데미 선도부 장갑(와인)
g_pSynthesisManager:AddSynthesisGroup(	43	,	219620	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 장갑 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	43	,	219690	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 장갑 (주황)
g_pSynthesisManager:AddSynthesisGroup(	43	,	224070	,	6.25	)	--	사풍의 자객 장갑(파랑)
g_pSynthesisManager:AddSynthesisGroup(	43	,	224130	,	6.25	)	--	사풍의 자객 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	44	,	67002724	,	6.25	)	--	레이븐 응원단 신발(갈색)
g_pSynthesisManager:AddSynthesisGroup(	44	,	67002734	,	6.25	)	--	레이븐 응원단 신발(검정)
g_pSynthesisManager:AddSynthesisGroup(	44	,	90001214	,	6.25	)	--	레이븐 닌자 신발 (1P)
g_pSynthesisManager:AddSynthesisGroup(	44	,	90001224	,	6.25	)	--	레이븐 닌자 신발 (2P)
g_pSynthesisManager:AddSynthesisGroup(	44	,	238740	,	6.25	)	--	레이븐 알프스 브레드종 신발
g_pSynthesisManager:AddSynthesisGroup(	44	,	238800	,	6.25	)	--	레이븐 알프스 브레드종 신발(빨강)
g_pSynthesisManager:AddSynthesisGroup(	44	,	236450	,	6.25	)	--	레이븐 다크 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	44	,	236510	,	6.25	)	--	레이븐 홀리 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	44	,	67002274	,	6.25	)	--	고딕 펑크룩 신발(레이븐)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	44	,	67002284	,	6.25	)	--	고딕 펑크룩 신발(레이븐)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	44	,	231730	,	6.25	)	--	벨더 아카데미 선도부 신발(연두)
g_pSynthesisManager:AddSynthesisGroup(	44	,	231790	,	6.25	)	--	벨더 아카데미 선도부 신발(와인)
g_pSynthesisManager:AddSynthesisGroup(	44	,	219630	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 신발 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	44	,	219700	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 신발 (주황)
g_pSynthesisManager:AddSynthesisGroup(	44	,	224080	,	6.25	)	--	사풍의 자객 신발(파랑)
g_pSynthesisManager:AddSynthesisGroup(	44	,	224140	,	6.25	)	--	사풍의 자객 신발(빨강)
g_pSynthesisManager:AddSynthesisGroup(	45	,	67002725	,	6.25	)	--	레이븐 응원단 헤어(검정)
g_pSynthesisManager:AddSynthesisGroup(	45	,	67002735	,	6.25	)	--	레이븐 응원단 헤어(갈색)
g_pSynthesisManager:AddSynthesisGroup(	45	,	90001215	,	6.25	)	--	레이븐 닌자 헤어 (1P)
g_pSynthesisManager:AddSynthesisGroup(	45	,	90001225	,	6.25	)	--	레이븐 닌자 헤어 (2P)
g_pSynthesisManager:AddSynthesisGroup(	45	,	238750	,	6.25	)	--	레이븐 알프스 뉴스보이 캡
g_pSynthesisManager:AddSynthesisGroup(	45	,	238810	,	6.25	)	--	레이븐 알프스 뉴스보이 캡(빨강)
g_pSynthesisManager:AddSynthesisGroup(	45	,	236460	,	6.25	)	--	레이븐 다크 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	45	,	236520	,	6.25	)	--	레이븐 홀리 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	45	,	67002275	,	6.25	)	--	고딕 펑크룩 헤어(레이븐)(검정)
g_pSynthesisManager:AddSynthesisGroup(	45	,	67002285	,	6.25	)	--	고딕 펑크룩 헤어(레이븐)(노랑)
g_pSynthesisManager:AddSynthesisGroup(	45	,	231740	,	6.25	)	--	벨더 아카데미 선도부 닭벼슬머리(갈색)
g_pSynthesisManager:AddSynthesisGroup(	45	,	231800	,	6.25	)	--	벨더 아카데미 선도부 닭벼슬머리(노랑)
g_pSynthesisManager:AddSynthesisGroup(	45	,	219640	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 헤어 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	45	,	219710	,	6.25	)	--	겨울 스포츠 아이스 하키 복장 헤어 (주황)
g_pSynthesisManager:AddSynthesisGroup(	45	,	224090	,	6.25	)	--	사풍의 자객 묶은머리(파랑)
g_pSynthesisManager:AddSynthesisGroup(	45	,	224150	,	6.25	)	--	사풍의 자객 묶은머리(적갈)
g_pSynthesisManager:AddSynthesisGroup(	50	,	67002740	,	6.25	)	--	이브 응원단 기어(빨강)
g_pSynthesisManager:AddSynthesisGroup(	50	,	67002750	,	6.25	)	--	이브 응원단 기어(파랑)
g_pSynthesisManager:AddSynthesisGroup(	50	,	90001230	,	6.25	)	--	이브 닌자 무기 (1P)
g_pSynthesisManager:AddSynthesisGroup(	50	,	90001240	,	6.25	)	--	이브 닌자 무기 (2P)
g_pSynthesisManager:AddSynthesisGroup(	50	,	238820	,	6.25	)	--	이브 알프스 플라워 바스켓 기어
g_pSynthesisManager:AddSynthesisGroup(	50	,	238880	,	6.25	)	--	이브 알프스 플라워 바스켓 기어(빨강)
g_pSynthesisManager:AddSynthesisGroup(	50	,	236530	,	6.25	)	--	이브 다크 프리스트 저지먼트
g_pSynthesisManager:AddSynthesisGroup(	50	,	236590	,	6.25	)	--	이브 홀리 프리스트 저지먼트
g_pSynthesisManager:AddSynthesisGroup(	50	,	67002290	,	6.25	)	--	고딕 펑크룩 기어(이브)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	50	,	67002300	,	6.25	)	--	고딕 펑크룩 기어(이브)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	50	,	231810	,	6.25	)	--	첨단 방독 기어(하양)
g_pSynthesisManager:AddSynthesisGroup(	50	,	231870	,	6.25	)	--	첨단 방독 기어(와인)
g_pSynthesisManager:AddSynthesisGroup(	50	,	219730	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 Ver. 기어 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	50	,	219800	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 Ver. 기어 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	50	,	224160	,	6.25	)	--	천공의 성직자-심판의 성배(파랑)
g_pSynthesisManager:AddSynthesisGroup(	50	,	224220	,	6.25	)	--	천공의 성직자-심판의 성배(초록)
g_pSynthesisManager:AddSynthesisGroup(	51	,	67002741	,	6.25	)	--	이브 응원단 상의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	51	,	67002751	,	6.25	)	--	이브 응원단 상의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	51	,	90001231	,	6.25	)	--	이브 닌자 상의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	51	,	90001241	,	6.25	)	--	이브 닌자 상의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	51	,	238830	,	6.25	)	--	이브 알프스 드린들 상의
g_pSynthesisManager:AddSynthesisGroup(	51	,	238890	,	6.25	)	--	이브 알프스 드린들 상의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	51	,	236540	,	6.25	)	--	이브 다크 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	51	,	236600	,	6.25	)	--	이브 홀리 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	51	,	67002291	,	6.25	)	--	고딕 펑크룩 상의(이브)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	51	,	67002301	,	6.25	)	--	고딕 펑크룩 상의(이브)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	51	,	231820	,	6.25	)	--	벨더 아카데미 과학부 상의(연두)
g_pSynthesisManager:AddSynthesisGroup(	51	,	231880	,	6.25	)	--	벨더 아카데미 과학부 상의(와인)
g_pSynthesisManager:AddSynthesisGroup(	51	,	219740	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 상의 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	51	,	219810	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 상의 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	51	,	224170	,	6.25	)	--	천공의 성직자 상의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	51	,	224230	,	6.25	)	--	천공의 성직자 상의(초록)
g_pSynthesisManager:AddSynthesisGroup(	52	,	67002742	,	6.25	)	--	이브 응원단 하의(빨강)
g_pSynthesisManager:AddSynthesisGroup(	52	,	67002752	,	6.25	)	--	이브 응원단 하의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	52	,	90001232	,	6.25	)	--	이브 닌자 하의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	52	,	90001242	,	6.25	)	--	이브 닌자 하의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	52	,	238840	,	6.25	)	--	이브 알프스 드린들 치마
g_pSynthesisManager:AddSynthesisGroup(	52	,	238900	,	6.25	)	--	이브 알프스 드린들 치마(빨강)
g_pSynthesisManager:AddSynthesisGroup(	52	,	236550	,	6.25	)	--	이브 다크 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	52	,	236610	,	6.25	)	--	이브 홀리 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	52	,	67002292	,	6.25	)	--	고딕 펑크룩 하의(이브)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	52	,	67002302	,	6.25	)	--	고딕 펑크룩 하의(이브)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	52	,	231830	,	6.25	)	--	벨더 아카데미 과학부 하의(연두)
g_pSynthesisManager:AddSynthesisGroup(	52	,	231890	,	6.25	)	--	벨더 아카데미 과학부 하의(와인)
g_pSynthesisManager:AddSynthesisGroup(	52	,	219750	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 하의 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	52	,	219820	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 하의 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	52	,	224180	,	6.25	)	--	천공의 성직자 하의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	52	,	224240	,	6.25	)	--	천공의 성직자 하의(초록)
g_pSynthesisManager:AddSynthesisGroup(	53	,	67002743	,	6.25	)	--	이브 응원단 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	53	,	67002753	,	6.25	)	--	이브 응원단 장갑(파랑)
g_pSynthesisManager:AddSynthesisGroup(	53	,	90001233	,	6.25	)	--	이브 닌자 장갑 (1P)
g_pSynthesisManager:AddSynthesisGroup(	53	,	90001243	,	6.25	)	--	이브 닌자 장갑 (2P)
g_pSynthesisManager:AddSynthesisGroup(	53	,	238850	,	6.25	)	--	이브 알프스 레이디 손장식
g_pSynthesisManager:AddSynthesisGroup(	53	,	238910	,	6.25	)	--	이브 알프스 레이디 손장식(빨강)
g_pSynthesisManager:AddSynthesisGroup(	53	,	236560	,	6.25	)	--	이브 다크 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	53	,	236620	,	6.25	)	--	이브 홀리 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	53	,	67002293	,	6.25	)	--	고딕 펑크룩 장갑(이브)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	53	,	67002303	,	6.25	)	--	고딕 펑크룩 장갑(이브)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	53	,	231840	,	6.25	)	--	벨더 아카데미 과학부 장갑(연두)
g_pSynthesisManager:AddSynthesisGroup(	53	,	231900	,	6.25	)	--	벨더 아카데미 과학부 장갑(와인)
g_pSynthesisManager:AddSynthesisGroup(	53	,	219760	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 장갑 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	53	,	219830	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 장갑 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	53	,	224190	,	6.25	)	--	천공의 성직자 장갑(파랑)
g_pSynthesisManager:AddSynthesisGroup(	53	,	224250	,	6.25	)	--	천공의 성직자 장갑(초록)
g_pSynthesisManager:AddSynthesisGroup(	54	,	67002744	,	6.25	)	--	이브 응원단 신발(빨강)
g_pSynthesisManager:AddSynthesisGroup(	54	,	67002754	,	6.25	)	--	이브 응원단 신발(파랑)
g_pSynthesisManager:AddSynthesisGroup(	54	,	90001234	,	6.25	)	--	이브 닌자 신발 (1P)
g_pSynthesisManager:AddSynthesisGroup(	54	,	90001244	,	6.25	)	--	이브 닌자 신발 (2P)
g_pSynthesisManager:AddSynthesisGroup(	54	,	238860	,	6.25	)	--	이브 알프스 레이디 슈즈
g_pSynthesisManager:AddSynthesisGroup(	54	,	238920	,	6.25	)	--	이브 알프스 레이디 슈즈(빨강)
g_pSynthesisManager:AddSynthesisGroup(	54	,	236570	,	6.25	)	--	이브 다크 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	54	,	236630	,	6.25	)	--	이브 홀리 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	54	,	67002294	,	6.25	)	--	고딕 펑크룩 신발(이브)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	54	,	67002304	,	6.25	)	--	고딕 펑크룩 신발(이브)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	54	,	231850	,	6.25	)	--	벨더 아카데미 과학부 신발(연두)
g_pSynthesisManager:AddSynthesisGroup(	54	,	231910	,	6.25	)	--	벨더 아카데미 과학부 신발(와인)
g_pSynthesisManager:AddSynthesisGroup(	54	,	219770	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 신발 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	54	,	219840	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 신발 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	54	,	224200	,	6.25	)	--	천공의 성직자 신발(파랑)
g_pSynthesisManager:AddSynthesisGroup(	54	,	224260	,	6.25	)	--	천공의 성직자 신발(초록)
g_pSynthesisManager:AddSynthesisGroup(	55	,	67002745	,	6.25	)	--	이브 응원단 헤어(빨강)
g_pSynthesisManager:AddSynthesisGroup(	55	,	67002755	,	6.25	)	--	이브 응원단 헤어(파랑)
g_pSynthesisManager:AddSynthesisGroup(	55	,	90001235	,	6.25	)	--	이브 닌자 헤어 (1P)
g_pSynthesisManager:AddSynthesisGroup(	55	,	90001245	,	6.25	)	--	이브 닌자 헤어 (2P)
g_pSynthesisManager:AddSynthesisGroup(	55	,	238870	,	6.25	)	--	이브 알프스 픽처 헤어
g_pSynthesisManager:AddSynthesisGroup(	55	,	238930	,	6.25	)	--	이브 알프스 픽처 헤어(빨강)
g_pSynthesisManager:AddSynthesisGroup(	55	,	236580	,	6.25	)	--	이브 다크 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	55	,	236640	,	6.25	)	--	이브 홀리 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	55	,	67002295	,	6.25	)	--	고딕 펑크룩 헤어(이브)(검정)
g_pSynthesisManager:AddSynthesisGroup(	55	,	67002305	,	6.25	)	--	고딕 펑크룩 헤어(이브)(노랑)
g_pSynthesisManager:AddSynthesisGroup(	55	,	231860	,	6.25	)	--	벨더 아카데미 과학부 꽁지머리(연두)
g_pSynthesisManager:AddSynthesisGroup(	55	,	231920	,	6.25	)	--	벨더 아카데미 과학부 꽁지머리(와인)
g_pSynthesisManager:AddSynthesisGroup(	55	,	219780	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 헤어 (파랑)
g_pSynthesisManager:AddSynthesisGroup(	55	,	219850	,	6.25	)	--	겨울 스포츠 피겨 스케이팅 복장 헤어 (빨강)
g_pSynthesisManager:AddSynthesisGroup(	55	,	224210	,	6.25	)	--	천공의 성직자 긴생머리(하양)
g_pSynthesisManager:AddSynthesisGroup(	55	,	224270	,	6.25	)	--	천공의 성직자 긴생머리(검정)
g_pSynthesisManager:AddSynthesisGroup(	60	,	67002760	,	7.2	)	--	청 응원단 철포(빨강)
g_pSynthesisManager:AddSynthesisGroup(	60	,	67002770	,	7.2	)	--	청 응원단 철포(자주)
g_pSynthesisManager:AddSynthesisGroup(	60	,	90001250	,	7.2	)	--	청 닌자 무기 (1P)
g_pSynthesisManager:AddSynthesisGroup(	60	,	90001260	,	7.2	)	--	청 닌자 무기 (2P)
g_pSynthesisManager:AddSynthesisGroup(	60	,	238940	,	7.2	)	--	청 알프스 트래블링 백 캐논
g_pSynthesisManager:AddSynthesisGroup(	60	,	239060	,	7.2	)	--	청 알프스 트래블링 백 캐논(빨강)
g_pSynthesisManager:AddSynthesisGroup(	60	,	236650	,	7.2	)	--	청 다크 프리스트 디스트로이어
g_pSynthesisManager:AddSynthesisGroup(	60	,	236710	,	7.2	)	--	청 홀리 프리스트 디스트로이어
g_pSynthesisManager:AddSynthesisGroup(	60	,	67002310	,	7.2	)	--	고딕 펑크룩 철포(청)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	60	,	67002320	,	7.2	)	--	고딕 펑크룩 철포(청)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	60	,	231930	,	7	)	--	첼로 캐논(연두)
g_pSynthesisManager:AddSynthesisGroup(	60	,	231990	,	7	)	--	첼로 캐논(와인)
g_pSynthesisManager:AddSynthesisGroup(	60	,	67002630	,	7	)	--	대양의 포병장교-무적의 함포(하양)
g_pSynthesisManager:AddSynthesisGroup(	60	,	67002640	,	7	)	--	대양의 포병장교-무적의 함포(파랑)
g_pSynthesisManager:AddSynthesisGroup(	61	,	67002761	,	7.2	)	--	청 응원단 상의(검정)
g_pSynthesisManager:AddSynthesisGroup(	61	,	67002771	,	7.2	)	--	청 응원단 상의(하양)
g_pSynthesisManager:AddSynthesisGroup(	61	,	90001251	,	7.2	)	--	청 닌자 상의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	61	,	90001261	,	7.2	)	--	청 닌자 상의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	61	,	238950	,	7.2	)	--	청 알프스 목동 조끼 셔츠
g_pSynthesisManager:AddSynthesisGroup(	61	,	239070	,	7.2	)	--	청 알프스 목동 조끼 셔츠(빨강)
g_pSynthesisManager:AddSynthesisGroup(	61	,	236660	,	7.2	)	--	청 다크 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	61	,	236720	,	7.2	)	--	청 홀리 프리스트 상의
g_pSynthesisManager:AddSynthesisGroup(	61	,	67002311	,	7.2	)	--	고딕 펑크룩 상의(청)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	61	,	67002321	,	7.2	)	--	고딕 펑크룩 상의(청)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	61	,	231940	,	7	)	--	벨더 아카데미 관현악부 상의(연두)
g_pSynthesisManager:AddSynthesisGroup(	61	,	232000	,	7	)	--	벨더 아카데미 관현악부 상의(와인)
g_pSynthesisManager:AddSynthesisGroup(	61	,	67002631	,	7	)	--	대양의 포병장교 상의(하양)
g_pSynthesisManager:AddSynthesisGroup(	61	,	67002641	,	7	)	--	대양의 포병장교 상의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	62	,	67002762	,	7.2	)	--	청 응원단 하의(검정)
g_pSynthesisManager:AddSynthesisGroup(	62	,	67002772	,	7.2	)	--	청 응원단 하의(하양)
g_pSynthesisManager:AddSynthesisGroup(	62	,	90001252	,	7.2	)	--	청 닌자 하의 (1P)
g_pSynthesisManager:AddSynthesisGroup(	62	,	90001262	,	7.2	)	--	청 닌자 하의 (2P)
g_pSynthesisManager:AddSynthesisGroup(	62	,	238960	,	7.2	)	--	청 알프스 목동 체크무늬 바지
g_pSynthesisManager:AddSynthesisGroup(	62	,	239080	,	7.2	)	--	청 알프스 목동 체크무늬 바지(빨강)
g_pSynthesisManager:AddSynthesisGroup(	62	,	236670	,	7.2	)	--	청 다크 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	62	,	236730	,	7.2	)	--	청 홀리 프리스트 하의
g_pSynthesisManager:AddSynthesisGroup(	62	,	67002312	,	7.2	)	--	고딕 펑크룩 하의(청)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	62	,	67002322	,	7.2	)	--	고딕 펑크룩 하의(청)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	62	,	231950	,	7	)	--	벨더 아카데미 관현악부 하의(연두)
g_pSynthesisManager:AddSynthesisGroup(	62	,	232010	,	7	)	--	벨더 아카데미 관현악부 하의(와인)
g_pSynthesisManager:AddSynthesisGroup(	62	,	67002632	,	7	)	--	대양의 포병장교 하의(하양)
g_pSynthesisManager:AddSynthesisGroup(	62	,	67002642	,	7	)	--	대양의 포병장교 하의(파랑)
g_pSynthesisManager:AddSynthesisGroup(	63	,	67002763	,	7.2	)	--	청 응원단 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	63	,	67002773	,	7.2	)	--	청 응원단 장갑(자주)
g_pSynthesisManager:AddSynthesisGroup(	63	,	90001253	,	7.2	)	--	청 닌자 장갑 (1P)
g_pSynthesisManager:AddSynthesisGroup(	63	,	90001263	,	7.2	)	--	청 닌자 장갑 (2P)
g_pSynthesisManager:AddSynthesisGroup(	63	,	238970	,	7.2	)	--	청 알프스 목동 장갑
g_pSynthesisManager:AddSynthesisGroup(	63	,	239090	,	7.2	)	--	청 알프스 목동 장갑(빨강)
g_pSynthesisManager:AddSynthesisGroup(	63	,	236680	,	7.2	)	--	청 다크 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	63	,	236740	,	7.2	)	--	청 홀리 프리스트 장갑
g_pSynthesisManager:AddSynthesisGroup(	63	,	67002313	,	7.2	)	--	고딕 펑크룩 장갑(청)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	63	,	67002323	,	7.2	)	--	고딕 펑크룩 장갑(청)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	63	,	231960	,	7	)	--	벨더 아카데미 관현악부 장갑(연두)
g_pSynthesisManager:AddSynthesisGroup(	63	,	232020	,	7	)	--	벨더 아카데미 관현악부 장갑(와인)
g_pSynthesisManager:AddSynthesisGroup(	63	,	67002633	,	7	)	--	대양의 포병장교 장갑(하양)
g_pSynthesisManager:AddSynthesisGroup(	63	,	67002643	,	7	)	--	대양의 포병장교 장갑(파랑)
g_pSynthesisManager:AddSynthesisGroup(	64	,	67002764	,	7.2	)	--	청 응원단 신발(갈색)
g_pSynthesisManager:AddSynthesisGroup(	64	,	67002774	,	7.2	)	--	청 응원단 신발(검정)
g_pSynthesisManager:AddSynthesisGroup(	64	,	90001254	,	7.2	)	--	청 닌자 신발 (1P)
g_pSynthesisManager:AddSynthesisGroup(	64	,	90001264	,	7.2	)	--	청 닌자 신발 (2P)
g_pSynthesisManager:AddSynthesisGroup(	64	,	238980	,	7.2	)	--	청 알프스 브레드종 신발
g_pSynthesisManager:AddSynthesisGroup(	64	,	239100	,	7.2	)	--	청 알프스 브레드종 신발(빨강)
g_pSynthesisManager:AddSynthesisGroup(	64	,	236690	,	7.2	)	--	청 다크 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	64	,	236750	,	7.2	)	--	청 홀리 프리스트 신발
g_pSynthesisManager:AddSynthesisGroup(	64	,	67002314	,	7.2	)	--	고딕 펑크룩 신발(청)(빨강)
g_pSynthesisManager:AddSynthesisGroup(	64	,	67002324	,	7.2	)	--	고딕 펑크룩 신발(청)(파랑)
g_pSynthesisManager:AddSynthesisGroup(	64	,	231970	,	7	)	--	벨더 아카데미 관현악부 신발(연두)
g_pSynthesisManager:AddSynthesisGroup(	64	,	232030	,	7	)	--	벨더 아카데미 관현악부 신발(와인)
g_pSynthesisManager:AddSynthesisGroup(	64	,	67002634	,	7	)	--	대양의 포병장교 신발(하양)
g_pSynthesisManager:AddSynthesisGroup(	64	,	67002644	,	7	)	--	대양의 포병장교 신발(파랑)
g_pSynthesisManager:AddSynthesisGroup(	65	,	67002765	,	7.2	)	--	청 응원단 헤어(검정)
g_pSynthesisManager:AddSynthesisGroup(	65	,	67002775	,	7.2	)	--	청 응원단 헤어(갈색)
g_pSynthesisManager:AddSynthesisGroup(	65	,	90001255	,	7.2	)	--	청 닌자 헤어 (1P)
g_pSynthesisManager:AddSynthesisGroup(	65	,	90001265	,	7.2	)	--	청 닌자 헤어 (2P)
g_pSynthesisManager:AddSynthesisGroup(	65	,	238990	,	7.2	)	--	청 알프스 뉴스보이 캡
g_pSynthesisManager:AddSynthesisGroup(	65	,	239110	,	7.2	)	--	청 알프스 뉴스보이 캡(빨강)
g_pSynthesisManager:AddSynthesisGroup(	65	,	236700	,	7.2	)	--	청 다크 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	65	,	236760	,	7.2	)	--	청 홀리 프리스트 헤어
g_pSynthesisManager:AddSynthesisGroup(	65	,	67002315	,	7.2	)	--	고딕 펑크룩 헤어(청)(검정)
g_pSynthesisManager:AddSynthesisGroup(	65	,	67002325	,	7.2	)	--	고딕 펑크룩 헤어(청)(노랑)
g_pSynthesisManager:AddSynthesisGroup(	65	,	231980	,	7	)	--	벨더 아카데미 관현악부 댄디헤어(노랑)
g_pSynthesisManager:AddSynthesisGroup(	65	,	232040	,	7	)	--	벨더 아카데미 관현악부 댄디헤어(군청)
g_pSynthesisManager:AddSynthesisGroup(	65	,	67002635	,	7	)	--	대양의 포병장교 헤어(검정)
g_pSynthesisManager:AddSynthesisGroup(	65	,	67002645	,	7	)	--	대양의 포병장교 헤어(노랑)

-- #endif SERV_SYNTHESIS_AVATAR
