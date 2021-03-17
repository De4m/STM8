                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.4 #10766 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_flash
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _FLASH_Unlock
                                     12 	.globl _FLASH_Lock
                                     13 	.globl _FLASH_DeInit
                                     14 	.globl _FLASH_ITConfig
                                     15 	.globl _FLASH_EraseByte
                                     16 	.globl _FLASH_ProgramByte
                                     17 	.globl _FLASH_ReadByte
                                     18 	.globl _FLASH_ProgramWord
                                     19 	.globl _FLASH_ProgramOptionByte
                                     20 	.globl _FLASH_EraseOptionByte
                                     21 	.globl _FLASH_ReadOptionByte
                                     22 	.globl _FLASH_SetLowPowerMode
                                     23 	.globl _FLASH_SetProgrammingTime
                                     24 	.globl _FLASH_GetLowPowerMode
                                     25 	.globl _FLASH_GetProgrammingTime
                                     26 	.globl _FLASH_GetBootSize
                                     27 	.globl _FLASH_GetFlagStatus
                                     28 	.globl _FLASH_WaitForLastOperation
                                     29 	.globl _FLASH_EraseBlock
                                     30 	.globl _FLASH_ProgramBlock
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area INITIALIZED
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                                     68 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 168: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
                                     69 ;	-----------------------------------------
                                     70 ;	 function FLASH_Unlock
                                     71 ;	-----------------------------------------
      008B0D                         72 _FLASH_Unlock:
                                     73 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 174: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      008B0D 7B 03            [ 1]   74 	ld	a, (0x03, sp)
      008B0F A1 FD            [ 1]   75 	cp	a, #0xfd
      008B11 26 09            [ 1]   76 	jrne	00102$
                                     77 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 176: FLASH->PUKR = FLASH_RASS_KEY1;
      008B13 35 56 50 62      [ 1]   78 	mov	0x5062+0, #0x56
                                     79 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 177: FLASH->PUKR = FLASH_RASS_KEY2;
      008B17 35 AE 50 62      [ 1]   80 	mov	0x5062+0, #0xae
      008B1B 81               [ 4]   81 	ret
      008B1C                         82 00102$:
                                     83 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 182: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
      008B1C 35 AE 50 64      [ 1]   84 	mov	0x5064+0, #0xae
                                     85 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 183: FLASH->DUKR = FLASH_RASS_KEY1;
      008B20 35 56 50 64      [ 1]   86 	mov	0x5064+0, #0x56
                                     87 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 185: }
      008B24 81               [ 4]   88 	ret
                                     89 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 193: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
                                     90 ;	-----------------------------------------
                                     91 ;	 function FLASH_Lock
                                     92 ;	-----------------------------------------
      008B25                         93 _FLASH_Lock:
                                     94 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 199: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
      008B25 C6 50 5F         [ 1]   95 	ld	a, 0x505f
      008B28 14 03            [ 1]   96 	and	a, (0x03, sp)
      008B2A C7 50 5F         [ 1]   97 	ld	0x505f, a
                                     98 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 200: }
      008B2D 81               [ 4]   99 	ret
                                    100 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 207: void FLASH_DeInit(void)
                                    101 ;	-----------------------------------------
                                    102 ;	 function FLASH_DeInit
                                    103 ;	-----------------------------------------
      008B2E                        104 _FLASH_DeInit:
                                    105 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 209: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
      008B2E 35 00 50 5A      [ 1]  106 	mov	0x505a+0, #0x00
                                    107 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 210: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
      008B32 35 00 50 5B      [ 1]  108 	mov	0x505b+0, #0x00
                                    109 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 211: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
      008B36 35 FF 50 5C      [ 1]  110 	mov	0x505c+0, #0xff
                                    111 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 212: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
      008B3A 72 17 50 5F      [ 1]  112 	bres	20575, #3
                                    113 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 213: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
      008B3E 72 13 50 5F      [ 1]  114 	bres	20575, #1
                                    115 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 214: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
      008B42 C6 50 5F         [ 1]  116 	ld	a, 0x505f
                                    117 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 215: }
      008B45 81               [ 4]  118 	ret
                                    119 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 223: void FLASH_ITConfig(FunctionalState NewState)
                                    120 ;	-----------------------------------------
                                    121 ;	 function FLASH_ITConfig
                                    122 ;	-----------------------------------------
      008B46                        123 _FLASH_ITConfig:
                                    124 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 230: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      008B46 C6 50 5A         [ 1]  125 	ld	a, 0x505a
                                    126 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 228: if(NewState != DISABLE)
      008B49 0D 03            [ 1]  127 	tnz	(0x03, sp)
      008B4B 27 06            [ 1]  128 	jreq	00102$
                                    129 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 230: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
      008B4D AA 02            [ 1]  130 	or	a, #0x02
      008B4F C7 50 5A         [ 1]  131 	ld	0x505a, a
      008B52 81               [ 4]  132 	ret
      008B53                        133 00102$:
                                    134 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 234: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
      008B53 A4 FD            [ 1]  135 	and	a, #0xfd
      008B55 C7 50 5A         [ 1]  136 	ld	0x505a, a
                                    137 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 236: }
      008B58 81               [ 4]  138 	ret
                                    139 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 245: void FLASH_EraseByte(uint32_t Address)
                                    140 ;	-----------------------------------------
                                    141 ;	 function FLASH_EraseByte
                                    142 ;	-----------------------------------------
      008B59                        143 _FLASH_EraseByte:
                                    144 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 253: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE;
      008B59 1E 05            [ 2]  145 	ldw	x, (0x05, sp)
      008B5B 7F               [ 1]  146 	clr	(x)
                                    147 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 257: }
      008B5C 81               [ 4]  148 	ret
                                    149 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 267: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
                                    150 ;	-----------------------------------------
                                    151 ;	 function FLASH_ProgramByte
                                    152 ;	-----------------------------------------
      008B5D                        153 _FLASH_ProgramByte:
                                    154 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 275: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
      008B5D 1E 05            [ 2]  155 	ldw	x, (0x05, sp)
      008B5F 7B 07            [ 1]  156 	ld	a, (0x07, sp)
      008B61 F7               [ 1]  157 	ld	(x), a
                                    158 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 279: }
      008B62 81               [ 4]  159 	ret
                                    160 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 288: uint8_t FLASH_ReadByte(uint32_t Address)
                                    161 ;	-----------------------------------------
                                    162 ;	 function FLASH_ReadByte
                                    163 ;	-----------------------------------------
      008B63                        164 _FLASH_ReadByte:
                                    165 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 296: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
      008B63 1E 05            [ 2]  166 	ldw	x, (0x05, sp)
      008B65 F6               [ 1]  167 	ld	a, (x)
                                    168 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 300: }
      008B66 81               [ 4]  169 	ret
                                    170 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 310: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
                                    171 ;	-----------------------------------------
                                    172 ;	 function FLASH_ProgramWord
                                    173 ;	-----------------------------------------
      008B67                        174 _FLASH_ProgramWord:
      008B67 52 04            [ 2]  175 	sub	sp, #4
                                    176 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 316: FLASH->CR2 |= FLASH_CR2_WPRG;
      008B69 72 1C 50 5B      [ 1]  177 	bset	20571, #6
                                    178 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 317: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
      008B6D 72 1D 50 5C      [ 1]  179 	bres	20572, #6
                                    180 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 322: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
      008B71 16 09            [ 2]  181 	ldw	y, (0x09, sp)
      008B73 96               [ 1]  182 	ldw	x, sp
      008B74 1C 00 0B         [ 2]  183 	addw	x, #11
      008B77 1F 01            [ 2]  184 	ldw	(0x01, sp), x
      008B79 F6               [ 1]  185 	ld	a, (x)
      008B7A 90 F7            [ 1]  186 	ld	(y), a
                                    187 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 324: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
      008B7C 93               [ 1]  188 	ldw	x, y
      008B7D 5C               [ 1]  189 	incw	x
      008B7E 1F 03            [ 2]  190 	ldw	(0x03, sp), x
      008B80 1E 01            [ 2]  191 	ldw	x, (0x01, sp)
      008B82 E6 01            [ 1]  192 	ld	a, (0x1, x)
      008B84 1E 03            [ 2]  193 	ldw	x, (0x03, sp)
      008B86 F7               [ 1]  194 	ld	(x), a
                                    195 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 326: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
      008B87 93               [ 1]  196 	ldw	x, y
      008B88 5C               [ 1]  197 	incw	x
      008B89 5C               [ 1]  198 	incw	x
      008B8A 1F 03            [ 2]  199 	ldw	(0x03, sp), x
      008B8C 1E 01            [ 2]  200 	ldw	x, (0x01, sp)
      008B8E E6 02            [ 1]  201 	ld	a, (0x2, x)
      008B90 1E 03            [ 2]  202 	ldw	x, (0x03, sp)
      008B92 F7               [ 1]  203 	ld	(x), a
                                    204 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 328: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
      008B93 72 A9 00 03      [ 2]  205 	addw	y, #0x0003
      008B97 1E 01            [ 2]  206 	ldw	x, (0x01, sp)
      008B99 E6 03            [ 1]  207 	ld	a, (0x3, x)
      008B9B 90 F7            [ 1]  208 	ld	(y), a
                                    209 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 335: }
      008B9D 5B 04            [ 2]  210 	addw	sp, #4
      008B9F 81               [ 4]  211 	ret
                                    212 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 343: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
                                    213 ;	-----------------------------------------
                                    214 ;	 function FLASH_ProgramOptionByte
                                    215 ;	-----------------------------------------
      008BA0                        216 _FLASH_ProgramOptionByte:
                                    217 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 349: FLASH->CR2 |= FLASH_CR2_OPT;
      008BA0 72 1E 50 5B      [ 1]  218 	bset	20571, #7
                                    219 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 350: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      008BA4 72 1F 50 5C      [ 1]  220 	bres	20572, #7
                                    221 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 356: *((NEAR uint8_t*)Address) = Data;
      008BA8 1E 03            [ 2]  222 	ldw	x, (0x03, sp)
                                    223 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 353: if(Address == 0x4800)
      008BAA 89               [ 2]  224 	pushw	x
      008BAB 1E 05            [ 2]  225 	ldw	x, (0x05, sp)
      008BAD A3 48 00         [ 2]  226 	cpw	x, #0x4800
      008BB0 85               [ 2]  227 	popw	x
      008BB1 26 05            [ 1]  228 	jrne	00102$
                                    229 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 356: *((NEAR uint8_t*)Address) = Data;
      008BB3 7B 05            [ 1]  230 	ld	a, (0x05, sp)
      008BB5 F7               [ 1]  231 	ld	(x), a
      008BB6 20 0A            [ 2]  232 	jra	00103$
      008BB8                        233 00102$:
                                    234 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 361: *((NEAR uint8_t*)Address) = Data;
      008BB8 7B 05            [ 1]  235 	ld	a, (0x05, sp)
      008BBA F7               [ 1]  236 	ld	(x), a
                                    237 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 362: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
      008BBB 1E 03            [ 2]  238 	ldw	x, (0x03, sp)
      008BBD 5C               [ 1]  239 	incw	x
      008BBE 7B 05            [ 1]  240 	ld	a, (0x05, sp)
      008BC0 43               [ 1]  241 	cpl	a
      008BC1 F7               [ 1]  242 	ld	(x), a
      008BC2                        243 00103$:
                                    244 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 364: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      008BC2 4B FD            [ 1]  245 	push	#0xfd
      008BC4 CD 8C 96         [ 4]  246 	call	_FLASH_WaitForLastOperation
      008BC7 84               [ 1]  247 	pop	a
                                    248 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 367: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      008BC8 72 1F 50 5B      [ 1]  249 	bres	20571, #7
                                    250 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 368: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      008BCC 72 1E 50 5C      [ 1]  251 	bset	20572, #7
                                    252 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 369: }
      008BD0 81               [ 4]  253 	ret
                                    254 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 376: void FLASH_EraseOptionByte(uint16_t Address)
                                    255 ;	-----------------------------------------
                                    256 ;	 function FLASH_EraseOptionByte
                                    257 ;	-----------------------------------------
      008BD1                        258 _FLASH_EraseOptionByte:
                                    259 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 382: FLASH->CR2 |= FLASH_CR2_OPT;
      008BD1 72 1E 50 5B      [ 1]  260 	bset	20571, #7
                                    261 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 383: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
      008BD5 72 1F 50 5C      [ 1]  262 	bres	20572, #7
                                    263 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 389: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      008BD9 16 03            [ 2]  264 	ldw	y, (0x03, sp)
                                    265 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 386: if(Address == 0x4800)
      008BDB 1E 03            [ 2]  266 	ldw	x, (0x03, sp)
      008BDD A3 48 00         [ 2]  267 	cpw	x, #0x4800
      008BE0 26 04            [ 1]  268 	jrne	00102$
                                    269 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 389: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      008BE2 90 7F            [ 1]  270 	clr	(y)
      008BE4 20 08            [ 2]  271 	jra	00103$
      008BE6                        272 00102$:
                                    273 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 394: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
      008BE6 90 7F            [ 1]  274 	clr	(y)
                                    275 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 395: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
      008BE8 1E 03            [ 2]  276 	ldw	x, (0x03, sp)
      008BEA 5C               [ 1]  277 	incw	x
      008BEB A6 FF            [ 1]  278 	ld	a, #0xff
      008BED F7               [ 1]  279 	ld	(x), a
      008BEE                        280 00103$:
                                    281 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 397: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
      008BEE 4B FD            [ 1]  282 	push	#0xfd
      008BF0 CD 8C 96         [ 4]  283 	call	_FLASH_WaitForLastOperation
      008BF3 84               [ 1]  284 	pop	a
                                    285 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 400: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
      008BF4 72 1F 50 5B      [ 1]  286 	bres	20571, #7
                                    287 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 401: FLASH->NCR2 |= FLASH_NCR2_NOPT;
      008BF8 72 1E 50 5C      [ 1]  288 	bset	20572, #7
                                    289 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 402: }
      008BFC 81               [ 4]  290 	ret
                                    291 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 409: uint16_t FLASH_ReadOptionByte(uint16_t Address)
                                    292 ;	-----------------------------------------
                                    293 ;	 function FLASH_ReadOptionByte
                                    294 ;	-----------------------------------------
      008BFD                        295 _FLASH_ReadOptionByte:
      008BFD 52 04            [ 2]  296 	sub	sp, #4
                                    297 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 417: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
      008BFF 1E 07            [ 2]  298 	ldw	x, (0x07, sp)
      008C01 F6               [ 1]  299 	ld	a, (x)
      008C02 6B 03            [ 1]  300 	ld	(0x03, sp), a
                                    301 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 418: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
      008C04 E6 01            [ 1]  302 	ld	a, (0x1, x)
      008C06 6B 04            [ 1]  303 	ld	(0x04, sp), a
                                    304 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 423: res_value =	 value_optbyte;
      008C08 90 5F            [ 1]  305 	clrw	y
      008C0A 7B 03            [ 1]  306 	ld	a, (0x03, sp)
      008C0C 90 97            [ 1]  307 	ld	yl, a
                                    308 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 421: if(Address == 0x4800)	 
      008C0E 1E 07            [ 2]  309 	ldw	x, (0x07, sp)
      008C10 A3 48 00         [ 2]  310 	cpw	x, #0x4800
      008C13 26 03            [ 1]  311 	jrne	00105$
                                    312 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 423: res_value =	 value_optbyte;
      008C15 93               [ 1]  313 	ldw	x, y
      008C16 20 1A            [ 2]  314 	jra	00106$
      008C18                        315 00105$:
                                    316 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 427: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
      008C18 7B 04            [ 1]  317 	ld	a, (0x04, sp)
      008C1A 43               [ 1]  318 	cpl	a
      008C1B 11 03            [ 1]  319 	cp	a, (0x03, sp)
      008C1D 26 10            [ 1]  320 	jrne	00102$
                                    321 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 429: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
      008C1F 4F               [ 1]  322 	clr	a
      008C20 6B 02            [ 1]  323 	ld	(0x02, sp), a
                                    324 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 430: res_value = res_value | (uint16_t)value_optbyte_complement;
      008C22 0F 03            [ 1]  325 	clr	(0x03, sp)
      008C24 7B 02            [ 1]  326 	ld	a, (0x02, sp)
      008C26 1A 04            [ 1]  327 	or	a, (0x04, sp)
      008C28 97               [ 1]  328 	ld	xl, a
      008C29 90 9F            [ 1]  329 	ld	a, yl
      008C2B 1A 03            [ 1]  330 	or	a, (0x03, sp)
      008C2D 95               [ 1]  331 	ld	xh, a
                                    332 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 434: res_value = FLASH_OPTIONBYTE_ERROR;
      008C2E BC                     333 	.byte 0xbc
      008C2F                        334 00102$:
      008C2F AE 55 55         [ 2]  335 	ldw	x, #0x5555
      008C32                        336 00106$:
                                    337 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 437: return(res_value);
                                    338 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 438: }
      008C32 5B 04            [ 2]  339 	addw	sp, #4
      008C34 81               [ 4]  340 	ret
                                    341 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 446: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
                                    342 ;	-----------------------------------------
                                    343 ;	 function FLASH_SetLowPowerMode
                                    344 ;	-----------------------------------------
      008C35                        345 _FLASH_SetLowPowerMode:
                                    346 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 452: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
      008C35 C6 50 5A         [ 1]  347 	ld	a, 0x505a
      008C38 A4 F3            [ 1]  348 	and	a, #0xf3
      008C3A C7 50 5A         [ 1]  349 	ld	0x505a, a
                                    350 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 455: FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
      008C3D C6 50 5A         [ 1]  351 	ld	a, 0x505a
      008C40 1A 03            [ 1]  352 	or	a, (0x03, sp)
      008C42 C7 50 5A         [ 1]  353 	ld	0x505a, a
                                    354 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 456: }
      008C45 81               [ 4]  355 	ret
                                    356 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 464: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
                                    357 ;	-----------------------------------------
                                    358 ;	 function FLASH_SetProgrammingTime
                                    359 ;	-----------------------------------------
      008C46                        360 _FLASH_SetProgrammingTime:
                                    361 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 469: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
      008C46 C6 50 5A         [ 1]  362 	ld	a, 0x505a
      008C49 A4 FE            [ 1]  363 	and	a, #0xfe
      008C4B C7 50 5A         [ 1]  364 	ld	0x505a, a
                                    365 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 470: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
      008C4E C6 50 5A         [ 1]  366 	ld	a, 0x505a
      008C51 1A 03            [ 1]  367 	or	a, (0x03, sp)
      008C53 C7 50 5A         [ 1]  368 	ld	0x505a, a
                                    369 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 471: }
      008C56 81               [ 4]  370 	ret
                                    371 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 478: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
                                    372 ;	-----------------------------------------
                                    373 ;	 function FLASH_GetLowPowerMode
                                    374 ;	-----------------------------------------
      008C57                        375 _FLASH_GetLowPowerMode:
                                    376 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 480: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
      008C57 C6 50 5A         [ 1]  377 	ld	a, 0x505a
      008C5A A4 0C            [ 1]  378 	and	a, #0x0c
                                    379 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 481: }
      008C5C 81               [ 4]  380 	ret
                                    381 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 488: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
                                    382 ;	-----------------------------------------
                                    383 ;	 function FLASH_GetProgrammingTime
                                    384 ;	-----------------------------------------
      008C5D                        385 _FLASH_GetProgrammingTime:
                                    386 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 490: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
      008C5D C6 50 5A         [ 1]  387 	ld	a, 0x505a
      008C60 A4 01            [ 1]  388 	and	a, #0x01
                                    389 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 491: }
      008C62 81               [ 4]  390 	ret
                                    391 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 498: uint32_t FLASH_GetBootSize(void)
                                    392 ;	-----------------------------------------
                                    393 ;	 function FLASH_GetBootSize
                                    394 ;	-----------------------------------------
      008C63                        395 _FLASH_GetBootSize:
      008C63 52 04            [ 2]  396 	sub	sp, #4
                                    397 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 503: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
      008C65 C6 50 5D         [ 1]  398 	ld	a, 0x505d
      008C68 5F               [ 1]  399 	clrw	x
      008C69 0F 04            [ 1]  400 	clr	(0x04, sp)
      008C6B 08 04            [ 1]  401 	sll	(0x04, sp)
      008C6D 49               [ 1]  402 	rlc	a
      008C6E 59               [ 2]  403 	rlcw	x
      008C6F 90 95            [ 1]  404 	ld	yh, a
      008C71 7B 04            [ 1]  405 	ld	a, (0x04, sp)
      008C73 90 97            [ 1]  406 	ld	yl, a
                                    407 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 506: if(FLASH->FPR == 0xFF)
      008C75 C6 50 5D         [ 1]  408 	ld	a, 0x505d
      008C78 4C               [ 1]  409 	inc	a
      008C79 26 0B            [ 1]  410 	jrne	00102$
                                    411 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 508: temp += 512;
      008C7B 72 A9 02 00      [ 2]  412 	addw	y, #0x0200
      008C7F 9F               [ 1]  413 	ld	a, xl
      008C80 A9 00            [ 1]  414 	adc	a, #0x00
      008C82 02               [ 1]  415 	rlwa	x
      008C83 A9 00            [ 1]  416 	adc	a, #0x00
      008C85 95               [ 1]  417 	ld	xh, a
      008C86                        418 00102$:
                                    419 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 512: return(temp);
      008C86 51               [ 1]  420 	exgw	x, y
                                    421 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 513: }
      008C87 5B 04            [ 2]  422 	addw	sp, #4
      008C89 81               [ 4]  423 	ret
                                    424 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 523: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
                                    425 ;	-----------------------------------------
                                    426 ;	 function FLASH_GetFlagStatus
                                    427 ;	-----------------------------------------
      008C8A                        428 _FLASH_GetFlagStatus:
                                    429 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 530: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
      008C8A C6 50 5F         [ 1]  430 	ld	a, 0x505f
      008C8D 14 03            [ 1]  431 	and	a, (0x03, sp)
      008C8F 27 03            [ 1]  432 	jreq	00102$
                                    433 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 532: status = SET; /* FLASH_FLAG is set */
      008C91 A6 01            [ 1]  434 	ld	a, #0x01
      008C93 81               [ 4]  435 	ret
      008C94                        436 00102$:
                                    437 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 536: status = RESET; /* FLASH_FLAG is reset*/
      008C94 4F               [ 1]  438 	clr	a
                                    439 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 540: return status;
                                    440 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 541: }
      008C95 81               [ 4]  441 	ret
                                    442 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 660: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
                                    443 ;	-----------------------------------------
                                    444 ;	 function FLASH_WaitForLastOperation
                                    445 ;	-----------------------------------------
      008C96                        446 _FLASH_WaitForLastOperation:
                                    447 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 662: uint8_t flagstatus = 0x00;
      008C96 4F               [ 1]  448 	clr	a
                                    449 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 688: while((flagstatus == 0x00) && (timeout != 0x00))
      008C97 5F               [ 1]  450 	clrw	x
      008C98 5A               [ 2]  451 	decw	x
      008C99                        452 00102$:
      008C99 4D               [ 1]  453 	tnz	a
      008C9A 26 0B            [ 1]  454 	jrne	00104$
      008C9C 5D               [ 2]  455 	tnzw	x
      008C9D 27 08            [ 1]  456 	jreq	00104$
                                    457 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 690: flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
      008C9F C6 50 5F         [ 1]  458 	ld	a, 0x505f
      008CA2 A4 05            [ 1]  459 	and	a, #0x05
                                    460 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 691: timeout--;
      008CA4 5A               [ 2]  461 	decw	x
      008CA5 20 F2            [ 2]  462 	jra	00102$
      008CA7                        463 00104$:
                                    464 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 695: if(timeout == 0x00 )
      008CA7 5D               [ 2]  465 	tnzw	x
      008CA8 27 01            [ 1]  466 	jreq	00132$
      008CAA 81               [ 4]  467 	ret
      008CAB                        468 00132$:
                                    469 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 697: flagstatus = FLASH_STATUS_TIMEOUT;
      008CAB A6 02            [ 1]  470 	ld	a, #0x02
                                    471 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 700: return((FLASH_Status_TypeDef)flagstatus);
                                    472 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 701: }
      008CAD 81               [ 4]  473 	ret
                                    474 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 710: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
                                    475 ;	-----------------------------------------
                                    476 ;	 function FLASH_EraseBlock
                                    477 ;	-----------------------------------------
      008CAE                        478 _FLASH_EraseBlock:
      008CAE 52 06            [ 2]  479 	sub	sp, #6
                                    480 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 723: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      008CB0 7B 0B            [ 1]  481 	ld	a, (0x0b, sp)
      008CB2 A1 FD            [ 1]  482 	cp	a, #0xfd
      008CB4 26 0A            [ 1]  483 	jrne	00102$
                                    484 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 726: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      008CB6 AE 80 00         [ 2]  485 	ldw	x, #0x8000
      008CB9 1F 03            [ 2]  486 	ldw	(0x03, sp), x
      008CBB 5F               [ 1]  487 	clrw	x
      008CBC 1F 01            [ 2]  488 	ldw	(0x01, sp), x
      008CBE 20 08            [ 2]  489 	jra	00103$
      008CC0                        490 00102$:
                                    491 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 731: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      008CC0 AE 40 00         [ 2]  492 	ldw	x, #0x4000
      008CC3 1F 03            [ 2]  493 	ldw	(0x03, sp), x
      008CC5 5F               [ 1]  494 	clrw	x
      008CC6 1F 01            [ 2]  495 	ldw	(0x01, sp), x
      008CC8                        496 00103$:
                                    497 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 739: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
      008CC8 1E 09            [ 2]  498 	ldw	x, (0x09, sp)
      008CCA 58               [ 2]  499 	sllw	x
      008CCB 58               [ 2]  500 	sllw	x
      008CCC 58               [ 2]  501 	sllw	x
      008CCD 58               [ 2]  502 	sllw	x
      008CCE 58               [ 2]  503 	sllw	x
      008CCF 58               [ 2]  504 	sllw	x
      008CD0 1F 05            [ 2]  505 	ldw	(0x05, sp), x
      008CD2 7B 04            [ 1]  506 	ld	a, (0x04, sp)
      008CD4 02               [ 1]  507 	rlwa	x
      008CD5 7B 03            [ 1]  508 	ld	a, (0x03, sp)
      008CD7 01               [ 1]  509 	rrwa	x
      008CD8 97               [ 1]  510 	ld	xl, a
      008CD9 72 FB 05         [ 2]  511 	addw	x, (0x05, sp)
                                    512 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 743: FLASH->CR2 |= FLASH_CR2_ERASE;
      008CDC 72 1A 50 5B      [ 1]  513 	bset	20571, #5
                                    514 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 744: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
      008CE0 72 1B 50 5C      [ 1]  515 	bres	20572, #5
                                    516 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 748: *pwFlash = (uint32_t)0;
      008CE4 90 5F            [ 1]  517 	clrw	y
      008CE6 EF 02            [ 2]  518 	ldw	(0x2, x), y
      008CE8 FF               [ 2]  519 	ldw	(x), y
                                    520 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 756: }
      008CE9 5B 06            [ 2]  521 	addw	sp, #6
      008CEB 81               [ 4]  522 	ret
                                    523 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 767: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
                                    524 ;	-----------------------------------------
                                    525 ;	 function FLASH_ProgramBlock
                                    526 ;	-----------------------------------------
      008CEC                        527 _FLASH_ProgramBlock:
      008CEC 52 08            [ 2]  528 	sub	sp, #8
                                    529 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 776: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
      008CEE 7B 0D            [ 1]  530 	ld	a, (0x0d, sp)
      008CF0 A1 FD            [ 1]  531 	cp	a, #0xfd
      008CF2 26 0A            [ 1]  532 	jrne	00102$
                                    533 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 779: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
      008CF4 AE 80 00         [ 2]  534 	ldw	x, #0x8000
      008CF7 1F 03            [ 2]  535 	ldw	(0x03, sp), x
      008CF9 5F               [ 1]  536 	clrw	x
      008CFA 1F 01            [ 2]  537 	ldw	(0x01, sp), x
      008CFC 20 08            [ 2]  538 	jra	00103$
      008CFE                        539 00102$:
                                    540 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 784: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
      008CFE AE 40 00         [ 2]  541 	ldw	x, #0x4000
      008D01 1F 03            [ 2]  542 	ldw	(0x03, sp), x
      008D03 5F               [ 1]  543 	clrw	x
      008D04 1F 01            [ 2]  544 	ldw	(0x01, sp), x
      008D06                        545 00103$:
                                    546 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 788: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
      008D06 16 0B            [ 2]  547 	ldw	y, (0x0b, sp)
      008D08 5F               [ 1]  548 	clrw	x
      008D09 88               [ 1]  549 	push	a
      008D0A A6 06            [ 1]  550 	ld	a, #0x06
      008D0C                        551 00131$:
      008D0C 90 58            [ 2]  552 	sllw	y
      008D0E 59               [ 2]  553 	rlcw	x
      008D0F 4A               [ 1]  554 	dec	a
      008D10 26 FA            [ 1]  555 	jrne	00131$
      008D12 17 08            [ 2]  556 	ldw	(0x08, sp), y
      008D14 84               [ 1]  557 	pop	a
      008D15 16 07            [ 2]  558 	ldw	y, (0x07, sp)
      008D17 72 F9 03         [ 2]  559 	addw	y, (0x03, sp)
      008D1A 9F               [ 1]  560 	ld	a, xl
      008D1B 19 02            [ 1]  561 	adc	a, (0x02, sp)
      008D1D 02               [ 1]  562 	rlwa	x
      008D1E 19 01            [ 1]  563 	adc	a, (0x01, sp)
      008D20 95               [ 1]  564 	ld	xh, a
      008D21 17 03            [ 2]  565 	ldw	(0x03, sp), y
      008D23 1F 01            [ 2]  566 	ldw	(0x01, sp), x
                                    567 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 794: FLASH->CR2 |= FLASH_CR2_PRG;
      008D25 C6 50 5B         [ 1]  568 	ld	a, 0x505b
                                    569 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 791: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
      008D28 0D 0E            [ 1]  570 	tnz	(0x0e, sp)
      008D2A 26 0B            [ 1]  571 	jrne	00105$
                                    572 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 794: FLASH->CR2 |= FLASH_CR2_PRG;
      008D2C AA 01            [ 1]  573 	or	a, #0x01
      008D2E C7 50 5B         [ 1]  574 	ld	0x505b, a
                                    575 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 795: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
      008D31 72 11 50 5C      [ 1]  576 	bres	20572, #0
      008D35 20 09            [ 2]  577 	jra	00114$
      008D37                        578 00105$:
                                    579 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 800: FLASH->CR2 |= FLASH_CR2_FPRG;
      008D37 AA 10            [ 1]  580 	or	a, #0x10
      008D39 C7 50 5B         [ 1]  581 	ld	0x505b, a
                                    582 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 801: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
      008D3C 72 19 50 5C      [ 1]  583 	bres	20572, #4
                                    584 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 805: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      008D40                        585 00114$:
      008D40 90 5F            [ 1]  586 	clrw	y
      008D42                        587 00108$:
                                    588 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 807: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
      008D42 1E 03            [ 2]  589 	ldw	x, (0x03, sp)
      008D44 1F 05            [ 2]  590 	ldw	(0x05, sp), x
      008D46 93               [ 1]  591 	ldw	x, y
      008D47 72 FB 05         [ 2]  592 	addw	x, (0x05, sp)
      008D4A 1F 07            [ 2]  593 	ldw	(0x07, sp), x
      008D4C 93               [ 1]  594 	ldw	x, y
      008D4D 72 FB 0F         [ 2]  595 	addw	x, (0x0f, sp)
      008D50 F6               [ 1]  596 	ld	a, (x)
      008D51 1E 07            [ 2]  597 	ldw	x, (0x07, sp)
      008D53 F7               [ 1]  598 	ld	(x), a
                                    599 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 805: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
      008D54 90 5C            [ 1]  600 	incw	y
      008D56 90 A3 00 40      [ 2]  601 	cpw	y, #0x0040
      008D5A 25 E6            [ 1]  602 	jrc	00108$
                                    603 ;	/home/de4m/.platformio/packages/framework-ststm8spl/Libraries/STM8S_StdPeriph_Driver/src/stm8s_flash.c: 809: }
      008D5C 5B 08            [ 2]  604 	addw	sp, #8
      008D5E 81               [ 4]  605 	ret
                                    606 	.area CODE
                                    607 	.area CONST
                                    608 	.area INITIALIZER
                                    609 	.area CABS (ABS)
