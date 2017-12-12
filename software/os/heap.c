//--------------Includes-----------------
#include<stdio.h>
#include<stdlib.h>
#include<strings.h>
#include"heap.h"
#include"error.h"
#include"ostypes.h"
#include"printf.h"

//--------------Functions----------------

/** Gives the index of the left child of a node.
 *
 * @param iind Index of the node itself.
 * @retval Index of the left child of the node.
 */
static inline uint8_t osHeapChildL(uint8_t iind)
{
  return (2*iind + 1);  
}

/** Gives the index of the right child of a node.
 *
 * @param iind Index of the node itself.
 * @retval Index of the left child of the node.
 */
static inline uint8_t osHeapChildR(uint8_t iind)
{
  return (2*iind + 2);  
}

/** Gives the index of the parent of a node.
 *
 * @param iind Index of the node itself.
 * @retval Index of the left child of the node.
 */
static inline uint8_t osHeapParent(uint8_t iind)
{
  return (iind-1)/2;  
}

/** Gives the size of the heap.
 *
 * @param ioarray Array where the heap is stored.
 * @retval Size of the heap.
 */
static inline uint8_t osHeapSize(osHeapNode_t* ioarray)
{
  int i;
  for(i=0; i<HEAP_SIZE; i++)
  {
    if(ioarray[i] == NULL)
      return i;
  }
  return i;
}

/** Delete one element in the heap.
 *
 * @param ioarray Array where the heap is stored.
 * @retval Index of the left child of the node.
 */
static inline void osHeapDelete(osHeapNode_t* ioarray, uint8_t ii)
{
   ioarray[ii] = NULL; 
}

/** Swap two elements in the heap.
 *
 * @param ioarray Array where the heap is stored.
 * @param ia Index where element a is stored.
 * @param ib Index where element b is stored.
 */
static inline void osHeapSwap(osHeapNode_t* ioarray, uint8_t ia, uint8_t ib)
{
  osHeapNode_t z;
  z = ioarray[ia];
  ioarray[ia] = ioarray[ib];
  ioarray[ib] = z;
}

void osHeapInit(osHeapNode_t* ioarray)
{
  for(int i=0; i<HEAP_SIZE; i++)
  {
    osHeapDelete(ioarray, i); 
  } 
}

void osHeapHeapify(osHeapNode_t* ioarray, uint8_t iind)
{
  uint8_t left = osHeapChildL(iind);
  uint8_t right = osHeapChildR(iind);
  uint8_t largest = 0;
  if( ioarray[left] != NULL ) 
  {
    if( ioarray[left]->priority > ioarray[iind]->priority ) 
      largest = left;
  }
  else
    largest = iind;
  if( ioarray[right] != NULL )
  {
    if( ioarray[right]->priority > ioarray[largest]->priority )
    largest = right;
  }
  if( largest != iind)
  {
    osHeapSwap(ioarray, iind, largest);
    osHeapHeapify(ioarray, largest); 
  }
}

void osHeapBuild(osHeapNode_t* ioarray)
{
  for(int i = (osHeapSize(ioarray)/2); i >= 0; i--)
  {
    osHeapHeapify(ioarray, i);
  }  
}

uint8_t osHeapMaximum(osHeapNode_t* ioarray, osHeapNode_t* iomax)
{
  if(osHeapSize(ioarray) > 0)
  {
    if(iomax != NULL)
      (*iomax) = ioarray[0];
    return 1; 
  }
  else
    /* Heap is empty. */ 
    return 0;
}

uint8_t osHeapExtractMaximum(osHeapNode_t* ioarray, osHeapNode_t* iomax)
{
  if(osHeapSize(ioarray) > 0)
  {
    if(iomax == NULL)
    {
      THROW_ERROR(E_NULL_FORBIDDEN);
      return 0;  
    }
    (*iomax) = ioarray[0]; 
    osHeapSwap(ioarray, 0, osHeapSize(ioarray)-1);
    osHeapDelete(ioarray, osHeapSize(ioarray)-1);     
    osHeapHeapify(ioarray,0);
    return 1;
  }
  else
    /* Heap is empty. */
    return 0;
}

uint8_t osHeapInsert(osHeapNode_t* ioarray, osHeapNode_t x)
{
  uint8_t i = 0;
  if( osHeapSize(ioarray) < HEAP_SIZE)
  {
    ioarray[osHeapSize(ioarray)] = x;
    i = osHeapSize(ioarray)-1;
    while( (i>0) && (ioarray[osHeapParent(i)]->priority < ioarray[i]->priority) ) 
    {
      osHeapSwap(ioarray, i, osHeapParent(i));
      i = osHeapParent(i);  
    }
    return 1;
  }
  else
  {
    THROW_ERROR(E_HEAP_OVERLFOW);
    return 0;  
  }
}

void osHeapPrintS(osHeapNode_t* ioarray)
{
  if( osHeapIsEmpty(ioarray) )
    return;
  for(int i=0; i<HEAP_SIZE; i++) 
  {
    if(ioarray[i] == 0)
      continue;
	#ifdef X86_TEST_ENVIRONMENT
    printf("%d ", ioarray[i]->priority);
	#else
	osPrintf("%d ", ioarray[i]->priority);
	#endif
  } 
	#ifdef X86_TEST_ENVIRONMENT
	printf("\n");
	#else
	osPrintf("\n\r");
	#endif
}

uint8_t osHeapIsEmpty(osHeapNode_t* ioarray)
{
  if(osHeapSize(ioarray) > 0)
    return 0;
  else
    return 1; 
}
