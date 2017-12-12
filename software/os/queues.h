/*
 * queues.h
 *
 *  Created on: Dec 6, 2017
 *      Author: maximilian
 */

#ifndef OS_QUEUES_H_
#define OS_QUEUES_H_

//--------------Include------------------

#include<stm32f10x.h>
#include"ostypes.h"
#include<stdlib.h>

#define MAX_QUEUE_SIZE 64

//--------------Functions----------------

void osQInit(osQUEUE_t* q, size_t ivarsize, void* istart);

uint8_t osEnqueue(osQUEUE_t* rx_q, void* data);

uint8_t osDequeue(osQUEUE_t* tx_q, void* data);

#endif /* OS_QUEUES_H_ */
