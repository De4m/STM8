;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.4 #10766 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _printf
	.globl _UART1_GetFlagStatus
	.globl _UART1_SendData8
	.globl _UART1_ReceiveData8
	.globl _UART1_Init
	.globl _UART1_DeInit
	.globl _GPIO_Init
	.globl _FLASH_WaitForLastOperation
	.globl _FLASH_ProgramOptionByte
	.globl _FLASH_ReadByte
	.globl _FLASH_Unlock
	.globl _CLK_HSIPrescalerConfig
	.globl _ADC1_StartConversion
	.globl _ADC1_ITConfig
	.globl _ADC1_Init
	.globl _ADC1_DeInit
	.globl _EndConversion
	.globl _Conversion_Value
	.globl _ADC_RegStatus_print
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_Conversion_Value::
	.ds 2
_EndConversion::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int _TRAP_IRQHandler ; trap
	int _TLI_IRQHandler ; int0
	int _AWU_IRQHandler ; int1
	int _CLK_IRQHandler ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int _EXTI_PORTB_IRQHandler ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int _EXTI_PORTE_IRQHandler ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int _SPI_IRQHandler ; int10
	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
	int _TIM1_CAP_COM_IRQHandler ; int12
	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
	int _TIM2_CAP_COM_IRQHandler ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int _UART1_TX_IRQHandler ; int17
	int _UART1_RX_IRQHandler ; int18
	int _I2C_IRQHandler ; int19
	int 0x000000 ; int20
	int 0x000000 ; int21
	int _ADC1_IRQHandler ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
	int _EEPROM_EEC_IRQHandler ; int24
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	src/main.c: 53: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c: 69: __endasm;
	pushw	x
	push	a
	ldw	x, #0xFFFF
	      loop1:
	ld a, #50
	      loop2:
	dec a
	jrne	loop2
	decw	x
	jrne	loop1
	pop	a
	popw	x
;	src/main.c: 73: OPT_Config();
	call	_OPT_Config
;	src/main.c: 75: GPIO_Config();
	call	_GPIO_Config
;	src/main.c: 77: UART_Config();
	call	_UART_Config
;	src/main.c: 79: ADC_Config();
	call	_ADC_Config
;	src/main.c: 82: printf("\n\r\n\r\n\r\n\r\n\r");  
	push	#<(___str_0 + 0)
	push	#((___str_0 + 0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 83: printf("\n\r================================    STM8S001    ===============================");
	push	#<(___str_1 + 0)
	push	#((___str_1 + 0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 84: printf("\n\r=  ACD Example : Single conversion with interrupt                             =");           
	push	#<(___str_2 + 0)
	push	#((___str_2 + 0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 85: printf("\n\r=                                                                             =");
	push	#<(___str_3 + 0)
	push	#((___str_3 + 0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 86: printf("\n\r===============================================================================");
	push	#<(___str_4 + 0)
	push	#((___str_4 + 0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 90: while (1)
00104$:
;	src/main.c: 93: if (EndConversion&1) //
	ld	a, _EndConversion+0
	srl	a
	jrnc	00104$
;	src/main.c: 95: printf("\n\rADC result:%x",Conversion_Value);
	ldw	x, _Conversion_Value+0
	pushw	x
	push	#<(___str_5 + 0)
	push	#((___str_5 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 96: EndConversion=0;
	clr	_EndConversion+0
;	src/main.c: 97: ADC1_ITConfig(ADC1_IT_EOCIE ,ENABLE);
	push	#0x01
	push	#0x20
	push	#0x00
	call	_ADC1_ITConfig
	addw	sp, #3
;	src/main.c: 98: ADC1_StartConversion();
	call	_ADC1_StartConversion
	jra	00104$
;	src/main.c: 103: } 
	ret
;	src/main.c: 105: void OPT_Config()
;	-----------------------------------------
;	 function OPT_Config
;	-----------------------------------------
_OPT_Config:
;	src/main.c: 108: if(FLASH_ReadByte(OPT_Address) & 0x04) 
	push	#0x03
	push	#0x48
	clrw	x
	pushw	x
	call	_FLASH_ReadByte
	addw	sp, #4
	bcp	a, #0x04
	jrne	00110$
	ret
00110$:
;	src/main.c: 110: FLASH_Unlock(FLASH_MEMTYPE_DATA); 
	push	#0xf7
	call	_FLASH_Unlock
	pop	a
;	src/main.c: 112: FLASH_ProgramOptionByte(OPT_Address,4);             /* Enable [AIN2] */ 
	push	#0x04
	push	#0x03
	push	#0x48
	call	_FLASH_ProgramOptionByte
	addw	sp, #3
;	src/main.c: 113: FLASH_WaitForLastOperation(FLASH_MEMTYPE_DATA); 
	push	#0xf7
	call	_FLASH_WaitForLastOperation
	pop	a
;	src/main.c: 115: }
	ret
;	src/main.c: 117: void GPIO_Config()
;	-----------------------------------------
;	 function GPIO_Config
;	-----------------------------------------
_GPIO_Config:
;	src/main.c: 121: }
	ret
;	src/main.c: 123: void UART_Config(void)
;	-----------------------------------------
;	 function UART_Config
;	-----------------------------------------
_UART_Config:
;	src/main.c: 126: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	src/main.c: 136: UART1_DeInit();
	call	_UART1_DeInit
;	src/main.c: 137: UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0xc2
	push	#0x01
	push	#0x00
	call	_UART1_Init
	addw	sp, #9
;	src/main.c: 140: }
	ret
;	src/main.c: 142: void ADC_Config()
;	-----------------------------------------
;	 function ADC_Config
;	-----------------------------------------
_ADC_Config:
;	src/main.c: 146: GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x10
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	src/main.c: 149: ADC1_DeInit();
	call	_ADC1_DeInit
;	src/main.c: 152: ADC1_Init(ADC1_CONVERSIONMODE_SINGLE, ADC1_CHANNEL_2, ADC1_PRESSEL_FCPU_D8, \
	push	#0x00
	push	#0x02
	push	#0x08
	push	#0x00
	push	#0x00
	push	#0x40
	push	#0x02
	push	#0x00
	call	_ADC1_Init
	addw	sp, #8
;	src/main.c: 157: ADC1_ITConfig(ADC1_IT_EOCIE ,ENABLE);
	push	#0x01
	push	#0x20
	push	#0x00
	call	_ADC1_ITConfig
	addw	sp, #3
;	src/main.c: 160: enableInterrupts();
	rim
;	src/main.c: 163: ADC1_StartConversion();
;	src/main.c: 165: }
	jp	_ADC1_StartConversion
;	src/main.c: 167: void ADC_RegStatus_print(int num)
;	-----------------------------------------
;	 function ADC_RegStatus_print
;	-----------------------------------------
_ADC_RegStatus_print:
;	src/main.c: 171: printf("\n\r=========== %x",num) ; 
	ldw	x, (0x03, sp)
	pushw	x
	push	#<(___str_6 + 0)
	push	#((___str_6 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 172: tmp = ADC1->CSR;
	ld	a, 0x5400
	clrw	x
	ld	xl, a
;	src/main.c: 173: printf ("\n\rADC1->CSR: %x",tmp);
	pushw	x
	push	#<(___str_7 + 0)
	push	#((___str_7 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 174: tmp = ADC1->CR1;
	ld	a, 0x5401
	clrw	x
	ld	xl, a
;	src/main.c: 175: printf ("\n\rADC1->CR1: %x",tmp);
	pushw	x
	push	#<(___str_8 + 0)
	push	#((___str_8 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 176: tmp = ADC1->CR2;
	ld	a, 0x5402
	clrw	x
	ld	xl, a
;	src/main.c: 177: printf ("\n\rADC1->CR2: %x",tmp);
	pushw	x
	push	#<(___str_9 + 0)
	push	#((___str_9 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 178: tmp = ADC1->CR3;
	ld	a, 0x5403
	clrw	x
	ld	xl, a
;	src/main.c: 179: printf ("\n\rADC1->CR3: %x",tmp);   
	pushw	x
	push	#<(___str_10 + 0)
	push	#((___str_10 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 180: tmp = ADC1->DRH;
	ld	a, 0x5404
	clrw	x
	ld	xl, a
;	src/main.c: 181: printf ("\n\rADC1->DRH: %x",tmp);   
	pushw	x
	push	#<(___str_11 + 0)
	push	#((___str_11 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 182: tmp = ADC1->DRL;
	ld	a, 0x5405
	clrw	x
	ld	xl, a
;	src/main.c: 183: printf ("\n\rADC1->DRL: %x",tmp); 
	pushw	x
	push	#<(___str_12 + 0)
	push	#((___str_12 + 0) >> 8)
	call	_printf
	addw	sp, #4
;	src/main.c: 184: printf("\n\r") ; 
	push	#<(___str_13 + 0)
	push	#((___str_13 + 0) >> 8)
	call	_printf
	popw	x
;	src/main.c: 185: }
	ret
;	src/main.c: 194: PUTCHAR_PROTOTYPE
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src/main.c: 197: UART1_SendData8(c);
	ld	a, (0x04, sp)
	push	a
	call	_UART1_SendData8
	pop	a
;	src/main.c: 199: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
00101$:
	push	#0x80
	push	#0x00
	call	_UART1_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src/main.c: 201: return (c);
	ldw	x, (0x03, sp)
;	src/main.c: 202: }
	ret
;	src/main.c: 209: GETCHAR_PROTOTYPE
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	src/main.c: 217: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
00101$:
	push	#0x20
	push	#0x00
	call	_UART1_GetFlagStatus
	popw	x
	tnz	a
	jreq	00101$
;	src/main.c: 218: c = UART1_ReceiveData8();
	call	_UART1_ReceiveData8
	clrw	x
	ld	xl, a
;	src/main.c: 219: return (c);
;	src/main.c: 220: }
	ret
	.area CODE
	.area CONST
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x00
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "================================    STM8S001    ============"
	.ascii "==================="
	.db 0x00
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "=  ACD Example : Single conversion with interrupt           "
	.ascii "                  ="
	.db 0x00
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "=                                                           "
	.ascii "                  ="
	.db 0x00
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "============================================================"
	.ascii "==================="
	.db 0x00
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "ADC result:%x"
	.db 0x00
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "=========== %x"
	.db 0x00
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "ADC1->CSR: %x"
	.db 0x00
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "ADC1->CR1: %x"
	.db 0x00
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "ADC1->CR2: %x"
	.db 0x00
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "ADC1->CR3: %x"
	.db 0x00
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii "ADC1->DRH: %x"
	.db 0x00
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "ADC1->DRL: %x"
	.db 0x00
___str_13:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
