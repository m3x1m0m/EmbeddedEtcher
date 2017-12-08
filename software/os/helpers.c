/*
 * helpers.c
 *
 *  Created on: Dec 7, 2017
 *      Author: maximilian
 */

#include "stm32f10x.h"
#include <stdlib.h>

uint8_t osItoa(int iint, char* iochar, size_t ibuffsize, size_t* obuffsize)
{
  int i = 0;
  int j = 0;
  char z[16];
  int isnegative = 0;
  size_t buff_size_1 = ibuffsize;
  size_t buff_size_2 = sizeof(z);

  /* Signed or unsigned? */
  if(iint < 0)
  {
	  iint *= -1;
	  isnegative = 1;
  }
  /* Take last digit and convert until iint is gone. */
  while(iint > 0)
  {
    z[i] = (char)('0' + iint % 10);
    iint /= 10;
    i++;
    if( ((buff_size_1 - 1) < (unsigned int)i) || ((buff_size_2 - 1) < (unsigned int)i))
      return 0;
  }

  /* Fix the minus symbol. */
  if( ((buff_size_1 - 1) < (unsigned int)i))
	  return 0;
  else if(isnegative)
  {
	  z[i] = '-';
	  i++;
  }

  /* Copy into output (reverse it as well while doing so). */
  j = i-1;
  while(j >= 0)
  {
    iochar[j] = z[i-j-1];
    j--;
  }
  *obuffsize = i;
  return 1;
}
