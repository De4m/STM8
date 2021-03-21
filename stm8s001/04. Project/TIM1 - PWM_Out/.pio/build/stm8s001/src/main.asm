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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
;	src/main.c: 45: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c: 61: __endasm;
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
;	src/main.c: 64: System_Config();
	call	_System_Config
;	src/main.c: 66: while (1)
00102$:
	jra	00102$
;	src/main.c: 70: }
	ret
;	src/main.c: 72: static void System_Config(void)
;	-----------------------------------------
;	 function System_Config
;	-----------------------------------------
_System_Config:
;	src/main.c: 74: TIM1_Config();
;	src/main.c: 75: }
	jp	_TIM1_Config
;	src/main.c: 77: static void TIM1_Config(void)
;	-----------------------------------------
;	 function TIM1_Config
;	-----------------------------------------
_TIM1_Config:
;	src/main.c: 79: TIM1_DeInit();
	call	_TIM1_DeInit
;	src/main.c: 80: TIM1_TimeBaseInit(  TIM1_PRESCALER_1, 
	push	#0x00
	push	#0xff
	push	#0x0f
	push	#0x00
	clrw	x
	pushw	x
	call	_TIM1_TimeBaseInit
	addw	sp, #6
;	src/main.c: 86: TIM1_OC4Init(   TIM1_OCMODE_PWM2, 
	push	#0x55
	push	#0x22
	push	#0xc4
	push	#0x09
	push	#0x11
	push	#0x70
	call	_TIM1_OC4Init
	addw	sp, #6
;	src/main.c: 93: TIM1_Cmd(ENABLE);
	push	#0x01
	call	_TIM1_Cmd
	pop	a
;	src/main.c: 96: TIM1_CtrlPWMOutputs(ENABLE);
	push	#0x01
	call	_TIM1_CtrlPWMOutputs
	pop	a
;	src/main.c: 97: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
