/**
 * @file ossettings.h
 * @author Maximilian Stiefel
 * @date 8 Jan 2018
 * @brief File where all settings take place.
 */


#ifndef OS_SETTINGS_H
#define OS_SETTINGS_H

/* Error */
#define MAX_MESSAGE_SIZE 255

/* X86 */
//#define X86_TEST_ENVIRONMENT
/* Only needed for X86 simulation. */
#define MAX_LEVEL_INT_NESTING 3

/* Timing */
// TODO: Adjust this:
#define SYS_TICK_MS 100
/* Don't adjust this ;) */
#if (SYS_TICK_MS <= 100)
#define SYS_TICK_PERIOD_MS SYS_TICK_MS
#else
#define SYS_TICK_PERIOD_MS 100
#endif
#define MS_2_TICKS(MS)\
	(MS/SYS_TICK_MS)
#if (SYS_TICK_MS < 0)
  #error "SYS_TICK_MS can not be smaller than 1."
#endif
#if ( (SYS_TICK_MS%1) != 0)
  #error "SYS_TICK_MS has to be a natural number."
#endif

/* Scheduler */
// TODO: Adjust this:
#define MAX_SIZE_TASK_NAME 20
#define MAX_NUMBER_OF_TASKS 4
#define HEAP_SIZE 4
/* Don't adjust this ;) */
#if (MAX_NUMBER_OF_TASKS > HEAP_SIZE)
  #warning "HEAP_SIZE < MAX_NUMER_OF_TASKS: This might lead to problems."
#endif

/* Alive LED */
#define ALIVE_PULSE_LENGTH MS_2_TICKS(200)

/* printf */
/* Convert every \n to \n\r */
#define CONVERT_NEWLINE
/* Size of a standard string printed with printf. */
#define STD_STRING_BUFFER_SIZE 128

/* Debugging ON == 1 or OFF == 0 */
#define DEBUG_MODE 1

#endif /* OS_SETTINGS_H */
