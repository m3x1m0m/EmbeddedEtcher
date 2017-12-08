/*
 * printf.h
 *
 *  Created on: Dec 7, 2017
 *      Author: maximilian
 */

#ifndef OS_PRINTF_H_
#define OS_PRINTF_H_

#include <stdio.h>
#include <stdarg.h>
#include "stm32f10x.h"

int osPrintf(const char* iformat, ...);
int osVPrintf(va_list iarguments, char* iobuffer, size_t ibuffsize, const char* iformat);

#endif /* OS_PRINTF_H_ */
