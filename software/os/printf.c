/*
 * printf.c
 *
 *  Created on: Dec 7, 2017
 *      Author: maximilian
 */

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "stm32f10x.h"
#include "helpers.h"
#include "printf.h"
#include "../platform/usart.h"

static inline uint8_t osPreventBuffOv(uint* ioindex, size_t ibuffsize)
{
	int i = 0;
	if(*ioindex < ibuffsize)
		(*ioindex)++;
	else
		return 0;
	return 1;
}

int osVPrintf(va_list iarguments, char* iobuffer, size_t ibuffsize, const char* iformat)
{
	uint i = 0;
	int temp_int = 0;
	size_t temp_buffsize = 0;
	char temp_string[16];

	/* Keep processing until the end of the C string. */
	while(*iformat != '\0')
	{
		/* Do formating magic here. */
		if(*iformat == '%')
		{
			iformat++;
			switch(*iformat)
				{
				case 'd':
					/* Get int and convert it.*/
					temp_int = va_arg(iarguments, int);
					if(!osItoa(temp_int, temp_string, sizeof(temp_string)/sizeof(char), &temp_buffsize))
					{
						// TODO: Throw error.
					}
					/* Concatenate. */
					for(uint j=0; j < temp_buffsize; j++)
					{
						iobuffer[i] = temp_string[j];
						osPreventBuffOv(&i, ibuffsize);
					}
					break;
				default:
					// TODO: Throw error in case a wrong formatting cmd is used.
					return 0;
				}
			iformat++;
		}
		else
		{
			/* Copy characters into buffer. */
			iobuffer[i] = *iformat;
			iformat++;
			osPreventBuffOv(&i, ibuffsize);
		}
	}
	iobuffer[i] = '\0';
	/* Return number of elements in the buffer. */
	return (i+1);
}

int osPrintf(const char* iformat, ...)
{
	va_list arguments;
	char buffer[128];
	int return_val;

	va_start(arguments, iformat);
	return_val = osVPrintf(arguments, buffer, sizeof(buffer), iformat);
	if(return_val)
	{
		/* Return value is the size of the created string in the buffer. */
		usart2PutString((uint8_t*)buffer, return_val);
	}
	else
	{
		// TODO: Throw error if sth. goes wrong.
		return -1;
	}
	va_end(arguments);
	return return_val;
}
