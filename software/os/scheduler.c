//--------------Includes-----------------

#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<string.h>
#include"scheduler.h"
#include"error.h"
#include"heap.h"
#include"printf.h"
#include"ossettings.h"
#include"../platform/system_timer.h"

/* TCBs */
static osTCB_t tasks[MAX_NUMBER_OF_TASKS];
static uint8_t task_cnt = 0;

/* Scheduler */
static uint8_t scheduler_initialized = 0;
static osSchedulerState_t state = S_INIT;
static osHeapNode_t current = NULL;

/* Timing */
static uint32_t sys_clk = 0;

/* Priority queues */
static osHeapNode_t ready_q[HEAP_SIZE];

/** Get the task which is running.
 *
 * @retval Pointer to TCB of the running task.
 */
static inline osTCB_t* osSchedulerGetRunningT(void)
{
  for(int i=0; i<MAX_NUMBER_OF_TASKS; i++)
  {
    if(tasks[i].state == RUNNING)
      return &tasks[i];  
  }
  return NULL;
}

/** Initialize scheduler.
 *
 */
static void osSchedulerInit(void)
{
  /* A slot is defined empty when the fnc. pointer 
  points to the NULL pointer. */
  for(int i=0; i<MAX_NUMBER_OF_TASKS;i++)
  {
    tasks[i].fnc_ptr = NULL;   
  } 
  scheduler_initialized = 1; 
}

uint8_t osTaskCreate(void (*ifnc_ptr)(void*), char* itask_name, void* iarguments, uint8_t ipriority, const osTCB_t* oTaskHandle)
{
  uint8_t i=0;
  /* If not done so far initialize scheduler. */
  if(!scheduler_initialized)
    osSchedulerInit();
  /* Is enough memory available to create task?*/
	if(task_cnt < MAX_NUMBER_OF_TASKS)
	{
		/* Search for an empty slot. */
		while(tasks[i].fnc_ptr != NULL)
			i++;
		/* Fill empty slot. */
		tasks[i].fnc_ptr = ifnc_ptr;
		strcpy(tasks[i].name, itask_name);
		tasks[i].arguments = iarguments;
		tasks[i].priority = ipriority;
		tasks[i].state = READY;
		tasks[i].wake_up = 0;
		if(oTaskHandle != NULL)
			oTaskHandle = &(tasks[task_cnt]);
		/* Increase number of tasks. */
		task_cnt++;
		osHeapInsert(ready_q, &tasks[i]);
			return 1;
	}
	else
		THROW_ERROR(E_MAX_NUMBER_OF_TASKS);
	return 0;
}

void osTaskDelete(osTCB_t* iotask)
{
  iotask->fnc_ptr = NULL; 
}

void osTaskDelay(uint8_t idelay)
{
  osTCB_t* task_running = osSchedulerGetRunningT(); 
  if( task_running == NULL )
	  THROW_ERROR(E_NULL_FORBIDDEN);
  task_running->state = BLOCKED;
  task_running->wake_up = sys_clk + idelay;
}

void osTaskDelayUntil(uint32_t iwakeup_time, uint8_t idelay)
{
  osTCB_t* task_running = osSchedulerGetRunningT(); 
  if( task_running == NULL )
  	  THROW_ERROR(E_NULL_FORBIDDEN);
  task_running->state = BLOCKED;
  task_running->wake_up = iwakeup_time + idelay;
}

void osRunScheduler(void)
{
	uint32_t sys_clk_old = sys_clk;
	static uint8_t flag = 0;
	/* The Cortex-M3 system timer for instance
	 * can not handle a very high period needed
	 * e.g. for debugging as the register is
	 * simply too small. */
	#if (SYS_TICK_MS >= 100)
	static uint16_t cnt = 0;
	if(cnt != SYS_TICK_MS/SYS_TICK_PERIOD_MS)
	{
		/* Don't execute scheduler. */
		cnt++;
		return;
	}
	else
		cnt = 0;
	#endif

	osPrintf("System clock: %d\n", ++sys_clk);
	if(sys_clk < sys_clk_old)
		THROW_WARNING(W_SYS_TIMER_OVERFLOW);
	if( (sys_clk % ALIVE_PULSE_LENGTH) == 0)
		toggleAliveLED();
	/* Are any tasks becomming ready? */
	if(flag)
	{
		osPrintf("Hej!\n");
		for(int i=0; i<MAX_NUMBER_OF_TASKS; i++)
		{
			if( tasks[i].state == BLOCKED)
			{
				if(tasks[i].wake_up <= sys_clk)
				{
					/* Wake up task and put
					it into ready queue. */
					tasks[i].state = READY;
					osHeapInsert(ready_q, &tasks[i]);
				}
			}
		}
	}
	else
	{
		osPrintf("Ho!\n");
		for(int i=MAX_NUMBER_OF_TASKS; i>0; i--)
		{
			if( tasks[i].state == BLOCKED)
			{
				if(tasks[i].wake_up <= sys_clk)
				{
					/* Wake up task and put
					it into ready queue. */
					tasks[i].state = READY;
					osHeapInsert(ready_q, &tasks[i]);
				}
			}
		}
	}
	flag ^= 1;
	switch(state)
	{
		case S_INIT:
			osPrintf("S_INIT\n");
			state = S_EXECUTING_NO_TASK;
			break;
		case S_EXECUTING_TASK:
			osPrintf("S_EXECUTING_TASK\n");
			break;
		case S_EXECUTING_NO_TASK:
			osPrintf("S_EXECUTING_NO_TASK\n");
			/* Check if queue is empty. */
			if(osHeapIsEmpty(ready_q))
			{
				state = S_IDELING;
				break;
			}
			osHeapExtractMaximum(ready_q, &current);
			current->state = RUNNING;
			state = S_EXECUTING_TASK;
			(*(current->fnc_ptr))(current->arguments);
			state = S_EXECUTING_NO_TASK;
			break;
		case S_IDELING:
			osPrintf("S_IDELING\n");
			if(!osHeapIsEmpty(ready_q))
			state = S_EXECUTING_NO_TASK;
			break;
	}
}

void osPrintTask(uint8_t iindex)
{
	//osPrintf("Function Pointer:\t%d\n", tasks[iindex].fnc_ptr);
	osPrintf("Name:\t\t\t%s\n", tasks[iindex].name);
	//osPrintf("Arguments Pointer:\t%d\n", tasks[iindex].fnc_ptr);
	//osPrintf("Priority:\t\t%d\n", tasks[iindex].priority);
	//osPrintf("State:\t\t\t%d\n", tasks[iindex].state);
	//osPrintf("Wake up:\t\t%d\n", tasks[iindex].wake_up);
}

void osPrintAllTasks(void)
{
	for(int i=0; i<MAX_NUMBER_OF_TASKS; i++)
	{
		osPrintTask(i);	
		osPrintf("\n");
	}
}
