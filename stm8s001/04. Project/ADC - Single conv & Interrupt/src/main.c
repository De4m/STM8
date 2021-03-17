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
#include "stm8s_it.h"
#include "stdio.h"

/* Private defines -----------------------------------------------------------*/
#define PUTCHAR_PROTOTYPE int putchar(int c)
#define GETCHAR_PROTOTYPE int getchar(void)
#define OPT_Address         0x4803

volatile uint16_t Conversion_Value;
volatile uint8_t  EndConversion;
/* Private function prototypes -----------------------------------------------*/
//static void OPT_Config();
//static void ADC_Config(void);
//static void GPIO_Config(void);
//static void UART_Config();
//static void ADC_RegStatus_print(int num);
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

    /* ---------- BEGIN BLOCK CODE: Configure STM8S001J3 -----------*/
    /* Option byte configuration -----------------------------------*/ 
    OPT_Config();
    /* GPIO configuration ------------------------------------------*/
    GPIO_Config();
    /* UART configuration ------------------------------------------*/
    UART_Config();
    /* ADC configuration -------------------------------------------*/
    ADC_Config();
    /* -------- END BLOCK CODE: Configure STM8S001J3 -------------*/

    printf("\n\r\n\r\n\r\n\r\n\r");  
    printf("\n\r================================    STM8S001    ===============================");
    printf("\n\r=  ACD Example : Single conversion with interrupt                             =");           
    printf("\n\r=                                                                             =");
    printf("\n\r===============================================================================");

    
    /* Infinite loop */
    while (1)
    {
        if (EndConversion==1)
        {
            printf("\n\rADC result:%x",Conversion_Value);
            EndConversion=0;
            ADC1_ITConfig(ADC1_IT_EOCIE ,ENABLE);
            ADC1_StartConversion();
        }

    }
  
} 

void OPT_Config()
{
    /* Set option bytes AFR2 for [AIN2] is ON */ 
    if(FLASH_ReadByte(OPT_Address) & 0x04) 
    {
        FLASH_Unlock(FLASH_MEMTYPE_DATA); 
        /* Set option bytes */
        FLASH_ProgramOptionByte(OPT_Address,4);             /* Enable [AIN2] */ 
        FLASH_WaitForLastOperation(FLASH_MEMTYPE_DATA); 
    } 
}

void GPIO_Config()
{
  /* Initialize LEDs mounted on STM8-128 EVAL board */

}

void UART_Config(void)
{
    /*High speed internal clock prescaler: 1*/
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
    /* UART1 configuration ------------------------------------------------------*/
    /* UART1 configured as follow:
          - BaudRate = 115200 baud  
          - Word Length = 8 Bits
          - One Stop Bit
          - No parity
          - Receive and transmit enabled
          - UART1 Clock disabled
    */
    UART1_DeInit();
    UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
                UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);

}

void ADC_Config()
{

    /*  Init GPIO for ADC2 */
    GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);
  
    /* De-Init ADC peripheral*/
    ADC1_DeInit();
  
    /* Init ADC2 peripheral */
    ADC1_Init(ADC1_CONVERSIONMODE_SINGLE, ADC1_CHANNEL_2, ADC1_PRESSEL_FCPU_D8, \
              ADC1_EXTTRIG_TIM, DISABLE, ADC1_ALIGN_RIGHT, ADC1_SCHMITTTRIG_CHANNEL2,\
              DISABLE);

    /* Enable EOC interrupt */
    ADC1_ITConfig(ADC1_IT_EOCIE ,ENABLE);

    /* Enable general interrupts */  
    enableInterrupts();

    /*Start Conversion */
    ADC1_StartConversion();

}

void ADC_RegStatus_print(int num)
{
    
    int tmp =0;
    printf("\n\r=========== %x",num) ; 
    tmp = ADC1->CSR;
    printf ("\n\rADC1->CSR: %x",tmp);
    tmp = ADC1->CR1;
    printf ("\n\rADC1->CR1: %x",tmp);
    tmp = ADC1->CR2;
    printf ("\n\rADC1->CR2: %x",tmp);
    tmp = ADC1->CR3;
    printf ("\n\rADC1->CR3: %x",tmp);   
    tmp = ADC1->DRH;
    printf ("\n\rADC1->DRH: %x",tmp);   
    tmp = ADC1->DRL;
    printf ("\n\rADC1->DRL: %x",tmp); 
    printf("\n\r") ; 
}



/**
  * @brief Retargets the C library printf function to the UART.
  * @param c Character to send
  * @retval char Character sent
  */
PUTCHAR_PROTOTYPE
{
  /* Write a character to the UART1 */
  UART1_SendData8(c);
  /* Loop until the end of transmission */
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);

  return (c);
}

/**
  * @brief Retargets the C library scanf function to the USART.
  * @param None
  * @retval char Character to Read
  */
GETCHAR_PROTOTYPE
{
#ifdef _COSMIC_
  char c = 0;
#else
  int c = 0;
#endif
  /* Loop until the Read data register flag is SET */
  while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
    c = UART1_ReceiveData8();
  return (c);
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
