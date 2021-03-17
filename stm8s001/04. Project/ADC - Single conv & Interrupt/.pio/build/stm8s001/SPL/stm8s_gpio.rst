                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_DeInit
                                     12 	.globl _GPIO_Init
                                     13 	.globl _GPIO_Write
                                     14 	.globl _GPIO_WriteHigh
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_ReadOutputData
                                     18 	.globl _GPIO_ReadInputData
                                     19 	.globl _GPIO_ReadInputPin
                                     20 	.globl _GPIO_ExternalPullUpConfig
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                                     58 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     59 ;	-----------------------------------------
                                     60 ;	 function GPIO_DeInit
                                     61 ;	-----------------------------------------
      008D5F                         62 _GPIO_DeInit:
                                     63 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008D5F 16 03            [ 2]   64 	ldw	y, (0x03, sp)
      008D61 90 7F            [ 1]   65 	clr	(y)
                                     66 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008D63 93               [ 1]   67 	ldw	x, y
      008D64 5C               [ 1]   68 	incw	x
      008D65 5C               [ 1]   69 	incw	x
      008D66 7F               [ 1]   70 	clr	(x)
                                     71 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008D67 93               [ 1]   72 	ldw	x, y
      008D68 6F 03            [ 1]   73 	clr	(0x0003, x)
                                     74 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008D6A 93               [ 1]   75 	ldw	x, y
      008D6B 6F 04            [ 1]   76 	clr	(0x0004, x)
                                     77 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 59: }
      008D6D 81               [ 4]   78 	ret
                                     79 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     80 ;	-----------------------------------------
                                     81 ;	 function GPIO_Init
                                     82 ;	-----------------------------------------
      008D6E                         83 _GPIO_Init:
      008D6E 52 05            [ 2]   84 	sub	sp, #5
                                     85 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008D70 16 08            [ 2]   86 	ldw	y, (0x08, sp)
      008D72 93               [ 1]   87 	ldw	x, y
      008D73 1C 00 04         [ 2]   88 	addw	x, #0x0004
      008D76 1F 01            [ 2]   89 	ldw	(0x01, sp), x
      008D78 F6               [ 1]   90 	ld	a, (x)
      008D79 88               [ 1]   91 	push	a
      008D7A 7B 0B            [ 1]   92 	ld	a, (0x0b, sp)
      008D7C 43               [ 1]   93 	cpl	a
      008D7D 6B 04            [ 1]   94 	ld	(0x04, sp), a
      008D7F 84               [ 1]   95 	pop	a
      008D80 14 03            [ 1]   96 	and	a, (0x03, sp)
      008D82 1E 01            [ 2]   97 	ldw	x, (0x01, sp)
      008D84 F7               [ 1]   98 	ld	(x), a
                                     99 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008D85 93               [ 1]  100 	ldw	x, y
      008D86 5C               [ 1]  101 	incw	x
      008D87 5C               [ 1]  102 	incw	x
      008D88 1F 04            [ 2]  103 	ldw	(0x04, sp), x
                                    104 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008D8A 0D 0B            [ 1]  105 	tnz	(0x0b, sp)
      008D8C 2A 1E            [ 1]  106 	jrpl	00105$
                                    107 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008D8E 90 F6            [ 1]  108 	ld	a, (y)
                                    109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008D90 88               [ 1]  110 	push	a
      008D91 7B 0C            [ 1]  111 	ld	a, (0x0c, sp)
      008D93 A5 10            [ 1]  112 	bcp	a, #0x10
      008D95 84               [ 1]  113 	pop	a
      008D96 27 06            [ 1]  114 	jreq	00102$
                                    115 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008D98 1A 0A            [ 1]  116 	or	a, (0x0a, sp)
      008D9A 90 F7            [ 1]  117 	ld	(y), a
      008D9C 20 04            [ 2]  118 	jra	00103$
      008D9E                        119 00102$:
                                    120 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008D9E 14 03            [ 1]  121 	and	a, (0x03, sp)
      008DA0 90 F7            [ 1]  122 	ld	(y), a
      008DA2                        123 00103$:
                                    124 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008DA2 1E 04            [ 2]  125 	ldw	x, (0x04, sp)
      008DA4 F6               [ 1]  126 	ld	a, (x)
      008DA5 1A 0A            [ 1]  127 	or	a, (0x0a, sp)
      008DA7 1E 04            [ 2]  128 	ldw	x, (0x04, sp)
      008DA9 F7               [ 1]  129 	ld	(x), a
      008DAA 20 08            [ 2]  130 	jra	00106$
      008DAC                        131 00105$:
                                    132 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008DAC 1E 04            [ 2]  133 	ldw	x, (0x04, sp)
      008DAE F6               [ 1]  134 	ld	a, (x)
      008DAF 14 03            [ 1]  135 	and	a, (0x03, sp)
      008DB1 1E 04            [ 2]  136 	ldw	x, (0x04, sp)
      008DB3 F7               [ 1]  137 	ld	(x), a
      008DB4                        138 00106$:
                                    139 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008DB4 93               [ 1]  140 	ldw	x, y
      008DB5 1C 00 03         [ 2]  141 	addw	x, #0x0003
      008DB8 F6               [ 1]  142 	ld	a, (x)
                                    143 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008DB9 88               [ 1]  144 	push	a
      008DBA 7B 0C            [ 1]  145 	ld	a, (0x0c, sp)
      008DBC A5 40            [ 1]  146 	bcp	a, #0x40
      008DBE 84               [ 1]  147 	pop	a
      008DBF 27 05            [ 1]  148 	jreq	00108$
                                    149 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008DC1 1A 0A            [ 1]  150 	or	a, (0x0a, sp)
      008DC3 F7               [ 1]  151 	ld	(x), a
      008DC4 20 03            [ 2]  152 	jra	00109$
      008DC6                        153 00108$:
                                    154 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008DC6 14 03            [ 1]  155 	and	a, (0x03, sp)
      008DC8 F7               [ 1]  156 	ld	(x), a
      008DC9                        157 00109$:
                                    158 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008DC9 1E 01            [ 2]  159 	ldw	x, (0x01, sp)
      008DCB F6               [ 1]  160 	ld	a, (x)
                                    161 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008DCC 88               [ 1]  162 	push	a
      008DCD 7B 0C            [ 1]  163 	ld	a, (0x0c, sp)
      008DCF A5 20            [ 1]  164 	bcp	a, #0x20
      008DD1 84               [ 1]  165 	pop	a
      008DD2 27 07            [ 1]  166 	jreq	00111$
                                    167 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008DD4 1A 0A            [ 1]  168 	or	a, (0x0a, sp)
      008DD6 1E 01            [ 2]  169 	ldw	x, (0x01, sp)
      008DD8 F7               [ 1]  170 	ld	(x), a
      008DD9 20 05            [ 2]  171 	jra	00113$
      008DDB                        172 00111$:
                                    173 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008DDB 14 03            [ 1]  174 	and	a, (0x03, sp)
      008DDD 1E 01            [ 2]  175 	ldw	x, (0x01, sp)
      008DDF F7               [ 1]  176 	ld	(x), a
      008DE0                        177 00113$:
                                    178 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 131: }
      008DE0 5B 05            [ 2]  179 	addw	sp, #5
      008DE2 81               [ 4]  180 	ret
                                    181 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    182 ;	-----------------------------------------
                                    183 ;	 function GPIO_Write
                                    184 ;	-----------------------------------------
      008DE3                        185 _GPIO_Write:
                                    186 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008DE3 1E 03            [ 2]  187 	ldw	x, (0x03, sp)
      008DE5 7B 05            [ 1]  188 	ld	a, (0x05, sp)
      008DE7 F7               [ 1]  189 	ld	(x), a
                                    190 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 144: }
      008DE8 81               [ 4]  191 	ret
                                    192 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    193 ;	-----------------------------------------
                                    194 ;	 function GPIO_WriteHigh
                                    195 ;	-----------------------------------------
      008DE9                        196 _GPIO_WriteHigh:
                                    197 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008DE9 1E 03            [ 2]  198 	ldw	x, (0x03, sp)
      008DEB F6               [ 1]  199 	ld	a, (x)
      008DEC 1A 05            [ 1]  200 	or	a, (0x05, sp)
      008DEE F7               [ 1]  201 	ld	(x), a
                                    202 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 157: }
      008DEF 81               [ 4]  203 	ret
                                    204 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    205 ;	-----------------------------------------
                                    206 ;	 function GPIO_WriteLow
                                    207 ;	-----------------------------------------
      008DF0                        208 _GPIO_WriteLow:
      008DF0 88               [ 1]  209 	push	a
                                    210 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008DF1 1E 04            [ 2]  211 	ldw	x, (0x04, sp)
      008DF3 F6               [ 1]  212 	ld	a, (x)
      008DF4 6B 01            [ 1]  213 	ld	(0x01, sp), a
      008DF6 7B 06            [ 1]  214 	ld	a, (0x06, sp)
      008DF8 43               [ 1]  215 	cpl	a
      008DF9 14 01            [ 1]  216 	and	a, (0x01, sp)
      008DFB F7               [ 1]  217 	ld	(x), a
                                    218 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 170: }
      008DFC 84               [ 1]  219 	pop	a
      008DFD 81               [ 4]  220 	ret
                                    221 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    222 ;	-----------------------------------------
                                    223 ;	 function GPIO_WriteReverse
                                    224 ;	-----------------------------------------
      008DFE                        225 _GPIO_WriteReverse:
                                    226 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      008DFE 1E 03            [ 2]  227 	ldw	x, (0x03, sp)
      008E00 F6               [ 1]  228 	ld	a, (x)
      008E01 18 05            [ 1]  229 	xor	a, (0x05, sp)
      008E03 F7               [ 1]  230 	ld	(x), a
                                    231 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 183: }
      008E04 81               [ 4]  232 	ret
                                    233 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    234 ;	-----------------------------------------
                                    235 ;	 function GPIO_ReadOutputData
                                    236 ;	-----------------------------------------
      008E05                        237 _GPIO_ReadOutputData:
                                    238 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008E05 1E 03            [ 2]  239 	ldw	x, (0x03, sp)
      008E07 F6               [ 1]  240 	ld	a, (x)
                                    241 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 194: }
      008E08 81               [ 4]  242 	ret
                                    243 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    244 ;	-----------------------------------------
                                    245 ;	 function GPIO_ReadInputData
                                    246 ;	-----------------------------------------
      008E09                        247 _GPIO_ReadInputData:
                                    248 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008E09 1E 03            [ 2]  249 	ldw	x, (0x03, sp)
      008E0B E6 01            [ 1]  250 	ld	a, (0x1, x)
                                    251 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 205: }
      008E0D 81               [ 4]  252 	ret
                                    253 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    254 ;	-----------------------------------------
                                    255 ;	 function GPIO_ReadInputPin
                                    256 ;	-----------------------------------------
      008E0E                        257 _GPIO_ReadInputPin:
                                    258 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008E0E 1E 03            [ 2]  259 	ldw	x, (0x03, sp)
      008E10 E6 01            [ 1]  260 	ld	a, (0x1, x)
      008E12 14 05            [ 1]  261 	and	a, (0x05, sp)
                                    262 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 216: }
      008E14 81               [ 4]  263 	ret
                                    264 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    265 ;	-----------------------------------------
                                    266 ;	 function GPIO_ExternalPullUpConfig
                                    267 ;	-----------------------------------------
      008E15                        268 _GPIO_ExternalPullUpConfig:
      008E15 88               [ 1]  269 	push	a
                                    270 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008E16 1E 04            [ 2]  271 	ldw	x, (0x04, sp)
      008E18 1C 00 03         [ 2]  272 	addw	x, #0x0003
      008E1B F6               [ 1]  273 	ld	a, (x)
                                    274 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008E1C 0D 07            [ 1]  275 	tnz	(0x07, sp)
      008E1E 27 05            [ 1]  276 	jreq	00102$
                                    277 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008E20 1A 06            [ 1]  278 	or	a, (0x06, sp)
      008E22 F7               [ 1]  279 	ld	(x), a
      008E23 20 0A            [ 2]  280 	jra	00104$
      008E25                        281 00102$:
                                    282 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008E25 88               [ 1]  283 	push	a
      008E26 7B 07            [ 1]  284 	ld	a, (0x07, sp)
      008E28 43               [ 1]  285 	cpl	a
      008E29 6B 02            [ 1]  286 	ld	(0x02, sp), a
      008E2B 84               [ 1]  287 	pop	a
      008E2C 14 01            [ 1]  288 	and	a, (0x01, sp)
      008E2E F7               [ 1]  289 	ld	(x), a
      008E2F                        290 00104$:
                                    291 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_gpio.c: 238: }
      008E2F 84               [ 1]  292 	pop	a
      008E30 81               [ 4]  293 	ret
                                    294 	.area CODE
                                    295 	.area CONST
                                    296 	.area INITIALIZER
                                    297 	.area CABS (ABS)
