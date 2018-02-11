/**
 * @file helpers.h
 * @author Maximilian Stiefel
 * @date 8 Jan 2018
 * @brief Functions, which one needs here and there for the operating system.
 */


#ifndef OS_HELPERS_H_
#define OS_HELPERS_H_

#include "stm32f10x.h"
#include <stdlib.h>

/** Simple inline power calculation.
 *
 * @param ibase Input base.
 * @param iexponent Input exponent.
 * @retval Result.
 */
inline int osPowInt(int ibase, int iexponent)
{
	int result =1;
	for(int i=0; i < iexponent; i++)
	{
		result *= ibase;
	}
	return result;
}

/** Simple Interger to ASCII conversion.
 *
 * @param iint Input integer.
 * @param iochar C string where the result ends up.
 * @param ibuffsize Size of the C string for security reasons.
 * @param obuffsize Size of the string created by the function.
 * @retval 1 (SUCCESS) or 0 (buffer overflow).
 */
uint8_t osItoa(int iint, char* iochar, size_t ibuffsize, size_t* obuffsize);

#endif /* OS_HELPERS_H_ */
