-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Notice_Popup_InHouseOnly" )
--g_pUIDialog:SetPos( 10, 450 )
g_pUIDialog:SetPos( 10, 10 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetTimeForSelfDelete( 30 )




g_pStatic_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Background )
g_pStatic_Background:SetName( "BackGround" )


g_pPictureBackground = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture(g_pPictureBackground)
g_pPictureBackground:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_ElswordMark" )
g_pPictureBackground:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1000, 400)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_All" )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	--"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_NONE"],
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 25 )
g_pListBox:SetPos( 30, 20 )
g_pListBox:SetSize( 900, 360 )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( " " )
g_pListBox:AddItem( "------------------ 엘소드 동접 20000!! 인센티브 크리!! ---------------------------" )


g_pListBox:AddItem( " " )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( " " )
g_pListBox:AddItem( "------------------ 아래는 사내에 테스트 중인 내용 입니다. ---------------------------" )




g_pListBox:AddItem( " " )
g_pListBox:AddItem( "원숭이로 변신 치트: /tf MONKEY_A   다시 돌아올려면 /tf saram" )



g_pListBox:AddItem( " " )
g_pListBox:AddItem( "캐릭터가 거인이 되었을 때 이펙트도 같이 커지도록 수정했습니다. 콤보, 필살기 등등에 오류 있으면 제보 부탁드립니다." )
g_pListBox:AddItem( "거인 되는 cheat는 /UnitScale 2 999 (2배로 999초 동안), 소인이 되려면 /UnitScale 0.5 999 입니다." )




g_pListBox:AddItem( " " )
g_pListBox:AddItem( "PVP 월리성 지붕 스테이지 대전맵에 박스로 만들어진 라인맵을 테스트로 추가했습니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "사내 클라이언트가 정상종료 될 때 프로그래머에게 errorlog.txt, state.log 등의 로그파일이 메일로 전송되도록 했습니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "사내에 상자대신 폭탄이 나오도록 변경해서 테스트 중입니다. 폭탄을 이용해서 몬스터를 잡을 수 있습니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "상대팀 뽀루를 죽이면 이기는 팀데스매치 테스트 중입니다." )
g_pListBox:AddItem( "팀데스매치로 방을 만든후 ,(콤마) 키를 누르면 상단 위쪽에 체크박스가 2개 나오는데 첫번째 것을 체크하고 게임하면 됩니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "아무 월드나 대전맵으로 선택할 수 있는 기능 테스트 중 입니다. 원래 맵선택창 위에 보이는 리스트 박스에서 더블클릭하면 됩니다." )
g_pListBox:AddItem( "캐릭터 위치가 이상할 경우에 B키를 누르면 정상적인 위치로 이동됩니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "PVP, Dungeon 게임 중에 캐릭터, 몬스터의 위치가 라인맵을 벗어나는 오류가 생겼을때 B 키를 누르면 복구되는 기능 테스트 중입니다" )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "제3 거주지구 두번째 스테이지에서 엘소드로 F 키 누르면 라인맵 사이를 점프할 수 있는 기능 테스트 중 입니다." )



g_pListBox:AddItem( " " )
g_pListBox:AddItem( "엘의 나무 북쪽 첫 스테이지 카메라 위치 변경해서 테스트 중입니다." )



--g_pListBox:AddItem( " " )
--g_pListBox:AddItem( "루벤 마을 가운데 목조 구조물 맨 위층에 올라가면 카메라 시점이 바뀝니다. 테스트 중 입니다." )



g_pListBox:AddItem( " " )
g_pListBox:AddItem( "내 캐릭터창 열면 오른쪽에 몬스터가 랜덤하게 로딩되서 보여 집니다. 테스트 중입니다. " )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "바운딩 콤보 테스트 중입니다. 레이븐이 점프X, 대시점프ZZ로 때리면 바운딩됩니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "아이샤 마나 인테이크 기술 쓰면 공중부양되는 기능 테스트 중입니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "이브 한테 뺨 맞으면 잠깐 동안 카메라가 뒤집어지는 기능 테스트 중입니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "몬스터 잡을 때 총 HP의 40% 이상의 데미지를 주면 몬스터가 터지도록 테스트 중입니다." )






g_pListBox:AddItem( " " )
g_pListBox:AddItem( "각 캐릭터 wait, walk, dash, jump 상태에서 1초이상 시간이 지나면 머리를 가까운 적 유닛을 보도록 하는 기능 테스트 중" )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( "레나 시즈모드중에 화살표 아래, 위로 누르면 화살 발사 각도를 조절할 수 있는 기능 테스트 중입니다." )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( "몬스터 위에 밟고 올라서는 기능 테스트 중입니다. 현재 박스랑 몇개의 문 위에 올라설 수 있습니다." )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( "캐릭터나 몬스터 잡아서 던지는 기능 테스트 중. F 키로 잡고 F 키로 던지면 됩니다. 엘소드끼리만 됩니다. 몬스터는 박스만." )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( "게임중 카메라를 특정 각도에서 캐릭터를 바라보도록 설정하는 기능 테스트 중 입니다. /mc true 하시면 됩니다." ) 
g_pListBox:AddItem( "카메라의 각도를 설정하는 방법은 /fc true 해서 원하는 위치로 카메라를 이동한 후에 /fc false 하시면 됩니다." )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( "엘의 나무 서쪽, 비공개로 파티 만들면 몬스터 테스트 던전으로 들어가도록 테스트 중." )

g_pListBox:AddItem( " " )
g_pListBox:AddItem( "아이템 치트로 살 때 쓰는 UI 만들었습니다. 마을에서 ,(콤마) 키 누르시면 됩니다. 검색기능됩니다." )


g_pListBox:AddItem( " " )
g_pListBox:AddItem( "벽에 기어 오르는 기능 테스트 중입니다. 엘소드만 됩니다." )
g_pListBox:AddItem( "몬스터 테스트 던전으로 들어가서 12번 라인 위에서 점프한 후에 화살표 위쪽 키를 누르면 절벽에 매달립니다." )









