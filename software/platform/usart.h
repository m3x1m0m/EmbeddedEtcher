/*
 * usart.h
 *
 *  Created on: Dec 6, 2017
 *      Author: maximilian
 */

#ifndef PLATFORM_USART_H_
#define PLATFORM_USART_H_

#include "stm32f10x.h"
#include <stdlib.h>

void usart2Init(void);
uint8_t usart2PutString(uint8_t* word, size_t size);
uint8_t usart2GetString(uint8_t* word, size_t buff_size, size_t *string_size);

#endif /* PLATFORM_USART_H_ */
