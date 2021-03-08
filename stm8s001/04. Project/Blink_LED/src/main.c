/**
  ******************************************************************************
  * @file    Project/main.c 
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "delay.h"

/* Private defines -----------------------------------------------------------*/

// Define all available pins for STM8S001J3
#define LED1_GPIO_PORT GPIOD // Pin 1
#define LED1_GPIO_PIN GPIO_PIN_6

#define LED2_GPIO_PORT GPIOB // Pin 5
#define LED2_GPIO_PIN GPIO_PIN_5

#define LED3_GPIO_PORT GPIOB // Pin 6
#define LED3_GPIO_PIN GPIO_PIN_4

#define LED4_GPIO_PORT GPIOC // Pin 7
#define LED4_GPIO_PIN GPIO_PIN_5

#define LED5_GPIO_PORT GPIOD // Pin 8
#define LED5_GPIO_PIN GPIO_PIN_5

/* Private function prototypes -----------------------------------------------*/
static void GPIO_Config(void);
/* Private functions ---------------------------------------------------------*/

void main(void)
{
  /* This delay should be added just after reset to have access to SWIM pin
    and to be able to reprogram the device after power on (otherwise the device
    will be locked) */
    __asm
      pushw x
      push a
      ldw x, #0xFFFF
      loop1: ld a, #50
      loop2: dec a
      jrne loop2
      decw x
      jrne loop1
      pop a
      popw x
    __endasm;




  GPIO_Config();

  /* Infinite loop */
  while (1)
  {
    /* Toggles LEDs */
    GPIO_WriteReverse(LED1_GPIO_PORT, (GPIO_Pin_TypeDef)LED1_GPIO_PIN);
    GPIO_WriteReverse(LED2_GPIO_PORT, (GPIO_Pin_TypeDef)LED2_GPIO_PIN);
    GPIO_WriteReverse(LED3_GPIO_PORT, (GPIO_Pin_TypeDef)LED3_GPIO_PIN);
    GPIO_WriteReverse(LED4_GPIO_PORT, (GPIO_Pin_TypeDef)LED4_GPIO_PIN);
    GPIO_WriteReverse(LED5_GPIO_PORT, (GPIO_Pin_TypeDef)LED5_GPIO_PIN);
    _delay_ms(500);
  }
}

static void GPIO_Config(void)
{

  /* Reset all GPIO in default mode */
  GPIO_DeInit(LED1_GPIO_PORT);
  GPIO_DeInit(LED2_GPIO_PORT);
  GPIO_DeInit(LED3_GPIO_PORT);
  GPIO_DeInit(LED4_GPIO_PORT);
  GPIO_DeInit(LED5_GPIO_PORT);

  /* Initialize I/Os in Output Mode */
  GPIO_Init(LED1_GPIO_PORT, (GPIO_Pin_TypeDef)LED1_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  GPIO_Init(LED2_GPIO_PORT, (GPIO_Pin_TypeDef)LED2_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  GPIO_Init(LED3_GPIO_PORT, (GPIO_Pin_TypeDef)LED3_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  GPIO_Init(LED4_GPIO_PORT, (GPIO_Pin_TypeDef)LED4_GPIO_PIN, GPIO_MODE_OUT_OD_LOW_FAST);  /* WARNING! Pin6 (PB4) has only open drain mode. */
  GPIO_Init(LED5_GPIO_PORT, (GPIO_Pin_TypeDef)LED5_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);

}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
