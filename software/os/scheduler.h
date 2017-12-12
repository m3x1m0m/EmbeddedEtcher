#ifndef OS_SCHEDULER_H
#define OS_SCHEDULER_H

//--------------Include------------------

#include<stdlib.h>
#include<stdint.h>

#include "ossettings.h"
#include"ostypes.h"

//--------------Functions----------------

// TODO: Schedule round robin when two or more tasks have the same priority.

/** Spawn a task.
 *
 * @param ifnc_ptr Pointer to the task function.
 * @param itask_name Internal task name.
 * @param iarguments Enables passing user-defined arguments to the task.
 * @param ipriority A higher value means a higher priority of the task.
 * @param oTaskHandle Pointer to TCB.
 * @retval 1 (task has been spawned) or 0 (FAILED)
 */
uint8_t osTaskCreate(void (*ifnc_ptr)(void*), char* itask_name, void* iarguments, uint8_t ipriority, const osTCB_t* oTaskHandle);

/** Simply delete task by setting the function pointer to NULL.
 *
 * @param iotask Pointer to TCB.
 */
void osTaskDelete(osTCB_t* iotask);

/** Delay function. DO NOT USE FOR PERIODIC TASKS!
 *
 * @param idelay Delay in system ticks.
 */
void osTaskDelay(uint8_t idelay);

/** Delay until function. DO USE FOR PERIODIC TASKS!
 *
 * @param iwakeup_time Time when the task execution started.
 * @param idelay Number of system ticks until the task shall be executed again.
 */
void osTaskDelayUntil(uint32_t iwakeup_time, uint8_t idelay);

/** System core. Scheduler needs to be executed by a timer interrupt.
 *
 */
void osRunScheduler(void);

/** Print all information about one task.
 *
 * @param iindex Index in the TCB array.
 */
void osPrintTask(uint8_t iindex);

/** Print all information about all tasks.
 *
 */
void osPrintAllTasks(void);

#endif
