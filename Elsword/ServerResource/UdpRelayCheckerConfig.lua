-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- JoySword PvP profile: default

-- UDP Relay Checker 설정
UdpRelayChecker:SetUdpRelayCheckerOn( False )
UdpRelayChecker:AddUdpRelayCheckerOnServerClass( 3 )
UdpRelayChecker:SetUdpRelayCheckerPrintLog( False )
UdpRelayChecker:SetUdpRelayCheckerPort( 26424 )
UdpRelayChecker:SetUdpRelayCheckerTimeGap( 5.0 )
UdpRelayChecker:SetDBUpdateTimeGap( 300.0 )
