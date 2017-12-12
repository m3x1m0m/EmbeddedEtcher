#ifndef H_OS_TYPES
#define H_OS_TYPES

//--------------Includes-----------------

#include<stdint.h>

#include "ossettings.h"

//--------------Scheduler----------------

/** Enum for scheduler state.
 *
 */
typedef enum
{ 
    S_INIT,
    S_EXECUTING_TASK, 
    S_EXECUTING_NO_TASK,
    S_IDELING
} osSchedulerState_t;

/** Enum for task states.
 *
 */
typedef enum
{
            READY, RUNNING, SUSPENDED, BLOCKED
} osTaskState_t;

/** Struct representing the task control block.
 *
 */
typedef struct
{
  void (*fnc_ptr)(void*);
  char name[MAX_SIZE_TASK_NAME];
  void* arguments;
  uint8_t priority;
  osTaskState_t state;
  uint32_t wake_up;
} osTCB_t;

//--------------Errors & Warnings--------

/** Enum to hold all possible error codes.
 *
 */
typedef enum
{
            E_MAX_NUMBER_OF_TASKS,
            E_HEAP_OVERLFOW,
            E_MAX_LEVEL_INT_NESTING,
			E_BUFFER_OVERFLOW,
			E_NULL_FORBIDDEN
} osError_t;

/** Enum to hold all possible warning codes.
 *
 */
typedef enum
{
            W_SYS_TIMER_OVERFLOW
} osWarning_t;

//--------------Heaps--------------------

/** Data type to hold a pointer to a TCB.
 *
 */
typedef osTCB_t* osHeapNode_t; 

//--------------Queues-------------------

/** Data type holds a void pointer to an array to be able to use the queues for many data types.
 *
 */
typedef struct
{
	uint8_t write_p;
	uint8_t read_p;
	/* Gives you the possibility to use the q with every data type. */
	void* start;
	size_t varsize;
} osQUEUE_t;

#endif
