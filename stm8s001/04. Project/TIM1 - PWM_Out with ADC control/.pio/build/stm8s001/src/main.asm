;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.4 #10766 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _TIM1_CtrlPWMOutputs
	.globl _TIM1_Cmd
	.globl _TIM1_OC4Init
	.globl _TIM1_TimeBaseInit
	.globl _TIM1_DeInit
	.globl _CCR_Val
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_CCR_Val::
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	include/delay.h: 21: static void _delay_cycl( unsigned short __ticks )
;	-----------------------------------------
;	 function _delay_cycl
;	-----------------------------------------
__delay_cycl:
;	include/delay.h: 27: __endasm;
	nop
	nop
;	include/delay.h: 29: do {
	ldw	x, (0x03, sp)
00101$:
;	include/delay.h: 30: __ticks--;
	decw	x
;	include/delay.h: 31: } while ( __ticks );
	tnzw	x
	jrne	00101$
;	include/delay.h: 34: __endasm;
	nop
;	include/delay.h: 36: }
	ret
;	include/delay.h: 38: static void _delay_us( unsigned short __us )
;	-----------------------------------------
;	 function _delay_us
;	-----------------------------------------
__delay_us:
;	include/delay.h: 40: _delay_cycl((unsigned short)(T_COUNT(__us));
	ldw	y, (0x03, sp)
	clrw	x
	pushw	y
	pushw	x
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__mullong
	addw	sp, #8
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	exgw	x, y
	subw	y, #0x0005
	ld	a, xl
	sbc	a, #0x00
	rlwa	x
	sbc	a, #0x00
	ld	xh, a
	push	#0x05
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	y
	pushw	x
	call	__divulong
	addw	sp, #8
	pushw	x
	call	__delay_cycl
	popw	x
;	include/delay.h: 41: }
	ret
;	include/delay.h: 43: static  void _delay_ms( unsigned short __ms )
;	-----------------------------------------
;	 function _delay_ms
;	-----------------------------------------
__delay_ms:
;	include/delay.h: 45: while ( __ms-- )
	ldw	x, (0x03, sp)
00101$:
	ldw	y, x
	decw	x
	tnzw	y
	jrne	00117$
	ret
00117$:
;	include/delay.h: 47: _delay_us( 1000 );
	pushw	x
	push	#0xe8
	push	#0x03
	call	__delay_us
	popw	x
	popw	x
	jra	00101$
;	include/delay.h: 49: }
	ret
;	src/main.c: 47: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c: 63: __endasm;
	pushw	x
	push	a
	ldw	x, #0xFFFF
	      loop1:
	ld a, #50
	      loop2:
	dec a
	jrne	loop2
	decw	x
	jrne	loop1
	pop	a
	popw	x
;	src/main.c: 66: System_Config();
	call	_System_Config
;	src/main.c: 68: while (1)
00103$:
;	src/main.c: 71: for (CCR_Val = 1000; CCR_Val < 4000; CCR_Val=CCR_Val+50 )
	ldw	x, #0x03e8
	ldw	_CCR_Val+0, x
00105$:
;	src/main.c: 74: TIM1_Config();
	call	_TIM1_Config
;	src/main.c: 75: _delay_ms(200);
	push	#0xc8
	push	#0x00
	call	__delay_ms
	popw	x
;	src/main.c: 71: for (CCR_Val = 1000; CCR_Val < 4000; CCR_Val=CCR_Val+50 )
	ldw	x, _CCR_Val+0
	addw	x, #0x0032
	ldw	_CCR_Val+0, x
	cpw	x, #0x0fa0
	jrc	00105$
	jra	00103$
;	src/main.c: 82: }
	ret
;	src/main.c: 84: static void System_Config(void)
;	-----------------------------------------
;	 function System_Config
;	-----------------------------------------
_System_Config:
;	src/main.c: 86: TIM1_Config();
;	src/main.c: 87: }
	jp	_TIM1_Config
;	src/main.c: 89: static void TIM1_Config(void)
;	-----------------------------------------
;	 function TIM1_Config
;	-----------------------------------------
_TIM1_Config:
;	src/main.c: 91: TIM1_DeInit();
	call	_TIM1_DeInit
;	src/main.c: 92: TIM1_TimeBaseInit(  TIM1_PRESCALER_1, 
	push	#0x00
	push	#0x40
	push	#0x9c
	push	#0x00
	clrw	x
	pushw	x
	call	_TIM1_TimeBaseInit
	addw	sp, #6
;	src/main.c: 98: TIM1_OC4Init(   TIM1_OCMODE_PWM2, 
	push	#0x55
	push	#0x22
	ldw	x, _CCR_Val+0
	pushw	x
	push	#0x11
	push	#0x70
	call	_TIM1_OC4Init
	addw	sp, #6
;	src/main.c: 105: TIM1_Cmd(ENABLE);
	push	#0x01
	call	_TIM1_Cmd
	pop	a
;	src/main.c: 108: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
;	src/main.c: 109: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__CCR_Val:
	.dw #0x07d0
	.area CABS (ABS)
