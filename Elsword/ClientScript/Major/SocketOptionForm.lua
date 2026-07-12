---------------------------선형적 수치 계산 -----------------------------------------
-- 크리티컬
function CalculateLinearCriticalValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 이동 속도
function CalculateLinearMoveSpeedValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 점프력
function CalculateLinearJumpSpeedValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 애니메이션 속도
function CalculateLinearAnimationSpeedValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 명중
function CalculateLinearAntiEvadeValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 회피
function CalculateLinearEvadeValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 각성 충전 속도
function CalculateLinearHyperGageChargeSpeedValue( iSocketLevel )
	return 1.5 * (iSocketLevel - 1) + 9.5
end

-- 데미지 감소
function CalculateLinearAdditionalDefenceValue( iSocketLevel )
	return 1.5 * (iSocketLevel -1) + 9.5
end

-- 추가 데미지
function CalculateLinearAdditionalAttackValue( iSocketLevel )
	return 1.5 * (iSocketLevel -1) + 9.5
end

--------------------------일반적인 수치 계산----------------------------------------
function CalculateHpIncrementValue( iSocketLevel )
	return 15 * iSocketLevel + 85
end

------------------------ 중간값, 기획서 상의 R 값 계산 ------------------------------
-- 크리티컬
function CalculateIntermediateCriticalValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearCriticalValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 로 나눔
	
	return fSumValue / fOnePercentValueByLevel
end

-- 이동 속도
function CalculateIntermediateMoveSpeedValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearMoveSpeedValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 점프력
function CalculateIntermediateJumpSpeedValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearJumpSpeedValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 애니메이션 속도
function CalculateIntermediateAnimationSpeedValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearAnimationSpeedValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 명중
function CalculateIntermediateAntiEvadeValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearAntiEvadeValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 회피
function CalculateIntermediateEvadeValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearEvadeValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 각성 충전 속도
function CalculateIntermediateHyperGageChargeSpeedValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearHyperGageChargeSpeedValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 데미지 감소
function CalculateIntermediateAdditionalDefenceValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearAdditionalDefenceValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-- 추가 데미지
function CalculateIntermediateAdditionalAttackValue( fSumValue, iUserLevel )
	-- 레벨별로 정해진 1% 올리는데 필요한 수치
	local fOnePercentValueByLevel = CalculateLinearAdditionalAttackValue( iUserLevel )
		
	-- 수치총합을 fOnePercentValueByLevel 나눔
	return fSumValue / fOnePercentValueByLevel
end

-------------------------최종 확률 계산------------------------------------------------------------
-- 크리티컬
function CalculateFinalCriticalPercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateCriticalValue( fSumValue, iUserLevel )
	result = result * 0.01	-- 100으로 나누어서 %화 한 값
		
	if 0.4 < result then	-- 40% 보다 큰경우
		result = result * ( -0.4 * result + 1.32 ) - 0.064			
	end
		
	-- 상한값 1.0 (100%)
	return math.min( result, 1.0 )
end


-- 이동 속도
function CalculateFinalMoveSpeedPercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateMoveSpeedValue( fSumValue, iUserLevel )
	local addValue = 0
		
	if 20.0 < result then
		if 25 >= result then
			result = result * 0.3
			addValue = 0.14
		elseif 30 >= result then
			result = result * 0.2
			addValue = 0.165
		else
			result = result * 0.05
			addValue = 0.210
		end	
	end -- if 20.0 < result then
				
	result = result * 0.01 + addValue	-- 100으로 나누어서 %화 한 값

	-- 상한값 0.3 (30%)
	return math.min( result, 0.3 )
end

-- 점프력
function CalculateFinalJumpSpeedPercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateJumpSpeedValue( fSumValue, iUserLevel )
	local addValue = 0
		
	if 20.0 < result then
		if 25 >= result then
			result = result * 0.3
			addValue = 0.14
		elseif 30 >= result then
			result = result * 0.2
			addValue = 0.165
		else
			result = result * 0.05
			addValue = 0.210
		end		
	end -- if 20.0 < result then
		
	result =  result * 0.01 + addValue	-- 100으로 나누어서 %화 한 값

	-- 상한값 0.3 (30%)
	return math.min( result, 0.3 )
end

-- 애니메이션 속도
function CalculateFinalAnimationSpeedPercent( fSumValue, iUserLevel )
	
	local result = CalculateIntermediateAnimationSpeedValue( fSumValue, iUserLevel )
	local addValue = 0
		
	-- 애니메이션 속도는 100으로 나누는 계산을 하지 않는다.
	if 20 < result then		
		if 25 >= result then
			result = result * 0.3
			addValue = 14
		elseif 30 >= result then
			result = result * 0.2
			addValue = 16.5
		else
			result = result * 0.05
			addValue = 21.0
		end	
	end	-- if 20.0 < result then
		
	result = result + addValue

	-- 상한값 30.0 (30%)
	return math.min( result, 30 ) * 0.01
end

-- 명중
function CalculateFinalAnitEvadePercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateAntiEvadeValue( fSumValue, iUserLevel )
	local addValue = 0
		
	if 20 < result then
		if 25 >= result then
			result = result * 0.3
			addValue = 0.14
		elseif 30 >= result then
			result = result * 0.2
			addValue = 0.165
		else
			result = result * 0.05
			addValue = 0.210
		end	
	end	-- if 20.0 < result then
				
	result = result * 0.01 + addValue	-- 100으로 나누어서 %화 한 값

	-- 상한값 0.3 (30%)
	return math.min( result, 0.3 )
end

-- 회피
function CalculateFinalEvadePercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateEvadeValue( fSumValue, iUserLevel )
	local addValue = 0
		
	if 20 < result then
		if 25 >= result then
			result = result * 0.3
			addValue = 0.14
		elseif 30 >= result then
			result = result * 0.2
			addValue = 0.165
		else
			result = result * 0.05
			addValue = 0.210
		end	
	end	-- if 20 < result then
			
	result = result * 0.01 + addValue	-- 100으로 나누어서 %화 한 값

	-- 상한값 0.3 (30%)
	return math.min( result, 0.3 )
end

-- 각성 충전 속도
function CalculateFinalHyperGageChargeSpeedPercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateHyperGageChargeSpeedValue( fSumValue, iUserLevel )
		
	result = result * 0.01 -- 100으로 나누어서 %화 한 값
		
	if 0.2 < result then
		if 1.05 >= result then
			result = math.min( (-0.6 * result + 1.27) * result - 0.03, 0.5 )
		else
			result = 0.5	-- 상한값 0.5 (50%)
		end		
	end
		
	return result
end

-- 데미지 감소
function CalculateFinalAdditionalDefencePercent( fSumValue, iUserLevel )
	local result = CalculateIntermediateAdditionalDefenceValue( fSumValue, iUserLevel )
		
--[[	result = result * 0.01	-- 100으로 나누어서 %화 한 값
		
	if 0.2 < result then
		if 1.05 >= result then
			result = (-0.6 * result + 1.27) * result - 0.03
		else
			result = 0.642	-- 상한값 0.642 (64.2%)
		end		
	end
]]

	result = result * 0.01	-- 100으로 나누어서 %화 한 값
		
	if 0.2 <= result then
		if 0.69 >= result then							-- 0.20 < result =< 0.69 이면  -0.85*result^2 + 1.18*result 
			result = (-0.85 * result + 1.18) * result 
		else
			result = ( result - 0.69 ) * 0.02 + 0.4095	-- result 가 0.69 이상이면 0.02% 기울기의 단조증가함수.
		end		
	end

	return result
end

-- 추가 데미지
function CalculateFinalAdditionalAttackValue( fSumValue, iUserLevel )	
	local intermediateValue = CalculateIntermediateAdditionalAttackValue( fSumValue, iUserLevel )
	
	intermediateValue = intermediateValue * 0.01	-- 100으로 나누어서 %화 한 값
		
	if 0.4 < intermediateValue then
		intermediateValue = (-0.4 * intermediateValue + 1.32) * intermediateValue - 0.064
	end		
	
	if intermediateValue < 0 then
		intermediateValue = 1.0
	else
		intermediateValue = math.min( intermediateValue, 1.0 )
	end

	-- 레벨별 추가 데미지 (A)
	local AdditionalDamagePerLevel = 30 * iUserLevel + 175	-- A = (120 * L + 680) * 0.75 * 0.5 = 45 * L + 255 와 같다     -- 30*iU +175

	-- 레벨별 추가 데미지에 C 값을 곱해준다. (C값이 무엇인지는 기획서 참고, intermediateValue가 C값임)
	AdditionalDamagePerLevel = AdditionalDamagePerLevel * intermediateValue

	-- ***** 별표 다섯개!!! 중요!!!
	-- fFinalPower은 기획서의 M 값 이다.
	--local fFinalPower = 1.5 * math.pow( fPower, 0.65 )     --2 에서 1.5로 수정
	-- 2012.07.29 : fFinalPower은 소스코드로 뺌(필드작업)

	-- A * M
	return AdditionalDamagePerLevel-- * fFinalPower
end

-- 추가 데미지 1레벨 보정 던전 용
function CalculateFinalAdditionalAttackValueInDamageFreeGame( fSumValue, iUserLevel )	
	local intermediateValue = CalculateIntermediateAdditionalAttackValue( fSumValue, iUserLevel )
	
	intermediateValue = intermediateValue * 0.01	-- 100으로 나누어서 %화 한 값
		
	if 0.4 < intermediateValue then
		intermediateValue = (-0.4 * intermediateValue + 1.32) * intermediateValue - 0.064
	end		
	
	if intermediateValue < 0 then
		intermediateValue = 1.0
	else
		intermediateValue = math.min( intermediateValue, 1.0 )
	end

	-- 레벨별 추가 데미지 (A)
	local AdditionalDamagePerLevel = 300 -- 45 * iUserLevel + 255	-- A = (120 * L + 680) * 0.75 * 0.5 = 45 * L + 255 와 같다

	-- 레벨별 추가 데미지에 C 값을 곱해준다. (C값이 무엇인지는 기획서 참고, intermediateValue가 C값임)
	AdditionalDamagePerLevel = AdditionalDamagePerLevel * intermediateValue

	-- ***** 별표 다섯개!!! 중요!!!
	-- fFinalPower은 기획서의 M 값 이다.
	--local fFinalPower = 2 * math.pow( fPower, 0.65 )
	-- 2012.07.29 : fFinalPower은 소스코드로 뺌(필드작업)
	
	-- A * M
	return AdditionalDamagePerLevel-- * fFinalPower
end