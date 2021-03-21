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
                                     12 	.globl _rand
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_DeInit
                                     15 	.globl _CLK_SYSCLKConfig
                                     16 	.globl _CLK_CCOConfig
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; Stack segment in internal ram 
                                     27 ;--------------------------------------------------------
                                     28 	.area	SSEG
      FFFFFF                         29 __start__stack:
      FFFFFF                         30 	.ds	1
                                     31 
                                     32 ;--------------------------------------------------------
                                     33 ; absolute external ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DABS (ABS)
                                     36 
                                     37 ; default segment ordering for linker
                                     38 	.area HOME
                                     39 	.area GSINIT
                                     40 	.area GSFINAL
                                     41 	.area CONST
                                     42 	.area INITIALIZER
                                     43 	.area CODE
                                     44 
                                     45 ;--------------------------------------------------------
                                     46 ; interrupt vector 
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
      008000                         49 __interrupt_vect:
      008000 82 00 80 07             50 	int s_GSINIT ; reset
                                     51 ;--------------------------------------------------------
                                     52 ; global & static initialisations
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area GSINIT
                                     56 	.area GSFINAL
                                     57 	.area GSINIT
      008007                         58 __sdcc_gs_init_startup:
      008007                         59 __sdcc_init_data:
                                     60 ; stm8_genXINIT() start
      008007 AE 00 00         [ 2]   61 	ldw x, #l_DATA
      00800A 27 07            [ 1]   62 	jreq	00002$
      00800C                         63 00001$:
      00800C 72 4F 00 00      [ 1]   64 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   65 	decw x
      008011 26 F9            [ 1]   66 	jrne	00001$
      008013                         67 00002$:
      008013 AE 00 04         [ 2]   68 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   69 	jreq	00004$
      008018                         70 00003$:
      008018 D6 80 2F         [ 1]   71 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 00         [ 1]   72 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]   73 	decw	x
      00801F 26 F7            [ 1]   74 	jrne	00003$
      008021                         75 00004$:
                                     76 ; stm8_genXINIT() end
                                     77 	.area GSFINAL
      008021 CC 80 04         [ 2]   78 	jp	__sdcc_program_startup
                                     79 ;--------------------------------------------------------
                                     80 ; Home
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME
                                     83 	.area HOME
      008004                         84 __sdcc_program_startup:
      008004 CC 84 3E         [ 2]   85 	jp	_main
                                     86 ;	return from main will return to caller
                                     87 ;--------------------------------------------------------
                                     88 ; code
                                     89 ;--------------------------------------------------------
                                     90 	.area CODE
                                     91 ;	src/main.c: 42: void main(void)
                                     92 ;	-----------------------------------------
                                     93 ;	 function main
                                     94 ;	-----------------------------------------
      00843E                         95 _main:
                                     96 ;	src/main.c: 58: __endasm;
      00843E 89               [ 2]   97 	pushw	x
      00843F 88               [ 1]   98 	push	a
      008440 AE FF FF         [ 2]   99 	ldw	x, #0xFFFF
      008443                        100 	      loop1:
      008443 A6 32            [ 1]  101 	ld a, #50
      008445                        102 	      loop2:
      008445 4A               [ 1]  103 	dec a
      008446 26 FD            [ 1]  104 	jrne	loop2
      008448 5A               [ 2]  105 	decw	x
      008449 26 F8            [ 1]  106 	jrne	loop1
      00844B 84               [ 1]  107 	pop	a
      00844C 85               [ 2]  108 	popw	x
                                    109 ;	src/main.c: 61: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
      00844D 4B 80            [ 1]  110 	push	#0x80
      00844F CD 82 4C         [ 4]  111 	call	_CLK_SYSCLKConfig
      008452 84               [ 1]  112 	pop	a
                                    113 ;	src/main.c: 64: CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
      008453 4B 00            [ 1]  114 	push	#0x00
      008455 CD 82 4C         [ 4]  115 	call	_CLK_SYSCLKConfig
      008458 84               [ 1]  116 	pop	a
                                    117 ;	src/main.c: 67: CLK_CCOConfig(CLK_OUTPUT_CPU);
      008459 4B 08            [ 1]  118 	push	#0x08
      00845B CD 81 F7         [ 4]  119 	call	_CLK_CCOConfig
      00845E 84               [ 1]  120 	pop	a
                                    121 ;	src/main.c: 70: GPIO_DeInit(OUT_GPIO_PORT);
      00845F 4B 00            [ 1]  122 	push	#0x00
      008461 4B 50            [ 1]  123 	push	#0x50
      008463 CD 83 6C         [ 4]  124 	call	_GPIO_DeInit
      008466 85               [ 2]  125 	popw	x
                                    126 ;	src/main.c: 73: GPIO_Init(OUT_GPIO_PORT, (GPIO_Pin_TypeDef)OUT_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
      008467 4B E0            [ 1]  127 	push	#0xe0
      008469 4B 08            [ 1]  128 	push	#0x08
      00846B 4B 00            [ 1]  129 	push	#0x00
      00846D 4B 50            [ 1]  130 	push	#0x50
      00846F CD 83 7B         [ 4]  131 	call	_GPIO_Init
      008472 5B 04            [ 2]  132 	addw	sp, #4
                                    133 ;	src/main.c: 76: rand();
      008474 CD 84 B5         [ 4]  134 	call	_rand
                                    135 ;	src/main.c: 81: while (1)
      008477                        136 00102$:
                                    137 ;	src/main.c: 83: OUT_GPIO_PORT->ODR |= (uint8_t)OUT_GPIO_PIN;
      008477 C6 50 00         [ 1]  138 	ld	a, 0x5000
      00847A AA 08            [ 1]  139 	or	a, #0x08
      00847C C7 50 00         [ 1]  140 	ld	0x5000, a
                                    141 ;	src/main.c: 84: nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();
      00847F 9D               [ 1]  142 	nop
      008480 9D               [ 1]  143 	nop
      008481 9D               [ 1]  144 	nop
      008482 9D               [ 1]  145 	nop
      008483 9D               [ 1]  146 	nop
      008484 9D               [ 1]  147 	nop
      008485 9D               [ 1]  148 	nop
      008486 9D               [ 1]  149 	nop
      008487 9D               [ 1]  150 	nop
      008488 9D               [ 1]  151 	nop
      008489 9D               [ 1]  152 	nop
      00848A 9D               [ 1]  153 	nop
                                    154 ;	src/main.c: 85: OUT_GPIO_PORT->ODR &= (uint8_t)(~OUT_GPIO_PIN);
      00848B C6 50 00         [ 1]  155 	ld	a, 0x5000
      00848E A4 F7            [ 1]  156 	and	a, #0xf7
      008490 C7 50 00         [ 1]  157 	ld	0x5000, a
                                    158 ;	src/main.c: 86: nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();
      008493 9D               [ 1]  159 	nop
      008494 9D               [ 1]  160 	nop
      008495 9D               [ 1]  161 	nop
      008496 9D               [ 1]  162 	nop
      008497 9D               [ 1]  163 	nop
      008498 9D               [ 1]  164 	nop
      008499 9D               [ 1]  165 	nop
      00849A 9D               [ 1]  166 	nop
      00849B 9D               [ 1]  167 	nop
      00849C 9D               [ 1]  168 	nop
      00849D 9D               [ 1]  169 	nop
      00849E 20 D7            [ 2]  170 	jra	00102$
                                    171 ;	src/main.c: 91: }
      0084A0 81               [ 4]  172 	ret
                                    173 	.area CODE
                                    174 	.area CONST
                                    175 	.area INITIALIZER
                                    176 	.area CABS (ABS)
