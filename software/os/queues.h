/**
 * @file queues.h
 * @author Maximilian Stiefel
 * @date 8 Jan 2018
 * @brief Implementation for queues.
 */

#ifndef OS_QUEUES_H_
#define OS_QUEUES_H_

//--------------Include------------------

#include<stm32f10x.h>
#include"ostypes.h"
#include<stdlib.h>

//--------------Functions----------------

/** Function to initialize a queue properly.
 *
 * @param q Pointer to the memory where the q is stored.
 * @param ivarsize Size of the variable type stored in the q in bytes.
 * @param iqsize Number of slots of the q.
 * @param istart Pointer to the array where the actual data of the q is stored.
 */
void osQInit(osQUEUE_t* q, size_t ivarsize, uint16_t iqsize, void* istart);

/** Copy data to the q.
 *
 * @param q Q we are talking about.
 * @param data Pointer to a local variable where data is stored.
 * @retval 1 (data successfully copied) or 0 (q is full).
 */
uint8_t osEnqueue(osQUEUE_t* q, void* data);

/** Copy data from the q.
 *
 * @param q Q we are talking about.
 * @param data Pointer to a local variable where the data from the q shall end up.
 * @retval 1 (data successfully copied) or 0 (q is empty).
 */
uint8_t osDequeue(osQUEUE_t* q, void* data);

#endif /* OS_QUEUES_H_ */
