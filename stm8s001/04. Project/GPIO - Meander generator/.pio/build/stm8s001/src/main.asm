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
	.globl _rand
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _CLK_SYSCLKConfig
	.globl _CLK_CCOConfig
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
;	src/main.c: 42: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src/main.c: 58: __endasm;
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
;	src/main.c: 61: CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	push	#0x80
	call	_CLK_SYSCLKConfig
	pop	a
;	src/main.c: 64: CLK_SYSCLKConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_SYSCLKConfig
	pop	a
;	src/main.c: 67: CLK_CCOConfig(CLK_OUTPUT_CPU);
	push	#0x08
	call	_CLK_CCOConfig
	pop	a
;	src/main.c: 70: GPIO_DeInit(OUT_GPIO_PORT);
	push	#0x00
	push	#0x50
	call	_GPIO_DeInit
	popw	x
;	src/main.c: 73: GPIO_Init(OUT_GPIO_PORT, (GPIO_Pin_TypeDef)OUT_GPIO_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	push	#0xe0
	push	#0x08
	push	#0x00
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	src/main.c: 76: rand();
	call	_rand
;	src/main.c: 81: while (1)
00102$:
;	src/main.c: 83: OUT_GPIO_PORT->ODR |= (uint8_t)OUT_GPIO_PIN;
	ld	a, 0x5000
	or	a, #0x08
	ld	0x5000, a
;	src/main.c: 84: nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
;	src/main.c: 85: OUT_GPIO_PORT->ODR &= (uint8_t)(~OUT_GPIO_PIN);
	ld	a, 0x5000
	and	a, #0xf7
	ld	0x5000, a
;	src/main.c: 86: nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();nop();
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jra	00102$
;	src/main.c: 91: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
