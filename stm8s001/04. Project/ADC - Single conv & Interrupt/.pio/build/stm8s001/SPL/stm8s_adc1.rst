                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_adc1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ADC1_DeInit
                                     12 	.globl _ADC1_Init
                                     13 	.globl _ADC1_Cmd
                                     14 	.globl _ADC1_ScanModeCmd
                                     15 	.globl _ADC1_DataBufferCmd
                                     16 	.globl _ADC1_ITConfig
                                     17 	.globl _ADC1_PrescalerConfig
                                     18 	.globl _ADC1_SchmittTriggerConfig
                                     19 	.globl _ADC1_ConversionConfig
                                     20 	.globl _ADC1_ExternalTriggerConfig
                                     21 	.globl _ADC1_StartConversion
                                     22 	.globl _ADC1_GetConversionValue
                                     23 	.globl _ADC1_AWDChannelConfig
                                     24 	.globl _ADC1_SetHighThreshold
                                     25 	.globl _ADC1_SetLowThreshold
                                     26 	.globl _ADC1_GetBufferValue
                                     27 	.globl _ADC1_GetAWDChannelStatus
                                     28 	.globl _ADC1_GetFlagStatus
                                     29 	.globl _ADC1_ClearFlag
                                     30 	.globl _ADC1_GetITStatus
                                     31 	.globl _ADC1_ClearITPendingBit
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area INITIALIZED
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area CODE
                                     69 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 52: void ADC1_DeInit(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function ADC1_DeInit
                                     72 ;	-----------------------------------------
      00827A                         73 _ADC1_DeInit:
                                     74 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
      00827A 35 00 54 00      [ 1]   75 	mov	0x5400+0, #0x00
                                     76 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
      00827E 35 00 54 01      [ 1]   77 	mov	0x5401+0, #0x00
                                     78 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
      008282 35 00 54 02      [ 1]   79 	mov	0x5402+0, #0x00
                                     80 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
      008286 35 00 54 03      [ 1]   81 	mov	0x5403+0, #0x00
                                     82 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
      00828A 35 00 54 06      [ 1]   83 	mov	0x5406+0, #0x00
                                     84 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
      00828E 35 00 54 07      [ 1]   85 	mov	0x5407+0, #0x00
                                     86 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
      008292 35 FF 54 08      [ 1]   87 	mov	0x5408+0, #0xff
                                     88 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
      008296 35 03 54 09      [ 1]   89 	mov	0x5409+0, #0x03
                                     90 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
      00829A 35 00 54 0A      [ 1]   91 	mov	0x540a+0, #0x00
                                     92 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
      00829E 35 00 54 0B      [ 1]   93 	mov	0x540b+0, #0x00
                                     94 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
      0082A2 35 00 54 0E      [ 1]   95 	mov	0x540e+0, #0x00
                                     96 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
      0082A6 35 00 54 0F      [ 1]   97 	mov	0x540f+0, #0x00
                                     98 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 66: }
      0082AA 81               [ 4]   99 	ret
                                    100 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    101 ;	-----------------------------------------
                                    102 ;	 function ADC1_Init
                                    103 ;	-----------------------------------------
      0082AB                        104 _ADC1_Init:
                                    105 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 103: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      0082AB 7B 08            [ 1]  106 	ld	a, (0x08, sp)
      0082AD 88               [ 1]  107 	push	a
      0082AE 7B 05            [ 1]  108 	ld	a, (0x05, sp)
      0082B0 88               [ 1]  109 	push	a
      0082B1 7B 05            [ 1]  110 	ld	a, (0x05, sp)
      0082B3 88               [ 1]  111 	push	a
      0082B4 CD 83 BD         [ 4]  112 	call	_ADC1_ConversionConfig
      0082B7 5B 03            [ 2]  113 	addw	sp, #3
                                    114 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 105: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      0082B9 7B 05            [ 1]  115 	ld	a, (0x05, sp)
      0082BB 88               [ 1]  116 	push	a
      0082BC CD 83 30         [ 4]  117 	call	_ADC1_PrescalerConfig
      0082BF 84               [ 1]  118 	pop	a
                                    119 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 110: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      0082C0 7B 07            [ 1]  120 	ld	a, (0x07, sp)
      0082C2 88               [ 1]  121 	push	a
      0082C3 7B 07            [ 1]  122 	ld	a, (0x07, sp)
      0082C5 88               [ 1]  123 	push	a
      0082C6 CD 83 F0         [ 4]  124 	call	_ADC1_ExternalTriggerConfig
      0082C9 85               [ 2]  125 	popw	x
                                    126 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 115: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      0082CA 7B 0A            [ 1]  127 	ld	a, (0x0a, sp)
      0082CC 88               [ 1]  128 	push	a
      0082CD 7B 0A            [ 1]  129 	ld	a, (0x0a, sp)
      0082CF 88               [ 1]  130 	push	a
      0082D0 CD 83 41         [ 4]  131 	call	_ADC1_SchmittTriggerConfig
      0082D3 85               [ 2]  132 	popw	x
                                    133 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 118: ADC1->CR1 |= ADC1_CR1_ADON;
      0082D4 72 10 54 01      [ 1]  134 	bset	21505, #0
                                    135 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 119: }
      0082D8 81               [ 4]  136 	ret
                                    137 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 126: void ADC1_Cmd(FunctionalState NewState)
                                    138 ;	-----------------------------------------
                                    139 ;	 function ADC1_Cmd
                                    140 ;	-----------------------------------------
      0082D9                        141 _ADC1_Cmd:
                                    142 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
      0082D9 C6 54 01         [ 1]  143 	ld	a, 0x5401
                                    144 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 131: if (NewState != DISABLE)
      0082DC 0D 03            [ 1]  145 	tnz	(0x03, sp)
      0082DE 27 06            [ 1]  146 	jreq	00102$
                                    147 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
      0082E0 AA 01            [ 1]  148 	or	a, #0x01
      0082E2 C7 54 01         [ 1]  149 	ld	0x5401, a
      0082E5 81               [ 4]  150 	ret
      0082E6                        151 00102$:
                                    152 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 137: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
      0082E6 A4 FE            [ 1]  153 	and	a, #0xfe
      0082E8 C7 54 01         [ 1]  154 	ld	0x5401, a
                                    155 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 139: }
      0082EB 81               [ 4]  156 	ret
                                    157 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 146: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    158 ;	-----------------------------------------
                                    159 ;	 function ADC1_ScanModeCmd
                                    160 ;	-----------------------------------------
      0082EC                        161 _ADC1_ScanModeCmd:
                                    162 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
      0082EC C6 54 02         [ 1]  163 	ld	a, 0x5402
                                    164 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 151: if (NewState != DISABLE)
      0082EF 0D 03            [ 1]  165 	tnz	(0x03, sp)
      0082F1 27 06            [ 1]  166 	jreq	00102$
                                    167 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
      0082F3 AA 02            [ 1]  168 	or	a, #0x02
      0082F5 C7 54 02         [ 1]  169 	ld	0x5402, a
      0082F8 81               [ 4]  170 	ret
      0082F9                        171 00102$:
                                    172 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 157: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      0082F9 A4 FD            [ 1]  173 	and	a, #0xfd
      0082FB C7 54 02         [ 1]  174 	ld	0x5402, a
                                    175 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 159: }
      0082FE 81               [ 4]  176 	ret
                                    177 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 166: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    178 ;	-----------------------------------------
                                    179 ;	 function ADC1_DataBufferCmd
                                    180 ;	-----------------------------------------
      0082FF                        181 _ADC1_DataBufferCmd:
                                    182 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
      0082FF C6 54 03         [ 1]  183 	ld	a, 0x5403
                                    184 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 171: if (NewState != DISABLE)
      008302 0D 03            [ 1]  185 	tnz	(0x03, sp)
      008304 27 06            [ 1]  186 	jreq	00102$
                                    187 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
      008306 AA 80            [ 1]  188 	or	a, #0x80
      008308 C7 54 03         [ 1]  189 	ld	0x5403, a
      00830B 81               [ 4]  190 	ret
      00830C                        191 00102$:
                                    192 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 177: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
      00830C A4 7F            [ 1]  193 	and	a, #0x7f
      00830E C7 54 03         [ 1]  194 	ld	0x5403, a
                                    195 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 179: }
      008311 81               [ 4]  196 	ret
                                    197 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 190: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    198 ;	-----------------------------------------
                                    199 ;	 function ADC1_ITConfig
                                    200 ;	-----------------------------------------
      008312                        201 _ADC1_ITConfig:
      008312 88               [ 1]  202 	push	a
                                    203 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
      008313 C6 54 00         [ 1]  204 	ld	a, 0x5400
      008316 6B 01            [ 1]  205 	ld	(0x01, sp), a
                                    206 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 196: if (NewState != DISABLE)
      008318 0D 06            [ 1]  207 	tnz	(0x06, sp)
      00831A 27 09            [ 1]  208 	jreq	00102$
                                    209 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
      00831C 7B 05            [ 1]  210 	ld	a, (0x05, sp)
      00831E 1A 01            [ 1]  211 	or	a, (0x01, sp)
      008320 C7 54 00         [ 1]  212 	ld	0x5400, a
      008323 20 09            [ 2]  213 	jra	00104$
      008325                        214 00102$:
                                    215 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 204: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
      008325 1E 04            [ 2]  216 	ldw	x, (0x04, sp)
      008327 53               [ 2]  217 	cplw	x
      008328 9F               [ 1]  218 	ld	a, xl
      008329 14 01            [ 1]  219 	and	a, (0x01, sp)
      00832B C7 54 00         [ 1]  220 	ld	0x5400, a
      00832E                        221 00104$:
                                    222 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 206: }
      00832E 84               [ 1]  223 	pop	a
      00832F 81               [ 4]  224 	ret
                                    225 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 214: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    226 ;	-----------------------------------------
                                    227 ;	 function ADC1_PrescalerConfig
                                    228 ;	-----------------------------------------
      008330                        229 _ADC1_PrescalerConfig:
                                    230 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 220: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
      008330 C6 54 01         [ 1]  231 	ld	a, 0x5401
      008333 A4 8F            [ 1]  232 	and	a, #0x8f
      008335 C7 54 01         [ 1]  233 	ld	0x5401, a
                                    234 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 222: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
      008338 C6 54 01         [ 1]  235 	ld	a, 0x5401
      00833B 1A 03            [ 1]  236 	or	a, (0x03, sp)
      00833D C7 54 01         [ 1]  237 	ld	0x5401, a
                                    238 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 223: }
      008340 81               [ 4]  239 	ret
                                    240 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 233: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    241 ;	-----------------------------------------
                                    242 ;	 function ADC1_SchmittTriggerConfig
                                    243 ;	-----------------------------------------
      008341                        244 _ADC1_SchmittTriggerConfig:
      008341 88               [ 1]  245 	push	a
                                    246 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 239: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      008342 7B 04            [ 1]  247 	ld	a, (0x04, sp)
      008344 4C               [ 1]  248 	inc	a
      008345 26 21            [ 1]  249 	jrne	00114$
                                    250 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      008347 C6 54 07         [ 1]  251 	ld	a, 0x5407
                                    252 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 241: if (NewState != DISABLE)
      00834A 0D 05            [ 1]  253 	tnz	(0x05, sp)
      00834C 27 0D            [ 1]  254 	jreq	00102$
                                    255 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      00834E 35 00 54 07      [ 1]  256 	mov	0x5407+0, #0x00
                                    257 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
      008352 C6 54 06         [ 1]  258 	ld	a, 0x5406
      008355 35 00 54 06      [ 1]  259 	mov	0x5406+0, #0x00
      008359 20 60            [ 2]  260 	jra	00116$
      00835B                        261 00102$:
                                    262 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 248: ADC1->TDRL |= (uint8_t)0xFF;
      00835B 35 FF 54 07      [ 1]  263 	mov	0x5407+0, #0xff
                                    264 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 249: ADC1->TDRH |= (uint8_t)0xFF;
      00835F C6 54 06         [ 1]  265 	ld	a, 0x5406
      008362 35 FF 54 06      [ 1]  266 	mov	0x5406+0, #0xff
      008366 20 53            [ 2]  267 	jra	00116$
      008368                        268 00114$:
                                    269 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 252: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      008368 7B 04            [ 1]  270 	ld	a, (0x04, sp)
      00836A A1 08            [ 1]  271 	cp	a, #0x08
      00836C 24 25            [ 1]  272 	jrnc	00111$
                                    273 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      00836E C6 54 07         [ 1]  274 	ld	a, 0x5407
      008371 6B 01            [ 1]  275 	ld	(0x01, sp), a
                                    276 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      008373 A6 01            [ 1]  277 	ld	a, #0x01
      008375 88               [ 1]  278 	push	a
      008376 7B 05            [ 1]  279 	ld	a, (0x05, sp)
      008378 27 05            [ 1]  280 	jreq	00149$
      00837A                        281 00148$:
      00837A 08 01            [ 1]  282 	sll	(1, sp)
      00837C 4A               [ 1]  283 	dec	a
      00837D 26 FB            [ 1]  284 	jrne	00148$
      00837F                        285 00149$:
      00837F 84               [ 1]  286 	pop	a
                                    287 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 254: if (NewState != DISABLE)
      008380 0D 05            [ 1]  288 	tnz	(0x05, sp)
      008382 27 08            [ 1]  289 	jreq	00105$
                                    290 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      008384 43               [ 1]  291 	cpl	a
      008385 14 01            [ 1]  292 	and	a, (0x01, sp)
      008387 C7 54 07         [ 1]  293 	ld	0x5407, a
      00838A 20 2F            [ 2]  294 	jra	00116$
      00838C                        295 00105$:
                                    296 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 260: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      00838C 1A 01            [ 1]  297 	or	a, (0x01, sp)
      00838E C7 54 07         [ 1]  298 	ld	0x5407, a
      008391 20 28            [ 2]  299 	jra	00116$
      008393                        300 00111$:
                                    301 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
      008393 C6 54 06         [ 1]  302 	ld	a, 0x5406
      008396 6B 01            [ 1]  303 	ld	(0x01, sp), a
                                    304 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      008398 7B 04            [ 1]  305 	ld	a, (0x04, sp)
      00839A A0 08            [ 1]  306 	sub	a, #0x08
      00839C 97               [ 1]  307 	ld	xl, a
      00839D A6 01            [ 1]  308 	ld	a, #0x01
      00839F 88               [ 1]  309 	push	a
      0083A0 9F               [ 1]  310 	ld	a, xl
      0083A1 4D               [ 1]  311 	tnz	a
      0083A2 27 05            [ 1]  312 	jreq	00152$
      0083A4                        313 00151$:
      0083A4 08 01            [ 1]  314 	sll	(1, sp)
      0083A6 4A               [ 1]  315 	dec	a
      0083A7 26 FB            [ 1]  316 	jrne	00151$
      0083A9                        317 00152$:
      0083A9 84               [ 1]  318 	pop	a
                                    319 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 265: if (NewState != DISABLE)
      0083AA 0D 05            [ 1]  320 	tnz	(0x05, sp)
      0083AC 27 08            [ 1]  321 	jreq	00108$
                                    322 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      0083AE 43               [ 1]  323 	cpl	a
      0083AF 14 01            [ 1]  324 	and	a, (0x01, sp)
      0083B1 C7 54 06         [ 1]  325 	ld	0x5406, a
      0083B4 20 05            [ 2]  326 	jra	00116$
      0083B6                        327 00108$:
                                    328 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 271: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      0083B6 1A 01            [ 1]  329 	or	a, (0x01, sp)
      0083B8 C7 54 06         [ 1]  330 	ld	0x5406, a
      0083BB                        331 00116$:
                                    332 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 274: }
      0083BB 84               [ 1]  333 	pop	a
      0083BC 81               [ 4]  334 	ret
                                    335 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 286: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    336 ;	-----------------------------------------
                                    337 ;	 function ADC1_ConversionConfig
                                    338 ;	-----------------------------------------
      0083BD                        339 _ADC1_ConversionConfig:
                                    340 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 294: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      0083BD 72 17 54 02      [ 1]  341 	bres	21506, #3
                                    342 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 296: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      0083C1 C6 54 02         [ 1]  343 	ld	a, 0x5402
      0083C4 1A 05            [ 1]  344 	or	a, (0x05, sp)
      0083C6 C7 54 02         [ 1]  345 	ld	0x5402, a
                                    346 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
      0083C9 C6 54 01         [ 1]  347 	ld	a, 0x5401
                                    348 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 298: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      0083CC 88               [ 1]  349 	push	a
      0083CD 7B 04            [ 1]  350 	ld	a, (0x04, sp)
      0083CF 4A               [ 1]  351 	dec	a
      0083D0 84               [ 1]  352 	pop	a
      0083D1 26 07            [ 1]  353 	jrne	00102$
                                    354 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
      0083D3 AA 02            [ 1]  355 	or	a, #0x02
      0083D5 C7 54 01         [ 1]  356 	ld	0x5401, a
      0083D8 20 05            [ 2]  357 	jra	00103$
      0083DA                        358 00102$:
                                    359 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 306: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      0083DA A4 FD            [ 1]  360 	and	a, #0xfd
      0083DC C7 54 01         [ 1]  361 	ld	0x5401, a
      0083DF                        362 00103$:
                                    363 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 310: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      0083DF C6 54 00         [ 1]  364 	ld	a, 0x5400
      0083E2 A4 F0            [ 1]  365 	and	a, #0xf0
      0083E4 C7 54 00         [ 1]  366 	ld	0x5400, a
                                    367 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 312: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      0083E7 C6 54 00         [ 1]  368 	ld	a, 0x5400
      0083EA 1A 04            [ 1]  369 	or	a, (0x04, sp)
      0083EC C7 54 00         [ 1]  370 	ld	0x5400, a
                                    371 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 313: }
      0083EF 81               [ 4]  372 	ret
                                    373 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 325: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    374 ;	-----------------------------------------
                                    375 ;	 function ADC1_ExternalTriggerConfig
                                    376 ;	-----------------------------------------
      0083F0                        377 _ADC1_ExternalTriggerConfig:
                                    378 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 332: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
      0083F0 C6 54 02         [ 1]  379 	ld	a, 0x5402
      0083F3 A4 CF            [ 1]  380 	and	a, #0xcf
      0083F5 C7 54 02         [ 1]  381 	ld	0x5402, a
      0083F8 C6 54 02         [ 1]  382 	ld	a, 0x5402
                                    383 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 334: if (NewState != DISABLE)
      0083FB 0D 04            [ 1]  384 	tnz	(0x04, sp)
      0083FD 27 07            [ 1]  385 	jreq	00102$
                                    386 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 337: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
      0083FF AA 40            [ 1]  387 	or	a, #0x40
      008401 C7 54 02         [ 1]  388 	ld	0x5402, a
      008404 20 05            [ 2]  389 	jra	00103$
      008406                        390 00102$:
                                    391 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 342: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
      008406 A4 BF            [ 1]  392 	and	a, #0xbf
      008408 C7 54 02         [ 1]  393 	ld	0x5402, a
      00840B                        394 00103$:
                                    395 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 346: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
      00840B C6 54 02         [ 1]  396 	ld	a, 0x5402
      00840E 1A 03            [ 1]  397 	or	a, (0x03, sp)
      008410 C7 54 02         [ 1]  398 	ld	0x5402, a
                                    399 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 347: }
      008413 81               [ 4]  400 	ret
                                    401 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 358: void ADC1_StartConversion(void)
                                    402 ;	-----------------------------------------
                                    403 ;	 function ADC1_StartConversion
                                    404 ;	-----------------------------------------
      008414                        405 _ADC1_StartConversion:
                                    406 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 360: ADC1->CR1 |= ADC1_CR1_ADON;
      008414 72 10 54 01      [ 1]  407 	bset	21505, #0
                                    408 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 361: }
      008418 81               [ 4]  409 	ret
                                    410 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 370: uint16_t ADC1_GetConversionValue(void)
                                    411 ;	-----------------------------------------
                                    412 ;	 function ADC1_GetConversionValue
                                    413 ;	-----------------------------------------
      008419                        414 _ADC1_GetConversionValue:
      008419 52 04            [ 2]  415 	sub	sp, #4
                                    416 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 375: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00841B C6 54 02         [ 1]  417 	ld	a, 0x5402
      00841E A5 08            [ 1]  418 	bcp	a, #0x08
      008420 27 1B            [ 1]  419 	jreq	00102$
                                    420 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 378: templ = ADC1->DRL;
      008422 C6 54 05         [ 1]  421 	ld	a, 0x5405
      008425 97               [ 1]  422 	ld	xl, a
                                    423 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 380: temph = ADC1->DRH;
      008426 C6 54 04         [ 1]  424 	ld	a, 0x5404
                                    425 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 382: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      008429 0F 02            [ 1]  426 	clr	(0x02, sp)
      00842B 41               [ 1]  427 	exg	a, xl
      00842C 6B 04            [ 1]  428 	ld	(0x04, sp), a
      00842E 41               [ 1]  429 	exg	a, xl
      00842F 0F 03            [ 1]  430 	clr	(0x03, sp)
      008431 1A 03            [ 1]  431 	or	a, (0x03, sp)
      008433 95               [ 1]  432 	ld	xh, a
      008434 7B 04            [ 1]  433 	ld	a, (0x04, sp)
      008436 1A 02            [ 1]  434 	or	a, (0x02, sp)
      008438 97               [ 1]  435 	ld	xl, a
      008439 1F 03            [ 2]  436 	ldw	(0x03, sp), x
      00843B 20 1D            [ 2]  437 	jra	00103$
      00843D                        438 00102$:
                                    439 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 387: temph = ADC1->DRH;
      00843D C6 54 04         [ 1]  440 	ld	a, 0x5404
      008440 5F               [ 1]  441 	clrw	x
      008441 97               [ 1]  442 	ld	xl, a
      008442 51               [ 1]  443 	exgw	x, y
                                    444 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 389: templ = ADC1->DRL;
      008443 C6 54 05         [ 1]  445 	ld	a, 0x5405
                                    446 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 391: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      008446 5F               [ 1]  447 	clrw	x
      008447 97               [ 1]  448 	ld	xl, a
      008448 58               [ 2]  449 	sllw	x
      008449 58               [ 2]  450 	sllw	x
      00844A 58               [ 2]  451 	sllw	x
      00844B 58               [ 2]  452 	sllw	x
      00844C 58               [ 2]  453 	sllw	x
      00844D 58               [ 2]  454 	sllw	x
      00844E 1F 03            [ 2]  455 	ldw	(0x03, sp), x
      008450 7B 04            [ 1]  456 	ld	a, (0x04, sp)
      008452 97               [ 1]  457 	ld	xl, a
      008453 90 9F            [ 1]  458 	ld	a, yl
      008455 1A 03            [ 1]  459 	or	a, (0x03, sp)
      008457 95               [ 1]  460 	ld	xh, a
      008458 1F 03            [ 2]  461 	ldw	(0x03, sp), x
      00845A                        462 00103$:
                                    463 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 394: return ((uint16_t)temph);
      00845A 1E 03            [ 2]  464 	ldw	x, (0x03, sp)
                                    465 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 395: }
      00845C 5B 04            [ 2]  466 	addw	sp, #4
      00845E 81               [ 4]  467 	ret
                                    468 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 405: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    469 ;	-----------------------------------------
                                    470 ;	 function ADC1_AWDChannelConfig
                                    471 ;	-----------------------------------------
      00845F                        472 _ADC1_AWDChannelConfig:
      00845F 88               [ 1]  473 	push	a
                                    474 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 411: if (Channel < (uint8_t)8)
      008460 7B 04            [ 1]  475 	ld	a, (0x04, sp)
      008462 A1 08            [ 1]  476 	cp	a, #0x08
      008464 24 25            [ 1]  477 	jrnc	00108$
                                    478 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      008466 C6 54 0F         [ 1]  479 	ld	a, 0x540f
      008469 6B 01            [ 1]  480 	ld	(0x01, sp), a
      00846B A6 01            [ 1]  481 	ld	a, #0x01
      00846D 88               [ 1]  482 	push	a
      00846E 7B 05            [ 1]  483 	ld	a, (0x05, sp)
      008470 27 05            [ 1]  484 	jreq	00129$
      008472                        485 00128$:
      008472 08 01            [ 1]  486 	sll	(1, sp)
      008474 4A               [ 1]  487 	dec	a
      008475 26 FB            [ 1]  488 	jrne	00128$
      008477                        489 00129$:
      008477 84               [ 1]  490 	pop	a
                                    491 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 413: if (NewState != DISABLE)
      008478 0D 05            [ 1]  492 	tnz	(0x05, sp)
      00847A 27 07            [ 1]  493 	jreq	00102$
                                    494 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      00847C 1A 01            [ 1]  495 	or	a, (0x01, sp)
      00847E C7 54 0F         [ 1]  496 	ld	0x540f, a
      008481 20 30            [ 2]  497 	jra	00110$
      008483                        498 00102$:
                                    499 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 419: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
      008483 43               [ 1]  500 	cpl	a
      008484 14 01            [ 1]  501 	and	a, (0x01, sp)
      008486 C7 54 0F         [ 1]  502 	ld	0x540f, a
      008489 20 28            [ 2]  503 	jra	00110$
      00848B                        504 00108$:
                                    505 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      00848B C6 54 0E         [ 1]  506 	ld	a, 0x540e
      00848E 6B 01            [ 1]  507 	ld	(0x01, sp), a
      008490 7B 04            [ 1]  508 	ld	a, (0x04, sp)
      008492 A0 08            [ 1]  509 	sub	a, #0x08
      008494 97               [ 1]  510 	ld	xl, a
      008495 A6 01            [ 1]  511 	ld	a, #0x01
      008497 88               [ 1]  512 	push	a
      008498 9F               [ 1]  513 	ld	a, xl
      008499 4D               [ 1]  514 	tnz	a
      00849A 27 05            [ 1]  515 	jreq	00132$
      00849C                        516 00131$:
      00849C 08 01            [ 1]  517 	sll	(1, sp)
      00849E 4A               [ 1]  518 	dec	a
      00849F 26 FB            [ 1]  519 	jrne	00131$
      0084A1                        520 00132$:
      0084A1 84               [ 1]  521 	pop	a
                                    522 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 424: if (NewState != DISABLE)
      0084A2 0D 05            [ 1]  523 	tnz	(0x05, sp)
      0084A4 27 07            [ 1]  524 	jreq	00105$
                                    525 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      0084A6 1A 01            [ 1]  526 	or	a, (0x01, sp)
      0084A8 C7 54 0E         [ 1]  527 	ld	0x540e, a
      0084AB 20 06            [ 2]  528 	jra	00110$
      0084AD                        529 00105$:
                                    530 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 430: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
      0084AD 43               [ 1]  531 	cpl	a
      0084AE 14 01            [ 1]  532 	and	a, (0x01, sp)
      0084B0 C7 54 0E         [ 1]  533 	ld	0x540e, a
      0084B3                        534 00110$:
                                    535 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 433: }
      0084B3 84               [ 1]  536 	pop	a
      0084B4 81               [ 4]  537 	ret
                                    538 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 441: void ADC1_SetHighThreshold(uint16_t Threshold)
                                    539 ;	-----------------------------------------
                                    540 ;	 function ADC1_SetHighThreshold
                                    541 ;	-----------------------------------------
      0084B5                        542 _ADC1_SetHighThreshold:
                                    543 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 443: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
      0084B5 1E 03            [ 2]  544 	ldw	x, (0x03, sp)
      0084B7 54               [ 2]  545 	srlw	x
      0084B8 54               [ 2]  546 	srlw	x
      0084B9 9F               [ 1]  547 	ld	a, xl
      0084BA C7 54 08         [ 1]  548 	ld	0x5408, a
                                    549 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 444: ADC1->HTRL = (uint8_t)Threshold;
      0084BD 7B 04            [ 1]  550 	ld	a, (0x04, sp)
      0084BF C7 54 09         [ 1]  551 	ld	0x5409, a
                                    552 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 445: }
      0084C2 81               [ 4]  553 	ret
                                    554 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 453: void ADC1_SetLowThreshold(uint16_t Threshold)
                                    555 ;	-----------------------------------------
                                    556 ;	 function ADC1_SetLowThreshold
                                    557 ;	-----------------------------------------
      0084C3                        558 _ADC1_SetLowThreshold:
                                    559 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 455: ADC1->LTRL = (uint8_t)Threshold;
      0084C3 7B 04            [ 1]  560 	ld	a, (0x04, sp)
      0084C5 C7 54 0B         [ 1]  561 	ld	0x540b, a
                                    562 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 456: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
      0084C8 1E 03            [ 2]  563 	ldw	x, (0x03, sp)
      0084CA 54               [ 2]  564 	srlw	x
      0084CB 54               [ 2]  565 	srlw	x
      0084CC 9F               [ 1]  566 	ld	a, xl
      0084CD C7 54 0A         [ 1]  567 	ld	0x540a, a
                                    568 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 457: }
      0084D0 81               [ 4]  569 	ret
                                    570 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 466: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                    571 ;	-----------------------------------------
                                    572 ;	 function ADC1_GetBufferValue
                                    573 ;	-----------------------------------------
      0084D1                        574 _ADC1_GetBufferValue:
      0084D1 52 04            [ 2]  575 	sub	sp, #4
                                    576 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      0084D3 C6 54 02         [ 1]  577 	ld	a, 0x5402
      0084D6 6B 04            [ 1]  578 	ld	(0x04, sp), a
                                    579 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      0084D8 7B 07            [ 1]  580 	ld	a, (0x07, sp)
      0084DA 48               [ 1]  581 	sll	a
      0084DB 5F               [ 1]  582 	clrw	x
      0084DC 97               [ 1]  583 	ld	xl, a
      0084DD 51               [ 1]  584 	exgw	x, y
      0084DE 93               [ 1]  585 	ldw	x, y
      0084DF 1C 53 E1         [ 2]  586 	addw	x, #0x53e1
                                    587 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      0084E2 72 A9 53 E0      [ 2]  588 	addw	y, #0x53e0
                                    589 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    590 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    591 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      0084E6 F6               [ 1]  592 	ld	a, (x)
      0084E7 97               [ 1]  593 	ld	xl, a
                                    594 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      0084E8 90 F6            [ 1]  595 	ld	a, (y)
                                    596 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      0084EA 88               [ 1]  597 	push	a
      0084EB 7B 05            [ 1]  598 	ld	a, (0x05, sp)
      0084ED A5 08            [ 1]  599 	bcp	a, #0x08
      0084EF 84               [ 1]  600 	pop	a
      0084F0 27 14            [ 1]  601 	jreq	00102$
                                    602 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    603 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    604 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 481: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      0084F2 0F 02            [ 1]  605 	clr	(0x02, sp)
      0084F4 41               [ 1]  606 	exg	a, xl
      0084F5 6B 04            [ 1]  607 	ld	(0x04, sp), a
      0084F7 41               [ 1]  608 	exg	a, xl
      0084F8 0F 03            [ 1]  609 	clr	(0x03, sp)
      0084FA 1A 03            [ 1]  610 	or	a, (0x03, sp)
      0084FC 95               [ 1]  611 	ld	xh, a
      0084FD 7B 04            [ 1]  612 	ld	a, (0x04, sp)
      0084FF 1A 02            [ 1]  613 	or	a, (0x02, sp)
      008501 97               [ 1]  614 	ld	xl, a
      008502 1F 03            [ 2]  615 	ldw	(0x03, sp), x
      008504 20 15            [ 2]  616 	jra	00103$
      008506                        617 00102$:
                                    618 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 486: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    619 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 488: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    620 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 490: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
      008506 02               [ 1]  621 	rlwa	x
      008507 4F               [ 1]  622 	clr	a
      008508 01               [ 1]  623 	rrwa	x
      008509 58               [ 2]  624 	sllw	x
      00850A 58               [ 2]  625 	sllw	x
      00850B 58               [ 2]  626 	sllw	x
      00850C 58               [ 2]  627 	sllw	x
      00850D 58               [ 2]  628 	sllw	x
      00850E 58               [ 2]  629 	sllw	x
      00850F 1F 01            [ 2]  630 	ldw	(0x01, sp), x
      008511 97               [ 1]  631 	ld	xl, a
      008512 7B 02            [ 1]  632 	ld	a, (0x02, sp)
      008514 6B 04            [ 1]  633 	ld	(0x04, sp), a
      008516 9F               [ 1]  634 	ld	a, xl
      008517 1A 01            [ 1]  635 	or	a, (0x01, sp)
      008519 6B 03            [ 1]  636 	ld	(0x03, sp), a
      00851B                        637 00103$:
                                    638 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 493: return ((uint16_t)temph);
      00851B 1E 03            [ 2]  639 	ldw	x, (0x03, sp)
                                    640 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 494: }
      00851D 5B 04            [ 2]  641 	addw	sp, #4
      00851F 81               [ 4]  642 	ret
                                    643 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 502: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                    644 ;	-----------------------------------------
                                    645 ;	 function ADC1_GetAWDChannelStatus
                                    646 ;	-----------------------------------------
      008520                        647 _ADC1_GetAWDChannelStatus:
      008520 88               [ 1]  648 	push	a
                                    649 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 509: if (Channel < (uint8_t)8)
      008521 7B 04            [ 1]  650 	ld	a, (0x04, sp)
      008523 A1 08            [ 1]  651 	cp	a, #0x08
      008525 24 16            [ 1]  652 	jrnc	00102$
                                    653 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 511: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
      008527 C6 54 0D         [ 1]  654 	ld	a, 0x540d
      00852A 88               [ 1]  655 	push	a
      00852B A6 01            [ 1]  656 	ld	a, #0x01
      00852D 6B 02            [ 1]  657 	ld	(0x02, sp), a
      00852F 7B 05            [ 1]  658 	ld	a, (0x05, sp)
      008531 27 05            [ 1]  659 	jreq	00113$
      008533                        660 00112$:
      008533 08 02            [ 1]  661 	sll	(0x02, sp)
      008535 4A               [ 1]  662 	dec	a
      008536 26 FB            [ 1]  663 	jrne	00112$
      008538                        664 00113$:
      008538 84               [ 1]  665 	pop	a
      008539 14 01            [ 1]  666 	and	a, (0x01, sp)
      00853B 20 19            [ 2]  667 	jra	00103$
      00853D                        668 00102$:
                                    669 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 515: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
      00853D C6 54 0C         [ 1]  670 	ld	a, 0x540c
      008540 97               [ 1]  671 	ld	xl, a
      008541 7B 04            [ 1]  672 	ld	a, (0x04, sp)
      008543 A0 08            [ 1]  673 	sub	a, #0x08
      008545 88               [ 1]  674 	push	a
      008546 A6 01            [ 1]  675 	ld	a, #0x01
      008548 6B 02            [ 1]  676 	ld	(0x02, sp), a
      00854A 84               [ 1]  677 	pop	a
      00854B 4D               [ 1]  678 	tnz	a
      00854C 27 05            [ 1]  679 	jreq	00115$
      00854E                        680 00114$:
      00854E 08 01            [ 1]  681 	sll	(0x01, sp)
      008550 4A               [ 1]  682 	dec	a
      008551 26 FB            [ 1]  683 	jrne	00114$
      008553                        684 00115$:
      008553 9F               [ 1]  685 	ld	a, xl
      008554 14 01            [ 1]  686 	and	a, (0x01, sp)
      008556                        687 00103$:
                                    688 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 518: return ((FlagStatus)status);
                                    689 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 519: }
      008556 5B 01            [ 2]  690 	addw	sp, #1
      008558 81               [ 4]  691 	ret
                                    692 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 527: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                    693 ;	-----------------------------------------
                                    694 ;	 function ADC1_GetFlagStatus
                                    695 ;	-----------------------------------------
      008559                        696 _ADC1_GetFlagStatus:
      008559 89               [ 2]  697 	pushw	x
                                    698 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 535: if ((Flag & 0x0F) == 0x01)
      00855A 7B 05            [ 1]  699 	ld	a, (0x05, sp)
      00855C 6B 02            [ 1]  700 	ld	(0x02, sp), a
      00855E 0F 01            [ 1]  701 	clr	(0x01, sp)
      008560 88               [ 1]  702 	push	a
      008561 7B 03            [ 1]  703 	ld	a, (0x03, sp)
      008563 A4 0F            [ 1]  704 	and	a, #0x0f
      008565 97               [ 1]  705 	ld	xl, a
      008566 4F               [ 1]  706 	clr	a
      008567 95               [ 1]  707 	ld	xh, a
      008568 84               [ 1]  708 	pop	a
      008569 5A               [ 2]  709 	decw	x
      00856A 26 07            [ 1]  710 	jrne	00108$
                                    711 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 538: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      00856C C6 54 03         [ 1]  712 	ld	a, 0x5403
      00856F A4 40            [ 1]  713 	and	a, #0x40
      008571 20 49            [ 2]  714 	jra	00109$
      008573                        715 00108$:
                                    716 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 540: else if ((Flag & 0xF0) == 0x10)
      008573 7B 02            [ 1]  717 	ld	a, (0x02, sp)
      008575 A4 F0            [ 1]  718 	and	a, #0xf0
      008577 97               [ 1]  719 	ld	xl, a
      008578 4F               [ 1]  720 	clr	a
      008579 95               [ 1]  721 	ld	xh, a
      00857A A3 00 10         [ 2]  722 	cpw	x, #0x0010
      00857D 26 38            [ 1]  723 	jrne	00105$
                                    724 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 543: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      00857F 7B 05            [ 1]  725 	ld	a, (0x05, sp)
      008581 A4 0F            [ 1]  726 	and	a, #0x0f
                                    727 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 544: if (temp < 8)
      008583 97               [ 1]  728 	ld	xl, a
      008584 A1 08            [ 1]  729 	cp	a, #0x08
      008586 24 16            [ 1]  730 	jrnc	00102$
                                    731 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 546: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      008588 C6 54 0D         [ 1]  732 	ld	a, 0x540d
      00858B 6B 02            [ 1]  733 	ld	(0x02, sp), a
      00858D A6 01            [ 1]  734 	ld	a, #0x01
      00858F 88               [ 1]  735 	push	a
      008590 9F               [ 1]  736 	ld	a, xl
      008591 4D               [ 1]  737 	tnz	a
      008592 27 05            [ 1]  738 	jreq	00135$
      008594                        739 00134$:
      008594 08 01            [ 1]  740 	sll	(1, sp)
      008596 4A               [ 1]  741 	dec	a
      008597 26 FB            [ 1]  742 	jrne	00134$
      008599                        743 00135$:
      008599 84               [ 1]  744 	pop	a
      00859A 14 02            [ 1]  745 	and	a, (0x02, sp)
      00859C 20 1E            [ 2]  746 	jra	00109$
      00859E                        747 00102$:
                                    748 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 550: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00859E C6 54 0C         [ 1]  749 	ld	a, 0x540c
      0085A1 6B 02            [ 1]  750 	ld	(0x02, sp), a
      0085A3 1D 00 08         [ 2]  751 	subw	x, #8
      0085A6 A6 01            [ 1]  752 	ld	a, #0x01
      0085A8 88               [ 1]  753 	push	a
      0085A9 9F               [ 1]  754 	ld	a, xl
      0085AA 4D               [ 1]  755 	tnz	a
      0085AB 27 05            [ 1]  756 	jreq	00137$
      0085AD                        757 00136$:
      0085AD 08 01            [ 1]  758 	sll	(1, sp)
      0085AF 4A               [ 1]  759 	dec	a
      0085B0 26 FB            [ 1]  760 	jrne	00136$
      0085B2                        761 00137$:
      0085B2 84               [ 1]  762 	pop	a
      0085B3 14 02            [ 1]  763 	and	a, (0x02, sp)
      0085B5 20 05            [ 2]  764 	jra	00109$
      0085B7                        765 00105$:
                                    766 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 555: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      0085B7 C6 54 00         [ 1]  767 	ld	a, 0x5400
      0085BA 14 05            [ 1]  768 	and	a, (0x05, sp)
      0085BC                        769 00109$:
                                    770 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 557: return ((FlagStatus)flagstatus);
                                    771 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 559: }
      0085BC 85               [ 2]  772 	popw	x
      0085BD 81               [ 4]  773 	ret
                                    774 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 567: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                    775 ;	-----------------------------------------
                                    776 ;	 function ADC1_ClearFlag
                                    777 ;	-----------------------------------------
      0085BE                        778 _ADC1_ClearFlag:
      0085BE 89               [ 2]  779 	pushw	x
                                    780 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 574: if ((Flag & 0x0F) == 0x01)
      0085BF 7B 05            [ 1]  781 	ld	a, (0x05, sp)
      0085C1 6B 02            [ 1]  782 	ld	(0x02, sp), a
      0085C3 0F 01            [ 1]  783 	clr	(0x01, sp)
      0085C5 88               [ 1]  784 	push	a
      0085C6 7B 03            [ 1]  785 	ld	a, (0x03, sp)
      0085C8 A4 0F            [ 1]  786 	and	a, #0x0f
      0085CA 97               [ 1]  787 	ld	xl, a
      0085CB 4F               [ 1]  788 	clr	a
      0085CC 95               [ 1]  789 	ld	xh, a
      0085CD 84               [ 1]  790 	pop	a
      0085CE 5A               [ 2]  791 	decw	x
      0085CF 26 06            [ 1]  792 	jrne	00108$
                                    793 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 577: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      0085D1 72 1D 54 03      [ 1]  794 	bres	21507, #6
      0085D5 20 59            [ 2]  795 	jra	00110$
      0085D7                        796 00108$:
                                    797 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 579: else if ((Flag & 0xF0) == 0x10)
      0085D7 7B 02            [ 1]  798 	ld	a, (0x02, sp)
      0085D9 A4 F0            [ 1]  799 	and	a, #0xf0
      0085DB 97               [ 1]  800 	ld	xl, a
      0085DC 4F               [ 1]  801 	clr	a
      0085DD 95               [ 1]  802 	ld	xh, a
      0085DE A3 00 10         [ 2]  803 	cpw	x, #0x0010
      0085E1 26 40            [ 1]  804 	jrne	00105$
                                    805 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 582: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      0085E3 7B 05            [ 1]  806 	ld	a, (0x05, sp)
      0085E5 A4 0F            [ 1]  807 	and	a, #0x0f
                                    808 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 583: if (temp < 8)
      0085E7 97               [ 1]  809 	ld	xl, a
      0085E8 A1 08            [ 1]  810 	cp	a, #0x08
      0085EA 24 1A            [ 1]  811 	jrnc	00102$
                                    812 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 585: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      0085EC C6 54 0D         [ 1]  813 	ld	a, 0x540d
      0085EF 6B 02            [ 1]  814 	ld	(0x02, sp), a
      0085F1 A6 01            [ 1]  815 	ld	a, #0x01
      0085F3 88               [ 1]  816 	push	a
      0085F4 9F               [ 1]  817 	ld	a, xl
      0085F5 4D               [ 1]  818 	tnz	a
      0085F6 27 05            [ 1]  819 	jreq	00135$
      0085F8                        820 00134$:
      0085F8 08 01            [ 1]  821 	sll	(1, sp)
      0085FA 4A               [ 1]  822 	dec	a
      0085FB 26 FB            [ 1]  823 	jrne	00134$
      0085FD                        824 00135$:
      0085FD 84               [ 1]  825 	pop	a
      0085FE 43               [ 1]  826 	cpl	a
      0085FF 14 02            [ 1]  827 	and	a, (0x02, sp)
      008601 C7 54 0D         [ 1]  828 	ld	0x540d, a
      008604 20 2A            [ 2]  829 	jra	00110$
      008606                        830 00102$:
                                    831 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 589: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      008606 C6 54 0C         [ 1]  832 	ld	a, 0x540c
      008609 6B 02            [ 1]  833 	ld	(0x02, sp), a
      00860B 1D 00 08         [ 2]  834 	subw	x, #8
      00860E A6 01            [ 1]  835 	ld	a, #0x01
      008610 88               [ 1]  836 	push	a
      008611 9F               [ 1]  837 	ld	a, xl
      008612 4D               [ 1]  838 	tnz	a
      008613 27 05            [ 1]  839 	jreq	00137$
      008615                        840 00136$:
      008615 08 01            [ 1]  841 	sll	(1, sp)
      008617 4A               [ 1]  842 	dec	a
      008618 26 FB            [ 1]  843 	jrne	00136$
      00861A                        844 00137$:
      00861A 84               [ 1]  845 	pop	a
      00861B 43               [ 1]  846 	cpl	a
      00861C 14 02            [ 1]  847 	and	a, (0x02, sp)
      00861E C7 54 0C         [ 1]  848 	ld	0x540c, a
      008621 20 0D            [ 2]  849 	jra	00110$
      008623                        850 00105$:
                                    851 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 594: ADC1->CSR &= (uint8_t) (~Flag);
      008623 C6 54 00         [ 1]  852 	ld	a, 0x5400
      008626 6B 02            [ 1]  853 	ld	(0x02, sp), a
      008628 7B 05            [ 1]  854 	ld	a, (0x05, sp)
      00862A 43               [ 1]  855 	cpl	a
      00862B 14 02            [ 1]  856 	and	a, (0x02, sp)
      00862D C7 54 00         [ 1]  857 	ld	0x5400, a
      008630                        858 00110$:
                                    859 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 596: }
      008630 85               [ 2]  860 	popw	x
      008631 81               [ 4]  861 	ret
                                    862 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 616: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                    863 ;	-----------------------------------------
                                    864 ;	 function ADC1_GetITStatus
                                    865 ;	-----------------------------------------
      008632                        866 _ADC1_GetITStatus:
      008632 88               [ 1]  867 	push	a
                                    868 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      008633 7B 05            [ 1]  869 	ld	a, (0x05, sp)
      008635 A4 F0            [ 1]  870 	and	a, #0xf0
      008637 97               [ 1]  871 	ld	xl, a
      008638 4F               [ 1]  872 	clr	a
      008639 95               [ 1]  873 	ld	xh, a
                                    874 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00863A 7B 05            [ 1]  875 	ld	a, (0x05, sp)
                                    876 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00863C A3 00 10         [ 2]  877 	cpw	x, #0x0010
      00863F 26 36            [ 1]  878 	jrne	00105$
                                    879 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      008641 A4 0F            [ 1]  880 	and	a, #0x0f
                                    881 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 628: if (temp < 8)
      008643 97               [ 1]  882 	ld	xl, a
      008644 A1 08            [ 1]  883 	cp	a, #0x08
      008646 24 16            [ 1]  884 	jrnc	00102$
                                    885 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 630: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      008648 C6 54 0D         [ 1]  886 	ld	a, 0x540d
      00864B 88               [ 1]  887 	push	a
      00864C A6 01            [ 1]  888 	ld	a, #0x01
      00864E 6B 02            [ 1]  889 	ld	(0x02, sp), a
      008650 9F               [ 1]  890 	ld	a, xl
      008651 4D               [ 1]  891 	tnz	a
      008652 27 05            [ 1]  892 	jreq	00124$
      008654                        893 00123$:
      008654 08 02            [ 1]  894 	sll	(0x02, sp)
      008656 4A               [ 1]  895 	dec	a
      008657 26 FB            [ 1]  896 	jrne	00123$
      008659                        897 00124$:
      008659 84               [ 1]  898 	pop	a
      00865A 14 01            [ 1]  899 	and	a, (0x01, sp)
      00865C 20 23            [ 2]  900 	jra	00106$
      00865E                        901 00102$:
                                    902 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 634: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00865E C6 54 0C         [ 1]  903 	ld	a, 0x540c
      008661 6B 01            [ 1]  904 	ld	(0x01, sp), a
      008663 1D 00 08         [ 2]  905 	subw	x, #8
      008666 A6 01            [ 1]  906 	ld	a, #0x01
      008668 88               [ 1]  907 	push	a
      008669 9F               [ 1]  908 	ld	a, xl
      00866A 4D               [ 1]  909 	tnz	a
      00866B 27 05            [ 1]  910 	jreq	00126$
      00866D                        911 00125$:
      00866D 08 01            [ 1]  912 	sll	(1, sp)
      00866F 4A               [ 1]  913 	dec	a
      008670 26 FB            [ 1]  914 	jrne	00125$
      008672                        915 00126$:
      008672 84               [ 1]  916 	pop	a
      008673 14 01            [ 1]  917 	and	a, (0x01, sp)
      008675 20 0A            [ 2]  918 	jra	00106$
      008677                        919 00105$:
                                    920 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 639: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
      008677 AE 54 00         [ 2]  921 	ldw	x, #0x5400
      00867A 88               [ 1]  922 	push	a
      00867B F6               [ 1]  923 	ld	a, (x)
      00867C 6B 02            [ 1]  924 	ld	(0x02, sp), a
      00867E 84               [ 1]  925 	pop	a
      00867F 14 01            [ 1]  926 	and	a, (0x01, sp)
      008681                        927 00106$:
                                    928 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 641: return ((ITStatus)itstatus);
                                    929 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 642: }
      008681 5B 01            [ 2]  930 	addw	sp, #1
      008683 81               [ 4]  931 	ret
                                    932 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 662: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                    933 ;	-----------------------------------------
                                    934 ;	 function ADC1_ClearITPendingBit
                                    935 ;	-----------------------------------------
      008684                        936 _ADC1_ClearITPendingBit:
      008684 88               [ 1]  937 	push	a
                                    938 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 669: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      008685 7B 05            [ 1]  939 	ld	a, (0x05, sp)
      008687 A4 F0            [ 1]  940 	and	a, #0xf0
      008689 97               [ 1]  941 	ld	xl, a
      00868A 4F               [ 1]  942 	clr	a
      00868B 95               [ 1]  943 	ld	xh, a
      00868C A3 00 10         [ 2]  944 	cpw	x, #0x0010
      00868F 26 40            [ 1]  945 	jrne	00105$
                                    946 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 672: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      008691 7B 05            [ 1]  947 	ld	a, (0x05, sp)
      008693 A4 0F            [ 1]  948 	and	a, #0x0f
                                    949 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 673: if (temp < 8)
      008695 97               [ 1]  950 	ld	xl, a
      008696 A1 08            [ 1]  951 	cp	a, #0x08
      008698 24 1A            [ 1]  952 	jrnc	00102$
                                    953 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 675: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      00869A C6 54 0D         [ 1]  954 	ld	a, 0x540d
      00869D 6B 01            [ 1]  955 	ld	(0x01, sp), a
      00869F A6 01            [ 1]  956 	ld	a, #0x01
      0086A1 88               [ 1]  957 	push	a
      0086A2 9F               [ 1]  958 	ld	a, xl
      0086A3 4D               [ 1]  959 	tnz	a
      0086A4 27 05            [ 1]  960 	jreq	00124$
      0086A6                        961 00123$:
      0086A6 08 01            [ 1]  962 	sll	(1, sp)
      0086A8 4A               [ 1]  963 	dec	a
      0086A9 26 FB            [ 1]  964 	jrne	00123$
      0086AB                        965 00124$:
      0086AB 84               [ 1]  966 	pop	a
      0086AC 43               [ 1]  967 	cpl	a
      0086AD 14 01            [ 1]  968 	and	a, (0x01, sp)
      0086AF C7 54 0D         [ 1]  969 	ld	0x540d, a
      0086B2 20 2A            [ 2]  970 	jra	00107$
      0086B4                        971 00102$:
                                    972 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 679: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      0086B4 C6 54 0C         [ 1]  973 	ld	a, 0x540c
      0086B7 6B 01            [ 1]  974 	ld	(0x01, sp), a
      0086B9 1D 00 08         [ 2]  975 	subw	x, #8
      0086BC A6 01            [ 1]  976 	ld	a, #0x01
      0086BE 88               [ 1]  977 	push	a
      0086BF 9F               [ 1]  978 	ld	a, xl
      0086C0 4D               [ 1]  979 	tnz	a
      0086C1 27 05            [ 1]  980 	jreq	00126$
      0086C3                        981 00125$:
      0086C3 08 01            [ 1]  982 	sll	(1, sp)
      0086C5 4A               [ 1]  983 	dec	a
      0086C6 26 FB            [ 1]  984 	jrne	00125$
      0086C8                        985 00126$:
      0086C8 84               [ 1]  986 	pop	a
      0086C9 43               [ 1]  987 	cpl	a
      0086CA 14 01            [ 1]  988 	and	a, (0x01, sp)
      0086CC C7 54 0C         [ 1]  989 	ld	0x540c, a
      0086CF 20 0D            [ 2]  990 	jra	00107$
      0086D1                        991 00105$:
                                    992 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 684: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
      0086D1 C6 54 00         [ 1]  993 	ld	a, 0x5400
      0086D4 1E 04            [ 2]  994 	ldw	x, (0x04, sp)
      0086D6 53               [ 2]  995 	cplw	x
      0086D7 89               [ 2]  996 	pushw	x
      0086D8 14 02            [ 1]  997 	and	a, (2, sp)
      0086DA 85               [ 2]  998 	popw	x
      0086DB C7 54 00         [ 1]  999 	ld	0x5400, a
      0086DE                       1000 00107$:
                                   1001 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_adc1.c: 686: }
      0086DE 84               [ 1] 1002 	pop	a
      0086DF 81               [ 4] 1003 	ret
                                   1004 	.area CODE
                                   1005 	.area CONST
                                   1006 	.area INITIALIZER
                                   1007 	.area CABS (ABS)
