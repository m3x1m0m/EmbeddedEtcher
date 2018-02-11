/**
 * @file heap.h
 * @author Maximilian Stiefel
 * @date 8 Jan 2018
 * @brief Heap implementation for the tasks of the operating system.
 */


#ifndef OS_H_HEAP_
#define OS_H_HEAP_

//--------------Includes-----------------

#include"ostypes.h"

//--------------Functions----------------

/** Initializes all heap elements by setting them to NULL.
 *
 * @param Array where the heap is stored.
 */
void osHeapInit(osHeapNode_t* ioarray);

/** Classic heapify operation.
 *
 * @param ioarray Array where the heap is stored.
 * @param iind Element to be put in the right place.
 */
void osHeapHeapify(osHeapNode_t* ioarray, uint8_t iind);

/** Build the heap from the bottom up. Given an array which is not heapified at all.
 *
 * @param ioarray Array where the heap is stored.
 */
void osHeapBuild(osHeapNode_t* ioarray);

/** Copy heap maximum.
 *
 * @param ioarray Array where the heap is stored.
 * @param iomax Node, which is the maximum.
 * @retval 1 (SUCCESS) or 0 (heap is empty).
 */
uint8_t osHeapMaximum(osHeapNode_t* ioarray, osHeapNode_t* iomax);

/** Copy heap maximum and remove it (extract).
 *
 * @param ioarray Array where the heap is stored.
 * @param iomax Node, which is the maximum.
 * @retval 1 (SUCCESS) or 0 (heap is empty).
 */
uint8_t osHeapExtractMaximum(osHeapNode_t* ioarray, osHeapNode_t* iomax);

/** Insert a node into the heap.
 *
 * @param ioarray Array where the heap is stored.
 * @param x Node to be inserted into the heap.
 * @retval 1 (SUCCESS) or 0 (heap is full).
 */
uint8_t osHeapInsert(osHeapNode_t* ioarray, osHeapNode_t x);

/** Print heap all priorities for debugging purposes.
 *
 * @param ioarray Array where the heap is stored.
 */
void osHeapPrintS(osHeapNode_t* ioarray);

/** Is the heap empty?
 *
 * @param ioarray Array where the heap is stored.
 */
uint8_t osHeapIsEmpty(osHeapNode_t* ioarray);

#endif /* OS_H_HEAP_ */
