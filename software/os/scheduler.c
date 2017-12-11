#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<string.h>
#include"scheduler.h"
#include"error.h"
#include"settings.h"
#include"heap.h"

/* TCBs */
static osTCB_t tasks[MAX_NUMBER_OF_TASKS];
static uint8_t task_cnt = 0;

/* Scheduler */
static uint8_t scheduler_initialized = 0;
static osSchedulerState_t state = S_INIT;
static osHeapNode_t current = NULL;

/* Timing */
static uint32_t sys_clk = 0;

/* Queues */
static osHeapNode_t ready_q[HEAP_SIZE];

static inline osTCB_t* osSchedulerGetRunningT(void)
{
  for(int i=0; i<MAX_NUMBER_OF_TASKS; i++)
  {
    if(tasks[i].state == RUNNING)
      return &tasks[i];  
  } 
}

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
    /* Check fo an empty slot. */
    while(tasks[i].fnc_ptr != NULL)
      i++;
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
  task_running->state = BLOCKED;
  task_running->wake_up = sys_clk + idelay;
}

void osTaskDelayUntil(uint32_t iwakeup_time, uint8_t idelay)
{
  osTCB_t* task_running = osSchedulerGetRunningT(); 
  task_running->state = BLOCKED;
  task_running->wake_up = iwakeup_time + idelay;
}

uint8_t osRunScheduler(void)
{
  printf("System clock: %d\n", ++sys_clk); 
  /* Are any tasks becomming ready? */
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
  switch(state)
  {
    case S_INIT:
      printf("S_INIT\n");
      state = S_EXECUTING_NO_TASK;
      break;
    case S_EXECUTING_TASK:
      printf("S_EXECUTING_TASK\n");
      break;
    case S_EXECUTING_NO_TASK:
      printf("S_EXECUTING_NO_TASK\n");
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
      printf("S_IDELING\n");
      if(!osHeapIsEmpty(ready_q))
        state = S_EXECUTING_NO_TASK;
      break;
  }
}

void osPrintTask(uint8_t index)
{
	printf("Function Pointer:\t%p\n", tasks[index].fnc_ptr); 
	printf("Name:\t\t\t%s\n", tasks[index].name); 
	printf("Arguments Pointer:\t%p\n", tasks[index].fnc_ptr); 
  printf("Priority:\t\t%d\n", tasks[index].priority);
	printf("State:\t\t\t%d\n", tasks[index].state); 
	printf("Wake up:\t\t%d\n", tasks[index].wake_up); 	
}

void osPrintAllTasks(void)
{
	for(int i=0; i<MAX_NUMBER_OF_TASKS; i++)
	{
		osPrintTask(i);	
		printf("\n");
	}
}
