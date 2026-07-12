-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요

PVP_FAILRATE = 
{
	PF_WINTEAM	= 0, -- 승리팀 실패확률
	PF_LOSETEAM	= 1, -- 패배팀 실패확률
	PF_INC_NUM	= 2, -- 팀인원이 한명씩 많을때 높아지는 실패확률
	PF_DEC_NUM	= 3, -- 팀인원이 항면씩 적을때 낮아지는 실패확률
}

DropTable:SetPVPFailRate( PVP_FAILRATE["PF_WINTEAM"], 15 )
DropTable:SetPVPFailRate( PVP_FAILRATE["PF_LOSETEAM"], 5 )
DropTable:SetPVPFailRate( PVP_FAILRATE["PF_INC_NUM"], 3 )
DropTable:SetPVPFailRate( PVP_FAILRATE["PF_DEC_NUM"], 3 )


----------------------------------------------
-- [2012 대전 시즌2] 아이템 실패 확률 계산
----------------------------------------------
function SUCCESSFULLY_GET_THE_ITEM( ePvpGameType, iMyTeamKillNum, iEnemyTeamKillNum )
	return ( math.max( 0, math.min( 15 + ( ( iMyTeamKillNum - iEnemyTeamKillNum ) * 5 ), 30 ) ) <= math.random( 0, 99 ) )
end

----------------------------------------------
-- [2012 대전 시즌2] 리스폰 타임 구하는 함수
----------------------------------------------
function CALCULATE_REBIRTH_TIME( iMyTeamKillNum, iEnemyTeamKillNum, bDidIHaveARebirthRing )	
	
	-- β + { [우리 킬 수 – 적팀 킬 수] × 3 } 초
	-- β 기본 값 : 15
	
	local RebirthTime = math.max( 0, math.min( 30, 15 + ( ( iMyTeamKillNum - iEnemyTeamKillNum ) * 3 ) ) )
	
	-- 리스폰 반지를 착용하고 있다면, 리스폰 타임 4초 감소.
	if( bDidIHaveARebirthRing == true ) then
	
		if( RebirthTime <= 4 ) then
			RebirthTime = 0
		else
			RebirthTime = RebirthTime - 4
		end
		
	end
	
	return RebirthTime
end


-- 대전에서 드롭된 먹지않은 아이템이 같은 그룹의 아이템중에서 변하는 시간.
DropTable:SetPVPItemChangeTime( 3 )


-- 드롭되는 아이템 종류 셋팅
-- 1 : 비약
-- 2 : 정령소환
-- 3 : 문장

-- Ex. DropTable:addPVPDropInfo( 아이템 종류, 아이템 아이디, 드롭될 확률 )

DropTable:AddPVPDropInfo( 1, 77280, 25 )
DropTable:AddPVPDropInfo( 1, 77290, 25 )
DropTable:AddPVPDropInfo( 1, 77300, 25 )
DropTable:AddPVPDropInfo( 1, 77320, 25 )

DropTable:AddPVPDropInfo( 2, 77330, 25 )
DropTable:AddPVPDropInfo( 2, 77340, 25 )
DropTable:AddPVPDropInfo( 2, 77350, 25 )
DropTable:AddPVPDropInfo( 2, 77360, 25 )

DropTable:AddPVPDropInfo( 3, 77370, 20 )
DropTable:AddPVPDropInfo( 3, 77380, 20 )
DropTable:AddPVPDropInfo( 3, 77390, 20 )
DropTable:AddPVPDropInfo( 3, 77400, 20 )
DropTable:AddPVPDropInfo( 3, 77410, 20 )