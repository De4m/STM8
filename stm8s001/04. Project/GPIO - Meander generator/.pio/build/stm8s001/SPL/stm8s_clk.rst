                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_FastHaltWakeUpCmd
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_CCOCmd
                                     19 	.globl _CLK_ClockSwitchCmd
                                     20 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     21 	.globl _CLK_PeripheralClockConfig
                                     22 	.globl _CLK_ClockSwitchConfig
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _CLK_CCOConfig
                                     25 	.globl _CLK_ITConfig
                                     26 	.globl _CLK_SYSCLKConfig
                                     27 	.globl _CLK_SWIMConfig
                                     28 	.globl _CLK_ClockSecuritySystemEnable
                                     29 	.globl _CLK_GetSYSCLKSource
                                     30 	.globl _CLK_GetClockFreq
                                     31 	.globl _CLK_AdjustHSICalibrationValue
                                     32 	.globl _CLK_SYSCLKEmergencyClear
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_GetITStatus
                                     35 	.globl _CLK_ClearITPendingBit
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                                     73 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     74 ;	-----------------------------------------
                                     75 ;	 function CLK_DeInit
                                     76 ;	-----------------------------------------
      008034                         77 _CLK_DeInit:
                                     78 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008034 35 01 50 C0      [ 1]   79 	mov	0x50c0+0, #0x01
                                     80 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008038 35 00 50 C1      [ 1]   81 	mov	0x50c1+0, #0x00
                                     82 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00803C 35 E1 50 C4      [ 1]   83 	mov	0x50c4+0, #0xe1
                                     84 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008040 35 00 50 C5      [ 1]   85 	mov	0x50c5+0, #0x00
                                     86 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008044 35 18 50 C6      [ 1]   87 	mov	0x50c6+0, #0x18
                                     88 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008048 35 FF 50 C7      [ 1]   89 	mov	0x50c7+0, #0xff
                                     90 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00804C 35 FF 50 CA      [ 1]   91 	mov	0x50ca+0, #0xff
                                     92 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008050 35 00 50 C8      [ 1]   93 	mov	0x50c8+0, #0x00
                                     94 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008054 35 00 50 C9      [ 1]   95 	mov	0x50c9+0, #0x00
                                     96 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008058                         97 00101$:
      008058 C6 50 C9         [ 1]   98 	ld	a, 0x50c9
      00805B 44               [ 1]   99 	srl	a
      00805C 25 FA            [ 1]  100 	jrc	00101$
                                    101 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00805E 35 00 50 C9      [ 1]  102 	mov	0x50c9+0, #0x00
                                    103 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008062 35 00 50 CC      [ 1]  104 	mov	0x50cc+0, #0x00
                                    105 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008066 35 00 50 CD      [ 1]  106 	mov	0x50cd+0, #0x00
                                    107 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
      00806A 81               [ 4]  108 	ret
                                    109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    110 ;	-----------------------------------------
                                    111 ;	 function CLK_FastHaltWakeUpCmd
                                    112 ;	-----------------------------------------
      00806B                        113 _CLK_FastHaltWakeUpCmd:
                                    114 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00806B C6 50 C0         [ 1]  115 	ld	a, 0x50c0
                                    116 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      00806E 0D 03            [ 1]  117 	tnz	(0x03, sp)
      008070 27 06            [ 1]  118 	jreq	00102$
                                    119 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008072 AA 04            [ 1]  120 	or	a, #0x04
      008074 C7 50 C0         [ 1]  121 	ld	0x50c0, a
      008077 81               [ 4]  122 	ret
      008078                        123 00102$:
                                    124 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      008078 A4 FB            [ 1]  125 	and	a, #0xfb
      00807A C7 50 C0         [ 1]  126 	ld	0x50c0, a
                                    127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
      00807D 81               [ 4]  128 	ret
                                    129 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    130 ;	-----------------------------------------
                                    131 ;	 function CLK_HSECmd
                                    132 ;	-----------------------------------------
      00807E                        133 _CLK_HSECmd:
                                    134 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00807E C6 50 C1         [ 1]  135 	ld	a, 0x50c1
                                    136 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      008081 0D 03            [ 1]  137 	tnz	(0x03, sp)
      008083 27 06            [ 1]  138 	jreq	00102$
                                    139 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008085 AA 01            [ 1]  140 	or	a, #0x01
      008087 C7 50 C1         [ 1]  141 	ld	0x50c1, a
      00808A 81               [ 4]  142 	ret
      00808B                        143 00102$:
                                    144 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00808B A4 FE            [ 1]  145 	and	a, #0xfe
      00808D C7 50 C1         [ 1]  146 	ld	0x50c1, a
                                    147 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
      008090 81               [ 4]  148 	ret
                                    149 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    150 ;	-----------------------------------------
                                    151 ;	 function CLK_HSICmd
                                    152 ;	-----------------------------------------
      008091                        153 _CLK_HSICmd:
                                    154 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008091 C6 50 C0         [ 1]  155 	ld	a, 0x50c0
                                    156 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      008094 0D 03            [ 1]  157 	tnz	(0x03, sp)
      008096 27 06            [ 1]  158 	jreq	00102$
                                    159 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008098 AA 01            [ 1]  160 	or	a, #0x01
      00809A C7 50 C0         [ 1]  161 	ld	0x50c0, a
      00809D 81               [ 4]  162 	ret
      00809E                        163 00102$:
                                    164 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00809E A4 FE            [ 1]  165 	and	a, #0xfe
      0080A0 C7 50 C0         [ 1]  166 	ld	0x50c0, a
                                    167 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
      0080A3 81               [ 4]  168 	ret
                                    169 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function CLK_LSICmd
                                    172 ;	-----------------------------------------
      0080A4                        173 _CLK_LSICmd:
                                    174 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0080A4 C6 50 C0         [ 1]  175 	ld	a, 0x50c0
                                    176 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      0080A7 0D 03            [ 1]  177 	tnz	(0x03, sp)
      0080A9 27 06            [ 1]  178 	jreq	00102$
                                    179 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0080AB AA 08            [ 1]  180 	or	a, #0x08
      0080AD C7 50 C0         [ 1]  181 	ld	0x50c0, a
      0080B0 81               [ 4]  182 	ret
      0080B1                        183 00102$:
                                    184 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0080B1 A4 F7            [ 1]  185 	and	a, #0xf7
      0080B3 C7 50 C0         [ 1]  186 	ld	0x50c0, a
                                    187 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
      0080B6 81               [ 4]  188 	ret
                                    189 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    190 ;	-----------------------------------------
                                    191 ;	 function CLK_CCOCmd
                                    192 ;	-----------------------------------------
      0080B7                        193 _CLK_CCOCmd:
                                    194 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0080B7 C6 50 C9         [ 1]  195 	ld	a, 0x50c9
                                    196 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      0080BA 0D 03            [ 1]  197 	tnz	(0x03, sp)
      0080BC 27 06            [ 1]  198 	jreq	00102$
                                    199 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0080BE AA 01            [ 1]  200 	or	a, #0x01
      0080C0 C7 50 C9         [ 1]  201 	ld	0x50c9, a
      0080C3 81               [ 4]  202 	ret
      0080C4                        203 00102$:
                                    204 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      0080C4 A4 FE            [ 1]  205 	and	a, #0xfe
      0080C6 C7 50 C9         [ 1]  206 	ld	0x50c9, a
                                    207 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
      0080C9 81               [ 4]  208 	ret
                                    209 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    210 ;	-----------------------------------------
                                    211 ;	 function CLK_ClockSwitchCmd
                                    212 ;	-----------------------------------------
      0080CA                        213 _CLK_ClockSwitchCmd:
                                    214 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0080CA C6 50 C5         [ 1]  215 	ld	a, 0x50c5
                                    216 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      0080CD 0D 03            [ 1]  217 	tnz	(0x03, sp)
      0080CF 27 06            [ 1]  218 	jreq	00102$
                                    219 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      0080D1 AA 02            [ 1]  220 	or	a, #0x02
      0080D3 C7 50 C5         [ 1]  221 	ld	0x50c5, a
      0080D6 81               [ 4]  222 	ret
      0080D7                        223 00102$:
                                    224 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      0080D7 A4 FD            [ 1]  225 	and	a, #0xfd
      0080D9 C7 50 C5         [ 1]  226 	ld	0x50c5, a
                                    227 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
      0080DC 81               [ 4]  228 	ret
                                    229 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    230 ;	-----------------------------------------
                                    231 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    232 ;	-----------------------------------------
      0080DD                        233 _CLK_SlowActiveHaltWakeUpCmd:
                                    234 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0080DD C6 50 C0         [ 1]  235 	ld	a, 0x50c0
                                    236 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      0080E0 0D 03            [ 1]  237 	tnz	(0x03, sp)
      0080E2 27 06            [ 1]  238 	jreq	00102$
                                    239 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0080E4 AA 20            [ 1]  240 	or	a, #0x20
      0080E6 C7 50 C0         [ 1]  241 	ld	0x50c0, a
      0080E9 81               [ 4]  242 	ret
      0080EA                        243 00102$:
                                    244 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0080EA A4 DF            [ 1]  245 	and	a, #0xdf
      0080EC C7 50 C0         [ 1]  246 	ld	0x50c0, a
                                    247 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
      0080EF 81               [ 4]  248 	ret
                                    249 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    250 ;	-----------------------------------------
                                    251 ;	 function CLK_PeripheralClockConfig
                                    252 ;	-----------------------------------------
      0080F0                        253 _CLK_PeripheralClockConfig:
      0080F0 89               [ 2]  254 	pushw	x
                                    255 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0080F1 7B 05            [ 1]  256 	ld	a, (0x05, sp)
      0080F3 A4 0F            [ 1]  257 	and	a, #0x0f
      0080F5 88               [ 1]  258 	push	a
      0080F6 A6 01            [ 1]  259 	ld	a, #0x01
      0080F8 6B 02            [ 1]  260 	ld	(0x02, sp), a
      0080FA 84               [ 1]  261 	pop	a
      0080FB 4D               [ 1]  262 	tnz	a
      0080FC 27 05            [ 1]  263 	jreq	00128$
      0080FE                        264 00127$:
      0080FE 08 01            [ 1]  265 	sll	(0x01, sp)
      008100 4A               [ 1]  266 	dec	a
      008101 26 FB            [ 1]  267 	jrne	00127$
      008103                        268 00128$:
                                    269 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008103 7B 01            [ 1]  270 	ld	a, (0x01, sp)
      008105 43               [ 1]  271 	cpl	a
      008106 6B 02            [ 1]  272 	ld	(0x02, sp), a
                                    273 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008108 7B 05            [ 1]  274 	ld	a, (0x05, sp)
      00810A A5 10            [ 1]  275 	bcp	a, #0x10
      00810C 26 15            [ 1]  276 	jrne	00108$
                                    277 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00810E C6 50 C7         [ 1]  278 	ld	a, 0x50c7
                                    279 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      008111 0D 06            [ 1]  280 	tnz	(0x06, sp)
      008113 27 07            [ 1]  281 	jreq	00102$
                                    282 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008115 1A 01            [ 1]  283 	or	a, (0x01, sp)
      008117 C7 50 C7         [ 1]  284 	ld	0x50c7, a
      00811A 20 1A            [ 2]  285 	jra	00110$
      00811C                        286 00102$:
                                    287 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00811C 14 02            [ 1]  288 	and	a, (0x02, sp)
      00811E C7 50 C7         [ 1]  289 	ld	0x50c7, a
      008121 20 13            [ 2]  290 	jra	00110$
      008123                        291 00108$:
                                    292 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008123 C6 50 CA         [ 1]  293 	ld	a, 0x50ca
                                    294 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      008126 0D 06            [ 1]  295 	tnz	(0x06, sp)
      008128 27 07            [ 1]  296 	jreq	00105$
                                    297 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00812A 1A 01            [ 1]  298 	or	a, (0x01, sp)
      00812C C7 50 CA         [ 1]  299 	ld	0x50ca, a
      00812F 20 05            [ 2]  300 	jra	00110$
      008131                        301 00105$:
                                    302 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008131 14 02            [ 1]  303 	and	a, (0x02, sp)
      008133 C7 50 CA         [ 1]  304 	ld	0x50ca, a
      008136                        305 00110$:
                                    306 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
      008136 85               [ 2]  307 	popw	x
      008137 81               [ 4]  308 	ret
                                    309 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    310 ;	-----------------------------------------
                                    311 ;	 function CLK_ClockSwitchConfig
                                    312 ;	-----------------------------------------
      008138                        313 _CLK_ClockSwitchConfig:
                                    314 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008138 C6 50 C3         [ 1]  315 	ld	a, 0x50c3
      00813B 90 97            [ 1]  316 	ld	yl, a
                                    317 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00813D C6 50 C5         [ 1]  318 	ld	a, 0x50c5
                                    319 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008140 88               [ 1]  320 	push	a
      008141 7B 04            [ 1]  321 	ld	a, (0x04, sp)
      008143 4A               [ 1]  322 	dec	a
      008144 84               [ 1]  323 	pop	a
      008145 26 38            [ 1]  324 	jrne	00122$
                                    325 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008147 AA 02            [ 1]  326 	or	a, #0x02
      008149 C7 50 C5         [ 1]  327 	ld	0x50c5, a
      00814C C6 50 C5         [ 1]  328 	ld	a, 0x50c5
                                    329 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      00814F 0D 05            [ 1]  330 	tnz	(0x05, sp)
      008151 27 07            [ 1]  331 	jreq	00102$
                                    332 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      008153 AA 04            [ 1]  333 	or	a, #0x04
      008155 C7 50 C5         [ 1]  334 	ld	0x50c5, a
      008158 20 05            [ 2]  335 	jra	00103$
      00815A                        336 00102$:
                                    337 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00815A A4 FB            [ 1]  338 	and	a, #0xfb
      00815C C7 50 C5         [ 1]  339 	ld	0x50c5, a
      00815F                        340 00103$:
                                    341 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00815F AE 50 C4         [ 2]  342 	ldw	x, #0x50c4
      008162 7B 04            [ 1]  343 	ld	a, (0x04, sp)
      008164 F7               [ 1]  344 	ld	(x), a
                                    345 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008165 5F               [ 1]  346 	clrw	x
      008166 5A               [ 2]  347 	decw	x
      008167                        348 00105$:
      008167 C6 50 C5         [ 1]  349 	ld	a, 0x50c5
      00816A 44               [ 1]  350 	srl	a
      00816B 24 06            [ 1]  351 	jrnc	00107$
      00816D 5D               [ 2]  352 	tnzw	x
      00816E 27 03            [ 1]  353 	jreq	00107$
                                    354 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
      008170 5A               [ 2]  355 	decw	x
      008171 20 F4            [ 2]  356 	jra	00105$
      008173                        357 00107$:
                                    358 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
      008173 5D               [ 2]  359 	tnzw	x
      008174 27 05            [ 1]  360 	jreq	00109$
                                    361 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
      008176 A6 01            [ 1]  362 	ld	a, #0x01
      008178 97               [ 1]  363 	ld	xl, a
      008179 20 37            [ 2]  364 	jra	00123$
      00817B                        365 00109$:
                                    366 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
      00817B 4F               [ 1]  367 	clr	a
      00817C 97               [ 1]  368 	ld	xl, a
      00817D 20 33            [ 2]  369 	jra	00123$
      00817F                        370 00122$:
                                    371 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      00817F 0D 05            [ 1]  372 	tnz	(0x05, sp)
      008181 27 07            [ 1]  373 	jreq	00112$
                                    374 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008183 AA 04            [ 1]  375 	or	a, #0x04
      008185 C7 50 C5         [ 1]  376 	ld	0x50c5, a
      008188 20 05            [ 2]  377 	jra	00113$
      00818A                        378 00112$:
                                    379 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00818A A4 FB            [ 1]  380 	and	a, #0xfb
      00818C C7 50 C5         [ 1]  381 	ld	0x50c5, a
      00818F                        382 00113$:
                                    383 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00818F AE 50 C4         [ 2]  384 	ldw	x, #0x50c4
      008192 7B 04            [ 1]  385 	ld	a, (0x04, sp)
      008194 F7               [ 1]  386 	ld	(x), a
                                    387 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008195 5F               [ 1]  388 	clrw	x
      008196 5A               [ 2]  389 	decw	x
      008197                        390 00115$:
      008197 C6 50 C5         [ 1]  391 	ld	a, 0x50c5
      00819A A5 08            [ 1]  392 	bcp	a, #0x08
      00819C 27 06            [ 1]  393 	jreq	00117$
      00819E 5D               [ 2]  394 	tnzw	x
      00819F 27 03            [ 1]  395 	jreq	00117$
                                    396 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
      0081A1 5A               [ 2]  397 	decw	x
      0081A2 20 F3            [ 2]  398 	jra	00115$
      0081A4                        399 00117$:
                                    400 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
      0081A4 5D               [ 2]  401 	tnzw	x
      0081A5 27 09            [ 1]  402 	jreq	00119$
                                    403 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0081A7 72 12 50 C5      [ 1]  404 	bset	20677, #1
                                    405 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
      0081AB A6 01            [ 1]  406 	ld	a, #0x01
      0081AD 97               [ 1]  407 	ld	xl, a
      0081AE 20 02            [ 2]  408 	jra	00123$
      0081B0                        409 00119$:
                                    410 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
      0081B0 4F               [ 1]  411 	clr	a
      0081B1 97               [ 1]  412 	ld	xl, a
      0081B2                        413 00123$:
                                    414 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
      0081B2 9F               [ 1]  415 	ld	a, xl
      0081B3 4D               [ 1]  416 	tnz	a
      0081B4 27 2E            [ 1]  417 	jreq	00136$
                                    418 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0081B6 0D 06            [ 1]  419 	tnz	(0x06, sp)
      0081B8 26 0C            [ 1]  420 	jrne	00132$
      0081BA 90 9F            [ 1]  421 	ld	a, yl
      0081BC A1 E1            [ 1]  422 	cp	a, #0xe1
      0081BE 26 06            [ 1]  423 	jrne	00132$
                                    424 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0081C0 72 11 50 C0      [ 1]  425 	bres	20672, #0
      0081C4 20 1E            [ 2]  426 	jra	00136$
      0081C6                        427 00132$:
                                    428 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0081C6 0D 06            [ 1]  429 	tnz	(0x06, sp)
      0081C8 26 0C            [ 1]  430 	jrne	00128$
      0081CA 90 9F            [ 1]  431 	ld	a, yl
      0081CC A1 D2            [ 1]  432 	cp	a, #0xd2
      0081CE 26 06            [ 1]  433 	jrne	00128$
                                    434 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0081D0 72 17 50 C0      [ 1]  435 	bres	20672, #3
      0081D4 20 0E            [ 2]  436 	jra	00136$
      0081D6                        437 00128$:
                                    438 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0081D6 0D 06            [ 1]  439 	tnz	(0x06, sp)
      0081D8 26 0A            [ 1]  440 	jrne	00136$
      0081DA 90 9F            [ 1]  441 	ld	a, yl
      0081DC A1 B4            [ 1]  442 	cp	a, #0xb4
      0081DE 26 04            [ 1]  443 	jrne	00136$
                                    444 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0081E0 72 11 50 C1      [ 1]  445 	bres	20673, #0
      0081E4                        446 00136$:
                                    447 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
      0081E4 9F               [ 1]  448 	ld	a, xl
                                    449 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
      0081E5 81               [ 4]  450 	ret
                                    451 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    452 ;	-----------------------------------------
                                    453 ;	 function CLK_HSIPrescalerConfig
                                    454 ;	-----------------------------------------
      0081E6                        455 _CLK_HSIPrescalerConfig:
                                    456 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0081E6 C6 50 C6         [ 1]  457 	ld	a, 0x50c6
      0081E9 A4 E7            [ 1]  458 	and	a, #0xe7
      0081EB C7 50 C6         [ 1]  459 	ld	0x50c6, a
                                    460 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0081EE C6 50 C6         [ 1]  461 	ld	a, 0x50c6
      0081F1 1A 03            [ 1]  462 	or	a, (0x03, sp)
      0081F3 C7 50 C6         [ 1]  463 	ld	0x50c6, a
                                    464 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
      0081F6 81               [ 4]  465 	ret
                                    466 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    467 ;	-----------------------------------------
                                    468 ;	 function CLK_CCOConfig
                                    469 ;	-----------------------------------------
      0081F7                        470 _CLK_CCOConfig:
                                    471 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0081F7 C6 50 C9         [ 1]  472 	ld	a, 0x50c9
      0081FA A4 E1            [ 1]  473 	and	a, #0xe1
      0081FC C7 50 C9         [ 1]  474 	ld	0x50c9, a
                                    475 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0081FF C6 50 C9         [ 1]  476 	ld	a, 0x50c9
      008202 1A 03            [ 1]  477 	or	a, (0x03, sp)
      008204 C7 50 C9         [ 1]  478 	ld	0x50c9, a
                                    479 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      008207 72 10 50 C9      [ 1]  480 	bset	20681, #0
                                    481 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
      00820B 81               [ 4]  482 	ret
                                    483 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    484 ;	-----------------------------------------
                                    485 ;	 function CLK_ITConfig
                                    486 ;	-----------------------------------------
      00820C                        487 _CLK_ITConfig:
      00820C 88               [ 1]  488 	push	a
                                    489 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      00820D 7B 04            [ 1]  490 	ld	a, (0x04, sp)
      00820F A0 0C            [ 1]  491 	sub	a, #0x0c
      008211 26 04            [ 1]  492 	jrne	00140$
      008213 4C               [ 1]  493 	inc	a
      008214 6B 01            [ 1]  494 	ld	(0x01, sp), a
      008216 C1                     495 	.byte 0xc1
      008217                        496 00140$:
      008217 0F 01            [ 1]  497 	clr	(0x01, sp)
      008219                        498 00141$:
      008219 7B 04            [ 1]  499 	ld	a, (0x04, sp)
      00821B A0 1C            [ 1]  500 	sub	a, #0x1c
      00821D 26 02            [ 1]  501 	jrne	00143$
      00821F 4C               [ 1]  502 	inc	a
      008220 21                     503 	.byte 0x21
      008221                        504 00143$:
      008221 4F               [ 1]  505 	clr	a
      008222                        506 00144$:
                                    507 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      008222 0D 05            [ 1]  508 	tnz	(0x05, sp)
      008224 27 13            [ 1]  509 	jreq	00110$
                                    510 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      008226 0D 01            [ 1]  511 	tnz	(0x01, sp)
      008228 26 09            [ 1]  512 	jrne	00102$
      00822A 4D               [ 1]  513 	tnz	a
      00822B 27 1D            [ 1]  514 	jreq	00112$
                                    515 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      00822D 72 14 50 C5      [ 1]  516 	bset	20677, #2
                                    517 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
      008231 20 17            [ 2]  518 	jra	00112$
                                    519 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008233                        520 00102$:
                                    521 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008233 72 14 50 C8      [ 1]  522 	bset	20680, #2
                                    523 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
      008237 20 11            [ 2]  524 	jra	00112$
                                    525 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
      008239                        526 00110$:
                                    527 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
      008239 0D 01            [ 1]  528 	tnz	(0x01, sp)
      00823B 26 09            [ 1]  529 	jrne	00106$
      00823D 4D               [ 1]  530 	tnz	a
      00823E 27 0A            [ 1]  531 	jreq	00112$
                                    532 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008240 72 15 50 C5      [ 1]  533 	bres	20677, #2
                                    534 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
      008244 20 04            [ 2]  535 	jra	00112$
                                    536 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      008246                        537 00106$:
                                    538 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      008246 72 15 50 C8      [ 1]  539 	bres	20680, #2
                                    540 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
      00824A                        541 00112$:
                                    542 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
      00824A 84               [ 1]  543 	pop	a
      00824B 81               [ 4]  544 	ret
                                    545 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    546 ;	-----------------------------------------
                                    547 ;	 function CLK_SYSCLKConfig
                                    548 ;	-----------------------------------------
      00824C                        549 _CLK_SYSCLKConfig:
      00824C 88               [ 1]  550 	push	a
                                    551 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00824D C6 50 C6         [ 1]  552 	ld	a, 0x50c6
                                    553 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      008250 0D 04            [ 1]  554 	tnz	(0x04, sp)
      008252 2B 15            [ 1]  555 	jrmi	00102$
                                    556 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008254 A4 E7            [ 1]  557 	and	a, #0xe7
      008256 C7 50 C6         [ 1]  558 	ld	0x50c6, a
                                    559 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008259 C6 50 C6         [ 1]  560 	ld	a, 0x50c6
      00825C 6B 01            [ 1]  561 	ld	(0x01, sp), a
      00825E 7B 04            [ 1]  562 	ld	a, (0x04, sp)
      008260 A4 18            [ 1]  563 	and	a, #0x18
      008262 1A 01            [ 1]  564 	or	a, (0x01, sp)
      008264 C7 50 C6         [ 1]  565 	ld	0x50c6, a
      008267 20 13            [ 2]  566 	jra	00104$
      008269                        567 00102$:
                                    568 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008269 A4 F8            [ 1]  569 	and	a, #0xf8
      00826B C7 50 C6         [ 1]  570 	ld	0x50c6, a
                                    571 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00826E C6 50 C6         [ 1]  572 	ld	a, 0x50c6
      008271 6B 01            [ 1]  573 	ld	(0x01, sp), a
      008273 7B 04            [ 1]  574 	ld	a, (0x04, sp)
      008275 A4 07            [ 1]  575 	and	a, #0x07
      008277 1A 01            [ 1]  576 	or	a, (0x01, sp)
      008279 C7 50 C6         [ 1]  577 	ld	0x50c6, a
      00827C                        578 00104$:
                                    579 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
      00827C 84               [ 1]  580 	pop	a
      00827D 81               [ 4]  581 	ret
                                    582 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    583 ;	-----------------------------------------
                                    584 ;	 function CLK_SWIMConfig
                                    585 ;	-----------------------------------------
      00827E                        586 _CLK_SWIMConfig:
                                    587 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00827E C6 50 CD         [ 1]  588 	ld	a, 0x50cd
                                    589 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008281 0D 03            [ 1]  590 	tnz	(0x03, sp)
      008283 27 06            [ 1]  591 	jreq	00102$
                                    592 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008285 AA 01            [ 1]  593 	or	a, #0x01
      008287 C7 50 CD         [ 1]  594 	ld	0x50cd, a
      00828A 81               [ 4]  595 	ret
      00828B                        596 00102$:
                                    597 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00828B A4 FE            [ 1]  598 	and	a, #0xfe
      00828D C7 50 CD         [ 1]  599 	ld	0x50cd, a
                                    600 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
      008290 81               [ 4]  601 	ret
                                    602 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function CLK_ClockSecuritySystemEnable
                                    605 ;	-----------------------------------------
      008291                        606 _CLK_ClockSecuritySystemEnable:
                                    607 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008291 72 10 50 C8      [ 1]  608 	bset	20680, #0
                                    609 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
      008295 81               [ 4]  610 	ret
                                    611 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    612 ;	-----------------------------------------
                                    613 ;	 function CLK_GetSYSCLKSource
                                    614 ;	-----------------------------------------
      008296                        615 _CLK_GetSYSCLKSource:
                                    616 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      008296 C6 50 C3         [ 1]  617 	ld	a, 0x50c3
                                    618 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
      008299 81               [ 4]  619 	ret
                                    620 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    621 ;	-----------------------------------------
                                    622 ;	 function CLK_GetClockFreq
                                    623 ;	-----------------------------------------
      00829A                        624 _CLK_GetClockFreq:
      00829A 52 04            [ 2]  625 	sub	sp, #4
                                    626 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00829C C6 50 C3         [ 1]  627 	ld	a, 0x50c3
                                    628 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00829F 6B 04            [ 1]  629 	ld	(0x04, sp), a
      0082A1 A1 E1            [ 1]  630 	cp	a, #0xe1
      0082A3 26 26            [ 1]  631 	jrne	00105$
                                    632 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0082A5 C6 50 C6         [ 1]  633 	ld	a, 0x50c6
      0082A8 A4 18            [ 1]  634 	and	a, #0x18
                                    635 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0082AA 44               [ 1]  636 	srl	a
      0082AB 44               [ 1]  637 	srl	a
      0082AC 44               [ 1]  638 	srl	a
                                    639 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0082AD 5F               [ 1]  640 	clrw	x
      0082AE 97               [ 1]  641 	ld	xl, a
      0082AF 1C 80 24         [ 2]  642 	addw	x, #(_HSIDivFactor + 0)
      0082B2 F6               [ 1]  643 	ld	a, (x)
                                    644 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0082B3 5F               [ 1]  645 	clrw	x
      0082B4 97               [ 1]  646 	ld	xl, a
      0082B5 90 5F            [ 1]  647 	clrw	y
      0082B7 89               [ 2]  648 	pushw	x
      0082B8 90 89            [ 2]  649 	pushw	y
      0082BA 4B 00            [ 1]  650 	push	#0x00
      0082BC 4B 24            [ 1]  651 	push	#0x24
      0082BE 4B F4            [ 1]  652 	push	#0xf4
      0082C0 4B 00            [ 1]  653 	push	#0x00
      0082C2 CD 85 4C         [ 4]  654 	call	__divulong
      0082C5 5B 08            [ 2]  655 	addw	sp, #8
      0082C7 1F 03            [ 2]  656 	ldw	(0x03, sp), x
      0082C9 20 1A            [ 2]  657 	jra	00106$
      0082CB                        658 00105$:
                                    659 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0082CB 7B 04            [ 1]  660 	ld	a, (0x04, sp)
      0082CD A1 D2            [ 1]  661 	cp	a, #0xd2
      0082CF 26 0B            [ 1]  662 	jrne	00102$
                                    663 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0082D1 AE F4 00         [ 2]  664 	ldw	x, #0xf400
      0082D4 1F 03            [ 2]  665 	ldw	(0x03, sp), x
      0082D6 90 AE 00 01      [ 2]  666 	ldw	y, #0x0001
      0082DA 20 09            [ 2]  667 	jra	00106$
      0082DC                        668 00102$:
                                    669 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0082DC AE 24 00         [ 2]  670 	ldw	x, #0x2400
      0082DF 1F 03            [ 2]  671 	ldw	(0x03, sp), x
      0082E1 90 AE 00 F4      [ 2]  672 	ldw	y, #0x00f4
      0082E5                        673 00106$:
                                    674 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0082E5 1E 03            [ 2]  675 	ldw	x, (0x03, sp)
                                    676 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
      0082E7 5B 04            [ 2]  677 	addw	sp, #4
      0082E9 81               [ 4]  678 	ret
                                    679 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    680 ;	-----------------------------------------
                                    681 ;	 function CLK_AdjustHSICalibrationValue
                                    682 ;	-----------------------------------------
      0082EA                        683 _CLK_AdjustHSICalibrationValue:
                                    684 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0082EA C6 50 CC         [ 1]  685 	ld	a, 0x50cc
      0082ED A4 F8            [ 1]  686 	and	a, #0xf8
      0082EF 1A 03            [ 1]  687 	or	a, (0x03, sp)
      0082F1 C7 50 CC         [ 1]  688 	ld	0x50cc, a
                                    689 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
      0082F4 81               [ 4]  690 	ret
                                    691 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    692 ;	-----------------------------------------
                                    693 ;	 function CLK_SYSCLKEmergencyClear
                                    694 ;	-----------------------------------------
      0082F5                        695 _CLK_SYSCLKEmergencyClear:
                                    696 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0082F5 72 11 50 C5      [ 1]  697 	bres	20677, #0
                                    698 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
      0082F9 81               [ 4]  699 	ret
                                    700 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    701 ;	-----------------------------------------
                                    702 ;	 function CLK_GetFlagStatus
                                    703 ;	-----------------------------------------
      0082FA                        704 _CLK_GetFlagStatus:
      0082FA 88               [ 1]  705 	push	a
                                    706 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0082FB 4F               [ 1]  707 	clr	a
      0082FC 97               [ 1]  708 	ld	xl, a
      0082FD 7B 04            [ 1]  709 	ld	a, (0x04, sp)
      0082FF 95               [ 1]  710 	ld	xh, a
                                    711 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008300 A3 01 00         [ 2]  712 	cpw	x, #0x0100
      008303 26 05            [ 1]  713 	jrne	00111$
                                    714 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      008305 C6 50 C0         [ 1]  715 	ld	a, 0x50c0
      008308 20 21            [ 2]  716 	jra	00112$
      00830A                        717 00111$:
                                    718 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00830A A3 02 00         [ 2]  719 	cpw	x, #0x0200
      00830D 26 05            [ 1]  720 	jrne	00108$
                                    721 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      00830F C6 50 C1         [ 1]  722 	ld	a, 0x50c1
      008312 20 17            [ 2]  723 	jra	00112$
      008314                        724 00108$:
                                    725 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008314 A3 03 00         [ 2]  726 	cpw	x, #0x0300
      008317 26 05            [ 1]  727 	jrne	00105$
                                    728 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008319 C6 50 C5         [ 1]  729 	ld	a, 0x50c5
      00831C 20 0D            [ 2]  730 	jra	00112$
      00831E                        731 00105$:
                                    732 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00831E A3 04 00         [ 2]  733 	cpw	x, #0x0400
      008321 26 05            [ 1]  734 	jrne	00102$
                                    735 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008323 C6 50 C8         [ 1]  736 	ld	a, 0x50c8
      008326 20 03            [ 2]  737 	jra	00112$
      008328                        738 00102$:
                                    739 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      008328 C6 50 C9         [ 1]  740 	ld	a, 0x50c9
      00832B                        741 00112$:
                                    742 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00832B 88               [ 1]  743 	push	a
      00832C 7B 06            [ 1]  744 	ld	a, (0x06, sp)
      00832E 6B 02            [ 1]  745 	ld	(0x02, sp), a
      008330 84               [ 1]  746 	pop	a
      008331 14 01            [ 1]  747 	and	a, (0x01, sp)
      008333 27 03            [ 1]  748 	jreq	00114$
                                    749 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
      008335 A6 01            [ 1]  750 	ld	a, #0x01
                                    751 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
      008337 21                     752 	.byte 0x21
      008338                        753 00114$:
      008338 4F               [ 1]  754 	clr	a
      008339                        755 00115$:
                                    756 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                    757 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
      008339 5B 01            [ 2]  758 	addw	sp, #1
      00833B 81               [ 4]  759 	ret
                                    760 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    761 ;	-----------------------------------------
                                    762 ;	 function CLK_GetITStatus
                                    763 ;	-----------------------------------------
      00833C                        764 _CLK_GetITStatus:
                                    765 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00833C 7B 03            [ 1]  766 	ld	a, (0x03, sp)
      00833E A1 1C            [ 1]  767 	cp	a, #0x1c
      008340 26 0D            [ 1]  768 	jrne	00108$
                                    769 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008342 C6 50 C5         [ 1]  770 	ld	a, 0x50c5
      008345 14 03            [ 1]  771 	and	a, (0x03, sp)
                                    772 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
      008347 A0 0C            [ 1]  773 	sub	a, #0x0c
      008349 26 02            [ 1]  774 	jrne	00102$
      00834B 4C               [ 1]  775 	inc	a
      00834C 81               [ 4]  776 	ret
      00834D                        777 00102$:
                                    778 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
      00834D 4F               [ 1]  779 	clr	a
      00834E 81               [ 4]  780 	ret
      00834F                        781 00108$:
                                    782 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      00834F C6 50 C8         [ 1]  783 	ld	a, 0x50c8
      008352 14 03            [ 1]  784 	and	a, (0x03, sp)
                                    785 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
      008354 A0 0C            [ 1]  786 	sub	a, #0x0c
      008356 26 02            [ 1]  787 	jrne	00105$
      008358 4C               [ 1]  788 	inc	a
      008359 81               [ 4]  789 	ret
      00835A                        790 00105$:
                                    791 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
      00835A 4F               [ 1]  792 	clr	a
                                    793 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
                                    794 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
      00835B 81               [ 4]  795 	ret
                                    796 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                    797 ;	-----------------------------------------
                                    798 ;	 function CLK_ClearITPendingBit
                                    799 ;	-----------------------------------------
      00835C                        800 _CLK_ClearITPendingBit:
                                    801 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      00835C 7B 03            [ 1]  802 	ld	a, (0x03, sp)
      00835E A1 0C            [ 1]  803 	cp	a, #0x0c
      008360 26 05            [ 1]  804 	jrne	00102$
                                    805 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      008362 72 17 50 C8      [ 1]  806 	bres	20680, #3
      008366 81               [ 4]  807 	ret
      008367                        808 00102$:
                                    809 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008367 72 17 50 C5      [ 1]  810 	bres	20677, #3
                                    811 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
      00836B 81               [ 4]  812 	ret
                                    813 	.area CODE
                                    814 	.area CONST
      008024                        815 _HSIDivFactor:
      008024 01                     816 	.db #0x01	; 1
      008025 02                     817 	.db #0x02	; 2
      008026 04                     818 	.db #0x04	; 4
      008027 08                     819 	.db #0x08	; 8
      008028                        820 _CLKPrescTable:
      008028 01                     821 	.db #0x01	; 1
      008029 02                     822 	.db #0x02	; 2
      00802A 04                     823 	.db #0x04	; 4
      00802B 08                     824 	.db #0x08	; 8
      00802C 0A                     825 	.db #0x0a	; 10
      00802D 10                     826 	.db #0x10	; 16
      00802E 14                     827 	.db #0x14	; 20
      00802F 28                     828 	.db #0x28	; 40
                                    829 	.area INITIALIZER
                                    830 	.area CABS (ABS)
