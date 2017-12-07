/*
 * system_timer.c
 *
 *  Created on: Dec 6, 2017
 *      Author: maximilian
 */

#include "stm32f10x.h"
#include "stm32f10x_flash.h"
#include "stm32f10x_rcc.h"

#define ALIVE_PULSE_LENGTH 200

static volatile uint32_t ticky = 0;

void InitAliveLED(void)
{
	/* Activate clock for peripheral. */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);

	/* Initialize GPIO Pin. */
	GPIO_InitTypeDef GPIO_InitStructure ;
	GPIO_StructInit (&GPIO_InitStructure );
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5 ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP ;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz ;
	GPIO_Init (GPIOA , & GPIO_InitStructure );
}

void InitClock(void)
{
	/* Configure all clocks to max for best performance.
	   If there are EMI, power, or noise problems, try slowing the clocks.*/

	/* First set the flash latency to work with our clock.
	   000 Zero wait state, if 0  MHz < SYSCLK <= 24 MHz
	   001 One wait state, if  24 MHz < SYSCLK <= 48 MHz
	   010 Two wait states, if 48 MHz < SYSCLK <= 72 MHz */
	FLASH_SetLatency(FLASH_Latency_1);

	/* Start with HSI (High-Speed Internal) clock with 8 MHz, divide by 2 and multiply by 9 to
	   get maximum allowed frequency: 36 MHz
	   Enable PLL, wait till it's stable, then select it as system clock*/
	RCC_PLLConfig(RCC_PLLSource_HSI_Div2, RCC_PLLMul_9);
	RCC_PLLCmd(ENABLE);
	while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET) {}
	RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);

	/* Set HCLK, PCLK1, and PCLK2 to SCLK. */
	RCC_HCLKConfig(RCC_SYSCLK_Div1);
	RCC_PCLK1Config(RCC_HCLK_Div8);
	RCC_PCLK2Config(RCC_HCLK_Div8);

	/*  Configure Cortex-M System Tick Timer to tick every ms.*/
	SystemCoreClockUpdate();
	SysTick_Config(SystemCoreClock / 1000);
}

void SysTick_Handler(void)
{
	static volatile uint8_t led_stat = 0;
	if(ticky == ALIVE_PULSE_LENGTH)
	{
		led_stat = !led_stat;
		GPIO_WriteBit(GPIOA, GPIO_Pin_5, led_stat);
		ticky = 0;
	}
	else
		ticky++;
}
