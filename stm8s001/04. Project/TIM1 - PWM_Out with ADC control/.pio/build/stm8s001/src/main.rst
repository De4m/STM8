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
                                     17 	.globl _CCR_Val
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
      000001                         26 _CCR_Val::
      000001                         27 	.ds 2
                                     28 ;--------------------------------------------------------
                                     29 ; Stack segment in internal ram 
                                     30 ;--------------------------------------------------------
                                     31 	.area	SSEG
      FFFFFF                         32 __start__stack:
      FFFFFF                         33 	.ds	1
                                     34 
                                     35 ;--------------------------------------------------------
                                     36 ; absolute external ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DABS (ABS)
                                     39 
                                     40 ; default segment ordering for linker
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area CONST
                                     45 	.area INITIALIZER
                                     46 	.area CODE
                                     47 
                                     48 ;--------------------------------------------------------
                                     49 ; interrupt vector 
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
      008000                         52 __interrupt_vect:
      008000 82 00 80 07             53 	int s_GSINIT ; reset
                                     54 ;--------------------------------------------------------
                                     55 ; global & static initialisations
                                     56 ;--------------------------------------------------------
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area GSINIT
      008007                         61 __sdcc_gs_init_startup:
      008007                         62 __sdcc_init_data:
                                     63 ; stm8_genXINIT() start
      008007 AE 00 00         [ 2]   64 	ldw x, #l_DATA
      00800A 27 07            [ 1]   65 	jreq	00002$
      00800C                         66 00001$:
      00800C 72 4F 00 00      [ 1]   67 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   68 	decw x
      008011 26 F9            [ 1]   69 	jrne	00001$
      008013                         70 00002$:
      008013 AE 00 02         [ 2]   71 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   72 	jreq	00004$
      008018                         73 00003$:
      008018 D6 80 2F         [ 1]   74 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 00         [ 1]   75 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]   76 	decw	x
      00801F 26 F7            [ 1]   77 	jrne	00003$
      008021                         78 00004$:
                                     79 ; stm8_genXINIT() end
                                     80 	.area GSFINAL
      008021 CC 80 04         [ 2]   81 	jp	__sdcc_program_startup
                                     82 ;--------------------------------------------------------
                                     83 ; Home
                                     84 ;--------------------------------------------------------
                                     85 	.area HOME
                                     86 	.area HOME
      008004                         87 __sdcc_program_startup:
      008004 CC 8D 83         [ 2]   88 	jp	_main
                                     89 ;	return from main will return to caller
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CODE
                                     94 ;	include/delay.h: 21: static void _delay_cycl( unsigned short __ticks )
                                     95 ;	-----------------------------------------
                                     96 ;	 function _delay_cycl
                                     97 ;	-----------------------------------------
      008D1D                         98 __delay_cycl:
                                     99 ;	include/delay.h: 27: __endasm;
      008D1D 9D               [ 1]  100 	nop
      008D1E 9D               [ 1]  101 	nop
                                    102 ;	include/delay.h: 29: do {
      008D1F 1E 03            [ 2]  103 	ldw	x, (0x03, sp)
      008D21                        104 00101$:
                                    105 ;	include/delay.h: 30: __ticks--;
      008D21 5A               [ 2]  106 	decw	x
                                    107 ;	include/delay.h: 31: } while ( __ticks );
      008D22 5D               [ 2]  108 	tnzw	x
      008D23 26 FC            [ 1]  109 	jrne	00101$
                                    110 ;	include/delay.h: 34: __endasm;
      008D25 9D               [ 1]  111 	nop
                                    112 ;	include/delay.h: 36: }
      008D26 81               [ 4]  113 	ret
                                    114 ;	include/delay.h: 38: static void _delay_us( unsigned short __us )
                                    115 ;	-----------------------------------------
                                    116 ;	 function _delay_us
                                    117 ;	-----------------------------------------
      008D27                        118 __delay_us:
                                    119 ;	include/delay.h: 40: _delay_cycl((unsigned short)(T_COUNT(__us));
      008D27 16 03            [ 2]  120 	ldw	y, (0x03, sp)
      008D29 5F               [ 1]  121 	clrw	x
      008D2A 90 89            [ 2]  122 	pushw	y
      008D2C 89               [ 2]  123 	pushw	x
      008D2D 4B 00            [ 1]  124 	push	#0x00
      008D2F 4B 24            [ 1]  125 	push	#0x24
      008D31 4B F4            [ 1]  126 	push	#0xf4
      008D33 4B 00            [ 1]  127 	push	#0x00
      008D35 CD 8E 58         [ 4]  128 	call	__mullong
      008D38 5B 08            [ 2]  129 	addw	sp, #8
      008D3A 4B 40            [ 1]  130 	push	#0x40
      008D3C 4B 42            [ 1]  131 	push	#0x42
      008D3E 4B 0F            [ 1]  132 	push	#0x0f
      008D40 4B 00            [ 1]  133 	push	#0x00
      008D42 89               [ 2]  134 	pushw	x
      008D43 90 89            [ 2]  135 	pushw	y
      008D45 CD 8D FE         [ 4]  136 	call	__divulong
      008D48 5B 08            [ 2]  137 	addw	sp, #8
      008D4A 51               [ 1]  138 	exgw	x, y
      008D4B 72 A2 00 05      [ 2]  139 	subw	y, #0x0005
      008D4F 9F               [ 1]  140 	ld	a, xl
      008D50 A2 00            [ 1]  141 	sbc	a, #0x00
      008D52 02               [ 1]  142 	rlwa	x
      008D53 A2 00            [ 1]  143 	sbc	a, #0x00
      008D55 95               [ 1]  144 	ld	xh, a
      008D56 4B 05            [ 1]  145 	push	#0x05
      008D58 4B 00            [ 1]  146 	push	#0x00
      008D5A 4B 00            [ 1]  147 	push	#0x00
      008D5C 4B 00            [ 1]  148 	push	#0x00
      008D5E 90 89            [ 2]  149 	pushw	y
      008D60 89               [ 2]  150 	pushw	x
      008D61 CD 8D FE         [ 4]  151 	call	__divulong
      008D64 5B 08            [ 2]  152 	addw	sp, #8
      008D66 89               [ 2]  153 	pushw	x
      008D67 CD 8D 1D         [ 4]  154 	call	__delay_cycl
      008D6A 85               [ 2]  155 	popw	x
                                    156 ;	include/delay.h: 41: }
      008D6B 81               [ 4]  157 	ret
                                    158 ;	include/delay.h: 43: static  void _delay_ms( unsigned short __ms )
                                    159 ;	-----------------------------------------
                                    160 ;	 function _delay_ms
                                    161 ;	-----------------------------------------
      008D6C                        162 __delay_ms:
                                    163 ;	include/delay.h: 45: while ( __ms-- )
      008D6C 1E 03            [ 2]  164 	ldw	x, (0x03, sp)
      008D6E                        165 00101$:
      008D6E 90 93            [ 1]  166 	ldw	y, x
      008D70 5A               [ 2]  167 	decw	x
      008D71 90 5D            [ 2]  168 	tnzw	y
      008D73 26 01            [ 1]  169 	jrne	00117$
      008D75 81               [ 4]  170 	ret
      008D76                        171 00117$:
                                    172 ;	include/delay.h: 47: _delay_us( 1000 );
      008D76 89               [ 2]  173 	pushw	x
      008D77 4B E8            [ 1]  174 	push	#0xe8
      008D79 4B 03            [ 1]  175 	push	#0x03
      008D7B CD 8D 27         [ 4]  176 	call	__delay_us
      008D7E 85               [ 2]  177 	popw	x
      008D7F 85               [ 2]  178 	popw	x
      008D80 20 EC            [ 2]  179 	jra	00101$
                                    180 ;	include/delay.h: 49: }
      008D82 81               [ 4]  181 	ret
                                    182 ;	src/main.c: 47: void main(void)
                                    183 ;	-----------------------------------------
                                    184 ;	 function main
                                    185 ;	-----------------------------------------
      008D83                        186 _main:
                                    187 ;	src/main.c: 63: __endasm;
      008D83 89               [ 2]  188 	pushw	x
      008D84 88               [ 1]  189 	push	a
      008D85 AE FF FF         [ 2]  190 	ldw	x, #0xFFFF
      008D88                        191 	      loop1:
      008D88 A6 32            [ 1]  192 	ld a, #50
      008D8A                        193 	      loop2:
      008D8A 4A               [ 1]  194 	dec a
      008D8B 26 FD            [ 1]  195 	jrne	loop2
      008D8D 5A               [ 2]  196 	decw	x
      008D8E 26 F8            [ 1]  197 	jrne	loop1
      008D90 84               [ 1]  198 	pop	a
      008D91 85               [ 2]  199 	popw	x
                                    200 ;	src/main.c: 66: System_Config();
      008D92 CD 8D B7         [ 4]  201 	call	_System_Config
                                    202 ;	src/main.c: 68: while (1)
      008D95                        203 00103$:
                                    204 ;	src/main.c: 71: for (CCR_Val = 1000; CCR_Val < 4000; CCR_Val=CCR_Val+50 )
      008D95 AE 03 E8         [ 2]  205 	ldw	x, #0x03e8
      008D98 CF 00 01         [ 2]  206 	ldw	_CCR_Val+0, x
      008D9B                        207 00105$:
                                    208 ;	src/main.c: 74: TIM1_Config();
      008D9B CD 8D BA         [ 4]  209 	call	_TIM1_Config
                                    210 ;	src/main.c: 75: _delay_ms(200);
      008D9E 4B C8            [ 1]  211 	push	#0xc8
      008DA0 4B 00            [ 1]  212 	push	#0x00
      008DA2 CD 8D 6C         [ 4]  213 	call	__delay_ms
      008DA5 85               [ 2]  214 	popw	x
                                    215 ;	src/main.c: 71: for (CCR_Val = 1000; CCR_Val < 4000; CCR_Val=CCR_Val+50 )
      008DA6 CE 00 01         [ 2]  216 	ldw	x, _CCR_Val+0
      008DA9 1C 00 32         [ 2]  217 	addw	x, #0x0032
      008DAC CF 00 01         [ 2]  218 	ldw	_CCR_Val+0, x
      008DAF A3 0F A0         [ 2]  219 	cpw	x, #0x0fa0
      008DB2 25 E7            [ 1]  220 	jrc	00105$
      008DB4 20 DF            [ 2]  221 	jra	00103$
                                    222 ;	src/main.c: 82: }
      008DB6 81               [ 4]  223 	ret
                                    224 ;	src/main.c: 84: static void System_Config(void)
                                    225 ;	-----------------------------------------
                                    226 ;	 function System_Config
                                    227 ;	-----------------------------------------
      008DB7                        228 _System_Config:
                                    229 ;	src/main.c: 86: TIM1_Config();
                                    230 ;	src/main.c: 87: }
      008DB7 CC 8D BA         [ 2]  231 	jp	_TIM1_Config
                                    232 ;	src/main.c: 89: static void TIM1_Config(void)
                                    233 ;	-----------------------------------------
                                    234 ;	 function TIM1_Config
                                    235 ;	-----------------------------------------
      008DBA                        236 _TIM1_Config:
                                    237 ;	src/main.c: 91: TIM1_DeInit();
      008DBA CD 83 6A         [ 4]  238 	call	_TIM1_DeInit
                                    239 ;	src/main.c: 92: TIM1_TimeBaseInit(  TIM1_PRESCALER_1, 
      008DBD 4B 00            [ 1]  240 	push	#0x00
      008DBF 4B 40            [ 1]  241 	push	#0x40
      008DC1 4B 9C            [ 1]  242 	push	#0x9c
      008DC3 4B 00            [ 1]  243 	push	#0x00
      008DC5 5F               [ 1]  244 	clrw	x
      008DC6 89               [ 2]  245 	pushw	x
      008DC7 CD 84 03         [ 4]  246 	call	_TIM1_TimeBaseInit
      008DCA 5B 06            [ 2]  247 	addw	sp, #6
                                    248 ;	src/main.c: 98: TIM1_OC4Init(   TIM1_OCMODE_PWM2, 
      008DCC 4B 55            [ 1]  249 	push	#0x55
      008DCE 4B 22            [ 1]  250 	push	#0x22
      008DD0 CE 00 01         [ 2]  251 	ldw	x, _CCR_Val+0
      008DD3 89               [ 2]  252 	pushw	x
      008DD4 4B 11            [ 1]  253 	push	#0x11
      008DD6 4B 70            [ 1]  254 	push	#0x70
      008DD8 CD 85 65         [ 4]  255 	call	_TIM1_OC4Init
      008DDB 5B 06            [ 2]  256 	addw	sp, #6
                                    257 ;	src/main.c: 105: TIM1_Cmd(ENABLE);
      008DDD 4B 01            [ 1]  258 	push	#0x01
      008DDF CD 86 AC         [ 4]  259 	call	_TIM1_Cmd
      008DE2 84               [ 1]  260 	pop	a
                                    261 ;	src/main.c: 108: TIM1_CtrlPWMOutputs(ENABLE);
      008DE3 4B 01            [ 1]  262 	push	#0x01
      008DE5 CD 86 BF         [ 4]  263 	call	_TIM1_CtrlPWMOutputs
      008DE8 84               [ 1]  264 	pop	a
                                    265 ;	src/main.c: 109: }
      008DE9 81               [ 4]  266 	ret
                                    267 	.area CODE
                                    268 	.area CONST
                                    269 	.area INITIALIZER
      008030                        270 __xinit__CCR_Val:
      008030 07 D0                  271 	.dw #0x07d0
                                    272 	.area CABS (ABS)
