                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_exti
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EXTI_DeInit
                                     12 	.globl _EXTI_SetExtIntSensitivity
                                     13 	.globl _EXTI_SetTLISensitivity
                                     14 	.globl _EXTI_GetExtIntSensitivity
                                     15 	.globl _EXTI_GetTLISensitivity
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                                     53 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 53: void EXTI_DeInit(void)
                                     54 ;	-----------------------------------------
                                     55 ;	 function EXTI_DeInit
                                     56 ;	-----------------------------------------
      008A18                         57 _EXTI_DeInit:
                                     58 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      008A18 35 00 50 A0      [ 1]   59 	mov	0x50a0+0, #0x00
                                     60 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      008A1C 35 00 50 A1      [ 1]   61 	mov	0x50a1+0, #0x00
                                     62 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 57: }
      008A20 81               [ 4]   63 	ret
                                     64 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     65 ;	-----------------------------------------
                                     66 ;	 function EXTI_SetExtIntSensitivity
                                     67 ;	-----------------------------------------
      008A21                         68 _EXTI_SetExtIntSensitivity:
      008A21 88               [ 1]   69 	push	a
                                     70 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 77: switch (Port)
      008A22 7B 04            [ 1]   71 	ld	a, (0x04, sp)
      008A24 A1 04            [ 1]   72 	cp	a, #0x04
      008A26 23 03            [ 2]   73 	jrule	00115$
      008A28 CC 8A AF         [ 2]   74 	jp	00108$
      008A2B                         75 00115$:
                                     76 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      008A2B 7B 05            [ 1]   77 	ld	a, (0x05, sp)
      008A2D 90 97            [ 1]   78 	ld	yl, a
                                     79 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 77: switch (Port)
      008A2F 5F               [ 1]   80 	clrw	x
      008A30 7B 04            [ 1]   81 	ld	a, (0x04, sp)
      008A32 97               [ 1]   82 	ld	xl, a
      008A33 58               [ 2]   83 	sllw	x
      008A34 DE 8A 38         [ 2]   84 	ldw	x, (#00116$, x)
      008A37 FC               [ 2]   85 	jp	(x)
      008A38                         86 00116$:
      008A38 8A 42                   87 	.dw	#00101$
      008A3A 8A 54                   88 	.dw	#00102$
      008A3C 8A 6B                   89 	.dw	#00103$
      008A3E 8A 84                   90 	.dw	#00104$
      008A40 8A 9F                   91 	.dw	#00105$
                                     92 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      008A42                         93 00101$:
                                     94 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      008A42 C6 50 A0         [ 1]   95 	ld	a, 0x50a0
      008A45 A4 FC            [ 1]   96 	and	a, #0xfc
      008A47 C7 50 A0         [ 1]   97 	ld	0x50a0, a
                                     98 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      008A4A C6 50 A0         [ 1]   99 	ld	a, 0x50a0
      008A4D 1A 05            [ 1]  100 	or	a, (0x05, sp)
      008A4F C7 50 A0         [ 1]  101 	ld	0x50a0, a
                                    102 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 82: break;
      008A52 20 5B            [ 2]  103 	jra	00108$
                                    104 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      008A54                        105 00102$:
                                    106 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      008A54 C6 50 A0         [ 1]  107 	ld	a, 0x50a0
      008A57 A4 F3            [ 1]  108 	and	a, #0xf3
      008A59 C7 50 A0         [ 1]  109 	ld	0x50a0, a
                                    110 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      008A5C C6 50 A0         [ 1]  111 	ld	a, 0x50a0
      008A5F 93               [ 1]  112 	ldw	x, y
      008A60 58               [ 2]  113 	sllw	x
      008A61 58               [ 2]  114 	sllw	x
      008A62 89               [ 2]  115 	pushw	x
      008A63 1A 02            [ 1]  116 	or	a, (2, sp)
      008A65 85               [ 2]  117 	popw	x
      008A66 C7 50 A0         [ 1]  118 	ld	0x50a0, a
                                    119 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 86: break;
      008A69 20 44            [ 2]  120 	jra	00108$
                                    121 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      008A6B                        122 00103$:
                                    123 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      008A6B C6 50 A0         [ 1]  124 	ld	a, 0x50a0
      008A6E A4 CF            [ 1]  125 	and	a, #0xcf
      008A70 C7 50 A0         [ 1]  126 	ld	0x50a0, a
                                    127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      008A73 C6 50 A0         [ 1]  128 	ld	a, 0x50a0
      008A76 6B 01            [ 1]  129 	ld	(0x01, sp), a
      008A78 90 9F            [ 1]  130 	ld	a, yl
      008A7A 4E               [ 1]  131 	swap	a
      008A7B A4 F0            [ 1]  132 	and	a, #0xf0
      008A7D 1A 01            [ 1]  133 	or	a, (0x01, sp)
      008A7F C7 50 A0         [ 1]  134 	ld	0x50a0, a
                                    135 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 90: break;
      008A82 20 2B            [ 2]  136 	jra	00108$
                                    137 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      008A84                        138 00104$:
                                    139 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      008A84 C6 50 A0         [ 1]  140 	ld	a, 0x50a0
      008A87 A4 3F            [ 1]  141 	and	a, #0x3f
      008A89 C7 50 A0         [ 1]  142 	ld	0x50a0, a
                                    143 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      008A8C C6 50 A0         [ 1]  144 	ld	a, 0x50a0
      008A8F 6B 01            [ 1]  145 	ld	(0x01, sp), a
      008A91 90 9F            [ 1]  146 	ld	a, yl
      008A93 4E               [ 1]  147 	swap	a
      008A94 A4 F0            [ 1]  148 	and	a, #0xf0
      008A96 48               [ 1]  149 	sll	a
      008A97 48               [ 1]  150 	sll	a
      008A98 1A 01            [ 1]  151 	or	a, (0x01, sp)
      008A9A C7 50 A0         [ 1]  152 	ld	0x50a0, a
                                    153 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 94: break;
      008A9D 20 10            [ 2]  154 	jra	00108$
                                    155 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      008A9F                        156 00105$:
                                    157 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      008A9F C6 50 A1         [ 1]  158 	ld	a, 0x50a1
      008AA2 A4 FC            [ 1]  159 	and	a, #0xfc
      008AA4 C7 50 A1         [ 1]  160 	ld	0x50a1, a
                                    161 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      008AA7 C6 50 A1         [ 1]  162 	ld	a, 0x50a1
      008AAA 1A 05            [ 1]  163 	or	a, (0x05, sp)
      008AAC C7 50 A1         [ 1]  164 	ld	0x50a1, a
                                    165 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 101: }
      008AAF                        166 00108$:
                                    167 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 102: }
      008AAF 84               [ 1]  168 	pop	a
      008AB0 81               [ 4]  169 	ret
                                    170 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    171 ;	-----------------------------------------
                                    172 ;	 function EXTI_SetTLISensitivity
                                    173 ;	-----------------------------------------
      008AB1                        174 _EXTI_SetTLISensitivity:
                                    175 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      008AB1 C6 50 A1         [ 1]  176 	ld	a, 0x50a1
      008AB4 A4 FB            [ 1]  177 	and	a, #0xfb
      008AB6 C7 50 A1         [ 1]  178 	ld	0x50a1, a
                                    179 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      008AB9 C6 50 A1         [ 1]  180 	ld	a, 0x50a1
      008ABC 1A 03            [ 1]  181 	or	a, (0x03, sp)
      008ABE C7 50 A1         [ 1]  182 	ld	0x50a1, a
                                    183 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 119: }
      008AC1 81               [ 4]  184 	ret
                                    185 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    186 ;	-----------------------------------------
                                    187 ;	 function EXTI_GetExtIntSensitivity
                                    188 ;	-----------------------------------------
      008AC2                        189 _EXTI_GetExtIntSensitivity:
                                    190 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 128: uint8_t value = 0;
      008AC2 4F               [ 1]  191 	clr	a
                                    192 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 133: switch (Port)
      008AC3 88               [ 1]  193 	push	a
      008AC4 7B 04            [ 1]  194 	ld	a, (0x04, sp)
      008AC6 A1 04            [ 1]  195 	cp	a, #0x04
      008AC8 84               [ 1]  196 	pop	a
      008AC9 23 01            [ 2]  197 	jrule	00115$
      008ACB 81               [ 4]  198 	ret
      008ACC                        199 00115$:
      008ACC 5F               [ 1]  200 	clrw	x
      008ACD 7B 03            [ 1]  201 	ld	a, (0x03, sp)
      008ACF 97               [ 1]  202 	ld	xl, a
      008AD0 58               [ 2]  203 	sllw	x
      008AD1 DE 8A D5         [ 2]  204 	ldw	x, (#00116$, x)
      008AD4 FC               [ 2]  205 	jp	(x)
      008AD5                        206 00116$:
      008AD5 8A DF                  207 	.dw	#00101$
      008AD7 8A E5                  208 	.dw	#00102$
      008AD9 8A ED                  209 	.dw	#00103$
      008ADB 8A F6                  210 	.dw	#00104$
      008ADD 8B 01                  211 	.dw	#00105$
                                    212 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      008ADF                        213 00101$:
                                    214 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      008ADF C6 50 A0         [ 1]  215 	ld	a, 0x50a0
      008AE2 A4 03            [ 1]  216 	and	a, #0x03
                                    217 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 137: break;
      008AE4 81               [ 4]  218 	ret
                                    219 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      008AE5                        220 00102$:
                                    221 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      008AE5 C6 50 A0         [ 1]  222 	ld	a, 0x50a0
      008AE8 A4 0C            [ 1]  223 	and	a, #0x0c
      008AEA 44               [ 1]  224 	srl	a
      008AEB 44               [ 1]  225 	srl	a
                                    226 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 140: break;
      008AEC 81               [ 4]  227 	ret
                                    228 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      008AED                        229 00103$:
                                    230 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      008AED C6 50 A0         [ 1]  231 	ld	a, 0x50a0
      008AF0 A4 30            [ 1]  232 	and	a, #0x30
      008AF2 4E               [ 1]  233 	swap	a
      008AF3 A4 0F            [ 1]  234 	and	a, #0x0f
                                    235 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 143: break;
      008AF5 81               [ 4]  236 	ret
                                    237 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      008AF6                        238 00104$:
                                    239 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      008AF6 C6 50 A0         [ 1]  240 	ld	a, 0x50a0
      008AF9 A4 C0            [ 1]  241 	and	a, #0xc0
      008AFB 4E               [ 1]  242 	swap	a
      008AFC A4 0F            [ 1]  243 	and	a, #0x0f
      008AFE 44               [ 1]  244 	srl	a
      008AFF 44               [ 1]  245 	srl	a
                                    246 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 146: break;
      008B00 81               [ 4]  247 	ret
                                    248 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      008B01                        249 00105$:
                                    250 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      008B01 C6 50 A1         [ 1]  251 	ld	a, 0x50a1
      008B04 A4 03            [ 1]  252 	and	a, #0x03
                                    253 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 152: }
                                    254 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                                    255 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 155: }
      008B06 81               [ 4]  256 	ret
                                    257 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    258 ;	-----------------------------------------
                                    259 ;	 function EXTI_GetTLISensitivity
                                    260 ;	-----------------------------------------
      008B07                        261 _EXTI_GetTLISensitivity:
                                    262 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      008B07 C6 50 A1         [ 1]  263 	ld	a, 0x50a1
      008B0A A4 04            [ 1]  264 	and	a, #0x04
                                    265 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                                    266 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_exti.c: 170: }
      008B0C 81               [ 4]  267 	ret
                                    268 	.area CODE
                                    269 	.area CONST
                                    270 	.area INITIALIZER
                                    271 	.area CABS (ABS)
