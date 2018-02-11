/*
 * semaphore.c
 *
 *  Created on: Dec 18, 2017
 *      Author: maximilian
 */

#include"ostypes.h"

osSemaphoreHandle_t osSemaphoreCreateBinary(void)
{
	osSemaphoreHandle_t new_semaphore;
	new_semaphore.type = BINARY;
	new_semaphore.data =
}

uint8_t osSemaphoreTake(osSemaphore_t* isemaphore)
{
	if(*isemaphore == AVAILABLE)
	{
		*iisemaphore = TAKEN;
		return 0;
	}
	return ;
}

void osSemaphoreGive()
{

}
