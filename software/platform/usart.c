/*
 * usart.c
 *
 *  Created on: Dec 6, 2017
 *      Author: maximilian
 */

#include "usart.h"
#include "../os/queues.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_usart.h"

uint8_t rx_overflow = 0;

osQUEUE_t usart_rx_q, usart_tx_q;

uint8_t usart_rx_data[MAX_QUEUE_SIZE];
uint8_t usart_tx_data[MAX_QUEUE_SIZE];


void usart2Init(void)
{
	/* Enable clocks. */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO | RCC_APB2Periph_GPIOA , ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);

	/* Initialize used GPIOs. */
	GPIO_InitTypeDef GPIO_InitStruct;
	GPIO_StructInit(&GPIO_InitStruct);

	/* Initialize USART2_TX */
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_2;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOA, &GPIO_InitStruct);

	/* Init. USART2_RX */
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_3;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &GPIO_InitStruct);

	/* Init. USART2 peripheral. */
	USART_InitTypeDef USART_InitStructure ;
	USART_StructInit(&USART_InitStructure );
	USART_InitStructure.USART_BaudRate = 9600;
	USART_InitStructure.USART_WordLength = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_Init(USART2, &USART_InitStructure);
	USART_Cmd(USART2, ENABLE);

	/* Config. interrupts. */
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
	USART_ITConfig(USART2, USART_IT_TXE, ENABLE);
	NVIC_EnableIRQ(USART2_IRQn);

	/* Init. SW queues. */
	osQInit(&usart_rx_q, sizeof(uint8_t), usart_rx_data);
	osQInit(&usart_tx_q, sizeof(uint8_t), usart_tx_data);
}

void USART2_IRQHandler(void)
{
	/* USART2 receive buffer contains a char. */
	if(USART_GetITStatus(USART2, USART_IT_RXNE) == SET)
	{
		uint8_t data;
		data = USART_ReceiveData(USART2) & 0xFF;
		if(!osEnqueue(&usart_rx_q, (void*)&data))
			asm("NOP");
		// TODO: Throw receive buffer overflow error here
	}

	/* USART2 transmit buffer empty. */
	if(USART_GetITStatus(USART2, USART_IT_TXE) == SET)
	{
		uint8_t data;
		if(osDequeue(&usart_tx_q, &data))
			USART_SendData(USART2, data);
		else
		{
			/* Nothing to send. Disable interrupt. */
			USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
		}
	}
}

static uint8_t usart2PutChar(uint8_t data)
{
	/* Put data in the q. */
	if(!osEnqueue(&usart_tx_q, (void*)&data))
		return 0;
	/* Enable interrupt. */
	USART_ITConfig(USART2, USART_IT_TXE, ENABLE);
	return 1;
}

static uint8_t usart2GetChar(void)
{
	uint8_t data;
	/* Wait until data arrives. */
	while(!osDequeue(&usart_rx_q, &data)){}
		return data;
}

uint8_t usart2PutString(uint8_t* word, size_t size)
{
	uint8_t j = 0;
	/* Push data as long as it needs that it comes through. */
	for(uint8_t i=0; i<size; i++)
		while(!usart2PutChar(word[i]))
		{
			j++;
			if(j > 1)
				asm("NOP");
			// TODO: Throw send buffer overflow error here
		}
	return 1;
}

uint8_t usart2GetString(uint8_t* word, size_t buff_size, size_t *string_size)
{
	uint8_t data;
	*string_size = 0;
	do
	{
		data = usart2GetChar();
		if(data == 0)
			return 0;
		usart2PutChar(data);
		if( *string_size < (buff_size-1) )
			word[*string_size] = data;
		else
			return 0;
		// TODO: Throw buffer overflow error.
		(*string_size)++;
	} while( (data != '\r') && (data != '\n') );
	/* Append string termination. */
	word[*string_size] = '\0';
	(*string_size)++;
	return 1;
}
