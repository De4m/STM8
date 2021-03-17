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

#include "main.h"
#include "delay.h"
#include "stm8s.h"
#include "stm8s_it.h"    /* SDCC patch: required by SDCC for interrupts */
   
/* Private defines -----------------------------------------------------------*/
volatile int Int_Flag = 0;
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



  /* GPIO Configuration  -----------------------------------------------------*/
  GPIO_Config();

  /* Initialize the Interrupt sensitivity ------------------------------------*/
  EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);
  //EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);


  /* Infinite loop */
  while (1)
  {
    
    /* Series of flash led */
    for (int i=0;i<20;i++) 
    {

      if (Int_Flag > 0)
      { 
        GPIO_WriteLow(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
        _delay_ms(500);
        GPIO_WriteHigh(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
        _delay_ms(500);
      } 
      else 
      {
        GPIO_WriteLow(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
        _delay_ms(50);
        GPIO_WriteHigh(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN);
        _delay_ms(50);
      }
    }
      /* Preparing and goto sleep mode */
      enableInterrupts();
      halt();
  }
}

static void GPIO_Config(void)
{

  /* Reset all GPIO in default mode */
  GPIO_DeInit(LED_GPIO_PORT);
  GPIO_DeInit(BUTTON_GPIO_PORT);

  /* Initialize I/Os in Output Mode */
  GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
  GPIO_Init(BUTTON_GPIO_PORT, (GPIO_Pin_TypeDef)BUTTON_GPIO_PIN, GPIO_MODE_IN_PU_IT);

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
