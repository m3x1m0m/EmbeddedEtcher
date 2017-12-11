#include<stdio.h>
#include<string.h>
#include<stdint.h>
#include"error.h"
#include"settings.h"

uint8_t osItoa(int iint, char* iochar, size_t ibuffsize)
{
  int i = 0;
  int j = 0;
  char z[10];
  size_t buff_size_1 = ibuffsize;
  size_t buff_size_2 = sizeof(z);
  while(iint > 0)
  {
    z[i] = (char)('0' + iint % 10);      
    iint /= 10;
    i++;
    if( ((buff_size_1 - 1) < i) || ((buff_size_2 - 1) < i))
      return 0;
  }
  j = i-1;
  while(j >= 0)
  {
    iochar[j] = z[i-j-1];
    j--;
  }
  iochar[i] = '\0';
  return 1;
}

uint8_t osExplainError(const char* ifile, const int iline, const osError_t ierror, char* iomessage)
{ 
  char z[10];
  if(!osItoa(iline, z, sizeof(z)))
    return 0;
	strcat(iomessage, ifile);
	strcat(iomessage, ":");
	strcat(iomessage, z);
	strcat(iomessage, ": error: ");
	switch(ierror)
	{
		case E_MAX_NUMBER_OF_TASKS:
			strcat(iomessage, "Maximum number of tasks (N = ");
      if(!osItoa(MAX_NUMBER_OF_TASKS, z, sizeof(z)))
        return 0; 
      strcat(iomessage, z); 
      strcat(iomessage, ") is reached.\n");
			break;
		default:
			strcat(iomessage, "Unknown error.\n"); 
	}
	return 1;
}

void osPrintError(const char* ifile, const int iline, const osError_t ierror)
{
	char iomessage[MAX_MESSAGE_SIZE] = {'\0'};
  osExplainError(ifile, iline, ierror, iomessage);
	#ifdef X86_TEST_ENVIRONMENT
		printf("%s", iomessage);	
	#endif
}
