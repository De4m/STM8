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
      0086E0                         77 _CLK_DeInit:
                                     78 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      0086E0 35 01 50 C0      [ 1]   79 	mov	0x50c0+0, #0x01
                                     80 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      0086E4 35 00 50 C1      [ 1]   81 	mov	0x50c1+0, #0x00
                                     82 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      0086E8 35 E1 50 C4      [ 1]   83 	mov	0x50c4+0, #0xe1
                                     84 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      0086EC 35 00 50 C5      [ 1]   85 	mov	0x50c5+0, #0x00
                                     86 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      0086F0 35 18 50 C6      [ 1]   87 	mov	0x50c6+0, #0x18
                                     88 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      0086F4 35 FF 50 C7      [ 1]   89 	mov	0x50c7+0, #0xff
                                     90 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      0086F8 35 FF 50 CA      [ 1]   91 	mov	0x50ca+0, #0xff
                                     92 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      0086FC 35 00 50 C8      [ 1]   93 	mov	0x50c8+0, #0x00
                                     94 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008700 35 00 50 C9      [ 1]   95 	mov	0x50c9+0, #0x00
                                     96 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008704                         97 00101$:
      008704 C6 50 C9         [ 1]   98 	ld	a, 0x50c9
      008707 44               [ 1]   99 	srl	a
      008708 25 FA            [ 1]  100 	jrc	00101$
                                    101 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00870A 35 00 50 C9      [ 1]  102 	mov	0x50c9+0, #0x00
                                    103 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00870E 35 00 50 CC      [ 1]  104 	mov	0x50cc+0, #0x00
                                    105 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008712 35 00 50 CD      [ 1]  106 	mov	0x50cd+0, #0x00
                                    107 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 88: }
      008716 81               [ 4]  108 	ret
                                    109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    110 ;	-----------------------------------------
                                    111 ;	 function CLK_FastHaltWakeUpCmd
                                    112 ;	-----------------------------------------
      008717                        113 _CLK_FastHaltWakeUpCmd:
                                    114 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008717 C6 50 C0         [ 1]  115 	ld	a, 0x50c0
                                    116 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      00871A 0D 03            [ 1]  117 	tnz	(0x03, sp)
      00871C 27 06            [ 1]  118 	jreq	00102$
                                    119 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00871E AA 04            [ 1]  120 	or	a, #0x04
      008720 C7 50 C0         [ 1]  121 	ld	0x50c0, a
      008723 81               [ 4]  122 	ret
      008724                        123 00102$:
                                    124 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      008724 A4 FB            [ 1]  125 	and	a, #0xfb
      008726 C7 50 C0         [ 1]  126 	ld	0x50c0, a
                                    127 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 114: }
      008729 81               [ 4]  128 	ret
                                    129 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    130 ;	-----------------------------------------
                                    131 ;	 function CLK_HSECmd
                                    132 ;	-----------------------------------------
      00872A                        133 _CLK_HSECmd:
                                    134 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      00872A C6 50 C1         [ 1]  135 	ld	a, 0x50c1
                                    136 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      00872D 0D 03            [ 1]  137 	tnz	(0x03, sp)
      00872F 27 06            [ 1]  138 	jreq	00102$
                                    139 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008731 AA 01            [ 1]  140 	or	a, #0x01
      008733 C7 50 C1         [ 1]  141 	ld	0x50c1, a
      008736 81               [ 4]  142 	ret
      008737                        143 00102$:
                                    144 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008737 A4 FE            [ 1]  145 	and	a, #0xfe
      008739 C7 50 C1         [ 1]  146 	ld	0x50c1, a
                                    147 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 136: }
      00873C 81               [ 4]  148 	ret
                                    149 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    150 ;	-----------------------------------------
                                    151 ;	 function CLK_HSICmd
                                    152 ;	-----------------------------------------
      00873D                        153 _CLK_HSICmd:
                                    154 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00873D C6 50 C0         [ 1]  155 	ld	a, 0x50c0
                                    156 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      008740 0D 03            [ 1]  157 	tnz	(0x03, sp)
      008742 27 06            [ 1]  158 	jreq	00102$
                                    159 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008744 AA 01            [ 1]  160 	or	a, #0x01
      008746 C7 50 C0         [ 1]  161 	ld	0x50c0, a
      008749 81               [ 4]  162 	ret
      00874A                        163 00102$:
                                    164 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00874A A4 FE            [ 1]  165 	and	a, #0xfe
      00874C C7 50 C0         [ 1]  166 	ld	0x50c0, a
                                    167 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 158: }
      00874F 81               [ 4]  168 	ret
                                    169 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function CLK_LSICmd
                                    172 ;	-----------------------------------------
      008750                        173 _CLK_LSICmd:
                                    174 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008750 C6 50 C0         [ 1]  175 	ld	a, 0x50c0
                                    176 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      008753 0D 03            [ 1]  177 	tnz	(0x03, sp)
      008755 27 06            [ 1]  178 	jreq	00102$
                                    179 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008757 AA 08            [ 1]  180 	or	a, #0x08
      008759 C7 50 C0         [ 1]  181 	ld	0x50c0, a
      00875C 81               [ 4]  182 	ret
      00875D                        183 00102$:
                                    184 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00875D A4 F7            [ 1]  185 	and	a, #0xf7
      00875F C7 50 C0         [ 1]  186 	ld	0x50c0, a
                                    187 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 181: }
      008762 81               [ 4]  188 	ret
                                    189 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    190 ;	-----------------------------------------
                                    191 ;	 function CLK_CCOCmd
                                    192 ;	-----------------------------------------
      008763                        193 _CLK_CCOCmd:
                                    194 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008763 C6 50 C9         [ 1]  195 	ld	a, 0x50c9
                                    196 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      008766 0D 03            [ 1]  197 	tnz	(0x03, sp)
      008768 27 06            [ 1]  198 	jreq	00102$
                                    199 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      00876A AA 01            [ 1]  200 	or	a, #0x01
      00876C C7 50 C9         [ 1]  201 	ld	0x50c9, a
      00876F 81               [ 4]  202 	ret
      008770                        203 00102$:
                                    204 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      008770 A4 FE            [ 1]  205 	and	a, #0xfe
      008772 C7 50 C9         [ 1]  206 	ld	0x50c9, a
                                    207 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 204: }
      008775 81               [ 4]  208 	ret
                                    209 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    210 ;	-----------------------------------------
                                    211 ;	 function CLK_ClockSwitchCmd
                                    212 ;	-----------------------------------------
      008776                        213 _CLK_ClockSwitchCmd:
                                    214 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008776 C6 50 C5         [ 1]  215 	ld	a, 0x50c5
                                    216 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      008779 0D 03            [ 1]  217 	tnz	(0x03, sp)
      00877B 27 06            [ 1]  218 	jreq	00102$
                                    219 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00877D AA 02            [ 1]  220 	or	a, #0x02
      00877F C7 50 C5         [ 1]  221 	ld	0x50c5, a
      008782 81               [ 4]  222 	ret
      008783                        223 00102$:
                                    224 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008783 A4 FD            [ 1]  225 	and	a, #0xfd
      008785 C7 50 C5         [ 1]  226 	ld	0x50c5, a
                                    227 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 228: }
      008788 81               [ 4]  228 	ret
                                    229 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    230 ;	-----------------------------------------
                                    231 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    232 ;	-----------------------------------------
      008789                        233 _CLK_SlowActiveHaltWakeUpCmd:
                                    234 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008789 C6 50 C0         [ 1]  235 	ld	a, 0x50c0
                                    236 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      00878C 0D 03            [ 1]  237 	tnz	(0x03, sp)
      00878E 27 06            [ 1]  238 	jreq	00102$
                                    239 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008790 AA 20            [ 1]  240 	or	a, #0x20
      008792 C7 50 C0         [ 1]  241 	ld	0x50c0, a
      008795 81               [ 4]  242 	ret
      008796                        243 00102$:
                                    244 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      008796 A4 DF            [ 1]  245 	and	a, #0xdf
      008798 C7 50 C0         [ 1]  246 	ld	0x50c0, a
                                    247 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 253: }
      00879B 81               [ 4]  248 	ret
                                    249 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    250 ;	-----------------------------------------
                                    251 ;	 function CLK_PeripheralClockConfig
                                    252 ;	-----------------------------------------
      00879C                        253 _CLK_PeripheralClockConfig:
      00879C 89               [ 2]  254 	pushw	x
                                    255 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00879D 7B 05            [ 1]  256 	ld	a, (0x05, sp)
      00879F A4 0F            [ 1]  257 	and	a, #0x0f
      0087A1 88               [ 1]  258 	push	a
      0087A2 A6 01            [ 1]  259 	ld	a, #0x01
      0087A4 6B 02            [ 1]  260 	ld	(0x02, sp), a
      0087A6 84               [ 1]  261 	pop	a
      0087A7 4D               [ 1]  262 	tnz	a
      0087A8 27 05            [ 1]  263 	jreq	00128$
      0087AA                        264 00127$:
      0087AA 08 01            [ 1]  265 	sll	(0x01, sp)
      0087AC 4A               [ 1]  266 	dec	a
      0087AD 26 FB            [ 1]  267 	jrne	00127$
      0087AF                        268 00128$:
                                    269 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0087AF 7B 01            [ 1]  270 	ld	a, (0x01, sp)
      0087B1 43               [ 1]  271 	cpl	a
      0087B2 6B 02            [ 1]  272 	ld	(0x02, sp), a
                                    273 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0087B4 7B 05            [ 1]  274 	ld	a, (0x05, sp)
      0087B6 A5 10            [ 1]  275 	bcp	a, #0x10
      0087B8 26 15            [ 1]  276 	jrne	00108$
                                    277 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0087BA C6 50 C7         [ 1]  278 	ld	a, 0x50c7
                                    279 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      0087BD 0D 06            [ 1]  280 	tnz	(0x06, sp)
      0087BF 27 07            [ 1]  281 	jreq	00102$
                                    282 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0087C1 1A 01            [ 1]  283 	or	a, (0x01, sp)
      0087C3 C7 50 C7         [ 1]  284 	ld	0x50c7, a
      0087C6 20 1A            [ 2]  285 	jra	00110$
      0087C8                        286 00102$:
                                    287 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0087C8 14 02            [ 1]  288 	and	a, (0x02, sp)
      0087CA C7 50 C7         [ 1]  289 	ld	0x50c7, a
      0087CD 20 13            [ 2]  290 	jra	00110$
      0087CF                        291 00108$:
                                    292 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0087CF C6 50 CA         [ 1]  293 	ld	a, 0x50ca
                                    294 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      0087D2 0D 06            [ 1]  295 	tnz	(0x06, sp)
      0087D4 27 07            [ 1]  296 	jreq	00105$
                                    297 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0087D6 1A 01            [ 1]  298 	or	a, (0x01, sp)
      0087D8 C7 50 CA         [ 1]  299 	ld	0x50ca, a
      0087DB 20 05            [ 2]  300 	jra	00110$
      0087DD                        301 00105$:
                                    302 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0087DD 14 02            [ 1]  303 	and	a, (0x02, sp)
      0087DF C7 50 CA         [ 1]  304 	ld	0x50ca, a
      0087E2                        305 00110$:
                                    306 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 295: }
      0087E2 85               [ 2]  307 	popw	x
      0087E3 81               [ 4]  308 	ret
                                    309 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    310 ;	-----------------------------------------
                                    311 ;	 function CLK_ClockSwitchConfig
                                    312 ;	-----------------------------------------
      0087E4                        313 _CLK_ClockSwitchConfig:
                                    314 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0087E4 C6 50 C3         [ 1]  315 	ld	a, 0x50c3
      0087E7 90 97            [ 1]  316 	ld	yl, a
                                    317 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0087E9 C6 50 C5         [ 1]  318 	ld	a, 0x50c5
                                    319 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0087EC 88               [ 1]  320 	push	a
      0087ED 7B 04            [ 1]  321 	ld	a, (0x04, sp)
      0087EF 4A               [ 1]  322 	dec	a
      0087F0 84               [ 1]  323 	pop	a
      0087F1 26 38            [ 1]  324 	jrne	00122$
                                    325 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0087F3 AA 02            [ 1]  326 	or	a, #0x02
      0087F5 C7 50 C5         [ 1]  327 	ld	0x50c5, a
      0087F8 C6 50 C5         [ 1]  328 	ld	a, 0x50c5
                                    329 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      0087FB 0D 05            [ 1]  330 	tnz	(0x05, sp)
      0087FD 27 07            [ 1]  331 	jreq	00102$
                                    332 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0087FF AA 04            [ 1]  333 	or	a, #0x04
      008801 C7 50 C5         [ 1]  334 	ld	0x50c5, a
      008804 20 05            [ 2]  335 	jra	00103$
      008806                        336 00102$:
                                    337 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008806 A4 FB            [ 1]  338 	and	a, #0xfb
      008808 C7 50 C5         [ 1]  339 	ld	0x50c5, a
      00880B                        340 00103$:
                                    341 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00880B AE 50 C4         [ 2]  342 	ldw	x, #0x50c4
      00880E 7B 04            [ 1]  343 	ld	a, (0x04, sp)
      008810 F7               [ 1]  344 	ld	(x), a
                                    345 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008811 5F               [ 1]  346 	clrw	x
      008812 5A               [ 2]  347 	decw	x
      008813                        348 00105$:
      008813 C6 50 C5         [ 1]  349 	ld	a, 0x50c5
      008816 44               [ 1]  350 	srl	a
      008817 24 06            [ 1]  351 	jrnc	00107$
      008819 5D               [ 2]  352 	tnzw	x
      00881A 27 03            [ 1]  353 	jreq	00107$
                                    354 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 346: DownCounter--;
      00881C 5A               [ 2]  355 	decw	x
      00881D 20 F4            [ 2]  356 	jra	00105$
      00881F                        357 00107$:
                                    358 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 349: if(DownCounter != 0)
      00881F 5D               [ 2]  359 	tnzw	x
      008820 27 05            [ 1]  360 	jreq	00109$
                                    361 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 351: Swif = SUCCESS;
      008822 A6 01            [ 1]  362 	ld	a, #0x01
      008824 97               [ 1]  363 	ld	xl, a
      008825 20 37            [ 2]  364 	jra	00123$
      008827                        365 00109$:
                                    366 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 355: Swif = ERROR;
      008827 4F               [ 1]  367 	clr	a
      008828 97               [ 1]  368 	ld	xl, a
      008829 20 33            [ 2]  369 	jra	00123$
      00882B                        370 00122$:
                                    371 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      00882B 0D 05            [ 1]  372 	tnz	(0x05, sp)
      00882D 27 07            [ 1]  373 	jreq	00112$
                                    374 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00882F AA 04            [ 1]  375 	or	a, #0x04
      008831 C7 50 C5         [ 1]  376 	ld	0x50c5, a
      008834 20 05            [ 2]  377 	jra	00113$
      008836                        378 00112$:
                                    379 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008836 A4 FB            [ 1]  380 	and	a, #0xfb
      008838 C7 50 C5         [ 1]  381 	ld	0x50c5, a
      00883B                        382 00113$:
                                    383 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00883B AE 50 C4         [ 2]  384 	ldw	x, #0x50c4
      00883E 7B 04            [ 1]  385 	ld	a, (0x04, sp)
      008840 F7               [ 1]  386 	ld	(x), a
                                    387 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008841 5F               [ 1]  388 	clrw	x
      008842 5A               [ 2]  389 	decw	x
      008843                        390 00115$:
      008843 C6 50 C5         [ 1]  391 	ld	a, 0x50c5
      008846 A5 08            [ 1]  392 	bcp	a, #0x08
      008848 27 06            [ 1]  393 	jreq	00117$
      00884A 5D               [ 2]  394 	tnzw	x
      00884B 27 03            [ 1]  395 	jreq	00117$
                                    396 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 376: DownCounter--;
      00884D 5A               [ 2]  397 	decw	x
      00884E 20 F3            [ 2]  398 	jra	00115$
      008850                        399 00117$:
                                    400 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 379: if(DownCounter != 0)
      008850 5D               [ 2]  401 	tnzw	x
      008851 27 09            [ 1]  402 	jreq	00119$
                                    403 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008853 72 12 50 C5      [ 1]  404 	bset	20677, #1
                                    405 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 383: Swif = SUCCESS;
      008857 A6 01            [ 1]  406 	ld	a, #0x01
      008859 97               [ 1]  407 	ld	xl, a
      00885A 20 02            [ 2]  408 	jra	00123$
      00885C                        409 00119$:
                                    410 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 387: Swif = ERROR;
      00885C 4F               [ 1]  411 	clr	a
      00885D 97               [ 1]  412 	ld	xl, a
      00885E                        413 00123$:
                                    414 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 390: if(Swif != ERROR)
      00885E 9F               [ 1]  415 	ld	a, xl
      00885F 4D               [ 1]  416 	tnz	a
      008860 27 2E            [ 1]  417 	jreq	00136$
                                    418 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008862 0D 06            [ 1]  419 	tnz	(0x06, sp)
      008864 26 0C            [ 1]  420 	jrne	00132$
      008866 90 9F            [ 1]  421 	ld	a, yl
      008868 A1 E1            [ 1]  422 	cp	a, #0xe1
      00886A 26 06            [ 1]  423 	jrne	00132$
                                    424 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00886C 72 11 50 C0      [ 1]  425 	bres	20672, #0
      008870 20 1E            [ 2]  426 	jra	00136$
      008872                        427 00132$:
                                    428 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008872 0D 06            [ 1]  429 	tnz	(0x06, sp)
      008874 26 0C            [ 1]  430 	jrne	00128$
      008876 90 9F            [ 1]  431 	ld	a, yl
      008878 A1 D2            [ 1]  432 	cp	a, #0xd2
      00887A 26 06            [ 1]  433 	jrne	00128$
                                    434 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00887C 72 17 50 C0      [ 1]  435 	bres	20672, #3
      008880 20 0E            [ 2]  436 	jra	00136$
      008882                        437 00128$:
                                    438 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008882 0D 06            [ 1]  439 	tnz	(0x06, sp)
      008884 26 0A            [ 1]  440 	jrne	00136$
      008886 90 9F            [ 1]  441 	ld	a, yl
      008888 A1 B4            [ 1]  442 	cp	a, #0xb4
      00888A 26 04            [ 1]  443 	jrne	00136$
                                    444 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00888C 72 11 50 C1      [ 1]  445 	bres	20673, #0
      008890                        446 00136$:
                                    447 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 406: return(Swif);
      008890 9F               [ 1]  448 	ld	a, xl
                                    449 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 407: }
      008891 81               [ 4]  450 	ret
                                    451 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    452 ;	-----------------------------------------
                                    453 ;	 function CLK_HSIPrescalerConfig
                                    454 ;	-----------------------------------------
      008892                        455 _CLK_HSIPrescalerConfig:
                                    456 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008892 C6 50 C6         [ 1]  457 	ld	a, 0x50c6
      008895 A4 E7            [ 1]  458 	and	a, #0xe7
      008897 C7 50 C6         [ 1]  459 	ld	0x50c6, a
                                    460 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00889A C6 50 C6         [ 1]  461 	ld	a, 0x50c6
      00889D 1A 03            [ 1]  462 	or	a, (0x03, sp)
      00889F C7 50 C6         [ 1]  463 	ld	0x50c6, a
                                    464 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 425: }
      0088A2 81               [ 4]  465 	ret
                                    466 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    467 ;	-----------------------------------------
                                    468 ;	 function CLK_CCOConfig
                                    469 ;	-----------------------------------------
      0088A3                        470 _CLK_CCOConfig:
                                    471 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0088A3 C6 50 C9         [ 1]  472 	ld	a, 0x50c9
      0088A6 A4 E1            [ 1]  473 	and	a, #0xe1
      0088A8 C7 50 C9         [ 1]  474 	ld	0x50c9, a
                                    475 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0088AB C6 50 C9         [ 1]  476 	ld	a, 0x50c9
      0088AE 1A 03            [ 1]  477 	or	a, (0x03, sp)
      0088B0 C7 50 C9         [ 1]  478 	ld	0x50c9, a
                                    479 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      0088B3 72 10 50 C9      [ 1]  480 	bset	20681, #0
                                    481 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 449: }
      0088B7 81               [ 4]  482 	ret
                                    483 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    484 ;	-----------------------------------------
                                    485 ;	 function CLK_ITConfig
                                    486 ;	-----------------------------------------
      0088B8                        487 _CLK_ITConfig:
      0088B8 88               [ 1]  488 	push	a
                                    489 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      0088B9 7B 04            [ 1]  490 	ld	a, (0x04, sp)
      0088BB A0 0C            [ 1]  491 	sub	a, #0x0c
      0088BD 26 04            [ 1]  492 	jrne	00140$
      0088BF 4C               [ 1]  493 	inc	a
      0088C0 6B 01            [ 1]  494 	ld	(0x01, sp), a
      0088C2 C1                     495 	.byte 0xc1
      0088C3                        496 00140$:
      0088C3 0F 01            [ 1]  497 	clr	(0x01, sp)
      0088C5                        498 00141$:
      0088C5 7B 04            [ 1]  499 	ld	a, (0x04, sp)
      0088C7 A0 1C            [ 1]  500 	sub	a, #0x1c
      0088C9 26 02            [ 1]  501 	jrne	00143$
      0088CB 4C               [ 1]  502 	inc	a
      0088CC 21                     503 	.byte 0x21
      0088CD                        504 00143$:
      0088CD 4F               [ 1]  505 	clr	a
      0088CE                        506 00144$:
                                    507 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      0088CE 0D 05            [ 1]  508 	tnz	(0x05, sp)
      0088D0 27 13            [ 1]  509 	jreq	00110$
                                    510 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 467: switch (CLK_IT)
      0088D2 0D 01            [ 1]  511 	tnz	(0x01, sp)
      0088D4 26 09            [ 1]  512 	jrne	00102$
      0088D6 4D               [ 1]  513 	tnz	a
      0088D7 27 1D            [ 1]  514 	jreq	00112$
                                    515 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      0088D9 72 14 50 C5      [ 1]  516 	bset	20677, #2
                                    517 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 471: break;
      0088DD 20 17            [ 2]  518 	jra	00112$
                                    519 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      0088DF                        520 00102$:
                                    521 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      0088DF 72 14 50 C8      [ 1]  522 	bset	20680, #2
                                    523 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 474: break;
      0088E3 20 11            [ 2]  524 	jra	00112$
                                    525 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 477: }
      0088E5                        526 00110$:
                                    527 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 481: switch (CLK_IT)
      0088E5 0D 01            [ 1]  528 	tnz	(0x01, sp)
      0088E7 26 09            [ 1]  529 	jrne	00106$
      0088E9 4D               [ 1]  530 	tnz	a
      0088EA 27 0A            [ 1]  531 	jreq	00112$
                                    532 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      0088EC 72 15 50 C5      [ 1]  533 	bres	20677, #2
                                    534 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 485: break;
      0088F0 20 04            [ 2]  535 	jra	00112$
                                    536 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      0088F2                        537 00106$:
                                    538 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      0088F2 72 15 50 C8      [ 1]  539 	bres	20680, #2
                                    540 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 491: }
      0088F6                        541 00112$:
                                    542 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 493: }
      0088F6 84               [ 1]  543 	pop	a
      0088F7 81               [ 4]  544 	ret
                                    545 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    546 ;	-----------------------------------------
                                    547 ;	 function CLK_SYSCLKConfig
                                    548 ;	-----------------------------------------
      0088F8                        549 _CLK_SYSCLKConfig:
      0088F8 88               [ 1]  550 	push	a
                                    551 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0088F9 C6 50 C6         [ 1]  552 	ld	a, 0x50c6
                                    553 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      0088FC 0D 04            [ 1]  554 	tnz	(0x04, sp)
      0088FE 2B 15            [ 1]  555 	jrmi	00102$
                                    556 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008900 A4 E7            [ 1]  557 	and	a, #0xe7
      008902 C7 50 C6         [ 1]  558 	ld	0x50c6, a
                                    559 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008905 C6 50 C6         [ 1]  560 	ld	a, 0x50c6
      008908 6B 01            [ 1]  561 	ld	(0x01, sp), a
      00890A 7B 04            [ 1]  562 	ld	a, (0x04, sp)
      00890C A4 18            [ 1]  563 	and	a, #0x18
      00890E 1A 01            [ 1]  564 	or	a, (0x01, sp)
      008910 C7 50 C6         [ 1]  565 	ld	0x50c6, a
      008913 20 13            [ 2]  566 	jra	00104$
      008915                        567 00102$:
                                    568 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008915 A4 F8            [ 1]  569 	and	a, #0xf8
      008917 C7 50 C6         [ 1]  570 	ld	0x50c6, a
                                    571 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00891A C6 50 C6         [ 1]  572 	ld	a, 0x50c6
      00891D 6B 01            [ 1]  573 	ld	(0x01, sp), a
      00891F 7B 04            [ 1]  574 	ld	a, (0x04, sp)
      008921 A4 07            [ 1]  575 	and	a, #0x07
      008923 1A 01            [ 1]  576 	or	a, (0x01, sp)
      008925 C7 50 C6         [ 1]  577 	ld	0x50c6, a
      008928                        578 00104$:
                                    579 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 515: }
      008928 84               [ 1]  580 	pop	a
      008929 81               [ 4]  581 	ret
                                    582 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    583 ;	-----------------------------------------
                                    584 ;	 function CLK_SWIMConfig
                                    585 ;	-----------------------------------------
      00892A                        586 _CLK_SWIMConfig:
                                    587 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      00892A C6 50 CD         [ 1]  588 	ld	a, 0x50cd
                                    589 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      00892D 0D 03            [ 1]  590 	tnz	(0x03, sp)
      00892F 27 06            [ 1]  591 	jreq	00102$
                                    592 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008931 AA 01            [ 1]  593 	or	a, #0x01
      008933 C7 50 CD         [ 1]  594 	ld	0x50cd, a
      008936 81               [ 4]  595 	ret
      008937                        596 00102$:
                                    597 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      008937 A4 FE            [ 1]  598 	and	a, #0xfe
      008939 C7 50 CD         [ 1]  599 	ld	0x50cd, a
                                    600 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 538: }
      00893C 81               [ 4]  601 	ret
                                    602 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function CLK_ClockSecuritySystemEnable
                                    605 ;	-----------------------------------------
      00893D                        606 _CLK_ClockSecuritySystemEnable:
                                    607 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      00893D 72 10 50 C8      [ 1]  608 	bset	20680, #0
                                    609 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 551: }
      008941 81               [ 4]  610 	ret
                                    611 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    612 ;	-----------------------------------------
                                    613 ;	 function CLK_GetSYSCLKSource
                                    614 ;	-----------------------------------------
      008942                        615 _CLK_GetSYSCLKSource:
                                    616 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      008942 C6 50 C3         [ 1]  617 	ld	a, 0x50c3
                                    618 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 562: }
      008945 81               [ 4]  619 	ret
                                    620 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    621 ;	-----------------------------------------
                                    622 ;	 function CLK_GetClockFreq
                                    623 ;	-----------------------------------------
      008946                        624 _CLK_GetClockFreq:
      008946 52 04            [ 2]  625 	sub	sp, #4
                                    626 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008948 C6 50 C3         [ 1]  627 	ld	a, 0x50c3
                                    628 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00894B 6B 04            [ 1]  629 	ld	(0x04, sp), a
      00894D A1 E1            [ 1]  630 	cp	a, #0xe1
      00894F 26 26            [ 1]  631 	jrne	00105$
                                    632 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008951 C6 50 C6         [ 1]  633 	ld	a, 0x50c6
      008954 A4 18            [ 1]  634 	and	a, #0x18
                                    635 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008956 44               [ 1]  636 	srl	a
      008957 44               [ 1]  637 	srl	a
      008958 44               [ 1]  638 	srl	a
                                    639 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      008959 5F               [ 1]  640 	clrw	x
      00895A 97               [ 1]  641 	ld	xl, a
      00895B 1C 80 8C         [ 2]  642 	addw	x, #(_HSIDivFactor + 0)
      00895E F6               [ 1]  643 	ld	a, (x)
                                    644 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      00895F 5F               [ 1]  645 	clrw	x
      008960 97               [ 1]  646 	ld	xl, a
      008961 90 5F            [ 1]  647 	clrw	y
      008963 89               [ 2]  648 	pushw	x
      008964 90 89            [ 2]  649 	pushw	y
      008966 4B 00            [ 1]  650 	push	#0x00
      008968 4B 24            [ 1]  651 	push	#0x24
      00896A 4B F4            [ 1]  652 	push	#0xf4
      00896C 4B 00            [ 1]  653 	push	#0x00
      00896E CD 93 F2         [ 4]  654 	call	__divulong
      008971 5B 08            [ 2]  655 	addw	sp, #8
      008973 1F 03            [ 2]  656 	ldw	(0x03, sp), x
      008975 20 1A            [ 2]  657 	jra	00106$
      008977                        658 00105$:
                                    659 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      008977 7B 04            [ 1]  660 	ld	a, (0x04, sp)
      008979 A1 D2            [ 1]  661 	cp	a, #0xd2
      00897B 26 0B            [ 1]  662 	jrne	00102$
                                    663 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      00897D AE F4 00         [ 2]  664 	ldw	x, #0xf400
      008980 1F 03            [ 2]  665 	ldw	(0x03, sp), x
      008982 90 AE 00 01      [ 2]  666 	ldw	y, #0x0001
      008986 20 09            [ 2]  667 	jra	00106$
      008988                        668 00102$:
                                    669 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      008988 AE 24 00         [ 2]  670 	ldw	x, #0x2400
      00898B 1F 03            [ 2]  671 	ldw	(0x03, sp), x
      00898D 90 AE 00 F4      [ 2]  672 	ldw	y, #0x00f4
      008991                        673 00106$:
                                    674 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      008991 1E 03            [ 2]  675 	ldw	x, (0x03, sp)
                                    676 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 595: }
      008993 5B 04            [ 2]  677 	addw	sp, #4
      008995 81               [ 4]  678 	ret
                                    679 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    680 ;	-----------------------------------------
                                    681 ;	 function CLK_AdjustHSICalibrationValue
                                    682 ;	-----------------------------------------
      008996                        683 _CLK_AdjustHSICalibrationValue:
                                    684 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      008996 C6 50 CC         [ 1]  685 	ld	a, 0x50cc
      008999 A4 F8            [ 1]  686 	and	a, #0xf8
      00899B 1A 03            [ 1]  687 	or	a, (0x03, sp)
      00899D C7 50 CC         [ 1]  688 	ld	0x50cc, a
                                    689 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 611: }
      0089A0 81               [ 4]  690 	ret
                                    691 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    692 ;	-----------------------------------------
                                    693 ;	 function CLK_SYSCLKEmergencyClear
                                    694 ;	-----------------------------------------
      0089A1                        695 _CLK_SYSCLKEmergencyClear:
                                    696 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      0089A1 72 11 50 C5      [ 1]  697 	bres	20677, #0
                                    698 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 625: }
      0089A5 81               [ 4]  699 	ret
                                    700 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    701 ;	-----------------------------------------
                                    702 ;	 function CLK_GetFlagStatus
                                    703 ;	-----------------------------------------
      0089A6                        704 _CLK_GetFlagStatus:
      0089A6 88               [ 1]  705 	push	a
                                    706 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      0089A7 4F               [ 1]  707 	clr	a
      0089A8 97               [ 1]  708 	ld	xl, a
      0089A9 7B 04            [ 1]  709 	ld	a, (0x04, sp)
      0089AB 95               [ 1]  710 	ld	xh, a
                                    711 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      0089AC A3 01 00         [ 2]  712 	cpw	x, #0x0100
      0089AF 26 05            [ 1]  713 	jrne	00111$
                                    714 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      0089B1 C6 50 C0         [ 1]  715 	ld	a, 0x50c0
      0089B4 20 21            [ 2]  716 	jra	00112$
      0089B6                        717 00111$:
                                    718 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      0089B6 A3 02 00         [ 2]  719 	cpw	x, #0x0200
      0089B9 26 05            [ 1]  720 	jrne	00108$
                                    721 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      0089BB C6 50 C1         [ 1]  722 	ld	a, 0x50c1
      0089BE 20 17            [ 2]  723 	jra	00112$
      0089C0                        724 00108$:
                                    725 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      0089C0 A3 03 00         [ 2]  726 	cpw	x, #0x0300
      0089C3 26 05            [ 1]  727 	jrne	00105$
                                    728 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      0089C5 C6 50 C5         [ 1]  729 	ld	a, 0x50c5
      0089C8 20 0D            [ 2]  730 	jra	00112$
      0089CA                        731 00105$:
                                    732 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      0089CA A3 04 00         [ 2]  733 	cpw	x, #0x0400
      0089CD 26 05            [ 1]  734 	jrne	00102$
                                    735 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      0089CF C6 50 C8         [ 1]  736 	ld	a, 0x50c8
      0089D2 20 03            [ 2]  737 	jra	00112$
      0089D4                        738 00102$:
                                    739 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      0089D4 C6 50 C9         [ 1]  740 	ld	a, 0x50c9
      0089D7                        741 00112$:
                                    742 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      0089D7 88               [ 1]  743 	push	a
      0089D8 7B 06            [ 1]  744 	ld	a, (0x06, sp)
      0089DA 6B 02            [ 1]  745 	ld	(0x02, sp), a
      0089DC 84               [ 1]  746 	pop	a
      0089DD 14 01            [ 1]  747 	and	a, (0x01, sp)
      0089DF 27 03            [ 1]  748 	jreq	00114$
                                    749 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 670: bitstatus = SET;
      0089E1 A6 01            [ 1]  750 	ld	a, #0x01
                                    751 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 674: bitstatus = RESET;
      0089E3 21                     752 	.byte 0x21
      0089E4                        753 00114$:
      0089E4 4F               [ 1]  754 	clr	a
      0089E5                        755 00115$:
                                    756 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                                    757 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 679: }
      0089E5 5B 01            [ 2]  758 	addw	sp, #1
      0089E7 81               [ 4]  759 	ret
                                    760 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    761 ;	-----------------------------------------
                                    762 ;	 function CLK_GetITStatus
                                    763 ;	-----------------------------------------
      0089E8                        764 _CLK_GetITStatus:
                                    765 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      0089E8 7B 03            [ 1]  766 	ld	a, (0x03, sp)
      0089EA A1 1C            [ 1]  767 	cp	a, #0x1c
      0089EC 26 0D            [ 1]  768 	jrne	00108$
                                    769 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0089EE C6 50 C5         [ 1]  770 	ld	a, 0x50c5
      0089F1 14 03            [ 1]  771 	and	a, (0x03, sp)
                                    772 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 699: bitstatus = SET;
      0089F3 A0 0C            [ 1]  773 	sub	a, #0x0c
      0089F5 26 02            [ 1]  774 	jrne	00102$
      0089F7 4C               [ 1]  775 	inc	a
      0089F8 81               [ 4]  776 	ret
      0089F9                        777 00102$:
                                    778 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 703: bitstatus = RESET;
      0089F9 4F               [ 1]  779 	clr	a
      0089FA 81               [ 4]  780 	ret
      0089FB                        781 00108$:
                                    782 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0089FB C6 50 C8         [ 1]  783 	ld	a, 0x50c8
      0089FE 14 03            [ 1]  784 	and	a, (0x03, sp)
                                    785 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 711: bitstatus = SET;
      008A00 A0 0C            [ 1]  786 	sub	a, #0x0c
      008A02 26 02            [ 1]  787 	jrne	00105$
      008A04 4C               [ 1]  788 	inc	a
      008A05 81               [ 4]  789 	ret
      008A06                        790 00105$:
                                    791 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 715: bitstatus = RESET;
      008A06 4F               [ 1]  792 	clr	a
                                    793 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 720: return bitstatus;
                                    794 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 721: }
      008A07 81               [ 4]  795 	ret
                                    796 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                    797 ;	-----------------------------------------
                                    798 ;	 function CLK_ClearITPendingBit
                                    799 ;	-----------------------------------------
      008A08                        800 _CLK_ClearITPendingBit:
                                    801 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008A08 7B 03            [ 1]  802 	ld	a, (0x03, sp)
      008A0A A1 0C            [ 1]  803 	cp	a, #0x0c
      008A0C 26 05            [ 1]  804 	jrne	00102$
                                    805 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      008A0E 72 17 50 C8      [ 1]  806 	bres	20680, #3
      008A12 81               [ 4]  807 	ret
      008A13                        808 00102$:
                                    809 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008A13 72 17 50 C5      [ 1]  810 	bres	20677, #3
                                    811 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_clk.c: 745: }
      008A17 81               [ 4]  812 	ret
                                    813 	.area CODE
                                    814 	.area CONST
      00808C                        815 _HSIDivFactor:
      00808C 01                     816 	.db #0x01	; 1
      00808D 02                     817 	.db #0x02	; 2
      00808E 04                     818 	.db #0x04	; 4
      00808F 08                     819 	.db #0x08	; 8
      008090                        820 _CLKPrescTable:
      008090 01                     821 	.db #0x01	; 1
      008091 02                     822 	.db #0x02	; 2
      008092 04                     823 	.db #0x04	; 4
      008093 08                     824 	.db #0x08	; 8
      008094 0A                     825 	.db #0x0a	; 10
      008095 10                     826 	.db #0x10	; 16
      008096 14                     827 	.db #0x14	; 20
      008097 28                     828 	.db #0x28	; 40
                                    829 	.area INITIALIZER
                                    830 	.area CABS (ABS)
