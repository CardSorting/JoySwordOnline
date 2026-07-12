#pragma once

#include "GameServer.h"

class KGSUser;

//개인 유저별 korea HackShield 모듈운용 클래스

class KHSAuth
{
	enum ENUM_SET_TIME
	{
		// 4분 ~ 5분 ( nProtect 버전 )
		//ST_LOOP_AUTH_TIME_MIN	= 240,	//min random time(auth check)
		//ST_LOOP_AUTH_TIME_MAX	= 300,	//max random time(auth check)

		// 3분 ~ 4분 ( HackShield 버전 )
		ST_LOOP_AUTH_TIME_MIN	= 180,	//min random time(auth check)
		ST_LOOP_AUTH_TIME_MAX	= 240,	//max random time(auth check)

		//
		//ST_LOOP_AUTH_TIME_MIN	= 40,	//min random time(auth check)
		//ST_LOOP_AUTH_TIME_MAX	= 60,	//max random time(auth check)
	};

	enum ENUM_TIMER
	{
		TM_LOOP_AUTH_TIME = 0,
		TM_END,
	};

public:
	KHSAuth();
	virtual ~KHSAuth();

	void	SetEnable( bool bEnable ){ m_bEnable = bEnable; }	//클래스 사용여부 셋팅
	bool	GetEnable(){ return m_bEnable; }
	
	bool	Tick( IN KGSUserPtr spUser, IN bool bForce = false );

	bool	FirstHackShieldAuth( IN KGSUserPtr spUser );
	bool	OnHackShieldCheckAck( IN KGSUserPtr spUser, IN KEGS_HACKSHIELD_CHECK_ACK& kInfo );

public:
	static void SetAhnHSServerHandle( AHNHS_SERVER_HANDLE hServer ) { ms_hServer = hServer; }
	static AHNHS_SERVER_HANDLE GetAhnHSServerHandle() { return ms_hServer; }
	static void SetHSBFilePath( const std::string& strFilePath ) { ms_HSBFilePath = strFilePath; }
	static const std::string GetHSBFilePath() { return ms_HSBFilePath; }

private:
	bool	SendHackShiendCheckReq( IN KGSUserPtr spUser );
	void	RandTickTime();	//랜덤으로 인증체크를 하기위해 시간을 새로 설정한다.

protected:
	bool						m_bEnable;			// 핵쉴드 동작 여부
	AHNHS_CLIENT_HANDLE			m_hClient;			// check packet 처리에 필요한 핸들

	boost::timer				m_kTimer[TM_END];
	bool						m_bIsStarted;		// 핵쉴드가 시작했는지
	bool						m_bIsSendReq;		// check packet을 클라이언트로 보냈는지
	double						m_AuthTickTime;		// 다음 check packet 보낼시간 간격

	static AHNHS_SERVER_HANDLE	ms_hServer;			// 클라이언트 핸들을 얻기위한 서버 핸들
	static std::string			ms_HSBFilePath;		// HSB파일 경로
};


