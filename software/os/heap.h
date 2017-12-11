#ifndef H_HEAP
#define H_HEAP

//--------------Includes-----------------

#include"ostypes.h"

//--------------Functions----------------

static inline uint8_t osHeapChildL(uint8_t iind);

static inline uint8_t osHeapChildR(uint8_t iind);

static inline uint8_t osHeapParent(uint8_t iind);

static inline uint8_t osHeapSize(osHeapNode_t* ioarray);

static inline void osHeapDelete(osHeapNode_t* ioarray, uint8_t ii);

void osHeapInit(osHeapNode_t* ioarray);

static inline void osHeapSwap(osHeapNode_t* ioarray, uint8_t ia, uint8_t ib);

void osHeapHeapify(osHeapNode_t* ioarray, uint8_t iind);

void osHeapBuild(osHeapNode_t* ioarray);

uint8_t osHeapMaximum(osHeapNode_t* ioarray, osHeapNode_t* iomax);

uint8_t osHeapExtractMaximum(osHeapNode_t* ioarray, osHeapNode_t* iomax);

uint8_t osHeapInsert(osHeapNode_t* ioarray, osHeapNode_t x);

void osHeapPrintS(osHeapNode_t* ioarray);

uint8_t osHeapIsEmpty(osHeapNode_t* ioarray);

#endif
