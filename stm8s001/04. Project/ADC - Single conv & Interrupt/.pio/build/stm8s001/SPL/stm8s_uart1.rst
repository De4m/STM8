                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _UART1_DeInit
                                     13 	.globl _UART1_Init
                                     14 	.globl _UART1_Cmd
                                     15 	.globl _UART1_ITConfig
                                     16 	.globl _UART1_HalfDuplexCmd
                                     17 	.globl _UART1_IrDAConfig
                                     18 	.globl _UART1_IrDACmd
                                     19 	.globl _UART1_LINBreakDetectionConfig
                                     20 	.globl _UART1_LINCmd
                                     21 	.globl _UART1_SmartCardCmd
                                     22 	.globl _UART1_SmartCardNACKCmd
                                     23 	.globl _UART1_WakeUpConfig
                                     24 	.globl _UART1_ReceiverWakeUpCmd
                                     25 	.globl _UART1_ReceiveData8
                                     26 	.globl _UART1_ReceiveData9
                                     27 	.globl _UART1_SendData8
                                     28 	.globl _UART1_SendData9
                                     29 	.globl _UART1_SendBreak
                                     30 	.globl _UART1_SetAddress
                                     31 	.globl _UART1_SetGuardTime
                                     32 	.globl _UART1_SetPrescaler
                                     33 	.globl _UART1_GetFlagStatus
                                     34 	.globl _UART1_ClearFlag
                                     35 	.globl _UART1_GetITStatus
                                     36 	.globl _UART1_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 
                                     50 ; default segment ordering for linker
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area CONST
                                     55 	.area INITIALIZER
                                     56 	.area CODE
                                     57 
                                     58 ;--------------------------------------------------------
                                     59 ; global & static initialisations
                                     60 ;--------------------------------------------------------
                                     61 	.area HOME
                                     62 	.area GSINIT
                                     63 	.area GSFINAL
                                     64 	.area GSINIT
                                     65 ;--------------------------------------------------------
                                     66 ; Home
                                     67 ;--------------------------------------------------------
                                     68 	.area HOME
                                     69 	.area HOME
                                     70 ;--------------------------------------------------------
                                     71 ; code
                                     72 ;--------------------------------------------------------
                                     73 	.area CODE
                                     74 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function UART1_DeInit
                                     77 ;	-----------------------------------------
      008E31                         78 _UART1_DeInit:
                                     79 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 57: (void)UART1->SR;
      008E31 C6 52 30         [ 1]   80 	ld	a, 0x5230
                                     81 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 58: (void)UART1->DR;
      008E34 C6 52 31         [ 1]   82 	ld	a, 0x5231
                                     83 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      008E37 35 00 52 33      [ 1]   84 	mov	0x5233+0, #0x00
                                     85 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      008E3B 35 00 52 32      [ 1]   86 	mov	0x5232+0, #0x00
                                     87 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      008E3F 35 00 52 34      [ 1]   88 	mov	0x5234+0, #0x00
                                     89 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      008E43 35 00 52 35      [ 1]   90 	mov	0x5235+0, #0x00
                                     91 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      008E47 35 00 52 36      [ 1]   92 	mov	0x5236+0, #0x00
                                     93 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      008E4B 35 00 52 37      [ 1]   94 	mov	0x5237+0, #0x00
                                     95 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      008E4F 35 00 52 38      [ 1]   96 	mov	0x5238+0, #0x00
                                     97 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      008E53 35 00 52 39      [ 1]   98 	mov	0x5239+0, #0x00
                                     99 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      008E57 35 00 52 3A      [ 1]  100 	mov	0x523a+0, #0x00
                                    101 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 71: }
      008E5B 81               [ 4]  102 	ret
                                    103 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                    104 ;	-----------------------------------------
                                    105 ;	 function UART1_Init
                                    106 ;	-----------------------------------------
      008E5C                        107 _UART1_Init:
      008E5C 52 11            [ 2]  108 	sub	sp, #17
                                    109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      008E5E 72 19 52 34      [ 1]  110 	bres	21044, #4
                                    111 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      008E62 C6 52 34         [ 1]  112 	ld	a, 0x5234
      008E65 1A 18            [ 1]  113 	or	a, (0x18, sp)
      008E67 C7 52 34         [ 1]  114 	ld	0x5234, a
                                    115 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      008E6A C6 52 36         [ 1]  116 	ld	a, 0x5236
      008E6D A4 CF            [ 1]  117 	and	a, #0xcf
      008E6F C7 52 36         [ 1]  118 	ld	0x5236, a
                                    119 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      008E72 C6 52 36         [ 1]  120 	ld	a, 0x5236
      008E75 1A 19            [ 1]  121 	or	a, (0x19, sp)
      008E77 C7 52 36         [ 1]  122 	ld	0x5236, a
                                    123 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      008E7A C6 52 34         [ 1]  124 	ld	a, 0x5234
      008E7D A4 F9            [ 1]  125 	and	a, #0xf9
      008E7F C7 52 34         [ 1]  126 	ld	0x5234, a
                                    127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      008E82 C6 52 34         [ 1]  128 	ld	a, 0x5234
      008E85 1A 1A            [ 1]  129 	or	a, (0x1a, sp)
      008E87 C7 52 34         [ 1]  130 	ld	0x5234, a
                                    131 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      008E8A C6 52 32         [ 1]  132 	ld	a, 0x5232
      008E8D 35 00 52 32      [ 1]  133 	mov	0x5232+0, #0x00
                                    134 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      008E91 C6 52 33         [ 1]  135 	ld	a, 0x5233
      008E94 A4 0F            [ 1]  136 	and	a, #0x0f
      008E96 C7 52 33         [ 1]  137 	ld	0x5233, a
                                    138 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      008E99 C6 52 33         [ 1]  139 	ld	a, 0x5233
      008E9C A4 F0            [ 1]  140 	and	a, #0xf0
      008E9E C7 52 33         [ 1]  141 	ld	0x5233, a
                                    142 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      008EA1 CD 89 46         [ 4]  143 	call	_CLK_GetClockFreq
      008EA4 1F 10            [ 2]  144 	ldw	(0x10, sp), x
      008EA6 1E 14            [ 2]  145 	ldw	x, (0x14, sp)
      008EA8 1F 0A            [ 2]  146 	ldw	(0x0a, sp), x
      008EAA 1E 16            [ 2]  147 	ldw	x, (0x16, sp)
      008EAC A6 04            [ 1]  148 	ld	a, #0x04
      008EAE                        149 00127$:
      008EAE 58               [ 2]  150 	sllw	x
      008EAF 09 0B            [ 1]  151 	rlc	(0x0b, sp)
      008EB1 09 0A            [ 1]  152 	rlc	(0x0a, sp)
      008EB3 4A               [ 1]  153 	dec	a
      008EB4 26 F8            [ 1]  154 	jrne	00127$
      008EB6 1F 0C            [ 2]  155 	ldw	(0x0c, sp), x
      008EB8 89               [ 2]  156 	pushw	x
      008EB9 1E 0C            [ 2]  157 	ldw	x, (0x0c, sp)
      008EBB 89               [ 2]  158 	pushw	x
      008EBC 1E 14            [ 2]  159 	ldw	x, (0x14, sp)
      008EBE 89               [ 2]  160 	pushw	x
      008EBF 90 89            [ 2]  161 	pushw	y
      008EC1 CD 93 F2         [ 4]  162 	call	__divulong
      008EC4 5B 08            [ 2]  163 	addw	sp, #8
      008EC6 1F 10            [ 2]  164 	ldw	(0x10, sp), x
      008EC8 17 0E            [ 2]  165 	ldw	(0x0e, sp), y
      008ECA 16 10            [ 2]  166 	ldw	y, (0x10, sp)
      008ECC 17 03            [ 2]  167 	ldw	(0x03, sp), y
      008ECE 16 0E            [ 2]  168 	ldw	y, (0x0e, sp)
      008ED0 17 01            [ 2]  169 	ldw	(0x01, sp), y
                                    170 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      008ED2 CD 89 46         [ 4]  171 	call	_CLK_GetClockFreq
      008ED5 1F 10            [ 2]  172 	ldw	(0x10, sp), x
      008ED7 17 0E            [ 2]  173 	ldw	(0x0e, sp), y
      008ED9 1E 10            [ 2]  174 	ldw	x, (0x10, sp)
      008EDB 89               [ 2]  175 	pushw	x
      008EDC 1E 10            [ 2]  176 	ldw	x, (0x10, sp)
      008EDE 89               [ 2]  177 	pushw	x
      008EDF 4B 64            [ 1]  178 	push	#0x64
      008EE1 5F               [ 1]  179 	clrw	x
      008EE2 89               [ 2]  180 	pushw	x
      008EE3 4B 00            [ 1]  181 	push	#0x00
      008EE5 CD 94 7F         [ 4]  182 	call	__mullong
      008EE8 5B 08            [ 2]  183 	addw	sp, #8
      008EEA 1F 10            [ 2]  184 	ldw	(0x10, sp), x
      008EEC 1E 0C            [ 2]  185 	ldw	x, (0x0c, sp)
      008EEE 89               [ 2]  186 	pushw	x
      008EEF 1E 0C            [ 2]  187 	ldw	x, (0x0c, sp)
      008EF1 89               [ 2]  188 	pushw	x
      008EF2 1E 14            [ 2]  189 	ldw	x, (0x14, sp)
      008EF4 89               [ 2]  190 	pushw	x
      008EF5 90 89            [ 2]  191 	pushw	y
      008EF7 CD 93 F2         [ 4]  192 	call	__divulong
      008EFA 5B 08            [ 2]  193 	addw	sp, #8
      008EFC 1F 07            [ 2]  194 	ldw	(0x07, sp), x
      008EFE 17 05            [ 2]  195 	ldw	(0x05, sp), y
                                    196 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      008F00 C6 52 33         [ 1]  197 	ld	a, 0x5233
      008F03 6B 09            [ 1]  198 	ld	(0x09, sp), a
      008F05 1E 03            [ 2]  199 	ldw	x, (0x03, sp)
      008F07 89               [ 2]  200 	pushw	x
      008F08 1E 03            [ 2]  201 	ldw	x, (0x03, sp)
      008F0A 89               [ 2]  202 	pushw	x
      008F0B 4B 64            [ 1]  203 	push	#0x64
      008F0D 5F               [ 1]  204 	clrw	x
      008F0E 89               [ 2]  205 	pushw	x
      008F0F 4B 00            [ 1]  206 	push	#0x00
      008F11 CD 94 7F         [ 4]  207 	call	__mullong
      008F14 5B 08            [ 2]  208 	addw	sp, #8
      008F16 1F 0C            [ 2]  209 	ldw	(0x0c, sp), x
      008F18 17 0A            [ 2]  210 	ldw	(0x0a, sp), y
      008F1A 1E 07            [ 2]  211 	ldw	x, (0x07, sp)
      008F1C 72 F0 0C         [ 2]  212 	subw	x, (0x0c, sp)
      008F1F 1F 10            [ 2]  213 	ldw	(0x10, sp), x
      008F21 7B 06            [ 1]  214 	ld	a, (0x06, sp)
      008F23 12 0B            [ 1]  215 	sbc	a, (0x0b, sp)
      008F25 6B 0F            [ 1]  216 	ld	(0x0f, sp), a
      008F27 7B 05            [ 1]  217 	ld	a, (0x05, sp)
      008F29 12 0A            [ 1]  218 	sbc	a, (0x0a, sp)
      008F2B 6B 0E            [ 1]  219 	ld	(0x0e, sp), a
      008F2D 1E 10            [ 2]  220 	ldw	x, (0x10, sp)
      008F2F 16 0E            [ 2]  221 	ldw	y, (0x0e, sp)
      008F31 A6 04            [ 1]  222 	ld	a, #0x04
      008F33                        223 00129$:
      008F33 58               [ 2]  224 	sllw	x
      008F34 90 59            [ 2]  225 	rlcw	y
      008F36 4A               [ 1]  226 	dec	a
      008F37 26 FA            [ 1]  227 	jrne	00129$
      008F39 4B 64            [ 1]  228 	push	#0x64
      008F3B 4B 00            [ 1]  229 	push	#0x00
      008F3D 4B 00            [ 1]  230 	push	#0x00
      008F3F 4B 00            [ 1]  231 	push	#0x00
      008F41 89               [ 2]  232 	pushw	x
      008F42 90 89            [ 2]  233 	pushw	y
      008F44 CD 93 F2         [ 4]  234 	call	__divulong
      008F47 5B 08            [ 2]  235 	addw	sp, #8
      008F49 9F               [ 1]  236 	ld	a, xl
      008F4A A4 0F            [ 1]  237 	and	a, #0x0f
      008F4C 1A 09            [ 1]  238 	or	a, (0x09, sp)
      008F4E C7 52 33         [ 1]  239 	ld	0x5233, a
                                    240 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      008F51 C6 52 33         [ 1]  241 	ld	a, 0x5233
      008F54 6B 11            [ 1]  242 	ld	(0x11, sp), a
      008F56 1E 03            [ 2]  243 	ldw	x, (0x03, sp)
      008F58 A6 10            [ 1]  244 	ld	a, #0x10
      008F5A 62               [ 2]  245 	div	x, a
      008F5B 9F               [ 1]  246 	ld	a, xl
      008F5C A4 F0            [ 1]  247 	and	a, #0xf0
      008F5E 1A 11            [ 1]  248 	or	a, (0x11, sp)
      008F60 C7 52 33         [ 1]  249 	ld	0x5233, a
                                    250 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      008F63 C6 52 32         [ 1]  251 	ld	a, 0x5232
      008F66 6B 11            [ 1]  252 	ld	(0x11, sp), a
      008F68 7B 04            [ 1]  253 	ld	a, (0x04, sp)
      008F6A 1A 11            [ 1]  254 	or	a, (0x11, sp)
      008F6C C7 52 32         [ 1]  255 	ld	0x5232, a
                                    256 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      008F6F C6 52 35         [ 1]  257 	ld	a, 0x5235
      008F72 A4 F3            [ 1]  258 	and	a, #0xf3
      008F74 C7 52 35         [ 1]  259 	ld	0x5235, a
                                    260 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      008F77 C6 52 36         [ 1]  261 	ld	a, 0x5236
      008F7A A4 F8            [ 1]  262 	and	a, #0xf8
      008F7C C7 52 36         [ 1]  263 	ld	0x5236, a
                                    264 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      008F7F C6 52 36         [ 1]  265 	ld	a, 0x5236
      008F82 6B 11            [ 1]  266 	ld	(0x11, sp), a
      008F84 7B 1B            [ 1]  267 	ld	a, (0x1b, sp)
      008F86 A4 07            [ 1]  268 	and	a, #0x07
      008F88 1A 11            [ 1]  269 	or	a, (0x11, sp)
      008F8A C7 52 36         [ 1]  270 	ld	0x5236, a
                                    271 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      008F8D C6 52 35         [ 1]  272 	ld	a, 0x5235
                                    273 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      008F90 88               [ 1]  274 	push	a
      008F91 7B 1D            [ 1]  275 	ld	a, (0x1d, sp)
      008F93 A5 04            [ 1]  276 	bcp	a, #0x04
      008F95 84               [ 1]  277 	pop	a
      008F96 27 07            [ 1]  278 	jreq	00102$
                                    279 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      008F98 AA 08            [ 1]  280 	or	a, #0x08
      008F9A C7 52 35         [ 1]  281 	ld	0x5235, a
      008F9D 20 05            [ 2]  282 	jra	00103$
      008F9F                        283 00102$:
                                    284 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      008F9F A4 F7            [ 1]  285 	and	a, #0xf7
      008FA1 C7 52 35         [ 1]  286 	ld	0x5235, a
      008FA4                        287 00103$:
                                    288 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      008FA4 C6 52 35         [ 1]  289 	ld	a, 0x5235
                                    290 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      008FA7 88               [ 1]  291 	push	a
      008FA8 7B 1D            [ 1]  292 	ld	a, (0x1d, sp)
      008FAA A5 08            [ 1]  293 	bcp	a, #0x08
      008FAC 84               [ 1]  294 	pop	a
      008FAD 27 07            [ 1]  295 	jreq	00105$
                                    296 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      008FAF AA 04            [ 1]  297 	or	a, #0x04
      008FB1 C7 52 35         [ 1]  298 	ld	0x5235, a
      008FB4 20 05            [ 2]  299 	jra	00106$
      008FB6                        300 00105$:
                                    301 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      008FB6 A4 FB            [ 1]  302 	and	a, #0xfb
      008FB8 C7 52 35         [ 1]  303 	ld	0x5235, a
      008FBB                        304 00106$:
                                    305 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      008FBB C6 52 36         [ 1]  306 	ld	a, 0x5236
                                    307 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      008FBE 0D 1B            [ 1]  308 	tnz	(0x1b, sp)
      008FC0 2A 07            [ 1]  309 	jrpl	00108$
                                    310 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      008FC2 A4 F7            [ 1]  311 	and	a, #0xf7
      008FC4 C7 52 36         [ 1]  312 	ld	0x5236, a
      008FC7 20 0D            [ 2]  313 	jra	00110$
      008FC9                        314 00108$:
                                    315 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      008FC9 88               [ 1]  316 	push	a
      008FCA 7B 1C            [ 1]  317 	ld	a, (0x1c, sp)
      008FCC A4 08            [ 1]  318 	and	a, #0x08
      008FCE 6B 12            [ 1]  319 	ld	(0x12, sp), a
      008FD0 84               [ 1]  320 	pop	a
      008FD1 1A 11            [ 1]  321 	or	a, (0x11, sp)
      008FD3 C7 52 36         [ 1]  322 	ld	0x5236, a
      008FD6                        323 00110$:
                                    324 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 176: }
      008FD6 5B 11            [ 2]  325 	addw	sp, #17
      008FD8 81               [ 4]  326 	ret
                                    327 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    328 ;	-----------------------------------------
                                    329 ;	 function UART1_Cmd
                                    330 ;	-----------------------------------------
      008FD9                        331 _UART1_Cmd:
                                    332 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      008FD9 C6 52 34         [ 1]  333 	ld	a, 0x5234
                                    334 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      008FDC 0D 03            [ 1]  335 	tnz	(0x03, sp)
      008FDE 27 06            [ 1]  336 	jreq	00102$
                                    337 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      008FE0 A4 DF            [ 1]  338 	and	a, #0xdf
      008FE2 C7 52 34         [ 1]  339 	ld	0x5234, a
      008FE5 81               [ 4]  340 	ret
      008FE6                        341 00102$:
                                    342 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      008FE6 AA 20            [ 1]  343 	or	a, #0x20
      008FE8 C7 52 34         [ 1]  344 	ld	0x5234, a
                                    345 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 196: }
      008FEB 81               [ 4]  346 	ret
                                    347 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    348 ;	-----------------------------------------
                                    349 ;	 function UART1_ITConfig
                                    350 ;	-----------------------------------------
      008FEC                        351 _UART1_ITConfig:
      008FEC 89               [ 2]  352 	pushw	x
                                    353 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
      008FED 7B 05            [ 1]  354 	ld	a, (0x05, sp)
      008FEF 97               [ 1]  355 	ld	xl, a
                                    356 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      008FF0 7B 06            [ 1]  357 	ld	a, (0x06, sp)
      008FF2 A4 0F            [ 1]  358 	and	a, #0x0f
      008FF4 88               [ 1]  359 	push	a
      008FF5 A6 01            [ 1]  360 	ld	a, #0x01
      008FF7 6B 03            [ 1]  361 	ld	(0x03, sp), a
      008FF9 84               [ 1]  362 	pop	a
      008FFA 4D               [ 1]  363 	tnz	a
      008FFB 27 05            [ 1]  364 	jreq	00144$
      008FFD                        365 00143$:
      008FFD 08 02            [ 1]  366 	sll	(0x02, sp)
      008FFF 4A               [ 1]  367 	dec	a
      009000 26 FB            [ 1]  368 	jrne	00143$
      009002                        369 00144$:
                                    370 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      009002 9F               [ 1]  371 	ld	a, xl
      009003 4A               [ 1]  372 	dec	a
      009004 26 05            [ 1]  373 	jrne	00146$
      009006 A6 01            [ 1]  374 	ld	a, #0x01
      009008 6B 01            [ 1]  375 	ld	(0x01, sp), a
      00900A C1                     376 	.byte 0xc1
      00900B                        377 00146$:
      00900B 0F 01            [ 1]  378 	clr	(0x01, sp)
      00900D                        379 00147$:
                                    380 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      00900D 9F               [ 1]  381 	ld	a, xl
      00900E A0 02            [ 1]  382 	sub	a, #0x02
      009010 26 02            [ 1]  383 	jrne	00149$
      009012 4C               [ 1]  384 	inc	a
      009013 21                     385 	.byte 0x21
      009014                        386 00149$:
      009014 4F               [ 1]  387 	clr	a
      009015                        388 00150$:
                                    389 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 224: if (NewState != DISABLE)
      009015 0D 07            [ 1]  390 	tnz	(0x07, sp)
      009017 27 25            [ 1]  391 	jreq	00114$
                                    392 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      009019 0D 01            [ 1]  393 	tnz	(0x01, sp)
      00901B 27 0A            [ 1]  394 	jreq	00105$
                                    395 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
      00901D C6 52 34         [ 1]  396 	ld	a, 0x5234
      009020 1A 02            [ 1]  397 	or	a, (0x02, sp)
      009022 C7 52 34         [ 1]  398 	ld	0x5234, a
      009025 20 3C            [ 2]  399 	jra	00116$
      009027                        400 00105$:
                                    401 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      009027 4D               [ 1]  402 	tnz	a
      009028 27 0A            [ 1]  403 	jreq	00102$
                                    404 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
      00902A C6 52 35         [ 1]  405 	ld	a, 0x5235
      00902D 1A 02            [ 1]  406 	or	a, (0x02, sp)
      00902F C7 52 35         [ 1]  407 	ld	0x5235, a
      009032 20 2F            [ 2]  408 	jra	00116$
      009034                        409 00102$:
                                    410 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
      009034 C6 52 37         [ 1]  411 	ld	a, 0x5237
      009037 1A 02            [ 1]  412 	or	a, (0x02, sp)
      009039 C7 52 37         [ 1]  413 	ld	0x5237, a
      00903C 20 25            [ 2]  414 	jra	00116$
      00903E                        415 00114$:
                                    416 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      00903E 03 02            [ 1]  417 	cpl	(0x02, sp)
                                    418 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 243: if (uartreg == 0x01)
      009040 0D 01            [ 1]  419 	tnz	(0x01, sp)
      009042 27 0A            [ 1]  420 	jreq	00111$
                                    421 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      009044 C6 52 34         [ 1]  422 	ld	a, 0x5234
      009047 14 02            [ 1]  423 	and	a, (0x02, sp)
      009049 C7 52 34         [ 1]  424 	ld	0x5234, a
      00904C 20 15            [ 2]  425 	jra	00116$
      00904E                        426 00111$:
                                    427 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
      00904E 4D               [ 1]  428 	tnz	a
      00904F 27 0A            [ 1]  429 	jreq	00108$
                                    430 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
      009051 C6 52 35         [ 1]  431 	ld	a, 0x5235
      009054 14 02            [ 1]  432 	and	a, (0x02, sp)
      009056 C7 52 35         [ 1]  433 	ld	0x5235, a
      009059 20 08            [ 2]  434 	jra	00116$
      00905B                        435 00108$:
                                    436 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
      00905B C6 52 37         [ 1]  437 	ld	a, 0x5237
      00905E 14 02            [ 1]  438 	and	a, (0x02, sp)
      009060 C7 52 37         [ 1]  439 	ld	0x5237, a
      009063                        440 00116$:
                                    441 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 257: }
      009063 85               [ 2]  442 	popw	x
      009064 81               [ 4]  443 	ret
                                    444 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 265: void UART1_HalfDuplexCmd(FunctionalState NewState)
                                    445 ;	-----------------------------------------
                                    446 ;	 function UART1_HalfDuplexCmd
                                    447 ;	-----------------------------------------
      009065                        448 _UART1_HalfDuplexCmd:
                                    449 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
      009065 C6 52 38         [ 1]  450 	ld	a, 0x5238
                                    451 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 269: if (NewState != DISABLE)
      009068 0D 03            [ 1]  452 	tnz	(0x03, sp)
      00906A 27 06            [ 1]  453 	jreq	00102$
                                    454 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 271: UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
      00906C AA 08            [ 1]  455 	or	a, #0x08
      00906E C7 52 38         [ 1]  456 	ld	0x5238, a
      009071 81               [ 4]  457 	ret
      009072                        458 00102$:
                                    459 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 275: UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
      009072 A4 F7            [ 1]  460 	and	a, #0xf7
      009074 C7 52 38         [ 1]  461 	ld	0x5238, a
                                    462 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 277: }
      009077 81               [ 4]  463 	ret
                                    464 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 285: void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
                                    465 ;	-----------------------------------------
                                    466 ;	 function UART1_IrDAConfig
                                    467 ;	-----------------------------------------
      009078                        468 _UART1_IrDAConfig:
                                    469 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
      009078 C6 52 38         [ 1]  470 	ld	a, 0x5238
                                    471 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 289: if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
      00907B 0D 03            [ 1]  472 	tnz	(0x03, sp)
      00907D 27 06            [ 1]  473 	jreq	00102$
                                    474 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 291: UART1->CR5 |= UART1_CR5_IRLP;
      00907F AA 04            [ 1]  475 	or	a, #0x04
      009081 C7 52 38         [ 1]  476 	ld	0x5238, a
      009084 81               [ 4]  477 	ret
      009085                        478 00102$:
                                    479 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 295: UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
      009085 A4 FB            [ 1]  480 	and	a, #0xfb
      009087 C7 52 38         [ 1]  481 	ld	0x5238, a
                                    482 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 297: }
      00908A 81               [ 4]  483 	ret
                                    484 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 305: void UART1_IrDACmd(FunctionalState NewState)
                                    485 ;	-----------------------------------------
                                    486 ;	 function UART1_IrDACmd
                                    487 ;	-----------------------------------------
      00908B                        488 _UART1_IrDACmd:
                                    489 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
      00908B C6 52 38         [ 1]  490 	ld	a, 0x5238
                                    491 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 310: if (NewState != DISABLE)
      00908E 0D 03            [ 1]  492 	tnz	(0x03, sp)
      009090 27 06            [ 1]  493 	jreq	00102$
                                    494 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 313: UART1->CR5 |= UART1_CR5_IREN;
      009092 AA 02            [ 1]  495 	or	a, #0x02
      009094 C7 52 38         [ 1]  496 	ld	0x5238, a
      009097 81               [ 4]  497 	ret
      009098                        498 00102$:
                                    499 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 318: UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
      009098 A4 FD            [ 1]  500 	and	a, #0xfd
      00909A C7 52 38         [ 1]  501 	ld	0x5238, a
                                    502 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 320: }
      00909D 81               [ 4]  503 	ret
                                    504 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 329: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
                                    505 ;	-----------------------------------------
                                    506 ;	 function UART1_LINBreakDetectionConfig
                                    507 ;	-----------------------------------------
      00909E                        508 _UART1_LINBreakDetectionConfig:
                                    509 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
      00909E C6 52 37         [ 1]  510 	ld	a, 0x5237
                                    511 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 333: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
      0090A1 0D 03            [ 1]  512 	tnz	(0x03, sp)
      0090A3 27 06            [ 1]  513 	jreq	00102$
                                    514 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 335: UART1->CR4 |= UART1_CR4_LBDL;
      0090A5 AA 20            [ 1]  515 	or	a, #0x20
      0090A7 C7 52 37         [ 1]  516 	ld	0x5237, a
      0090AA 81               [ 4]  517 	ret
      0090AB                        518 00102$:
                                    519 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 339: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
      0090AB A4 DF            [ 1]  520 	and	a, #0xdf
      0090AD C7 52 37         [ 1]  521 	ld	0x5237, a
                                    522 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 341: }
      0090B0 81               [ 4]  523 	ret
                                    524 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 349: void UART1_LINCmd(FunctionalState NewState)
                                    525 ;	-----------------------------------------
                                    526 ;	 function UART1_LINCmd
                                    527 ;	-----------------------------------------
      0090B1                        528 _UART1_LINCmd:
                                    529 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
      0090B1 C6 52 36         [ 1]  530 	ld	a, 0x5236
                                    531 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 353: if (NewState != DISABLE)
      0090B4 0D 03            [ 1]  532 	tnz	(0x03, sp)
      0090B6 27 06            [ 1]  533 	jreq	00102$
                                    534 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 356: UART1->CR3 |= UART1_CR3_LINEN;
      0090B8 AA 40            [ 1]  535 	or	a, #0x40
      0090BA C7 52 36         [ 1]  536 	ld	0x5236, a
      0090BD 81               [ 4]  537 	ret
      0090BE                        538 00102$:
                                    539 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 361: UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
      0090BE A4 BF            [ 1]  540 	and	a, #0xbf
      0090C0 C7 52 36         [ 1]  541 	ld	0x5236, a
                                    542 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 363: }
      0090C3 81               [ 4]  543 	ret
                                    544 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 371: void UART1_SmartCardCmd(FunctionalState NewState)
                                    545 ;	-----------------------------------------
                                    546 ;	 function UART1_SmartCardCmd
                                    547 ;	-----------------------------------------
      0090C4                        548 _UART1_SmartCardCmd:
                                    549 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
      0090C4 C6 52 38         [ 1]  550 	ld	a, 0x5238
                                    551 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 375: if (NewState != DISABLE)
      0090C7 0D 03            [ 1]  552 	tnz	(0x03, sp)
      0090C9 27 06            [ 1]  553 	jreq	00102$
                                    554 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 378: UART1->CR5 |= UART1_CR5_SCEN;
      0090CB AA 20            [ 1]  555 	or	a, #0x20
      0090CD C7 52 38         [ 1]  556 	ld	0x5238, a
      0090D0 81               [ 4]  557 	ret
      0090D1                        558 00102$:
                                    559 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 383: UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
      0090D1 A4 DF            [ 1]  560 	and	a, #0xdf
      0090D3 C7 52 38         [ 1]  561 	ld	0x5238, a
                                    562 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 385: }
      0090D6 81               [ 4]  563 	ret
                                    564 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 394: void UART1_SmartCardNACKCmd(FunctionalState NewState)
                                    565 ;	-----------------------------------------
                                    566 ;	 function UART1_SmartCardNACKCmd
                                    567 ;	-----------------------------------------
      0090D7                        568 _UART1_SmartCardNACKCmd:
                                    569 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
      0090D7 C6 52 38         [ 1]  570 	ld	a, 0x5238
                                    571 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 398: if (NewState != DISABLE)
      0090DA 0D 03            [ 1]  572 	tnz	(0x03, sp)
      0090DC 27 06            [ 1]  573 	jreq	00102$
                                    574 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 401: UART1->CR5 |= UART1_CR5_NACK;
      0090DE AA 10            [ 1]  575 	or	a, #0x10
      0090E0 C7 52 38         [ 1]  576 	ld	0x5238, a
      0090E3 81               [ 4]  577 	ret
      0090E4                        578 00102$:
                                    579 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 406: UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
      0090E4 A4 EF            [ 1]  580 	and	a, #0xef
      0090E6 C7 52 38         [ 1]  581 	ld	0x5238, a
                                    582 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 408: }
      0090E9 81               [ 4]  583 	ret
                                    584 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 416: void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
                                    585 ;	-----------------------------------------
                                    586 ;	 function UART1_WakeUpConfig
                                    587 ;	-----------------------------------------
      0090EA                        588 _UART1_WakeUpConfig:
                                    589 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 420: UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
      0090EA 72 17 52 34      [ 1]  590 	bres	21044, #3
                                    591 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 421: UART1->CR1 |= (uint8_t)UART1_WakeUp;
      0090EE C6 52 34         [ 1]  592 	ld	a, 0x5234
      0090F1 1A 03            [ 1]  593 	or	a, (0x03, sp)
      0090F3 C7 52 34         [ 1]  594 	ld	0x5234, a
                                    595 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 422: }
      0090F6 81               [ 4]  596 	ret
                                    597 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 430: void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
                                    598 ;	-----------------------------------------
                                    599 ;	 function UART1_ReceiverWakeUpCmd
                                    600 ;	-----------------------------------------
      0090F7                        601 _UART1_ReceiverWakeUpCmd:
                                    602 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
      0090F7 C6 52 35         [ 1]  603 	ld	a, 0x5235
                                    604 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 434: if (NewState != DISABLE)
      0090FA 0D 03            [ 1]  605 	tnz	(0x03, sp)
      0090FC 27 06            [ 1]  606 	jreq	00102$
                                    607 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 437: UART1->CR2 |= UART1_CR2_RWU;
      0090FE AA 02            [ 1]  608 	or	a, #0x02
      009100 C7 52 35         [ 1]  609 	ld	0x5235, a
      009103 81               [ 4]  610 	ret
      009104                        611 00102$:
                                    612 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 442: UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
      009104 A4 FD            [ 1]  613 	and	a, #0xfd
      009106 C7 52 35         [ 1]  614 	ld	0x5235, a
                                    615 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 444: }
      009109 81               [ 4]  616 	ret
                                    617 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                    618 ;	-----------------------------------------
                                    619 ;	 function UART1_ReceiveData8
                                    620 ;	-----------------------------------------
      00910A                        621 _UART1_ReceiveData8:
                                    622 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
      00910A C6 52 31         [ 1]  623 	ld	a, 0x5231
                                    624 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 454: }
      00910D 81               [ 4]  625 	ret
                                    626 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 461: uint16_t UART1_ReceiveData9(void)
                                    627 ;	-----------------------------------------
                                    628 ;	 function UART1_ReceiveData9
                                    629 ;	-----------------------------------------
      00910E                        630 _UART1_ReceiveData9:
      00910E 89               [ 2]  631 	pushw	x
                                    632 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 465: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
      00910F C6 52 34         [ 1]  633 	ld	a, 0x5234
      009112 A4 80            [ 1]  634 	and	a, #0x80
      009114 97               [ 1]  635 	ld	xl, a
      009115 4F               [ 1]  636 	clr	a
      009116 95               [ 1]  637 	ld	xh, a
      009117 58               [ 2]  638 	sllw	x
                                    639 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 466: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
      009118 C6 52 31         [ 1]  640 	ld	a, 0x5231
      00911B 6B 02            [ 1]  641 	ld	(0x02, sp), a
      00911D 0F 01            [ 1]  642 	clr	(0x01, sp)
      00911F 9F               [ 1]  643 	ld	a, xl
      009120 1A 02            [ 1]  644 	or	a, (0x02, sp)
      009122 02               [ 1]  645 	rlwa	x
      009123 1A 01            [ 1]  646 	or	a, (0x01, sp)
      009125 A4 01            [ 1]  647 	and	a, #0x01
      009127 95               [ 1]  648 	ld	xh, a
                                    649 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 467: }
      009128 5B 02            [ 2]  650 	addw	sp, #2
      00912A 81               [ 4]  651 	ret
                                    652 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                    653 ;	-----------------------------------------
                                    654 ;	 function UART1_SendData8
                                    655 ;	-----------------------------------------
      00912B                        656 _UART1_SendData8:
                                    657 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 477: UART1->DR = Data;
      00912B AE 52 31         [ 2]  658 	ldw	x, #0x5231
      00912E 7B 03            [ 1]  659 	ld	a, (0x03, sp)
      009130 F7               [ 1]  660 	ld	(x), a
                                    661 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 478: }
      009131 81               [ 4]  662 	ret
                                    663 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 486: void UART1_SendData9(uint16_t Data)
                                    664 ;	-----------------------------------------
                                    665 ;	 function UART1_SendData9
                                    666 ;	-----------------------------------------
      009132                        667 _UART1_SendData9:
      009132 88               [ 1]  668 	push	a
                                    669 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 489: UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
      009133 72 1D 52 34      [ 1]  670 	bres	21044, #6
                                    671 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 491: UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
      009137 C6 52 34         [ 1]  672 	ld	a, 0x5234
      00913A 6B 01            [ 1]  673 	ld	(0x01, sp), a
      00913C 1E 04            [ 2]  674 	ldw	x, (0x04, sp)
      00913E 54               [ 2]  675 	srlw	x
      00913F 54               [ 2]  676 	srlw	x
      009140 9F               [ 1]  677 	ld	a, xl
      009141 A4 40            [ 1]  678 	and	a, #0x40
      009143 1A 01            [ 1]  679 	or	a, (0x01, sp)
      009145 C7 52 34         [ 1]  680 	ld	0x5234, a
                                    681 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 493: UART1->DR   = (uint8_t)(Data);
      009148 7B 05            [ 1]  682 	ld	a, (0x05, sp)
      00914A C7 52 31         [ 1]  683 	ld	0x5231, a
                                    684 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 494: }
      00914D 84               [ 1]  685 	pop	a
      00914E 81               [ 4]  686 	ret
                                    687 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 501: void UART1_SendBreak(void)
                                    688 ;	-----------------------------------------
                                    689 ;	 function UART1_SendBreak
                                    690 ;	-----------------------------------------
      00914F                        691 _UART1_SendBreak:
                                    692 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 503: UART1->CR2 |= UART1_CR2_SBK;
      00914F 72 10 52 35      [ 1]  693 	bset	21045, #0
                                    694 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 504: }
      009153 81               [ 4]  695 	ret
                                    696 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 511: void UART1_SetAddress(uint8_t UART1_Address)
                                    697 ;	-----------------------------------------
                                    698 ;	 function UART1_SetAddress
                                    699 ;	-----------------------------------------
      009154                        700 _UART1_SetAddress:
                                    701 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 517: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
      009154 C6 52 37         [ 1]  702 	ld	a, 0x5237
      009157 A4 F0            [ 1]  703 	and	a, #0xf0
      009159 C7 52 37         [ 1]  704 	ld	0x5237, a
                                    705 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 519: UART1->CR4 |= UART1_Address;
      00915C C6 52 37         [ 1]  706 	ld	a, 0x5237
      00915F 1A 03            [ 1]  707 	or	a, (0x03, sp)
      009161 C7 52 37         [ 1]  708 	ld	0x5237, a
                                    709 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 520: }
      009164 81               [ 4]  710 	ret
                                    711 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 528: void UART1_SetGuardTime(uint8_t UART1_GuardTime)
                                    712 ;	-----------------------------------------
                                    713 ;	 function UART1_SetGuardTime
                                    714 ;	-----------------------------------------
      009165                        715 _UART1_SetGuardTime:
                                    716 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 531: UART1->GTR = UART1_GuardTime;
      009165 AE 52 39         [ 2]  717 	ldw	x, #0x5239
      009168 7B 03            [ 1]  718 	ld	a, (0x03, sp)
      00916A F7               [ 1]  719 	ld	(x), a
                                    720 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 532: }
      00916B 81               [ 4]  721 	ret
                                    722 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 556: void UART1_SetPrescaler(uint8_t UART1_Prescaler)
                                    723 ;	-----------------------------------------
                                    724 ;	 function UART1_SetPrescaler
                                    725 ;	-----------------------------------------
      00916C                        726 _UART1_SetPrescaler:
                                    727 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 559: UART1->PSCR = UART1_Prescaler;
      00916C AE 52 3A         [ 2]  728 	ldw	x, #0x523a
      00916F 7B 03            [ 1]  729 	ld	a, (0x03, sp)
      009171 F7               [ 1]  730 	ld	(x), a
                                    731 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 560: }
      009172 81               [ 4]  732 	ret
                                    733 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    734 ;	-----------------------------------------
                                    735 ;	 function UART1_GetFlagStatus
                                    736 ;	-----------------------------------------
      009173                        737 _UART1_GetFlagStatus:
      009173 88               [ 1]  738 	push	a
                                    739 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009174 7B 05            [ 1]  740 	ld	a, (0x05, sp)
      009176 6B 01            [ 1]  741 	ld	(0x01, sp), a
                                    742 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      009178 1E 04            [ 2]  743 	ldw	x, (0x04, sp)
      00917A A3 02 10         [ 2]  744 	cpw	x, #0x0210
      00917D 26 0E            [ 1]  745 	jrne	00114$
                                    746 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00917F C6 52 37         [ 1]  747 	ld	a, 0x5237
      009182 14 01            [ 1]  748 	and	a, (0x01, sp)
      009184 27 04            [ 1]  749 	jreq	00102$
                                    750 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 582: status = SET;
      009186 A6 01            [ 1]  751 	ld	a, #0x01
      009188 20 23            [ 2]  752 	jra	00115$
      00918A                        753 00102$:
                                    754 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 587: status = RESET;
      00918A 4F               [ 1]  755 	clr	a
      00918B 20 20            [ 2]  756 	jra	00115$
      00918D                        757 00114$:
                                    758 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
      00918D 1E 04            [ 2]  759 	ldw	x, (0x04, sp)
      00918F A3 01 01         [ 2]  760 	cpw	x, #0x0101
      009192 26 0E            [ 1]  761 	jrne	00111$
                                    762 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      009194 C6 52 35         [ 1]  763 	ld	a, 0x5235
      009197 14 01            [ 1]  764 	and	a, (0x01, sp)
      009199 27 04            [ 1]  765 	jreq	00105$
                                    766 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 595: status = SET;
      00919B A6 01            [ 1]  767 	ld	a, #0x01
      00919D 20 0E            [ 2]  768 	jra	00115$
      00919F                        769 00105$:
                                    770 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 600: status = RESET;
      00919F 4F               [ 1]  771 	clr	a
      0091A0 20 0B            [ 2]  772 	jra	00115$
      0091A2                        773 00111$:
                                    774 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0091A2 C6 52 30         [ 1]  775 	ld	a, 0x5230
      0091A5 14 01            [ 1]  776 	and	a, (0x01, sp)
      0091A7 27 03            [ 1]  777 	jreq	00108$
                                    778 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 608: status = SET;
      0091A9 A6 01            [ 1]  779 	ld	a, #0x01
                                    780 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 613: status = RESET;
      0091AB 21                     781 	.byte 0x21
      0091AC                        782 00108$:
      0091AC 4F               [ 1]  783 	clr	a
      0091AD                        784 00115$:
                                    785 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 617: return status;
                                    786 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 618: }
      0091AD 5B 01            [ 2]  787 	addw	sp, #1
      0091AF 81               [ 4]  788 	ret
                                    789 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 646: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
                                    790 ;	-----------------------------------------
                                    791 ;	 function UART1_ClearFlag
                                    792 ;	-----------------------------------------
      0091B0                        793 _UART1_ClearFlag:
                                    794 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 651: if (UART1_FLAG == UART1_FLAG_RXNE)
      0091B0 1E 03            [ 2]  795 	ldw	x, (0x03, sp)
      0091B2 A3 00 20         [ 2]  796 	cpw	x, #0x0020
      0091B5 26 05            [ 1]  797 	jrne	00102$
                                    798 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 653: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      0091B7 35 DF 52 30      [ 1]  799 	mov	0x5230+0, #0xdf
      0091BB 81               [ 4]  800 	ret
      0091BC                        801 00102$:
                                    802 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 658: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      0091BC 72 19 52 37      [ 1]  803 	bres	21047, #4
                                    804 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 660: }
      0091C0 81               [ 4]  805 	ret
                                    806 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                    807 ;	-----------------------------------------
                                    808 ;	 function UART1_GetITStatus
                                    809 ;	-----------------------------------------
      0091C1                        810 _UART1_GetITStatus:
      0091C1 89               [ 2]  811 	pushw	x
                                    812 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      0091C2 7B 06            [ 1]  813 	ld	a, (0x06, sp)
      0091C4 97               [ 1]  814 	ld	xl, a
      0091C5 A4 0F            [ 1]  815 	and	a, #0x0f
      0091C7 88               [ 1]  816 	push	a
      0091C8 A6 01            [ 1]  817 	ld	a, #0x01
      0091CA 6B 02            [ 1]  818 	ld	(0x02, sp), a
      0091CC 84               [ 1]  819 	pop	a
      0091CD 4D               [ 1]  820 	tnz	a
      0091CE 27 05            [ 1]  821 	jreq	00162$
      0091D0                        822 00161$:
      0091D0 08 01            [ 1]  823 	sll	(0x01, sp)
      0091D2 4A               [ 1]  824 	dec	a
      0091D3 26 FB            [ 1]  825 	jrne	00161$
      0091D5                        826 00162$:
                                    827 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
      0091D5 9F               [ 1]  828 	ld	a, xl
      0091D6 4E               [ 1]  829 	swap	a
      0091D7 A4 0F            [ 1]  830 	and	a, #0x0f
                                    831 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0091D9 88               [ 1]  832 	push	a
      0091DA A6 01            [ 1]  833 	ld	a, #0x01
      0091DC 6B 03            [ 1]  834 	ld	(0x03, sp), a
      0091DE 84               [ 1]  835 	pop	a
      0091DF 4D               [ 1]  836 	tnz	a
      0091E0 27 05            [ 1]  837 	jreq	00164$
      0091E2                        838 00163$:
      0091E2 08 02            [ 1]  839 	sll	(0x02, sp)
      0091E4 4A               [ 1]  840 	dec	a
      0091E5 26 FB            [ 1]  841 	jrne	00163$
      0091E7                        842 00164$:
                                    843 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
      0091E7 1E 05            [ 2]  844 	ldw	x, (0x05, sp)
      0091E9 A3 01 00         [ 2]  845 	cpw	x, #0x0100
      0091EC 26 18            [ 1]  846 	jrne	00117$
                                    847 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
      0091EE C6 52 34         [ 1]  848 	ld	a, 0x5234
      0091F1 14 02            [ 1]  849 	and	a, (0x02, sp)
      0091F3 97               [ 1]  850 	ld	xl, a
                                    851 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      0091F4 C6 52 30         [ 1]  852 	ld	a, 0x5230
      0091F7 14 01            [ 1]  853 	and	a, (0x01, sp)
      0091F9 27 08            [ 1]  854 	jreq	00102$
      0091FB 9F               [ 1]  855 	ld	a, xl
      0091FC 4D               [ 1]  856 	tnz	a
      0091FD 27 04            [ 1]  857 	jreq	00102$
                                    858 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 704: pendingbitstatus = SET;
      0091FF A6 01            [ 1]  859 	ld	a, #0x01
      009201 20 37            [ 2]  860 	jra	00118$
      009203                        861 00102$:
                                    862 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
      009203 4F               [ 1]  863 	clr	a
      009204 20 34            [ 2]  864 	jra	00118$
      009206                        865 00117$:
                                    866 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
      009206 1E 05            [ 2]  867 	ldw	x, (0x05, sp)
      009208 A3 03 46         [ 2]  868 	cpw	x, #0x0346
      00920B 26 18            [ 1]  869 	jrne	00114$
                                    870 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
      00920D C6 52 37         [ 1]  871 	ld	a, 0x5237
      009210 14 02            [ 1]  872 	and	a, (0x02, sp)
      009212 97               [ 1]  873 	ld	xl, a
                                    874 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      009213 C6 52 37         [ 1]  875 	ld	a, 0x5237
      009216 14 01            [ 1]  876 	and	a, (0x01, sp)
      009218 27 08            [ 1]  877 	jreq	00106$
      00921A 9F               [ 1]  878 	ld	a, xl
      00921B 4D               [ 1]  879 	tnz	a
      00921C 27 04            [ 1]  880 	jreq	00106$
                                    881 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 721: pendingbitstatus = SET;
      00921E A6 01            [ 1]  882 	ld	a, #0x01
      009220 20 18            [ 2]  883 	jra	00118$
      009222                        884 00106$:
                                    885 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
      009222 4F               [ 1]  886 	clr	a
      009223 20 15            [ 2]  887 	jra	00118$
      009225                        888 00114$:
                                    889 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
      009225 C6 52 35         [ 1]  890 	ld	a, 0x5235
      009228 14 02            [ 1]  891 	and	a, (0x02, sp)
      00922A 97               [ 1]  892 	ld	xl, a
                                    893 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00922B C6 52 30         [ 1]  894 	ld	a, 0x5230
      00922E 14 01            [ 1]  895 	and	a, (0x01, sp)
      009230 27 07            [ 1]  896 	jreq	00110$
      009232 9F               [ 1]  897 	ld	a, xl
      009233 4D               [ 1]  898 	tnz	a
      009234 27 03            [ 1]  899 	jreq	00110$
                                    900 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 737: pendingbitstatus = SET;
      009236 A6 01            [ 1]  901 	ld	a, #0x01
                                    902 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
      009238 21                     903 	.byte 0x21
      009239                        904 00110$:
      009239 4F               [ 1]  905 	clr	a
      00923A                        906 00118$:
                                    907 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 747: return  pendingbitstatus;
                                    908 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 748: }
      00923A 85               [ 2]  909 	popw	x
      00923B 81               [ 4]  910 	ret
                                    911 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                    912 ;	-----------------------------------------
                                    913 ;	 function UART1_ClearITPendingBit
                                    914 ;	-----------------------------------------
      00923C                        915 _UART1_ClearITPendingBit:
                                    916 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
      00923C 1E 03            [ 2]  917 	ldw	x, (0x03, sp)
      00923E A3 02 55         [ 2]  918 	cpw	x, #0x0255
      009241 26 05            [ 1]  919 	jrne	00102$
                                    920 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      009243 35 DF 52 30      [ 1]  921 	mov	0x5230+0, #0xdf
      009247 81               [ 4]  922 	ret
      009248                        923 00102$:
                                    924 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      009248 72 19 52 37      [ 1]  925 	bres	21047, #4
                                    926 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_uart1.c: 789: }
      00924C 81               [ 4]  927 	ret
                                    928 	.area CODE
                                    929 	.area CONST
                                    930 	.area INITIALIZER
                                    931 	.area CABS (ABS)
