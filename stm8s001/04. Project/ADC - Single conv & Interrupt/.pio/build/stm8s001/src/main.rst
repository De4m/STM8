                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _printf
                                     13 	.globl _UART1_GetFlagStatus
                                     14 	.globl _UART1_SendData8
                                     15 	.globl _UART1_ReceiveData8
                                     16 	.globl _UART1_Init
                                     17 	.globl _UART1_DeInit
                                     18 	.globl _GPIO_Init
                                     19 	.globl _FLASH_WaitForLastOperation
                                     20 	.globl _FLASH_ProgramOptionByte
                                     21 	.globl _FLASH_ReadByte
                                     22 	.globl _FLASH_Unlock
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _ADC1_StartConversion
                                     25 	.globl _ADC1_ITConfig
                                     26 	.globl _ADC1_Init
                                     27 	.globl _ADC1_DeInit
                                     28 	.globl _EndConversion
                                     29 	.globl _Conversion_Value
                                     30 	.globl _ADC_RegStatus_print
                                     31 	.globl _putchar
                                     32 	.globl _getchar
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DATA
      000001                         37 _Conversion_Value::
      000001                         38 	.ds 2
      000003                         39 _EndConversion::
      000003                         40 	.ds 1
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; Stack segment in internal ram 
                                     47 ;--------------------------------------------------------
                                     48 	.area	SSEG
      FFFFFF                         49 __start__stack:
      FFFFFF                         50 	.ds	1
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; absolute external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area DABS (ABS)
                                     56 
                                     57 ; default segment ordering for linker
                                     58 	.area HOME
                                     59 	.area GSINIT
                                     60 	.area GSFINAL
                                     61 	.area CONST
                                     62 	.area INITIALIZER
                                     63 	.area CODE
                                     64 
                                     65 ;--------------------------------------------------------
                                     66 ; interrupt vector 
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
      008000                         69 __interrupt_vect:
      008000 82 00 80 6F             70 	int s_GSINIT ; reset
      008004 82 00 93 CB             71 	int _TRAP_IRQHandler ; trap
      008008 82 00 93 CC             72 	int _TLI_IRQHandler ; int0
      00800C 82 00 93 CD             73 	int _AWU_IRQHandler ; int1
      008010 82 00 93 CE             74 	int _CLK_IRQHandler ; int2
      008014 82 00 93 CF             75 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 93 D0             76 	int _EXTI_PORTB_IRQHandler ; int4
      00801C 82 00 93 D1             77 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 93 D2             78 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 93 D3             79 	int _EXTI_PORTE_IRQHandler ; int7
      008028 82 00 00 00             80 	int 0x000000 ; int8
      00802C 82 00 00 00             81 	int 0x000000 ; int9
      008030 82 00 93 D4             82 	int _SPI_IRQHandler ; int10
      008034 82 00 93 D5             83 	int _TIM1_UPD_OVF_TRG_BRK_IRQHandler ; int11
      008038 82 00 93 D6             84 	int _TIM1_CAP_COM_IRQHandler ; int12
      00803C 82 00 93 D7             85 	int _TIM2_UPD_OVF_BRK_IRQHandler ; int13
      008040 82 00 93 D8             86 	int _TIM2_CAP_COM_IRQHandler ; int14
      008044 82 00 00 00             87 	int 0x000000 ; int15
      008048 82 00 00 00             88 	int 0x000000 ; int16
      00804C 82 00 93 D9             89 	int _UART1_TX_IRQHandler ; int17
      008050 82 00 93 DA             90 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 93 DB             91 	int _I2C_IRQHandler ; int19
      008058 82 00 00 00             92 	int 0x000000 ; int20
      00805C 82 00 00 00             93 	int 0x000000 ; int21
      008060 82 00 93 DC             94 	int _ADC1_IRQHandler ; int22
      008064 82 00 93 F0             95 	int _TIM4_UPD_OVF_IRQHandler ; int23
      008068 82 00 93 F1             96 	int _EEPROM_EEC_IRQHandler ; int24
                                     97 ;--------------------------------------------------------
                                     98 ; global & static initialisations
                                     99 ;--------------------------------------------------------
                                    100 	.area HOME
                                    101 	.area GSINIT
                                    102 	.area GSFINAL
                                    103 	.area GSINIT
      00806F                        104 __sdcc_gs_init_startup:
      00806F                        105 __sdcc_init_data:
                                    106 ; stm8_genXINIT() start
      00806F AE 00 03         [ 2]  107 	ldw x, #l_DATA
      008072 27 07            [ 1]  108 	jreq	00002$
      008074                        109 00001$:
      008074 72 4F 00 00      [ 1]  110 	clr (s_DATA - 1, x)
      008078 5A               [ 2]  111 	decw x
      008079 26 F9            [ 1]  112 	jrne	00001$
      00807B                        113 00002$:
      00807B AE 00 00         [ 2]  114 	ldw	x, #l_INITIALIZER
      00807E 27 09            [ 1]  115 	jreq	00004$
      008080                        116 00003$:
      008080 D6 82 79         [ 1]  117 	ld	a, (s_INITIALIZER - 1, x)
      008083 D7 00 03         [ 1]  118 	ld	(s_INITIALIZED - 1, x), a
      008086 5A               [ 2]  119 	decw	x
      008087 26 F7            [ 1]  120 	jrne	00003$
      008089                        121 00004$:
                                    122 ; stm8_genXINIT() end
                                    123 	.area GSFINAL
      008089 CC 80 6C         [ 2]  124 	jp	__sdcc_program_startup
                                    125 ;--------------------------------------------------------
                                    126 ; Home
                                    127 ;--------------------------------------------------------
                                    128 	.area HOME
                                    129 	.area HOME
      00806C                        130 __sdcc_program_startup:
      00806C CC 92 4D         [ 2]  131 	jp	_main
                                    132 ;	return from main will return to caller
                                    133 ;--------------------------------------------------------
                                    134 ; code
                                    135 ;--------------------------------------------------------
                                    136 	.area CODE
                                    137 ;	src/main.c: 53: void main(void)
                                    138 ;	-----------------------------------------
                                    139 ;	 function main
                                    140 ;	-----------------------------------------
      00924D                        141 _main:
                                    142 ;	src/main.c: 69: __endasm;
      00924D 89               [ 2]  143 	pushw	x
      00924E 88               [ 1]  144 	push	a
      00924F AE FF FF         [ 2]  145 	ldw	x, #0xFFFF
      009252                        146 	      loop1:
      009252 A6 32            [ 1]  147 	ld a, #50
      009254                        148 	      loop2:
      009254 4A               [ 1]  149 	dec a
      009255 26 FD            [ 1]  150 	jrne	loop2
      009257 5A               [ 2]  151 	decw	x
      009258 26 F8            [ 1]  152 	jrne	loop1
      00925A 84               [ 1]  153 	pop	a
      00925B 85               [ 2]  154 	popw	x
                                    155 ;	src/main.c: 73: OPT_Config();
      00925C CD 92 B8         [ 4]  156 	call	_OPT_Config
                                    157 ;	src/main.c: 75: GPIO_Config();
      00925F CD 92 E0         [ 4]  158 	call	_GPIO_Config
                                    159 ;	src/main.c: 77: UART_Config();
      009262 CD 92 E1         [ 4]  160 	call	_UART_Config
                                    161 ;	src/main.c: 79: ADC_Config();
      009265 CD 93 02         [ 4]  162 	call	_ADC_Config
                                    163 ;	src/main.c: 82: printf("\n\r\n\r\n\r\n\r\n\r");  
      009268 4B 98            [ 1]  164 	push	#<(___str_0 + 0)
      00926A 4B 80            [ 1]  165 	push	#((___str_0 + 0) >> 8)
      00926C CD 94 69         [ 4]  166 	call	_printf
      00926F 85               [ 2]  167 	popw	x
                                    168 ;	src/main.c: 83: printf("\n\r================================    STM8S001    ===============================");
      009270 4B A3            [ 1]  169 	push	#<(___str_1 + 0)
      009272 4B 80            [ 1]  170 	push	#((___str_1 + 0) >> 8)
      009274 CD 94 69         [ 4]  171 	call	_printf
      009277 85               [ 2]  172 	popw	x
                                    173 ;	src/main.c: 84: printf("\n\r=  ACD Example : Single conversion with interrupt                             =");           
      009278 4B F5            [ 1]  174 	push	#<(___str_2 + 0)
      00927A 4B 80            [ 1]  175 	push	#((___str_2 + 0) >> 8)
      00927C CD 94 69         [ 4]  176 	call	_printf
      00927F 85               [ 2]  177 	popw	x
                                    178 ;	src/main.c: 85: printf("\n\r=                                                                             =");
      009280 4B 47            [ 1]  179 	push	#<(___str_3 + 0)
      009282 4B 81            [ 1]  180 	push	#((___str_3 + 0) >> 8)
      009284 CD 94 69         [ 4]  181 	call	_printf
      009287 85               [ 2]  182 	popw	x
                                    183 ;	src/main.c: 86: printf("\n\r===============================================================================");
      009288 4B 99            [ 1]  184 	push	#<(___str_4 + 0)
      00928A 4B 81            [ 1]  185 	push	#((___str_4 + 0) >> 8)
      00928C CD 94 69         [ 4]  186 	call	_printf
      00928F 85               [ 2]  187 	popw	x
                                    188 ;	src/main.c: 90: while (1)
      009290                        189 00104$:
                                    190 ;	src/main.c: 93: if (EndConversion&1) //
      009290 C6 00 03         [ 1]  191 	ld	a, _EndConversion+0
      009293 44               [ 1]  192 	srl	a
      009294 24 FA            [ 1]  193 	jrnc	00104$
                                    194 ;	src/main.c: 95: printf("\n\rADC result:%x",Conversion_Value);
      009296 CE 00 01         [ 2]  195 	ldw	x, _Conversion_Value+0
      009299 89               [ 2]  196 	pushw	x
      00929A 4B EB            [ 1]  197 	push	#<(___str_5 + 0)
      00929C 4B 81            [ 1]  198 	push	#((___str_5 + 0) >> 8)
      00929E CD 94 69         [ 4]  199 	call	_printf
      0092A1 5B 04            [ 2]  200 	addw	sp, #4
                                    201 ;	src/main.c: 96: EndConversion=0;
      0092A3 72 5F 00 03      [ 1]  202 	clr	_EndConversion+0
                                    203 ;	src/main.c: 97: ADC1_ITConfig(ADC1_IT_EOCIE ,ENABLE);
      0092A7 4B 01            [ 1]  204 	push	#0x01
      0092A9 4B 20            [ 1]  205 	push	#0x20
      0092AB 4B 00            [ 1]  206 	push	#0x00
      0092AD CD 83 12         [ 4]  207 	call	_ADC1_ITConfig
      0092B0 5B 03            [ 2]  208 	addw	sp, #3
                                    209 ;	src/main.c: 98: ADC1_StartConversion();
      0092B2 CD 84 14         [ 4]  210 	call	_ADC1_StartConversion
      0092B5 20 D9            [ 2]  211 	jra	00104$
                                    212 ;	src/main.c: 103: } 
      0092B7 81               [ 4]  213 	ret
                                    214 ;	src/main.c: 105: void OPT_Config()
                                    215 ;	-----------------------------------------
                                    216 ;	 function OPT_Config
                                    217 ;	-----------------------------------------
      0092B8                        218 _OPT_Config:
                                    219 ;	src/main.c: 108: if(FLASH_ReadByte(OPT_Address) & 0x04) 
      0092B8 4B 03            [ 1]  220 	push	#0x03
      0092BA 4B 48            [ 1]  221 	push	#0x48
      0092BC 5F               [ 1]  222 	clrw	x
      0092BD 89               [ 2]  223 	pushw	x
      0092BE CD 8B 63         [ 4]  224 	call	_FLASH_ReadByte
      0092C1 5B 04            [ 2]  225 	addw	sp, #4
      0092C3 A5 04            [ 1]  226 	bcp	a, #0x04
      0092C5 26 01            [ 1]  227 	jrne	00110$
      0092C7 81               [ 4]  228 	ret
      0092C8                        229 00110$:
                                    230 ;	src/main.c: 110: FLASH_Unlock(FLASH_MEMTYPE_DATA); 
      0092C8 4B F7            [ 1]  231 	push	#0xf7
      0092CA CD 8B 0D         [ 4]  232 	call	_FLASH_Unlock
      0092CD 84               [ 1]  233 	pop	a
                                    234 ;	src/main.c: 112: FLASH_ProgramOptionByte(OPT_Address,4);             /* Enable [AIN2] */ 
      0092CE 4B 04            [ 1]  235 	push	#0x04
      0092D0 4B 03            [ 1]  236 	push	#0x03
      0092D2 4B 48            [ 1]  237 	push	#0x48
      0092D4 CD 8B A0         [ 4]  238 	call	_FLASH_ProgramOptionByte
      0092D7 5B 03            [ 2]  239 	addw	sp, #3
                                    240 ;	src/main.c: 113: FLASH_WaitForLastOperation(FLASH_MEMTYPE_DATA); 
      0092D9 4B F7            [ 1]  241 	push	#0xf7
      0092DB CD 8C 96         [ 4]  242 	call	_FLASH_WaitForLastOperation
      0092DE 84               [ 1]  243 	pop	a
                                    244 ;	src/main.c: 115: }
      0092DF 81               [ 4]  245 	ret
                                    246 ;	src/main.c: 117: void GPIO_Config()
                                    247 ;	-----------------------------------------
                                    248 ;	 function GPIO_Config
                                    249 ;	-----------------------------------------
      0092E0                        250 _GPIO_Config:
                                    251 ;	src/main.c: 121: }
      0092E0 81               [ 4]  252 	ret
                                    253 ;	src/main.c: 123: void UART_Config(void)
                                    254 ;	-----------------------------------------
                                    255 ;	 function UART_Config
                                    256 ;	-----------------------------------------
      0092E1                        257 _UART_Config:
                                    258 ;	src/main.c: 126: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      0092E1 4B 00            [ 1]  259 	push	#0x00
      0092E3 CD 88 92         [ 4]  260 	call	_CLK_HSIPrescalerConfig
      0092E6 84               [ 1]  261 	pop	a
                                    262 ;	src/main.c: 136: UART1_DeInit();
      0092E7 CD 8E 31         [ 4]  263 	call	_UART1_DeInit
                                    264 ;	src/main.c: 137: UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
      0092EA 4B 0C            [ 1]  265 	push	#0x0c
      0092EC 4B 80            [ 1]  266 	push	#0x80
      0092EE 4B 00            [ 1]  267 	push	#0x00
      0092F0 4B 00            [ 1]  268 	push	#0x00
      0092F2 4B 00            [ 1]  269 	push	#0x00
      0092F4 4B 00            [ 1]  270 	push	#0x00
      0092F6 4B C2            [ 1]  271 	push	#0xc2
      0092F8 4B 01            [ 1]  272 	push	#0x01
      0092FA 4B 00            [ 1]  273 	push	#0x00
      0092FC CD 8E 5C         [ 4]  274 	call	_UART1_Init
      0092FF 5B 09            [ 2]  275 	addw	sp, #9
                                    276 ;	src/main.c: 140: }
      009301 81               [ 4]  277 	ret
                                    278 ;	src/main.c: 142: void ADC_Config()
                                    279 ;	-----------------------------------------
                                    280 ;	 function ADC_Config
                                    281 ;	-----------------------------------------
      009302                        282 _ADC_Config:
                                    283 ;	src/main.c: 146: GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_FL_NO_IT);
      009302 4B 00            [ 1]  284 	push	#0x00
      009304 4B 10            [ 1]  285 	push	#0x10
      009306 4B 0A            [ 1]  286 	push	#0x0a
      009308 4B 50            [ 1]  287 	push	#0x50
      00930A CD 8D 6E         [ 4]  288 	call	_GPIO_Init
      00930D 5B 04            [ 2]  289 	addw	sp, #4
                                    290 ;	src/main.c: 149: ADC1_DeInit();
      00930F CD 82 7A         [ 4]  291 	call	_ADC1_DeInit
                                    292 ;	src/main.c: 152: ADC1_Init(ADC1_CONVERSIONMODE_SINGLE, ADC1_CHANNEL_2, ADC1_PRESSEL_FCPU_D8, \
      009312 4B 00            [ 1]  293 	push	#0x00
      009314 4B 02            [ 1]  294 	push	#0x02
      009316 4B 08            [ 1]  295 	push	#0x08
      009318 4B 00            [ 1]  296 	push	#0x00
      00931A 4B 00            [ 1]  297 	push	#0x00
      00931C 4B 40            [ 1]  298 	push	#0x40
      00931E 4B 02            [ 1]  299 	push	#0x02
      009320 4B 00            [ 1]  300 	push	#0x00
      009322 CD 82 AB         [ 4]  301 	call	_ADC1_Init
      009325 5B 08            [ 2]  302 	addw	sp, #8
                                    303 ;	src/main.c: 157: ADC1_ITConfig(ADC1_IT_EOCIE ,ENABLE);
      009327 4B 01            [ 1]  304 	push	#0x01
      009329 4B 20            [ 1]  305 	push	#0x20
      00932B 4B 00            [ 1]  306 	push	#0x00
      00932D CD 83 12         [ 4]  307 	call	_ADC1_ITConfig
      009330 5B 03            [ 2]  308 	addw	sp, #3
                                    309 ;	src/main.c: 160: enableInterrupts();
      009332 9A               [ 1]  310 	rim
                                    311 ;	src/main.c: 163: ADC1_StartConversion();
                                    312 ;	src/main.c: 165: }
      009333 CC 84 14         [ 2]  313 	jp	_ADC1_StartConversion
                                    314 ;	src/main.c: 167: void ADC_RegStatus_print(int num)
                                    315 ;	-----------------------------------------
                                    316 ;	 function ADC_RegStatus_print
                                    317 ;	-----------------------------------------
      009336                        318 _ADC_RegStatus_print:
                                    319 ;	src/main.c: 171: printf("\n\r=========== %x",num) ; 
      009336 1E 03            [ 2]  320 	ldw	x, (0x03, sp)
      009338 89               [ 2]  321 	pushw	x
      009339 4B FB            [ 1]  322 	push	#<(___str_6 + 0)
      00933B 4B 81            [ 1]  323 	push	#((___str_6 + 0) >> 8)
      00933D CD 94 69         [ 4]  324 	call	_printf
      009340 5B 04            [ 2]  325 	addw	sp, #4
                                    326 ;	src/main.c: 172: tmp = ADC1->CSR;
      009342 C6 54 00         [ 1]  327 	ld	a, 0x5400
      009345 5F               [ 1]  328 	clrw	x
      009346 97               [ 1]  329 	ld	xl, a
                                    330 ;	src/main.c: 173: printf ("\n\rADC1->CSR: %x",tmp);
      009347 89               [ 2]  331 	pushw	x
      009348 4B 0C            [ 1]  332 	push	#<(___str_7 + 0)
      00934A 4B 82            [ 1]  333 	push	#((___str_7 + 0) >> 8)
      00934C CD 94 69         [ 4]  334 	call	_printf
      00934F 5B 04            [ 2]  335 	addw	sp, #4
                                    336 ;	src/main.c: 174: tmp = ADC1->CR1;
      009351 C6 54 01         [ 1]  337 	ld	a, 0x5401
      009354 5F               [ 1]  338 	clrw	x
      009355 97               [ 1]  339 	ld	xl, a
                                    340 ;	src/main.c: 175: printf ("\n\rADC1->CR1: %x",tmp);
      009356 89               [ 2]  341 	pushw	x
      009357 4B 1C            [ 1]  342 	push	#<(___str_8 + 0)
      009359 4B 82            [ 1]  343 	push	#((___str_8 + 0) >> 8)
      00935B CD 94 69         [ 4]  344 	call	_printf
      00935E 5B 04            [ 2]  345 	addw	sp, #4
                                    346 ;	src/main.c: 176: tmp = ADC1->CR2;
      009360 C6 54 02         [ 1]  347 	ld	a, 0x5402
      009363 5F               [ 1]  348 	clrw	x
      009364 97               [ 1]  349 	ld	xl, a
                                    350 ;	src/main.c: 177: printf ("\n\rADC1->CR2: %x",tmp);
      009365 89               [ 2]  351 	pushw	x
      009366 4B 2C            [ 1]  352 	push	#<(___str_9 + 0)
      009368 4B 82            [ 1]  353 	push	#((___str_9 + 0) >> 8)
      00936A CD 94 69         [ 4]  354 	call	_printf
      00936D 5B 04            [ 2]  355 	addw	sp, #4
                                    356 ;	src/main.c: 178: tmp = ADC1->CR3;
      00936F C6 54 03         [ 1]  357 	ld	a, 0x5403
      009372 5F               [ 1]  358 	clrw	x
      009373 97               [ 1]  359 	ld	xl, a
                                    360 ;	src/main.c: 179: printf ("\n\rADC1->CR3: %x",tmp);   
      009374 89               [ 2]  361 	pushw	x
      009375 4B 3C            [ 1]  362 	push	#<(___str_10 + 0)
      009377 4B 82            [ 1]  363 	push	#((___str_10 + 0) >> 8)
      009379 CD 94 69         [ 4]  364 	call	_printf
      00937C 5B 04            [ 2]  365 	addw	sp, #4
                                    366 ;	src/main.c: 180: tmp = ADC1->DRH;
      00937E C6 54 04         [ 1]  367 	ld	a, 0x5404
      009381 5F               [ 1]  368 	clrw	x
      009382 97               [ 1]  369 	ld	xl, a
                                    370 ;	src/main.c: 181: printf ("\n\rADC1->DRH: %x",tmp);   
      009383 89               [ 2]  371 	pushw	x
      009384 4B 4C            [ 1]  372 	push	#<(___str_11 + 0)
      009386 4B 82            [ 1]  373 	push	#((___str_11 + 0) >> 8)
      009388 CD 94 69         [ 4]  374 	call	_printf
      00938B 5B 04            [ 2]  375 	addw	sp, #4
                                    376 ;	src/main.c: 182: tmp = ADC1->DRL;
      00938D C6 54 05         [ 1]  377 	ld	a, 0x5405
      009390 5F               [ 1]  378 	clrw	x
      009391 97               [ 1]  379 	ld	xl, a
                                    380 ;	src/main.c: 183: printf ("\n\rADC1->DRL: %x",tmp); 
      009392 89               [ 2]  381 	pushw	x
      009393 4B 5C            [ 1]  382 	push	#<(___str_12 + 0)
      009395 4B 82            [ 1]  383 	push	#((___str_12 + 0) >> 8)
      009397 CD 94 69         [ 4]  384 	call	_printf
      00939A 5B 04            [ 2]  385 	addw	sp, #4
                                    386 ;	src/main.c: 184: printf("\n\r") ; 
      00939C 4B 6C            [ 1]  387 	push	#<(___str_13 + 0)
      00939E 4B 82            [ 1]  388 	push	#((___str_13 + 0) >> 8)
      0093A0 CD 94 69         [ 4]  389 	call	_printf
      0093A3 85               [ 2]  390 	popw	x
                                    391 ;	src/main.c: 185: }
      0093A4 81               [ 4]  392 	ret
                                    393 ;	src/main.c: 194: PUTCHAR_PROTOTYPE
                                    394 ;	-----------------------------------------
                                    395 ;	 function putchar
                                    396 ;	-----------------------------------------
      0093A5                        397 _putchar:
                                    398 ;	src/main.c: 197: UART1_SendData8(c);
      0093A5 7B 04            [ 1]  399 	ld	a, (0x04, sp)
      0093A7 88               [ 1]  400 	push	a
      0093A8 CD 91 2B         [ 4]  401 	call	_UART1_SendData8
      0093AB 84               [ 1]  402 	pop	a
                                    403 ;	src/main.c: 199: while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
      0093AC                        404 00101$:
      0093AC 4B 80            [ 1]  405 	push	#0x80
      0093AE 4B 00            [ 1]  406 	push	#0x00
      0093B0 CD 91 73         [ 4]  407 	call	_UART1_GetFlagStatus
      0093B3 85               [ 2]  408 	popw	x
      0093B4 4D               [ 1]  409 	tnz	a
      0093B5 27 F5            [ 1]  410 	jreq	00101$
                                    411 ;	src/main.c: 201: return (c);
      0093B7 1E 03            [ 2]  412 	ldw	x, (0x03, sp)
                                    413 ;	src/main.c: 202: }
      0093B9 81               [ 4]  414 	ret
                                    415 ;	src/main.c: 209: GETCHAR_PROTOTYPE
                                    416 ;	-----------------------------------------
                                    417 ;	 function getchar
                                    418 ;	-----------------------------------------
      0093BA                        419 _getchar:
                                    420 ;	src/main.c: 217: while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
      0093BA                        421 00101$:
      0093BA 4B 20            [ 1]  422 	push	#0x20
      0093BC 4B 00            [ 1]  423 	push	#0x00
      0093BE CD 91 73         [ 4]  424 	call	_UART1_GetFlagStatus
      0093C1 85               [ 2]  425 	popw	x
      0093C2 4D               [ 1]  426 	tnz	a
      0093C3 27 F5            [ 1]  427 	jreq	00101$
                                    428 ;	src/main.c: 218: c = UART1_ReceiveData8();
      0093C5 CD 91 0A         [ 4]  429 	call	_UART1_ReceiveData8
      0093C8 5F               [ 1]  430 	clrw	x
      0093C9 97               [ 1]  431 	ld	xl, a
                                    432 ;	src/main.c: 219: return (c);
                                    433 ;	src/main.c: 220: }
      0093CA 81               [ 4]  434 	ret
                                    435 	.area CODE
                                    436 	.area CONST
      008098                        437 ___str_0:
      008098 0A                     438 	.db 0x0a
      008099 0D                     439 	.db 0x0d
      00809A 0A                     440 	.db 0x0a
      00809B 0D                     441 	.db 0x0d
      00809C 0A                     442 	.db 0x0a
      00809D 0D                     443 	.db 0x0d
      00809E 0A                     444 	.db 0x0a
      00809F 0D                     445 	.db 0x0d
      0080A0 0A                     446 	.db 0x0a
      0080A1 0D                     447 	.db 0x0d
      0080A2 00                     448 	.db 0x00
      0080A3                        449 ___str_1:
      0080A3 0A                     450 	.db 0x0a
      0080A4 0D                     451 	.db 0x0d
      0080A5 3D 3D 3D 3D 3D 3D 3D   452 	.ascii "================================    STM8S001    ============"
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 20 20 20
             20 53 54 4D 38 53 30
             30 31 20 20 20 20 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D
      0080E1 3D 3D 3D 3D 3D 3D 3D   453 	.ascii "==================="
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D
      0080F4 00                     454 	.db 0x00
      0080F5                        455 ___str_2:
      0080F5 0A                     456 	.db 0x0a
      0080F6 0D                     457 	.db 0x0d
      0080F7 3D 20 20 41 43 44 20   458 	.ascii "=  ACD Example : Single conversion with interrupt           "
             45 78 61 6D 70 6C 65
             20 3A 20 53 69 6E 67
             6C 65 20 63 6F 6E 76
             65 72 73 69 6F 6E 20
             77 69 74 68 20 69 6E
             74 65 72 72 75 70 74
             20 20 20 20 20 20 20
             20 20 20 20
      008133 20 20 20 20 20 20 20   459 	.ascii "                  ="
             20 20 20 20 20 20 20
             20 20 20 20 3D
      008146 00                     460 	.db 0x00
      008147                        461 ___str_3:
      008147 0A                     462 	.db 0x0a
      008148 0D                     463 	.db 0x0d
      008149 3D 20 20 20 20 20 20   464 	.ascii "=                                                           "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      008185 20 20 20 20 20 20 20   465 	.ascii "                  ="
             20 20 20 20 20 20 20
             20 20 20 20 3D
      008198 00                     466 	.db 0x00
      008199                        467 ___str_4:
      008199 0A                     468 	.db 0x0a
      00819A 0D                     469 	.db 0x0d
      00819B 3D 3D 3D 3D 3D 3D 3D   470 	.ascii "============================================================"
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D
      0081D7 3D 3D 3D 3D 3D 3D 3D   471 	.ascii "==================="
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D
      0081EA 00                     472 	.db 0x00
      0081EB                        473 ___str_5:
      0081EB 0A                     474 	.db 0x0a
      0081EC 0D                     475 	.db 0x0d
      0081ED 41 44 43 20 72 65 73   476 	.ascii "ADC result:%x"
             75 6C 74 3A 25 78
      0081FA 00                     477 	.db 0x00
      0081FB                        478 ___str_6:
      0081FB 0A                     479 	.db 0x0a
      0081FC 0D                     480 	.db 0x0d
      0081FD 3D 3D 3D 3D 3D 3D 3D   481 	.ascii "=========== %x"
             3D 3D 3D 3D 20 25 78
      00820B 00                     482 	.db 0x00
      00820C                        483 ___str_7:
      00820C 0A                     484 	.db 0x0a
      00820D 0D                     485 	.db 0x0d
      00820E 41 44 43 31 2D 3E 43   486 	.ascii "ADC1->CSR: %x"
             53 52 3A 20 25 78
      00821B 00                     487 	.db 0x00
      00821C                        488 ___str_8:
      00821C 0A                     489 	.db 0x0a
      00821D 0D                     490 	.db 0x0d
      00821E 41 44 43 31 2D 3E 43   491 	.ascii "ADC1->CR1: %x"
             52 31 3A 20 25 78
      00822B 00                     492 	.db 0x00
      00822C                        493 ___str_9:
      00822C 0A                     494 	.db 0x0a
      00822D 0D                     495 	.db 0x0d
      00822E 41 44 43 31 2D 3E 43   496 	.ascii "ADC1->CR2: %x"
             52 32 3A 20 25 78
      00823B 00                     497 	.db 0x00
      00823C                        498 ___str_10:
      00823C 0A                     499 	.db 0x0a
      00823D 0D                     500 	.db 0x0d
      00823E 41 44 43 31 2D 3E 43   501 	.ascii "ADC1->CR3: %x"
             52 33 3A 20 25 78
      00824B 00                     502 	.db 0x00
      00824C                        503 ___str_11:
      00824C 0A                     504 	.db 0x0a
      00824D 0D                     505 	.db 0x0d
      00824E 41 44 43 31 2D 3E 44   506 	.ascii "ADC1->DRH: %x"
             52 48 3A 20 25 78
      00825B 00                     507 	.db 0x00
      00825C                        508 ___str_12:
      00825C 0A                     509 	.db 0x0a
      00825D 0D                     510 	.db 0x0d
      00825E 41 44 43 31 2D 3E 44   511 	.ascii "ADC1->DRL: %x"
             52 4C 3A 20 25 78
      00826B 00                     512 	.db 0x00
      00826C                        513 ___str_13:
      00826C 0A                     514 	.db 0x0a
      00826D 0D                     515 	.db 0x0d
      00826E 00                     516 	.db 0x00
                                    517 	.area INITIALIZER
                                    518 	.area CABS (ABS)
