-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



--g_pStage:SetLuaFrameMoveFunc( "UIFrameMove" )

--[[
function UIFrameMove( fTime, fElapsedTime )
	
	slotNum = g_pX2Room:GetSlotNum()
	pPVPRoom = g_pData:GetPVPRoom()
	
	pDialogManager = g_pKTDXApp:GetDialogManager()
	pDialog = pDialogManager:GetDialog( "DLG_PVP_Room_Front" )
	
	pDialogBack = nil
	if ( pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM"] ) or ( pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM_DEATH"] ) then
	
		pDialogBack = pDialogManager:GetDialog( "DLG_PVP_Room_Team_Back" )
	
	else
	
		pDialogBack = pDialogManager:GetDialog( "DLG_PVP_Room_Death_Back" )
	
	end
	
	--시간 과 킬수 실시간 변경?
	pStatic = pDialog:GetStatic( "StaticPVP_Room_TIME" )
	pString = pStatic:GetString(0)
	
	playTime = pPVPRoom:GetPlayTime()
	pString:SetMsg( playTime )
	
	pStatic = pDialog:GetStatic( "StaticPVP_Room_KILL" )
	pString = pStatic:GetString(0)
	
	winKillNum = pPVPRoom:GetWinKillNum()
	pString:SetMsg( winKillNum )

	--시작 레디 난입 버튼 표시
	--킬 수, 시간 바꾸는 버튼 호스트만 동작하게끔
	pMySlot = g_pX2Room:GetMySlot()
	
	if pMySlot:GetIsHost() == true then
	
		pButton = pDialogBack:GetButton("PVP_Room_Start")
		pButton:SetShowEnable( true, true )

		pButton = pDialogBack:GetButton("PVP_Room_Ready")
		pButton:SetShowEnable( false, false )
		
		pButton = pDialogBack:GetButton("PVP_Room_Play")
		pButton:SetShowEnable( false, false )

		
		if ( pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_SURVIVAL"] )  or (pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM_DEATH"]) then
			
			pButton = pDialogBack:GetButton("PVP_Room_Kill_LeftArrow")
			pButton:SetShowEnable( true, true )
			
			pButton = pDialogBack:GetButton("PVP_Room_Kill_RightArrow")
			pButton:SetShowEnable( true, true )
			
		else
		
			pButton = pDialogBack:GetButton("PVP_Room_Kill_LeftArrow")
			pButton:SetShowEnable( false, false )
			
			pButton = pDialogBack:GetButton("PVP_Room_Kill_RightArrow")
			pButton:SetShowEnable( false, false )
		end
		
		pButton = pDialogBack:GetButton("PVP_Room_Time_LeftArrow")
		pButton:SetEnable( true )
		
		pButton = pDialogBack:GetButton("PVP_Room_Time_RightArrow")
		pButton:SetEnable( true )	
	
	else
	
		pButton = pDialogBack:GetButton("PVP_Room_Start")
		pButton:SetShowEnable( false, false )
		
		pButton = pDialogBack:GetButton("PVP_Room_Ready")
		pButton:SetShowEnable( true, true )
		
		pButton = pDialogBack:GetButton("PVP_Room_Play")
		pButton:SetShowEnable( false, false )
		
		
		if ( pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_SURVIVAL"]) or (pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM_DEATH"]) then
			
			pButton = pDialogBack:GetButton("PVP_Room_Kill_LeftArrow")
			pButton:SetShowEnable( true, false )
			
			pButton = pDialogBack:GetButton("PVP_Room_Kill_RightArrow")
			pButton:SetShowEnable( true, false )
			
		else
		
			pButton = pDialogBack:GetButton("PVP_Room_Kill_LeftArrow")
			pButton:SetShowEnable( false, false )
			
			pButton = pDialogBack:GetButton("PVP_Room_Kill_RightArrow")
			pButton:SetShowEnable( false, false )
		
		end
		
		pButton = pDialogBack:GetButton("PVP_Room_Time_LeftArrow")
		pButton:SetEnable( false )
		
		pButton = pDialogBack:GetButton("PVP_Room_Time_RightArrow")
		pButton:SetEnable( false )
	
	end
	
	if ( g_pX2Room:GetRoomState() == ROOM_STATE["RS_PLAY"] ) or ( g_pX2Room:GetRoomState() == ROOM_STATE["RS_LOADING"] ) then
	
		pButton = pDialogBack:GetButton("PVP_Room_Start")
		pButton:SetShowEnable( false, false )
		
		pButton = pDialogBack:GetButton("PVP_Room_Ready")
		pButton:SetShowEnable( false, false )
		
		pButton = pDialogBack:GetButton("PVP_Room_Play")
		pButton:SetShowEnable( true, true )
	
	end
	
	for index = 0, slotNum - 1 do
	
		pSlotdata = g_pX2Room:GetSlotData( index )

		buttonName = string.format( "PVP_Room_X_%d", index + 1 )
		pButton = pDialogBack:GetButton( buttonName )
		pButton:SetShowEnable( false, false )
		
		if pSlotdata:GetSlotState() == SLOT_STATE["SS_CLOSE"] then
		
			buttonName = string.format( "PVP_Room_X_%d", index + 1 )
			pButton = pDialogBack:GetButton( buttonName )
			pButton:SetShow( true )
			
			if pMySlot:GetIsHost() == true then
			
				pButton:SetEnable( true )
				
			end
		
		end
		
		buttonName = string.format( "PVP_Room_O_%d", index + 1 )
		pButton = pDialogBack:GetButton( buttonName )
		pButton:SetShowEnable( false, false )
		
		
		if pSlotdata:GetSlotState() == SLOT_STATE["SS_EMPTY"] then
		
			buttonName = string.format( "PVP_Room_O_%d", index + 1 )
			pButton = pDialogBack:GetButton( buttonName )
			pButton:SetShow( true )
			if pMySlot:GetIsHost() == true then
			
				pButton:SetEnable( true )
				
			end
		
		end


		--호스트 표시
		pStatic = pDialog:GetStatic( "PVP_Room_Team_Host" )
		pPicture = pStatic:GetPicture( index )
		pPicture:SetShow( false )
		
		if pSlotdata:GetIsHost() == true then
			
			if pSlotdata:GetSlotState() ~= SLOT_STATE["SS_PLAY"] then
			
				pPicture:SetShow( true )
			
			end
			
		end	


		--플레이 표시
		pStatic = pDialog:GetStatic( "PVP_Room_Team_Play" )
		pPicture = pStatic:GetPicture( index )
		pPicture:SetShow( false )

		if pSlotdata:GetSlotState() == SLOT_STATE["SS_PLAY"] then
		
			pPicture:SetShow( true )
		
		end

		--레디 표시
		pStatic = pDialog:GetStatic( "PVP_Room_Team_Ready" )
		pPicture = pStatic:GetPicture( index )
		pPicture:SetShow( false )
	
		if pSlotdata:GetIsReady() == true then
		
			if pSlotdata:GetIsHost() == false then
				
				if pSlotdata:GetSlotState() ~= SLOT_STATE["SS_PLAY"] then
				
					pPicture:SetShow( true )
				
				end
				
			end
		
		end
			
		--장비 정비중 표시
		pStatic = pDialog:GetStatic( "PVP_Room_Team_Equip" )
		pPicture = pStatic:GetPicture( index )
		pPicture:SetShow( false )

		if pSlotdata:GetSlotState() == SLOT_STATE["SS_WAIT"] then
		
			if pSlotdata:GetIsPitIn() == true then
		
				pPicture:SetShow( true )
		
			end
		
		end

	end

end

--]]

function InitUI()

	pDialogManager = g_pKTDXApp:GetDialogManager()
	pPVPRoom = g_pData:GetPVPRoom()
	
	pDialog = pDialogManager:GetDialog( "DLG_PVP_Room_Front" )
	pDialogBack = nil
	if ( pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM"] ) or ( pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM_DEATH"] ) then
	
		pDialogBack = pDialogManager:GetDialog( "DLG_PVP_Room_Team_Back" )
	
	else
	
		pDialogBack = pDialogManager:GetDialog( "DLG_PVP_Room_Death_Back" )
	
	end
	
	
		--시간 과 킬수 실시간 변경?
	pStatic = pDialog:GetStatic( "StaticPVP_Room_TIME" )
	pString = pStatic:GetString(0)
	
	playTime = pPVPRoom:GetPlayTime()
	pString:SetMsg( playTime )
	
	pStatic = pDialog:GetStatic( "StaticPVP_Room_KILL" )
	pString = pStatic:GetString(0)
	
	winKillNum = pPVPRoom:GetWinKillNum()
	pString:SetMsg( winKillNum )

	

	
	--일반 팀전일 경우
	if  pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM"] then
	
		pButton = pDialogBack:GetButton( "PVP_Room_Kill_RightArrow" )
		pButton:SetShow( false )
		pButton:SetEnable( false )
		
		pButton = pDialogBack:GetButton( "PVP_Room_Kill_LeftArrow" )
		pButton:SetShow( false )
		pButton:SetEnable( false )
		
		pStatic = pDialog:GetStatic( "StaticPVP_Room_KILL" )
		pStatic:SetShow( false )
	
		pStatic = pDialogBack:GetStatic( "StaticPVP_Room_GameType" )
		pPicture = pStatic:GetPicture(0)
		pPicture:SetShow( true )
		
		pPicture = pStatic:GetPicture(1)
		pPicture:SetShow( false )
		
		pPicture = pStatic:GetPicture(2)
		pPicture:SetShow( false )
		
		
		pMySlot = pPVPRoom:GetMySlot()
		
		pRadioButton = pDialogBack:GetRadioButton( "RadioButtonRed" )
		pRadioButton:SetChecked(false)
		
		pRadioButton = pDialogBack:GetRadioButton( "RadioButtonBlue" )
		pRadioButton:SetChecked(false)
	
		if pMySlot:GetTeamNum() == TEAM_NUM["TN_RED"] then
			
			pRadioButton = pDialogBack:GetRadioButton( "RadioButtonRed" )
			pRadioButton:SetChecked(true)
			
		else
		
			pRadioButton = pDialogBack:GetRadioButton( "RadioButtonBlue" )
			pRadioButton:SetChecked(true)
		
		end
		
	
		
	--서바이벌 모드일 경우
	else
	
		pStatic = pDialog:GetStatic( "StaticPVP_Room_KILL" )
		pStatic:SetShow( true )
	
	
		if  pPVPRoom:GetPVPGameType() == PVP_GAME_TYPE["PGT_TEAM_DEATH"] then
		
		
			pStatic = pDialogBack:GetStatic( "StaticPVP_Room_GameType" )
			pPicture = pStatic:GetPicture(1)
			pPicture:SetShow( true )

			pPicture = pStatic:GetPicture(0)
			pPicture:SetShow( false )
			
			pPicture = pStatic:GetPicture(2)
			pPicture:SetShow( false )
			
			
			pMySlot = pPVPRoom:GetMySlot()
			
			pRadioButton = pDialogBack:GetRadioButton( "RadioButtonRed" )
			pRadioButton:SetChecked(false)
			
			pRadioButton = pDialogBack:GetRadioButton( "RadioButtonBlue" )
			pRadioButton:SetChecked(false)
			
			if pMySlot:GetTeamNum() == TEAM_NUM["TN_RED"] then
				
				pRadioButton = pDialogBack:GetRadioButton( "RadioButtonRed" )
				pRadioButton:SetChecked(true)
				
			else
			
				pRadioButton = pDialogBack:GetRadioButton( "RadioButtonBlue" )
				pRadioButton:SetChecked(true)
			
			end
		
		
		else
		
			pStatic = pDialogBack:GetStatic( "StaticPVP_Room_GameType" )
			pPicture = pStatic:GetPicture(2)
			pPicture:SetShow( true )
			
			pPicture = pStatic:GetPicture(1)
			pPicture:SetShow( false )
			
			pPicture = pStatic:GetPicture(0)
			pPicture:SetShow( false )
			
			
			--[[
			pRadioButton = pDialog:GetRadioButton( "RadioButtonRed" )
			pRadioButton:SetShow( false )
			pRadioButton:SetEnable( false )
			
			pRadioButton = pDialog:GetRadioButton( "RadioButtonBlue" )
			pRadioButton:SetShow( false )
			pRadioButton:SetEnable( false )
			--]]
			
		
		end
	
	end
	

	if pPVPRoom:GetRoomPublic() == true then
	
		pStatic = pDialog:GetStatic( "g_pStaticLock" )
		pStatic:SetShow( false )
		
	else
	
		pStatic = pDialog:GetStatic( "g_pStaticLock" )
		pStatic:SetShow( true )
	
	end


end
