-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--======================================================================
-- DUNGEON RESULT
-- ※ print() <= 함수는 디버깅을 위한 출력함수 이므로 나둬 주세요.! 
--======================================================================
--프로그램에서 사용하는 랭크식별 코드값

RANK_TYPE =
{
	RT_NONE		= 0,
	RT_F		= 1,
	RT_E		= 2,
	RT_D		= 3,
	RT_C		= 4,
	RT_B		= 5,
	RT_A		= 6,
	RT_S		= 7,
}

--던전게임 파티보너스 확률(2인, 3인, 4인)
ResultProcess:AddDungeonPartyBonus( 0.4, 1.0, 1.4 )




--------------------------------------------------------------------------------------------
function DUNGEON_DIFFICULTY_CONST( nDungeonID )

   local fConstDifficulty = 1.0
	
	if nDungeonID == DI_TUTORIAL then
	 fConstDifficulty = 1.0
	 
	--루벤마을
	elseif nDungeonID == DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"] then
     fConstDifficulty = 1.06
	 
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"] then
     fConstDifficulty = 1.16
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_WEST_HARD"] then
     fConstDifficulty = 1.73
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"] then
     fConstDifficulty = 2.03
	 
	elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"] then
     fConstDifficulty = 1.91
	elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_MAIN_HARD"] then
     fConstDifficulty = 2.27
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"] then
     fConstDifficulty = 2.67
	 
	elseif nDungeonID == DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"] then
     fConstDifficulty = 2.26
    elseif nDungeonID == DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_HARD"] then
     fConstDifficulty = 2.46
    elseif nDungeonID == DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_EXPERT"] then
     fConstDifficulty = 2.73
	 
	elseif nDungeonID == DUNGEON_ID["DI_DI_RUBEN_SWAMP_NORMAL"] then
     fConstDifficulty = 2.49
    elseif nDungeonID == DUNGEON_ID["DI_DI_RUBEN_SWAMP_HARD"] then
     fConstDifficulty = 2.63
    elseif nDungeonID == DUNGEON_ID["DI_DI_RUBEN_SWAMP_EXPERT"] then
     fConstDifficulty = 2.99    
	 
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_NORTH_NORMAL"] then
     fConstDifficulty = 2.01
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_NORTH_HARD"] then
     fConstDifficulty = 2.08
    elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"] then
     fConstDifficulty = 2.46
	 
	elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_HELL_NORMAL"] then
     fConstDifficulty = 2.88
	elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_HELL_HARD"] then
     fConstDifficulty = 3.20
	elseif nDungeonID == DUNGEON_ID["DI_EL_FOREST_HELL_EXPERT"] then
     fConstDifficulty = 3.51
	
	--엘더마을 
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"] then
     fConstDifficulty = 1.55
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_DRUID_FOREST_HARD"] then
     fConstDifficulty = 1.79
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"] then
     fConstDifficulty = 1.64
	 
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_NATURE_CAVE_NORMAL"] then
     fConstDifficulty = 1.83
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_NATURE_CAVE_HARD"] then
     fConstDifficulty = 1.82
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"] then
     fConstDifficulty = 1.96
	 
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"] then
     fConstDifficulty = 2.09
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_BENDERS_CAVE_HARD"] then
     fConstDifficulty = 2.08
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"] then
     fConstDifficulty = 2.18
	 
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"] then
     fConstDifficulty = 2.49
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_HARD"] then
     fConstDifficulty = 2.49
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"] then
     fConstDifficulty = 2.66
	 
	elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"] then
     fConstDifficulty = 2.59
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_HARD"] then
     fConstDifficulty = 2.35
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"] then
     fConstDifficulty = 2.43
	 
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"] then
     fConstDifficulty = 3.00
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_HARD"] then
     fConstDifficulty = 2.80
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"] then
     fConstDifficulty = 2.88
     
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_NORMAL"] then
     fConstDifficulty = 2.90
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_HARD"] then
     fConstDifficulty = 2.98
    elseif nDungeonID == DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_EXPERT"] then
     fConstDifficulty = 3.00 
	
	--베스마 마을
    elseif nDungeonID == DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"] then
     fConstDifficulty = 2.59
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_DRAGON_ROAD_HARD"] then
     fConstDifficulty = 2.61
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_DRAGON_ROAD_EXPERT"] then
     fConstDifficulty = 2.72
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_LAKE_NORMAL"] then
     fConstDifficulty = 2.65
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_LAKE_HARD"] then
     fConstDifficulty = 2.83
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_LAKE_EXPERT"] then
     fConstDifficulty = 3.01
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"] then
     fConstDifficulty = 2.88
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_LAKE_NIGHT_HARD"] then
     fConstDifficulty = 3.13
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_LAKE_NIGHT_EXPERT"] then
     fConstDifficulty = 3.29
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_CANYON_NORMAL"] then
     fConstDifficulty = 2.87
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_CANYON_HARD"] then
     fConstDifficulty = 3.09
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_CANYON_EXPERT"] then
     fConstDifficulty = 3.13
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"] then
     fConstDifficulty = 2.72
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_DRAGON_NEST_HARD"] then
     fConstDifficulty = 2.96
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_DRAGON_NEST_EXPERT"] then
     fConstDifficulty = 3.00
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_MINE_NORMAL"] then
     fConstDifficulty = 3.01
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_MINE_HARD"] then
     fConstDifficulty = 3.04
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_MINE_EXPERT"] then
     fConstDifficulty = 3.15
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_MINE2_NORMAL"] then
     fConstDifficulty = 3.19
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_MINE2_HARD"] then
     fConstDifficulty = 3.12
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_MINE2_EXPERT"] then
     fConstDifficulty = 3.24
	 
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"] then
     fConstDifficulty = 3.41
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_AIRSHIP_HARD"] then
     fConstDifficulty = 2.73
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_AIRSHIP_EXPERT"] then
     fConstDifficulty = 3.46
	 
    elseif nDungeonID == DUNGEON_ID["DI_BESMA_SECRET_NORMAL"] then
     fConstDifficulty = 3.41
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_SECRET_HARD"] then
     fConstDifficulty = 2.73
	elseif nDungeonID == DUNGEON_ID["DI_BESMA_SECRET_EXPERT"] then
     fConstDifficulty = 3.46


	--페이타 2010.11. 추가
    elseif nDungeonID == DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"] then
     fConstDifficulty = 3.00
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_OFFERINGS_HARD"] then
     fConstDifficulty = 3.10
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_OFFERINGS_EXPERT"] then
     fConstDifficulty = 3.20
	 
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"] then
     fConstDifficulty = 3.30
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_HARD"] then
     fConstDifficulty = 3.40
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_EXPERT"] then
     fConstDifficulty = 3.50
	 
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_CHAPE_NORMAL"] then
     fConstDifficulty = 3.80
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_CHAPE_HARD"] then
     fConstDifficulty = 3.90
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_CHAPE_EXPERT"] then
     fConstDifficulty = 4.00
	 
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"] then
     fConstDifficulty = 4.30
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_UNDER_GARDEN_HARD"] then
     fConstDifficulty = 4.45
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_UNDER_GARDEN_EXPERT"] then
     fConstDifficulty = 4.50
	 
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"] then
     fConstDifficulty = 5.00
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_TOWER_HEART_HARD"] then
     fConstDifficulty = 5.10
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_TOWER_HEART_EXPERT"] then
     fConstDifficulty = 5.15
	 
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"] then
     fConstDifficulty = 5.50
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_HARD"] then
     fConstDifficulty = 5.60
	elseif nDungeonID == DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_EXPERT"] then
     fConstDifficulty = 5.70


	--알테라 마을 2010.11. 수정 기존 모두 normal이었음.
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"] then
     fConstDifficulty = 2.59
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_HARD"] then
     fConstDifficulty = 2.61
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"] then
     fConstDifficulty = 2.72
	 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"] then
     fConstDifficulty = 3.24
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_HARD"] then
     fConstDifficulty = 3.36
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"] then
     fConstDifficulty = 3.48
	 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"] then
     fConstDifficulty = 2.88
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_HARD"] then
     fConstDifficulty = 3.13
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"] then
     fConstDifficulty = 3.29
	 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"] then
     fConstDifficulty = 3.87
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_PLAIN_HARD"] then
     fConstDifficulty = 4.09
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"] then
     fConstDifficulty = 4.13
	 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"] then
     fConstDifficulty = 2.72
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_HARD"] then
     fConstDifficulty = 2.96
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"] then
     fConstDifficulty = 3.00
	 
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_CORE_NORMAL"] then
     fConstDifficulty = 4.51
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_CORE_HARD"] then
     fConstDifficulty = 4.54
	elseif nDungeonID == DUNGEON_ID["DI_ALTERA_CORE_EXPERT"] then
     fConstDifficulty = 4.65


	--벨더 수도 2010.11. 추가
    elseif nDungeonID == DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"] then
     fConstDifficulty = 4.00
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_THIRD_DWELLING_HARD"] then
     fConstDifficulty = 4.10
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_THIRD_DWELLING_EXPERT"] then
     fConstDifficulty = 4.20
	 
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"] then
     fConstDifficulty = 4.10
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_HARD"] then
     fConstDifficulty = 4.20
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_EXPERT"] then
     fConstDifficulty = 4.30
	 
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"] then
     fConstDifficulty = 4.80
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_HARD"] then
     fConstDifficulty = 4.85
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_EXPERT"] then
     fConstDifficulty = 4.90
	 
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"] then
     fConstDifficulty = 4.85
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_HARD"] then
     fConstDifficulty = 4.90
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_EXPERT"] then
     fConstDifficulty = 4.95
	 
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_MARKET_NORMAL"] then
     fConstDifficulty = 5.00
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_MARKET_HARD"] then
     fConstDifficulty = 5.10
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_MARKET_EXPERT"] then
     fConstDifficulty = 5.20
	 
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_GATE_NORMAL"] then
     fConstDifficulty = 5.50
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_GATE_HARD"] then
     fConstDifficulty = 5.60
	elseif nDungeonID == DUNGEON_ID["DI_VELDER_GATE_EXPERT"] then
     fConstDifficulty = 5.70

	 
	 -- 하멜 4개던전 1월 27일 추가
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"] then
     fConstDifficulty = 4.80
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_HARD"] then
     fConstDifficulty = 4.85
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_EXPERT"] then
     fConstDifficulty = 4.90
	 
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"] then
     fConstDifficulty = 4.85
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_HARD"] then
     fConstDifficulty = 4.90
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_EXPERT"] then
     fConstDifficulty = 4.95
	 
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"] then
     fConstDifficulty = 5.00
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_HARD"] then
     fConstDifficulty = 5.10
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_EXPERT"] then
     fConstDifficulty = 5.20
	 
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"] then
     fConstDifficulty = 5.10
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_HARD"] then
     fConstDifficulty = 5.20
	elseif nDungeonID == DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_EXPERT"] then
     fConstDifficulty = 5.30

	 end
  
	return fConstDifficulty

end


--------------------------------------------------------------------------------------------
--NOTE : 던전 콤보 결과처리
function DUNGEON_COMBO_RESULT( pUnitInfo, nDungeonID, nStartNumMember, nTotalKillCount )

	
	local fConstDifficulty = 0.0
	
	
	--던전상수 구하기
	fConstDifficulty = DUNGEON_DIFFICULTY_CONST( nDungeonID )
     
	--  11.23 던전상수 조정. 콤보/테크니컬 식에 추가 적용
	--
	--
	--
	local powConstDiff = math.pow(fConstDifficulty,0.80)
	 
    --만약의 사태를 대비해 초기값은 1.0으로 설정
	local fConstChar = 1.0
	
	--아직 프로그램 코드에는 아르메/리르로 되어 있답니다. ( --);;
	--캐릭터 상수구하기
		-- 누락 클래스 추가 2010.11
	    if pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ELSWORD_SWORDMAN"] then
	 fConstChar = 1.0
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ELSWORD_KNIGHT"] then
	 fConstChar = 1.0
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"] then
	 fConstChar = 1.0
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"] then
	 fConstChar = 1.0
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"] then
	 fConstChar = 1.0

	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ARME_VIOLET_MAGE"] then
	 fConstChar = 0.8
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"] then
	 fConstChar = 0.8
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ARME_DARK_MAGICIAN"] then
	 fConstChar = 0.8
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"] then
	 fConstChar = 0.8
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_ARME_VOID_PRINCESS"] then
	 fConstChar = 0.8

        elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_LIRE_ELVEN_RANGER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_LIRE_COMBAT_RANGER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_LIRE_SNIPING_RANGER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_LIRE_WIND_SNEAKER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_LIRE_GRAND_ARCHER"] then
	 fConstChar = 0.9

	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_RAVEN_FIGHTER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_RAVEN_OVER_TAKER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_RAVEN_SOUL_TAKER"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_RAVEN_BLADE_MASTER"] then
	 fConstChar = 0.9

	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_EVE_NASOD"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_EVE_CODE_EXOTIC"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_EVE_CODE_ACHITECTURE"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_EVE_CODE_NEMESIS"] then
	 fConstChar = 0.9
	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_EVE_CODE_EMPRESS"] then
	 fConstChar = 0.9

	elseif pUnitInfo:GetUnitClass() == UNIT_CLASS["UC_CHUNG_IRON_CANNON"] then
	 fConstChar = 1.0	 
	 
	 
	 
	end


	
	--콤보 최종수치구하기

	--최종추치에 따른 랭크값 구하기

        
	local iKillCount = 0

	local iLeastKillCount =  nTotalKillCount / (nStartNumMember*2)
	
	if pUnitInfo:GetKillNPC() < iLeastKillCount then
		iKillCount = iLeastKillCount
	else
		iKillCount = pUnitInfo:GetKillNPC()
        end


	local fTotalComboPercent = (pUnitInfo:GetComboScore()/(iKillCount * 7 )) / powConstDiff * fConstChar
	local nComboRank = RANK_TYPE["RT_F"]
	
	if fTotalComboPercent > 100 then
	 fTotalComboPercent = 100
	elseif fTotalComboPercent < 0 then
	 fTotalComboPercent = 0
	end
	
	
	--101124 백업
	--[[
	if fTotalComboPercent > 89 then
  	 nComboRank = RANK_TYPE["RT_S"]
    elseif fTotalComboPercent >= 80 then
  	 nComboRank = RANK_TYPE["RT_A"]
    elseif fTotalComboPercent >= 70 then
  	 nComboRank = RANK_TYPE["RT_B"]
    elseif fTotalComboPercent >= 60 then
  	 nComboRank = RANK_TYPE["RT_C"]
    elseif fTotalComboPercent >= 50 then
  	 nComboRank = RANK_TYPE["RT_D"]
    elseif fTotalComboPercent >= 40 then
  	 nComboRank = RANK_TYPE["RT_E"]
    else
     nComboRank = RANK_TYPE["RT_F"]
	end
	]]
	
		if fTotalComboPercent > 89 then
  	 nComboRank = RANK_TYPE["RT_S"]
    elseif fTotalComboPercent >= 80 then
  	 nComboRank = RANK_TYPE["RT_A"]
    elseif fTotalComboPercent >= 70 then
  	 nComboRank = RANK_TYPE["RT_B"]
    elseif fTotalComboPercent >= 50 then
  	 nComboRank = RANK_TYPE["RT_C"]
    elseif fTotalComboPercent >= 35 then
  	 nComboRank = RANK_TYPE["RT_D"]
    elseif fTotalComboPercent >= 20 then
  	 nComboRank = RANK_TYPE["RT_E"]
    else
     nComboRank = RANK_TYPE["RT_F"]
	end
	
	local fBonusPoint = 0.0
	if nComboRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.05
    elseif nComboRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.03
    elseif nComboRank == RANK_TYPE["RT_B"] then
	    fBonusPoint = 0.01
    end



	--결과를 프로그램에 넘겨준다. 
	pUnitInfo:SetResultData( fBonusPoint, nComboRank )
	
	return fTotalComboPercent

end


--------------------------------------------------------------------------------------------
--NOTE : 던전 예술점수 결과처리 
function DUNGEON_TECHNICAL_RESULT( pUnitInfo, nDungeonID, nStartNumMember, nTotalKillCount )

	--던전상수
	local fConstDifficulty = 0.0
	
	fConstDifficulty = DUNGEON_DIFFICULTY_CONST( nDungeonID )
	
	
	--  11.23 던전상수 조정. 콤보/테크니컬 식에 추가 적용
	--
	--
	--
	local powConstDiff = math.pow(fConstDifficulty,0.80)

	
	--Technical 최종값 구하기
		--죽인 몹의 수가 least kill count보다 작을 때 처리

	local iKillCount = 0

	local iLeastKillCount =  nTotalKillCount / (nStartNumMember*2)
	
	if pUnitInfo:GetKillNPC() < iLeastKillCount then
		iKillCount = iLeastKillCount
	else
		iKillCount = pUnitInfo:GetKillNPC()
        end


	local fTotalSkillPercent = (pUnitInfo:GetTechnicalScore() / (iKillCount * 3.5)) / ( powConstDiff * 0.9 )
	local nSkillRank = RANK_TYPE["RT_F"]
	
	if fTotalSkillPercent > 100 then
	 fTotalSkillPercent = 100
	elseif fTotalSkillPercent < 0 then
	 fTotalSkillPercent = 0
	end	
	
	--Technical 랭크 구하기

	
	
	--101124 백업
	--[[
	if fTotalSkillPercent > 84 then
  	 nSkillRank = RANK_TYPE["RT_S"]
    elseif (fTotalSkillPercent >= 75) then
  	 nSkillRank = RANK_TYPE["RT_A"]
    elseif (fTotalSkillPercent >= 65) then
  	 nSkillRank = RANK_TYPE["RT_B"]
    elseif (fTotalSkillPercent >= 55) then
  	 nSkillRank = RANK_TYPE["RT_C"]
    elseif (fTotalSkillPercent >= 45) then
  	 nSkillRank = RANK_TYPE["RT_D"]
    elseif (fTotalSkillPercent >= 35) then
  	 nSkillRank = RANK_TYPE["RT_E"]
    else
     nSkillRank = RANK_TYPE["RT_F"]
	end
	]]
	
	if fTotalSkillPercent > 84 then
  	 nSkillRank = RANK_TYPE["RT_S"]
    elseif (fTotalSkillPercent >= 75) then
  	 nSkillRank = RANK_TYPE["RT_A"]
    elseif (fTotalSkillPercent >= 65) then
  	 nSkillRank = RANK_TYPE["RT_B"]
    elseif (fTotalSkillPercent >= 50) then
  	 nSkillRank = RANK_TYPE["RT_C"]
    elseif (fTotalSkillPercent >= 35) then
  	 nSkillRank = RANK_TYPE["RT_D"]
    elseif (fTotalSkillPercent >= 20) then
  	 nSkillRank = RANK_TYPE["RT_E"]
    else
     nSkillRank = RANK_TYPE["RT_F"]
	end


	
	local fBonusPoint = 0.0
	if nSkillRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.05
    elseif nSkillRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.03
    elseif nSkillRank == RANK_TYPE["RT_B"] then
	    fBonusPoint = 0.01
    end

	

	pUnitInfo:SetResultData( fBonusPoint, nSkillRank )
	
	return fTotalSkillPercent
end


--------------------------------------------------------------------------------------------
--NOTE : 던전 피격획수 결과처리
function DUNGEON_DAMAGE_RESULT( pUnitInfo, nDungeonID )

	local fConstDifficulty = 0.0

	fConstDifficulty = DUNGEON_DIFFICULTY_CONST( nDungeonID )

	local fDamageNum = 100.0 - ((pUnitInfo:GetDamageNum() * 20 ) / (pUnitInfo:GetKillNPC()*fConstDifficulty))

	if fDamageNum < 1 then
	 fDamageNum = 0
	end
	
		
	--기존 local fTotalDamagePercent = fDamageNum * fConstDifficulty
	local fTotalDamagePercent = fDamageNum
	
	local nDamageRank = RANK_TYPE["RT_F"]
	
	if fTotalDamagePercent < 0 then
	 fTotalDamagePercent = 0
	elseif fTotalDamagePercent > 100 then
	 fTotalDamagePercent = 100
	end
	--[[
	if fTotalDamagePercent > 94 then
  	 nDamageRank = RANK_TYPE["RT_SS"]
    elseif fTotalDamagePercent >= 90 then
  	 nDamageRank = RANK_TYPE["RT_S"]
    elseif fTotalDamagePercent >= 85 then
  	 nDamageRank = RANK_TYPE["RT_A_PLUS"]
    elseif fTotalDamagePercent >= 80 then
  	 nDamageRank = RANK_TYPE["RT_A"]
    elseif fTotalDamagePercent >= 75 then
  	 nDamageRank = RANK_TYPE["RT_B_PLUS"]
    elseif fTotalDamagePercent >= 70 then
  	 nDamageRank = RANK_TYPE["RT_B"]
    elseif fTotalDamagePercent >= 65 then
  	 nDamageRank = RANK_TYPE["RT_C_PLUS"]
    elseif fTotalDamagePercent >= 60 then
  	 nDamageRank = RANK_TYPE["RT_C"]
    elseif fTotalDamagePercent >= 50 then
  	 nDamageRank = RANK_TYPE["RT_D"]
    elseif fTotalDamagePercent >= 40 then
  	 nDamageRank = RANK_TYPE["RT_E"]
    else
     nDamageRank = RANK_TYPE["RT_F"]
	end
	
	local fBonusPoint = 0.0
	if nDamageRank == RANK_TYPE["RT_SS"] then
	    fBonusPoint = 0.03
    elseif nDamageRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.02
    elseif nDamageRank == RANK_TYPE["RT_A_PLUS"] then
	    fBonusPoint = 0.02
    elseif nDamageRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.01
    elseif nDamageRank == RANK_TYPE["RT_B_PLUS"] then
	    fBonusPoint = 0.01
	end
	--]]
	
 	if fTotalDamagePercent > 89 then
  	 nDamageRank = RANK_TYPE["RT_S"]
    elseif fTotalDamagePercent >= 80 then
  	 nDamageRank = RANK_TYPE["RT_A"]
    elseif fTotalDamagePercent >= 70 then
  	 nDamageRank = RANK_TYPE["RT_B"]
    elseif fTotalDamagePercent >= 60 then
  	 nDamageRank = RANK_TYPE["RT_C"]
    elseif fTotalDamagePercent >= 50 then
  	 nDamageRank = RANK_TYPE["RT_D"]
    elseif fTotalDamagePercent >= 40 then
  	 nDamageRank = RANK_TYPE["RT_E"]
    else
     nDamageRank = RANK_TYPE["RT_F"]
	end
	
	local fBonusPoint = 0.0
	if nDamageRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.03
    elseif nDamageRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.02
    elseif nDamageRank == RANK_TYPE["RT_B"] then
	    fBonusPoint = 0.01
    end

	
	pUnitInfo:SetResultData( fBonusPoint, nDamageRank )

end


--------------------------------------------------------------------------------------------
--NOTE : 던전 게임시간 결과처리
function DUNGEON_TIME_RESULT( pUnitInfo, nTotalKillNPCNum, nAvLevel, nPlayTime, nDungeonID )

	--팀평균레벨 - 던전레벨
	local nX = nAvLevel - 1
	local fConstX = 0.0

	--X 상수
	if nX < 0 then
	 fConstX = 1.0
	elseif nX <= 10 then
	 fConstX = 1.0
	elseif nX <= 30 then
	 fConstX = 0.8
    elseif nX <= 50 then
	 fConstX = 0.7
    elseif nX > 50 then
	 fConstX = 0.6
	end
	
	--local fConstDifficulty = 0.0
	
	--던전상수
	--fConstDifficulty = DUNGEON_DIFFICULTY_CONST( nDungeonID )
	
	local fTotalResult = (nPlayTime / nTotalKillNPCNum) / fConstX
	local nTimeRank = RANK_TYPE["RT_F"]
	
	--[[
	if fTotalResult <= 10 then
	 nTimeRank = RANK_TYPE["RT_SS"]
	elseif fTotalResult <= 12 then
  	 nTimeRank = RANK_TYPE["RT_S"]
    elseif fTotalResult <= 15 then
  	 nTimeRank = RANK_TYPE["RT_A_PLUS"]
    elseif fTotalResult <= 20 then
  	 nTimeRank = RANK_TYPE["RT_A"]
    elseif fTotalResult <= 25 then
  	 nTimeRank = RANK_TYPE["RT_B_PLUS"]
    elseif fTotalResult <= 30 then
  	 nTimeRank = RANK_TYPE["RT_B"]
    elseif fTotalResult <= 40 then
  	 nTimeRank = RANK_TYPE["RT_C_PLUS"]
    elseif fTotalResult <= 50 then
  	 nTimeRank = RANK_TYPE["RT_C"]
    elseif fTotalResult <= 60 then
  	 nTimeRank = RANK_TYPE["RT_D"]
    elseif fTotalResult <= 70 then
  	 nTimeRank = RANK_TYPE["RT_E"]
    else
  	 nTimeRank = RANK_TYPE["RT_F"]
	end
	
	local fBonusPoint = 0.0
	if nTimeRank == RANK_TYPE["RT_SS"] then
	    fBonusPoint = 0.03
    elseif nTimeRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.02
    elseif nTimeRank == RANK_TYPE["RT_A_PLUS"] then
	    fBonusPoint = 0.02
    elseif nTimeRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.01
    elseif nTimeRank == RANK_TYPE["RT_B_PLUS"] then
	    fBonusPoint = 0.01
	end
	--]]

	if fTotalResult <= 15 then
	 nTimeRank = RANK_TYPE["RT_S"]
    elseif fTotalResult <= 20 then
  	 nTimeRank = RANK_TYPE["RT_A"]
    elseif fTotalResult <= 30 then
  	 nTimeRank = RANK_TYPE["RT_B"]
    elseif fTotalResult <= 40 then
  	 nTimeRank = RANK_TYPE["RT_C"]
    elseif fTotalResult <= 60 then
  	 nTimeRank = RANK_TYPE["RT_D"]
    elseif fTotalResult <= 80 then
  	 nTimeRank = RANK_TYPE["RT_E"]
    else
  	 nTimeRank = RANK_TYPE["RT_F"]
	end
	
	local fBonusPoint = 0.0
	if nTimeRank == RANK_TYPE["RT_S"] then
	    fBonusPoint = 0.03
    elseif nTimeRank == RANK_TYPE["RT_A"] then
	    fBonusPoint = 0.02
    elseif nTimeRank == RANK_TYPE["RT_B"] then
	    fBonusPoint = 0.01
	end
	

	
	
	
	pUnitInfo:SetResultData( fBonusPoint, nTimeRank )
	
	return nTimeRank
end


--------------------------------------------------------------------------------------------
--던전게임 중도 이탈 패널티-return -> float
function DUNGEON_MIDWAY_END( nUnitLevel )
	local fLevelConst = 0.0
	--레벨상수 인자(Unit Level - Dungeon Level)
	local nTemp = nUnitLevel - 1

	--레벨상수 구하기
	if nTemp < 0 then
		fLevelConst = 1.0
	elseif (10 >= nTemp) and (nTemp > 0) then
		fLevelConst = 0.8
	elseif (30 >= nTemp) and (nTemp > 10) then
		fLevelConst = 0.6
	elseif (50 >= nTemp) and (nTemp > 30) then
		fLevelConst = 0.3
	else
		fLevelConst = 0.0
	end

	local nGP = (1 * 100) * (1 + math.abs(fLevelConst-1))
end
