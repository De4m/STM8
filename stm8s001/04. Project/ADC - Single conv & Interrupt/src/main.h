/**
  ******************************************************************************
  * @file    EXTI_InterruptPriority\main.h
  * @author  MCD Application Team
  * @version V2.0.4
  * @date    26-April-2018
  * @brief   This file contains the external declaration for main.c file.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H 
#include "stm8s.h"

extern volatile uint16_t Conversion_Value;
extern volatile uint8_t  EndConversion;

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Evalboard I/Os configuration */
/* Private function prototypes -----------------------------------------------*/
static void OPT_Config();
static void ADC_Config(void);
static void GPIO_Config(void);
static void UART_Config();

extern void ADC_RegStatus_print(int num);
/* Private functions ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

#endif /* __MAIN_H */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
