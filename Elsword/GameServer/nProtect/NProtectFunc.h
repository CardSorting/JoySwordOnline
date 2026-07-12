#pragma once

#include <dbg/dbg.hpp>
#include <memory.h>
#include "ggsrv25.h"

//#if defined(DEBUG) || defined(_DEBUG)
//#define NO_GAMEGUARD
//#endif

#define KNP_UPDATE_TIME 300.0

void KNP_Enable( bool bEnable );

bool KNP_Init();

void KNP_CleanupGameguardAuth();

void KNP_Tick();

GGAUTHS_API void NpLog( int mode, char* msg );

GGAUTHS_API void GGAuthUpdateCallback(PGG_UPREPORT report);