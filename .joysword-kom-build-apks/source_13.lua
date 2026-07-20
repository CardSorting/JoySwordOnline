-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

                                                              -- 리스트 박스
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetShow( false )
g_pListBox:SetEnable( false )
g_pListBox:SetName( "ListBoxChatContent" )



g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )


g_pListBox:SetScollBarUpButtonTex( "DLG_Room_Button0.tga", "Pink_Up_Arrow" )


g_pListBox:SetScollBarUpButtonDownTex( "DLG_Room_Button0.tga", "Y_Up_Arrow" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Room_Button0.tga", "Pink_Down_Arrow" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Room_Button0.tga", "Y_Down_Arrow" )

g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )


g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )



g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 4, 5 )
g_pListBox:SetSize( 594, 114 )
--g_pListBox:SetSize( 594, 80 )


g_pListBox:AddItem( "" )
g_pListBox:AddItem( "" )
g_pListBox:AddItem( "" )
g_pListBox:AddItem( "" )
g_pListBox:AddItem( "" )
g_pListBox:AddItem( "" )





