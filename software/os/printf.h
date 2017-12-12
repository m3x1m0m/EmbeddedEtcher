/*
 * printf.h
 *
 *  Created on: Dec 7, 2017
 *      Author: maximilian
 */

#ifndef OS_PRINTF_H_
#define OS_PRINTF_H_

//--------------Includes-----------------
#include <stdio.h>
#include <stdarg.h>
#include "stm32f10x.h"

//--------------Funtions-----------------

/** printf to be used by the OS user. Can be ported to another platform easily
 * by just using another function to transmit one string with the USART.
 *
 * @param iformat Currently supported are
		%d		integers
		%c 		single characters
		%s 		C strings
		%f 		Floats with 4 decimals
		%.xf 	Floats with x decimals
 * @retval Returns the number of characters printed (SUCCESS) or -1 (FAILURE).
 */
int osPrintf(const char* iformat, ...);

/** printf implementation where the magic happens.
 *
 * @param iarguments Variable arguments list.
 * @param iobuffer Buffer where the formated string ends up.
 * @param ibuffsize Size of the iobuffer for security reasons.
 * @param iformat Format string from the user.
 * @retval Characters printed (SUCCESS) or -1 (FAILURE).
 */
int osVPrintf(va_list iarguments, char* iobuffer, size_t ibuffsize, const char* iformat);

#endif /* OS_PRINTF_H_ */
