-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pWorldManager:AddWorldData 
{
	worldID			= WORLD_ID["WI_SQUARE"],
	worldName		= "WI_SQUARE",
	dataFileName	= "square.lua",
}


-------------------------------------------------------------------------------------------------------

-- 튜토리얼 
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TUTORIAL"],
	worldName		= "WI_TUTORIAL",
	dataFileName	= "ElTutorial.lua",
}

-- 튜토리얼 
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVE_TUTORIAL"],
	worldName		= "WI_EVE_TUTORIAL",
	dataFileName	= "EveTutorial.lua",
}



-- 몬스터 테스트용 월드
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_MONSTER_TEST_WORLD"],
	worldName		= "WI_MONSTER_TEST_WORLD",
	dataFileName	= "MonsterTestWorld.lua",
}


-- 월드툴용 테스트 월드
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_WORLDTOOL_DEFAULT"],
	worldName		= "WI_WORLDTOOL_DEFAULT",
	dataFileName	= "World_WorldTool_Default.lua",
}







-------------------------------------------------------------------------------------------------------
-- 훈련소
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TRAINING_CENTER_STAGE1"],
	worldName		= "WI_TRAINING_CENTER_STAGE1",
	dataFileName	= "TrainingCenter_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TRAINING_CENTER_STAGE2"],
	worldName		= "WI_TRAINING_CENTER_STAGE2",
	dataFileName	= "TrainingCenter_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TRAINING_CENTER_STAGE3"],
	worldName		= "WI_TRAINING_CENTER_STAGE3",
	dataFileName	= "TrainingCenter_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TRAINING_CENTER_STAGE4"],
	worldName		= "WI_TRAINING_CENTER_STAGE4",
	dataFileName	= "TrainingCenter_Stage4.lua",
}



g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],
	worldName		= "WI_TRAINING_CENTER_FREESTAGE",
	dataFileName	= "TrainingCenter_FreeStage.lua",
}






-------------------------------------------------------------------------------------------------------
-- 새마을
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_RUBEN"],
	worldName		= "WI_VILLAGE_RUBEN", 
	dataFileName	= "ruben_village.lua",
	--dataFileName	= "ruben_village_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_ELDER"],
	worldName		= "WI_VILLAGE_ELDER",
	dataFileName	= "Elder_village.lua",
	--dataFileName	= "Elder_village_Festival.lua", --공존의 축제
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_BESMA"],
	worldName		= "WI_VILLAGE_BESMA",
	dataFileName	= "Besma_Village.lua",
	--dataFileName	= "Besma_Village_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_ALTERA"],
	worldName		= "WI_VILLAGE_ALTERA",
	dataFileName	= "Altera_Village.lua",
	--dataFileName	= "Altera_Village_Festival.lua", --공존의 축제
}



-------------------------------------------------------------------------------------------------------
-- 던전 게이트
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_GATE_RUBEN"],
	worldName		= "WI_DUNGEON_GATE_RUBEN",
	dataFileName	= "Ruben_Dungeon_Gate.lua",
	--dataFileName	= "Ruben_Dungeon_Gate_S.lua",
	--dataFileName	= "Ruben_Dungeon_Gate_S_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_GATE_ELDER"],
	worldName		= "WI_DUNGEON_GATE_ELDER",
	dataFileName	= "Elder_Dungeon_Gate.lua",
	--dataFileName	= "Elder_Dungeon_Gate_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_GATE_BESMA"],
	worldName		= "WI_DUNGEON_GATE_BESMA",
	dataFileName	= "Besma_Altera_Dungeon_Gate.lua",
	--dataFileName	= "Besma_Altera_Dungeon_Gate_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_GATE_ALTERA"],
	worldName		= "WI_DUNGEON_GATE_ALTERA",
	dataFileName	= "Altera_Dungeon_Gate.lua",
	--dataFileName	= "Altera_Dungeon_Gate_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_PEITA"],
	worldName		= "WI_VILLAGE_PEITA",
	dataFileName	= "Field_Peita_Villeage.lua",
	--dataFileName	= "Field_Peita_Villeage_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_VELDER"],
	worldName		= "WI_VILLAGE_VELDER",
	dataFileName	= "Velder_village.lua",
	--dataFileName	= "Velder_village_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_GATE_VELDER"],
	worldName		= "WI_DUNGEON_GATE_VELDER",
	dataFileName	= "Velder_DG.lua",
	--dataFileName	= "Velder_DG_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_HAMEL"],
	worldName		= "WI_VILLAGE_HAMEL",
	dataFileName	= "Village_Hamel.lua",
	--dataFileName	= "Village_Hamel_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_GATE_HAMEL"],
	worldName		= "WI_DUNGEON_GATE_HAMEL",
	dataFileName	= "Hamel_DG.lua",
	--dataFileName	= "Hamel_DG_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VILLAGE_SANDER"],
	worldName		= "WI_VILLAGE_SANDER",
	dataFileName	= "Villeage_Sander.lua",
	--dataFileName	= "Villeage_Sander_Festival.lua", --공존의 축제
}


-------------------------------------------------------------------------------------------------------
--초심자의 숲 

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NOVICE_FOREST_STAGE1"],
	worldName		= "WI_NOVICE_FOREST_STAGE1",
	dataFileName	= "El_Forest_Gate_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NOVICE_FOREST_STAGE2"],
	worldName		= "WI_NOVICE_FOREST_STAGE2",
	dataFileName	= "El_Forest_Gate_Stage2.lua",
}




--------------------------------------------------------------------------------------------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_FOREST_OF_EL"],
	worldName		= "ElTreeDown",
	dataFileName	= "ElTreeDown.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_TREE_OF_LIGHT_TOP"],
	worldName		= "TreeOfLightTop",
	dataFileName	= "Ruben_El_Tree_Stage_Pvp.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MAIN_STAGE1"],	
	worldName		= "WI_EL_FOREST_MAIN_STAGE1",	
	dataFileName	= "El_Forest_Main_Stage1.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MAIN_STAGE2"],	
	worldName		= "WI_EL_FOREST_MAIN_STAGE2",	
	dataFileName	= "El_Forest_Main_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MAIN_STAGE3"],
	worldName		= "WI_EL_FOREST_MAIN_STAGE3",
	dataFileName	= "El_Forest_Main_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],
	worldName		= "WI_EL_FOREST_MAIN_STAGE4",
	dataFileName	= "El_Forest_Main_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_WEST_STAGE1"],
	worldName		= "WI_EL_FOREST_WEST_STAGE1",
	dataFileName	= "El_Forest_West_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_WEST_STAGE1_1"],
	worldName		= "WI_EL_FOREST_WEST_STAGE1_1",
	dataFileName	= "El_Forest_West_Stage1-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_WEST_STAGE2"],
	worldName		= "WI_EL_FOREST_WEST_STAGE2",
	dataFileName	= "El_Forest_West_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_WEST_STAGE2_1"],
	worldName		= "WI_EL_FOREST_WEST_STAGE2_1",
	dataFileName	= "El_Forest_West_Stage2-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
	worldName		= "WI_EL_FOREST_WEST_STAGE3",
	dataFileName	= "El_Forest_West_Stage3.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MAIN_STAGE2_1"],
	worldName		= "WI_EL_FOREST_MAIN_STAGE2_1",
	dataFileName	= "El_Forest_Main_Stage2-1.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MAIN_STAGE3_1"],
	worldName		= "WI_EL_FOREST_MAIN_STAGE3_1",
	dataFileName	= "El_Forest_Main_Stage3-1.lua",
}



-------------------------------------------------------------------------------------------------------
--엘의 숲 메인 엑스트라 스테이지
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_STAGE1"],	
	worldName		= "WI_EL_FOREST_EXTRA_STAGE1",	
	dataFileName	= "El_Forest_Extra_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_STAGE2"],	
	worldName		= "WI_EL_FOREST_EXTRA_STAGE2",	
	dataFileName	= "El_Forest_Extra_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_STAGE3"],	
	worldName		= "WI_EL_FOREST_EXTRA_STAGE3",	
	dataFileName	= "El_Forest_Extra_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],	
	worldName		= "WI_EL_FOREST_EXTRA_STAGE4",	
	dataFileName	= "El_Forest_Extra_Stage4.lua",
}


--엘의 숲 북쪽 엑스트라 동굴 스테이지


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE1"],
	worldName		= "WI_EL_FOREST_EXTRA_CAVE_STAGE1",
	dataFileName	= "El_Forest_Extra_Cave_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE2"],
	worldName		= "WI_EL_FOREST_EXTRA_CAVE_STAGE2",
	dataFileName	= "El_Forest_Extra_Cave_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE3"],
	worldName		= "WI_EL_FOREST_EXTRA_CAVE_STAGE3",
	dataFileName	= "El_Forest_Extra_Cave_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE4"],
	worldName		= "WI_EL_FOREST_EXTRA_CAVE_STAGE4",
	dataFileName	= "El_Forest_Extra_Cave_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],
	worldName		= "WI_EL_FOREST_EXTRA_CAVE_STAGE5",
	dataFileName	= "El_Forest_Extra_Cave_Stage5.lua",
}




-------------------------------------------------------------------------------------------------------
--엘의 숲 북쪽 
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE1"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE1",
	dataFileName	= "El_Forest_North_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE1_1",
	dataFileName	= "El_Forest_North_Stage1-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1B"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE1_1B",
	dataFileName	= "El_Forest_North_Stage1-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE2"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE2",
	dataFileName	= "El_Forest_North_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE2B"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE2B",
	dataFileName	= "El_Forest_North_Stage2B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE2_1"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE2_1",
	dataFileName	= "El_Forest_North_Stage2-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE2_1B"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE2_1B",
	dataFileName	= "El_Forest_North_Stage2-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE3",
	dataFileName	= "El_Forest_North_Stage3.lua",
}


-- 북쪽 Mirror MAP 
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE1_1B_MIRROR"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE1_1B_MIRROR",
	dataFileName	= "El_Forest_North_Stage1-1B_Mirror.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_NORTH_STAGE2_1_MIRROR"],
	worldName		= "WI_EL_FOREST_NORTH_STAGE2_1_MIRROR",
	dataFileName	= "El_Forest_North_Stage2-1_Mirror.lua",
}





-------------------------------------------------------------------------------------------------------
--벤더스의 동굴 

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE1"],			-- WI_ELDER_NATURE_CAVE_STAGE1과 랜덤
	worldName		= "WI_ELDER_BENDERS_CAVE_STAGE1",
	dataFileName	= "Elder_Benders_Cave_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE1_1"],		-- WI_ELDER_NATURE_CAVE_STAGE1-1과 랜덤		
	worldName		= "WI_ELDER_BENDERS_CAVE_STAGE1_1",
	dataFileName	= "Elder_Benders_Cave_Stage1-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE2"], 		-- WI_ELDER_NATURE_CAVE_STAGE2와 랜덤
	worldName		= "WI_ELDER_BENDERS_CAVE_STAGE2",
	dataFileName	= "Elder_Benders_Cave_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE2_1"],		-- WI_ELDER_NATURE_CAVE_STAGE2-1과 랜덤
	worldName		= "WI_ELDER_BENDERS_CAVE_STAGE2_1",
	dataFileName	= "Elder_Benders_Cave_Stage2-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],			
	worldName		= "WI_ELDER_BENDERS_CAVE_STAGE3",
	dataFileName	= "Elder_Benders_Cave_Stage3.lua",
}




--천연동굴
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE1"],			-- WI_ELDER_BENDERS_CAVE_STAGE1과 랜덤 
	worldName		= "WI_ELDER_NATURE_CAVE_STAGE1",
	dataFileName	= "Elder_Nature_Cave_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE1_1"],		-- WI_ELDER_BENDERS_CAVE_STAGE1-1과 랜덤 
	worldName		= "WI_ELDER_NATURE_CAVE_STAGE1_1",
	dataFileName	= "Elder_Nature_Cave_Stage1-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE2"],			-- WI_ELDER_BENDERS_CAVE_STAGE2와 랜덤 
	worldName		= "WI_ELDER_NATURE_CAVE_STAGE2",
	dataFileName	= "Elder_Nature_Cave_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE2_1"],		-- WI_ELDER_BENDERS_CAVE_STAGE2-1과 랜덤 
	worldName		= "WI_ELDER_NATURE_CAVE_STAGE2_1",
	dataFileName	= "Elder_Nature_Cave_Stage2-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],			
	worldName		= "WI_ELDER_NATURE_CAVE_STAGE3",
	dataFileName	= "Elder_Nature_Cave_Stage3.lua",
}



-- 드루이드의 숲

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE1"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE1",
	dataFileName	= "Elder_Druid_Forest_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE1_1A"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE1_1A",
	dataFileName	= "Elder_Druid_Forest_Stage1-1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE1_1B"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE1_1B",
	dataFileName	= "Elder_Druid_Forest_Stage1-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2A"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE2A",
	dataFileName	= "Elder_Druid_Forest_Stage2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2B"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE2B",
	dataFileName	= "Elder_Druid_Forest_Stage2B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2_1A"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE2_1A",
	dataFileName	= "Elder_Druid_Forest_Stage2-1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE2_1B"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE2_1B",
	dataFileName	= "Elder_Druid_Forest_Stage2-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],
	worldName		= "WI_ELDER_DRUID_FOREST_STAGE3",
	dataFileName	= "Elder_Druid_Forest_Stage3.lua",
}











-- 월리성 Roof

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_ROOF_STAGE1",
	dataFileName	= "Elder_Wally_Castle_Roof_Stage1.lua",
}

g_pWorldManager:AddWorldData                                                    --   WI_ELDER_WALLY_CASTLE_CENTER_STAGE1-1과 랜덤
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE1_1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_ROOF_STAGE1_1",
	dataFileName	= "Elder_Wally_Castle_Roof_Stage1_1.lua",
}

g_pWorldManager:AddWorldData                                                    --   WI_ELDER_WALLY_CASTLE_CENTER_STAGE2와 랜덤
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE2"],
	worldName		= "WI_ELDER_WALLY_CASTLE_ROOF_STAGE2",
	dataFileName	= "Elder_Wally_Castle_Roof_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE2_1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_ROOF_STAGE2_1",
	dataFileName	= "Elder_Wally_Castle_Roof_Stage2_1.lua",
}

g_pWorldManager:AddWorldData                                                    --   WI_ELDER_WALLY_CASTLE_CENTER_STAGE1-1과 랜덤
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE3"],
	worldName		= "WI_ELDER_WALLY_CASTLE_ROOF_STAGE3",
	dataFileName	= "Elder_Wally_Castle_Roof_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],
	worldName		= "WI_ELDER_WALLY_CASTLE_ROOF_STAGE4",
	dataFileName	= "Elder_Wally_Castle_Roof_Stage4.lua",
}



-- 월리성 Center

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_CENTER_STAGE1",
	dataFileName	= "Elder_Wally_Castle_Center_Stage1.lua",
}

g_pWorldManager:AddWorldData
{                                                                               --   WI_ELDER_WALLY_CASTLE_ROOF_STAGE1-1/WI_ELDER_WALLY_CASTLE_ROOF_STAGE3과 랜덤
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE1_1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_CENTER_STAGE1_1",
	dataFileName	= "Elder_Wally_Castle_Center_Stage1_1.lua",
}

g_pWorldManager:AddWorldData                                                    --   WI_ELDER_WALLY_CASTLE_ROOF_STAGE2와 랜덤
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE2"],
	worldName		= "WI_ELDER_WALLY_CASTLE_CENTER_STAGE2",
	dataFileName	= "Elder_Wally_Castle_Center_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE2_1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_CENTER_STAGE2_1",
	dataFileName	= "Elder_Wally_Castle_Center_Stage2_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE3"],
	worldName		= "WI_ELDER_WALLY_CASTLE_CENTER_STAGE3",
	dataFileName	= "Elder_Wally_Castle_Center_Stage3.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],
	worldName		= "WI_ELDER_WALLY_CASTLE_CENTER_STAGE4",
	dataFileName	= "Elder_Wally_Castle_Center_Stage4.lua",
}








-- EXTRA CAVE

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_EXTRA_CAVE_STAGE1"],
	worldName		= "WI_ELDER_EXTRA_CAVE_STAGE1",
	dataFileName	= "Elder_Extra_Cave_Stage1.lua",
}

g_pWorldManager:AddWorldData
{                                                                             
	worldID			= WORLD_ID["WI_ELDER_EXTRA_CAVE_STAGE2"],
	worldName		= "WI_ELDER_EXTRA_CAVE_STAGE2",
	dataFileName	= "Elder_Extra_Cave_Stage2.lua",
}






-- 지하수로

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE1"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE1",
	dataFileName	= "Elder_Below_Passage_stage1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE2A"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE2A",
	dataFileName	= "Elder_below_passage_stage2A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE2B"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE2B",
	dataFileName	= "Elder_below_passage_stage2B.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE3A"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE3A",
	dataFileName	= "Elder_Below_Passage_stage3A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE3B"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE3B",
	dataFileName	= "Elder_Below_Passage_stage3B.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE4",
	dataFileName	= "Elder_Below_Passage_stage4.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE2_1A"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE2_1A",
	dataFileName	= "Elder_below_passage_stage2_1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE2_1B"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE2_1B",
	dataFileName	= "Elder_below_passage_stage2_1B.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE3_1A"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE3_1A",
	dataFileName	= "Elder_Below_Passage_stage3_1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE3_1B"],
	worldName		= "WI_ELDER_BELOW_PASSAGE_STAGE3_1B",
	dataFileName	= "Elder_Below_Passage_stage3_1B.lua",
}


-------------------------------------------------------------------------------------------------------
-- 여기서 부터 개편 라인맵이 추가 됩니다. 
-- 지하수로(스테이지 3-1B)

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_BELOW_PASSAGE_STAGE3_1B"],
	worldName		= "WI_NEW_ELDER_BELOW_PASSAGE_STAGE3_1B",
	dataFileName	= "New_Elder_Below_Passage_Stage3_1B.lua",
}
-------------------------------------------------------------------------------------------------------
-- 엘더개편 : 윌리 성 지붕(t스테이지 2)

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE2"],
	worldName		= "WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE2",
	dataFileName	= "New_Elder_Wally_Castle_Roof_Stage2.lua",
}
-------------------------------------------------------------------------------------------------------
-- 엘더개편 : 윌리 성 지붕(t스테이지 2_1)

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE2_1"],
	worldName		= "WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE2_1",
	dataFileName	= "New_Elder_Wally_Castle_Roof_Stage2_1.lua",
}

-------------------------------------------------------------------------------------------------------
-- 엘더개편 : 윌리 성 지붕(t스테이지 1_1)

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE1_1"],
	worldName		= "WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE1_1",
	dataFileName	= "New_Elder_Wally_Castle_Roof_Stage1_1.lua",
}

-- 엘더개편 : 윌리 성 지붕(t스테이지 3)

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE3"],
	worldName		= "WI_NEW_ELDER_WALLY_CASTLE_ROOF_STAGE3",
	dataFileName	= "New_Elder_Wally_Castle_Roof_Stage3.lua",
}

-- 엘더개편 : 윌리 성(스테이지 2_1) & 스테이지 1_1

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_CENTER_STAGE2_1"],
	worldName		= "WI_NEW_ELDER_WALLY_CASTLE_CENTER_STAGE2_1",
	dataFileName	= "New_Elder_Wally_Castle_Center_Stage2_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_ELDER_WALLY_CASTLE_CENTER_STAGE1_1"],
	worldName		= "WI_NEW_ELDER_WALLY_CASTLE_CENTER_STAGE1_1",
	dataFileName	= "New_Elder_Wally_Castle_Center_Stage1_1.lua",
}


















-------------------------------------------------------------------------------------------------------
-- 엘더 : 비밀던전? 

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE1"],
	worldName		= "WI_ELDER_WALLY_CASTLE_LAB_STAGE1",
	dataFileName	= "Elder_Wally_Castle_Lab_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE2"],
	worldName		= "WI_ELDER_WALLY_CASTLE_LAB_STAGE2",
	dataFileName	= "Elder_Wally_Castle_Lab_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE3"],
	worldName		= "WI_ELDER_WALLY_CASTLE_LAB_STAGE3",
	dataFileName	= "Elder_Wally_Castle_Lab_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE4"],
	worldName		= "WI_ELDER_WALLY_CASTLE_LAB_STAGE4",
	dataFileName	= "Elder_Wally_Castle_Lab_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],
	worldName		= "WI_ELDER_WALLY_CASTLE_LAB_STAGE5",
	dataFileName	= "Elder_Wally_Castle_Lab_Stage5.lua",
}

--엘더 비던 추가 월드--

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_SECRET_STAGE4"],
	worldName		= "WI_ELDER_SECRET_STAGE4",
	dataFileName	= "Elder_Secret_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_SECRET_BOSS"],
	worldName		= "WI_ELDER_SECRET_BOSS",
	dataFileName	= "Elder_Secret_Boss.lua",
}

--엘더 엑스트라 월드--

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE1"],
	worldName		= "WI_ELDER_HELL_EXTRA_STAGE1",
	dataFileName	= "Elder_Hell_Extra_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE2"],
	worldName		= "WI_ELDER_HELL_EXTRA_STAGE2",
	dataFileName	= "Elder_Hell_Extra_Stage2.lua",
}
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE3"],
	worldName		= "WI_ELDER_HELL_EXTRA_STAGE3",
	dataFileName	= "Elder_Hell_Extra_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE4"],
	worldName		= "WI_ELDER_HELL_EXTRA_STAGE4",
	dataFileName	= "Elder_Hell_Extra_Stage4.lua",
	
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE5"],
	worldName		= "WI_ELDER_HELL_EXTRA_STAGE5",
	dataFileName	= "Elder_hell_Extra_Boss.lua",
	
}

-------------------------------------------------------------------------------------------------------
-- 베스마: 드래곤 로드

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE1"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE1",
	dataFileName	= "Besma_Dragon_Road_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE2A"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE2A",
	dataFileName	= "Besma_Dragon_Road_Stage2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE2B"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE2B",
	dataFileName	= "Besma_Dragon_Road_Stage2B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE2_1A"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE2_1A",
	dataFileName	= "Besma_Dragon_Road_Stage2-1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE2_1B"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE2_1B",
	dataFileName	= "Besma_Dragon_Road_Stage2-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE3"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE3",
	dataFileName	= "Besma_Dragon_Road_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],
	worldName		= "WI_BESMA_DRAGON_ROAD_STAGE4",
	dataFileName	= "Besma_Dragon_Road_Stage4.lua",
}



------------------------베스마 개편: 용의 길 스테이지 1 ---------------------------------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE1"],
	worldName		= "WI_NEW_BESMA_DRAGON_ROAD_STAGE1",
	dataFileName	= "New_Besma_Dragon_Road_Stage1.lua",
}



------------------------베스마 개편: 용의 길 스테이지 추가된 월드 ID------------------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2A"],
	worldName		= "WI_NEW_BESMA_DRAGON_ROAD_STAGE2A",
	dataFileName	= "New_Besma_Dragon_Road_Stage2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2_1B"],
	worldName		= "WI_NEW_BESMA_DRAGON_ROAD_STAGE2_1B",
	dataFileName	= "New_Besma_Dragon_Road_Stage2_1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE4"],
	worldName		= "WI_NEW_BESMA_DRAGON_ROAD_STAGE4",
	dataFileName	= "New_Besma_Dragon_Road_Stage4.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2B"],
	worldName		= "WI_NEW_BESMA_DRAGON_ROAD_STAGE2B",
	dataFileName	= "New_Besma_Dragon_Road_Stage2B.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE2_1A"],
	worldName		= "WI_NEW_BESMA_DRAGON_ROAD_STAGE2_1A",
	dataFileName	= "New_Besma_Dragon_Road_Stage2_1A.lua",
}






----------------------베스마 개편 베스마 호수 개편 추가 월드 ID---------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_LAKE_STAGE1"],
	worldName		= "WI_NEW_BESMA_LAKE_STAGE1",
	dataFileName	= "New_Besma_Besma_Lake_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_LAKE_STAGE2A"],
	worldName		= "WI_NEW_BESMA_LAKE_STAGE2A",
	dataFileName	= "New_Besma_Besma_Lake_Stage2A.lua",
}

----------------------베스마 개편 베스마 호수(밤) 개편 추가 월드 ID---------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_LAKE_NIGHT_STAGE1"],
	worldName		= "WI_NEW_BESMA_LAKE_NIGHT_STAGE1",
	dataFileName	= "New_Besma_Besma_Lake_Night_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_LAKE_NIGHT_STAGE2A"],
	worldName		= "WI_NEW_BESMA_LAKE_NIGHT_STAGE2A",
	dataFileName	= "New_Besma_Besma_Lake_Night_Stage2A.lua",
}




----------------------베스마 개편 : 용의 둥지 월드 ID 추가 -----------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_NEST_STAGE1"],
	worldName		= "WI_NEW_BESMA_DRAGON_NEST_STAGE1",
	dataFileName	= "New_Besma_Dragon_Nest_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_DRAGON_NEST_STAGE2_1B"],
	worldName		= "WI_NEW_BESMA_DRAGON_NEST_STAGE2_1B",
	dataFileName	= "New_Besma_Dragon_Nest_Stage2_1B.lua",
}

----------------------베스마 개편 : 리치광산 입구 월드 ID 추가 -----------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_MINE_STAGE2A"],
	worldName		= "WI_NEW_BESMA_MINE_STAGE2A",
	dataFileName	= "New_Besma_Besma_Mine_Stage2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_MINE_STAGE2_2A"],
	worldName		= "WI_NEW_BESMA_MINE_STAGE2_2A",
	dataFileName	= "New_Besma_Besma_Mine_Stage2_2A.lua",
}

----------------------베스마 개편 : 수송 비공 ID 추가 -----------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_NEW_BESMA_AIRSHIP_STAGE1"],
	worldName		= "WI_NEW_BESMA_AIRSHIP_STAGE1",
	dataFileName	= "New_Besma_Air_Ship_Stage1.lua",
}









-------------------------------------------------------------------------------------------------------
-- 베스마: 탄광
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE_STAGE1"],
	worldName		= "WI_BESMA_MINE_STAGE1",
	dataFileName	= "Besma_besma_mine_s1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE_STAGE2A"],
	worldName		= "WI_BESMA_MINE_STAGE2A",
	dataFileName	= "Besma_besma_mine_s2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE_STAGE2_1A"],
	worldName		= "WI_BESMA_MINE_STAGE2_1A",
	dataFileName	= "Besma_besma_Mine_s2_1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE_STAGE2_2A"],
	worldName		= "WI_BESMA_MINE_STAGE2_2A",
	dataFileName	= "Besma_besma_mine_s2_2A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE_STAGE3A"],
	worldName		= "WI_BESMA_MINE_STAGE3A",
	dataFileName	= "Besma_besma_mine_s3A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE_STAGE4"],
	worldName		= "WI_BESMA_MINE_STAGE4",
	dataFileName	= "besma_Besma_Mine_Stage4.lua",
}









-------------------------------------------------------------------------------------------------------
-- 베스마: 호수
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_STAGE1"],
	worldName		= "WI_BESMA_LAKE_STAGE1",
	dataFileName	= "Besma_Besma_Lake_Stage1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_STAGE2A"],
	worldName		= "WI_BESMA_LAKE_STAGE2A",
	dataFileName	= "Besma_Besma_Lake_Stage2A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_STAGE2_1A"],
	worldName		= "WI_BESMA_LAKE_STAGE2_1A",
	dataFileName	= "Besma_Besma_Lake_Stage2-1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_STAGE3A"],
	worldName		= "WI_BESMA_LAKE_STAGE3A",
	dataFileName	= "Besma_Besma_Lake_Stage3A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_STAGE3_1A"],
	worldName		= "WI_BESMA_LAKE_STAGE3_1A",
	dataFileName	= "Besma_Besma_Lake_Stage3-1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_STAGE4"],
	worldName		= "WI_BESMA_LAKE_STAGE4",
	dataFileName	= "Besma_Besma_Lake_Stage4.lua",
}






-------------------------------------------------------------------------------------------------------
-- 베스마: 호수 (night)
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE1"],
	worldName		= "WI_BESMA_LAKE_NIGHT_STAGE1",
	dataFileName	= "Besma_Besma_LAKE_NIGHT_Stage1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE2A"],
	worldName		= "WI_BESMA_LAKE_NIGHT_STAGE2A",
	dataFileName	= "Besma_Besma_LAKE_NIGHT_Stage2A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE2_1A"],
	worldName		= "WI_BESMA_LAKE_NIGHT_STAGE2_1A",
	dataFileName	= "Besma_Besma_LAKE_NIGHT_Stage2-1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE3A"],
	worldName		= "WI_BESMA_LAKE_NIGHT_STAGE3A",
	dataFileName	= "Besma_Besma_LAKE_NIGHT_Stage3A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE3_1A"],
	worldName		= "WI_BESMA_LAKE_NIGHT_STAGE3_1A",
	dataFileName	= "Besma_Besma_LAKE_NIGHT_Stage3-1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],
	worldName		= "WI_BESMA_LAKE_NIGHT_STAGE4",
	dataFileName	= "Besma_Besma_LAKE_NIGHT_Stage4.lua",
}



-------------------------------------------------------------------------------------------------------
-- 베스마: DRAGON NEST
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE1"],
	worldName		= "WI_BESMA_DRAGON_NEST_STAGE1",
	dataFileName	= "Besma_Dragon_Nest_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE2"],
	worldName		= "WI_BESMA_DRAGON_NEST_STAGE2",
	dataFileName	= "Besma_Dragon_Nest_Stage2.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE2_1"],
	worldName		= "WI_BESMA_DRAGON_NEST_STAGE2_1",
	dataFileName	= "Besma_Dragon_Nest_Stage2-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE2_1B"],
	worldName		= "WI_BESMA_DRAGON_NEST_STAGE2_1B",
	dataFileName	= "Besma_Dragon_Nest_Stage2-1B.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE3"],
	worldName		= "WI_BESMA_DRAGON_NEST_STAGE3",
	dataFileName	= "Besma_Dragon_Nest_Stage3.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],
	worldName		= "WI_BESMA_DRAGON_NEST_STAGE4",
	dataFileName	= "Besma_Dragon_Nest_Stage4.lua",
}



	
		


-------------------------------------------------------------------------------------------------------
-- 베스마: 비공정
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE1"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE1",
	dataFileName	= "Besma_Air_Ship_Stage1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE2A"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE2A",
	dataFileName	= "Besma_Air_Ship_Stage2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE2B"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE2B",
	dataFileName	= "Besma_Air_Ship_Stage2B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE2_1A"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE2_1A",
	dataFileName	= "Besma_Air_Ship_Stage2_1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE2_1B"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE2_1B",
	dataFileName	= "Besma_Air_Ship_Stage2_1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE3A"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE3A",
	dataFileName	= "Besma_Air_Ship_Stage3A.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE4"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE4",
	dataFileName	= "Besma_Air_Ship_Stage4.lua",
}



g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],
	worldName		= "WI_BESMA_AIRSHIP_STAGE5",
	dataFileName	= "Besma_Air_Ship_Stage5.lua",
}





-------------------------------------------------------------------------------------------------------
-- 베스마: 탄광 2
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE2_STAGE1"],
	worldName		= "WI_BESMA_MINE2_STAGE1",
	dataFileName	= "Besma_besma_MINE2_s1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE2_STAGE2A"],
	worldName		= "WI_BESMA_MINE2_STAGE2A",
	dataFileName	= "Besma_besma_MINE2_s2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE2_STAGE2_1A"],
	worldName		= "WI_BESMA_MINE2_STAGE2_1A",
	dataFileName	= "Besma_besma_MINE2_s2_1A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE2_STAGE2_2A"],
	worldName		= "WI_BESMA_MINE2_STAGE2_2A",
	dataFileName	= "Besma_besma_MINE2_s2_2A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE2_STAGE3A"],
	worldName		= "WI_BESMA_MINE2_STAGE3A",
	dataFileName	= "Besma_besma_MINE2_s3A.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_MINE2_STAGE4"],
	worldName		= "WI_BESMA_MINE2_STAGE4",
	dataFileName	= "besma_Besma_MINE2_Stage4.lua",
}




			
			
			
			



-------------------------------------------------------------------------------------------------------
-- 베스마: 협곡
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE3_1A"],
	worldName		= "WI_BESMA_LAKE_CANYON_STAGE3_1A",
	dataFileName	= "Besma_Besma_Lake_Canyon_Stage3-1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE3A"],
	worldName		= "WI_BESMA_LAKE_CANYON_STAGE3A",
	dataFileName	= "Besma_Besma_Lake_Canyon_Stage3A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE4"],
	worldName		= "WI_BESMA_LAKE_CANYON_STAGE4",
	dataFileName	= "Besma_Besma_Lake_Canyon_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE2_1A"],
	worldName		= "WI_BESMA_DRAGON_ROAD_CANYON_STAGE2_1A",
	dataFileName	= "Besma_Dragon_Road_Canyon_Stage2-1A.lua",
}
		
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE2_1B"],
	worldName		= "WI_BESMA_DRAGON_ROAD_CANYON_STAGE2_1B",
	dataFileName	= "Besma_Dragon_Road_Canyon_Stage2-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE2B"],
	worldName		= "WI_BESMA_DRAGON_ROAD_CANYON_STAGE2B",
	dataFileName	= "Besma_Dragon_Road_Canyon_Stage2B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE3"],
	worldName		= "WI_BESMA_DRAGON_ROAD_CANYON_STAGE3",
	dataFileName	= "Besma_Dragon_Road_Canyon_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],
	worldName		= "WI_BESMA_DRAGON_ROAD_CANYON_STAGE4",
	dataFileName	= "Besma_Dragon_Road_Canyon_Stage4.lua",
}



-------------------------------------------------------------------------------------------------------
-- 알테라: 전투 비공정
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE1"],
	worldName		= "WI_ALTERA_BATTLE_AIR_SHIP_STAGE1",
	dataFileName	= "Altera_Battle_Air_Ship_s1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE2"],
	worldName		= "WI_ALTERA_BATTLE_AIR_SHIP_STAGE2",
	dataFileName	= "Altera_Battle_Air_Ship_s2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE3"],
	worldName		= "WI_ALTERA_BATTLE_AIR_SHIP_STAGE3",
	dataFileName	= "Altera_Battle_Air_Ship_s3.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE4"],
	worldName		= "WI_ALTERA_BATTLE_AIR_SHIP_STAGE4",
	dataFileName	= "Altera_Battle_Air_Ship_s4.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE5"],
	worldName		= "WI_ALTERA_BATTLE_AIR_SHIP_STAGE5",
	dataFileName	= "Altera_Battle_Air_Ship_s5.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],
	worldName		= "WI_ALTERA_BATTLE_AIR_SHIP_STAGE6",
	dataFileName	= "Altera_Battle_Air_Ship_s6.lua",
}






-------------------------------------------------------------------------------------------------------
-- 알테라: 지하 터널
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE1"],
	worldName		= "WI_ALTERA_BELOW_TUNNEL_STAGE1",
	dataFileName	= "Altera_Below_Tunnel_Stage1.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE2A"],
	worldName		= "WI_ALTERA_BELOW_TUNNEL_STAGE2A",
	dataFileName	= "Altera_Below_Tunnel_Stage2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE2_1A"],
	worldName		= "WI_ALTERA_BELOW_TUNNEL_STAGE2_1A",
	dataFileName	= "Altera_Below_Tunnel_Stage2_1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE2_2A"],
	worldName		= "WI_ALTERA_BELOW_TUNNEL_STAGE2_2A",
	dataFileName	= "Altera_Below_Tunnel_Stage2_2A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE3A"],
	worldName		= "WI_ALTERA_BELOW_TUNNEL_STAGE3A",
	dataFileName	= "Altera_Below_Tunnel_Stage3A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],
	worldName		= "WI_ALTERA_BELOW_TUNNEL_STAGE4",
	dataFileName	= "Altera_Below_Tunnel_Stage4.lua",
}



-------------------------------------------------------------------------------------------------------
-- 베스마 호수 대전맵
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_BESMA_LAKE_PVPMAP"],
	worldName		= "WI_BESMA_BESMA_LAKE_PVPMAP",
	dataFileName	= "Besma_Besma_Lake_PvpMap.lua",
}

-- 베스마 수송 비공정 대전맵
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_AIR_SHIP_PVPMAP"],
	worldName		= "WI_BESMA_AIR_SHIP_PVPMAP",
	dataFileName	= "Besma_Air_Ship_Pvpmap.lua",
}

-------------------------------------------------------------------------------------------------------
-- 거래광장
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SQUARE_MARKET"],
	worldName		= "WI_SQUARE_MARKET",
	dataFileName	= "Square_Market.lua",
}

-------------------------------------------------------------------------------------------------------
-- 테스트용 던전
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_TREE_MAIN_TEST_DUNGEON"],
	worldName		= "WI_EL_TREE_MAIN_TEST_DUNGEON",
	dataFileName	= "El_Tree_Main_Test_Dungeon.lua",
}


-------------------------------------------------------------------------------------------------------
-- 알테라: 회귀평원
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE1"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE1",
	dataFileName	= "altera_plain_recycle_stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE2",
	dataFileName	= "altera_plain_recycle_stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2B"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE2B",
	dataFileName	= "altera_plain_recycle_stage2b.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2_1A"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE2_1A",
	dataFileName	= "altera_plain_recycle_stage2-1A.lua",
}
		
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE2_1B"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE2_1B",
	dataFileName	= "altera_plain_recycle_stage2-1B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE3",
	dataFileName	= "altera_plain_recycle_stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE4"],
	worldName		= "WI_ALTERA_PLAIN_RECYCLE_STAGE4",
	dataFileName	= "altera_plain_recycle_stage4.lua",
}


-- 알테라 일반 평원 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_STAGE1"],
	worldName		= "WI_ALTERA_PLAIN_STAGE1",
	dataFileName	= "Altera_Plain_stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_STAGE2"],
	worldName		= "WI_ALTERA_PLAIN_STAGE2",
	dataFileName	= "Altera_Plain_stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_STAGE2B"],
	worldName		= "WI_ALTERA_PLAIN_STAGE2B",
	dataFileName	= "Altera_Plain_Stage2B.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_STAGE2_1A"],
	worldName		= "WI_ALTERA_PLAIN_STAGE2_1A",
	dataFileName	= "Altera_Plain_Stage2-1A.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_STAGE2_1B"],
	worldName		= "WI_ALTERA_PLAIN_STAGE2_1B",
	dataFileName	= "Altera_Plain_Stage2-1B.lua",	
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],
	worldName		= "WI_ALTERA_PLAIN_STAGE3",
	dataFileName	= "Altera_Plain_Stage3.lua",
}

-- 알테라 팩토리 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE1"],
	worldName		= "WI_ALTERA_NASOD_FACTORY_STAGE1",
	dataFileName	= "Altera_Nasod_Factory_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE2"],
	worldName		= "WI_ALTERA_NASOD_FACTORY_STAGE2",
	dataFileName	= "Altera_Nasod_Factory_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE3"],
	worldName		= "WI_ALTERA_NASOD_FACTORY_STAGE3",
	dataFileName	= "Altera_Nasod_Factory_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE4"],
	worldName		= "WI_ALTERA_NASOD_FACTORY_STAGE4",
	dataFileName	= "Altera_Nasod_Factory_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_NASOD_FACTORY_STAGE5"],
	worldName		= "WI_ALTERA_NASOD_FACTORY_STAGE5",
	dataFileName	= "Altera_Nasod_Factory_Stage5.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],
	worldName		= "WI_ALTERA_NASOD_FACTORY_BOSS",
	dataFileName	= "Altera_Nasod_Factory_Boss.lua",
}



-- 베스마 비던
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE1"],
	worldName		= "WI_BESMA_SECRET_STAGE1",
	dataFileName	= "Besma_Secret_S1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE2"],
	worldName		= "WI_BESMA_SECRET_STAGE2",
	dataFileName	= "Besma_Secret_S2.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE2_1"],
	worldName		= "WI_BESMA_SECRET_STAGE2_1",
	dataFileName	= "Besma_Secret_S2-1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE3"],
	worldName		= "WI_BESMA_SECRET_STAGE3",
	dataFileName	= "Besma_Secret_S3.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE3_1"],
	worldName		= "WI_BESMA_SECRET_STAGE3_1",
	dataFileName	= "Besma_Secret_S3-1.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE4"],
	worldName		= "WI_BESMA_SECRET_STAGE4",
	dataFileName	= "Besma_Secret_S4.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE5"],
	worldName		= "WI_BESMA_SECRET_STAGE5",
	dataFileName	= "Besma_Secret_S5.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE6"],
	worldName		= "WI_BESMA_SECRET_STAGE6",
	dataFileName	= "Besma_Secret_S6.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_STAGE7"],
	worldName		= "WI_BESMA_SECRET_STAGE7",
	dataFileName	= "Besma_Secret_S7.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_SECRET_BOSS"],
	worldName		= "WI_BESMA_SECRET_BOSS",
	dataFileName	= "Besma_Secret_Boss.lua",
}


--베스마 비던 개편 월드---

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_EXTRA_BOSS"],
	worldName		= "WI_BESMA_HELL_EXTRA_BOSS",
	dataFileName	= "Besma_Hell_Boss_Extra.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_STAGE1"],
	worldName		= "WI_BESMA_HELL_STAGE1",
	dataFileName	= "Besma_Hell_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_STAGE2"],
	worldName		= "WI_BESMA_HELL_STAGE2",
	dataFileName	= "Besma_Hell_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_STAGE3_1"],
	worldName		= "WI_BESMA_HELL_STAGE3_1",
	dataFileName	= "Besma_Hell_Stage3-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_BOSS"],
	worldName		= "WI_BESMA_HELL_BOSS",
	dataFileName	= "Besma_Hell_Boss.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE1"],
	worldName		= "WI_BESMA_HELL_EXTRA_STAGE1",
	dataFileName	= "Besma_Hell_Extra_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE2"],
	worldName		= "WI_BESMA_HELL_EXTRA_STAGE2",
	dataFileName	= "Besma_Hell_Extra_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE3"],
	worldName		= "WI_BESMA_HELL_EXTRA_STAGE3",
	dataFileName	= "Besma_Secret_Hell_Extral_S3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE4"],
	worldName		= "WI_BESMA_HELL_EXTRA_STAGE4",
	dataFileName	= "Besma_Hell_Extra_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BESMA_HELL_EXTRA_STAGE5"],
	worldName		= "WI_BESMA_HELL_EXTRA_STAGE5",
	dataFileName	= "Besma_Secret_Hell_Extral_S5.lua",
}



-- 알테라 코어 - 킹나소드 던전 ------------------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE1"],
	worldName		= "WI_ALTERA_CORE_STAGE1",
	dataFileName	= "Altera_core_S1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE1_MIDDLE"],
	worldName		= "WI_ALTERA_CORE_STAGE1_MIDDLE",
	dataFileName	= "Altera_core_S1_Middle.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE2"],
	worldName		= "WI_ALTERA_CORE_STAGE2",
	dataFileName	= "Altera_core_S2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE2_MIDDLE"],
	worldName		= "WI_ALTERA_CORE_STAGE2_MIDDLE",
	dataFileName	= "Altera_core_S2_Middle.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE3"],
	worldName		= "WI_ALTERA_CORE_STAGE3",
	dataFileName	= "Altera_core_S3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE3_MIDDLE"],
	worldName		= "WI_ALTERA_CORE_STAGE3_MIDDLE",
	dataFileName	= "Altera_core_S3_Middle.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE4"],
	worldName		= "WI_ALTERA_CORE_STAGE4",
	dataFileName	= "Altera_core_S4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_STAGE4_MIDDLE"],
	worldName		= "WI_ALTERA_CORE_STAGE4_MIDDLE",
	dataFileName	= "Altera_core_S4_Middle.lua",
}




g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],
	worldName		= "WI_ALTERA_CORE_BOSS_STAGE",
	dataFileName	= "Altera_core_Boss_Stage.lua",
}


--비밀 던전 알테라 엑스트라--

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_HELL_EXTRA_STAGE1"],
	worldName		= "WI_ALTERA_HELL_EXTRA_STAGE1",
	dataFileName	= "Altera_Hell_Extra_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_HELL_EXTRA_STAGE2"],
	worldName		= "WI_ALTERA_HELL_EXTRA_STAGE2",
	dataFileName	= "Altera_Hell_Extra_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_HELL_EXTRA_STAGE3"],
	worldName		= "WI_ALTERA_HELL_EXTRA_STAGE3",
	dataFileName	= "Altera_Hell_Extra_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_HELL_EXTRA_STAGE4"],
	worldName		= "WI_ALTERA_HELL_EXTRA_STAGE4",
	dataFileName	= "Altera_Hell_Extra_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_HELL_EXTRA_STAGE5"],
	worldName		= "WI_ALTERA_HELL_EXTRA_STAGE5",
	dataFileName	= "Altera_Hell_Extra_Stage5.lua",
}









-- 아케이드 모드 월드 (필드테스트)
g_pWorldManager:AddWorldData -- 베스마 필드 0
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE1"],
	worldName		= "WI_ARCADE_RUBEN_STAGE1",
	dataFileName	= "test_ver2_field1.lua",
}


g_pWorldManager:AddWorldData -- 베스마 필드 1
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE1_1"],
	worldName		= "WI_ARCADE_RUBEN_STAGE1_1",
	dataFileName	= "test_ver2_field2.lua",
}

g_pWorldManager:AddWorldData -- 베스마 필드 2
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE1_2"],
	worldName		= "WI_ARCADE_RUBEN_STAGE1_2",
	dataFileName	= "test_ver2_field3.lua",
}

g_pWorldManager:AddWorldData	-- 루벤 필드 0
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE2"],
	worldName		= "WI_ARCADE_RUBEN_STAGE2",
	dataFileName	= "Ruben_Field_Stage0.lua",
}
g_pWorldManager:AddWorldData	-- 알테라 필드 0
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE3"],
	worldName		= "WI_ARCADE_RUBEN_STAGE3",
	dataFileName	= "Altera_Field_Stage0.lua",
}
g_pWorldManager:AddWorldData	-- 알테라 필드 1
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE4"],
	worldName		= "WI_ARCADE_RUBEN_STAGE4",
	dataFileName	= "Altera_Field_Stage1.lua",
}
g_pWorldManager:AddWorldData	-- 알테라 REST STAGE
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE5"],
	worldName		= "WI_ARCADE_RUBEN_STAGE5",
	dataFileName	= "Altera_Field_Rest_Stage.lua",
}
g_pWorldManager:AddWorldData	-- 알테라 필드 2
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE6"],
	worldName		= "WI_ARCADE_RUBEN_STAGE6",
	dataFileName	= "Altera_Field_Stage2.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE7"],
	worldName		= "WI_ARCADE_RUBEN_STAGE7",
	dataFileName	= "Arcade_Ruben_Stage07.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE8"],
	worldName		= "WI_ARCADE_RUBEN_STAGE8",
	dataFileName	= "Arcade_Ruben_Stage08.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE8_1"],
	worldName		= "WI_ARCADE_RUBEN_STAGE8_1",
	dataFileName	= "Arcade_Ruben_Stage08-1.lua",
}




g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE9"],
	worldName		= "WI_ARCADE_RUBEN_STAGE9",
	dataFileName	= "Arcade_Ruben_Stage09.lua",
}




g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE10"],
	worldName		= "WI_ARCADE_RUBEN_STAGE10",
	dataFileName	= "Arcade_Ruben_Stage10.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE11"],
	worldName		= "WI_ARCADE_RUBEN_STAGE11",
	dataFileName	= "Arcade_Ruben_Stage11.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE12"],
	worldName		= "WI_ARCADE_RUBEN_STAGE12",
	dataFileName	= "Arcade_Ruben_Stage12.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE13"],
	worldName		= "WI_ARCADE_RUBEN_STAGE13",
	dataFileName	= "Arcade_Ruben_Stage13.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE14"],
	worldName		= "WI_ARCADE_RUBEN_STAGE14",
	dataFileName	= "Arcade_Ruben_Stage14.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE15"],
	worldName		= "WI_ARCADE_RUBEN_STAGE15",
	dataFileName	= "Arcade_Ruben_Stage15.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE16"],
	worldName		= "WI_ARCADE_RUBEN_STAGE16",
	dataFileName	= "Arcade_Ruben_Stage16.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE17"],
	worldName		= "WI_ARCADE_RUBEN_STAGE17",
	dataFileName	= "Arcade_Ruben_Stage17.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE18"],
	worldName		= "WI_ARCADE_RUBEN_STAGE18",
	dataFileName	= "Arcade_Ruben_Stage18.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE19"],
	worldName		= "WI_ARCADE_RUBEN_STAGE19",
	dataFileName	= "Arcade_Ruben_Stage19.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE20"],
	worldName		= "WI_ARCADE_RUBEN_STAGE20",
	dataFileName	= "Arcade_Ruben_Stage20.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE21"],
	worldName		= "WI_ARCADE_RUBEN_STAGE21",
	dataFileName	= "Arcade_Ruben_Stage21.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE22"],
	worldName		= "WI_ARCADE_RUBEN_STAGE22",
	dataFileName	= "Arcade_Ruben_Stage22.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_RUBEN_STAGE23"],
	worldName		= "WI_ARCADE_RUBEN_STAGE23",
	dataFileName	= "Arcade_Ruben_Stage23.lua",
}






g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE1"],
	worldName		= "WI_ARCADE_ELDER_STAGE1",
	dataFileName	= "Arcade_ELDER_Stage01.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE2"],
	worldName		= "WI_ARCADE_ELDER_STAGE2",
	dataFileName	= "Arcade_ELDER_Stage02.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE3"],
	worldName		= "WI_ARCADE_ELDER_STAGE3",
	dataFileName	= "Arcade_ELDER_Stage03.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE3_1"],
	worldName		= "WI_ARCADE_ELDER_STAGE3_1",
	dataFileName	= "Arcade_ELDER_Stage03-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE4"],
	worldName		= "WI_ARCADE_ELDER_STAGE4",
	dataFileName	= "Arcade_ELDER_Stage04.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE5"],
	worldName		= "WI_ARCADE_ELDER_STAGE5",
	dataFileName	= "Arcade_ELDER_Stage05.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE5_1"],
	worldName		= "WI_ARCADE_ELDER_STAGE5_1",
	dataFileName	= "Arcade_ELDER_Stage05-1.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE6"],
	worldName		= "WI_ARCADE_ELDER_STAGE6",
	dataFileName	= "Arcade_ELDER_Stage06.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE7"],
	worldName		= "WI_ARCADE_ELDER_STAGE7",
	dataFileName	= "Arcade_ELDER_Stage07.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE8"],
	worldName		= "WI_ARCADE_ELDER_STAGE8",
	dataFileName	= "Arcade_ELDER_Stage08.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE9"],
	worldName		= "WI_ARCADE_ELDER_STAGE9",
	dataFileName	= "Arcade_ELDER_Stage09.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE10"],
	worldName		= "WI_ARCADE_ELDER_STAGE10",
	dataFileName	= "Arcade_ELDER_Stage10.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE11"],
	worldName		= "WI_ARCADE_ELDER_STAGE11",
	dataFileName	= "Arcade_ELDER_Stage11.lua",
}





g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE12"],
	worldName		= "WI_ARCADE_ELDER_STAGE12",
	dataFileName	= "Arcade_ELDER_Stage12.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE13"],
	worldName		= "WI_ARCADE_ELDER_STAGE13",
	dataFileName	= "Arcade_ELDER_Stage13.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE14"],
	worldName		= "WI_ARCADE_ELDER_STAGE14",
	dataFileName	= "Arcade_ELDER_Stage14.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE15"],
	worldName		= "WI_ARCADE_ELDER_STAGE15",
	dataFileName	= "Arcade_ELDER_Stage15.lua",
}





g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE30"],
	worldName		= "WI_ARCADE_ELDER_STAGE30",
	dataFileName	= "Arcade_ELDER_Stage30.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE31"],
	worldName		= "WI_ARCADE_ELDER_STAGE31",
	dataFileName	= "Arcade_ELDER_Stage31.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE32"],
	worldName		= "WI_ARCADE_ELDER_STAGE32",
	dataFileName	= "Arcade_ELDER_Stage32.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE33"],
	worldName		= "WI_ARCADE_ELDER_STAGE33",
	dataFileName	= "Arcade_ELDER_Stage33.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE34"],
	worldName		= "WI_ARCADE_ELDER_STAGE34",
	dataFileName	= "Arcade_ELDER_Stage34.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_ELDER_STAGE35"],
	worldName		= "WI_ARCADE_ELDER_STAGE35",
	dataFileName	= "Arcade_ELDER_Stage35.lua",
}



g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SUMMER_2008_PVP"],
	worldName		= "WI_SUMMER_2008_PVP",
	dataFileName	= "SUMMER_2008_PVP.lua",
}






g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MONKEY_STAGE1"],
	worldName		= "WI_EL_FOREST_MONKEY_STAGE1",
	dataFileName	= "El_Forest_Monkey_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MONKEY_STAGE2"],
	worldName		= "WI_EL_FOREST_MONKEY_STAGE2",
	dataFileName	= "El_Forest_Monkey_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EL_FOREST_MONKEY_STAGE3"],
	worldName		= "WI_EL_FOREST_MONKEY_STAGE3",
	dataFileName	= "El_Forest_Monkey_Stage3.lua",
}


-----------------할로윈 이벤트 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HALLOWEEN_CARNIVAL_STAGE1"],
	worldName		= "WI_ELDER_HALLOWEEN_CARNIVAL_STAGE1",
	dataFileName	= "Elder_Halloween_Carnival_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_HALLOWEEN_CARNIVAL_STAGE2"],
	worldName		= "WI_ELDER_HALLOWEEN_CARNIVAL_STAGE2",
	dataFileName	= "Elder_Halloween_Carnival_Stage2.lua",
}




----------------- 페이타 외곽 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_STAGE1"],
	worldName		= "WI_PEITA_OFFERINGS_STAGE1",
	dataFileName	= "Peita_Offerings_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_STAGE2"],
	worldName		= "WI_PEITA_OFFERINGS_STAGE2",
	dataFileName	= "Peita_Offerings_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_STAGE3"],
	worldName		= "WI_PEITA_OFFERINGS_STAGE3",
	dataFileName	= "Peita_Offerings_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_STAGE4"],
	worldName		= "WI_PEITA_OFFERINGS_STAGE4",
	dataFileName	= "Peita_Offerings_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],
	worldName		= "WI_PEITA_OFFERINGS_STAGE1_BOSS",
	dataFileName	= "Peita_Offerings_Stage_Boss.lua",
}

----------------- 페이타 나선회랑 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE1"],
	worldName		= "WI_PEITA_SPIRAL_CORRIDOR_STAGE1",
	dataFileName	= "Peita_Spiral_Corridor_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE2"],
	worldName		= "WI_PEITA_SPIRAL_CORRIDOR_STAGE2",
	dataFileName	= "Peita_Spiral_Corridor_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE3"],
	worldName		= "WI_PEITA_SPIRAL_CORRIDOR_STAGE3",
	dataFileName	= "Peita_Spiral_Corridor_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE4"],
	worldName		= "WI_PEITA_SPIRAL_CORRIDOR_STAGE4",
	dataFileName	= "Peita_Spiral_Corridor_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],
	worldName		= "WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS",
	dataFileName	= "Peita_Spiral_Corridor_Stage_Boss.lua",
}

----------------- 페이타 지하 예배당 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE1"],
	worldName		= "WI_PEITA_CHAPEL_STAGE1",
	dataFileName	= "Peita_Chapel_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE2_1"],
	worldName		= "WI_PEITA_CHAPEL_STAGE2_1",
	dataFileName	= "Peita_Chapel_Stage2_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE2_2"],
	worldName		= "WI_PEITA_CHAPEL_STAGE2_2",
	dataFileName	= "Peita_Chapel_Stage2_2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE2_3"],
	worldName		= "WI_PEITA_CHAPEL_STAGE2_3",
	dataFileName	= "Peita_Chapel_Stage2_3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE3"],
	worldName		= "WI_PEITA_CHAPEL_STAGE3",
	dataFileName	= "Peita_Chapel_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE4"],
	worldName		= "WI_PEITA_CHAPEL_STAGE4",
	dataFileName	= "Peita_Chapel_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE5"],
	worldName		= "WI_PEITA_CHAPEL_STAGE5",
	dataFileName	= "Peita_Chapel_Stage5.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],
	worldName		= "WI_PEITA_CHAPEL_STAGE_BOSS",
	dataFileName	= "Peita_Chapel_Stage_Boss.lua",
}


----------------- 페이타 지하 정원 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE1"],
	worldName		= "WI_PEITA_UNDER_GARDEN_STAGE1",
	dataFileName	= "Peita_Under_Garden_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE2"],
	worldName		= "WI_PEITA_UNDER_GARDEN_STAGE2",
	dataFileName	= "Peita_Under_Garden_Stage2.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],
	worldName		= "WI_PEITA_UNDER_GARDEN_STAGE_BOSS",
	dataFileName	= "Peita_Under_Garden_Stage_Boss.lua",
}


----------------- 페이타 첨탑의 심장부 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_TOWER_HEART_STAGE1"],
	worldName		= "WI_PEITA_TOWER_HEART_STAGE1",
	dataFileName	= "Peita_Tower_Heart_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_TOWER_HEART_STAGE2"],
	worldName		= "WI_PEITA_TOWER_HEART_STAGE2",
	dataFileName	= "Peita_Tower_Heart_Stage2.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_TOWER_HEART_STAGE3"],
	worldName		= "WI_PEITA_TOWER_HEART_STAGE3",
	dataFileName	= "Peita_Tower_Heart_Stage3.lua",
}
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],
	worldName		= "WI_PEITA_TOWER_HEART_STAGE_BOSS",
	dataFileName	= "Peita_Tower_Heart_Stage_Boss.lua",
}


----------------- 페이타 봉헌의 제단 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE1"],
	worldName		= "WI_PEITA_OFFERINGS_ALTER_STAGE1",
	dataFileName	= "Peita_Offerings_Alter_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE2"],
	worldName		= "WI_PEITA_OFFERINGS_ALTER_STAGE2",
	dataFileName	= "Peita_Offerings_Alter_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE3"],
	worldName		= "WI_PEITA_OFFERINGS_ALTER_STAGE3",
	dataFileName	= "Peita_Offerings_Alter_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE4"],
	worldName		= "WI_PEITA_OFFERINGS_ALTER_STAGE4",
	dataFileName	= "Peita_Offerings_Alter_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],
	worldName		= "WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS",
	dataFileName	= "Peita_Offerings_Alter_Stage_Boss.lua",
}



----------------- 벨더 제3 거주지구 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE1"],
	worldName		= "WI_VELDER_THIRD_DWELLING_STAGE1",
	dataFileName	= "Velder_Third_Dwelling_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE2"],
	worldName		= "WI_VELDER_THIRD_DWELLING_STAGE2",
	dataFileName	= "Velder_Third_Dwelling_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE3"],
	worldName		= "WI_VELDER_THIRD_DWELLING_STAGE3",
	dataFileName	= "Velder_Third_Dwelling_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],
	worldName		= "WI_VELDER_THIRD_DWELLING_STAGE_BOSS",
	dataFileName	= "Velder_Third_Dwelling_Stage_Boss.lua",
}

----------------- 벨더 희망의 다리 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE1"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE1",
	dataFileName	= "Velder_Bridge_Hope_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE2"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE2",
	dataFileName	= "Velder_Bridge_Hope_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE2_1"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE2_1",
	dataFileName	= "Velder_Bridge_Hope_Stage2_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE3"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE3",
	dataFileName	= "Velder_Bridge_Hope_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE3_1"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE3_1",
	dataFileName	= "Velder_Bridge_Hope_Stage3_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE4"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE4",
	dataFileName	= "Velder_Bridge_Hope_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],
	worldName		= "WI_VELDER_BRIDGE_HOPE_STAGE_BOSS",
	dataFileName	= "Velder_Bridge_Hope_Stage_Boss.lua",
}

----------------- 벨더 왕궁진입로 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE1"],
	worldName		= "WI_VELDER_PALACE_ENTRANCE_STAGE1",
	dataFileName	= "Velder_Palace_Entrance_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE2"],
	worldName		= "WI_VELDER_PALACE_ENTRANCE_STAGE2",
	dataFileName	= "Velder_Palace_Entrance_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE3"],
	worldName		= "WI_VELDER_PALACE_ENTRANCE_STAGE3",
	dataFileName	= "Velder_Palace_Entrance_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],
	worldName		= "WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS",
	dataFileName	= "Velder_Palace_Entrance_Stage_Boss.lua",
}

----------------------벨더 : 불타는 희망의 다리---------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE1"],
	worldName		= "WI_VELDER_BRIDGE_BURNING_STAGE1",
	dataFileName	= "Velder_Bridge_Burning_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE2"],
	worldName		= "WI_VELDER_BRIDGE_BURNING_STAGE2",
	dataFileName	= "Velder_Bridge_Burning_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE2_1"],
	worldName		= "WI_VELDER_BRIDGE_BURNING_STAGE2_1",
	dataFileName	= "Velder_Bridge_Burning_Stage2-1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_BURNING_STAGE3"],
	worldName		= "WI_VELDER_BRIDGE_BURNING_STAGE3",
	dataFileName	= "Velder_Bridge_Burning_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],
	worldName		= "WI_VELDER_BRIDGE_BURNING_BOSS_STAGE",
	dataFileName	= "Velder_Bridge_Burning_Stage_boss.lua",
}

----------------------벨더 : 제1 상업지구---------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_MARKET_STAGE1"],
	worldName		= "WI_VELDER_MARKET_STAGE1",
	dataFileName	= "Velder_Market_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_MARKET_STAGE2"],
	worldName		= "WI_VELDER_MARKET_STAGE2",
	dataFileName	= "Velder_Market_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_MARKET_STAGE3"],
	worldName		= "WI_VELDER_MARKET_STAGE3",
	dataFileName	= "Velder_Market_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],
	worldName		= "WI_VELDER_MARKET_BOSS_STAGE",
	dataFileName	= "Velder_Market_Stage_Boss.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_MARKET_STAGE2_1"],
	worldName		= "WI_VELDER_MARKET_STAGE2_1",
	dataFileName	= "Velder_Market_Stage2_1.lua",
}
----------------- 벨더 6번 : 벨더 남쪽 게이트  -----------------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_GATE_STAGE1"],
	worldName		= "WI_VELDER_GATE_STAGE1",
	dataFileName	= "Velder_Gate_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_GATE_STAGE2"],
	worldName		= "WI_VELDER_GATE_STAGE2",
	dataFileName	= "Velder_Gate_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_GATE_STAGE3"],
	worldName		= "WI_VELDER_GATE_STAGE3",
	dataFileName	= "Velder_Gate_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],
	worldName		= "WI_VELDER_GATE_BOSS_STAGE",
	dataFileName	= "Velder_Gate_Stage_Boss.lua",
	
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_GATE_STAGE2_1"],
	worldName		= "WI_VELDER_GATE_STAGE2_1",
	dataFileName	= "Velder_Gate_Stage2_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_GATE_LOUNGE"],
	worldName		= "WI_VELDER_GATE_LOUNGE",
	dataFileName	= "Velder_Gate_Stage_Boss_Loung.lua",
	
}



----------------- 운송터널 : 오염지역 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_SECRET_STAGE1"],
	worldName		= "WI_ALTERA_SECRET_STAGE1",
	dataFileName	= "Altera_Secret_S1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_SECRET_STAGE2"],
	worldName		= "WI_ALTERA_SECRET_STAGE2",
	dataFileName	= "Altera_Secret_S2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_SECRET_STAGE3"],
	worldName		= "WI_ALTERA_SECRET_STAGE3",
	dataFileName	= "Altera_Secret_S3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_SECRET_STAGE4"],
	worldName		= "WI_ALTERA_SECRET_STAGE4",
	dataFileName	= "Altera_Secret_S4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ALTERA_SECRET_BOSS"],
	worldName		= "WI_ALTERA_SECRET_BOSS",
	dataFileName	= "Altera_Secret_S5_Boss.lua",
}










------------------ 2009 새해 이벤트 던전 ----------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_2009_NEW_YEAR_EVENT_STAGE1"],
	worldName		= "WI_2009_NEW_YEAR_EVENT_STAGE1",
	dataFileName	= "Elder_Wally_Castle_Event_Stage1.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_2009_NEW_YEAR_EVENT_BOSS"],
	worldName		= "WI_2009_NEW_YEAR_EVENT_BOSS",
	dataFileName	= "Elder_Wally_Castle_Event_Boss.lua",
}





-- 페이타 대전맵
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_OFFERING_PVP_STAGE"],
	worldName		= "WI_PEITA_OFFERING_PVP_STAGE",
	dataFileName	= "Peita_Offerings_Stage_Pvp.lua",
}



-- 페이타 나선회랑 대전맵
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_PVP_STAGE"],
	worldName		= "WI_PEITA_SPIRAL_CORRIDOR_PVP_STAGE",
	dataFileName	= "Peita_Spiral_Corridor_Pvp.lua",
}


----------------- 헤니르의 시공 : 상자방 ------------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],
	worldName		= "WI_ARCADE_NEW_STAGE_REST",
	dataFileName	= "ARCADE_NEW_STAGE_REST.lua",
}




-- 던전 라운지

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_LOUNGE_RUBEN"],
	worldName		= "WI_DUNGEON_LOUNGE_RUBEN",
	dataFileName	= "Elder_Dungeon_Gate.lua",
	--dataFileName	= "Elder_Dungeon_Gate_Festival.lua", --공존의 축제
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_LOUNGE_ELDER"],
	worldName		= "WI_DUNGEON_LOUNGE_ELDER",
	dataFileName	= "Elder_Dungeon_Gate.lua",
	--dataFileName	= "Elder_Dungeon_Gate_Festival.lua", --공존의 축제
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_LOUNGE_BESMA"],
	worldName		= "WI_DUNGEON_LOUNGE_BESMA",
	dataFileName	= "Elder_Dungeon_Gate.lua",
	--dataFileName	= "Elder_Dungeon_Gate_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_LOUNGE_ALTERA"],
	worldName		= "WI_DUNGEON_LOUNGE_ALTERA",
	dataFileName	= "Elder_Dungeon_Gate.lua",
	--dataFileName	= "Elder_Dungeon_Gate_Festival.lua", --공존의 축제
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_LOUNGE_PEITA"],
	worldName		= "WI_DUNGEON_LOUNGE_PEITA",
	dataFileName	= "Elder_Dungeon_Gate.lua",
	--dataFileName	= "Elder_Dungeon_Gate_Festival.lua", --공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DUNGEON_LOUNGE_VELDER"],
	worldName		= "WI_DUNGEON_LOUNGE_VELDER",
	dataFileName	= "Velder_DG.lua",
	--dataFileName	= "Velder_DG_Festival.lua", --공존의 축제
}


-- 희망의다리 대전맵
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_ELDER_BRIDGE_HOPE_PVPMAP"],
	worldName		= "WI_ELDER_BRIDGE_HOPE_PVPMAP",
	dataFileName	= "Velder_Bridge_Hope_Stage_Pvp.lua",
}

-- 겨울 대전맵
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_WINTER_PVPMAP"],
	worldName		= "WI_WINTER_PVPMAP",
	dataFileName	= "pvp_winter_Velder.lua",
}


--식목일 이벤트 던전
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_TREE_DAY_STAGE1"],
	worldName		= "WI_EVENT_TREE_DAY_STAGE1",
	dataFileName	= "Event_Tree_Day_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_TREE_DAY_STAGE2"],
	worldName		= "WI_EVENT_TREE_DAY_STAGE2",
	dataFileName	= "Event_Tree_Day_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_TREE_DAY_STAGE3"],
	worldName		= "WI_EVENT_TREE_DAY_STAGE3",
	dataFileName	= "Event_Tree_Day_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],
	worldName		= "WI_EVENT_TREE_DAY_STAGE_BOSS",
	dataFileName	= "Event_Tree_Day_Stage_Boss.lua",
}

---새로 들어가는 루벤 던전 ---
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_EL_TREE_STAGE1"],	
	worldName		= "WI_RUBEN_EL_TREE_STAGE1",	
	dataFileName	= "Ruben_El_Tree_Stage1.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_EL_TREE_STAGE2"],	
	worldName		= "WI_RUBEN_EL_TREE_STAGE2",	
	dataFileName	= "Ruben_El_Tree_Stage2.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],	
	worldName		= "WI_RUBEN_EL_TREE_BOSS_STAGE",	
	dataFileName	= "Ruben_El_Tree_Stage_Boss.lua",
}		
	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_RUIN_OF_ELF_STAGE1"],	
	worldName		= "WI_RUBEN_RUIN_OF_ELF_STAGE1",	
	dataFileName	= "Ruben_Ruin_Of_Elf_Stage1.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_RUIN_OF_ELF_STAGE2"],	
	worldName		= "WI_RUBEN_RUIN_OF_ELF_STAGE2",	
	dataFileName	= "Ruben_Ruin_Of_Elf_Stage2.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],	
	worldName		= "WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE",	
	dataFileName	= "Ruben_Ruin_Of_Elf_StageBoss.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_SWAMP_STAGE1"],	
	worldName		= "WI_RUBEN_SWAMP_STAGE1",	
	dataFileName	= "RUBEN_SWAMP_Stage1.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_SWAMP_STAGE2"],	
	worldName		= "WI_RUBEN_SWAMP_STAGE2",	
	dataFileName	= "RUBEN_SWAMP_Stage2.lua",
}		
	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_SWAMP_STAGE3"],	
	worldName		= "WI_RUBEN_SWAMP_STAGE3",	
	dataFileName	= "RUBEN_SWAMP_Stage3.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_SWAMP_STAGE3_1"],	
	worldName		= "WI_RUBEN_SWAMP_STAGE3_1",	
	dataFileName	= "RUBEN_SWAMP_Stage3-1.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],	
	worldName		= "WI_RUBEN_SWAMP_BOSS_STAGE",	
	dataFileName	= "RUBEN_SWAMP_StageBoss.lua",
}		

--할로윈 이벤트 던전---
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_STAGE1"],	
	worldName		= "WI_EVENT_HALLOWEEN_STAGE1",	
	dataFileName	= "Event_Halloween_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_STAGE2"],	
	worldName		= "WI_EVENT_HALLOWEEN_STAGE2",	
	dataFileName	= "Event_Halloween_Stage2.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_STAGE3"],	
	worldName		= "WI_EVENT_HALLOWEEN_STAGE3",	
	dataFileName	= "Event_Halloween_Stage3.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_STAGE4"],	
	worldName		= "WI_EVENT_HALLOWEEN_STAGE4",	
	dataFileName	= "Event_Halloween_Stage4.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_STAGE5"],	
	worldName		= "WI_EVENT_HALLOWEEN_STAGE5",	
	dataFileName	= "Event_Halloween_Stage5.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],	
	worldName		= "WI_EVENT_HALLOWEEN_STAGE_BOSS",	
	dataFileName	= "Event_Halloween_Stage_Boss.lua",
}	
	
--배던전 월드 추가--
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_VELDER_SHIP_STAGE"],	
	worldName		= "WI_BATTLE_FIELD_VELDER_SHIP_STAGE",	
	dataFileName	= "Velder_Battle_Ship_Stage.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_HAMEL_SHIP_STAGE"],	
	worldName		= "WI_BATTLE_FIELD_HAMEL_SHIP_STAGE",	
	dataFileName	= "Hamel_Battle_Ship_Stage.lua",
}		
	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_STAGE1"],	
	worldName		= "WI_HAMEL_RESIAM_STAGE1",	
	dataFileName	= "Hamel_Resiam_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_STAGE2"],	
	worldName		= "WI_HAMEL_RESIAM_STAGE2",	
	dataFileName	= "Hamel_Resiam_Stage2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_STAGE3"],	
	worldName		= "WI_HAMEL_RESIAM_STAGE3",	
	dataFileName	= "Hamel_Resiam_Stage3.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],	
	worldName		= "WI_HAMEL_RESIAM_BOSS_STAGE",	
	dataFileName	= "Hamel_Resiam_Stage_Boss.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_STAGE1"],	
	worldName		= "WI_HAMEL_WATERWAY_STAGE1",	
	dataFileName	= "Hamel_Waterway_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_STAGE2"],	
	worldName		= "WI_HAMEL_WATERWAY_STAGE2",	
	dataFileName	= "Hamel_Waterway_Stage2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_STAGE3"],	
	worldName		= "WI_HAMEL_WATERWAY_STAGE3",	
	dataFileName	= "Hamel_Waterway_Stage3.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_STAGE4"],	
	worldName		= "WI_HAMEL_WATERWAY_STAGE4",	
	dataFileName	= "Hamel_Waterway_Stage4.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],	
	worldName		= "WI_HAMEL_WATERWAY_BOSS_STAGE",	
	dataFileName	= "Hamel_Waterway_BossStage.lua",
}		
	
	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE1"],	
	worldName		= "WI_HAMEL_RESIAM_UNDERWATER_STAGE1",	
	dataFileName	= "Hamel_Resiam_Underwater_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE2"],	
	worldName		= "WI_HAMEL_RESIAM_UNDERWATER_STAGE2",	
	dataFileName	= "Hamel_Resiam_Underwater_Stage2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE3"],	
	worldName		= "WI_HAMEL_RESIAM_UNDERWATER_STAGE3",	
	dataFileName	= "Hamel_Resiam_Underwater_Stage3.lua",
}	
	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_STAGE4"],	
	worldName		= "WI_HAMEL_RESIAM_UNDERWATER_STAGE4",	
	dataFileName	= "Hamel_Resiam_Underwater_Stage4.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],	
	worldName		= "WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE",	
	dataFileName	= "Hamel_Resiam_Underwater_Stage_Boss.lua",
}	
	
	
	
	
	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE1"],	
	worldName		= "WI_HAMEL_WATERWAY_CORE_STAGE1",	
	dataFileName	= "Hamel_WATERWAY_CORE_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE2"],	
	worldName		= "WI_HAMEL_WATERWAY_CORE_STAGE2",	
	dataFileName	= "Hamel_WATERWAY_CORE_Stage2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE3"],	
	worldName		= "WI_HAMEL_WATERWAY_CORE_STAGE3",	
	dataFileName	= "Hamel_WATERWAY_CORE_Stage3.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE4"],	
	worldName		= "WI_HAMEL_WATERWAY_CORE_STAGE4",	
	dataFileName	= "Hamel_WATERWAY_CORE_Stage4.lua",
}		

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_CORE_STAGE5"],	
	worldName		= "WI_HAMEL_WATERWAY_CORE_STAGE5",	
	dataFileName	= "Hamel_WATERWAY_CORE_Stage5.lua",
}		
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],	
	worldName		= "WI_HAMEL_WATERWAY_CORE_BOSS_STAGE",	
	dataFileName	= "Hamel_WATERWAY_CORE_Stage_Boss.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_RESIAM_STAGE3_1"],	
	worldName		= "WI_HAMEL_RESIAM_STAGE3_1",	
	dataFileName	= "Hamel_Resiam_Stage3_1.lua",
}	
---하멜 후반부 던전---
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE1"],	
	worldName		= "WI_HAMEL_CAVE_OF_MAGMANTA_STAGE1",	
	dataFileName	= "Hamel_Cave_Of_Magmanta_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE2"],	
	worldName		= "WI_HAMEL_CAVE_OF_MAGMANTA_STAGE2",	
	dataFileName	= "Hamel_Cave_Of_Magmanta_Stage2.lua",
}		

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE3"],	
	worldName		= "WI_HAMEL_CAVE_OF_MAGMANTA_STAGE3",	
	dataFileName	= "Hamel_Cave_Of_Magmanta_Stage3.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE3_1"],	
	worldName		= "WI_HAMEL_CAVE_OF_MAGMANTA_STAGE3_1",	
	dataFileName	= "Hamel_Cave_Of_Magmanta_Stage3.lua",
}	

	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_STAGE4"],	
	worldName		= "WI_HAMEL_CAVE_OF_MAGMANTA_STAGE4",	
	dataFileName	= "Hamel_Cave_Of_Magmanta_Stage4.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],	
	worldName		= "WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE",	
	dataFileName	= "Hamel_Cave_Of_Magmanta_Boss_Stage.lua",
}
---하멜 얼어붙은 물의 신전--

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE1"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE1",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Stage1.lua",
}	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE2"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE2",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Stage2.lua",
}		

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE2_1"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE2_1",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Stage2_1.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE3"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE3",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Stage3.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE3_1"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE3_1",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Stage3_1.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE4"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE4",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE",	
	dataFileName	= "Hamel_Frozen_Water_Temple_Boss_Stage.lua",
}
--7번던 월드--
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE1"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_HALL_STAGE1",	
	dataFileName	= "Hamel_Frozen_Water_Hall_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE2"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_HALL_STAGE2",	
	dataFileName	= "Hamel_Frozen_Water_Hall_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE3"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_HALL_STAGE3",	
	dataFileName	= "Hamel_Frozen_Water_Hall_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE4"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_HALL_STAGE4",	
	dataFileName	= "Hamel_Frozen_Water_Hall_Stage4.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_STAGE5"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_HALL_STAGE5",	
	dataFileName	= "Hamel_Frozen_Water_Hall_Stage5.lua",                   	
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],	
	worldName		= "WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE",	
	dataFileName	= "Hamel_Frozen_Water_Hall_Boss_Stage.lua",
}


--	디펜스 던전
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],	
	worldName		= "WI_DEFENCE_DUNGEON_NORMAL_STAGE",	
	dataFileName	= "DarkGate2013.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],	
	worldName		= "WI_DEFENCE_DUNGEON_HARD_STAGE",	
	dataFileName	= "DarkGate2013.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],	
	worldName		= "WI_DEFENCE_DUNGEON_EXPERT_STAGE",	
	dataFileName	= "DarkGate2013.lua",
}	
	
	
------벨더 월드 수정--------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_STAGE1"],	
	worldName		= "WI_VELDER_SECRET_STAGE1",	
	dataFileName	= "VELDER_SECRET_STAGE1.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_STAGE2"],	
	worldName		= "WI_VELDER_SECRET_STAGE2",	
	dataFileName	= "VELDER_SECRET_STAGE2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_STAGE3"],	
	worldName		= "WI_VELDER_SECRET_STAGE3",	
	dataFileName	= "VELDER_SECRET_STAGE3.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_STAGE4"],	
	worldName		= "WI_VELDER_SECRET_STAGE4",	
	dataFileName	= "VELDER_SECRET_STAGE4.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_STAGE5"],	
	worldName		= "WI_VELDER_SECRET_STAGE5",	
	dataFileName	= "VELDER_SECRET_STAGE5.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"],	
	worldName		= "WI_VELDER_SECRET_BOSS_STAGE",	
	dataFileName	= "VELDER_SECRET_BOSS_STAGE.lua",
}	

---엑스트라 월드--------
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_EXTRA_STAGE1"],	
	worldName		= "WI_VELDER_SECRET_EXTRA_STAGE1",	
	dataFileName	= "VELDER_SECRET_Extra_STAGE1.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_EXTRA_STAGE2"],	
	worldName		= "WI_VELDER_SECRET_EXTRA_STAGE2",	
	dataFileName	= "VELDER_SECRET_Extra_STAGE2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_EXTRA_STAGE3"],	
	worldName		= "WI_VELDER_SECRET_EXTRA_STAGE3",	
	dataFileName	= "VELDER_SECRET_Extra_STAGE3.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_EXTRA_STAGE4"],	
	worldName		= "WI_VELDER_SECRET_EXTRA_STAGE4",	
	dataFileName	= "VELDER_SECRET_Extra_STAGE4.lua",
}		
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_EXTRA_STAGE5"],	
	worldName		= "WI_VELDER_SECRET_EXTRA_STAGE5",	
	dataFileName	= "VELDER_SECRET_Extra_STAGE5.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_VELDER_SECRET_EXTRA_BOSS_STAGE"],	
	worldName		= "WI_VELDER_SECRET_BOSS_STAGE",	
	dataFileName	= "VELDER_SECRET_EXTRA_BOSS_STAGE.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_TREE_DAY_NEW_STAGE2"],	
	worldName		= "WI_EVENT_TREE_DAY_NEW_STAGE2",	
	dataFileName	= "EVENT_TREE_DAY_NEW_STAGE2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_TREE_DAY_NEW_STAGE3"],	
	worldName		= "WI_EVENT_TREE_DAY_NEW_STAGE3",	
	dataFileName	= "EVENT_TREE_DAY_NEW_STAGE3.lua",
}
	
	
---필드 월드 시작-------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_RUBEN_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_RUBEN_FIELD_00",	
	dataFileName	= "Field_Ruben_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_ELDER_FIELD_00",	
	dataFileName	= "Field_elder_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_ELDER_FIELD_REST_00",	
	dataFileName	= "Field_Elder_Stage_Rest.lua",
	--dataFileName	= "Field_Elder_Stage_Rest_Festival.lua", -- 공존의 축제
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_ELDER_FIELD_01",	
	dataFileName	= "Field_elder_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_BESMA_FIELD_00",	
	dataFileName	= "Field_Besma_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_BESMA_FIELD_REST_00",	
	dataFileName	= "Field_Besma_Stage_Rest.lua",
	--dataFileName	= "Field_Besma_Stage_Rest_Festival.lua", --공존의 축제
}



g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_BESMA_FIELD_01",	
	dataFileName	= "Field_Besma_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_02"],	
	worldName		= "WI_BATTLE_FIELD_BESMA_FIELD_02",	
	dataFileName	= "Field_Besma_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_PEITA_FIELD_00",	
	dataFileName	= "Peita_Field_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_PEITA_FIELD_01",	
	dataFileName	= "Peita_Field_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_02"],	
	worldName		= "WI_BATTLE_FIELD_PEITA_FIELD_02",	
	dataFileName	= "Peita_Field_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_PEITA_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_PEITA_FIELD_REST_00",	
	dataFileName	= "Peita_Field_Rest_Stage.lua",
}
	
	
---------------알테라 필드 월드----------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_ALTERA_FIELD_00",	
	dataFileName	= "Field_Altera_Stage0.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_ALTERA_FIELD_01",	
	dataFileName	= "Field_Altera_Stage1.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_ALTERA_FIELD_REST_00",	
	dataFileName	= "Field_Altera_Rest_Stage.lua",
	--dataFileName	= "Field_Altera_Rest_Stage_Festival.lua", -- 공존의 축제
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_02"],	
	worldName		= "WI_BATTLE_FIELD_ALTERA_FIELD_02",	
	dataFileName	= "Field_Altera_Stage2.lua",
}	

--벨더 필드 월드---
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_VELDER_FIELD_00",	
	dataFileName	= "Field_Velder_Stage0.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_VELDER_FIELD_01",	
	dataFileName	= "Field_Velder_Stage1.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_02"],	
	worldName		= "WI_BATTLE_FIELD_VELDER_FIELD_02",	
	dataFileName	= "Field_Velder_Stage2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_03"],	
	worldName		= "WI_BATTLE_FIELD_VELDER_FIELD_03",	
	dataFileName	= "Field_Velder_Stage3.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_VELDER_FIELD_REST_00",	
	dataFileName	= "Field_Velder_Rest_Stage.lua",
	--dataFileName	= "Field_Velder_Rest_Stage_Festival.lua", -- 공존의 축제
}	



-----------하멜 필드 월드-----------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_HAMEL_FIELD_00",	
	dataFileName	= "Field_Hamel_Stage0.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_HAMEL_FIELD_01",	
	dataFileName	= "Field_Hamel_Stage1.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_02"],	
	worldName		= "WI_BATTLE_FIELD_HAMEL_FIELD_02",	
	dataFileName	= "Field_Hamel_Stage2.lua",
}	
	
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_03"],	
	worldName		= "WI_BATTLE_FIELD_HAMEL_FIELD_03",	
	dataFileName	= "Field_Hamel_Stage3.lua",
}	

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_HAMEL_FIELD_REST_00",	
	dataFileName	= "Field_Hamel_Rest_Stage.lua",
	--dataFileName	= "Field_Hamel_Rest_Stage_Festival.lua", -- 공존의 축제
}	

------------튜토리얼 던전---------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_TUTORIAL"],	
	worldName		= "WI_BATTLE_FIELD_TUTORIAL",	
	dataFileName	= "Field_Ruben_Tutorial.lua",
}


--------샌더 메마른 샌더------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DRY_SANDER_STAGE0"],	
	worldName		= "WI_SANDER_DRY_SANDER_STAGE0",	
	dataFileName	= "Sander_Dry_Sander_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DRY_SANDER_STAGE1"],	
	worldName		= "WI_SANDER_DRY_SANDER_STAGE1",	
	dataFileName	= "Sander_Dry_Sander_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DRY_SANDER_STAGE1_1"],	
	worldName		= "WI_SANDER_DRY_SANDER_STAGE1_1",	
	dataFileName	= "Sander_Dry_Sander_Stage1_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DRY_SANDER_STAGE2"],	
	worldName		= "WI_SANDER_DRY_SANDER_STAGE2",	
	dataFileName	= "Sander_Dry_Sander_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DRY_SANDER_B0SS_STAGE"],	
	worldName		= "WI_SANDER_DRY_SANDER_B0SS_STAGE",	
	dataFileName	= "Sander_Dry_Sander_StageBOSS.lua",
}

---------카르파이 기암지대--------------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE0"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_STAGE0",	
	dataFileName	= "Sander_Garpai_Rock_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE1"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_STAGE1",	
	dataFileName	= "Sander_Garpai_Rock_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE1_1"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_STAGE1_1",	
	dataFileName	= "Sander_Garpai_Rock_Stage1_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE2"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_STAGE2",	
	dataFileName	= "Sander_Garpai_Rock_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_STAGE3"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_STAGE3",	
	dataFileName	= "Sander_Garpai_Rock_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_BOSS_STAGE"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_BOSS_STAGE",	
	dataFileName	= "Sander_Garpai_Rock_StageBoss.lua",
}


---------------샌더 필드----------------------------------------


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_00"],	
	worldName		= "WI_BATTLE_FIELD_SANDER_FIELD_00",	
	dataFileName	= "Field_Sander_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_01"],	
	worldName		= "WI_BATTLE_FIELD_SANDER_FIELD_01",	
	dataFileName	= "Field_Sander_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_02"],	
	worldName		= "WI_BATTLE_FIELD_SANDER_FIELD_02",	
	dataFileName	= "Field_Sander_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_03"],	
	worldName		= "WI_BATTLE_FIELD_SANDER_FIELD_03",	
	dataFileName	= "Field_Sander_Stage3.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_REST_00"],	
	worldName		= "WI_BATTLE_FIELD_SANDER_FIELD_REST_00",	
	dataFileName	= "Field_Sander_Rest_Stage.lua",
	--dataFileName	= "Field_Sander_Rest_Stage_Festival.lua", -- 공존의 축제
}

--------트락 소굴----------------------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE0"],	
	worldName		= "WI_SANDER_DEN_OF_TROCK_STAGE0",	
	dataFileName	= "Sander_Den_Of_Trock_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE1"],	
	worldName		= "WI_SANDER_DEN_OF_TROCK_STAGE1",	
	dataFileName	= "Sander_Den_Of_Trock_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE2_1"],	
	worldName		= "WI_SANDER_DEN_OF_TROCK_STAGE2_1",	
	dataFileName	= "Sander_Den_Of_Trock_Stage2_1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE2"],	
	worldName		= "WI_SANDER_DEN_OF_TROCK_STAGE2",	
	dataFileName	= "Sander_Den_Of_Trock_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DEN_OF_TROCK_STAGE3"],	
	worldName		= "WI_SANDER_DEN_OF_TROCK_STAGE3",	
	dataFileName	= "Sander_Den_Of_Trock_Stage3.lua",
}


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_DEN_OF_TROCK_BOSS_STAGE"],	
	worldName		= "WI_SANDER_DEN_OF_TROCK_BOSS_STAGE",	
	dataFileName	= "Sander_Den_Of_Trock_StageBoss.lua",
}

------------칼루소 부족 마을-------------


g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_KARUSO_VILLAGE_STAGE0"],	
	worldName		= "WI_SANDER_KARUSO_VILLAGE_STAGE0",	
	dataFileName	= "Sander_Karuso_Village_Stage0.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_KARUSO_VILLAGE_STAGE1"],	
	worldName		= "WI_SANDER_KARUSO_VILLAGE_STAGE1",	
	dataFileName	= "Sander_Karuso_Village_Stage1.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_KARUSO_VILLAGE_STAGE2"],	
	worldName		= "WI_SANDER_KARUSO_VILLAGE_STAGE2",	
	dataFileName	= "Sander_Karuso_Village_Stage2.lua",
}

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_KARUSO_VILLAGE_BOSS_STAGE"],	
	worldName		= "WI_SANDER_KARUSO_VILLAGE_BOSS_STAGE",	
	dataFileName	= "Sander_Karuso_Village_StageBoss.lua",
}
------------발렌타인 이벤트 던전---------------

g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_VALENTINE_DAY_STAGE0"],	
	worldName		= "WI_EVENT_VALENTINE_DAY_STAGE0",	
	dataFileName	= "Event_Valentine_Day_Stage0.lua",
}

-- 카르파이 모래폭풍
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_GARPAI_ROCK_PVPMAP"],	
	worldName		= "WI_SANDER_GARPAI_ROCK_PVPMAP",	
	dataFileName	= "Sander_Garpai_Rock_Pvpmap.lua",
}

-- 샌더 오아시스
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_VILLIAGE_PVPMAP"],	
	worldName		= "WI_SANDER_VILLIAGE_PVPMAP",	
	dataFileName	= "Sander_Villiage_Pvpmap.lua",
}

------------나이트와쳐 이벤트 던전-------------
--[[
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_NIGHT_WATCHER_STAGE1"],
	worldName		= "WI_EVENT_NIGHT_WATCHER_STAGE1",
	dataFileName	= "Event_Night_Watcher_Stage1.lua",
}
]]--
--------------------------------- 결혼식장 ---------------------------------- 2013.04.16 공솔
-- 루벤 예식장
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_RUBEN_WEDDING"],	
	worldName		= "WI_RUBEN_WEDDING",	
	dataFileName	= "Ruben_Wedding.lua",
}

-- 샌더 예식장
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_SANDER_WEDDING"],	
	worldName		= "WI_SANDER_WEDDING",	
	dataFileName	= "Sand_Wedding.lua",
}

------------해외할로윈 이벤트 던전-------------
g_pWorldManager:AddWorldData
{
	worldID			= WORLD_ID["WI_EVENT_HALLOWEEN_2013"],
	worldName		= "WI_EVENT_HALLOWEEN_2013",
	dataFileName	= "Event_halloweendungeon.lua",
}
