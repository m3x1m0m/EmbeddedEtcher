#ifndef OS_SCHEDULER_H
#define OS_SCHEDULER_H

//--------------Include------------------

#include<stdlib.h>
#include<stdint.h>
#include"settings.h"
#include"ostypes.h"

//--------------Functions----------------

static inline osTCB_t* osSchedulerGetRunningT(void);

static void osSchedulerInit(void);

uint8_t osTaskCreate(void (*ifnc_ptr)(void*), char* itask_name, void* iarguments, uint8_t ipriority, const osTCB_t* oTaskHandle);

void osTaskDelete(osTCB_t* iotask);

void osTaskDelay(uint8_t idelay);

void osTaskDelayUntil(uint32_t iwakeup_time, uint8_t idelay);

uint8_t osRunScheduler(void);

void osPrintTask(uint8_t index);

void osPrintAllTasks(void);

#endif
