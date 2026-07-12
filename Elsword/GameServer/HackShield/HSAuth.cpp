#include "GSUser.h"
#include "HSAuth.h"
#include "NetError.h"

#define VERIFY_ENABLE( reCode ) \
	if( GetEnable() == false ) \
	{ \
	reCode; \
	}


AHNHS_SERVER_HANDLE KHSAuth::ms_hServer = NULL;
std::string	KHSAuth::ms_HSBFilePath;


KHSAuth::KHSAuth()
:
m_bEnable(false),
m_hClient(ANTICPX_INVALID_HANDLE_VALUE),
m_bIsStarted(false),
m_bIsSendReq(false),
m_AuthTickTime( KHSAuth::ENUM_SET_TIME::ST_LOOP_AUTH_TIME_MAX )
{	
}

KHSAuth::~KHSAuth()
{
	if( m_bEnable  ||  m_hClient != ANTICPX_INVALID_HANDLE_VALUE )
	{
		_AhnHS_CloseClientHandle( m_hClient );

		//{{ 2009. 11. 17  최육사	핵쉴드 예외처리
		// 핸들을 닫았다면 초기화 해줍니다.
		m_hClient = ANTICPX_INVALID_HANDLE_VALUE;
		//}}
	}

	m_bEnable = false;	
}

bool KHSAuth::Tick( IN KGSUserPtr spUser, IN bool bForce /*= false*/ )
{
	VERIFY_ENABLE( return true );

	if( m_bIsStarted == true )
	{
		if( m_kTimer[TM_LOOP_AUTH_TIME].elapsed() >= m_AuthTickTime  ||  bForce == true )
		{
			//{{ 2009. 8. 28  최육사	req check
			if( m_bIsSendReq == true )
			{
				if( bForce )
				{
					START_LOG( cout, L"클라이언트가 HackShield Check요청을 하였으나 이미 REQ패킷이 클라이언트로 보내어진 상태라서 아무런 처리 안함." )
						<< BUILD_LOG( spUser->GetUID() )
						<< BUILD_LOG( spUser->GetCharUID() )
						<< END_LOG;

					return true;
				}
				
				START_LOG( cerr, L"check req에 대한 ack응답이 오지 않았음." )
					<< BUILD_LOG( spUser->GetUID() )
					<< BUILD_LOG( spUser->GetCharUID() )
					<< END_LOG;

				m_bIsStarted = false;				
				return false;
			}
			//}}

			if( SendHackShiendCheckReq( spUser ) == false )
			{
				m_bIsStarted = false;
				return false;
			}

			m_kTimer[TM_LOOP_AUTH_TIME].restart();
			RandTickTime();
		}
	}

	return true;
}

bool KHSAuth::FirstHackShieldAuth( IN KGSUserPtr spUser )
{
	VERIFY_ENABLE( return true );

	// 서버 핸들을 이용해 접속한 유저의 핸들을 생성
	m_hClient = _AhnHS_CreateClientObject( KHSAuth::GetAhnHSServerHandle() );

	if( m_hClient == ANTICPX_INVALID_HANDLE_VALUE )
	{
		START_LOG( cerr, L"hackshield client object 생성 생성 실패!" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< END_LOG;

		return false;
	}

	// send req
	if( SendHackShiendCheckReq( spUser ) == false )
	{
		START_LOG( cerr, L"hackshield req 메시지 처음 보내는 전송 실패!" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< END_LOG;

		return false;
	}

	// set first auth timer
	m_kTimer[TM_LOOP_AUTH_TIME].restart();
	RandTickTime();
	m_bIsStarted = true;

	return true;
}

bool KHSAuth::SendHackShiendCheckReq( IN KGSUserPtr spUser )
{
	AHNHS_TRANS_BUFFER stRequestBuf;

	//{{ 2009. 11. 17  최육사	핵쉴드 예외처리	
	if( m_hClient == ANTICPX_INVALID_HANDLE_VALUE )
	{
		START_LOG( cerr, L"핵쉴드 체크 패킷을 보내려는데 핸들값이 유효하지 않네?" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< END_LOG;

		return false;
	}
	//}}

	unsigned long ulRet = _AhnHS_MakeRequest( m_hClient, &stRequestBuf );

	if( ulRet != ERROR_SUCCESS  ||  stRequestBuf.nLength == 0  || stRequestBuf.nLength > ANTICPX_TRANS_BUFFER_MAX )
	{
		START_LOG( cerr, L"hack shield req 메시지 생성 실패!" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< BUILD_LOG( ulRet )
			<< BUILD_LOG( stRequestBuf.nLength )
			<< END_LOG;

		return false;
	}

	// byGuidReqMsg
	KEGS_HACKSHIELD_CHECK_REQ kReq;
	kReq.insert( kReq.begin(), &stRequestBuf.byBuffer[0], &stRequestBuf.byBuffer[stRequestBuf.nLength] ); // buffer 길이검사 반드시 해야함!

#ifdef SERV_HACKSHILED_SILENCEMODE_CHECK_FIRST
	if(spUser->GetCheckHackShiledSilenceMode())
	{
		// 한번 보낸 걸 확인하면, 핵실드의 과정으로 이걸 보내지 않는다.
	}
	else
	{
		//spUser->SetCheckHackShiledSilenceMode(true);
		spUser->SendPacket( EGS_HACKSHIELD_CHECK_REQ, kReq );
	}
#else SERV_HACKSHILED_SILENCEMODE_CHECK_FIRST
	spUser->SendPacket( EGS_HACKSHIELD_CHECK_REQ, kReq );
#endif SERV_HACKSHILED_SILENCEMODE_CHECK_FIRST
	//{{ 2009. 8. 28  최육사	send check
	m_bIsSendReq = true;
	//}}
	return true;
}

bool KHSAuth::OnHackShieldCheckAck( IN KGSUserPtr spUser, IN KEGS_HACKSHIELD_CHECK_ACK& kInfo )
{
	if( kInfo.size() <= 0  ||  kInfo.size() > ANTICPX_TRANS_BUFFER_MAX )
	{
		START_LOG( cerr, L"HackShield Ack 패킷size가 이상함!" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< BUILD_LOG( kInfo.size() )
			<< END_LOG;

		//종료 이유를 클라이언트에게 알려주어야 한다.
		KPacketOK kShowDown;
		kShowDown.m_iOK = NetError::ERR_KNP_00;
		spUser->SendPacket( EGS_KNPROTECT_USER_SHOWDOWN_NOT, kShowDown );
		return false;
	}

	AHNHS_TRANS_BUFFER stResponseBuf;
	stResponseBuf.nLength = kInfo.size();
	CopyMemory( stResponseBuf.byBuffer, &kInfo[0], kInfo.size() );

	unsigned long pnErrorCode = 0;

	//{{ 2009. 11. 17  최육사	핵쉴드 예외처리	
	if( m_hClient == ANTICPX_INVALID_HANDLE_VALUE )
	{
		START_LOG( cerr, L"핵쉴드 체크 패킷을 보내려는데 핸들값이 유효하지 않네?" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< END_LOG;

		return false;
	}
	//}}

	unsigned long ulRet = _AhnHS_VerifyResponseEx( m_hClient, stResponseBuf.byBuffer, stResponseBuf.nLength, &pnErrorCode );

	if( ulRet == ANTICPX_RECOMMAND_CLOSE_SESSION )
	{
		CStringW cstrErrCode;
		cstrErrCode.Format( L"0x%08x", pnErrorCode );

		//{{ 2009. 9. 3  최육사		핵쉴드 에러로그 구분해서 표시
		if( pnErrorCode == 0xe9040019 )
		{
			START_LOG( cout, L"HackShield Ack 패킷 인증 결과 : 클라이언트에서 해킹툴 감지" )
				<< BUILD_LOG( spUser->GetUID() )
				<< BUILD_LOG( spUser->GetCharUID() )
				<< BUILD_LOG( pnErrorCode )
				<< BUILD_LOG( cstrErrCode.GetBuffer() );
		}
		else if( pnErrorCode == 0xe904000e )
		{
			START_LOG( cerr, L"HackShield Ack 패킷 인증 결과 : HSB파일이 클라이언트와 맞지 않습니다" )
				<< BUILD_LOG( spUser->GetUID() )
				<< BUILD_LOG( spUser->GetCharUID() )
				<< BUILD_LOG( pnErrorCode )
				<< BUILD_LOG( cstrErrCode.GetBuffer() );
		}
		else
		{
			START_LOG( cerr, L"HackShield Ack 패킷 인증 실패!" )
				<< BUILD_LOG( spUser->GetUID() )
				<< BUILD_LOG( spUser->GetCharUID() )
				<< BUILD_LOG( pnErrorCode )
				<< BUILD_LOG( cstrErrCode.GetBuffer() )
				<< END_LOG;
		}
		//}}
		//종료 이유를 클라이언트에게 알려주어야 한다.
		KPacketOK kShowDown;
		kShowDown.m_iOK = NetError::ERR_KNP_00;
		spUser->SendPacket( EGS_KNPROTECT_USER_SHOWDOWN_NOT, kShowDown );
		return false;
	}

	//{{ 2009. 8. 28  최육사	send check
	m_bIsSendReq = false;
	//}}
	return true;
}

void KHSAuth::RandTickTime()
{
	int iRandNum = rand() % static_cast<int>(ST_LOOP_AUTH_TIME_MAX - ST_LOOP_AUTH_TIME_MIN);
	iRandNum += static_cast<int>(ST_LOOP_AUTH_TIME_MIN);

	m_AuthTickTime = static_cast<double>(iRandNum);
}


