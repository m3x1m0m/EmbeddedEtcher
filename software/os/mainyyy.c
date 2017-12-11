#define _GNU_SOURCE
#include<stdlib.h>
#include<stdio.h>
#include<assert.h>
#include<pthread.h>
#include<signal.h>
#include<sys/time.h>
#include<string.h>
#include<sched.h>
#include<unistd.h>
#include<errno.h>
#include"heap.h"
#include"ostypes.h"
#include"settings.h"
#include"scheduler.h"
#include"error.h"

// core_id = 0, 1, ... n-1, where n is the system's number of cores

int stick_this_thread_to_core(int core_id) {
   int num_cores = sysconf(_SC_NPROCESSORS_ONLN);
   if (core_id < 0 || core_id >= num_cores)
      return EINVAL;

   cpu_set_t cpuset;
   CPU_ZERO(&cpuset);
   CPU_SET(core_id, &cpuset);

   pthread_t current_thread = pthread_self();    
   return pthread_setaffinity_np(current_thread, sizeof(cpu_set_t), &cpuset);
}


void myTask1(void *params) 
{
	char *str = (char*)params;
	volatile int i;
  static int counter = 0;
	printf("%s. Executed task %d times.\n", str, ++counter);
	for (i = 0; i < 100000; ++i);
  osTaskDelay(10);
}

void myTask2(void *params) 
{
	char *str = (char*)params;
	volatile int i;
  static int counter = 0;
	printf("%s. Executed task %d times.\n", str, ++counter);
	for (i = 0; i < 100000; ++i);
  osTaskDelay(20);
}

void myTask3(void *params) 
{
	char *str = (char*)params;
	volatile int i;
  static int counter = 0;
	printf("%s. Executed task %d times.\n", str, ++counter);
	for (i = 0; i < 100000; ++i);
  osTaskDelay(5);
}

#ifdef X86_TEST_ENVIRONMENT
void* simulatedTimer(void* iarg)
{
  uint8_t id = *( (uint8_t*) iarg );
  volatile int j=0;
  stick_this_thread_to_core(1);
  printf("Thread %d starts.\n", id);
  for (j = 0; j < 10e6; ++j);
  printf("Thread %d finishs.\n", id);
  //osRunScheduler(); 
}
void timerCallback(int signum)
{
  static uint8_t cnt = 0;
  static uint8_t ids[MAX_LEVEL_INT_NESTING];
  static struct sched_param scheduling_params[MAX_LEVEL_INT_NESTING];
  static struct sched_param probe1;
  static int probe2 = 0;
  int reture = 0;
  static pthread_t threads[MAX_LEVEL_INT_NESTING];
  if(cnt > (MAX_LEVEL_INT_NESTING-1))  
  {
    //THROW_ERROR(E_MAX_LEVEL_INT_NESTING);
    //exit(EXIT_FAILURE);
  }
  else
  {
    ids[cnt] = cnt;
    scheduling_params[cnt].sched_priority = sched_get_priority_min(SCHED_FIFO) + cnt*2;
    printf("Thread %d has priority %d.\n", cnt, scheduling_params[cnt].sched_priority);
    pthread_create(&threads[cnt], NULL, &simulatedTimer, &ids[cnt]);
    reture = pthread_setschedparam(threads[cnt], SCHED_FIFO, &scheduling_params[cnt]);
    if(reture!=0)
      printf("Error setting the priority: %d.\n", reture); 
    cnt++; 
  }
}
#endif

int main(void)
{
  #ifdef X86_TEST_ENVIRONMENT
  struct sigaction sa; 
  struct itimerval timer; 
  /* Install timer_handler as the signal handler for SIGVTALRM.  */ 
  memset (&sa, 0, sizeof (sa)); 
  sa.sa_handler = &timerCallback; 
  sigaction (SIGVTALRM, &sa, NULL); 
  /* Configure the timer to expire after 250 msec...  */ 
  timer.it_value.tv_sec = 0;  
  timer.it_value.tv_usec = CLOCK_TICK_RATE_MS * 1000; 
  /* ... and every 250 msec after that.  */ 
  timer.it_interval.tv_sec = 0;  
  timer.it_interval.tv_usec = CLOCK_TICK_RATE_MS; 
  /* Start a virtual timer. It counts down whenever this process is executing.  */ 
  setitimer (ITIMER_VIRTUAL, &timer, NULL);
  #endif

  /* Add some tasks. */
  osTaskCreate(&myTask1, "Task1", "This is Task1.", 1, NULL);
  osTaskCreate(&myTask2, "Task2", "This is Task2.", 2, NULL);
  osTaskCreate(&myTask3, "Task3", "This is Task3.", 3, NULL);

  osPrintAllTasks();
  
  #ifdef X86_TEST_ENVIRONMENT
  /* Do busy work.  */
  while (1);
  #endif
  return 0;
}
