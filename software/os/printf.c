/*
 * printf.c
 *
 *  Created on: Dec 7, 2017
 *      Author: maximilian
 */

//--------------Includes-----------------
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "stm32f10x.h"
#include "helpers.h"
#include "printf.h"
#include "../platform/usart.h"
#include "ossettings.h"
#include "error.h"

/** Increment index for a char buffer savely, preventing overflows.
 *
 * @param ioindex Index, that is supposed to be manipulated.
 * @param ibuffsize Buffer size, which should not be exceeded.
 * @retval 1 (SUCCESS) or 0 (FAILURE).
 */
static inline uint8_t osPreventBuffOv(uint* ioindex, size_t ibuffsize)
{
	if(*ioindex < ibuffsize)
		(*ioindex)++;
	else
	{
		THROW_ERROR(E_BUFFER_OVERFLOW);
		return 0;
	}
	return 1;
}

/** Parsing for floats within printf.
 *
 * @param iobuffer Buffer where the formated string ends up.
 * @param ibuffsize Size of the iobuffer for security reasons.
 * @param iformat Pointer to the format string from the user.
 * @param i Pointer to the index where to write in the iobuffer.
 * @param ifloat Float which shall be printed nicely.
 * @param iflag Indicator if the user wants a certain amount of decimals.
 * @retval Characters printed (SUCCESS) or -1 (FAILURE).
 */
static uint8_t osParseFloat(char* iobuffer, size_t ibuffsize, const char** iformat, uint* i, double ifloat, uint8_t iflag)
{
	int temp_int;
	size_t temp_buffsize;
	char temp_string[16];
	int float_decimals;

	/* Get the pre-decimal positions through implicit casting. */
	temp_int = ifloat;
	if(!osItoa(temp_int, temp_string, sizeof(temp_string)/sizeof(char), &temp_buffsize))
		return 0;
	/* Concatenate. */
	for(uint j=0; j < temp_buffsize; j++)
	{
		iobuffer[*i] = temp_string[j];
		if(!osPreventBuffOv(i, ibuffsize))
			return 0;
	}
	if(!iflag)
		float_decimals = 4;
	else
	{
	/* Determine how many decimals shall be printed. */
		(*iformat)++;
		float_decimals = **iformat;
		/* Go from ASCII to int. */
		float_decimals -= 48;
	}
	/* Print a comma. */
	iobuffer[*i] = ',';
	osPreventBuffOv(i, ibuffsize);
	/* Amplify to prepare for int. data conv. */
	ifloat *= (float)osPowInt(10, float_decimals);
	temp_int = ifloat;
	/* Get rid of everything before the comma. */
	temp_int %= osPowInt(10, float_decimals);
	if(!osItoa(temp_int, temp_string, sizeof(temp_string)/sizeof(char), &temp_buffsize))
		return 0;
	/* Concatenate. */
	for(uint j=0; j < temp_buffsize; j++)
	{
		iobuffer[*i] = temp_string[j];
		if(!osPreventBuffOv(i, ibuffsize))
			return 0;
	}
	/* Get rid of the f. */
	if(iflag)
		(*iformat)++;
	return 1;
}

/** printf implementation where the magic happens.
 *
 * @param iarguments Variable arguments list.
 * @param iobuffer Buffer where the formated string ends up.
 * @param ibuffsize Size of the iobuffer for security reasons.
 * @param iformat Format string from the user.
 * @retval Characters printed (SUCCESS) or -1 (FAILURE).
 */
static int osVPrintf(va_list iarguments, char* iobuffer, size_t ibuffsize, const char* iformat)
{
	uint i = 0;
	int temp_int;
	char temp_char;
	char* temp_charptr;
	size_t temp_buffsize;
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
						return -1;
					/* Concatenate. */
					for(uint j=0; j < temp_buffsize; j++)
					{
						iobuffer[i] = temp_string[j];
						if(!osPreventBuffOv(&i, ibuffsize))
							return -1;
					}
					break;
				case 's':
					temp_charptr = va_arg(iarguments, char*);
					while(*temp_charptr != '\0')
					{
						/* If you are too lazy to always type \r\n */
						#ifdef CONVERT_NEWLINE
						if( (*temp_charptr) == '\n' )
						{
							/* Copy \n */
							iobuffer[i] = *temp_charptr;
							temp_charptr++;
							if(!osPreventBuffOv(&i, ibuffsize))
								return -1;
							/* Add \r */
							iobuffer[i] = '\r';
							if(!osPreventBuffOv(&i, ibuffsize))
								return -1;
						}
						else
						{
							iobuffer[i] = *temp_charptr;
							temp_charptr++;
							if(!osPreventBuffOv(&i, ibuffsize))
								return -1;
						}
						#else
						iobuffer[i] = *temp_charptr;
						temp_charptr++;
						if(!osPreventBuffOv(&i, ibuffsize))
							return -1;
						#endif
					}
					break;
				case 'c':
					/* Get char and convert it.*/
					temp_char = va_arg(iarguments, int);
					iobuffer[i] = temp_char;
					if(!osPreventBuffOv(&i, ibuffsize))
						return -1;
					break;
				case '%':
					/* Enable possibility to write %% to write a single %.*/
					iobuffer[i] = '%';
					if(!osPreventBuffOv(&i, ibuffsize))
						return -1;
					break;
				case '.':
					if(!osParseFloat(iobuffer, ibuffsize, &iformat, &i, va_arg(iarguments, double), 1))
						return -1;
					break;
				case 'f':
					if(!osParseFloat(iobuffer, ibuffsize, &iformat, &i, va_arg(iarguments, double), 0))
						return -1;
					break;
				default:
					THROW_ERROR(E_WRONG_USAGE_OF_PRINTF);
					return 0;
				}
			/* Skip control specifier. */
			iformat++;
		}
		else
		{
			/* If you are too lazy to always type \r\n */
			#ifdef CONVERT_NEWLINE
			if( (*iformat) == '\n' )
			{
				/* Copy \n */
				iobuffer[i] = *iformat;
				iformat++;
				if(!osPreventBuffOv(&i, ibuffsize))
					return -1;
				/* Add \r */
				iobuffer[i] = '\r';
				if(!osPreventBuffOv(&i, ibuffsize))
					return -1;
			}
			#endif
			/* Copy characters into buffer. */
			iobuffer[i] = *iformat;
			iformat++;
			if(!osPreventBuffOv(&i, ibuffsize))
				return -1;
		}
	}
	iobuffer[i] = '\0';
	/* Return number of elements in the buffer. */
	return (i+1);
}

int osPrintf(const char* iformat, ...)
{
	va_list arguments;
	char buffer[STD_STRING_BUFFER_SIZE];
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
		THROW_ERROR(E_PRINTF_WENT_WRONG);
		return -1;
	}
	va_end(arguments);
	return return_val;
}
