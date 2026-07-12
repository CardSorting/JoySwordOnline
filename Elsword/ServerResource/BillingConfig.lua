--[[
--테섭용 category_no category_name
--684 아바타, 685 액세서리, 686 소비, 687 설치, 688 펫, 689 이벤트, 607 특수, 690 무기, 691 상의, 692 하의, 693 헤어, 694 장갑, 695 신발, 696 얼굴, 697 상의, 698 하의, 699 팔, 700 반지, 701 목걸이,
--702 회복, 703 프리미엄, 717 초기화, 705 슬롯추가, 718 개인상점, 709 펫, 710 소비성, 711 패키지, 712 패션, 713 액세서리, 714 소비, 715 설치, 716 펫, 704 기타, 706 기타, 922 강화, 923 무기, 

--서비스용 category_no category_name
--601	특수, 771	아바타, 772	액세서리, 773	소비, 774	설치, 775	펫, 776	이벤트 ,777	무기, 778	상의, 779	하의, 780	헤어, 781	장갑, 782	신발, 783	얼굴, 784	상의, 785	하의
--786	팔, 787	반지, 788	목걸이, 789	회복, 790	프리미엄, 791	기타, 792	슬롯추가, 793	기타, 794	펫, 795	소비성, 796	패키지, 797	패션, 798	액세서리, 799	소비, 800	설치, 801	펫
--802	초기화, 803	개인상점, 1012	강화, 1014	무기
--]]

 
 
-- 특정 상품에 대해서 강제로 카테고리 설정하기 ( 아이템ID, 서비스 카테고리번호, 테섭 카테고리번호 )

--g_pBillingManager:AddProductCategoryModifyForItemID( 500010, 790, 703 )		-- 생명의 결정 (쁘띠 에인션트 뽀루)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500020, 790, 703 )		-- 생명의 결정 (트리 나이트)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500060, 790, 703 )		-- 쁘띠 에인션트 뽀루
--g_pBillingManager:AddProductCategoryModifyForItemID( 500070, 790, 703 )		-- 트리 나이트
--g_pBillingManager:AddProductCategoryModifyForItemID( 500080, 790, 703 )		-- 생명의 결정 (쁘띠 에인션트 뽀루) 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500090, 790, 703 )		-- 생명의 결정 (트리 나이트) 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 226860, 790, 703 )		-- '생명의 결정' 코보 특가 상품권
--g_pBillingManager:AddProductCategoryModifyForItemID( 500040, 790, 703 )		-- 엘의 나무 열매
--g_pBillingManager:AddProductCategoryModifyForItemID( 500130, 790, 703 )		-- 할로위치 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500120, 790, 703 )		-- 생명의 결정 (할로 위치) 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500100, 790, 703 )		-- 생명의 결정 (할로 위치)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500140, 790, 703 )		-- 생명의 결정 (루돌뽀)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500150, 790, 703 )		-- 생명의 결정 (미스틱)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500190, 790, 703 )		-- 생명의 결정 (미스틱) 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500200, 790, 703 )		-- 생명의 결정 (미스틱 스페셜 에디션-블랙) 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500210, 790, 703 )		-- 생명의 결정 (미스틱 스페셜 에디션-화이트) 특별 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500220, 790, 703 )		-- 생명의 결정 (미스틱 스페셜 에디션-레드) 특별 패키지 
--g_pBillingManager:AddProductCategoryModifyForItemID( 500230, 790, 703 )		-- 생명의 결정 (해츨링)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500240, 790, 703 )		-- 생명의 결정 (해츨링-다크)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500250, 790, 703 )		-- 생명의 결정 (해츨링-파이어)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500260, 790, 703 )		-- 생명의 결정 (해츨링-라이트)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500270, 790, 703 )		-- 생명의 결정 (해츨링) 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500280, 790, 703 )		-- 생명의 결정 (해츨링-다크) 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500290, 790, 703 )		-- 생명의 결정 (해츨링-파이어) 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500300, 790, 703 )		-- 생명의 결정 (해츨링-라이트) 패키지
--g_pBillingManager:AddProductCategoryModifyForItemID( 500310, 790, 703 )		-- 고스트 에인션트 뽀루-이블
--g_pBillingManager:AddProductCategoryModifyForItemID( 500320, 790, 703 )		-- 고스트 에인션트 뽀루-헬파이어
--g_pBillingManager:AddProductCategoryModifyForItemID( 500330, 790, 703 )		-- 고스트 에인션트 뽀루-할로우
--g_pBillingManager:AddProductCategoryModifyForItemID( 500340, 790, 703 )		-- 고스트 에인션트 뽀루-세라프
--g_pBillingManager:AddProductCategoryModifyForItemID( 500350, 790, 703 )		-- 할로윈 고스트 뽀루 패키지(이블)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500360, 790, 703 )		-- 할로윈 고스트 뽀루 패키지(헬파이어)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500370, 790, 703 )		-- 할로윈 고스트 뽀루 패키지(할로우)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500380, 790, 703 )		-- 할로윈 고스트 뽀루 패키지(세라프) 
--g_pBillingManager:AddProductCategoryModifyForItemID( 500520, 790, 703 )		-- 트리 나이트(크리스마스 에디션)
--g_pBillingManager:AddProductCategoryModifyForItemID( 500530, 790, 703 )		-- 트리 나이트(산타 에디션) 


g_pBillingManager:AddProductCategoryModifyForItemID(	206730	, 790, 703 )	--	 강화 보조제 Lv.1
g_pBillingManager:AddProductCategoryModifyForItemID(	206740	, 790, 703 )	--	 강화 보조제 Lv.2
g_pBillingManager:AddProductCategoryModifyForItemID(	206750	, 790, 703 )	--	 강화 보조제 Lv.3
g_pBillingManager:AddProductCategoryModifyForItemID(	206760	, 790, 703 )	--	 강화 보조제 Lv.4
g_pBillingManager:AddProductCategoryModifyForItemID(	206770	, 790, 703 )	--	 강화 보조제 Lv.5
g_pBillingManager:AddProductCategoryModifyForItemID(	206780	, 790, 703 )	--	 강화 보조제 Lv.6
g_pBillingManager:AddProductCategoryModifyForItemID(	206790	, 790, 703 )	--	 강화 보조제 Lv.7
g_pBillingManager:AddProductCategoryModifyForItemID(	206800	, 790, 703 )	--	 강화 보조제 Lv.8
g_pBillingManager:AddProductCategoryModifyForItemID(	206810	, 790, 703 )	--	 강화 보조제 Lv.9
g_pBillingManager:AddProductCategoryModifyForItemID(	206840	, 790, 703 )	--	 플루오르 스톤 패키지 Lv.1
g_pBillingManager:AddProductCategoryModifyForItemID(	206850	, 790, 703 )	--	 플루오르 스톤 패키지 Lv.2
g_pBillingManager:AddProductCategoryModifyForItemID(	206860	, 790, 703 )	--	 플루오르 스톤 패키지 Lv.3
g_pBillingManager:AddProductCategoryModifyForItemID(	206870	, 790, 703 )	--	 플루오르 스톤 패키지 Lv.4
g_pBillingManager:AddProductCategoryModifyForItemID(	206880	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.1
g_pBillingManager:AddProductCategoryModifyForItemID(	206890	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.2
g_pBillingManager:AddProductCategoryModifyForItemID(	206900	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.3
g_pBillingManager:AddProductCategoryModifyForItemID(	206910	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.4
g_pBillingManager:AddProductCategoryModifyForItemID(	206920	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.5
g_pBillingManager:AddProductCategoryModifyForItemID(	206930	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.6
g_pBillingManager:AddProductCategoryModifyForItemID(	210490	, 790, 703 )	--	 강화 패키지 Lv.1
g_pBillingManager:AddProductCategoryModifyForItemID(	210500	, 790, 703 )	--	 강화 패키지 Lv.2
g_pBillingManager:AddProductCategoryModifyForItemID(	210510	, 790, 703 )	--	 강화 패키지 Lv.3
g_pBillingManager:AddProductCategoryModifyForItemID(	210520	, 790, 703 )	--	 강화 패키지 Lv.4
g_pBillingManager:AddProductCategoryModifyForItemID(	230350	, 790, 703 )	--	 강화 패키지 Lv.5
g_pBillingManager:AddProductCategoryModifyForItemID(	222390	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.1 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222400	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.2 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222410	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.3 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222420	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.4 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	232210	, 790, 703 )	--	 축복받은 복원의 주문서 Lv.5 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222310	, 790, 703 )	--	 플루오르 스톤 Lv.1 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222320	, 790, 703 )	--	 플루오르 스톤 Lv.2 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222330	, 790, 703 )	--	 플루오르 스톤 Lv.3 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222340	, 790, 703 )	--	 플루오르 스톤 Lv.4 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	232200	, 790, 703 )	--	 플루오르 스톤 Lv.5 1+1 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222350	, 790, 703 )	--	 플루오르 스톤 Lv.1 10+10 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222360	, 790, 703 )	--	 플루오르 스톤 Lv.2 10+10 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222370	, 790, 703 )	--	 플루오르 스톤 Lv.3 10+10 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	222380	, 790, 703 )	--	 플루오르 스톤 Lv.4 10+10 패키지


-- 전직 캐쉬 아이템
-- 엘소드
g_pBillingManager:AddProductCategoryModifyForItemID(	214410	, 790, 703 )	--	소드 나이트의 증명
g_pBillingManager:AddProductCategoryModifyForItemID(	214420	, 790, 703 )	--	매직 나이트의 증명
g_pBillingManager:AddProductCategoryModifyForItemID(	216420	, 790, 703 )	--	로드 나이트 임명장
g_pBillingManager:AddProductCategoryModifyForItemID(	216430	, 790, 703 )	--	룬 슬레이어 징표
g_pBillingManager:AddProductCategoryModifyForItemID(	242310	, 790, 703 )	--	시스 나이트 전직 캐시 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	252640	, 790, 703 )	--	인피니티 소드의 징표

-- 레나
g_pBillingManager:AddProductCategoryModifyForItemID(	214450	, 790, 703 )	--	컴뱃 레인저의 영혼
g_pBillingManager:AddProductCategoryModifyForItemID(	214460	, 790, 703 )	--	스나이핑 레인저의 영혼
g_pBillingManager:AddProductCategoryModifyForItemID(	217850	, 790, 703 )	--	윈드 스니커 전직 캐시 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	217860	, 790, 703 )	--	그랜드 아처 전직 캐시 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	242330	, 790, 703 )	--	트래핑 레인저 전직 캐시 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	252660	, 790, 703 )	--	나이트 와처 전직 아이템

-- 아이샤
g_pBillingManager:AddProductCategoryModifyForItemID(	214430	, 790, 703 )	--	하이 매지션의 메모라이즈
g_pBillingManager:AddProductCategoryModifyForItemID(	214440	, 790, 703 )	--	다크 매지션의 메모라이즈
g_pBillingManager:AddProductCategoryModifyForItemID(	217920	, 790, 703 )	--	엘리멘탈 마스터 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	217930	, 790, 703 )	--	보이드 프린세스 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	242320	, 790, 703 )	--	배틀 매지션 전직 캐시 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	252650	, 790, 703 )	--	디멘션 위치 전직 아이템

-- 레이븐
g_pBillingManager:AddProductCategoryModifyForItemID(	214470	, 790, 703 )	--	소드 테이커의 계시
g_pBillingManager:AddProductCategoryModifyForItemID(	214480	, 790, 703 )	--	오버 테이커의 계시
g_pBillingManager:AddProductCategoryModifyForItemID(	217950	, 790, 703 )	--	블레이드 마스터 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	217960	, 790, 703 )	--	레크리스 피스트 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	242340	, 790, 703 )	--	웨펀 테이커 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	252670	, 790, 703 )	--	베테랑 커맨더 전직 아이템

-- 이브
g_pBillingManager:AddProductCategoryModifyForItemID(	214490	, 790, 703 )	--	코드 엑조틱의 메모리
g_pBillingManager:AddProductCategoryModifyForItemID(	214500	, 790, 703 )	--	코드 아키텍처의 메모리
g_pBillingManager:AddProductCategoryModifyForItemID(	217970	, 790, 703 )	--	코드 네미시스 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	217980	, 790, 703 )	--	코드 엠프레스 전직 아이템
g_pBillingManager:AddProductCategoryModifyForItemID(	242350	, 790, 703 )	--	코드 일렉트라의 메모리
g_pBillingManager:AddProductCategoryModifyForItemID(	252680	, 790, 703 )	--	배틀 세라프 전직 아이템

-- 청
g_pBillingManager:AddProductCategoryModifyForItemID(	229460	, 790, 703 )	--	퓨리 가디언의 결의
g_pBillingManager:AddProductCategoryModifyForItemID(	229470	, 790, 703 )	--	슈터 가디언의 결의
g_pBillingManager:AddProductCategoryModifyForItemID(	235120	, 790, 703 )	--	아이언 팔라딘의
g_pBillingManager:AddProductCategoryModifyForItemID(	235130	, 790, 703 )	--	데들리 체이서의
g_pBillingManager:AddProductCategoryModifyForItemID(	242360	, 790, 703 )	--	쉘링 가디언의 결의
g_pBillingManager:AddProductCategoryModifyForItemID(	252690	, 790, 703 )	--	택티컬 트루퍼 전직 아이템

-- 아라
g_pBillingManager:AddProductCategoryModifyForItemID(	264380	, 790, 703 )	--	소선의 맹세
g_pBillingManager:AddProductCategoryModifyForItemID(	264390	, 790, 703 )	--	제천의 맹세

			
	


-- 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	241950	, 790, 703 )	--	소드 나이트 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	241960	, 790, 703 )	--	매직 나이트 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	241970	, 790, 703 )	--	시스 나이트 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	241980	, 790, 703 )	--	하이 매지션 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	241990	, 790, 703 )	--	다크 매지션 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242000	, 790, 703 )	--	배틀 매지션 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242010	, 790, 703 )	--	컴뱃 레인저 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242020	, 790, 703 )	--	스나이핑 레인저 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242030	, 790, 703 )	--	트래핑 레인저 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242040	, 790, 703 )	--	소드 테이커 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242050	, 790, 703 )	--	오버 테이커 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242060	, 790, 703 )	--	데몬 테이커 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242070	, 790, 703 )	--	코드 액조틱 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242080	, 790, 703 )	--	코드 아키텍쳐 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242090	, 790, 703 )	--	코드 일렉트라 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242100	, 790, 703 )	--	퓨리 가디언 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242110	, 790, 703 )	--	슈팅 가디언 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242120	, 790, 703 )	--	쉘링 가디언 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242130	, 790, 703 )	--	로드나이트 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242140	, 790, 703 )	--	룬슬레이어 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242150	, 790, 703 )	--	인피니트 소드 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242160	, 790, 703 )	--	보이드 프린세스 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242170	, 790, 703 )	--	엘리멘탈 마스터 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242180	, 790, 703 )	--	디멘션 위치 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242190	, 790, 703 )	--	윈드 스니커 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242200	, 790, 703 )	--	그랜드 아처 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242210	, 790, 703 )	--	나이트 와처 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242220	, 790, 703 )	--	블레이드 마스터 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242230	, 790, 703 )	--	레크리스 피스트 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242240	, 790, 703 )	--	베테랑 커맨더 추가 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242250	, 790, 703 )	--	코드 네메시스 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242260	, 790, 703 )	--	코드 엠프레스 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242270	, 790, 703 )	--	코드 배틀 세라프 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242280	, 790, 703 )	--	아이언 팔라딘 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242290	, 790, 703 )	--	데들리 체이서 전직 변경권
g_pBillingManager:AddProductCategoryModifyForItemID(	242300	, 790, 703 )	--	택티컬 트루퍼 전직 변경권

-- 패키지
g_pBillingManager:AddProductCategoryModifyForItemID(	246710	, 790, 703 )	--	강자의 주문서(패키지)

-- 전직패키지(전직 + 악세)
g_pBillingManager:AddProductCategoryModifyForItemID(	242370	, 689, 776 )	--	시스 나이트와 콘웰 패키지

