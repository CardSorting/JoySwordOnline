
-- 분해 결과 아이템 설정
-- IS는 INCHANT STONE의 약자입니다~ㅋ

RUSTY_WEAPON_PIECE		   =99799 --녹슨 무기 파편
WORN_ARMOR_PIECE		   =99800 --해진 방어구 조각

BLUNT_WEAPON_PIECE		   =99801 --무딘 무기 파편
THIN_ARMOR_PIECE		   =99802 --얇은 방어구 조각

NORMAL_WEAPON_PIECE		   =99803 --평범한 무기 파편
PATCHED_ARMOR_PIECE		   =99804 --덧댄 방어구 조각

POLISHED_WEAPON_PIECE	   =99805 --다듬어진 무기 파편
DEPENDABLE_ARMOR_PIECE	   =99806 --쓸만한 방어구 조각

SOLID_WEAPON_PIECE		   =99807 --단단한 무기 파편
STURDY_ARMOR_PIECE		   =99808 --질긴 방어구 조각

EXQUISITE_WEAPON_PIECE		   =99980 -- 정교한 무기 파편
STRONG_ARMOR_PIECE		   =99982 -- 억센 방어구 조각

DIM_EL_PIECE		       =99825 --희미한 엘의 흔적
MINUTE_EL_PIECE		       =99826 --미세한 엘의 먼지
SMALL_EL_PIECE	     	   =99827 --작은 엘의 결정
NORMAL_EL_PIECE		       =99828 --엘의 결정
BIG_EL_PIECE		       =99829 --큰 엘의 결정
SHINING_EL_PIECE	       =99976 --빛나는 엘의 결정


RESOLVE_RESULT_TYPE =
{
	RRT_EL_FLOUR			= 0,
	RRT_WEAPON_BROKEN_PIECE	= 1,
	RRT_ARMOR_BROKEN_PIECE	= 2,
}


-- des : 잭팟 최소, 최대 시간설정
-- arg 1. 최소
-- arg 2. 최대
g_pResolveItemManager:SetMinMaxOfJackpotTime( 10800, 21600 )
g_pResolveItemManager:SetJackpotProb( 100 )


-- 무기 분해 파편 확률 세팅
g_pResolveItemManager:AddWeaponResolveBrokenPieceRate( ITEM_TYPE["IT_WEAPON"], 100 )

-- 방어구 분해 파편 확률 세팅
g_pResolveItemManager:AddArmorResolveBrokenPieceRate( ITEM_TYPE["IT_WEAPON"],	30 )
g_pResolveItemManager:AddArmorResolveBrokenPieceRate( ITEM_TYPE["IT_DEFENCE"],	70 )


---------------------------------------------------------------------------------
-- 엘의 가루
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_EL_FLOUR"],			  99825, { iUnitCost =  800, iBeginLv =  0, iEndLv = 17 } )	-- 엘의 가루 lv1 희미한 엘의 흔적
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_EL_FLOUR"],			  99826, { iUnitCost = 1200, iBeginLv = 18, iEndLv = 27 } )	-- 엘의 가루 lv2 미세한 엘의 먼지
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_EL_FLOUR"],			  99827, { iUnitCost = 1600, iBeginLv = 28, iEndLv = 37 } )	-- 엘의 가루 lv3 작은 엘의 결정
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_EL_FLOUR"],			  99828, { iUnitCost = 2000, iBeginLv = 38, iEndLv = 47 } )	-- 엘의 가루 lv4 엘의 결정
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_EL_FLOUR"],			  99829, { iUnitCost = 2400, iBeginLv = 48, iEndLv = 60 } )	-- 엘의 가루 lv5 큰 엘의 결정
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_EL_FLOUR"],			  99976, { iUnitCost = 2800, iBeginLv = 61, iEndLv = 70 } )	-- 엘의 가루 lv6 빛나는 엘의 결정
---------------------------------------------------------------------------------
-- 무기 파편
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_WEAPON_BROKEN_PIECE"], 99799, { iUnitCost = 2400, iBeginLv =  0, iEndLv = 17 } )	-- 무기 조각 lv1 녹슨
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_WEAPON_BROKEN_PIECE"], 99801, { iUnitCost = 3600, iBeginLv = 18, iEndLv = 27 } )	-- 무기 조각 lv2 무딘
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_WEAPON_BROKEN_PIECE"], 99803, { iUnitCost = 4800, iBeginLv = 28, iEndLv = 37 } )	-- 무기 조각 lv3 평범한
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_WEAPON_BROKEN_PIECE"], 99805, { iUnitCost = 6000, iBeginLv = 38, iEndLv = 47 } )	-- 무기 조각 lv4 다듬어진
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_WEAPON_BROKEN_PIECE"], 99807, { iUnitCost = 7200, iBeginLv = 48, iEndLv = 60 } )	-- 무기 조각 lv5 단단한
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_WEAPON_BROKEN_PIECE"], 99980, { iUnitCost = 8400, iBeginLv = 61, iEndLv = 70 } )	-- 무기 조각 lv6 정교한
---------------------------------------------------------------------------------
-- 방어구 파편
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_ARMOR_BROKEN_PIECE"],	 99800, { iUnitCost =  800, iBeginLv =  0, iEndLv = 17 } )	-- 방어구 파편 lv1 해진
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_ARMOR_BROKEN_PIECE"],	 99802, { iUnitCost = 1200, iBeginLv = 18, iEndLv = 27 } )	-- 방어구 파편 lv2 얇은
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_ARMOR_BROKEN_PIECE"],	 99804, { iUnitCost = 1600, iBeginLv = 28, iEndLv = 37 } )	-- 방어구 파편 lv3 덧댄
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_ARMOR_BROKEN_PIECE"],	 99806, { iUnitCost = 2000, iBeginLv = 38, iEndLv = 47 } )	-- 방어구 파편 lv4 쓸만한
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_ARMOR_BROKEN_PIECE"],	 99808, { iUnitCost = 2400, iBeginLv = 48, iEndLv = 60 } )	-- 방어구 파편 lv5 질긴
g_pResolveItemManager:AddResolveDataBrokenPiece( RESOLVE_RESULT_TYPE["RRT_ARMOR_BROKEN_PIECE"],	 99982, { iUnitCost = 2800, iBeginLv = 61, iEndLv = 70 } )	-- 방어구 파편 lv6 억센
---------------------------------------------------------------------------------
-- 파편 : 무기 분해
--[[
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_WEAPON_HAND"], 5280, false, STEEL_PIECE,		  { fRate = 0.8,  iFactor = 1000, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_WEAPON_HAND"], 5280, false, EL_PIECE,		  { fRate = 0.2,  iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_WEAPON_HAND"], 5280, true,  STEEL_PIECE,		  { fRate = 0.2,  iFactor = 1000, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_WEAPON_HAND"], 5280, true,  EL_PIECE,		  { fRate = 0.05, iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_WEAPON_HAND"], 5280, true,  RARE_STEEL_PIECE,  { fRate = 0.6,  iFactor = 3000, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_WEAPON_HAND"], 5280, true,  RARE_EL_PIECE,	  { fRate = 0.15, iFactor =  150, iMin = -2, iMax = 2 } )


-- 파편 : 방어구 상의 분해

g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_BODY"], 1584, false, FIBER_PIECE,	  { fRate = 0.8,  iFactor =  300, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_BODY"], 1584, false, EL_PIECE,		  { fRate = 0.2,  iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_BODY"], 1584, true,  FIBER_PIECE,	  { fRate = 0.2,  iFactor =  300, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_BODY"], 1584, true,  EL_PIECE,		  { fRate = 0.05, iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_BODY"], 1584, true,  RARE_FIBER_PIECE, { fRate = 0.6,  iFactor =  900, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_BODY"], 1584, true,  RARE_EL_PIECE,	  { fRate = 0.15, iFactor =  150, iMin = -2, iMax = 2 } )


-- 파편 : 방어구 하의 분해

g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_LEG"], 1848, false, FIBER_PIECE,		  { fRate = 0.8,  iFactor =  300, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_LEG"], 1848, false, EL_PIECE,		  { fRate = 0.2,  iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_LEG"], 1848, true,  FIBER_PIECE,		  { fRate = 0.2,  iFactor =  300, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_LEG"], 1848, true,  EL_PIECE,		  { fRate = 0.05, iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_LEG"], 1848, true,  RARE_FIBER_PIECE,  { fRate = 0.6,  iFactor =  900, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_LEG"], 1848, true,  RARE_EL_PIECE,	  { fRate = 0.15, iFactor =  150, iMin = -2, iMax = 2 } )


-- 파편 : 방어구 장갑 분해

g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_HAND"], 1056, false, JEWEL_PIECE,	  { fRate = 0.8,  iFactor =  200, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_HAND"], 1056, false, EL_PIECE,		  { fRate = 0.2,  iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_HAND"], 1056, true,  JEWEL_PIECE,	  { fRate = 0.2,  iFactor =  200, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_HAND"], 1056, true,  EL_PIECE,		  { fRate = 0.05, iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_HAND"], 1056, true,  RARE_JEWEL_PIECE, { fRate = 0.6,  iFactor =  600, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_HAND"], 1056, true,  RARE_EL_PIECE,	  { fRate = 0.15, iFactor =  150, iMin = -2, iMax = 2 } )


-- 파편 : 방어구 신발 분해

g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_FOOT"], 1056, false, JEWEL_PIECE,	  { fRate = 0.8,  iFactor =  200, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_FOOT"], 1056, false, EL_PIECE,		  { fRate = 0.2,  iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_FOOT"], 1056, true,  JEWEL_PIECE,	  { fRate = 0.2,  iFactor =  200, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_FOOT"], 1056, true,  EL_PIECE,		  { fRate = 0.05, iFactor =   50, iMin = -2, iMax = 2 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_FOOT"], 1056, true,  RARE_JEWEL_PIECE, { fRate = 0.6,  iFactor =  600, iMin = -1, iMax = 1 } )
g_pResolveItemManager:AddResolveDataBrokenPiece( EQIP_POSITION["EP_DEFENCE_FOOT"], 1056, true,  RARE_EL_PIECE,	  { fRate = 0.15, iFactor =  150, iMin = -2, iMax = 2 } )
--]]
---------------------------------------------------------------------------------



-- 무기 강화석 확률 ( 아이템등급, 아이템ID, 성공확률, 랜덤횟수, 결과물갯수, 최소장착레벨, 최대 장착레벨 )

-- 일반 무기 강화석
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 109950, { fSuccRate = 20, iRandomCnt = 0, iResultCnt = 0, iBeginLv =  0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  109950, { fSuccRate = 10, iRandomCnt = 0, iResultCnt = 0, iBeginLv =  0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   109950, { fSuccRate = 10, iRandomCnt = 0, iResultCnt = 0, iBeginLv =  0, iEndLv = 100 } )

-- 무기 강화석 Lv.1
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130077, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv =  0, iEndLv =  20 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130077, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv =  0, iEndLv =  20 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130077, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv =  0, iEndLv =  20 } )

-- 무기 강화석 Lv.2
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130078, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 21, iEndLv =  30 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130078, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 21, iEndLv =  30 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130078, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 21, iEndLv =  30 } )

-- 무기 강화석 Lv.3
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130079, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 31, iEndLv =  40 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130079, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 31, iEndLv =  40 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130079, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 31, iEndLv =  40 } )

-- 무기 강화석 Lv.4
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130080, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 41, iEndLv =  50 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130080, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 41, iEndLv =  50 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130080, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 41, iEndLv =  50 } )

-- 무기 강화석 Lv.5
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130081, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 51, iEndLv =  60 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130081, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 51, iEndLv =  60 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130081, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 51, iEndLv =  60 } )

-- 무기 강화석 Lv.6
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130082, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 61, iEndLv =  70 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130082, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 61, iEndLv =  70 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130082, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 61, iEndLv =  70 } )

-- 무기 강화석 Lv.7
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130083, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 71, iEndLv =  80 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130083, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 71, iEndLv =  80 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130083, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 71, iEndLv =  80 } )

-- 무기 강화석 Lv.8
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130084, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 81, iEndLv =  90 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130084, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 81, iEndLv =  90 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130084, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 81, iEndLv =  90 } )

-- 무기 강화석 Lv.9
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130085, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 91, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130085, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 91, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130085, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 91, iEndLv = 100 } )

 
-- 방어구 강화석 확률(무기 x 2)

-- 일반 방어구 강화석
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 109965, { fSuccRate = 20, iRandomCnt = 0, iResultCnt = 0, iBeginLv =  0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  109965, { fSuccRate = 10, iRandomCnt = 0, iResultCnt = 0, iBeginLv =  0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   109965, { fSuccRate = 10, iRandomCnt = 0, iResultCnt = 0, iBeginLv =  0, iEndLv = 100 } )

-- 방어구 강화석 Lv.1
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130086, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv =  0, iEndLv =  20 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130086, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv =  0, iEndLv =  20 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130086, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv =  0, iEndLv =  20 } )

-- 방어구 강화석 Lv.2
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130087, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 21, iEndLv =  30 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130087, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 21, iEndLv =  30 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130087, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 21, iEndLv =  30 } )

-- 방어구 강화석 Lv.3
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130088, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 31, iEndLv =  40 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130088, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 31, iEndLv =  40 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130088, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 31, iEndLv =  40 } )

-- 방어구 강화석 Lv.4
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130089, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 41, iEndLv =  50 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130089, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 41, iEndLv =  50 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130089, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 41, iEndLv =  50 } )

-- 방어구 강화석 Lv.5
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130090, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 51, iEndLv =  60 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130090, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 51, iEndLv =  60 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130090, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 51, iEndLv =  60 } )

-- 방어구 강화석 Lv.6
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130091, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 61, iEndLv =  70 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130091, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 61, iEndLv =  70 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130091, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 61, iEndLv =  70 } )

-- 방어구 강화석 Lv.7
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130092, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 71, iEndLv =  80 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130092, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 71, iEndLv =  80 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130092, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 71, iEndLv =  80 } )

-- 방어구 강화석 Lv.8
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130093, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 81, iEndLv =  90 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130093, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 81, iEndLv =  90 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130093, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 81, iEndLv =  90 } )

-- 방어구 강화석 Lv.9
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 130094, { fSuccRate = 20, iRandomCnt = 4, iResultCnt = 1, iBeginLv = 91, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  130094, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 91, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   130094, { fSuccRate = 10, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 91, iEndLv = 100 } )


-- 일반 마법석 확률 ( 아이템등급, 아이템ID, 성공확률, 랜덤횟수, 결과물갯수 )

g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 109945, { fSuccRate = 20, iRandomCnt = 2, iResultCnt = 1, iBeginLv = 0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  109945, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_RARE"],   109945, { fSuccRate =  5, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 0, iEndLv = 100 } )


-- 희귀한 마법석 확률 ( 아이템등급, 아이템ID, 성공확률, 랜덤횟수, 결과물갯수 )

g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_UNIQUE"], 109955, { fSuccRate = 20, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 0, iEndLv = 100 } )
g_pResolveItemManager:AddResolveData( ITEM_GRADE["IG_ELITE"],  109955, { fSuccRate = 10, iRandomCnt = 1, iResultCnt = 1, iBeginLv = 0, iEndLv = 100 } )

-- #ifdef SERV_MULTI_RESOLVE 임규수 일본 추가 아바타 분해
--[[
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132193, { fSuccRate = 7 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132194, { fSuccRate = 7 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132195, { fSuccRate = 7 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132196, { fSuccRate = 6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132197, { fSuccRate = 6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132198, { fSuccRate = 6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132199, { fSuccRate = 6.61 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132200, { fSuccRate = 1.46 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132201, { fSuccRate = 2.43 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132202, { fSuccRate = 1.94 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132203, { fSuccRate = 5.83 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132204, { fSuccRate = 2.91 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132205, { fSuccRate = 2.91 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132110, { fSuccRate = 0.73 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132111, { fSuccRate = 0.73 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132112, { fSuccRate = 0.36 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132113, { fSuccRate = 0.61 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132114, { fSuccRate = 0.36 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 132115, { fSuccRate = 0.12 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133365, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133366, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133367, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133368, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133369, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133370, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133371, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133372, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133373, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133374, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133375, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133376, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133377, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133378, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 133379, { fSuccRate = 1.6 } )
g_pResolveItemManager:AddResolveDataAvatar( ITEM_GRADE["IG_UNIQUE"], 65000550, { fSuccRate = 10 } )
--]]
-- #endif SERV_MULTI_RESOLVE 임규수 일본 추가 아바타 분해