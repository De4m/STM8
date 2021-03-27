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
                                     12 	.globl _TIM1_CtrlPWMOutputs
                                     13 	.globl _TIM1_Cmd
                                     14 	.globl _TIM1_OC4Init
                                     15 	.globl _TIM1_TimeBaseInit
                                     16 	.globl _TIM1_DeInit
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
      008013 AE 00 00         [ 2]   68 	ldw	x, #l_INITIALIZER
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
      008004 CC 8D 1B         [ 2]   85 	jp	_main
                                     86 ;	return from main will return to caller
                                     87 ;--------------------------------------------------------
                                     88 ; code
                                     89 ;--------------------------------------------------------
                                     90 	.area CODE
                                     91 ;	src/main.c: 45: void main(void)
                                     92 ;	-----------------------------------------
                                     93 ;	 function main
                                     94 ;	-----------------------------------------
      008D1B                         95 _main:
                                     96 ;	src/main.c: 61: __endasm;
      008D1B 89               [ 2]   97 	pushw	x
      008D1C 88               [ 1]   98 	push	a
      008D1D AE FF FF         [ 2]   99 	ldw	x, #0xFFFF
      008D20                        100 	      loop1:
      008D20 A6 32            [ 1]  101 	ld a, #50
      008D22                        102 	      loop2:
      008D22 4A               [ 1]  103 	dec a
      008D23 26 FD            [ 1]  104 	jrne	loop2
      008D25 5A               [ 2]  105 	decw	x
      008D26 26 F8            [ 1]  106 	jrne	loop1
      008D28 84               [ 1]  107 	pop	a
      008D29 85               [ 2]  108 	popw	x
                                    109 ;	src/main.c: 64: System_Config();
      008D2A CD 8D 30         [ 4]  110 	call	_System_Config
                                    111 ;	src/main.c: 66: while (1)
      008D2D                        112 00102$:
      008D2D 20 FE            [ 2]  113 	jra	00102$
                                    114 ;	src/main.c: 70: }
      008D2F 81               [ 4]  115 	ret
                                    116 ;	src/main.c: 72: static void System_Config(void)
                                    117 ;	-----------------------------------------
                                    118 ;	 function System_Config
                                    119 ;	-----------------------------------------
      008D30                        120 _System_Config:
                                    121 ;	src/main.c: 74: TIM1_Config();
                                    122 ;	src/main.c: 75: }
      008D30 CC 8D 33         [ 2]  123 	jp	_TIM1_Config
                                    124 ;	src/main.c: 77: static void TIM1_Config(void)
                                    125 ;	-----------------------------------------
                                    126 ;	 function TIM1_Config
                                    127 ;	-----------------------------------------
      008D33                        128 _TIM1_Config:
                                    129 ;	src/main.c: 79: TIM1_DeInit();
      008D33 CD 83 68         [ 4]  130 	call	_TIM1_DeInit
                                    131 ;	src/main.c: 80: TIM1_TimeBaseInit(  TIM1_PRESCALER_1, 
      008D36 4B 00            [ 1]  132 	push	#0x00
      008D38 4B 40            [ 1]  133 	push	#0x40
      008D3A 4B 9C            [ 1]  134 	push	#0x9c
      008D3C 4B 00            [ 1]  135 	push	#0x00
      008D3E 5F               [ 1]  136 	clrw	x
      008D3F 89               [ 2]  137 	pushw	x
      008D40 CD 84 01         [ 4]  138 	call	_TIM1_TimeBaseInit
      008D43 5B 06            [ 2]  139 	addw	sp, #6
                                    140 ;	src/main.c: 86: TIM1_OC4Init(   TIM1_OCMODE_PWM2, 
      008D45 4B 55            [ 1]  141 	push	#0x55
      008D47 4B 22            [ 1]  142 	push	#0x22
      008D49 4B 20            [ 1]  143 	push	#0x20
      008D4B 4B 4E            [ 1]  144 	push	#0x4e
      008D4D 4B 11            [ 1]  145 	push	#0x11
      008D4F 4B 70            [ 1]  146 	push	#0x70
      008D51 CD 85 63         [ 4]  147 	call	_TIM1_OC4Init
      008D54 5B 06            [ 2]  148 	addw	sp, #6
                                    149 ;	src/main.c: 93: TIM1_Cmd(ENABLE);
      008D56 4B 01            [ 1]  150 	push	#0x01
      008D58 CD 86 AA         [ 4]  151 	call	_TIM1_Cmd
      008D5B 84               [ 1]  152 	pop	a
                                    153 ;	src/main.c: 96: TIM1_CtrlPWMOutputs(ENABLE);
      008D5C 4B 01            [ 1]  154 	push	#0x01
      008D5E CD 86 BD         [ 4]  155 	call	_TIM1_CtrlPWMOutputs
      008D61 84               [ 1]  156 	pop	a
                                    157 ;	src/main.c: 97: }
      008D62 81               [ 4]  158 	ret
                                    159 	.area CODE
                                    160 	.area CONST
                                    161 	.area INITIALIZER
                                    162 	.area CABS (ABS)
