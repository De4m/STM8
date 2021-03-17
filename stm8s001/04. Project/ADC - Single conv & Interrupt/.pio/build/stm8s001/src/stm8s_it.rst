                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_it
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_ClearITPendingBit
                                     12 	.globl _ADC1_GetConversionValue
                                     13 	.globl _TRAP_IRQHandler
                                     14 	.globl _TLI_IRQHandler
                                     15 	.globl _AWU_IRQHandler
                                     16 	.globl _CLK_IRQHandler
                                     17 	.globl _EXTI_PORTA_IRQHandler
                                     18 	.globl _EXTI_PORTB_IRQHandler
                                     19 	.globl _EXTI_PORTC_IRQHandler
                                     20 	.globl _EXTI_PORTD_IRQHandler
                                     21 	.globl _EXTI_PORTE_IRQHandler
                                     22 	.globl _SPI_IRQHandler
                                     23 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     24 	.globl _TIM1_CAP_COM_IRQHandler
                                     25 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     26 	.globl _TIM2_CAP_COM_IRQHandler
                                     27 	.globl _UART1_TX_IRQHandler
                                     28 	.globl _UART1_RX_IRQHandler
                                     29 	.globl _I2C_IRQHandler
                                     30 	.globl _ADC1_IRQHandler
                                     31 	.globl _TIM4_UPD_OVF_IRQHandler
                                     32 	.globl _EEPROM_EEC_IRQHandler
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DATA
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area INITIALIZED
                                     41 ;--------------------------------------------------------
                                     42 ; absolute external ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area DABS (ABS)
                                     45 
                                     46 ; default segment ordering for linker
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area CONST
                                     51 	.area INITIALIZER
                                     52 	.area CODE
                                     53 
                                     54 ;--------------------------------------------------------
                                     55 ; global & static initialisations
                                     56 ;--------------------------------------------------------
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area GSINIT
                                     61 ;--------------------------------------------------------
                                     62 ; Home
                                     63 ;--------------------------------------------------------
                                     64 	.area HOME
                                     65 	.area HOME
                                     66 ;--------------------------------------------------------
                                     67 ; code
                                     68 ;--------------------------------------------------------
                                     69 	.area CODE
                                     70 ;	src/stm8s_it.c: 68: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     71 ;	-----------------------------------------
                                     72 ;	 function TRAP_IRQHandler
                                     73 ;	-----------------------------------------
      0093CB                         74 _TRAP_IRQHandler:
                                     75 ;	src/stm8s_it.c: 73: }
      0093CB 80               [11]   76 	iret
                                     77 ;	src/stm8s_it.c: 80: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     78 ;	-----------------------------------------
                                     79 ;	 function TLI_IRQHandler
                                     80 ;	-----------------------------------------
      0093CC                         81 _TLI_IRQHandler:
                                     82 ;	src/stm8s_it.c: 86: }
      0093CC 80               [11]   83 	iret
                                     84 ;	src/stm8s_it.c: 93: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                     85 ;	-----------------------------------------
                                     86 ;	 function AWU_IRQHandler
                                     87 ;	-----------------------------------------
      0093CD                         88 _AWU_IRQHandler:
                                     89 ;	src/stm8s_it.c: 98: }
      0093CD 80               [11]   90 	iret
                                     91 ;	src/stm8s_it.c: 105: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                     92 ;	-----------------------------------------
                                     93 ;	 function CLK_IRQHandler
                                     94 ;	-----------------------------------------
      0093CE                         95 _CLK_IRQHandler:
                                     96 ;	src/stm8s_it.c: 110: }
      0093CE 80               [11]   97 	iret
                                     98 ;	src/stm8s_it.c: 117: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                     99 ;	-----------------------------------------
                                    100 ;	 function EXTI_PORTA_IRQHandler
                                    101 ;	-----------------------------------------
      0093CF                        102 _EXTI_PORTA_IRQHandler:
                                    103 ;	src/stm8s_it.c: 122: }
      0093CF 80               [11]  104 	iret
                                    105 ;	src/stm8s_it.c: 129: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    106 ;	-----------------------------------------
                                    107 ;	 function EXTI_PORTB_IRQHandler
                                    108 ;	-----------------------------------------
      0093D0                        109 _EXTI_PORTB_IRQHandler:
                                    110 ;	src/stm8s_it.c: 134: }
      0093D0 80               [11]  111 	iret
                                    112 ;	src/stm8s_it.c: 141: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    113 ;	-----------------------------------------
                                    114 ;	 function EXTI_PORTC_IRQHandler
                                    115 ;	-----------------------------------------
      0093D1                        116 _EXTI_PORTC_IRQHandler:
                                    117 ;	src/stm8s_it.c: 146: }
      0093D1 80               [11]  118 	iret
                                    119 ;	src/stm8s_it.c: 153: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    120 ;	-----------------------------------------
                                    121 ;	 function EXTI_PORTD_IRQHandler
                                    122 ;	-----------------------------------------
      0093D2                        123 _EXTI_PORTD_IRQHandler:
                                    124 ;	src/stm8s_it.c: 158: }
      0093D2 80               [11]  125 	iret
                                    126 ;	src/stm8s_it.c: 165: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    127 ;	-----------------------------------------
                                    128 ;	 function EXTI_PORTE_IRQHandler
                                    129 ;	-----------------------------------------
      0093D3                        130 _EXTI_PORTE_IRQHandler:
                                    131 ;	src/stm8s_it.c: 170: }
      0093D3 80               [11]  132 	iret
                                    133 ;	src/stm8s_it.c: 217: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    134 ;	-----------------------------------------
                                    135 ;	 function SPI_IRQHandler
                                    136 ;	-----------------------------------------
      0093D4                        137 _SPI_IRQHandler:
                                    138 ;	src/stm8s_it.c: 222: }
      0093D4 80               [11]  139 	iret
                                    140 ;	src/stm8s_it.c: 229: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    141 ;	-----------------------------------------
                                    142 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    143 ;	-----------------------------------------
      0093D5                        144 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    145 ;	src/stm8s_it.c: 234: }
      0093D5 80               [11]  146 	iret
                                    147 ;	src/stm8s_it.c: 241: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    148 ;	-----------------------------------------
                                    149 ;	 function TIM1_CAP_COM_IRQHandler
                                    150 ;	-----------------------------------------
      0093D6                        151 _TIM1_CAP_COM_IRQHandler:
                                    152 ;	src/stm8s_it.c: 246: }
      0093D6 80               [11]  153 	iret
                                    154 ;	src/stm8s_it.c: 279: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    155 ;	-----------------------------------------
                                    156 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    157 ;	-----------------------------------------
      0093D7                        158 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    159 ;	src/stm8s_it.c: 284: }
      0093D7 80               [11]  160 	iret
                                    161 ;	src/stm8s_it.c: 291: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    162 ;	-----------------------------------------
                                    163 ;	 function TIM2_CAP_COM_IRQHandler
                                    164 ;	-----------------------------------------
      0093D8                        165 _TIM2_CAP_COM_IRQHandler:
                                    166 ;	src/stm8s_it.c: 296: }
      0093D8 80               [11]  167 	iret
                                    168 ;	src/stm8s_it.c: 333: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    169 ;	-----------------------------------------
                                    170 ;	 function UART1_TX_IRQHandler
                                    171 ;	-----------------------------------------
      0093D9                        172 _UART1_TX_IRQHandler:
                                    173 ;	src/stm8s_it.c: 338: }
      0093D9 80               [11]  174 	iret
                                    175 ;	src/stm8s_it.c: 345: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    176 ;	-----------------------------------------
                                    177 ;	 function UART1_RX_IRQHandler
                                    178 ;	-----------------------------------------
      0093DA                        179 _UART1_RX_IRQHandler:
                                    180 ;	src/stm8s_it.c: 350: }
      0093DA 80               [11]  181 	iret
                                    182 ;	src/stm8s_it.c: 384: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    183 ;	-----------------------------------------
                                    184 ;	 function I2C_IRQHandler
                                    185 ;	-----------------------------------------
      0093DB                        186 _I2C_IRQHandler:
                                    187 ;	src/stm8s_it.c: 389: }
      0093DB 80               [11]  188 	iret
                                    189 ;	src/stm8s_it.c: 463: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    190 ;	-----------------------------------------
                                    191 ;	 function ADC1_IRQHandler
                                    192 ;	-----------------------------------------
      0093DC                        193 _ADC1_IRQHandler:
      0093DC 62               [ 2]  194 	div	x, a
                                    195 ;	src/stm8s_it.c: 466: Conversion_Value = ADC1_GetConversionValue();
      0093DD CD 84 19         [ 4]  196 	call	_ADC1_GetConversionValue
      0093E0 CF 00 01         [ 2]  197 	ldw	_Conversion_Value+0, x
                                    198 ;	src/stm8s_it.c: 467: ADC1_ClearITPendingBit(ADC1_IT_EOCIE);
      0093E3 4B 20            [ 1]  199 	push	#0x20
      0093E5 4B 00            [ 1]  200 	push	#0x00
      0093E7 CD 86 84         [ 4]  201 	call	_ADC1_ClearITPendingBit
      0093EA 85               [ 2]  202 	popw	x
                                    203 ;	src/stm8s_it.c: 468: EndConversion=1;
      0093EB 35 01 00 03      [ 1]  204 	mov	_EndConversion+0, #0x01
                                    205 ;	src/stm8s_it.c: 469: }
      0093EF 80               [11]  206 	iret
                                    207 ;	src/stm8s_it.c: 490: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    208 ;	-----------------------------------------
                                    209 ;	 function TIM4_UPD_OVF_IRQHandler
                                    210 ;	-----------------------------------------
      0093F0                        211 _TIM4_UPD_OVF_IRQHandler:
                                    212 ;	src/stm8s_it.c: 495: }
      0093F0 80               [11]  213 	iret
                                    214 ;	src/stm8s_it.c: 503: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    215 ;	-----------------------------------------
                                    216 ;	 function EEPROM_EEC_IRQHandler
                                    217 ;	-----------------------------------------
      0093F1                        218 _EEPROM_EEC_IRQHandler:
                                    219 ;	src/stm8s_it.c: 508: }
      0093F1 80               [11]  220 	iret
                                    221 	.area CODE
                                    222 	.area CONST
                                    223 	.area INITIALIZER
                                    224 	.area CABS (ABS)
