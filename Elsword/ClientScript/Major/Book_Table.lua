-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 책 형식
--[[
BOOK_TABLE_CONTENTS =
{

	DEFAULT_COVER = "",			-- 기본적으로 사용할 책 배경 lua 이름. 기본배경 Lua에는 몇개의 String을 빈 채로 넣어 둬서 StringPage에서 사용할 수 있도록 한다.

	PAGE_TABLE =																		-- 페이지 정보가 들어있는 테이블
	{ 
		-- 형식 목표 { pagenum, "LuaFileName", "BookCoverLua", "String" },
		-- 현재 구현 { pagenum, "LuaFileName" }
		-- 페이지는 꼭 1부터 차례로 채울 필요는 없게 하자.
		
		--{ 1, "ELLIOS_GUIDE_PAGE_1.lua", "BOOK_COVER.lua" },							-- 이러면 배경을 BOOK_COVER.lua를 사용하고..
		--{ 2, "ELLIOS_GUIDE_PAGE_2.lua" },											-- 이러면 Default_Cover에 있는 내용으로 집어넣는다
		--{ 3, "ELLIOS_GUIDE_PAGE_3.lua", "BOOK_COVER.lua", "이 글이\n적히리라" },	-- P3 루아의 내용 + BOOK_COVER의 스트링에 "이글이적히리라"가 들어가게 된다.
		--{ 4, "", "BOOK_COVER.lua", "이 글도 적히겠지" },							-- BOOK_COVER.lua의 스트링에 이글도적히겠지를 넣는다.
		--{ 5, "", "", "오오 나 오오" }												-- Default_Cover에 오오 나 오오가 들어간다.
	},
	
	
}
--]]

BT_ELLIOS_GUIDE =
{
	DEFAULT_COVER = "DLG_UI_Guide.lua",
	
	PAGE_TABLE =
	{
		{ 0, "DLG_UI_Guide_List.lua", },
		{ 10, "DLG_UI_Guide_Dungeon_play.lua", },
		{ 20, "DLG_UI_Guide_Party.lua", },
		{ 25, "DLG_UI_Guide_Party02.lua", },
		{ 30, "DLG_UI_Guide_Pvp.lua", },
		{ 35, "DLG_UI_Guide_Pvp02.lua", },		
		{ 40, "DLG_UI_Guide_Arcade01.lua", },
		{ 45, "DLG_UI_Guide_Arcade02.lua", },				
		{ 50, "DLG_UI_Guide_Quest01.lua", },
		{ 60, "DLG_UI_Guide_Quest02.lua", },
		{ 70, "DLG_UI_Guide_Trade.lua", },
		{ 80, "DLG_UI_Guide_Market01.lua", },
		{ 90, "DLG_UI_Guide_Market02.lua", },
		
		{ 100, "DLG_UI_Guide_Search_Item.lua", },
		
		--{ 110, "DLG_UI_Guide_Event.lua", },

		{ 110, "DLG_UI_Guide_Skill.lua", },
		{ 115, "DLG_UI_Guide_Skill02.lua", },

		{ 120, "DLG_UI_Guide_Skill_Note01.lua", },
		{ 130, "DLG_UI_Guide_Skill_Note02.lua", },

		{ 140, "DLG_UI_Guide_Euqip.lua", },
		{ 150, "DLG_UI_Guide_Make.lua", },		
		{ 160, "DLG_UI_Guide_Upgrade.lua", },
		{ 170, "DLG_UI_Guide_MagicStone.lua", },
		{ 180, "DLG_UI_Guide_Attribute_Upgrade01.lua", },
		{ 190, "DLG_UI_Guide_Attribute_Upgrade02.lua", },
		{ 200, "DLG_UI_Guide_Bank.lua", },
		{ 210, "DLG_UI_Guide_Guild01.lua", },
		{ 220, "DLG_UI_Guide_Guild02.lua", },
		{ 230, "DLG_UI_Guide_Guild03.lua", },
		{ 240, "DLG_UI_Guide_Pet01.lua", },
		{ 250, "DLG_UI_Guide_Pet02.lua", },
		{ 260, "DLG_UI_Guide_Pet03.lua", },
		{ 270, "DLG_UI_Guide_Pet04.lua", },
		--{ 280, "DLG_UI_Guide_FriendSearch.lua", },
		-- #define ADDED_RELATIONSHIP_SYSTEM
		--{ 290, "DLG_UI_Guide_Marriage_01.lua", },
		--{ 300, "DLG_UI_Guide_Marriage_02.lua", },
	},
}
