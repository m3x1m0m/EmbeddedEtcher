#ifndef OS_ERROR_H
#define OS_ERROR_H 

//--------------Includes-----------------
#include<ostypes.h>

//--------------Preprocessor Hacks-------

#define THROW_ERROR(ERROR_TYPE)\
	osPrintError(__FILE__, __LINE__, ERROR_TYPE)

//--------------Funtions-----------------

uint8_t osExplainError(const char* ifile, const int iline, const osError_t ierror, char* message);
void osPrintError(const char* ifile, const int iline, const osError_t ierror);

#endif
