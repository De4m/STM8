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
  *
  *   Command to upload fimware:  clear;pio run -t clean; pio run -t upload
  *
  */


/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm8s.h"
#include "stdlib.h"
#include "ctype.h"

/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
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

    /* Configure the Fcpu to DIV1*/
    CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
    
    /* Configure the HSI prescaler to the optimal value */
    CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
    
    /* Output Fcpu on CLK_CCO pin */
    CLK_CCOConfig(CLK_OUTPUT_CPU);

    /* Reset all GPIO in default mode */
    GPIO_DeInit(OUT_GPIO_PORT);

    /* Initialize I/Os in Output Mode */
    GPIO_Init(OUT_GPIO_PORT, (GPIO_Pin_TypeDef)OUT_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
    
    /* Infinite loop */
    while (1)
    {
        OUT_GPIO_PORT->ODR |= (uint8_t)OUT_GPIO_PIN;
        nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();
        OUT_GPIO_PORT->ODR &= (uint8_t)(~OUT_GPIO_PIN);
        nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();
        //GPIO_WriteHigh(OUT_GPIO_PORT,OUT_GPIO_PIN);
        //GPIO_WriteLow(OUT_GPIO_PORT,OUT_GPIO_PIN);
    }
  
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
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
