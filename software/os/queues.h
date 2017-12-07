/*
 * queues.h
 *
 *  Created on: Dec 6, 2017
 *      Author: maximilian
 */

#ifndef OS_QUEUES_H_
#define OS_QUEUES_H_

#include "stm32f10x.h"
#include <stdlib.h>

#define MAX_QUEUE_SIZE 64

typedef struct
{
	uint8_t write_p;
	uint8_t read_p;
	/* Gives you the possibility to use the q with every data type. */
	void* start;
	size_t varsize;
} osQUEUE_t;

void osQInit(osQUEUE_t* q, size_t ivarsize, void* istart);

uint8_t osEnqueue(osQUEUE_t* rx_q, void* data);

uint8_t osDequeue(osQUEUE_t* tx_q, void* data);

#endif /* OS_QUEUES_H_ */
