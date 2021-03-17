/* 
 * delay utilite for STM8 family
 * COSMIC and SDCC
 * Terentiev Oleg
 * t.oleg@ymail.com
 */

#ifndef _UTIL_DELAY_H
#define _UTIL_DELAY_H

#ifndef F_CPU
#warning F_CPU is not defined!
#endif

/* 
 * Func delayed N cycles, where N = 3 + ( ticks * 3 )
 * so, ticks = ( N - 3 ) / 3, minimum delay is 6 CLK
 * when tick = 1, because 0 equels 65535
 */

static void _delay_cycl( unsigned short __ticks )
{
	#define T_COUNT(x) (( F_CPU * x / 1000000UL )-5)/5)
	__asm
		nop
		nop	
	__endasm;
	
	do {
		__ticks--;
		} while ( __ticks );
	__asm
		nop 
	__endasm;
 
}

static void _delay_us( unsigned short __us )
{
	_delay_cycl((unsigned short)(T_COUNT(__us));
}

static  void _delay_ms( unsigned short __ms )
{
	while ( __ms-- )
	{
		_delay_us( 1000 );
	}
}
////

#endif //_UTIL_DELAY_H 