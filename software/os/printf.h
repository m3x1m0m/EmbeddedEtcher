/**
 * @file printf.h
 * @author Maximilian Stiefel
 * @date 8 Jan 2018
 * @brief Lightweight version of GNU printf.
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

#endif /* OS_PRINTF_H_ */
