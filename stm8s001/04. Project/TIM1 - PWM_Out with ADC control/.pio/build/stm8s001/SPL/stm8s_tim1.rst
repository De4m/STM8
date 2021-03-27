                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TIM1_DeInit
                                     12 	.globl _TIM1_TimeBaseInit
                                     13 	.globl _TIM1_OC1Init
                                     14 	.globl _TIM1_OC2Init
                                     15 	.globl _TIM1_OC3Init
                                     16 	.globl _TIM1_OC4Init
                                     17 	.globl _TIM1_BDTRConfig
                                     18 	.globl _TIM1_ICInit
                                     19 	.globl _TIM1_PWMIConfig
                                     20 	.globl _TIM1_Cmd
                                     21 	.globl _TIM1_CtrlPWMOutputs
                                     22 	.globl _TIM1_ITConfig
                                     23 	.globl _TIM1_InternalClockConfig
                                     24 	.globl _TIM1_ETRClockMode1Config
                                     25 	.globl _TIM1_ETRClockMode2Config
                                     26 	.globl _TIM1_ETRConfig
                                     27 	.globl _TIM1_TIxExternalClockConfig
                                     28 	.globl _TIM1_SelectInputTrigger
                                     29 	.globl _TIM1_UpdateDisableConfig
                                     30 	.globl _TIM1_UpdateRequestConfig
                                     31 	.globl _TIM1_SelectHallSensor
                                     32 	.globl _TIM1_SelectOnePulseMode
                                     33 	.globl _TIM1_SelectOutputTrigger
                                     34 	.globl _TIM1_SelectSlaveMode
                                     35 	.globl _TIM1_SelectMasterSlaveMode
                                     36 	.globl _TIM1_EncoderInterfaceConfig
                                     37 	.globl _TIM1_PrescalerConfig
                                     38 	.globl _TIM1_CounterModeConfig
                                     39 	.globl _TIM1_ForcedOC1Config
                                     40 	.globl _TIM1_ForcedOC2Config
                                     41 	.globl _TIM1_ForcedOC3Config
                                     42 	.globl _TIM1_ForcedOC4Config
                                     43 	.globl _TIM1_ARRPreloadConfig
                                     44 	.globl _TIM1_SelectCOM
                                     45 	.globl _TIM1_CCPreloadControl
                                     46 	.globl _TIM1_OC1PreloadConfig
                                     47 	.globl _TIM1_OC2PreloadConfig
                                     48 	.globl _TIM1_OC3PreloadConfig
                                     49 	.globl _TIM1_OC4PreloadConfig
                                     50 	.globl _TIM1_OC1FastConfig
                                     51 	.globl _TIM1_OC2FastConfig
                                     52 	.globl _TIM1_OC3FastConfig
                                     53 	.globl _TIM1_OC4FastConfig
                                     54 	.globl _TIM1_GenerateEvent
                                     55 	.globl _TIM1_OC1PolarityConfig
                                     56 	.globl _TIM1_OC1NPolarityConfig
                                     57 	.globl _TIM1_OC2PolarityConfig
                                     58 	.globl _TIM1_OC2NPolarityConfig
                                     59 	.globl _TIM1_OC3PolarityConfig
                                     60 	.globl _TIM1_OC3NPolarityConfig
                                     61 	.globl _TIM1_OC4PolarityConfig
                                     62 	.globl _TIM1_CCxCmd
                                     63 	.globl _TIM1_CCxNCmd
                                     64 	.globl _TIM1_SelectOCxM
                                     65 	.globl _TIM1_SetCounter
                                     66 	.globl _TIM1_SetAutoreload
                                     67 	.globl _TIM1_SetCompare1
                                     68 	.globl _TIM1_SetCompare2
                                     69 	.globl _TIM1_SetCompare3
                                     70 	.globl _TIM1_SetCompare4
                                     71 	.globl _TIM1_SetIC1Prescaler
                                     72 	.globl _TIM1_SetIC2Prescaler
                                     73 	.globl _TIM1_SetIC3Prescaler
                                     74 	.globl _TIM1_SetIC4Prescaler
                                     75 	.globl _TIM1_GetCapture1
                                     76 	.globl _TIM1_GetCapture2
                                     77 	.globl _TIM1_GetCapture3
                                     78 	.globl _TIM1_GetCapture4
                                     79 	.globl _TIM1_GetCounter
                                     80 	.globl _TIM1_GetPrescaler
                                     81 	.globl _TIM1_GetFlagStatus
                                     82 	.globl _TIM1_ClearFlag
                                     83 	.globl _TIM1_GetITStatus
                                     84 	.globl _TIM1_ClearITPendingBit
                                     85 ;--------------------------------------------------------
                                     86 ; ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area DATA
                                     89 ;--------------------------------------------------------
                                     90 ; ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area INITIALIZED
                                     93 ;--------------------------------------------------------
                                     94 ; absolute external ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area DABS (ABS)
                                     97 
                                     98 ; default segment ordering for linker
                                     99 	.area HOME
                                    100 	.area GSINIT
                                    101 	.area GSFINAL
                                    102 	.area CONST
                                    103 	.area INITIALIZER
                                    104 	.area CODE
                                    105 
                                    106 ;--------------------------------------------------------
                                    107 ; global & static initialisations
                                    108 ;--------------------------------------------------------
                                    109 	.area HOME
                                    110 	.area GSINIT
                                    111 	.area GSFINAL
                                    112 	.area GSINIT
                                    113 ;--------------------------------------------------------
                                    114 ; Home
                                    115 ;--------------------------------------------------------
                                    116 	.area HOME
                                    117 	.area HOME
                                    118 ;--------------------------------------------------------
                                    119 ; code
                                    120 ;--------------------------------------------------------
                                    121 	.area CODE
                                    122 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 58: void TIM1_DeInit(void)
                                    123 ;	-----------------------------------------
                                    124 ;	 function TIM1_DeInit
                                    125 ;	-----------------------------------------
      00836A                        126 _TIM1_DeInit:
                                    127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 60: TIM1->CR1  = TIM1_CR1_RESET_VALUE;
      00836A 35 00 52 50      [ 1]  128 	mov	0x5250+0, #0x00
                                    129 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 61: TIM1->CR2  = TIM1_CR2_RESET_VALUE;
      00836E 35 00 52 51      [ 1]  130 	mov	0x5251+0, #0x00
                                    131 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 62: TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
      008372 35 00 52 52      [ 1]  132 	mov	0x5252+0, #0x00
                                    133 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 63: TIM1->ETR  = TIM1_ETR_RESET_VALUE;
      008376 35 00 52 53      [ 1]  134 	mov	0x5253+0, #0x00
                                    135 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 64: TIM1->IER  = TIM1_IER_RESET_VALUE;
      00837A 35 00 52 54      [ 1]  136 	mov	0x5254+0, #0x00
                                    137 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 65: TIM1->SR2  = TIM1_SR2_RESET_VALUE;
      00837E 35 00 52 56      [ 1]  138 	mov	0x5256+0, #0x00
                                    139 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 67: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      008382 35 00 52 5C      [ 1]  140 	mov	0x525c+0, #0x00
                                    141 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 68: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      008386 35 00 52 5D      [ 1]  142 	mov	0x525d+0, #0x00
                                    143 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 70: TIM1->CCMR1 = 0x01;
      00838A 35 01 52 58      [ 1]  144 	mov	0x5258+0, #0x01
                                    145 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 71: TIM1->CCMR2 = 0x01;
      00838E 35 01 52 59      [ 1]  146 	mov	0x5259+0, #0x01
                                    147 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 72: TIM1->CCMR3 = 0x01;
      008392 35 01 52 5A      [ 1]  148 	mov	0x525a+0, #0x01
                                    149 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 73: TIM1->CCMR4 = 0x01;
      008396 35 01 52 5B      [ 1]  150 	mov	0x525b+0, #0x01
                                    151 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 75: TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
      00839A 35 00 52 5C      [ 1]  152 	mov	0x525c+0, #0x00
                                    153 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 76: TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
      00839E 35 00 52 5D      [ 1]  154 	mov	0x525d+0, #0x00
                                    155 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 77: TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
      0083A2 35 00 52 58      [ 1]  156 	mov	0x5258+0, #0x00
                                    157 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 78: TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
      0083A6 35 00 52 59      [ 1]  158 	mov	0x5259+0, #0x00
                                    159 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 79: TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
      0083AA 35 00 52 5A      [ 1]  160 	mov	0x525a+0, #0x00
                                    161 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 80: TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
      0083AE 35 00 52 5B      [ 1]  162 	mov	0x525b+0, #0x00
                                    163 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 81: TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
      0083B2 35 00 52 5E      [ 1]  164 	mov	0x525e+0, #0x00
                                    165 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 82: TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
      0083B6 35 00 52 5F      [ 1]  166 	mov	0x525f+0, #0x00
                                    167 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 83: TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
      0083BA 35 00 52 60      [ 1]  168 	mov	0x5260+0, #0x00
                                    169 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 84: TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
      0083BE 35 00 52 61      [ 1]  170 	mov	0x5261+0, #0x00
                                    171 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 85: TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
      0083C2 35 FF 52 62      [ 1]  172 	mov	0x5262+0, #0xff
                                    173 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 86: TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
      0083C6 35 FF 52 63      [ 1]  174 	mov	0x5263+0, #0xff
                                    175 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 87: TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
      0083CA 35 00 52 65      [ 1]  176 	mov	0x5265+0, #0x00
                                    177 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 88: TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
      0083CE 35 00 52 66      [ 1]  178 	mov	0x5266+0, #0x00
                                    179 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 89: TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
      0083D2 35 00 52 67      [ 1]  180 	mov	0x5267+0, #0x00
                                    181 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 90: TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
      0083D6 35 00 52 68      [ 1]  182 	mov	0x5268+0, #0x00
                                    183 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 91: TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
      0083DA 35 00 52 69      [ 1]  184 	mov	0x5269+0, #0x00
                                    185 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 92: TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
      0083DE 35 00 52 6A      [ 1]  186 	mov	0x526a+0, #0x00
                                    187 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 93: TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
      0083E2 35 00 52 6B      [ 1]  188 	mov	0x526b+0, #0x00
                                    189 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 94: TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
      0083E6 35 00 52 6C      [ 1]  190 	mov	0x526c+0, #0x00
                                    191 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 95: TIM1->OISR  = TIM1_OISR_RESET_VALUE;
      0083EA 35 00 52 6F      [ 1]  192 	mov	0x526f+0, #0x00
                                    193 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 96: TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
      0083EE 35 01 52 57      [ 1]  194 	mov	0x5257+0, #0x01
                                    195 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 97: TIM1->DTR   = TIM1_DTR_RESET_VALUE;
      0083F2 35 00 52 6E      [ 1]  196 	mov	0x526e+0, #0x00
                                    197 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 98: TIM1->BKR   = TIM1_BKR_RESET_VALUE;
      0083F6 35 00 52 6D      [ 1]  198 	mov	0x526d+0, #0x00
                                    199 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 99: TIM1->RCR   = TIM1_RCR_RESET_VALUE;
      0083FA 35 00 52 64      [ 1]  200 	mov	0x5264+0, #0x00
                                    201 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 100: TIM1->SR1   = TIM1_SR1_RESET_VALUE;
      0083FE 35 00 52 55      [ 1]  202 	mov	0x5255+0, #0x00
                                    203 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 101: }
      008402 81               [ 4]  204 	ret
                                    205 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 111: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
                                    206 ;	-----------------------------------------
                                    207 ;	 function TIM1_TimeBaseInit
                                    208 ;	-----------------------------------------
      008403                        209 _TIM1_TimeBaseInit:
      008403 89               [ 2]  210 	pushw	x
                                    211 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 120: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
      008404 7B 08            [ 1]  212 	ld	a, (0x08, sp)
      008406 6B 02            [ 1]  213 	ld	(0x02, sp), a
      008408 0F 01            [ 1]  214 	clr	(0x01, sp)
      00840A 7B 02            [ 1]  215 	ld	a, (0x02, sp)
      00840C C7 52 62         [ 1]  216 	ld	0x5262, a
                                    217 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 121: TIM1->ARRL = (uint8_t)(TIM1_Period);
      00840F 7B 09            [ 1]  218 	ld	a, (0x09, sp)
      008411 C7 52 63         [ 1]  219 	ld	0x5263, a
                                    220 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 124: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
      008414 7B 05            [ 1]  221 	ld	a, (0x05, sp)
      008416 6B 02            [ 1]  222 	ld	(0x02, sp), a
      008418 0F 01            [ 1]  223 	clr	(0x01, sp)
      00841A 7B 02            [ 1]  224 	ld	a, (0x02, sp)
      00841C C7 52 60         [ 1]  225 	ld	0x5260, a
                                    226 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 125: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
      00841F 7B 06            [ 1]  227 	ld	a, (0x06, sp)
      008421 C7 52 61         [ 1]  228 	ld	0x5261, a
                                    229 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 128: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
      008424 C6 52 50         [ 1]  230 	ld	a, 0x5250
      008427 A4 8F            [ 1]  231 	and	a, #0x8f
                                    232 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 129: | (uint8_t)(TIM1_CounterMode));
      008429 1A 07            [ 1]  233 	or	a, (0x07, sp)
      00842B C7 52 50         [ 1]  234 	ld	0x5250, a
                                    235 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 132: TIM1->RCR = TIM1_RepetitionCounter;
      00842E AE 52 64         [ 2]  236 	ldw	x, #0x5264
      008431 7B 0A            [ 1]  237 	ld	a, (0x0a, sp)
      008433 F7               [ 1]  238 	ld	(x), a
                                    239 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 133: }
      008434 85               [ 2]  240 	popw	x
      008435 81               [ 4]  241 	ret
                                    242 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 154: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    243 ;	-----------------------------------------
                                    244 ;	 function TIM1_OC1Init
                                    245 ;	-----------------------------------------
      008436                        246 _TIM1_OC1Init:
      008436 52 03            [ 2]  247 	sub	sp, #3
                                    248 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 174: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
      008438 C6 52 5C         [ 1]  249 	ld	a, 0x525c
      00843B A4 F0            [ 1]  250 	and	a, #0xf0
      00843D C7 52 5C         [ 1]  251 	ld	0x525c, a
                                    252 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 178: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
      008440 C6 52 5C         [ 1]  253 	ld	a, 0x525c
      008443 6B 01            [ 1]  254 	ld	(0x01, sp), a
      008445 7B 07            [ 1]  255 	ld	a, (0x07, sp)
      008447 A4 01            [ 1]  256 	and	a, #0x01
      008449 6B 03            [ 1]  257 	ld	(0x03, sp), a
                                    258 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 179: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
      00844B 7B 08            [ 1]  259 	ld	a, (0x08, sp)
      00844D A4 04            [ 1]  260 	and	a, #0x04
      00844F 1A 03            [ 1]  261 	or	a, (0x03, sp)
      008451 6B 02            [ 1]  262 	ld	(0x02, sp), a
                                    263 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 180: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
      008453 7B 0B            [ 1]  264 	ld	a, (0x0b, sp)
      008455 A4 02            [ 1]  265 	and	a, #0x02
      008457 6B 03            [ 1]  266 	ld	(0x03, sp), a
                                    267 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 181: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
      008459 7B 0C            [ 1]  268 	ld	a, (0x0c, sp)
      00845B A4 08            [ 1]  269 	and	a, #0x08
      00845D 1A 03            [ 1]  270 	or	a, (0x03, sp)
      00845F 1A 02            [ 1]  271 	or	a, (0x02, sp)
      008461 1A 01            [ 1]  272 	or	a, (0x01, sp)
      008463 C7 52 5C         [ 1]  273 	ld	0x525c, a
                                    274 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 184: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008466 C6 52 58         [ 1]  275 	ld	a, 0x5258
      008469 A4 8F            [ 1]  276 	and	a, #0x8f
                                    277 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 185: (uint8_t)TIM1_OCMode);
      00846B 1A 06            [ 1]  278 	or	a, (0x06, sp)
      00846D C7 52 58         [ 1]  279 	ld	0x5258, a
                                    280 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 188: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
      008470 C6 52 6F         [ 1]  281 	ld	a, 0x526f
      008473 A4 FC            [ 1]  282 	and	a, #0xfc
      008475 C7 52 6F         [ 1]  283 	ld	0x526f, a
                                    284 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 190: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
      008478 C6 52 6F         [ 1]  285 	ld	a, 0x526f
      00847B 6B 02            [ 1]  286 	ld	(0x02, sp), a
      00847D 7B 0D            [ 1]  287 	ld	a, (0x0d, sp)
      00847F A4 01            [ 1]  288 	and	a, #0x01
      008481 6B 03            [ 1]  289 	ld	(0x03, sp), a
                                    290 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 191: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
      008483 7B 0E            [ 1]  291 	ld	a, (0x0e, sp)
      008485 A4 02            [ 1]  292 	and	a, #0x02
      008487 1A 03            [ 1]  293 	or	a, (0x03, sp)
      008489 1A 02            [ 1]  294 	or	a, (0x02, sp)
      00848B C7 52 6F         [ 1]  295 	ld	0x526f, a
                                    296 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 194: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
      00848E 7B 09            [ 1]  297 	ld	a, (0x09, sp)
      008490 C7 52 65         [ 1]  298 	ld	0x5265, a
                                    299 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 195: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
      008493 7B 0A            [ 1]  300 	ld	a, (0x0a, sp)
      008495 C7 52 66         [ 1]  301 	ld	0x5266, a
                                    302 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 196: }
      008498 5B 03            [ 2]  303 	addw	sp, #3
      00849A 81               [ 4]  304 	ret
                                    305 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 217: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    306 ;	-----------------------------------------
                                    307 ;	 function TIM1_OC2Init
                                    308 ;	-----------------------------------------
      00849B                        309 _TIM1_OC2Init:
      00849B 52 03            [ 2]  310 	sub	sp, #3
                                    311 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 237: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
      00849D C6 52 5C         [ 1]  312 	ld	a, 0x525c
      0084A0 A4 0F            [ 1]  313 	and	a, #0x0f
      0084A2 C7 52 5C         [ 1]  314 	ld	0x525c, a
                                    315 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 242: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
      0084A5 C6 52 5C         [ 1]  316 	ld	a, 0x525c
      0084A8 6B 01            [ 1]  317 	ld	(0x01, sp), a
      0084AA 7B 07            [ 1]  318 	ld	a, (0x07, sp)
      0084AC A4 10            [ 1]  319 	and	a, #0x10
      0084AE 6B 03            [ 1]  320 	ld	(0x03, sp), a
                                    321 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 243: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
      0084B0 7B 08            [ 1]  322 	ld	a, (0x08, sp)
      0084B2 A4 40            [ 1]  323 	and	a, #0x40
      0084B4 1A 03            [ 1]  324 	or	a, (0x03, sp)
      0084B6 6B 02            [ 1]  325 	ld	(0x02, sp), a
                                    326 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 244: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
      0084B8 7B 0B            [ 1]  327 	ld	a, (0x0b, sp)
      0084BA A4 20            [ 1]  328 	and	a, #0x20
      0084BC 6B 03            [ 1]  329 	ld	(0x03, sp), a
                                    330 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 245: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
      0084BE 7B 0C            [ 1]  331 	ld	a, (0x0c, sp)
      0084C0 A4 80            [ 1]  332 	and	a, #0x80
      0084C2 1A 03            [ 1]  333 	or	a, (0x03, sp)
      0084C4 1A 02            [ 1]  334 	or	a, (0x02, sp)
      0084C6 1A 01            [ 1]  335 	or	a, (0x01, sp)
      0084C8 C7 52 5C         [ 1]  336 	ld	0x525c, a
                                    337 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 248: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      0084CB C6 52 59         [ 1]  338 	ld	a, 0x5259
      0084CE A4 8F            [ 1]  339 	and	a, #0x8f
                                    340 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 249: (uint8_t)TIM1_OCMode);
      0084D0 1A 06            [ 1]  341 	or	a, (0x06, sp)
      0084D2 C7 52 59         [ 1]  342 	ld	0x5259, a
                                    343 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 252: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
      0084D5 C6 52 6F         [ 1]  344 	ld	a, 0x526f
      0084D8 A4 F3            [ 1]  345 	and	a, #0xf3
      0084DA C7 52 6F         [ 1]  346 	ld	0x526f, a
                                    347 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 254: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
      0084DD C6 52 6F         [ 1]  348 	ld	a, 0x526f
      0084E0 6B 02            [ 1]  349 	ld	(0x02, sp), a
      0084E2 7B 0D            [ 1]  350 	ld	a, (0x0d, sp)
      0084E4 A4 04            [ 1]  351 	and	a, #0x04
      0084E6 6B 03            [ 1]  352 	ld	(0x03, sp), a
                                    353 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 255: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
      0084E8 7B 0E            [ 1]  354 	ld	a, (0x0e, sp)
      0084EA A4 08            [ 1]  355 	and	a, #0x08
      0084EC 1A 03            [ 1]  356 	or	a, (0x03, sp)
      0084EE 1A 02            [ 1]  357 	or	a, (0x02, sp)
      0084F0 C7 52 6F         [ 1]  358 	ld	0x526f, a
                                    359 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 258: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
      0084F3 7B 09            [ 1]  360 	ld	a, (0x09, sp)
      0084F5 C7 52 67         [ 1]  361 	ld	0x5267, a
                                    362 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 259: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
      0084F8 7B 0A            [ 1]  363 	ld	a, (0x0a, sp)
      0084FA C7 52 68         [ 1]  364 	ld	0x5268, a
                                    365 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 260: }
      0084FD 5B 03            [ 2]  366 	addw	sp, #3
      0084FF 81               [ 4]  367 	ret
                                    368 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 281: void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM1_OC3Init
                                    371 ;	-----------------------------------------
      008500                        372 _TIM1_OC3Init:
      008500 52 03            [ 2]  373 	sub	sp, #3
                                    374 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 301: TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
      008502 C6 52 5D         [ 1]  375 	ld	a, 0x525d
      008505 A4 F0            [ 1]  376 	and	a, #0xf0
      008507 C7 52 5D         [ 1]  377 	ld	0x525d, a
                                    378 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 305: TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
      00850A C6 52 5D         [ 1]  379 	ld	a, 0x525d
      00850D 6B 01            [ 1]  380 	ld	(0x01, sp), a
      00850F 7B 07            [ 1]  381 	ld	a, (0x07, sp)
      008511 A4 01            [ 1]  382 	and	a, #0x01
      008513 6B 03            [ 1]  383 	ld	(0x03, sp), a
                                    384 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 306: (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
      008515 7B 08            [ 1]  385 	ld	a, (0x08, sp)
      008517 A4 04            [ 1]  386 	and	a, #0x04
      008519 1A 03            [ 1]  387 	or	a, (0x03, sp)
      00851B 6B 02            [ 1]  388 	ld	(0x02, sp), a
                                    389 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 307: (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
      00851D 7B 0B            [ 1]  390 	ld	a, (0x0b, sp)
      00851F A4 02            [ 1]  391 	and	a, #0x02
      008521 6B 03            [ 1]  392 	ld	(0x03, sp), a
                                    393 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 308: (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
      008523 7B 0C            [ 1]  394 	ld	a, (0x0c, sp)
      008525 A4 08            [ 1]  395 	and	a, #0x08
      008527 1A 03            [ 1]  396 	or	a, (0x03, sp)
      008529 1A 02            [ 1]  397 	or	a, (0x02, sp)
      00852B 1A 01            [ 1]  398 	or	a, (0x01, sp)
      00852D C7 52 5D         [ 1]  399 	ld	0x525d, a
                                    400 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 311: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008530 C6 52 5A         [ 1]  401 	ld	a, 0x525a
      008533 A4 8F            [ 1]  402 	and	a, #0x8f
                                    403 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 312: (uint8_t)TIM1_OCMode);
      008535 1A 06            [ 1]  404 	or	a, (0x06, sp)
      008537 C7 52 5A         [ 1]  405 	ld	0x525a, a
                                    406 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 315: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
      00853A C6 52 6F         [ 1]  407 	ld	a, 0x526f
      00853D A4 CF            [ 1]  408 	and	a, #0xcf
      00853F C7 52 6F         [ 1]  409 	ld	0x526f, a
                                    410 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 317: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
      008542 C6 52 6F         [ 1]  411 	ld	a, 0x526f
      008545 6B 02            [ 1]  412 	ld	(0x02, sp), a
      008547 7B 0D            [ 1]  413 	ld	a, (0x0d, sp)
      008549 A4 10            [ 1]  414 	and	a, #0x10
      00854B 6B 03            [ 1]  415 	ld	(0x03, sp), a
                                    416 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 318: (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
      00854D 7B 0E            [ 1]  417 	ld	a, (0x0e, sp)
      00854F A4 20            [ 1]  418 	and	a, #0x20
      008551 1A 03            [ 1]  419 	or	a, (0x03, sp)
      008553 1A 02            [ 1]  420 	or	a, (0x02, sp)
      008555 C7 52 6F         [ 1]  421 	ld	0x526f, a
                                    422 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 321: TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
      008558 7B 09            [ 1]  423 	ld	a, (0x09, sp)
      00855A C7 52 69         [ 1]  424 	ld	0x5269, a
                                    425 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 322: TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
      00855D 7B 0A            [ 1]  426 	ld	a, (0x0a, sp)
      00855F C7 52 6A         [ 1]  427 	ld	0x526a, a
                                    428 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 323: }
      008562 5B 03            [ 2]  429 	addw	sp, #3
      008564 81               [ 4]  430 	ret
                                    431 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 338: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
                                    432 ;	-----------------------------------------
                                    433 ;	 function TIM1_OC4Init
                                    434 ;	-----------------------------------------
      008565                        435 _TIM1_OC4Init:
      008565 89               [ 2]  436 	pushw	x
                                    437 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 351: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
      008566 C6 52 5D         [ 1]  438 	ld	a, 0x525d
      008569 A4 CF            [ 1]  439 	and	a, #0xcf
      00856B C7 52 5D         [ 1]  440 	ld	0x525d, a
                                    441 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 353: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
      00856E C6 52 5D         [ 1]  442 	ld	a, 0x525d
      008571 6B 01            [ 1]  443 	ld	(0x01, sp), a
      008573 7B 06            [ 1]  444 	ld	a, (0x06, sp)
      008575 A4 10            [ 1]  445 	and	a, #0x10
      008577 6B 02            [ 1]  446 	ld	(0x02, sp), a
                                    447 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 354: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
      008579 7B 09            [ 1]  448 	ld	a, (0x09, sp)
      00857B A4 20            [ 1]  449 	and	a, #0x20
      00857D 1A 02            [ 1]  450 	or	a, (0x02, sp)
      00857F 1A 01            [ 1]  451 	or	a, (0x01, sp)
      008581 C7 52 5D         [ 1]  452 	ld	0x525d, a
                                    453 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 357: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
      008584 C6 52 5B         [ 1]  454 	ld	a, 0x525b
      008587 A4 8F            [ 1]  455 	and	a, #0x8f
      008589 1A 05            [ 1]  456 	or	a, (0x05, sp)
      00858B C7 52 5B         [ 1]  457 	ld	0x525b, a
                                    458 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      00858E C6 52 6F         [ 1]  459 	ld	a, 0x526f
                                    460 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 361: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
      008591 0D 0A            [ 1]  461 	tnz	(0x0a, sp)
      008593 27 07            [ 1]  462 	jreq	00102$
                                    463 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 363: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
      008595 AA DF            [ 1]  464 	or	a, #0xdf
      008597 C7 52 6F         [ 1]  465 	ld	0x526f, a
      00859A 20 05            [ 2]  466 	jra	00103$
      00859C                        467 00102$:
                                    468 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 367: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
      00859C A4 BF            [ 1]  469 	and	a, #0xbf
      00859E C7 52 6F         [ 1]  470 	ld	0x526f, a
      0085A1                        471 00103$:
                                    472 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 371: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
      0085A1 7B 07            [ 1]  473 	ld	a, (0x07, sp)
      0085A3 6B 02            [ 1]  474 	ld	(0x02, sp), a
      0085A5 0F 01            [ 1]  475 	clr	(0x01, sp)
      0085A7 7B 02            [ 1]  476 	ld	a, (0x02, sp)
      0085A9 C7 52 6B         [ 1]  477 	ld	0x526b, a
                                    478 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 372: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
      0085AC 7B 08            [ 1]  479 	ld	a, (0x08, sp)
      0085AE C7 52 6C         [ 1]  480 	ld	0x526c, a
                                    481 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 373: }
      0085B1 85               [ 2]  482 	popw	x
      0085B2 81               [ 4]  483 	ret
                                    484 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 388: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
                                    485 ;	-----------------------------------------
                                    486 ;	 function TIM1_BDTRConfig
                                    487 ;	-----------------------------------------
      0085B3                        488 _TIM1_BDTRConfig:
      0085B3 88               [ 1]  489 	push	a
                                    490 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 402: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
      0085B4 AE 52 6E         [ 2]  491 	ldw	x, #0x526e
      0085B7 7B 06            [ 1]  492 	ld	a, (0x06, sp)
      0085B9 F7               [ 1]  493 	ld	(x), a
                                    494 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 406: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
      0085BA 7B 04            [ 1]  495 	ld	a, (0x04, sp)
      0085BC 1A 05            [ 1]  496 	or	a, (0x05, sp)
      0085BE 6B 01            [ 1]  497 	ld	(0x01, sp), a
                                    498 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 407: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
      0085C0 7B 07            [ 1]  499 	ld	a, (0x07, sp)
      0085C2 1A 08            [ 1]  500 	or	a, (0x08, sp)
                                    501 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 408: (uint8_t)TIM1_AutomaticOutput));
      0085C4 1A 09            [ 1]  502 	or	a, (0x09, sp)
      0085C6 1A 01            [ 1]  503 	or	a, (0x01, sp)
      0085C8 C7 52 6D         [ 1]  504 	ld	0x526d, a
                                    505 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 409: }
      0085CB 84               [ 1]  506 	pop	a
      0085CC 81               [ 4]  507 	ret
                                    508 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 423: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
                                    509 ;	-----------------------------------------
                                    510 ;	 function TIM1_ICInit
                                    511 ;	-----------------------------------------
      0085CD                        512 _TIM1_ICInit:
                                    513 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 436: if (TIM1_Channel == TIM1_CHANNEL_1)
      0085CD 0D 03            [ 1]  514 	tnz	(0x03, sp)
      0085CF 26 16            [ 1]  515 	jrne	00108$
                                    516 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 439: TI1_Config((uint8_t)TIM1_ICPolarity,
      0085D1 7B 07            [ 1]  517 	ld	a, (0x07, sp)
      0085D3 88               [ 1]  518 	push	a
      0085D4 7B 06            [ 1]  519 	ld	a, (0x06, sp)
      0085D6 88               [ 1]  520 	push	a
      0085D7 7B 06            [ 1]  521 	ld	a, (0x06, sp)
      0085D9 88               [ 1]  522 	push	a
      0085DA CD 8C 55         [ 4]  523 	call	_TI1_Config
      0085DD 5B 03            [ 2]  524 	addw	sp, #3
                                    525 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 443: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      0085DF 7B 06            [ 1]  526 	ld	a, (0x06, sp)
      0085E1 88               [ 1]  527 	push	a
      0085E2 CD 8B 3B         [ 4]  528 	call	_TIM1_SetIC1Prescaler
      0085E5 84               [ 1]  529 	pop	a
      0085E6 81               [ 4]  530 	ret
      0085E7                        531 00108$:
                                    532 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 445: else if (TIM1_Channel == TIM1_CHANNEL_2)
      0085E7 7B 03            [ 1]  533 	ld	a, (0x03, sp)
      0085E9 4A               [ 1]  534 	dec	a
      0085EA 26 16            [ 1]  535 	jrne	00105$
                                    536 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 448: TI2_Config((uint8_t)TIM1_ICPolarity,
      0085EC 7B 07            [ 1]  537 	ld	a, (0x07, sp)
      0085EE 88               [ 1]  538 	push	a
      0085EF 7B 06            [ 1]  539 	ld	a, (0x06, sp)
      0085F1 88               [ 1]  540 	push	a
      0085F2 7B 06            [ 1]  541 	ld	a, (0x06, sp)
      0085F4 88               [ 1]  542 	push	a
      0085F5 CD 8C 86         [ 4]  543 	call	_TI2_Config
      0085F8 5B 03            [ 2]  544 	addw	sp, #3
                                    545 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 452: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      0085FA 7B 06            [ 1]  546 	ld	a, (0x06, sp)
      0085FC 88               [ 1]  547 	push	a
      0085FD CD 8B 46         [ 4]  548 	call	_TIM1_SetIC2Prescaler
      008600 84               [ 1]  549 	pop	a
      008601 81               [ 4]  550 	ret
      008602                        551 00105$:
                                    552 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 454: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008602 7B 03            [ 1]  553 	ld	a, (0x03, sp)
      008604 A1 02            [ 1]  554 	cp	a, #0x02
      008606 26 16            [ 1]  555 	jrne	00102$
                                    556 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 457: TI3_Config((uint8_t)TIM1_ICPolarity,
      008608 7B 07            [ 1]  557 	ld	a, (0x07, sp)
      00860A 88               [ 1]  558 	push	a
      00860B 7B 06            [ 1]  559 	ld	a, (0x06, sp)
      00860D 88               [ 1]  560 	push	a
      00860E 7B 06            [ 1]  561 	ld	a, (0x06, sp)
      008610 88               [ 1]  562 	push	a
      008611 CD 8C B7         [ 4]  563 	call	_TI3_Config
      008614 5B 03            [ 2]  564 	addw	sp, #3
                                    565 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 461: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
      008616 7B 06            [ 1]  566 	ld	a, (0x06, sp)
      008618 88               [ 1]  567 	push	a
      008619 CD 8B 51         [ 4]  568 	call	_TIM1_SetIC3Prescaler
      00861C 84               [ 1]  569 	pop	a
      00861D 81               [ 4]  570 	ret
      00861E                        571 00102$:
                                    572 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 466: TI4_Config((uint8_t)TIM1_ICPolarity,
      00861E 7B 07            [ 1]  573 	ld	a, (0x07, sp)
      008620 88               [ 1]  574 	push	a
      008621 7B 06            [ 1]  575 	ld	a, (0x06, sp)
      008623 88               [ 1]  576 	push	a
      008624 7B 06            [ 1]  577 	ld	a, (0x06, sp)
      008626 88               [ 1]  578 	push	a
      008627 CD 8C EC         [ 4]  579 	call	_TI4_Config
      00862A 5B 03            [ 2]  580 	addw	sp, #3
                                    581 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 470: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
      00862C 7B 06            [ 1]  582 	ld	a, (0x06, sp)
      00862E 88               [ 1]  583 	push	a
      00862F CD 8B 5C         [ 4]  584 	call	_TIM1_SetIC4Prescaler
      008632 84               [ 1]  585 	pop	a
                                    586 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 472: }
      008633 81               [ 4]  587 	ret
                                    588 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 488: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
                                    589 ;	-----------------------------------------
                                    590 ;	 function TIM1_PWMIConfig
                                    591 ;	-----------------------------------------
      008634                        592 _TIM1_PWMIConfig:
      008634 89               [ 2]  593 	pushw	x
                                    594 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 504: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
      008635 7B 06            [ 1]  595 	ld	a, (0x06, sp)
      008637 4A               [ 1]  596 	dec	a
      008638 27 05            [ 1]  597 	jreq	00102$
                                    598 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 506: icpolarity = TIM1_ICPOLARITY_FALLING;
      00863A A6 01            [ 1]  599 	ld	a, #0x01
      00863C 6B 01            [ 1]  600 	ld	(0x01, sp), a
                                    601 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 510: icpolarity = TIM1_ICPOLARITY_RISING;
      00863E C1                     602 	.byte 0xc1
      00863F                        603 00102$:
      00863F 0F 01            [ 1]  604 	clr	(0x01, sp)
      008641                        605 00103$:
                                    606 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 514: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
      008641 7B 07            [ 1]  607 	ld	a, (0x07, sp)
      008643 4A               [ 1]  608 	dec	a
      008644 26 06            [ 1]  609 	jrne	00105$
                                    610 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 516: icselection = TIM1_ICSELECTION_INDIRECTTI;
      008646 A6 02            [ 1]  611 	ld	a, #0x02
      008648 6B 02            [ 1]  612 	ld	(0x02, sp), a
      00864A 20 04            [ 2]  613 	jra	00106$
      00864C                        614 00105$:
                                    615 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 520: icselection = TIM1_ICSELECTION_DIRECTTI;
      00864C A6 01            [ 1]  616 	ld	a, #0x01
      00864E 6B 02            [ 1]  617 	ld	(0x02, sp), a
      008650                        618 00106$:
                                    619 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 523: if (TIM1_Channel == TIM1_CHANNEL_1)
      008650 0D 05            [ 1]  620 	tnz	(0x05, sp)
      008652 26 2C            [ 1]  621 	jrne	00108$
                                    622 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 526: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      008654 7B 09            [ 1]  623 	ld	a, (0x09, sp)
      008656 88               [ 1]  624 	push	a
      008657 7B 08            [ 1]  625 	ld	a, (0x08, sp)
      008659 88               [ 1]  626 	push	a
      00865A 7B 08            [ 1]  627 	ld	a, (0x08, sp)
      00865C 88               [ 1]  628 	push	a
      00865D CD 8C 55         [ 4]  629 	call	_TI1_Config
      008660 5B 03            [ 2]  630 	addw	sp, #3
                                    631 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 530: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      008662 7B 08            [ 1]  632 	ld	a, (0x08, sp)
      008664 88               [ 1]  633 	push	a
      008665 CD 8B 3B         [ 4]  634 	call	_TIM1_SetIC1Prescaler
      008668 84               [ 1]  635 	pop	a
                                    636 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 533: TI2_Config(icpolarity, icselection, TIM1_ICFilter);
      008669 7B 09            [ 1]  637 	ld	a, (0x09, sp)
      00866B 88               [ 1]  638 	push	a
      00866C 7B 03            [ 1]  639 	ld	a, (0x03, sp)
      00866E 88               [ 1]  640 	push	a
      00866F 7B 03            [ 1]  641 	ld	a, (0x03, sp)
      008671 88               [ 1]  642 	push	a
      008672 CD 8C 86         [ 4]  643 	call	_TI2_Config
      008675 5B 03            [ 2]  644 	addw	sp, #3
                                    645 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 536: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      008677 7B 08            [ 1]  646 	ld	a, (0x08, sp)
      008679 88               [ 1]  647 	push	a
      00867A CD 8B 46         [ 4]  648 	call	_TIM1_SetIC2Prescaler
      00867D 84               [ 1]  649 	pop	a
      00867E 20 2A            [ 2]  650 	jra	00110$
      008680                        651 00108$:
                                    652 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 541: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
      008680 7B 09            [ 1]  653 	ld	a, (0x09, sp)
      008682 88               [ 1]  654 	push	a
      008683 7B 08            [ 1]  655 	ld	a, (0x08, sp)
      008685 88               [ 1]  656 	push	a
      008686 7B 08            [ 1]  657 	ld	a, (0x08, sp)
      008688 88               [ 1]  658 	push	a
      008689 CD 8C 86         [ 4]  659 	call	_TI2_Config
      00868C 5B 03            [ 2]  660 	addw	sp, #3
                                    661 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 545: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
      00868E 7B 08            [ 1]  662 	ld	a, (0x08, sp)
      008690 88               [ 1]  663 	push	a
      008691 CD 8B 46         [ 4]  664 	call	_TIM1_SetIC2Prescaler
      008694 84               [ 1]  665 	pop	a
                                    666 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 548: TI1_Config(icpolarity, icselection, TIM1_ICFilter);
      008695 7B 09            [ 1]  667 	ld	a, (0x09, sp)
      008697 88               [ 1]  668 	push	a
      008698 7B 03            [ 1]  669 	ld	a, (0x03, sp)
      00869A 88               [ 1]  670 	push	a
      00869B 7B 03            [ 1]  671 	ld	a, (0x03, sp)
      00869D 88               [ 1]  672 	push	a
      00869E CD 8C 55         [ 4]  673 	call	_TI1_Config
      0086A1 5B 03            [ 2]  674 	addw	sp, #3
                                    675 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 551: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
      0086A3 7B 08            [ 1]  676 	ld	a, (0x08, sp)
      0086A5 88               [ 1]  677 	push	a
      0086A6 CD 8B 3B         [ 4]  678 	call	_TIM1_SetIC1Prescaler
      0086A9 84               [ 1]  679 	pop	a
      0086AA                        680 00110$:
                                    681 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 553: }
      0086AA 85               [ 2]  682 	popw	x
      0086AB 81               [ 4]  683 	ret
                                    684 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 561: void TIM1_Cmd(FunctionalState NewState)
                                    685 ;	-----------------------------------------
                                    686 ;	 function TIM1_Cmd
                                    687 ;	-----------------------------------------
      0086AC                        688 _TIM1_Cmd:
                                    689 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      0086AC C6 52 50         [ 1]  690 	ld	a, 0x5250
                                    691 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 567: if (NewState != DISABLE)
      0086AF 0D 03            [ 1]  692 	tnz	(0x03, sp)
      0086B1 27 06            [ 1]  693 	jreq	00102$
                                    694 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 569: TIM1->CR1 |= TIM1_CR1_CEN;
      0086B3 AA 01            [ 1]  695 	or	a, #0x01
      0086B5 C7 52 50         [ 1]  696 	ld	0x5250, a
      0086B8 81               [ 4]  697 	ret
      0086B9                        698 00102$:
                                    699 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 573: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
      0086B9 A4 FE            [ 1]  700 	and	a, #0xfe
      0086BB C7 52 50         [ 1]  701 	ld	0x5250, a
                                    702 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 575: }
      0086BE 81               [ 4]  703 	ret
                                    704 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 583: void TIM1_CtrlPWMOutputs(FunctionalState NewState)
                                    705 ;	-----------------------------------------
                                    706 ;	 function TIM1_CtrlPWMOutputs
                                    707 ;	-----------------------------------------
      0086BF                        708 _TIM1_CtrlPWMOutputs:
                                    709 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      0086BF C6 52 6D         [ 1]  710 	ld	a, 0x526d
                                    711 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 590: if (NewState != DISABLE)
      0086C2 0D 03            [ 1]  712 	tnz	(0x03, sp)
      0086C4 27 06            [ 1]  713 	jreq	00102$
                                    714 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 592: TIM1->BKR |= TIM1_BKR_MOE;
      0086C6 AA 80            [ 1]  715 	or	a, #0x80
      0086C8 C7 52 6D         [ 1]  716 	ld	0x526d, a
      0086CB 81               [ 4]  717 	ret
      0086CC                        718 00102$:
                                    719 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 596: TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
      0086CC A4 7F            [ 1]  720 	and	a, #0x7f
      0086CE C7 52 6D         [ 1]  721 	ld	0x526d, a
                                    722 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 598: }
      0086D1 81               [ 4]  723 	ret
                                    724 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 617: void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
                                    725 ;	-----------------------------------------
                                    726 ;	 function TIM1_ITConfig
                                    727 ;	-----------------------------------------
      0086D2                        728 _TIM1_ITConfig:
      0086D2 88               [ 1]  729 	push	a
                                    730 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      0086D3 C6 52 54         [ 1]  731 	ld	a, 0x5254
                                    732 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 623: if (NewState != DISABLE)
      0086D6 0D 05            [ 1]  733 	tnz	(0x05, sp)
      0086D8 27 07            [ 1]  734 	jreq	00102$
                                    735 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 626: TIM1->IER |= (uint8_t)TIM1_IT;
      0086DA 1A 04            [ 1]  736 	or	a, (0x04, sp)
      0086DC C7 52 54         [ 1]  737 	ld	0x5254, a
      0086DF 20 0C            [ 2]  738 	jra	00104$
      0086E1                        739 00102$:
                                    740 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 631: TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
      0086E1 88               [ 1]  741 	push	a
      0086E2 7B 05            [ 1]  742 	ld	a, (0x05, sp)
      0086E4 43               [ 1]  743 	cpl	a
      0086E5 6B 02            [ 1]  744 	ld	(0x02, sp), a
      0086E7 84               [ 1]  745 	pop	a
      0086E8 14 01            [ 1]  746 	and	a, (0x01, sp)
      0086EA C7 52 54         [ 1]  747 	ld	0x5254, a
      0086ED                        748 00104$:
                                    749 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 633: }
      0086ED 84               [ 1]  750 	pop	a
      0086EE 81               [ 4]  751 	ret
                                    752 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 640: void TIM1_InternalClockConfig(void)
                                    753 ;	-----------------------------------------
                                    754 ;	 function TIM1_InternalClockConfig
                                    755 ;	-----------------------------------------
      0086EF                        756 _TIM1_InternalClockConfig:
                                    757 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 643: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
      0086EF C6 52 52         [ 1]  758 	ld	a, 0x5252
      0086F2 A4 F8            [ 1]  759 	and	a, #0xf8
      0086F4 C7 52 52         [ 1]  760 	ld	0x5252, a
                                    761 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 644: }
      0086F7 81               [ 4]  762 	ret
                                    763 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 662: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                    764 ;	-----------------------------------------
                                    765 ;	 function TIM1_ETRClockMode1Config
                                    766 ;	-----------------------------------------
      0086F8                        767 _TIM1_ETRClockMode1Config:
                                    768 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 671: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      0086F8 7B 05            [ 1]  769 	ld	a, (0x05, sp)
      0086FA 88               [ 1]  770 	push	a
      0086FB 7B 05            [ 1]  771 	ld	a, (0x05, sp)
      0086FD 88               [ 1]  772 	push	a
      0086FE 7B 05            [ 1]  773 	ld	a, (0x05, sp)
      008700 88               [ 1]  774 	push	a
      008701 CD 87 24         [ 4]  775 	call	_TIM1_ETRConfig
      008704 5B 03            [ 2]  776 	addw	sp, #3
                                    777 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 674: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
      008706 C6 52 52         [ 1]  778 	ld	a, 0x5252
      008709 A4 88            [ 1]  779 	and	a, #0x88
      00870B AA 77            [ 1]  780 	or	a, #0x77
      00870D C7 52 52         [ 1]  781 	ld	0x5252, a
                                    782 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 676: }
      008710 81               [ 4]  783 	ret
                                    784 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 694: void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                    785 ;	-----------------------------------------
                                    786 ;	 function TIM1_ETRClockMode2Config
                                    787 ;	-----------------------------------------
      008711                        788 _TIM1_ETRClockMode2Config:
                                    789 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 703: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
      008711 7B 05            [ 1]  790 	ld	a, (0x05, sp)
      008713 88               [ 1]  791 	push	a
      008714 7B 05            [ 1]  792 	ld	a, (0x05, sp)
      008716 88               [ 1]  793 	push	a
      008717 7B 05            [ 1]  794 	ld	a, (0x05, sp)
      008719 88               [ 1]  795 	push	a
      00871A CD 87 24         [ 4]  796 	call	_TIM1_ETRConfig
      00871D 5B 03            [ 2]  797 	addw	sp, #3
                                    798 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 706: TIM1->ETR |= TIM1_ETR_ECE;
      00871F 72 1C 52 53      [ 1]  799 	bset	21075, #6
                                    800 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 707: }
      008723 81               [ 4]  801 	ret
                                    802 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 725: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                                    803 ;	-----------------------------------------
                                    804 ;	 function TIM1_ETRConfig
                                    805 ;	-----------------------------------------
      008724                        806 _TIM1_ETRConfig:
      008724 88               [ 1]  807 	push	a
                                    808 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 732: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
      008725 C6 52 53         [ 1]  809 	ld	a, 0x5253
      008728 6B 01            [ 1]  810 	ld	(0x01, sp), a
      00872A 7B 04            [ 1]  811 	ld	a, (0x04, sp)
      00872C 1A 05            [ 1]  812 	or	a, (0x05, sp)
                                    813 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 733: (uint8_t)ExtTRGFilter );
      00872E 1A 06            [ 1]  814 	or	a, (0x06, sp)
      008730 1A 01            [ 1]  815 	or	a, (0x01, sp)
      008732 C7 52 53         [ 1]  816 	ld	0x5253, a
                                    817 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 734: }
      008735 84               [ 1]  818 	pop	a
      008736 81               [ 4]  819 	ret
                                    820 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 751: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
                                    821 ;	-----------------------------------------
                                    822 ;	 function TIM1_TIxExternalClockConfig
                                    823 ;	-----------------------------------------
      008737                        824 _TIM1_TIxExternalClockConfig:
                                    825 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 761: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
      008737 7B 03            [ 1]  826 	ld	a, (0x03, sp)
      008739 A1 60            [ 1]  827 	cp	a, #0x60
      00873B 26 0F            [ 1]  828 	jrne	00102$
                                    829 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 763: TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00873D 7B 05            [ 1]  830 	ld	a, (0x05, sp)
      00873F 88               [ 1]  831 	push	a
      008740 4B 01            [ 1]  832 	push	#0x01
      008742 7B 06            [ 1]  833 	ld	a, (0x06, sp)
      008744 88               [ 1]  834 	push	a
      008745 CD 8C 86         [ 4]  835 	call	_TI2_Config
      008748 5B 03            [ 2]  836 	addw	sp, #3
      00874A 20 0D            [ 2]  837 	jra	00103$
      00874C                        838 00102$:
                                    839 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 767: TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
      00874C 7B 05            [ 1]  840 	ld	a, (0x05, sp)
      00874E 88               [ 1]  841 	push	a
      00874F 4B 01            [ 1]  842 	push	#0x01
      008751 7B 06            [ 1]  843 	ld	a, (0x06, sp)
      008753 88               [ 1]  844 	push	a
      008754 CD 8C 55         [ 4]  845 	call	_TI1_Config
      008757 5B 03            [ 2]  846 	addw	sp, #3
      008759                        847 00103$:
                                    848 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 771: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
      008759 7B 03            [ 1]  849 	ld	a, (0x03, sp)
      00875B 88               [ 1]  850 	push	a
      00875C CD 87 69         [ 4]  851 	call	_TIM1_SelectInputTrigger
      00875F 84               [ 1]  852 	pop	a
                                    853 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 774: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
      008760 C6 52 52         [ 1]  854 	ld	a, 0x5252
      008763 AA 07            [ 1]  855 	or	a, #0x07
      008765 C7 52 52         [ 1]  856 	ld	0x5252, a
                                    857 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 775: }
      008768 81               [ 4]  858 	ret
                                    859 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 787: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
                                    860 ;	-----------------------------------------
                                    861 ;	 function TIM1_SelectInputTrigger
                                    862 ;	-----------------------------------------
      008769                        863 _TIM1_SelectInputTrigger:
                                    864 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 793: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
      008769 C6 52 52         [ 1]  865 	ld	a, 0x5252
      00876C A4 8F            [ 1]  866 	and	a, #0x8f
      00876E 1A 03            [ 1]  867 	or	a, (0x03, sp)
      008770 C7 52 52         [ 1]  868 	ld	0x5252, a
                                    869 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 794: }
      008773 81               [ 4]  870 	ret
                                    871 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 803: void TIM1_UpdateDisableConfig(FunctionalState NewState)
                                    872 ;	-----------------------------------------
                                    873 ;	 function TIM1_UpdateDisableConfig
                                    874 ;	-----------------------------------------
      008774                        875 _TIM1_UpdateDisableConfig:
                                    876 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      008774 C6 52 50         [ 1]  877 	ld	a, 0x5250
                                    878 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 809: if (NewState != DISABLE)
      008777 0D 03            [ 1]  879 	tnz	(0x03, sp)
      008779 27 06            [ 1]  880 	jreq	00102$
                                    881 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 811: TIM1->CR1 |= TIM1_CR1_UDIS;
      00877B AA 02            [ 1]  882 	or	a, #0x02
      00877D C7 52 50         [ 1]  883 	ld	0x5250, a
      008780 81               [ 4]  884 	ret
      008781                        885 00102$:
                                    886 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 815: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
      008781 A4 FD            [ 1]  887 	and	a, #0xfd
      008783 C7 52 50         [ 1]  888 	ld	0x5250, a
                                    889 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 817: }
      008786 81               [ 4]  890 	ret
                                    891 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 827: void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
                                    892 ;	-----------------------------------------
                                    893 ;	 function TIM1_UpdateRequestConfig
                                    894 ;	-----------------------------------------
      008787                        895 _TIM1_UpdateRequestConfig:
                                    896 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      008787 C6 52 50         [ 1]  897 	ld	a, 0x5250
                                    898 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 833: if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
      00878A 0D 03            [ 1]  899 	tnz	(0x03, sp)
      00878C 27 06            [ 1]  900 	jreq	00102$
                                    901 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 835: TIM1->CR1 |= TIM1_CR1_URS;
      00878E AA 04            [ 1]  902 	or	a, #0x04
      008790 C7 52 50         [ 1]  903 	ld	0x5250, a
      008793 81               [ 4]  904 	ret
      008794                        905 00102$:
                                    906 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 839: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
      008794 A4 FB            [ 1]  907 	and	a, #0xfb
      008796 C7 52 50         [ 1]  908 	ld	0x5250, a
                                    909 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 841: }
      008799 81               [ 4]  910 	ret
                                    911 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 849: void TIM1_SelectHallSensor(FunctionalState NewState)
                                    912 ;	-----------------------------------------
                                    913 ;	 function TIM1_SelectHallSensor
                                    914 ;	-----------------------------------------
      00879A                        915 _TIM1_SelectHallSensor:
                                    916 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      00879A C6 52 51         [ 1]  917 	ld	a, 0x5251
                                    918 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 855: if (NewState != DISABLE)
      00879D 0D 03            [ 1]  919 	tnz	(0x03, sp)
      00879F 27 06            [ 1]  920 	jreq	00102$
                                    921 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 857: TIM1->CR2 |= TIM1_CR2_TI1S;
      0087A1 AA 80            [ 1]  922 	or	a, #0x80
      0087A3 C7 52 51         [ 1]  923 	ld	0x5251, a
      0087A6 81               [ 4]  924 	ret
      0087A7                        925 00102$:
                                    926 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 861: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
      0087A7 A4 7F            [ 1]  927 	and	a, #0x7f
      0087A9 C7 52 51         [ 1]  928 	ld	0x5251, a
                                    929 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 863: }
      0087AC 81               [ 4]  930 	ret
                                    931 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 873: void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
                                    932 ;	-----------------------------------------
                                    933 ;	 function TIM1_SelectOnePulseMode
                                    934 ;	-----------------------------------------
      0087AD                        935 _TIM1_SelectOnePulseMode:
                                    936 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      0087AD C6 52 50         [ 1]  937 	ld	a, 0x5250
                                    938 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 879: if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
      0087B0 0D 03            [ 1]  939 	tnz	(0x03, sp)
      0087B2 27 06            [ 1]  940 	jreq	00102$
                                    941 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 881: TIM1->CR1 |= TIM1_CR1_OPM;
      0087B4 AA 08            [ 1]  942 	or	a, #0x08
      0087B6 C7 52 50         [ 1]  943 	ld	0x5250, a
      0087B9 81               [ 4]  944 	ret
      0087BA                        945 00102$:
                                    946 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 885: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
      0087BA A4 F7            [ 1]  947 	and	a, #0xf7
      0087BC C7 52 50         [ 1]  948 	ld	0x5250, a
                                    949 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 888: }
      0087BF 81               [ 4]  950 	ret
                                    951 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 903: void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
                                    952 ;	-----------------------------------------
                                    953 ;	 function TIM1_SelectOutputTrigger
                                    954 ;	-----------------------------------------
      0087C0                        955 _TIM1_SelectOutputTrigger:
                                    956 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 909: TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
      0087C0 C6 52 51         [ 1]  957 	ld	a, 0x5251
      0087C3 A4 8F            [ 1]  958 	and	a, #0x8f
                                    959 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 910: (uint8_t) TIM1_TRGOSource);
      0087C5 1A 03            [ 1]  960 	or	a, (0x03, sp)
      0087C7 C7 52 51         [ 1]  961 	ld	0x5251, a
                                    962 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 911: }
      0087CA 81               [ 4]  963 	ret
                                    964 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 923: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
                                    965 ;	-----------------------------------------
                                    966 ;	 function TIM1_SelectSlaveMode
                                    967 ;	-----------------------------------------
      0087CB                        968 _TIM1_SelectSlaveMode:
                                    969 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 929: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
      0087CB C6 52 52         [ 1]  970 	ld	a, 0x5252
      0087CE A4 F8            [ 1]  971 	and	a, #0xf8
                                    972 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 930: (uint8_t)TIM1_SlaveMode);
      0087D0 1A 03            [ 1]  973 	or	a, (0x03, sp)
      0087D2 C7 52 52         [ 1]  974 	ld	0x5252, a
                                    975 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 931: }
      0087D5 81               [ 4]  976 	ret
                                    977 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 939: void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
                                    978 ;	-----------------------------------------
                                    979 ;	 function TIM1_SelectMasterSlaveMode
                                    980 ;	-----------------------------------------
      0087D6                        981 _TIM1_SelectMasterSlaveMode:
                                    982 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      0087D6 C6 52 52         [ 1]  983 	ld	a, 0x5252
                                    984 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 945: if (NewState != DISABLE)
      0087D9 0D 03            [ 1]  985 	tnz	(0x03, sp)
      0087DB 27 06            [ 1]  986 	jreq	00102$
                                    987 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 947: TIM1->SMCR |= TIM1_SMCR_MSM;
      0087DD AA 80            [ 1]  988 	or	a, #0x80
      0087DF C7 52 52         [ 1]  989 	ld	0x5252, a
      0087E2 81               [ 4]  990 	ret
      0087E3                        991 00102$:
                                    992 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 951: TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
      0087E3 A4 7F            [ 1]  993 	and	a, #0x7f
      0087E5 C7 52 52         [ 1]  994 	ld	0x5252, a
                                    995 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 953: }
      0087E8 81               [ 4]  996 	ret
                                    997 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 975: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
                                    998 ;	-----------------------------------------
                                    999 ;	 function TIM1_EncoderInterfaceConfig
                                   1000 ;	-----------------------------------------
      0087E9                       1001 _TIM1_EncoderInterfaceConfig:
                                   1002 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0087E9 C6 52 5C         [ 1] 1003 	ld	a, 0x525c
                                   1004 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 985: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
      0087EC 0D 04            [ 1] 1005 	tnz	(0x04, sp)
      0087EE 27 07            [ 1] 1006 	jreq	00102$
                                   1007 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0087F0 AA 02            [ 1] 1008 	or	a, #0x02
      0087F2 C7 52 5C         [ 1] 1009 	ld	0x525c, a
      0087F5 20 05            [ 2] 1010 	jra	00103$
      0087F7                       1011 00102$:
                                   1012 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 991: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      0087F7 A4 FD            [ 1] 1013 	and	a, #0xfd
      0087F9 C7 52 5C         [ 1] 1014 	ld	0x525c, a
      0087FC                       1015 00103$:
                                   1016 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 987: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      0087FC C6 52 5C         [ 1] 1017 	ld	a, 0x525c
                                   1018 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 994: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
      0087FF 0D 05            [ 1] 1019 	tnz	(0x05, sp)
      008801 27 07            [ 1] 1020 	jreq	00105$
                                   1021 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 996: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008803 AA 20            [ 1] 1022 	or	a, #0x20
      008805 C7 52 5C         [ 1] 1023 	ld	0x525c, a
      008808 20 05            [ 2] 1024 	jra	00106$
      00880A                       1025 00105$:
                                   1026 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1000: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      00880A A4 DF            [ 1] 1027 	and	a, #0xdf
      00880C C7 52 5C         [ 1] 1028 	ld	0x525c, a
      00880F                       1029 00106$:
                                   1030 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1003: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
      00880F C6 52 52         [ 1] 1031 	ld	a, 0x5252
      008812 A4 F0            [ 1] 1032 	and	a, #0xf0
                                   1033 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1004: | (uint8_t) TIM1_EncoderMode);
      008814 1A 03            [ 1] 1034 	or	a, (0x03, sp)
      008816 C7 52 52         [ 1] 1035 	ld	0x5252, a
                                   1036 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1007: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
      008819 C6 52 58         [ 1] 1037 	ld	a, 0x5258
      00881C A4 FC            [ 1] 1038 	and	a, #0xfc
      00881E AA 01            [ 1] 1039 	or	a, #0x01
      008820 C7 52 58         [ 1] 1040 	ld	0x5258, a
                                   1041 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1009: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
      008823 C6 52 59         [ 1] 1042 	ld	a, 0x5259
      008826 A4 FC            [ 1] 1043 	and	a, #0xfc
      008828 AA 01            [ 1] 1044 	or	a, #0x01
      00882A C7 52 59         [ 1] 1045 	ld	0x5259, a
                                   1046 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1011: }
      00882D 81               [ 4] 1047 	ret
                                   1048 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1023: void TIM1_PrescalerConfig(uint16_t Prescaler,
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function TIM1_PrescalerConfig
                                   1051 ;	-----------------------------------------
      00882E                       1052 _TIM1_PrescalerConfig:
      00882E 89               [ 2] 1053 	pushw	x
                                   1054 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1030: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
      00882F 7B 05            [ 1] 1055 	ld	a, (0x05, sp)
      008831 6B 02            [ 1] 1056 	ld	(0x02, sp), a
      008833 0F 01            [ 1] 1057 	clr	(0x01, sp)
      008835 7B 02            [ 1] 1058 	ld	a, (0x02, sp)
      008837 C7 52 60         [ 1] 1059 	ld	0x5260, a
                                   1060 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1031: TIM1->PSCRL = (uint8_t)(Prescaler);
      00883A 7B 06            [ 1] 1061 	ld	a, (0x06, sp)
      00883C C7 52 61         [ 1] 1062 	ld	0x5261, a
                                   1063 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1034: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
      00883F AE 52 57         [ 2] 1064 	ldw	x, #0x5257
      008842 7B 07            [ 1] 1065 	ld	a, (0x07, sp)
      008844 F7               [ 1] 1066 	ld	(x), a
                                   1067 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1035: }
      008845 85               [ 2] 1068 	popw	x
      008846 81               [ 4] 1069 	ret
                                   1070 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1048: void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function TIM1_CounterModeConfig
                                   1073 ;	-----------------------------------------
      008847                       1074 _TIM1_CounterModeConfig:
                                   1075 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1055: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
      008847 C6 52 50         [ 1] 1076 	ld	a, 0x5250
      00884A A4 8F            [ 1] 1077 	and	a, #0x8f
                                   1078 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1056: | (uint8_t)TIM1_CounterMode);
      00884C 1A 03            [ 1] 1079 	or	a, (0x03, sp)
      00884E C7 52 50         [ 1] 1080 	ld	0x5250, a
                                   1081 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1057: }
      008851 81               [ 4] 1082 	ret
                                   1083 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1067: void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function TIM1_ForcedOC1Config
                                   1086 ;	-----------------------------------------
      008852                       1087 _TIM1_ForcedOC1Config:
                                   1088 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1073: TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
      008852 C6 52 58         [ 1] 1089 	ld	a, 0x5258
      008855 A4 8F            [ 1] 1090 	and	a, #0x8f
                                   1091 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1074: (uint8_t)TIM1_ForcedAction);
      008857 1A 03            [ 1] 1092 	or	a, (0x03, sp)
      008859 C7 52 58         [ 1] 1093 	ld	0x5258, a
                                   1094 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1075: }
      00885C 81               [ 4] 1095 	ret
                                   1096 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1085: void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1097 ;	-----------------------------------------
                                   1098 ;	 function TIM1_ForcedOC2Config
                                   1099 ;	-----------------------------------------
      00885D                       1100 _TIM1_ForcedOC2Config:
                                   1101 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1091: TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      00885D C6 52 59         [ 1] 1102 	ld	a, 0x5259
      008860 A4 8F            [ 1] 1103 	and	a, #0x8f
                                   1104 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1092: | (uint8_t)TIM1_ForcedAction);
      008862 1A 03            [ 1] 1105 	or	a, (0x03, sp)
      008864 C7 52 59         [ 1] 1106 	ld	0x5259, a
                                   1107 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1093: }
      008867 81               [ 4] 1108 	ret
                                   1109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1104: void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function TIM1_ForcedOC3Config
                                   1112 ;	-----------------------------------------
      008868                       1113 _TIM1_ForcedOC3Config:
                                   1114 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1110: TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
      008868 C6 52 5A         [ 1] 1115 	ld	a, 0x525a
      00886B A4 8F            [ 1] 1116 	and	a, #0x8f
                                   1117 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1111: | (uint8_t)TIM1_ForcedAction);
      00886D 1A 03            [ 1] 1118 	or	a, (0x03, sp)
      00886F C7 52 5A         [ 1] 1119 	ld	0x525a, a
                                   1120 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1112: }
      008872 81               [ 4] 1121 	ret
                                   1122 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1123: void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function TIM1_ForcedOC4Config
                                   1125 ;	-----------------------------------------
      008873                       1126 _TIM1_ForcedOC4Config:
                                   1127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1129: TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      008873 C6 52 5B         [ 1] 1128 	ld	a, 0x525b
      008876 A4 8F            [ 1] 1129 	and	a, #0x8f
                                   1130 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1130: | (uint8_t)TIM1_ForcedAction);
      008878 1A 03            [ 1] 1131 	or	a, (0x03, sp)
      00887A C7 52 5B         [ 1] 1132 	ld	0x525b, a
                                   1133 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1131: }
      00887D 81               [ 4] 1134 	ret
                                   1135 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1139: void TIM1_ARRPreloadConfig(FunctionalState NewState)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function TIM1_ARRPreloadConfig
                                   1138 ;	-----------------------------------------
      00887E                       1139 _TIM1_ARRPreloadConfig:
                                   1140 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      00887E C6 52 50         [ 1] 1141 	ld	a, 0x5250
                                   1142 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1145: if (NewState != DISABLE)
      008881 0D 03            [ 1] 1143 	tnz	(0x03, sp)
      008883 27 06            [ 1] 1144 	jreq	00102$
                                   1145 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1147: TIM1->CR1 |= TIM1_CR1_ARPE;
      008885 AA 80            [ 1] 1146 	or	a, #0x80
      008887 C7 52 50         [ 1] 1147 	ld	0x5250, a
      00888A 81               [ 4] 1148 	ret
      00888B                       1149 00102$:
                                   1150 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1151: TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
      00888B A4 7F            [ 1] 1151 	and	a, #0x7f
      00888D C7 52 50         [ 1] 1152 	ld	0x5250, a
                                   1153 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1153: }
      008890 81               [ 4] 1154 	ret
                                   1155 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1161: void TIM1_SelectCOM(FunctionalState NewState)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function TIM1_SelectCOM
                                   1158 ;	-----------------------------------------
      008891                       1159 _TIM1_SelectCOM:
                                   1160 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      008891 C6 52 51         [ 1] 1161 	ld	a, 0x5251
                                   1162 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1167: if (NewState != DISABLE)
      008894 0D 03            [ 1] 1163 	tnz	(0x03, sp)
      008896 27 06            [ 1] 1164 	jreq	00102$
                                   1165 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1169: TIM1->CR2 |= TIM1_CR2_COMS;
      008898 AA 04            [ 1] 1166 	or	a, #0x04
      00889A C7 52 51         [ 1] 1167 	ld	0x5251, a
      00889D 81               [ 4] 1168 	ret
      00889E                       1169 00102$:
                                   1170 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1173: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
      00889E A4 FB            [ 1] 1171 	and	a, #0xfb
      0088A0 C7 52 51         [ 1] 1172 	ld	0x5251, a
                                   1173 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1175: }
      0088A3 81               [ 4] 1174 	ret
                                   1175 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1183: void TIM1_CCPreloadControl(FunctionalState NewState)
                                   1176 ;	-----------------------------------------
                                   1177 ;	 function TIM1_CCPreloadControl
                                   1178 ;	-----------------------------------------
      0088A4                       1179 _TIM1_CCPreloadControl:
                                   1180 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      0088A4 C6 52 51         [ 1] 1181 	ld	a, 0x5251
                                   1182 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1189: if (NewState != DISABLE)
      0088A7 0D 03            [ 1] 1183 	tnz	(0x03, sp)
      0088A9 27 06            [ 1] 1184 	jreq	00102$
                                   1185 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1191: TIM1->CR2 |= TIM1_CR2_CCPC;
      0088AB AA 01            [ 1] 1186 	or	a, #0x01
      0088AD C7 52 51         [ 1] 1187 	ld	0x5251, a
      0088B0 81               [ 4] 1188 	ret
      0088B1                       1189 00102$:
                                   1190 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1195: TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
      0088B1 A4 FE            [ 1] 1191 	and	a, #0xfe
      0088B3 C7 52 51         [ 1] 1192 	ld	0x5251, a
                                   1193 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1197: }
      0088B6 81               [ 4] 1194 	ret
                                   1195 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1205: void TIM1_OC1PreloadConfig(FunctionalState NewState)
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function TIM1_OC1PreloadConfig
                                   1198 ;	-----------------------------------------
      0088B7                       1199 _TIM1_OC1PreloadConfig:
                                   1200 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      0088B7 C6 52 58         [ 1] 1201 	ld	a, 0x5258
                                   1202 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1211: if (NewState != DISABLE)
      0088BA 0D 03            [ 1] 1203 	tnz	(0x03, sp)
      0088BC 27 06            [ 1] 1204 	jreq	00102$
                                   1205 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1213: TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
      0088BE AA 08            [ 1] 1206 	or	a, #0x08
      0088C0 C7 52 58         [ 1] 1207 	ld	0x5258, a
      0088C3 81               [ 4] 1208 	ret
      0088C4                       1209 00102$:
                                   1210 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1217: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0088C4 A4 F7            [ 1] 1211 	and	a, #0xf7
      0088C6 C7 52 58         [ 1] 1212 	ld	0x5258, a
                                   1213 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1219: }
      0088C9 81               [ 4] 1214 	ret
                                   1215 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1227: void TIM1_OC2PreloadConfig(FunctionalState NewState)
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function TIM1_OC2PreloadConfig
                                   1218 ;	-----------------------------------------
      0088CA                       1219 _TIM1_OC2PreloadConfig:
                                   1220 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      0088CA C6 52 59         [ 1] 1221 	ld	a, 0x5259
                                   1222 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1233: if (NewState != DISABLE)
      0088CD 0D 03            [ 1] 1223 	tnz	(0x03, sp)
      0088CF 27 06            [ 1] 1224 	jreq	00102$
                                   1225 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1235: TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
      0088D1 AA 08            [ 1] 1226 	or	a, #0x08
      0088D3 C7 52 59         [ 1] 1227 	ld	0x5259, a
      0088D6 81               [ 4] 1228 	ret
      0088D7                       1229 00102$:
                                   1230 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1239: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0088D7 A4 F7            [ 1] 1231 	and	a, #0xf7
      0088D9 C7 52 59         [ 1] 1232 	ld	0x5259, a
                                   1233 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1241: }
      0088DC 81               [ 4] 1234 	ret
                                   1235 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1249: void TIM1_OC3PreloadConfig(FunctionalState NewState)
                                   1236 ;	-----------------------------------------
                                   1237 ;	 function TIM1_OC3PreloadConfig
                                   1238 ;	-----------------------------------------
      0088DD                       1239 _TIM1_OC3PreloadConfig:
                                   1240 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      0088DD C6 52 5A         [ 1] 1241 	ld	a, 0x525a
                                   1242 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1255: if (NewState != DISABLE)
      0088E0 0D 03            [ 1] 1243 	tnz	(0x03, sp)
      0088E2 27 06            [ 1] 1244 	jreq	00102$
                                   1245 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1257: TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
      0088E4 AA 08            [ 1] 1246 	or	a, #0x08
      0088E6 C7 52 5A         [ 1] 1247 	ld	0x525a, a
      0088E9 81               [ 4] 1248 	ret
      0088EA                       1249 00102$:
                                   1250 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1261: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0088EA A4 F7            [ 1] 1251 	and	a, #0xf7
      0088EC C7 52 5A         [ 1] 1252 	ld	0x525a, a
                                   1253 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1263: }
      0088EF 81               [ 4] 1254 	ret
                                   1255 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1271: void TIM1_OC4PreloadConfig(FunctionalState NewState)
                                   1256 ;	-----------------------------------------
                                   1257 ;	 function TIM1_OC4PreloadConfig
                                   1258 ;	-----------------------------------------
      0088F0                       1259 _TIM1_OC4PreloadConfig:
                                   1260 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      0088F0 C6 52 5B         [ 1] 1261 	ld	a, 0x525b
                                   1262 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1277: if (NewState != DISABLE)
      0088F3 0D 03            [ 1] 1263 	tnz	(0x03, sp)
      0088F5 27 06            [ 1] 1264 	jreq	00102$
                                   1265 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1279: TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
      0088F7 AA 08            [ 1] 1266 	or	a, #0x08
      0088F9 C7 52 5B         [ 1] 1267 	ld	0x525b, a
      0088FC 81               [ 4] 1268 	ret
      0088FD                       1269 00102$:
                                   1270 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1283: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
      0088FD A4 F7            [ 1] 1271 	and	a, #0xf7
      0088FF C7 52 5B         [ 1] 1272 	ld	0x525b, a
                                   1273 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1285: }
      008902 81               [ 4] 1274 	ret
                                   1275 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1293: void TIM1_OC1FastConfig(FunctionalState NewState)
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function TIM1_OC1FastConfig
                                   1278 ;	-----------------------------------------
      008903                       1279 _TIM1_OC1FastConfig:
                                   1280 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      008903 C6 52 58         [ 1] 1281 	ld	a, 0x5258
                                   1282 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1299: if (NewState != DISABLE)
      008906 0D 03            [ 1] 1283 	tnz	(0x03, sp)
      008908 27 06            [ 1] 1284 	jreq	00102$
                                   1285 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1301: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
      00890A AA 04            [ 1] 1286 	or	a, #0x04
      00890C C7 52 58         [ 1] 1287 	ld	0x5258, a
      00890F 81               [ 4] 1288 	ret
      008910                       1289 00102$:
                                   1290 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1305: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      008910 A4 FB            [ 1] 1291 	and	a, #0xfb
      008912 C7 52 58         [ 1] 1292 	ld	0x5258, a
                                   1293 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1307: }
      008915 81               [ 4] 1294 	ret
                                   1295 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1315: void TIM1_OC2FastConfig(FunctionalState NewState)
                                   1296 ;	-----------------------------------------
                                   1297 ;	 function TIM1_OC2FastConfig
                                   1298 ;	-----------------------------------------
      008916                       1299 _TIM1_OC2FastConfig:
                                   1300 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      008916 C6 52 59         [ 1] 1301 	ld	a, 0x5259
                                   1302 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1321: if (NewState != DISABLE)
      008919 0D 03            [ 1] 1303 	tnz	(0x03, sp)
      00891B 27 06            [ 1] 1304 	jreq	00102$
                                   1305 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1323: TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
      00891D AA 04            [ 1] 1306 	or	a, #0x04
      00891F C7 52 59         [ 1] 1307 	ld	0x5259, a
      008922 81               [ 4] 1308 	ret
      008923                       1309 00102$:
                                   1310 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1327: TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      008923 A4 FB            [ 1] 1311 	and	a, #0xfb
      008925 C7 52 59         [ 1] 1312 	ld	0x5259, a
                                   1313 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1329: }
      008928 81               [ 4] 1314 	ret
                                   1315 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1337: void TIM1_OC3FastConfig(FunctionalState NewState)
                                   1316 ;	-----------------------------------------
                                   1317 ;	 function TIM1_OC3FastConfig
                                   1318 ;	-----------------------------------------
      008929                       1319 _TIM1_OC3FastConfig:
                                   1320 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      008929 C6 52 5A         [ 1] 1321 	ld	a, 0x525a
                                   1322 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1343: if (NewState != DISABLE)
      00892C 0D 03            [ 1] 1323 	tnz	(0x03, sp)
      00892E 27 06            [ 1] 1324 	jreq	00102$
                                   1325 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1345: TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
      008930 AA 04            [ 1] 1326 	or	a, #0x04
      008932 C7 52 5A         [ 1] 1327 	ld	0x525a, a
      008935 81               [ 4] 1328 	ret
      008936                       1329 00102$:
                                   1330 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1349: TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      008936 A4 FB            [ 1] 1331 	and	a, #0xfb
      008938 C7 52 5A         [ 1] 1332 	ld	0x525a, a
                                   1333 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1351: }
      00893B 81               [ 4] 1334 	ret
                                   1335 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1359: void TIM1_OC4FastConfig(FunctionalState NewState)
                                   1336 ;	-----------------------------------------
                                   1337 ;	 function TIM1_OC4FastConfig
                                   1338 ;	-----------------------------------------
      00893C                       1339 _TIM1_OC4FastConfig:
                                   1340 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      00893C C6 52 5B         [ 1] 1341 	ld	a, 0x525b
                                   1342 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1365: if (NewState != DISABLE)
      00893F 0D 03            [ 1] 1343 	tnz	(0x03, sp)
      008941 27 06            [ 1] 1344 	jreq	00102$
                                   1345 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1367: TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
      008943 AA 04            [ 1] 1346 	or	a, #0x04
      008945 C7 52 5B         [ 1] 1347 	ld	0x525b, a
      008948 81               [ 4] 1348 	ret
      008949                       1349 00102$:
                                   1350 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1371: TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
      008949 A4 FB            [ 1] 1351 	and	a, #0xfb
      00894B C7 52 5B         [ 1] 1352 	ld	0x525b, a
                                   1353 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1373: }
      00894E 81               [ 4] 1354 	ret
                                   1355 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1389: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function TIM1_GenerateEvent
                                   1358 ;	-----------------------------------------
      00894F                       1359 _TIM1_GenerateEvent:
                                   1360 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1395: TIM1->EGR = (uint8_t)TIM1_EventSource;
      00894F AE 52 57         [ 2] 1361 	ldw	x, #0x5257
      008952 7B 03            [ 1] 1362 	ld	a, (0x03, sp)
      008954 F7               [ 1] 1363 	ld	(x), a
                                   1364 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1396: }
      008955 81               [ 4] 1365 	ret
                                   1366 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1406: void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function TIM1_OC1PolarityConfig
                                   1369 ;	-----------------------------------------
      008956                       1370 _TIM1_OC1PolarityConfig:
                                   1371 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      008956 C6 52 5C         [ 1] 1372 	ld	a, 0x525c
                                   1373 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1412: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      008959 0D 03            [ 1] 1374 	tnz	(0x03, sp)
      00895B 27 06            [ 1] 1375 	jreq	00102$
                                   1376 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1414: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      00895D AA 02            [ 1] 1377 	or	a, #0x02
      00895F C7 52 5C         [ 1] 1378 	ld	0x525c, a
      008962 81               [ 4] 1379 	ret
      008963                       1380 00102$:
                                   1381 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1418: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      008963 A4 FD            [ 1] 1382 	and	a, #0xfd
      008965 C7 52 5C         [ 1] 1383 	ld	0x525c, a
                                   1384 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1420: }
      008968 81               [ 4] 1385 	ret
                                   1386 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1430: void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   1387 ;	-----------------------------------------
                                   1388 ;	 function TIM1_OC1NPolarityConfig
                                   1389 ;	-----------------------------------------
      008969                       1390 _TIM1_OC1NPolarityConfig:
                                   1391 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      008969 C6 52 5C         [ 1] 1392 	ld	a, 0x525c
                                   1393 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1436: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      00896C 0D 03            [ 1] 1394 	tnz	(0x03, sp)
      00896E 27 06            [ 1] 1395 	jreq	00102$
                                   1396 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1438: TIM1->CCER1 |= TIM1_CCER1_CC1NP;
      008970 AA 08            [ 1] 1397 	or	a, #0x08
      008972 C7 52 5C         [ 1] 1398 	ld	0x525c, a
      008975 81               [ 4] 1399 	ret
      008976                       1400 00102$:
                                   1401 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1442: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
      008976 A4 F7            [ 1] 1402 	and	a, #0xf7
      008978 C7 52 5C         [ 1] 1403 	ld	0x525c, a
                                   1404 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1444: }
      00897B 81               [ 4] 1405 	ret
                                   1406 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1454: void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1407 ;	-----------------------------------------
                                   1408 ;	 function TIM1_OC2PolarityConfig
                                   1409 ;	-----------------------------------------
      00897C                       1410 _TIM1_OC2PolarityConfig:
                                   1411 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      00897C C6 52 5C         [ 1] 1412 	ld	a, 0x525c
                                   1413 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1460: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      00897F 0D 03            [ 1] 1414 	tnz	(0x03, sp)
      008981 27 06            [ 1] 1415 	jreq	00102$
                                   1416 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1462: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008983 AA 20            [ 1] 1417 	or	a, #0x20
      008985 C7 52 5C         [ 1] 1418 	ld	0x525c, a
      008988 81               [ 4] 1419 	ret
      008989                       1420 00102$:
                                   1421 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1466: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      008989 A4 DF            [ 1] 1422 	and	a, #0xdf
      00898B C7 52 5C         [ 1] 1423 	ld	0x525c, a
                                   1424 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1468: }
      00898E 81               [ 4] 1425 	ret
                                   1426 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1478: void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   1427 ;	-----------------------------------------
                                   1428 ;	 function TIM1_OC2NPolarityConfig
                                   1429 ;	-----------------------------------------
      00898F                       1430 _TIM1_OC2NPolarityConfig:
                                   1431 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      00898F C6 52 5C         [ 1] 1432 	ld	a, 0x525c
                                   1433 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1484: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      008992 0D 03            [ 1] 1434 	tnz	(0x03, sp)
      008994 27 06            [ 1] 1435 	jreq	00102$
                                   1436 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1486: TIM1->CCER1 |= TIM1_CCER1_CC2NP;
      008996 AA 80            [ 1] 1437 	or	a, #0x80
      008998 C7 52 5C         [ 1] 1438 	ld	0x525c, a
      00899B 81               [ 4] 1439 	ret
      00899C                       1440 00102$:
                                   1441 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1490: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
      00899C A4 7F            [ 1] 1442 	and	a, #0x7f
      00899E C7 52 5C         [ 1] 1443 	ld	0x525c, a
                                   1444 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1492: }
      0089A1 81               [ 4] 1445 	ret
                                   1446 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1502: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1447 ;	-----------------------------------------
                                   1448 ;	 function TIM1_OC3PolarityConfig
                                   1449 ;	-----------------------------------------
      0089A2                       1450 _TIM1_OC3PolarityConfig:
                                   1451 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      0089A2 C6 52 5D         [ 1] 1452 	ld	a, 0x525d
                                   1453 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1508: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      0089A5 0D 03            [ 1] 1454 	tnz	(0x03, sp)
      0089A7 27 06            [ 1] 1455 	jreq	00102$
                                   1456 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1510: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      0089A9 AA 02            [ 1] 1457 	or	a, #0x02
      0089AB C7 52 5D         [ 1] 1458 	ld	0x525d, a
      0089AE 81               [ 4] 1459 	ret
      0089AF                       1460 00102$:
                                   1461 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1514: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      0089AF A4 FD            [ 1] 1462 	and	a, #0xfd
      0089B1 C7 52 5D         [ 1] 1463 	ld	0x525d, a
                                   1464 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1516: }
      0089B4 81               [ 4] 1465 	ret
                                   1466 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1527: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
                                   1467 ;	-----------------------------------------
                                   1468 ;	 function TIM1_OC3NPolarityConfig
                                   1469 ;	-----------------------------------------
      0089B5                       1470 _TIM1_OC3NPolarityConfig:
                                   1471 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      0089B5 C6 52 5D         [ 1] 1472 	ld	a, 0x525d
                                   1473 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1533: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
      0089B8 0D 03            [ 1] 1474 	tnz	(0x03, sp)
      0089BA 27 06            [ 1] 1475 	jreq	00102$
                                   1476 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1535: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
      0089BC AA 08            [ 1] 1477 	or	a, #0x08
      0089BE C7 52 5D         [ 1] 1478 	ld	0x525d, a
      0089C1 81               [ 4] 1479 	ret
      0089C2                       1480 00102$:
                                   1481 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1539: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
      0089C2 A4 F7            [ 1] 1482 	and	a, #0xf7
      0089C4 C7 52 5D         [ 1] 1483 	ld	0x525d, a
                                   1484 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1541: }
      0089C7 81               [ 4] 1485 	ret
                                   1486 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1551: void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
                                   1487 ;	-----------------------------------------
                                   1488 ;	 function TIM1_OC4PolarityConfig
                                   1489 ;	-----------------------------------------
      0089C8                       1490 _TIM1_OC4PolarityConfig:
                                   1491 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      0089C8 C6 52 5D         [ 1] 1492 	ld	a, 0x525d
                                   1493 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1557: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
      0089CB 0D 03            [ 1] 1494 	tnz	(0x03, sp)
      0089CD 27 06            [ 1] 1495 	jreq	00102$
                                   1496 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1559: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      0089CF AA 20            [ 1] 1497 	or	a, #0x20
      0089D1 C7 52 5D         [ 1] 1498 	ld	0x525d, a
      0089D4 81               [ 4] 1499 	ret
      0089D5                       1500 00102$:
                                   1501 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1563: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      0089D5 A4 DF            [ 1] 1502 	and	a, #0xdf
      0089D7 C7 52 5D         [ 1] 1503 	ld	0x525d, a
                                   1504 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1565: }
      0089DA 81               [ 4] 1505 	ret
                                   1506 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1579: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   1507 ;	-----------------------------------------
                                   1508 ;	 function TIM1_CCxCmd
                                   1509 ;	-----------------------------------------
      0089DB                       1510 _TIM1_CCxCmd:
                                   1511 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1585: if (TIM1_Channel == TIM1_CHANNEL_1)
      0089DB 0D 03            [ 1] 1512 	tnz	(0x03, sp)
      0089DD 26 13            [ 1] 1513 	jrne	00120$
                                   1514 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      0089DF C6 52 5C         [ 1] 1515 	ld	a, 0x525c
                                   1516 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1588: if (NewState != DISABLE)
      0089E2 0D 04            [ 1] 1517 	tnz	(0x04, sp)
      0089E4 27 06            [ 1] 1518 	jreq	00102$
                                   1519 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      0089E6 AA 01            [ 1] 1520 	or	a, #0x01
      0089E8 C7 52 5C         [ 1] 1521 	ld	0x525c, a
      0089EB 81               [ 4] 1522 	ret
      0089EC                       1523 00102$:
                                   1524 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1594: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      0089EC A4 FE            [ 1] 1525 	and	a, #0xfe
      0089EE C7 52 5C         [ 1] 1526 	ld	0x525c, a
      0089F1 81               [ 4] 1527 	ret
      0089F2                       1528 00120$:
                                   1529 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1598: else if (TIM1_Channel == TIM1_CHANNEL_2)
      0089F2 7B 03            [ 1] 1530 	ld	a, (0x03, sp)
      0089F4 4A               [ 1] 1531 	dec	a
      0089F5 26 13            [ 1] 1532 	jrne	00117$
                                   1533 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1590: TIM1->CCER1 |= TIM1_CCER1_CC1E;
      0089F7 C6 52 5C         [ 1] 1534 	ld	a, 0x525c
                                   1535 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1601: if (NewState != DISABLE)
      0089FA 0D 04            [ 1] 1536 	tnz	(0x04, sp)
      0089FC 27 06            [ 1] 1537 	jreq	00105$
                                   1538 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1603: TIM1->CCER1 |= TIM1_CCER1_CC2E;
      0089FE AA 10            [ 1] 1539 	or	a, #0x10
      008A00 C7 52 5C         [ 1] 1540 	ld	0x525c, a
      008A03 81               [ 4] 1541 	ret
      008A04                       1542 00105$:
                                   1543 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1607: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      008A04 A4 EF            [ 1] 1544 	and	a, #0xef
      008A06 C7 52 5C         [ 1] 1545 	ld	0x525c, a
      008A09 81               [ 4] 1546 	ret
      008A0A                       1547 00117$:
                                   1548 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      008A0A C6 52 5D         [ 1] 1549 	ld	a, 0x525d
                                   1550 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1610: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008A0D 88               [ 1] 1551 	push	a
      008A0E 7B 04            [ 1] 1552 	ld	a, (0x04, sp)
      008A10 A1 02            [ 1] 1553 	cp	a, #0x02
      008A12 84               [ 1] 1554 	pop	a
      008A13 26 10            [ 1] 1555 	jrne	00114$
                                   1556 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1613: if (NewState != DISABLE)
      008A15 0D 04            [ 1] 1557 	tnz	(0x04, sp)
      008A17 27 06            [ 1] 1558 	jreq	00108$
                                   1559 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1615: TIM1->CCER2 |= TIM1_CCER2_CC3E;
      008A19 AA 01            [ 1] 1560 	or	a, #0x01
      008A1B C7 52 5D         [ 1] 1561 	ld	0x525d, a
      008A1E 81               [ 4] 1562 	ret
      008A1F                       1563 00108$:
                                   1564 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1619: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008A1F A4 FE            [ 1] 1565 	and	a, #0xfe
      008A21 C7 52 5D         [ 1] 1566 	ld	0x525d, a
      008A24 81               [ 4] 1567 	ret
      008A25                       1568 00114$:
                                   1569 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1625: if (NewState != DISABLE)
      008A25 0D 04            [ 1] 1570 	tnz	(0x04, sp)
      008A27 27 06            [ 1] 1571 	jreq	00111$
                                   1572 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1627: TIM1->CCER2 |= TIM1_CCER2_CC4E;
      008A29 AA 10            [ 1] 1573 	or	a, #0x10
      008A2B C7 52 5D         [ 1] 1574 	ld	0x525d, a
      008A2E 81               [ 4] 1575 	ret
      008A2F                       1576 00111$:
                                   1577 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1631: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      008A2F A4 EF            [ 1] 1578 	and	a, #0xef
      008A31 C7 52 5D         [ 1] 1579 	ld	0x525d, a
                                   1580 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1634: }
      008A34 81               [ 4] 1581 	ret
                                   1582 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1647: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function TIM1_CCxNCmd
                                   1585 ;	-----------------------------------------
      008A35                       1586 _TIM1_CCxNCmd:
                                   1587 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1653: if (TIM1_Channel == TIM1_CHANNEL_1)
      008A35 0D 03            [ 1] 1588 	tnz	(0x03, sp)
      008A37 26 13            [ 1] 1589 	jrne	00114$
                                   1590 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      008A39 C6 52 5C         [ 1] 1591 	ld	a, 0x525c
                                   1592 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1656: if (NewState != DISABLE)
      008A3C 0D 04            [ 1] 1593 	tnz	(0x04, sp)
      008A3E 27 06            [ 1] 1594 	jreq	00102$
                                   1595 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      008A40 AA 04            [ 1] 1596 	or	a, #0x04
      008A42 C7 52 5C         [ 1] 1597 	ld	0x525c, a
      008A45 81               [ 4] 1598 	ret
      008A46                       1599 00102$:
                                   1600 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1662: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
      008A46 A4 FB            [ 1] 1601 	and	a, #0xfb
      008A48 C7 52 5C         [ 1] 1602 	ld	0x525c, a
      008A4B 81               [ 4] 1603 	ret
      008A4C                       1604 00114$:
                                   1605 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1665: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008A4C 7B 03            [ 1] 1606 	ld	a, (0x03, sp)
      008A4E 4A               [ 1] 1607 	dec	a
      008A4F 26 13            [ 1] 1608 	jrne	00111$
                                   1609 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1658: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
      008A51 C6 52 5C         [ 1] 1610 	ld	a, 0x525c
                                   1611 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1668: if (NewState != DISABLE)
      008A54 0D 04            [ 1] 1612 	tnz	(0x04, sp)
      008A56 27 06            [ 1] 1613 	jreq	00105$
                                   1614 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1670: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
      008A58 AA 40            [ 1] 1615 	or	a, #0x40
      008A5A C7 52 5C         [ 1] 1616 	ld	0x525c, a
      008A5D 81               [ 4] 1617 	ret
      008A5E                       1618 00105$:
                                   1619 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1674: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
      008A5E A4 BF            [ 1] 1620 	and	a, #0xbf
      008A60 C7 52 5C         [ 1] 1621 	ld	0x525c, a
      008A63 81               [ 4] 1622 	ret
      008A64                       1623 00111$:
                                   1624 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      008A64 C6 52 5D         [ 1] 1625 	ld	a, 0x525d
                                   1626 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1680: if (NewState != DISABLE)
      008A67 0D 04            [ 1] 1627 	tnz	(0x04, sp)
      008A69 27 06            [ 1] 1628 	jreq	00108$
                                   1629 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1682: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
      008A6B AA 04            [ 1] 1630 	or	a, #0x04
      008A6D C7 52 5D         [ 1] 1631 	ld	0x525d, a
      008A70 81               [ 4] 1632 	ret
      008A71                       1633 00108$:
                                   1634 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1686: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
      008A71 A4 FB            [ 1] 1635 	and	a, #0xfb
      008A73 C7 52 5D         [ 1] 1636 	ld	0x525d, a
                                   1637 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1689: }
      008A76 81               [ 4] 1638 	ret
                                   1639 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1712: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
                                   1640 ;	-----------------------------------------
                                   1641 ;	 function TIM1_SelectOCxM
                                   1642 ;	-----------------------------------------
      008A77                       1643 _TIM1_SelectOCxM:
                                   1644 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1718: if (TIM1_Channel == TIM1_CHANNEL_1)
      008A77 0D 03            [ 1] 1645 	tnz	(0x03, sp)
      008A79 26 0F            [ 1] 1646 	jrne	00108$
                                   1647 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1721: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008A7B 72 11 52 5C      [ 1] 1648 	bres	21084, #0
                                   1649 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1724: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
      008A7F C6 52 58         [ 1] 1650 	ld	a, 0x5258
      008A82 A4 8F            [ 1] 1651 	and	a, #0x8f
                                   1652 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1725: | (uint8_t)TIM1_OCMode);
      008A84 1A 04            [ 1] 1653 	or	a, (0x04, sp)
      008A86 C7 52 58         [ 1] 1654 	ld	0x5258, a
      008A89 81               [ 4] 1655 	ret
      008A8A                       1656 00108$:
                                   1657 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1727: else if (TIM1_Channel == TIM1_CHANNEL_2)
      008A8A 7B 03            [ 1] 1658 	ld	a, (0x03, sp)
      008A8C 4A               [ 1] 1659 	dec	a
      008A8D 26 0F            [ 1] 1660 	jrne	00105$
                                   1661 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1730: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
      008A8F 72 19 52 5C      [ 1] 1662 	bres	21084, #4
                                   1663 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1733: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
      008A93 C6 52 59         [ 1] 1664 	ld	a, 0x5259
      008A96 A4 8F            [ 1] 1665 	and	a, #0x8f
                                   1666 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1734: | (uint8_t)TIM1_OCMode);
      008A98 1A 04            [ 1] 1667 	or	a, (0x04, sp)
      008A9A C7 52 59         [ 1] 1668 	ld	0x5259, a
      008A9D 81               [ 4] 1669 	ret
      008A9E                       1670 00105$:
                                   1671 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008A9E C6 52 5D         [ 1] 1672 	ld	a, 0x525d
                                   1673 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1736: else if (TIM1_Channel == TIM1_CHANNEL_3)
      008AA1 88               [ 1] 1674 	push	a
      008AA2 7B 04            [ 1] 1675 	ld	a, (0x04, sp)
      008AA4 A1 02            [ 1] 1676 	cp	a, #0x02
      008AA6 84               [ 1] 1677 	pop	a
      008AA7 26 10            [ 1] 1678 	jrne	00102$
                                   1679 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1739: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
      008AA9 A4 FE            [ 1] 1680 	and	a, #0xfe
      008AAB C7 52 5D         [ 1] 1681 	ld	0x525d, a
                                   1682 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1742: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
      008AAE C6 52 5A         [ 1] 1683 	ld	a, 0x525a
      008AB1 A4 8F            [ 1] 1684 	and	a, #0x8f
                                   1685 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1743: | (uint8_t)TIM1_OCMode);
      008AB3 1A 04            [ 1] 1686 	or	a, (0x04, sp)
      008AB5 C7 52 5A         [ 1] 1687 	ld	0x525a, a
      008AB8 81               [ 4] 1688 	ret
      008AB9                       1689 00102$:
                                   1690 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1748: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
      008AB9 A4 EF            [ 1] 1691 	and	a, #0xef
      008ABB C7 52 5D         [ 1] 1692 	ld	0x525d, a
                                   1693 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1751: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
      008ABE C6 52 5B         [ 1] 1694 	ld	a, 0x525b
      008AC1 A4 8F            [ 1] 1695 	and	a, #0x8f
                                   1696 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1752: | (uint8_t)TIM1_OCMode);
      008AC3 1A 04            [ 1] 1697 	or	a, (0x04, sp)
      008AC5 C7 52 5B         [ 1] 1698 	ld	0x525b, a
                                   1699 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1754: }
      008AC8 81               [ 4] 1700 	ret
                                   1701 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1762: void TIM1_SetCounter(uint16_t Counter)
                                   1702 ;	-----------------------------------------
                                   1703 ;	 function TIM1_SetCounter
                                   1704 ;	-----------------------------------------
      008AC9                       1705 _TIM1_SetCounter:
      008AC9 89               [ 2] 1706 	pushw	x
                                   1707 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1765: TIM1->CNTRH = (uint8_t)(Counter >> 8);
      008ACA 7B 05            [ 1] 1708 	ld	a, (0x05, sp)
      008ACC 6B 02            [ 1] 1709 	ld	(0x02, sp), a
      008ACE 0F 01            [ 1] 1710 	clr	(0x01, sp)
      008AD0 7B 02            [ 1] 1711 	ld	a, (0x02, sp)
      008AD2 C7 52 5E         [ 1] 1712 	ld	0x525e, a
                                   1713 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1766: TIM1->CNTRL = (uint8_t)(Counter);
      008AD5 7B 06            [ 1] 1714 	ld	a, (0x06, sp)
      008AD7 C7 52 5F         [ 1] 1715 	ld	0x525f, a
                                   1716 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1767: }
      008ADA 85               [ 2] 1717 	popw	x
      008ADB 81               [ 4] 1718 	ret
                                   1719 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1775: void TIM1_SetAutoreload(uint16_t Autoreload)
                                   1720 ;	-----------------------------------------
                                   1721 ;	 function TIM1_SetAutoreload
                                   1722 ;	-----------------------------------------
      008ADC                       1723 _TIM1_SetAutoreload:
      008ADC 89               [ 2] 1724 	pushw	x
                                   1725 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1778: TIM1->ARRH = (uint8_t)(Autoreload >> 8);
      008ADD 7B 05            [ 1] 1726 	ld	a, (0x05, sp)
      008ADF 6B 02            [ 1] 1727 	ld	(0x02, sp), a
      008AE1 0F 01            [ 1] 1728 	clr	(0x01, sp)
      008AE3 7B 02            [ 1] 1729 	ld	a, (0x02, sp)
      008AE5 C7 52 62         [ 1] 1730 	ld	0x5262, a
                                   1731 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1779: TIM1->ARRL = (uint8_t)(Autoreload);
      008AE8 7B 06            [ 1] 1732 	ld	a, (0x06, sp)
      008AEA C7 52 63         [ 1] 1733 	ld	0x5263, a
                                   1734 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1780: }
      008AED 85               [ 2] 1735 	popw	x
      008AEE 81               [ 4] 1736 	ret
                                   1737 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1788: void TIM1_SetCompare1(uint16_t Compare1)
                                   1738 ;	-----------------------------------------
                                   1739 ;	 function TIM1_SetCompare1
                                   1740 ;	-----------------------------------------
      008AEF                       1741 _TIM1_SetCompare1:
      008AEF 89               [ 2] 1742 	pushw	x
                                   1743 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1791: TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
      008AF0 7B 05            [ 1] 1744 	ld	a, (0x05, sp)
      008AF2 6B 02            [ 1] 1745 	ld	(0x02, sp), a
      008AF4 0F 01            [ 1] 1746 	clr	(0x01, sp)
      008AF6 7B 02            [ 1] 1747 	ld	a, (0x02, sp)
      008AF8 C7 52 65         [ 1] 1748 	ld	0x5265, a
                                   1749 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1792: TIM1->CCR1L = (uint8_t)(Compare1);
      008AFB 7B 06            [ 1] 1750 	ld	a, (0x06, sp)
      008AFD C7 52 66         [ 1] 1751 	ld	0x5266, a
                                   1752 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1793: }
      008B00 85               [ 2] 1753 	popw	x
      008B01 81               [ 4] 1754 	ret
                                   1755 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1801: void TIM1_SetCompare2(uint16_t Compare2)
                                   1756 ;	-----------------------------------------
                                   1757 ;	 function TIM1_SetCompare2
                                   1758 ;	-----------------------------------------
      008B02                       1759 _TIM1_SetCompare2:
      008B02 89               [ 2] 1760 	pushw	x
                                   1761 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1804: TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
      008B03 7B 05            [ 1] 1762 	ld	a, (0x05, sp)
      008B05 6B 02            [ 1] 1763 	ld	(0x02, sp), a
      008B07 0F 01            [ 1] 1764 	clr	(0x01, sp)
      008B09 7B 02            [ 1] 1765 	ld	a, (0x02, sp)
      008B0B C7 52 67         [ 1] 1766 	ld	0x5267, a
                                   1767 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1805: TIM1->CCR2L = (uint8_t)(Compare2);
      008B0E 7B 06            [ 1] 1768 	ld	a, (0x06, sp)
      008B10 C7 52 68         [ 1] 1769 	ld	0x5268, a
                                   1770 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1806: }
      008B13 85               [ 2] 1771 	popw	x
      008B14 81               [ 4] 1772 	ret
                                   1773 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1814: void TIM1_SetCompare3(uint16_t Compare3)
                                   1774 ;	-----------------------------------------
                                   1775 ;	 function TIM1_SetCompare3
                                   1776 ;	-----------------------------------------
      008B15                       1777 _TIM1_SetCompare3:
      008B15 89               [ 2] 1778 	pushw	x
                                   1779 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1817: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
      008B16 7B 05            [ 1] 1780 	ld	a, (0x05, sp)
      008B18 6B 02            [ 1] 1781 	ld	(0x02, sp), a
      008B1A 0F 01            [ 1] 1782 	clr	(0x01, sp)
      008B1C 7B 02            [ 1] 1783 	ld	a, (0x02, sp)
      008B1E C7 52 69         [ 1] 1784 	ld	0x5269, a
                                   1785 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1818: TIM1->CCR3L = (uint8_t)(Compare3);
      008B21 7B 06            [ 1] 1786 	ld	a, (0x06, sp)
      008B23 C7 52 6A         [ 1] 1787 	ld	0x526a, a
                                   1788 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1819: }
      008B26 85               [ 2] 1789 	popw	x
      008B27 81               [ 4] 1790 	ret
                                   1791 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1827: void TIM1_SetCompare4(uint16_t Compare4)
                                   1792 ;	-----------------------------------------
                                   1793 ;	 function TIM1_SetCompare4
                                   1794 ;	-----------------------------------------
      008B28                       1795 _TIM1_SetCompare4:
      008B28 89               [ 2] 1796 	pushw	x
                                   1797 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1830: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
      008B29 7B 05            [ 1] 1798 	ld	a, (0x05, sp)
      008B2B 6B 02            [ 1] 1799 	ld	(0x02, sp), a
      008B2D 0F 01            [ 1] 1800 	clr	(0x01, sp)
      008B2F 7B 02            [ 1] 1801 	ld	a, (0x02, sp)
      008B31 C7 52 6B         [ 1] 1802 	ld	0x526b, a
                                   1803 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1831: TIM1->CCR4L = (uint8_t)(Compare4);
      008B34 7B 06            [ 1] 1804 	ld	a, (0x06, sp)
      008B36 C7 52 6C         [ 1] 1805 	ld	0x526c, a
                                   1806 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1832: }
      008B39 85               [ 2] 1807 	popw	x
      008B3A 81               [ 4] 1808 	ret
                                   1809 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1844: void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
                                   1810 ;	-----------------------------------------
                                   1811 ;	 function TIM1_SetIC1Prescaler
                                   1812 ;	-----------------------------------------
      008B3B                       1813 _TIM1_SetIC1Prescaler:
                                   1814 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1850: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
      008B3B C6 52 58         [ 1] 1815 	ld	a, 0x5258
      008B3E A4 F3            [ 1] 1816 	and	a, #0xf3
                                   1817 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1851: | (uint8_t)TIM1_IC1Prescaler);
      008B40 1A 03            [ 1] 1818 	or	a, (0x03, sp)
      008B42 C7 52 58         [ 1] 1819 	ld	0x5258, a
                                   1820 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1852: }
      008B45 81               [ 4] 1821 	ret
                                   1822 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1864: void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
                                   1823 ;	-----------------------------------------
                                   1824 ;	 function TIM1_SetIC2Prescaler
                                   1825 ;	-----------------------------------------
      008B46                       1826 _TIM1_SetIC2Prescaler:
                                   1827 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1871: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
      008B46 C6 52 59         [ 1] 1828 	ld	a, 0x5259
      008B49 A4 F3            [ 1] 1829 	and	a, #0xf3
                                   1830 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1872: | (uint8_t)TIM1_IC2Prescaler);
      008B4B 1A 03            [ 1] 1831 	or	a, (0x03, sp)
      008B4D C7 52 59         [ 1] 1832 	ld	0x5259, a
                                   1833 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1873: }
      008B50 81               [ 4] 1834 	ret
                                   1835 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1885: void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
                                   1836 ;	-----------------------------------------
                                   1837 ;	 function TIM1_SetIC3Prescaler
                                   1838 ;	-----------------------------------------
      008B51                       1839 _TIM1_SetIC3Prescaler:
                                   1840 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1892: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
      008B51 C6 52 5A         [ 1] 1841 	ld	a, 0x525a
      008B54 A4 F3            [ 1] 1842 	and	a, #0xf3
                                   1843 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1893: (uint8_t)TIM1_IC3Prescaler);
      008B56 1A 03            [ 1] 1844 	or	a, (0x03, sp)
      008B58 C7 52 5A         [ 1] 1845 	ld	0x525a, a
                                   1846 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1894: }
      008B5B 81               [ 4] 1847 	ret
                                   1848 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1906: void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
                                   1849 ;	-----------------------------------------
                                   1850 ;	 function TIM1_SetIC4Prescaler
                                   1851 ;	-----------------------------------------
      008B5C                       1852 _TIM1_SetIC4Prescaler:
                                   1853 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1913: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
      008B5C C6 52 5B         [ 1] 1854 	ld	a, 0x525b
      008B5F A4 F3            [ 1] 1855 	and	a, #0xf3
                                   1856 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1914: (uint8_t)TIM1_IC4Prescaler);
      008B61 1A 03            [ 1] 1857 	or	a, (0x03, sp)
      008B63 C7 52 5B         [ 1] 1858 	ld	0x525b, a
                                   1859 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1915: }
      008B66 81               [ 4] 1860 	ret
                                   1861 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1922: uint16_t TIM1_GetCapture1(void)
                                   1862 ;	-----------------------------------------
                                   1863 ;	 function TIM1_GetCapture1
                                   1864 ;	-----------------------------------------
      008B67                       1865 _TIM1_GetCapture1:
      008B67 89               [ 2] 1866 	pushw	x
                                   1867 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1929: tmpccr1h = TIM1->CCR1H;
      008B68 C6 52 65         [ 1] 1868 	ld	a, 0x5265
      008B6B 95               [ 1] 1869 	ld	xh, a
                                   1870 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1930: tmpccr1l = TIM1->CCR1L;
      008B6C C6 52 66         [ 1] 1871 	ld	a, 0x5266
                                   1872 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1932: tmpccr1 = (uint16_t)(tmpccr1l);
      008B6F 97               [ 1] 1873 	ld	xl, a
      008B70 4F               [ 1] 1874 	clr	a
                                   1875 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1933: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      008B71 90 5F            [ 1] 1876 	clrw	y
      008B73 0F 02            [ 1] 1877 	clr	(0x02, sp)
      008B75 89               [ 2] 1878 	pushw	x
      008B76 1A 01            [ 1] 1879 	or	a, (1, sp)
      008B78 85               [ 2] 1880 	popw	x
      008B79 01               [ 1] 1881 	rrwa	x
      008B7A 1A 02            [ 1] 1882 	or	a, (0x02, sp)
      008B7C 97               [ 1] 1883 	ld	xl, a
                                   1884 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1935: return (uint16_t)tmpccr1;
                                   1885 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1936: }
      008B7D 5B 02            [ 2] 1886 	addw	sp, #2
      008B7F 81               [ 4] 1887 	ret
                                   1888 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1943: uint16_t TIM1_GetCapture2(void)
                                   1889 ;	-----------------------------------------
                                   1890 ;	 function TIM1_GetCapture2
                                   1891 ;	-----------------------------------------
      008B80                       1892 _TIM1_GetCapture2:
      008B80 89               [ 2] 1893 	pushw	x
                                   1894 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1950: tmpccr2h = TIM1->CCR2H;
      008B81 C6 52 67         [ 1] 1895 	ld	a, 0x5267
      008B84 95               [ 1] 1896 	ld	xh, a
                                   1897 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1951: tmpccr2l = TIM1->CCR2L;
      008B85 C6 52 68         [ 1] 1898 	ld	a, 0x5268
                                   1899 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1953: tmpccr2 = (uint16_t)(tmpccr2l);
      008B88 97               [ 1] 1900 	ld	xl, a
      008B89 4F               [ 1] 1901 	clr	a
                                   1902 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1954: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      008B8A 90 5F            [ 1] 1903 	clrw	y
      008B8C 0F 02            [ 1] 1904 	clr	(0x02, sp)
      008B8E 89               [ 2] 1905 	pushw	x
      008B8F 1A 01            [ 1] 1906 	or	a, (1, sp)
      008B91 85               [ 2] 1907 	popw	x
      008B92 01               [ 1] 1908 	rrwa	x
      008B93 1A 02            [ 1] 1909 	or	a, (0x02, sp)
      008B95 97               [ 1] 1910 	ld	xl, a
                                   1911 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1956: return (uint16_t)tmpccr2;
                                   1912 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1957: }
      008B96 5B 02            [ 2] 1913 	addw	sp, #2
      008B98 81               [ 4] 1914 	ret
                                   1915 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1964: uint16_t TIM1_GetCapture3(void)
                                   1916 ;	-----------------------------------------
                                   1917 ;	 function TIM1_GetCapture3
                                   1918 ;	-----------------------------------------
      008B99                       1919 _TIM1_GetCapture3:
      008B99 89               [ 2] 1920 	pushw	x
                                   1921 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1970: tmpccr3h = TIM1->CCR3H;
      008B9A C6 52 69         [ 1] 1922 	ld	a, 0x5269
      008B9D 95               [ 1] 1923 	ld	xh, a
                                   1924 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1971: tmpccr3l = TIM1->CCR3L;
      008B9E C6 52 6A         [ 1] 1925 	ld	a, 0x526a
                                   1926 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1973: tmpccr3 = (uint16_t)(tmpccr3l);
      008BA1 97               [ 1] 1927 	ld	xl, a
      008BA2 4F               [ 1] 1928 	clr	a
                                   1929 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1974: tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
      008BA3 90 5F            [ 1] 1930 	clrw	y
      008BA5 0F 02            [ 1] 1931 	clr	(0x02, sp)
      008BA7 89               [ 2] 1932 	pushw	x
      008BA8 1A 01            [ 1] 1933 	or	a, (1, sp)
      008BAA 85               [ 2] 1934 	popw	x
      008BAB 01               [ 1] 1935 	rrwa	x
      008BAC 1A 02            [ 1] 1936 	or	a, (0x02, sp)
      008BAE 97               [ 1] 1937 	ld	xl, a
                                   1938 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1976: return (uint16_t)tmpccr3;
                                   1939 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1977: }
      008BAF 5B 02            [ 2] 1940 	addw	sp, #2
      008BB1 81               [ 4] 1941 	ret
                                   1942 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1984: uint16_t TIM1_GetCapture4(void)
                                   1943 ;	-----------------------------------------
                                   1944 ;	 function TIM1_GetCapture4
                                   1945 ;	-----------------------------------------
      008BB2                       1946 _TIM1_GetCapture4:
      008BB2 89               [ 2] 1947 	pushw	x
                                   1948 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1990: tmpccr4h = TIM1->CCR4H;
      008BB3 C6 52 6B         [ 1] 1949 	ld	a, 0x526b
      008BB6 95               [ 1] 1950 	ld	xh, a
                                   1951 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1991: tmpccr4l = TIM1->CCR4L;
      008BB7 C6 52 6C         [ 1] 1952 	ld	a, 0x526c
                                   1953 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1993: tmpccr4 = (uint16_t)(tmpccr4l);
      008BBA 97               [ 1] 1954 	ld	xl, a
      008BBB 4F               [ 1] 1955 	clr	a
                                   1956 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1994: tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
      008BBC 90 5F            [ 1] 1957 	clrw	y
      008BBE 0F 02            [ 1] 1958 	clr	(0x02, sp)
      008BC0 89               [ 2] 1959 	pushw	x
      008BC1 1A 01            [ 1] 1960 	or	a, (1, sp)
      008BC3 85               [ 2] 1961 	popw	x
      008BC4 01               [ 1] 1962 	rrwa	x
      008BC5 1A 02            [ 1] 1963 	or	a, (0x02, sp)
      008BC7 97               [ 1] 1964 	ld	xl, a
                                   1965 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1996: return (uint16_t)tmpccr4;
                                   1966 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 1997: }
      008BC8 5B 02            [ 2] 1967 	addw	sp, #2
      008BCA 81               [ 4] 1968 	ret
                                   1969 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2004: uint16_t TIM1_GetCounter(void)
                                   1970 ;	-----------------------------------------
                                   1971 ;	 function TIM1_GetCounter
                                   1972 ;	-----------------------------------------
      008BCB                       1973 _TIM1_GetCounter:
      008BCB 52 04            [ 2] 1974 	sub	sp, #4
                                   1975 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2008: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
      008BCD C6 52 5E         [ 1] 1976 	ld	a, 0x525e
      008BD0 95               [ 1] 1977 	ld	xh, a
      008BD1 4F               [ 1] 1978 	clr	a
      008BD2 6B 02            [ 1] 1979 	ld	(0x02, sp), a
                                   1980 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2011: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
      008BD4 C6 52 5F         [ 1] 1981 	ld	a, 0x525f
      008BD7 6B 04            [ 1] 1982 	ld	(0x04, sp), a
      008BD9 0F 03            [ 1] 1983 	clr	(0x03, sp)
      008BDB 7B 02            [ 1] 1984 	ld	a, (0x02, sp)
      008BDD 1A 04            [ 1] 1985 	or	a, (0x04, sp)
      008BDF 02               [ 1] 1986 	rlwa	x
      008BE0 1A 03            [ 1] 1987 	or	a, (0x03, sp)
      008BE2 95               [ 1] 1988 	ld	xh, a
                                   1989 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2012: }
      008BE3 5B 04            [ 2] 1990 	addw	sp, #4
      008BE5 81               [ 4] 1991 	ret
                                   1992 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2019: uint16_t TIM1_GetPrescaler(void)
                                   1993 ;	-----------------------------------------
                                   1994 ;	 function TIM1_GetPrescaler
                                   1995 ;	-----------------------------------------
      008BE6                       1996 _TIM1_GetPrescaler:
      008BE6 52 04            [ 2] 1997 	sub	sp, #4
                                   1998 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2023: temp = ((uint16_t)TIM1->PSCRH << 8);
      008BE8 C6 52 60         [ 1] 1999 	ld	a, 0x5260
      008BEB 95               [ 1] 2000 	ld	xh, a
      008BEC 4F               [ 1] 2001 	clr	a
      008BED 6B 02            [ 1] 2002 	ld	(0x02, sp), a
                                   2003 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2026: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
      008BEF C6 52 61         [ 1] 2004 	ld	a, 0x5261
      008BF2 6B 04            [ 1] 2005 	ld	(0x04, sp), a
      008BF4 0F 03            [ 1] 2006 	clr	(0x03, sp)
      008BF6 7B 02            [ 1] 2007 	ld	a, (0x02, sp)
      008BF8 1A 04            [ 1] 2008 	or	a, (0x04, sp)
      008BFA 02               [ 1] 2009 	rlwa	x
      008BFB 1A 03            [ 1] 2010 	or	a, (0x03, sp)
      008BFD 95               [ 1] 2011 	ld	xh, a
                                   2012 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2027: }
      008BFE 5B 04            [ 2] 2013 	addw	sp, #4
      008C00 81               [ 4] 2014 	ret
                                   2015 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2047: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   2016 ;	-----------------------------------------
                                   2017 ;	 function TIM1_GetFlagStatus
                                   2018 ;	-----------------------------------------
      008C01                       2019 _TIM1_GetFlagStatus:
      008C01 52 03            [ 2] 2020 	sub	sp, #3
                                   2021 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2055: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
      008C03 C6 52 55         [ 1] 2022 	ld	a, 0x5255
      008C06 6B 03            [ 1] 2023 	ld	(0x03, sp), a
      008C08 7B 07            [ 1] 2024 	ld	a, (0x07, sp)
      008C0A 14 03            [ 1] 2025 	and	a, (0x03, sp)
      008C0C 6B 01            [ 1] 2026 	ld	(0x01, sp), a
                                   2027 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2056: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
      008C0E 7B 06            [ 1] 2028 	ld	a, (0x06, sp)
      008C10 6B 03            [ 1] 2029 	ld	(0x03, sp), a
      008C12 0F 02            [ 1] 2030 	clr	(0x02, sp)
                                   2031 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2058: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
      008C14 C6 52 56         [ 1] 2032 	ld	a, 0x5256
      008C17 14 03            [ 1] 2033 	and	a, (0x03, sp)
      008C19 1A 01            [ 1] 2034 	or	a, (0x01, sp)
      008C1B 27 03            [ 1] 2035 	jreq	00102$
                                   2036 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2060: bitstatus = SET;
      008C1D A6 01            [ 1] 2037 	ld	a, #0x01
                                   2038 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2064: bitstatus = RESET;
      008C1F 21                    2039 	.byte 0x21
      008C20                       2040 00102$:
      008C20 4F               [ 1] 2041 	clr	a
      008C21                       2042 00103$:
                                   2043 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2066: return (FlagStatus)(bitstatus);
                                   2044 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2067: }
      008C21 5B 03            [ 2] 2045 	addw	sp, #3
      008C23 81               [ 4] 2046 	ret
                                   2047 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2087: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
                                   2048 ;	-----------------------------------------
                                   2049 ;	 function TIM1_ClearFlag
                                   2050 ;	-----------------------------------------
      008C24                       2051 _TIM1_ClearFlag:
                                   2052 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2093: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
      008C24 7B 04            [ 1] 2053 	ld	a, (0x04, sp)
      008C26 43               [ 1] 2054 	cpl	a
      008C27 C7 52 55         [ 1] 2055 	ld	0x5255, a
                                   2056 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2094: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
      008C2A 7B 03            [ 1] 2057 	ld	a, (0x03, sp)
      008C2C 43               [ 1] 2058 	cpl	a
      008C2D A4 1E            [ 1] 2059 	and	a, #0x1e
      008C2F C7 52 56         [ 1] 2060 	ld	0x5256, a
                                   2061 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2096: }
      008C32 81               [ 4] 2062 	ret
                                   2063 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2112: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
                                   2064 ;	-----------------------------------------
                                   2065 ;	 function TIM1_GetITStatus
                                   2066 ;	-----------------------------------------
      008C33                       2067 _TIM1_GetITStatus:
      008C33 88               [ 1] 2068 	push	a
                                   2069 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2120: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
      008C34 C6 52 55         [ 1] 2070 	ld	a, 0x5255
      008C37 14 04            [ 1] 2071 	and	a, (0x04, sp)
      008C39 6B 01            [ 1] 2072 	ld	(0x01, sp), a
                                   2073 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2122: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
      008C3B C6 52 54         [ 1] 2074 	ld	a, 0x5254
      008C3E 14 04            [ 1] 2075 	and	a, (0x04, sp)
                                   2076 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2124: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
      008C40 0D 01            [ 1] 2077 	tnz	(0x01, sp)
      008C42 27 06            [ 1] 2078 	jreq	00102$
      008C44 4D               [ 1] 2079 	tnz	a
      008C45 27 03            [ 1] 2080 	jreq	00102$
                                   2081 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2126: bitstatus = SET;
      008C47 A6 01            [ 1] 2082 	ld	a, #0x01
                                   2083 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2130: bitstatus = RESET;
      008C49 21                    2084 	.byte 0x21
      008C4A                       2085 00102$:
      008C4A 4F               [ 1] 2086 	clr	a
      008C4B                       2087 00103$:
                                   2088 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2132: return (ITStatus)(bitstatus);
                                   2089 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2133: }
      008C4B 5B 01            [ 2] 2090 	addw	sp, #1
      008C4D 81               [ 4] 2091 	ret
                                   2092 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2149: void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
                                   2093 ;	-----------------------------------------
                                   2094 ;	 function TIM1_ClearITPendingBit
                                   2095 ;	-----------------------------------------
      008C4E                       2096 _TIM1_ClearITPendingBit:
                                   2097 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2155: TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
      008C4E 7B 03            [ 1] 2098 	ld	a, (0x03, sp)
      008C50 43               [ 1] 2099 	cpl	a
      008C51 C7 52 55         [ 1] 2100 	ld	0x5255, a
                                   2101 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2156: }
      008C54 81               [ 4] 2102 	ret
                                   2103 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2174: static void TI1_Config(uint8_t TIM1_ICPolarity,
                                   2104 ;	-----------------------------------------
                                   2105 ;	 function TI1_Config
                                   2106 ;	-----------------------------------------
      008C55                       2107 _TI1_Config:
      008C55 88               [ 1] 2108 	push	a
                                   2109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008C56 72 11 52 5C      [ 1] 2110 	bres	21084, #0
                                   2111 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2182: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
      008C5A C6 52 58         [ 1] 2112 	ld	a, 0x5258
      008C5D A4 0C            [ 1] 2113 	and	a, #0x0c
      008C5F 6B 01            [ 1] 2114 	ld	(0x01, sp), a
                                   2115 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2183: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C61 7B 06            [ 1] 2116 	ld	a, (0x06, sp)
      008C63 4E               [ 1] 2117 	swap	a
      008C64 A4 F0            [ 1] 2118 	and	a, #0xf0
      008C66 1A 05            [ 1] 2119 	or	a, (0x05, sp)
      008C68 1A 01            [ 1] 2120 	or	a, (0x01, sp)
      008C6A C7 52 58         [ 1] 2121 	ld	0x5258, a
                                   2122 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2179: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
      008C6D C6 52 5C         [ 1] 2123 	ld	a, 0x525c
                                   2124 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2186: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008C70 0D 04            [ 1] 2125 	tnz	(0x04, sp)
      008C72 27 07            [ 1] 2126 	jreq	00102$
                                   2127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2188: TIM1->CCER1 |= TIM1_CCER1_CC1P;
      008C74 AA 02            [ 1] 2128 	or	a, #0x02
      008C76 C7 52 5C         [ 1] 2129 	ld	0x525c, a
      008C79 20 05            [ 2] 2130 	jra	00103$
      008C7B                       2131 00102$:
                                   2132 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2192: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
      008C7B A4 FD            [ 1] 2133 	and	a, #0xfd
      008C7D C7 52 5C         [ 1] 2134 	ld	0x525c, a
      008C80                       2135 00103$:
                                   2136 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2196: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
      008C80 72 10 52 5C      [ 1] 2137 	bset	21084, #0
                                   2138 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2197: }
      008C84 84               [ 1] 2139 	pop	a
      008C85 81               [ 4] 2140 	ret
                                   2141 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2215: static void TI2_Config(uint8_t TIM1_ICPolarity,
                                   2142 ;	-----------------------------------------
                                   2143 ;	 function TI2_Config
                                   2144 ;	-----------------------------------------
      008C86                       2145 _TI2_Config:
      008C86 88               [ 1] 2146 	push	a
                                   2147 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      008C87 72 19 52 5C      [ 1] 2148 	bres	21084, #4
                                   2149 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2223: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
      008C8B C6 52 59         [ 1] 2150 	ld	a, 0x5259
      008C8E A4 0C            [ 1] 2151 	and	a, #0x0c
      008C90 6B 01            [ 1] 2152 	ld	(0x01, sp), a
                                   2153 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2224: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008C92 7B 06            [ 1] 2154 	ld	a, (0x06, sp)
      008C94 4E               [ 1] 2155 	swap	a
      008C95 A4 F0            [ 1] 2156 	and	a, #0xf0
      008C97 1A 05            [ 1] 2157 	or	a, (0x05, sp)
      008C99 1A 01            [ 1] 2158 	or	a, (0x01, sp)
      008C9B C7 52 59         [ 1] 2159 	ld	0x5259, a
                                   2160 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2220: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
      008C9E C6 52 5C         [ 1] 2161 	ld	a, 0x525c
                                   2162 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2226: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008CA1 0D 04            [ 1] 2163 	tnz	(0x04, sp)
      008CA3 27 07            [ 1] 2164 	jreq	00102$
                                   2165 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2228: TIM1->CCER1 |= TIM1_CCER1_CC2P;
      008CA5 AA 20            [ 1] 2166 	or	a, #0x20
      008CA7 C7 52 5C         [ 1] 2167 	ld	0x525c, a
      008CAA 20 05            [ 2] 2168 	jra	00103$
      008CAC                       2169 00102$:
                                   2170 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2232: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
      008CAC A4 DF            [ 1] 2171 	and	a, #0xdf
      008CAE C7 52 5C         [ 1] 2172 	ld	0x525c, a
      008CB1                       2173 00103$:
                                   2174 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2235: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
      008CB1 72 18 52 5C      [ 1] 2175 	bset	21084, #4
                                   2176 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2236: }
      008CB5 84               [ 1] 2177 	pop	a
      008CB6 81               [ 4] 2178 	ret
                                   2179 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2254: static void TI3_Config(uint8_t TIM1_ICPolarity,
                                   2180 ;	-----------------------------------------
                                   2181 ;	 function TI3_Config
                                   2182 ;	-----------------------------------------
      008CB7                       2183 _TI3_Config:
      008CB7 88               [ 1] 2184 	push	a
                                   2185 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      008CB8 C6 52 5D         [ 1] 2186 	ld	a, 0x525d
      008CBB A4 FE            [ 1] 2187 	and	a, #0xfe
      008CBD C7 52 5D         [ 1] 2188 	ld	0x525d, a
                                   2189 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2262: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
      008CC0 C6 52 5A         [ 1] 2190 	ld	a, 0x525a
      008CC3 A4 0C            [ 1] 2191 	and	a, #0x0c
      008CC5 6B 01            [ 1] 2192 	ld	(0x01, sp), a
                                   2193 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2263: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008CC7 7B 06            [ 1] 2194 	ld	a, (0x06, sp)
      008CC9 4E               [ 1] 2195 	swap	a
      008CCA A4 F0            [ 1] 2196 	and	a, #0xf0
      008CCC 1A 05            [ 1] 2197 	or	a, (0x05, sp)
      008CCE 1A 01            [ 1] 2198 	or	a, (0x01, sp)
      008CD0 C7 52 5A         [ 1] 2199 	ld	0x525a, a
                                   2200 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2259: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
      008CD3 C6 52 5D         [ 1] 2201 	ld	a, 0x525d
                                   2202 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2266: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008CD6 0D 04            [ 1] 2203 	tnz	(0x04, sp)
      008CD8 27 07            [ 1] 2204 	jreq	00102$
                                   2205 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2268: TIM1->CCER2 |= TIM1_CCER2_CC3P;
      008CDA AA 02            [ 1] 2206 	or	a, #0x02
      008CDC C7 52 5D         [ 1] 2207 	ld	0x525d, a
      008CDF 20 05            [ 2] 2208 	jra	00103$
      008CE1                       2209 00102$:
                                   2210 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2272: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
      008CE1 A4 FD            [ 1] 2211 	and	a, #0xfd
      008CE3 C7 52 5D         [ 1] 2212 	ld	0x525d, a
      008CE6                       2213 00103$:
                                   2214 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2275: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
      008CE6 72 10 52 5D      [ 1] 2215 	bset	21085, #0
                                   2216 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2276: }
      008CEA 84               [ 1] 2217 	pop	a
      008CEB 81               [ 4] 2218 	ret
                                   2219 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2294: static void TI4_Config(uint8_t TIM1_ICPolarity,
                                   2220 ;	-----------------------------------------
                                   2221 ;	 function TI4_Config
                                   2222 ;	-----------------------------------------
      008CEC                       2223 _TI4_Config:
      008CEC 88               [ 1] 2224 	push	a
                                   2225 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      008CED 72 19 52 5D      [ 1] 2226 	bres	21085, #4
                                   2227 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2302: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
      008CF1 C6 52 5B         [ 1] 2228 	ld	a, 0x525b
      008CF4 A4 0C            [ 1] 2229 	and	a, #0x0c
      008CF6 6B 01            [ 1] 2230 	ld	(0x01, sp), a
                                   2231 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2303: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
      008CF8 7B 06            [ 1] 2232 	ld	a, (0x06, sp)
      008CFA 4E               [ 1] 2233 	swap	a
      008CFB A4 F0            [ 1] 2234 	and	a, #0xf0
      008CFD 1A 05            [ 1] 2235 	or	a, (0x05, sp)
      008CFF 1A 01            [ 1] 2236 	or	a, (0x01, sp)
      008D01 C7 52 5B         [ 1] 2237 	ld	0x525b, a
                                   2238 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2299: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
      008D04 C6 52 5D         [ 1] 2239 	ld	a, 0x525d
                                   2240 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2306: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
      008D07 0D 04            [ 1] 2241 	tnz	(0x04, sp)
      008D09 27 07            [ 1] 2242 	jreq	00102$
                                   2243 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2308: TIM1->CCER2 |= TIM1_CCER2_CC4P;
      008D0B AA 20            [ 1] 2244 	or	a, #0x20
      008D0D C7 52 5D         [ 1] 2245 	ld	0x525d, a
      008D10 20 05            [ 2] 2246 	jra	00103$
      008D12                       2247 00102$:
                                   2248 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2312: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
      008D12 A4 DF            [ 1] 2249 	and	a, #0xdf
      008D14 C7 52 5D         [ 1] 2250 	ld	0x525d, a
      008D17                       2251 00103$:
                                   2252 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2316: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
      008D17 72 18 52 5D      [ 1] 2253 	bset	21085, #4
                                   2254 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_tim1.c: 2317: }
      008D1B 84               [ 1] 2255 	pop	a
      008D1C 81               [ 4] 2256 	ret
                                   2257 	.area CODE
                                   2258 	.area CONST
                                   2259 	.area INITIALIZER
                                   2260 	.area CABS (ABS)
