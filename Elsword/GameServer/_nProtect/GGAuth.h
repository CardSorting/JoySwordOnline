#pragma once

#include "GameServer.h"

class KGSUser;

//개인 유저별 korea nProtect 모듈운용 클래스

class KGGAuth
{
	enum ENUM_SET_TIME
	{
		ST_FIRST_AUTH_TIME		= 30,
		ST_LOOP_AUTH_TIME_MIN	= 240,	//min random time(auth check)
		ST_LOOP_AUTH_TIME_MAX	= 300,	//max random time(auth check)
	};

	enum ENUM_TIMER
	{
		TM_FIRST_AUTH_TIME = 0,
		TM_LOOP_AUTH_TIME,
		TM_END,
	};

public:
	KGGAuth();
	virtual ~KGGAuth();

	void	SetEnable( bool bEnable ){ m_bEnable = bEnable; }	//클래스 사용여부 셋팅
	bool	GetEnable(){ return m_bEnable; }

	void	Init();
	bool	Tick( IN KGSUserPtr spUser );

	bool	FirstAuthQuery( IN KGSUserPtr spUser );
	bool	CheckAuthAnswer( IN KGSUserPtr spUser, IN KEGS_KNPROTECT_AUTH_CHECK_NOT& kInfo );

private:
	bool	AuthQuery( IN KGSUserPtr spUser );
	void	RandTickTime();	//랜덤으로 인증체크를 하기위해 시간을 새로 설정한다.

protected:
	bool				m_bEnable;
	CCSAuth2			m_cCSA;		//잉카 한국 모듈

	boost::timer		m_kTimer[TM_END];
	bool				m_bIsFirstAuth;
	bool				m_bIsLoopAuth;

	double				m_AuthTickTime;
};
