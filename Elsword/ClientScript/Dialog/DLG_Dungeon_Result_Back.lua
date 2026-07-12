-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Dungeon_Result_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

IncludeLua( "DLG_Dungeon_Result_Window1.lua" )
IncludeLua( "DLG_Dungeon_Result_Window2.lua" )
IncludeLua( "DLG_Dungeon_Result_Window3.lua" )

IncludeLua( "DLG_Dungeon_Result_Info.lua" )
IncludeLua( "DLG_Dungeon_Reward_Choice_Item.lua" )
IncludeLua( "DLG_Dungeon_Result_Reward_Box.lua" )

IncludeLua( "DLG_Dungeon_Result_Reward_Window1.lua" )
IncludeLua( "DLG_Dungeon_Result_Reward_Window2.lua" )
IncludeLua( "DLG_Dungeon_Result_Reward_Window3.lua" )
IncludeLua( "DLG_Defence_Result.lua" )