-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-- 펫 미리보기 스크립트
-- ( 판매패키지ID , )
--g_pCX2CubePackageManager:AddCubePackageData( 판매패키지ID, 입어보기 패키지1P ID, 입어보기 패키지2P ID, 캐릭터 UNITID)
--[[
enum UNIT_TYPE
		{
			UT_NONE	= 0,  
 			UT_ELSWORD = 1, 엘소드
			UT_ARME = 2, 아이샤
			UT_LIRE = 3, 레나
			UT_RAVEN = 4, 레이븐
			UT_EVE = 5, 이브
			UT_CHUNG = 6,	청	

			UT_END,			//  엘리시스가 추가되면 END를 엘리시스 아래로..
		};
--]]
g_pCX2CubePackageManager:AddCubePackageData( 85002030, 230230, 230240, 1 )	--	2011 한복	엘소드
g_pCX2CubePackageManager:AddCubePackageData( 85002030, 230250, 230260, 2 )	--	2011 한복	아이샤
g_pCX2CubePackageManager:AddCubePackageData( 85002030, 230270, 230280, 3 )	--	2011 한복	레나
g_pCX2CubePackageManager:AddCubePackageData( 85002030, 230290, 230300, 4 )	--	2011 한복	레이븐
g_pCX2CubePackageManager:AddCubePackageData( 85002030, 230310, 230320, 5 )	--	2011 한복	이브
g_pCX2CubePackageManager:AddCubePackageData( 85002030, 230330, 230340, 6 )	--	2011 한복	청

-- 만우절 이벤트 2013-04-01
g_pCX2CubePackageManager:AddCubePackageData( 250000640, 10, 10, 1 )	--	아크엔젤 풀셋 엘소드
g_pCX2CubePackageManager:AddCubePackageData( 250000640, 20, 20, 2 )	--	아크엔젤 풀셋 아이샤
g_pCX2CubePackageManager:AddCubePackageData( 250000640, 30, 30, 3 )	--	아크엔젤 풀셋 레나
g_pCX2CubePackageManager:AddCubePackageData( 250000640, 40, 40, 4 )	--	아크엔젤 풀셋 레이븐
g_pCX2CubePackageManager:AddCubePackageData( 250000640, 50, 50, 5 )	--	아크엔젤 풀셋 이브
g_pCX2CubePackageManager:AddCubePackageData( 250000640, 60, 60, 6 )	--	아크엔젤 풀셋 청