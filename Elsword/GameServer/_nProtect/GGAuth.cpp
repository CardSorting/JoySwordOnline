#include "GSUser.h"
#include "GGAuth.h"
#include "NetError.h"

#define VERIFY_ENABLE( reCode ) \
	if( GetEnable() == false ) \
	{ \
		reCode; \
	}

KGGAuth::KGGAuth()
:
m_bEnable(false),
m_bIsFirstAuth(false),
m_bIsLoopAuth(false),
m_AuthTickTime( KGGAuth::ENUM_SET_TIME::ST_LOOP_AUTH_TIME_MAX )
{
}

KGGAuth::~KGGAuth()
{
	m_bEnable = false;
}

void KGGAuth::Init()
{
	VERIFY_ENABLE( return );

	m_cCSA.Init();
}

bool KGGAuth::Tick( IN KGSUserPtr spUser )
{
	VERIFY_ENABLE( return true );

	if( m_bIsFirstAuth == true )
	{
		if( m_kTimer[TM_FIRST_AUTH_TIME].elapsed() > (float)ST_FIRST_AUTH_TIME )
		{
			KPacketOK kShowDown;

			kShowDown.m_iOK = NetError::ERR_KNP_02;

			//종료 이유를 클라이언트에게 알려주어야 한다.
			spUser->SendPacket( EGS_KNPROTECT_USER_SHOWDOWN_NOT, kShowDown );

			m_bIsFirstAuth = false;

			START_LOG( cerr, L"nProtect 인증 실패 : 10초 안에 첫 응답이 없음.!" )
				<< BUILD_LOG( spUser->GetUID() )
				<< BUILD_LOG( spUser->GetCharUID() )
				<< END_LOG;

			return false;
		}
	}

	if( m_bIsLoopAuth == true )
	{
		if( m_kTimer[TM_LOOP_AUTH_TIME].elapsed() >= m_AuthTickTime )
		{
			if( AuthQuery( spUser ) == false )
			{
				m_bIsLoopAuth = false;

				return false;
			}

			m_kTimer[TM_LOOP_AUTH_TIME].restart();
			RandTickTime();
		}
	}

	return true;
}

bool KGGAuth::FirstAuthQuery( IN KGSUserPtr spUser )
{
	VERIFY_ENABLE( return true );

	if( AuthQuery( spUser ) == false )
	{
		return false;
	}

	//10초안에 응답이 오는걸 체크한다.
	m_bIsFirstAuth = true;
	m_kTimer[TM_FIRST_AUTH_TIME].restart();

	return true;
}

bool KGGAuth::CheckAuthAnswer( IN KGSUserPtr spUser, IN KEGS_KNPROTECT_AUTH_CHECK_NOT& kInfo )
{
	VERIFY_ENABLE( return true );

	bool	bRet = true;

	m_cCSA.m_AuthAnswer.dwIndex		= kInfo.dwIndex;
	m_cCSA.m_AuthAnswer.dwValue1	= kInfo.dwValue1;
	m_cCSA.m_AuthAnswer.dwValue2	= kInfo.dwValue2;
	m_cCSA.m_AuthAnswer.dwValue3	= kInfo.dwValue3;

	DWORD dwRet = m_cCSA.CheckAuthAnswer();
	
	if( dwRet != ERROR_SUCCESS )
	{
		//에러처리
		WCHAR			wszError[MAX_PATH] = L"";
		std::wstring	wstrError;

		wsprintf( wszError, L"[ERRCODE:%d] Query : %08X %08X %08X %08X", 
						dwRet,
						m_cCSA.m_AuthAnswer.dwIndex, 
						m_cCSA.m_AuthAnswer.dwValue1,
						m_cCSA.m_AuthAnswer.dwValue2,
						m_cCSA.m_AuthAnswer.dwValue3
						);

		wstrError = wszError;

		START_LOG( cerr, L"nProtect 인증실패.!" )
					<< BUILD_LOG( spUser->GetUID() )
					<< BUILD_LOG( spUser->GetCharUID() )
					<< BUILD_LOG( wstrError )
					<< END_LOG;

		//종료이유를 클라이언트에게 알려주어야 한다.
		KPacketOK kShowDown;
		kShowDown.m_iOK = NetError::ERR_KNP_00;

		if( dwRet == 12 || dwRet == 14 )
		{
			kShowDown.m_iOK = NetError::ERR_KNP_01;
		}

		//종료 이유를 클라이언트에게 알려주어야 한다.
		spUser->SendPacket( EGS_KNPROTECT_USER_SHOWDOWN_NOT, kShowDown );

		bRet = false;
	}

	//첫인증에 의한 회신이면 꺼주고 5분 인증을 동작시킨다.
	//로그인시 딱한번만 동작함.
	if( m_bIsFirstAuth == true )
	{
		m_bIsFirstAuth = false;

		if( dwRet == ERROR_SUCCESS && bRet == true )
		{
			m_kTimer[TM_LOOP_AUTH_TIME].restart();
			m_bIsLoopAuth = true;

			bRet = AuthQuery( spUser );

			if( bRet == false )
			{
				START_LOG( cerr, L"2번째 바로 보내는 인증 생성실패.!" )
					<< BUILD_LOG( spUser->GetUID() )
					<< BUILD_LOG( spUser->GetCharUID() )
					<< END_LOG;
			}
		}
	}

	return bRet;
}

bool KGGAuth::AuthQuery( IN KGSUserPtr spUser )
{
	VERIFY_ENABLE( return true );

	KEGS_KNPROTECT_AUTH_CHECK_NOT kNot;

	DWORD dwRet = m_cCSA.GetAuthQuery();

	if( dwRet != ERROR_SUCCESS )
	{
		KPacketOK kShowDown;
		kShowDown.m_iOK = NetError::ERR_KNP_00;

		//에러처리
		WCHAR			wszError[MAX_PATH] = L"";
		std::wstring	wstrError;

		wsprintf( wszError, L"[ERRCODE:%d] Query : %08X %08X %08X %08X", 
			dwRet,
			m_cCSA.m_AuthQuery.dwIndex, 
			m_cCSA.m_AuthQuery.dwValue1,
			m_cCSA.m_AuthQuery.dwValue2,
			m_cCSA.m_AuthQuery.dwValue3
			);

		wstrError = wszError;

		START_LOG( cerr, L"nProtect 인증 생성 실패.!" )
			<< BUILD_LOG( spUser->GetUID() )
			<< BUILD_LOG( spUser->GetCharUID() )
			<< BUILD_LOG( wstrError )
			<< END_LOG;

		if( dwRet == 12 || dwRet == 14 )
		{
			kShowDown.m_iOK = NetError::ERR_KNP_01;
		}

		//종료 이유를 클라이언트에게 알려주어야 한다.
		spUser->SendPacket( EGS_KNPROTECT_USER_SHOWDOWN_NOT, kShowDown );

		return false;
	}

	kNot.dwIndex		= m_cCSA.m_AuthQuery.dwIndex;
	kNot.dwValue1		= m_cCSA.m_AuthQuery.dwValue1;
	kNot.dwValue2		= m_cCSA.m_AuthQuery.dwValue2;
	kNot.dwValue3		= m_cCSA.m_AuthQuery.dwValue3;

	spUser->SendPacket( EGS_KNPROTECT_AUTH_CHECK_NOT, kNot );

	return true;
}


void KGGAuth::RandTickTime()
{
	int iRandNum = rand()/static_cast<int>(ST_LOOP_AUTH_TIME_MAX - ST_LOOP_AUTH_TIME_MIN);
	iRandNum += static_cast<int>(ST_LOOP_AUTH_TIME_MIN);

	m_AuthTickTime = static_cast<double>(iRandNum);
}


