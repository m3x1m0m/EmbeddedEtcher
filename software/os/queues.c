/*
 * queues.c
 *
 *  Created on: Dec 6, 2017
 *      Author: maximilian
 */

#include "stdlib.h"
#include "stm32f10x.h"
#include "queues.h"
#include <stdlib.h>
#include <string.h>

static inline void osWrapArroundInc(osQUEUE_t* q, uint8_t* i)
{
	if( (*i) < q->qsize )
		(*i)++;
	else
		(*i) = 0;
}

static inline uint8_t osQFull(osQUEUE_t* q)
{
	uint8_t next = q->write_p;
	osWrapArroundInc(q, &next);
	return(next == q->read_p);
}

static inline uint8_t osQEmpty(osQUEUE_t* q)
{
	return(q->write_p == q->read_p);
}

void osQInit(osQUEUE_t* q, size_t ivarsize, uint16_t iqsize, void* istart)
{
	q->read_p = 0;
	q->write_p = 0;
	q->varsize = ivarsize;
	q->qsize = iqsize;
	q->start = istart;
}

uint8_t osEnqueue(osQUEUE_t* q, void* data)
{
	if(osQFull(q))
		return 0;
	else
	{
		/* Copy queue element to where it belongs. */
		memcpy( ( q->start + (q->write_p)*(q->varsize) ), data, q->varsize);
		osWrapArroundInc(q, &(q->write_p) );
	}
	return 1;
}


uint8_t osDequeue(osQUEUE_t* q, void* data)
{
	if(osQEmpty(q))
		return 0;
	else
	{
		memcpy(data, ( q->start + (q->read_p)*(q->varsize) ), q->varsize);
		osWrapArroundInc(q, &(q->read_p) );
	}
	return 1;
}
