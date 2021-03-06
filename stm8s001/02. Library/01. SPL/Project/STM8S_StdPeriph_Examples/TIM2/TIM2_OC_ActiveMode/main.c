/**
  ******************************************************************************
  * @file    TIM2_OC_ActiveMode\main.c
  * @author  MCD Application Team
  * @version V2.0.4
  * @date     26-April-2018
  * @brief   This file contains the main function for TIM2 OC ActiveMode Example.
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
#include "stm8s_it.h"    /* SDCC patch: required by SDCC for interrupts */

/**
  * @addtogroup TIM2_OC_ActiveMode
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define CCR1_Val  ((uint16_t)976)
#define CCR2_Val  ((uint16_t)488)
#define CCR3_Val  ((uint16_t)244)
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void GPIO_Config(void);
static void TIM2_Config(void);
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
  /* GPIO configuration -----------------------------------------*/
  GPIO_Config();  

  /* TIM2 configuration -----------------------------------------*/
  TIM2_Config();  
  

  while (1)
  {} 
}

/**
  * @brief  Configure PG6 to allow delay of TIM2 channels computation
  * @param  None
  * @retval None
  */
static void GPIO_Config(void)
{
  /* Set PG.6 pin */
  GPIO_Init(GPIOG, GPIO_PIN_6, GPIO_MODE_OUT_PP_LOW_FAST);
  GPIO_WriteHigh(GPIOG, GPIO_PIN_6);
}

/**
  * @brief  Configure TIM2 peripheral to generate 3 different signals with 3
  *         different delays
  * @param  None
  * @retval None
  */
static void TIM2_Config(void)
{
  /* Time base configuration */      
  TIM2_TimeBaseInit(TIM2_PRESCALER_2048, 65535);

  /* Prescaler configuration */
  TIM2_PrescalerConfig(TIM2_PRESCALER_2048, TIM2_PSCRELOADMODE_IMMEDIATE);

  /* Output Compare Active Mode configuration: Channel1 */
  /*
    TIM2_OCMode = TIM2_OCMODE_ACTIVE
    TIM2_OutputState = TIM2_OUTPUTSTATE_ENABLE
    TIM2_Pulse = CCR1_Val
    TIM2_OCPolarity = TIM2_OCPOLARITY_HIGH
  */
  TIM2_OC1Init(TIM2_OCMODE_ACTIVE, TIM2_OUTPUTSTATE_ENABLE,CCR1_Val, TIM2_OCPOLARITY_HIGH);
  
  TIM2_OC1PreloadConfig(DISABLE);

  /* Output Compare Active Mode configuration: Channel2 */
  
  /*TIM2_Pulse = CCR2_Val  */
  
  TIM2_OC2Init(TIM2_OCMODE_ACTIVE, TIM2_OUTPUTSTATE_ENABLE,CCR2_Val, TIM2_OCPOLARITY_HIGH); 
  TIM2_OC2PreloadConfig(DISABLE);

  /* Output Compare Active Mode configuration: Channel3 */
  /*
  TIM2_Pulse = CCR3_Val
  */
  TIM2_OC3Init(TIM2_OCMODE_ACTIVE, TIM2_OUTPUTSTATE_ENABLE,CCR3_Val, TIM2_OCPOLARITY_HIGH);
  TIM2_OC3PreloadConfig(DISABLE);
  TIM2_ARRPreloadConfig(ENABLE);
  
  /* TIM2 enable counter */
  TIM2_Cmd(ENABLE);
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
