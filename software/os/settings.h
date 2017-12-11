#ifndef OS_SETTINGS_H
#define OS_SETTINGS_H

/* Error */
#define MAX_MESSAGE_SIZE 255

/* Porting */
#define X86_TEST_ENVIRONMENT
/* Only needed for X86 simulation. */
#define MAX_LEVEL_INT_NESTING 3

/* Scheduler */
#define MAX_SIZE_TASK_NAME 20
#define MAX_NUMBER_OF_TASKS 4
#define CLOCK_TICK_RATE_MS 10
#define HEAP_SIZE 6

#if (MAX_NUMBER_OF_TASKS > HEAP_SIZE)
  #warning "HEAP_SIZE < MAX_NUMER_OF_TASKS: This might lead to problems."
#endif

#endif 
