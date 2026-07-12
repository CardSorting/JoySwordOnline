-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Skill_Tree_Main" )
g_pUIDialog:SetPos( 0, 0  )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_UI_MSG["STUCUM_CLOSE_SKILL_WINDOW"] )

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_3"] )




g_pUIDialog:SetSize( 100, 100 )
g_pUIDialog:SetEnableDraggingRange( true )
g_pUIDialog:SetDraggingRangeCenter( 512, 250 )
g_pUIDialog:SetDraggingRange( 0, 0 )

