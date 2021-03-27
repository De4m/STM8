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
#include "stm8s_tim1.h"

/* Private defines -----------------------------------------------------------*/
#define TIM1_PRESCALER_1  (0)
#define TIM1_PERIOD (40000)
#define CCR_Val  ((uint16_t)20000)

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


    System_Config();
    /* Infinite loop */
    while (1)
    {
    }
  
}

static void System_Config(void)
{
    TIM1_Config();
}

static void TIM1_Config(void)
{
    TIM1_DeInit();
    TIM1_TimeBaseInit(  TIM1_PRESCALER_1, 
                        TIM1_COUNTERMODE_UP, 
                        TIM1_PERIOD,  
                        0);
    
    /*TIM1_Pulse = CCR2_Val*/
    TIM1_OC4Init(   TIM1_OCMODE_PWM2, 
                    TIM1_OUTPUTSTATE_ENABLE, 
                    CCR_Val, 
                    TIM1_OCPOLARITY_LOW,
                    TIM1_OCIDLESTATE_SET);

    /* TIM1 counter enable */
    TIM1_Cmd(ENABLE);

    /* TIM1 Main Output Enable */
    TIM1_CtrlPWMOutputs(ENABLE);
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
