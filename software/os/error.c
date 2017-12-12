#include<stdio.h>
#include<string.h>
#include<stdint.h>
#include"error.h"
#include"helpers.h"
#include"printf.h"
#include"ossettings.h"

uint8_t osExplainError(const char* ifile, const uint8_t iline, const osError_t ierror, char* iomessage)
{ 
  char z[10];
  if( !osItoa(iline, z, sizeof(z), NULL) )
    return 0;
	strcat(iomessage, ifile);
	strcat(iomessage, ":");
	strcat(iomessage, z);
	strcat(iomessage, ": error: ");
	switch(ierror)
	{
		case E_MAX_NUMBER_OF_TASKS:
			strcat(iomessage, "Maximum number of tasks (N = ");
			if( !osItoa(MAX_NUMBER_OF_TASKS, z, sizeof(z), NULL) )
				return 0;
			strcat(iomessage, z);
			strcat(iomessage, ") is reached.\n");
			break;
		case E_NULL_FORBIDDEN:
			strcat(iomessage, "A NULL pointer is forbidden in this place.\n");
			break;
		case E_HEAP_OVERLFOW:
			strcat(iomessage, "Maximum heap size (N = ");
			if( !osItoa(HEAP_SIZE, z, sizeof(z), NULL) )
				return 0;
			strcat(iomessage, z);
			strcat(iomessage, ") is reached.\n");
			break;
		default:
			strcat(iomessage, "Unknown error or no explanation implemented yet.\n");
	}
	return 1;
}

uint8_t osPrintError(const char* ifile, const int iline, const osError_t ierror)
{
	char iomessage[MAX_MESSAGE_SIZE] = {'\0'};
	osExplainError(ifile, iline, ierror, iomessage);
	#ifdef X86_TEST_ENVIRONMENT
	return printf("%s", iomessage);
	#else
	return osPrintf("%s", iomessage);
	#endif
}

uint8_t osExplainWarning(const char* ifile, const uint8_t iline, const osWarning_t ierror, char* iomessage)
{
  char z[10];
  if( !osItoa(iline, z, sizeof(z), NULL) )
    return 0;
	strcat(iomessage, ifile);
	strcat(iomessage, ":");
	strcat(iomessage, z);
	strcat(iomessage, ": warning: ");
	switch(ierror)
	{
		case W_SYS_TIMER_OVERFLOW:
			strcat(iomessage, "System timer variable just had an overflow.");
			break;
		default:
			strcat(iomessage, "Unknown warning or no explanation implemented yet.\n");
	}
	return 1;
}

uint8_t osPrintWarning(const char* ifile, const int iline, const osWarning_t ierror)
{
	char iomessage[MAX_MESSAGE_SIZE] = {'\0'};
	osExplainError(ifile, iline, ierror, iomessage);
	#ifdef X86_TEST_ENVIRONMENT
	return printf("%s", iomessage);
	#else
	return osPrintf("%s", iomessage);
	#endif
}
