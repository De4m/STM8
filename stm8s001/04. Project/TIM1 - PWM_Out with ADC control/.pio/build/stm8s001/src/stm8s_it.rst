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
                                     11 	.globl _TRAP_IRQHandler
                                     12 	.globl _TLI_IRQHandler
                                     13 	.globl _AWU_IRQHandler
                                     14 	.globl _CLK_IRQHandler
                                     15 	.globl _EXTI_PORTA_IRQHandler
                                     16 	.globl _EXTI_PORTB_IRQHandler
                                     17 	.globl _EXTI_PORTC_IRQHandler
                                     18 	.globl _EXTI_PORTD_IRQHandler
                                     19 	.globl _EXTI_PORTE_IRQHandler
                                     20 	.globl _SPI_IRQHandler
                                     21 	.globl _TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                     22 	.globl _TIM1_CAP_COM_IRQHandler
                                     23 	.globl _TIM2_UPD_OVF_BRK_IRQHandler
                                     24 	.globl _TIM2_CAP_COM_IRQHandler
                                     25 	.globl _UART1_TX_IRQHandler
                                     26 	.globl _UART1_RX_IRQHandler
                                     27 	.globl _I2C_IRQHandler
                                     28 	.globl _ADC1_IRQHandler
                                     29 	.globl _TIM4_UPD_OVF_IRQHandler
                                     30 	.globl _EEPROM_EEC_IRQHandler
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                                     68 ;	src/stm8s_it.c: 66: INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
                                     69 ;	-----------------------------------------
                                     70 ;	 function TRAP_IRQHandler
                                     71 ;	-----------------------------------------
      008DEA                         72 _TRAP_IRQHandler:
                                     73 ;	src/stm8s_it.c: 71: }
      008DEA 80               [11]   74 	iret
                                     75 ;	src/stm8s_it.c: 78: INTERRUPT_HANDLER(TLI_IRQHandler, 0)
                                     76 ;	-----------------------------------------
                                     77 ;	 function TLI_IRQHandler
                                     78 ;	-----------------------------------------
      008DEB                         79 _TLI_IRQHandler:
                                     80 ;	src/stm8s_it.c: 84: }
      008DEB 80               [11]   81 	iret
                                     82 ;	src/stm8s_it.c: 91: INTERRUPT_HANDLER(AWU_IRQHandler, 1)
                                     83 ;	-----------------------------------------
                                     84 ;	 function AWU_IRQHandler
                                     85 ;	-----------------------------------------
      008DEC                         86 _AWU_IRQHandler:
                                     87 ;	src/stm8s_it.c: 96: }
      008DEC 80               [11]   88 	iret
                                     89 ;	src/stm8s_it.c: 103: INTERRUPT_HANDLER(CLK_IRQHandler, 2)
                                     90 ;	-----------------------------------------
                                     91 ;	 function CLK_IRQHandler
                                     92 ;	-----------------------------------------
      008DED                         93 _CLK_IRQHandler:
                                     94 ;	src/stm8s_it.c: 108: }
      008DED 80               [11]   95 	iret
                                     96 ;	src/stm8s_it.c: 115: INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
                                     97 ;	-----------------------------------------
                                     98 ;	 function EXTI_PORTA_IRQHandler
                                     99 ;	-----------------------------------------
      008DEE                        100 _EXTI_PORTA_IRQHandler:
                                    101 ;	src/stm8s_it.c: 120: }
      008DEE 80               [11]  102 	iret
                                    103 ;	src/stm8s_it.c: 127: INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
                                    104 ;	-----------------------------------------
                                    105 ;	 function EXTI_PORTB_IRQHandler
                                    106 ;	-----------------------------------------
      008DEF                        107 _EXTI_PORTB_IRQHandler:
                                    108 ;	src/stm8s_it.c: 132: }
      008DEF 80               [11]  109 	iret
                                    110 ;	src/stm8s_it.c: 139: INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
                                    111 ;	-----------------------------------------
                                    112 ;	 function EXTI_PORTC_IRQHandler
                                    113 ;	-----------------------------------------
      008DF0                        114 _EXTI_PORTC_IRQHandler:
                                    115 ;	src/stm8s_it.c: 144: }
      008DF0 80               [11]  116 	iret
                                    117 ;	src/stm8s_it.c: 151: INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
                                    118 ;	-----------------------------------------
                                    119 ;	 function EXTI_PORTD_IRQHandler
                                    120 ;	-----------------------------------------
      008DF1                        121 _EXTI_PORTD_IRQHandler:
                                    122 ;	src/stm8s_it.c: 156: }
      008DF1 80               [11]  123 	iret
                                    124 ;	src/stm8s_it.c: 163: INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
                                    125 ;	-----------------------------------------
                                    126 ;	 function EXTI_PORTE_IRQHandler
                                    127 ;	-----------------------------------------
      008DF2                        128 _EXTI_PORTE_IRQHandler:
                                    129 ;	src/stm8s_it.c: 168: }
      008DF2 80               [11]  130 	iret
                                    131 ;	src/stm8s_it.c: 215: INTERRUPT_HANDLER(SPI_IRQHandler, 10)
                                    132 ;	-----------------------------------------
                                    133 ;	 function SPI_IRQHandler
                                    134 ;	-----------------------------------------
      008DF3                        135 _SPI_IRQHandler:
                                    136 ;	src/stm8s_it.c: 220: }
      008DF3 80               [11]  137 	iret
                                    138 ;	src/stm8s_it.c: 227: INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
                                    139 ;	-----------------------------------------
                                    140 ;	 function TIM1_UPD_OVF_TRG_BRK_IRQHandler
                                    141 ;	-----------------------------------------
      008DF4                        142 _TIM1_UPD_OVF_TRG_BRK_IRQHandler:
                                    143 ;	src/stm8s_it.c: 232: }
      008DF4 80               [11]  144 	iret
                                    145 ;	src/stm8s_it.c: 239: INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
                                    146 ;	-----------------------------------------
                                    147 ;	 function TIM1_CAP_COM_IRQHandler
                                    148 ;	-----------------------------------------
      008DF5                        149 _TIM1_CAP_COM_IRQHandler:
                                    150 ;	src/stm8s_it.c: 244: }
      008DF5 80               [11]  151 	iret
                                    152 ;	src/stm8s_it.c: 277: INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
                                    153 ;	-----------------------------------------
                                    154 ;	 function TIM2_UPD_OVF_BRK_IRQHandler
                                    155 ;	-----------------------------------------
      008DF6                        156 _TIM2_UPD_OVF_BRK_IRQHandler:
                                    157 ;	src/stm8s_it.c: 282: }
      008DF6 80               [11]  158 	iret
                                    159 ;	src/stm8s_it.c: 289: INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
                                    160 ;	-----------------------------------------
                                    161 ;	 function TIM2_CAP_COM_IRQHandler
                                    162 ;	-----------------------------------------
      008DF7                        163 _TIM2_CAP_COM_IRQHandler:
                                    164 ;	src/stm8s_it.c: 294: }
      008DF7 80               [11]  165 	iret
                                    166 ;	src/stm8s_it.c: 331: INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
                                    167 ;	-----------------------------------------
                                    168 ;	 function UART1_TX_IRQHandler
                                    169 ;	-----------------------------------------
      008DF8                        170 _UART1_TX_IRQHandler:
                                    171 ;	src/stm8s_it.c: 336: }
      008DF8 80               [11]  172 	iret
                                    173 ;	src/stm8s_it.c: 343: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    174 ;	-----------------------------------------
                                    175 ;	 function UART1_RX_IRQHandler
                                    176 ;	-----------------------------------------
      008DF9                        177 _UART1_RX_IRQHandler:
                                    178 ;	src/stm8s_it.c: 348: }
      008DF9 80               [11]  179 	iret
                                    180 ;	src/stm8s_it.c: 382: INTERRUPT_HANDLER(I2C_IRQHandler, 19)
                                    181 ;	-----------------------------------------
                                    182 ;	 function I2C_IRQHandler
                                    183 ;	-----------------------------------------
      008DFA                        184 _I2C_IRQHandler:
                                    185 ;	src/stm8s_it.c: 387: }
      008DFA 80               [11]  186 	iret
                                    187 ;	src/stm8s_it.c: 461: INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
                                    188 ;	-----------------------------------------
                                    189 ;	 function ADC1_IRQHandler
                                    190 ;	-----------------------------------------
      008DFB                        191 _ADC1_IRQHandler:
                                    192 ;	src/stm8s_it.c: 466: }
      008DFB 80               [11]  193 	iret
                                    194 ;	src/stm8s_it.c: 487: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    195 ;	-----------------------------------------
                                    196 ;	 function TIM4_UPD_OVF_IRQHandler
                                    197 ;	-----------------------------------------
      008DFC                        198 _TIM4_UPD_OVF_IRQHandler:
                                    199 ;	src/stm8s_it.c: 492: }
      008DFC 80               [11]  200 	iret
                                    201 ;	src/stm8s_it.c: 500: INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
                                    202 ;	-----------------------------------------
                                    203 ;	 function EEPROM_EEC_IRQHandler
                                    204 ;	-----------------------------------------
      008DFD                        205 _EEPROM_EEC_IRQHandler:
                                    206 ;	src/stm8s_it.c: 505: }
      008DFD 80               [11]  207 	iret
                                    208 	.area CODE
                                    209 	.area CONST
                                    210 	.area INITIALIZER
                                    211 	.area CABS (ABS)
