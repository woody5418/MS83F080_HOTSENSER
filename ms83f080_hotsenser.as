opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_System_init
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_EEPROM_Init
	FNCALL	_main,_Read_EEPROM_u16
	FNCALL	_main,_LED_Study_End
	FNCALL	_main,_ExchChannel
	FNCALL	_main,_GetADCValue
	FNCALL	_main,_Delay_xms
	FNCALL	_main,_isKeyPressed
	FNCALL	_main,_Write_EEPROM_u16
	FNCALL	_LED_Study_End,_Delay_xms
	FNCALL	_ADC_Init,_Delay_xms
	FNCALL	_Write_EEPROM_u16,_Write_EEPROM_u8
	FNCALL	_Read_EEPROM_u16,_Read_EEPROM_u8
	FNCALL	_EEPROM_Init,_Write_EEPROM_u8
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ADC6_INPUT
	global	_ADC_STUDY_VALUE
	global	_ADC1_ADCOUT
	global	_i
	global	_j
	global	_PSTRCON
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_WDTCON
_WDTCON	set	24
	global	_ADFM
_ADFM	set	255
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CM0
_CM0	set	200
	global	_CM1
_CM1	set	201
	global	_CM2
_CM2	set	202
	global	_EEIF
_EEIF	set	103
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_PA6
_PA6	set	46
	global	_PC1
_PC1	set	57
	global	_PC3
_PC3	set	59
	global	_VCFG0
_VCFG0	set	253
	global	_ADRESL
_ADRESL	set	158
	global	_EEADR
_EEADR	set	155
	global	_EECON1
_EECON1	set	156
	global	_EECON2
_EECON2	set	157
	global	_EEDAT
_EEDAT	set	154
	global	_EEDATA
_EEDATA	set	154
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_ADCS0
_ADCS0	set	1276
	global	_ADCS1
_ADCS1	set	1277
	global	_ADCS2
_ADCS2	set	1278
	global	_ANSEL0
_ANSEL0	set	1160
	global	_ANSEL1
_ANSEL1	set	1161
	global	_ANSEL2
_ANSEL2	set	1162
	global	_ANSEL3
_ANSEL3	set	1163
	global	_ANSEL4
_ANSEL4	set	1164
	global	_ANSEL5
_ANSEL5	set	1165
	global	_ANSEL6
_ANSEL6	set	1166
	global	_ANSEL7
_ANSEL7	set	1167
	global	_DIVS
_DIVS	set	1279
	global	_RD
_RD	set	1248
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA6
_TRISA6	set	1070
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_WPDA4
_WPDA4	set	1100
	global	_WPDC1
_WPDC1	set	1099
	global	_WPDC2
_WPDC2	set	1098
	global	_WPDC3
_WPDC3	set	1097
	global	_WPUA0
_WPUA0	set	1192
	global	_WPUA1
_WPUA1	set	1193
	global	_WPUA6
_WPUA6	set	1198
	global	_WPUC1
_WPUC1	set	1089
	global	_WPUC2
_WPUC2	set	1090
	global	_WPUC3
_WPUC3	set	1091
	global	_WR
_WR	set	1256
	file	"ms83f080_hotsenser.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADC1_ADCOUT:
       ds      2

_i:
       ds      1

_j:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ADC6_INPUT:
       ds      2

_ADC_STUDY_VALUE:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_GPIO_Init
?_GPIO_Init:	; 0 bytes @ 0x0
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	?_EEPROM_Init
?_EEPROM_Init:	; 0 bytes @ 0x0
	global	?_LED_Study_End
?_LED_Study_End:	; 0 bytes @ 0x0
	global	?_ExchChannel
?_ExchChannel:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_isKeyPressed
?_isKeyPressed:	; 1 bytes @ 0x0
	global	?_Read_EEPROM_u8
?_Read_EEPROM_u8:	; 1 bytes @ 0x0
	ds	4
	global	??_System_init
??_System_init:	; 0 bytes @ 0x4
	global	??_GPIO_Init
??_GPIO_Init:	; 0 bytes @ 0x4
	global	??_ExchChannel
??_ExchChannel:	; 0 bytes @ 0x4
	global	?_Delay_xms
?_Delay_xms:	; 0 bytes @ 0x4
	global	??_isKeyPressed
??_isKeyPressed:	; 0 bytes @ 0x4
	global	?_Write_EEPROM_u8
?_Write_EEPROM_u8:	; 0 bytes @ 0x4
	global	??_Read_EEPROM_u8
??_Read_EEPROM_u8:	; 0 bytes @ 0x4
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x4
	global	Write_EEPROM_u8@EEDatas
Write_EEPROM_u8@EEDatas:	; 1 bytes @ 0x4
	global	Delay_xms@x
Delay_xms@x:	; 2 bytes @ 0x4
	ds	1
	global	??_Write_EEPROM_u8
??_Write_EEPROM_u8:	; 0 bytes @ 0x5
	global	Write_EEPROM_u8@EEAddress
Write_EEPROM_u8@EEAddress:	; 1 bytes @ 0x5
	ds	1
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x6
	global	??_LED_Study_End
??_LED_Study_End:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_EEPROM_Init
??_EEPROM_Init:	; 0 bytes @ 0x0
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x0
	global	??_Delay_xms
??_Delay_xms:	; 0 bytes @ 0x0
	global	?_Write_EEPROM_u16
?_Write_EEPROM_u16:	; 0 bytes @ 0x0
	global	Read_EEPROM_u8@EEAddress
Read_EEPROM_u8@EEAddress:	; 1 bytes @ 0x0
	global	ExchChannel@ch_temp
ExchChannel@ch_temp:	; 1 bytes @ 0x0
	global	Write_EEPROM_u16@EEDatas
Write_EEPROM_u16@EEDatas:	; 2 bytes @ 0x0
	ds	1
	global	Read_EEPROM_u8@ReEepromData
Read_EEPROM_u8@ReEepromData:	; 1 bytes @ 0x1
	global	ExchChannel@adc_ch_temp
ExchChannel@adc_ch_temp:	; 1 bytes @ 0x1
	ds	1
	global	??_Write_EEPROM_u16
??_Write_EEPROM_u16:	; 0 bytes @ 0x2
	global	?_Read_EEPROM_u16
?_Read_EEPROM_u16:	; 2 bytes @ 0x2
	global	Delay_xms@i
Delay_xms@i:	; 2 bytes @ 0x2
	global	GetADCValue@ADC_num
GetADCValue@ADC_num:	; 2 bytes @ 0x2
	ds	1
	global	Write_EEPROM_u16@DATA_H
Write_EEPROM_u16@DATA_H:	; 1 bytes @ 0x3
	ds	1
	global	??_Read_EEPROM_u16
??_Read_EEPROM_u16:	; 0 bytes @ 0x4
	global	Write_EEPROM_u16@DATA_L
Write_EEPROM_u16@DATA_L:	; 1 bytes @ 0x4
	ds	1
	global	Write_EEPROM_u16@EEAddress
Write_EEPROM_u16@EEAddress:	; 1 bytes @ 0x5
	ds	1
	global	Read_EEPROM_u16@EEAddress
Read_EEPROM_u16@EEAddress:	; 1 bytes @ 0x6
	ds	1
	global	Read_EEPROM_u16@EepromData
Read_EEPROM_u16@EepromData:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80     10      14
;; BANK1           32      0       0

;;
;; Pointer list with targets:

;; ?_GetADCValue	unsigned short  size(1) Largest target is 0
;;
;; ?_Read_EEPROM_u16	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_ExchChannel
;;   _main->_GetADCValue
;;   _main->_Delay_xms
;;   _LED_Study_End->_Delay_xms
;;   _ADC_Init->_Delay_xms
;;   _Write_EEPROM_u16->_Write_EEPROM_u8
;;   _Read_EEPROM_u16->_Read_EEPROM_u8
;;   _EEPROM_Init->_Write_EEPROM_u8
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Read_EEPROM_u16
;;   _LED_Study_End->_Delay_xms
;;   _ADC_Init->_Delay_xms
;;   _Read_EEPROM_u16->_Read_EEPROM_u8
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     895
;;                                              9 BANK0      1     1      0
;;                        _System_init
;;                          _GPIO_Init
;;                           _ADC_Init
;;                        _EEPROM_Init
;;                    _Read_EEPROM_u16
;;                      _LED_Study_End
;;                        _ExchChannel
;;                        _GetADCValue
;;                          _Delay_xms
;;                       _isKeyPressed
;;                   _Write_EEPROM_u16
;; ---------------------------------------------------------------------------------
;; (1) _LED_Study_End                                        0     0      0      68
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0      68
;;                          _Delay_xms
;; ---------------------------------------------------------------------------------
;; (1) _Write_EEPROM_u16                                     6     4      2     242
;;                                              0 BANK0      6     4      2
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _Delay_xms                                            6     4      2      68
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _ExchChannel                                          4     4      0      99
;;                                              4 COMMON     2     2      0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Read_EEPROM_u16                                      7     5      2     201
;;                                              2 BANK0      7     5      2
;;                     _Read_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_Init                                          1     1      0      44
;;                                              0 BANK0      1     1      0
;;                    _Write_EEPROM_u8
;; ---------------------------------------------------------------------------------
;; (2) _Read_EEPROM_u8                                       3     3      0      65
;;                                              4 COMMON     1     1      0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Write_EEPROM_u8                                      2     1      1      44
;;                                              4 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (1) _isKeyPressed                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          6     4      2     105
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _GPIO_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;   _GPIO_Init
;;   _ADC_Init
;;     _Delay_xms
;;   _EEPROM_Init
;;     _Write_EEPROM_u8
;;   _Read_EEPROM_u16
;;     _Read_EEPROM_u8
;;   _LED_Study_End
;;     _Delay_xms
;;   _ExchChannel
;;   _GetADCValue
;;   _Delay_xms
;;   _isKeyPressed
;;   _Write_EEPROM_u16
;;     _Write_EEPROM_u8
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      A       E       4       17.5%
;;BITBANK1            20      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BANK1               20      0       0       6        0.0%
;;ABS                  0      0      18       7        0.0%
;;DATA                 0      0      1A       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_System_init
;;		_GPIO_Init
;;		_ADC_Init
;;		_EEPROM_Init
;;		_Read_EEPROM_u16
;;		_LED_Study_End
;;		_ExchChannel
;;		_GetADCValue
;;		_Delay_xms
;;		_isKeyPressed
;;		_Write_EEPROM_u16
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"main.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l7768:	
# 36 "main.c"
clrwdt ;#
psect	maintext
	line	37
	
l7770:	
;main.c: 37: System_init();
	fcall	_System_init
	line	38
	
l7772:	
;main.c: 38: GPIO_Init();
	fcall	_GPIO_Init
	line	39
	
l7774:	
;main.c: 39: ADC_Init();
	fcall	_ADC_Init
	line	40
	
l7776:	
;main.c: 40: EEPROM_Init();
	fcall	_EEPROM_Init
	line	41
	
l7778:	
;main.c: 41: PC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	42
	
l7780:	
;main.c: 42: ADC_STUDY_VALUE = Read_EEPROM_u16(0x00);
	movlw	(0)
	fcall	_Read_EEPROM_u16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Read_EEPROM_u16)),w
	clrf	(_ADC_STUDY_VALUE+1)
	addwf	(_ADC_STUDY_VALUE+1)
	movf	(0+(?_Read_EEPROM_u16)),w
	clrf	(_ADC_STUDY_VALUE)
	addwf	(_ADC_STUDY_VALUE)

	line	43
	
l7782:	
;main.c: 43: LED_Study_End();
	fcall	_LED_Study_End
	goto	l7784
	line	44
;main.c: 44: while(1){
	
l1097:	
	line	45
	
l7784:	
# 45 "main.c"
clrwdt ;#
psect	maintext
	line	46
	
l7786:	
;main.c: 46: ExchChannel(1);
	movlw	(01h)
	fcall	_ExchChannel
	line	47
	
l7788:	
;main.c: 47: for(i=0;i<5;i++)
	clrf	(_i)
	
l7790:	
	movlw	(05h)
	subwf	(_i),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l7794
u2510:
	goto	l7800
	
l7792:	
	goto	l7800
	line	48
	
l1098:	
	
l7794:	
;main.c: 48: ADC1_ADCOUT = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	clrf	(_ADC1_ADCOUT+1)
	addwf	(_ADC1_ADCOUT+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC1_ADCOUT)
	addwf	(_ADC1_ADCOUT)

	line	47
	
l7796:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l7798:	
	movlw	(05h)
	subwf	(_i),w
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l7794
u2520:
	goto	l7800
	
l1099:	
	line	49
	
l7800:	
;main.c: 49: ExchChannel(6);
	movlw	(06h)
	fcall	_ExchChannel
	line	50
	
l7802:	
;main.c: 50: for(j=0;j<5;j++)
	clrf	(_j)
	
l7804:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l7808
u2530:
	goto	l7814
	
l7806:	
	goto	l7814
	line	51
	
l1100:	
	
l7808:	
;main.c: 51: ADC6_INPUT = GetADCValue();
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC6_INPUT+1)
	addwf	(_ADC6_INPUT+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC6_INPUT)
	addwf	(_ADC6_INPUT)

	line	50
	
l7810:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_j),f
	
l7812:	
	movlw	(05h)
	subwf	(_j),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l7808
u2540:
	goto	l7814
	
l1101:	
	line	52
	
l7814:	
;main.c: 52: Delay_xms(5);
	movlw	low(05h)
	movwf	(?_Delay_xms)
	movlw	high(05h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	54
;main.c: 54: if(isKeyPressed())
	fcall	_isKeyPressed
	xorlw	0
	skipnz
	goto	u2551
	goto	u2550
u2551:
	goto	l7830
u2550:
	line	56
	
l7816:	
;main.c: 55: {
;main.c: 56: PA6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	57
	
l7818:	
;main.c: 57: if(ADC_STUDY_VALUE>6)
	movlw	high(07h)
	subwf	(_ADC_STUDY_VALUE+1),w
	movlw	low(07h)
	skipnz
	subwf	(_ADC_STUDY_VALUE),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l7822
u2560:
	line	58
	
l7820:	
;main.c: 58: ADC_STUDY_VALUE = ADC1_ADCOUT-5;
	movf	(_ADC1_ADCOUT),w
	addlw	low(0FFFBh)
	movwf	(_ADC_STUDY_VALUE)
	movf	(_ADC1_ADCOUT+1),w
	skipnc
	addlw	1
	addlw	high(0FFFBh)
	movwf	1+(_ADC_STUDY_VALUE)
	goto	l7824
	line	59
	
l1103:	
	line	60
	
l7822:	
;main.c: 59: else
;main.c: 60: ADC_STUDY_VALUE = ADC1_ADCOUT;
	movf	(_ADC1_ADCOUT+1),w
	clrf	(_ADC_STUDY_VALUE+1)
	addwf	(_ADC_STUDY_VALUE+1)
	movf	(_ADC1_ADCOUT),w
	clrf	(_ADC_STUDY_VALUE)
	addwf	(_ADC_STUDY_VALUE)

	goto	l7824
	
l1104:	
	line	62
	
l7824:	
;main.c: 62: Write_EEPROM_u16(0x00,ADC_STUDY_VALUE);
	movf	(_ADC_STUDY_VALUE+1),w
	clrf	(?_Write_EEPROM_u16+1)
	addwf	(?_Write_EEPROM_u16+1)
	movf	(_ADC_STUDY_VALUE),w
	clrf	(?_Write_EEPROM_u16)
	addwf	(?_Write_EEPROM_u16)

	movlw	(0)
	fcall	_Write_EEPROM_u16
	line	63
	
l7826:	
;main.c: 63: Delay_xms(500);
	movlw	low(01F4h)
	movwf	(?_Delay_xms)
	movlw	high(01F4h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	64
	
l7828:	
;main.c: 64: PA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	goto	l7830
	line	65
	
l1102:	
	line	66
	
l7830:	
;main.c: 65: }
;main.c: 66: if(ADC6_INPUT < 512){
	movlw	high(0200h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_ADC6_INPUT+1),w
	movlw	low(0200h)
	skipnz
	subwf	(_ADC6_INPUT),w
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l7834
u2570:
	line	67
	
l7832:	
;main.c: 67: PC1 = 0;
	bcf	(57/8),(57)&7
	line	68
;main.c: 68: }else{
	goto	l7784
	
l1105:	
	line	69
	
l7834:	
;main.c: 69: if(ADC1_ADCOUT <= ADC_STUDY_VALUE){
	movf	(_ADC1_ADCOUT+1),w
	subwf	(_ADC_STUDY_VALUE+1),w
	skipz
	goto	u2585
	movf	(_ADC1_ADCOUT),w
	subwf	(_ADC_STUDY_VALUE),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l1107
u2580:
	line	70
	
l7836:	
;main.c: 70: PC1=1;
	bsf	(57/8),(57)&7
	line	71
;main.c: 71: }else
	goto	l7784
	
l1107:	
	line	72
;main.c: 72: PC1=0;
	bcf	(57/8),(57)&7
	goto	l7784
	
l1108:	
	goto	l7784
	line	73
	
l1106:	
	goto	l7784
	line	74
	
l1109:	
	line	44
	goto	l7784
	
l1110:	
	line	75
	
l1111:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LED_Study_End
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function _LED_Study_End *****************
;; Defined at:
;;		line 63 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text528
	file	"myconfiguration.c"
	line	63
	global	__size_of_LED_Study_End
	__size_of_LED_Study_End	equ	__end_of_LED_Study_End-_LED_Study_End
	
_LED_Study_End:	
	opt	stack 5
; Regs used in _LED_Study_End: [wreg+status,2+status,0+pclath+cstack]
	line	64
	
l7754:	
;myconfiguration.c: 64: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	65
	
l7756:	
;myconfiguration.c: 65: Delay_xms(40);
	movlw	low(028h)
	movwf	(?_Delay_xms)
	movlw	high(028h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	66
	
l7758:	
;myconfiguration.c: 66: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	67
;myconfiguration.c: 67: Delay_xms(40);
	movlw	low(028h)
	movwf	(?_Delay_xms)
	movlw	high(028h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	68
	
l7760:	
;myconfiguration.c: 68: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	69
;myconfiguration.c: 69: Delay_xms(40);
	movlw	low(028h)
	movwf	(?_Delay_xms)
	movlw	high(028h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	70
	
l7762:	
;myconfiguration.c: 70: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	71
;myconfiguration.c: 71: Delay_xms(40);
	movlw	low(028h)
	movwf	(?_Delay_xms)
	movlw	high(028h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	72
	
l7764:	
;myconfiguration.c: 72: PA6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	line	73
;myconfiguration.c: 73: Delay_xms(40);
	movlw	low(028h)
	movwf	(?_Delay_xms)
	movlw	high(028h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	74
	
l7766:	
;myconfiguration.c: 74: PA6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(46/8),(46)&7
	line	75
;myconfiguration.c: 75: Delay_xms(40);
	movlw	low(028h)
	movwf	(?_Delay_xms)
	movlw	high(028h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	76
	
l2193:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Study_End
	__end_of_LED_Study_End:
;; =============== function _LED_Study_End ends ============

	signat	_LED_Study_End,88
	global	_ADC_Init
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 18 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_xms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text529
	file	"myadc.c"
	line	18
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 5
; Regs used in _ADC_Init: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l7734:	
;myadc.c: 20: TRISA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1065/8)^080h,(1065)&7
	line	21
;myadc.c: 21: TRISC2=1;
	bsf	(1082/8)^080h,(1082)&7
	line	22
;myadc.c: 22: ANSEL1=1;
	bsf	(1161/8)^080h,(1161)&7
	line	23
;myadc.c: 23: ANSEL6=1;
	bsf	(1166/8)^080h,(1166)&7
	line	26
;myadc.c: 26: DIVS=0;
	bcf	(1279/8)^080h,(1279)&7
	line	27
;myadc.c: 27: ADCS0=0;ADCS1=0;ADCS2=0;
	bcf	(1276/8)^080h,(1276)&7
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1278/8)^080h,(1278)&7
	line	29
	
l7736:	
;myadc.c: 29: ADCON0=0B10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	30
	
l7738:	
;myadc.c: 30: VCFG0=0;
	bcf	(253/8),(253)&7
	line	31
	
l7740:	
;myadc.c: 31: CHS0=1;CHS1=0;CHS2=0;
	bsf	(250/8),(250)&7
	
l7742:	
	bcf	(251/8),(251)&7
	
l7744:	
	bcf	(252/8),(252)&7
	line	32
	
l7746:	
;myadc.c: 32: ADFM=1;
	bsf	(255/8),(255)&7
	line	33
	
l7748:	
;myadc.c: 33: ADON=1;
	bsf	(248/8),(248)&7
	line	35
	
l7750:	
;myadc.c: 35: Delay_xms(1);
	movlw	low(01h)
	movwf	(?_Delay_xms)
	movlw	high(01h)
	movwf	((?_Delay_xms))+1
	fcall	_Delay_xms
	line	37
	
l7752:	
;myadc.c: 37: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	38
	
l5414:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
	global	_Write_EEPROM_u16
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:

;; *************** function _Write_EEPROM_u16 *****************
;; Defined at:
;;		line 25 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    5[BANK0 ] unsigned char 
;;  DATA_L          1    4[BANK0 ] unsigned char 
;;  DATA_H          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       3       0
;;      Temps:          0       1       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text530
	file	"MyEEProm.c"
	line	25
	global	__size_of_Write_EEPROM_u16
	__size_of_Write_EEPROM_u16	equ	__end_of_Write_EEPROM_u16-_Write_EEPROM_u16
	
_Write_EEPROM_u16:	
	opt	stack 5
; Regs used in _Write_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Write_EEPROM_u16@EEAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Write_EEPROM_u16@EEAddress)
	line	26
	
l7724:	
;MyEEProm.c: 26: unsigned char DATA_H=0;
	clrf	(Write_EEPROM_u16@DATA_H)
	line	27
;MyEEProm.c: 27: unsigned char DATA_L=0;
	clrf	(Write_EEPROM_u16@DATA_L)
	line	29
	
l7726:	
;MyEEProm.c: 29: DATA_H = (EEDatas>>8)&0xff;
	movf	(Write_EEPROM_u16@EEDatas+1),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(Write_EEPROM_u16@DATA_H)
	line	30
	
l7728:	
;MyEEProm.c: 30: DATA_L = EEDatas&0xff;
	movf	(Write_EEPROM_u16@EEDatas),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(Write_EEPROM_u16@DATA_L)
	line	31
	
l7730:	
;MyEEProm.c: 31: Write_EEPROM_u8(EEAddress,DATA_H);
	movf	(Write_EEPROM_u16@DATA_H),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	fcall	_Write_EEPROM_u8
	line	32
	
l7732:	
;MyEEProm.c: 32: Write_EEPROM_u8(EEAddress+1,DATA_L);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Write_EEPROM_u16@DATA_L),w
	movwf	(??_Write_EEPROM_u16+0)+0
	movf	(??_Write_EEPROM_u16+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movf	(Write_EEPROM_u16@EEAddress),w
	addlw	01h
	fcall	_Write_EEPROM_u8
	line	34
	
l3265:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u16
	__end_of_Write_EEPROM_u16:
;; =============== function _Write_EEPROM_u16 ends ============

	signat	_Write_EEPROM_u16,8312
	global	_Delay_xms
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

;; *************** function _Delay_xms *****************
;; Defined at:
;;		line 46 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;  x               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         2       4       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_LED_Study_End
;;		_ADC_Init
;; This function uses a non-reentrant model
;;
psect	text531
	file	"myconfiguration.c"
	line	46
	global	__size_of_Delay_xms
	__size_of_Delay_xms	equ	__end_of_Delay_xms-_Delay_xms
	
_Delay_xms:	
	opt	stack 6
; Regs used in _Delay_xms: [wreg+status,2]
	line	48
	
l7718:	
;myconfiguration.c: 47: unsigned int i;
;myconfiguration.c: 48: for(i=0;i<x;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Delay_xms@i)
	clrf	(Delay_xms@i+1)
	goto	l2187
	
l2188:	
	line	49
	
l7720:	
;myconfiguration.c: 49: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_Delay_xms+0)+0+1),f
	movlw	48
movwf	((??_Delay_xms+0)+0),f
u2597:
	decfsz	((??_Delay_xms+0)+0),f
	goto	u2597
	decfsz	((??_Delay_xms+0)+0+1),f
	goto	u2597
	clrwdt
opt asmopt_on

	line	50
	
l7722:	
# 50 "myconfiguration.c"
clrwdt ;#
psect	text531
	line	48
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Delay_xms@i),f
	skipnc
	incf	(Delay_xms@i+1),f
	movlw	high(01h)
	addwf	(Delay_xms@i+1),f
	
l2187:	
	movf	(Delay_xms@x+1),w
	subwf	(Delay_xms@i+1),w
	skipz
	goto	u2505
	movf	(Delay_xms@x),w
	subwf	(Delay_xms@i),w
u2505:
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l7720
u2500:
	goto	l2190
	
l2189:	
	line	52
	
l2190:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_xms
	__end_of_Delay_xms:
;; =============== function _Delay_xms ends ============

	signat	_Delay_xms,4216
	global	_ExchChannel
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function _ExchChannel *****************
;; Defined at:
;;		line 70 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;  ch_temp         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch_temp         1    0[BANK0 ] unsigned char 
;;  adc_ch_temp     1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          2       0       0
;;      Totals:         2       2       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text532
	file	"myadc.c"
	line	70
	global	__size_of_ExchChannel
	__size_of_ExchChannel	equ	__end_of_ExchChannel-_ExchChannel
	
_ExchChannel:	
	opt	stack 6
; Regs used in _ExchChannel: [wreg+status,2+status,0]
;ExchChannel@ch_temp stored from wreg
	line	73
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ExchChannel@ch_temp)
	
l7710:	
;myadc.c: 71: unsigned char adc_ch_temp;
;myadc.c: 73: adc_ch_temp = ch_temp;
	movf	(ExchChannel@ch_temp),w
	movwf	(??_ExchChannel+0)+0
	movf	(??_ExchChannel+0)+0,w
	movwf	(ExchChannel@adc_ch_temp)
	line	74
	
l7712:	
;myadc.c: 74: adc_ch_temp = adc_ch_temp<<2;
	movf	(ExchChannel@adc_ch_temp),w
	movwf	(??_ExchChannel+0)+0
	movlw	(02h)-1
u2495:
	clrc
	rlf	(??_ExchChannel+0)+0,f
	addlw	-1
	skipz
	goto	u2495
	clrc
	rlf	(??_ExchChannel+0)+0,w
	movwf	(??_ExchChannel+1)+0
	movf	(??_ExchChannel+1)+0,w
	movwf	(ExchChannel@adc_ch_temp)
	line	75
	
l7714:	
;myadc.c: 75: ADCON0 = (ADCON0&0xe3)|adc_ch_temp;
	movf	(31),w
	andlw	0E3h
	iorwf	(ExchChannel@adc_ch_temp),w
	movwf	(31)	;volatile
	line	76
;myadc.c: 76: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_ExchChannel+0)+0+1),f
	movlw	48
movwf	((??_ExchChannel+0)+0),f
u2607:
	decfsz	((??_ExchChannel+0)+0),f
	goto	u2607
	decfsz	((??_ExchChannel+0)+0+1),f
	goto	u2607
	clrwdt
opt asmopt_on

	line	77
	
l7716:	
;myadc.c: 77: GO_DONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	78
	
l5421:	
	return
	opt stack 0
GLOBAL	__end_of_ExchChannel
	__end_of_ExchChannel:
;; =============== function _ExchChannel ends ============

	signat	_ExchChannel,4216
	global	_Read_EEPROM_u16
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _Read_EEPROM_u16 *****************
;; Defined at:
;;		line 37 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    6[BANK0 ] unsigned char 
;;  EepromData      2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       3       0
;;      Temps:          0       2       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text533
	file	"MyEEProm.c"
	line	37
	global	__size_of_Read_EEPROM_u16
	__size_of_Read_EEPROM_u16	equ	__end_of_Read_EEPROM_u16-_Read_EEPROM_u16
	
_Read_EEPROM_u16:	
	opt	stack 5
; Regs used in _Read_EEPROM_u16: [wreg+status,2+status,0+pclath+cstack]
;Read_EEPROM_u16@EEAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_EEPROM_u16@EEAddress)
	line	38
	
l7698:	
;MyEEProm.c: 38: unsigned int EepromData=0;
	clrf	(Read_EEPROM_u16@EepromData)
	clrf	(Read_EEPROM_u16@EepromData+1)
	line	40
	
l7700:	
;MyEEProm.c: 40: EepromData = Read_EEPROM_u8(EEAddress);
	movf	(Read_EEPROM_u16@EEAddress),w
	fcall	_Read_EEPROM_u8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Read_EEPROM_u16+0)+0
	clrf	(??_Read_EEPROM_u16+0)+0+1
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData)
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData+1)
	line	41
	
l7702:	
;MyEEProm.c: 41: EepromData = EepromData<<8;
	movf	(Read_EEPROM_u16@EepromData),w
	movwf	(??_Read_EEPROM_u16+0)+0+1
	clrf	(??_Read_EEPROM_u16+0)+0
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData)
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	movwf	(Read_EEPROM_u16@EepromData+1)
	line	42
	
l7704:	
;MyEEProm.c: 42: EepromData |= Read_EEPROM_u8(EEAddress+1);
	movf	(Read_EEPROM_u16@EEAddress),w
	addlw	01h
	fcall	_Read_EEPROM_u8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Read_EEPROM_u16+0)+0
	clrf	(??_Read_EEPROM_u16+0)+0+1
	movf	0+(??_Read_EEPROM_u16+0)+0,w
	iorwf	(Read_EEPROM_u16@EepromData),f
	movf	1+(??_Read_EEPROM_u16+0)+0,w
	iorwf	(Read_EEPROM_u16@EepromData+1),f
	line	43
	
l7706:	
;MyEEProm.c: 43: return EepromData;
	movf	(Read_EEPROM_u16@EepromData+1),w
	clrf	(?_Read_EEPROM_u16+1)
	addwf	(?_Read_EEPROM_u16+1)
	movf	(Read_EEPROM_u16@EepromData),w
	clrf	(?_Read_EEPROM_u16)
	addwf	(?_Read_EEPROM_u16)

	goto	l3268
	
l7708:	
	line	44
	
l3268:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u16
	__end_of_Read_EEPROM_u16:
;; =============== function _Read_EEPROM_u16 ends ============

	signat	_Read_EEPROM_u16,4218
	global	_EEPROM_Init
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _EEPROM_Init *****************
;; Defined at:
;;		line 13 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Write_EEPROM_u8
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text534
	file	"MyEEProm.c"
	line	13
	global	__size_of_EEPROM_Init
	__size_of_EEPROM_Init	equ	__end_of_EEPROM_Init-_EEPROM_Init
	
_EEPROM_Init:	
	opt	stack 5
; Regs used in _EEPROM_Init: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l7696:	
;MyEEProm.c: 14: Write_EEPROM_u8(0xFF,0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_Init+0)+0
	movf	(??_EEPROM_Init+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movlw	(0FFh)
	fcall	_Write_EEPROM_u8
	line	15
;MyEEProm.c: 15: Write_EEPROM_u8(0xFF,0xAA);
	movlw	(0AAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_EEPROM_Init+0)+0
	movf	(??_EEPROM_Init+0)+0,w
	movwf	(?_Write_EEPROM_u8)
	movlw	(0FFh)
	fcall	_Write_EEPROM_u8
	line	16
	
l3262:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Init
	__end_of_EEPROM_Init:
;; =============== function _EEPROM_Init ends ============

	signat	_EEPROM_Init,88
	global	_Read_EEPROM_u8
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function _Read_EEPROM_u8 *****************
;; Defined at:
;;		line 62 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    0[BANK0 ] unsigned char 
;;  ReEepromData    1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         1       2       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text535
	file	"MyEEProm.c"
	line	62
	global	__size_of_Read_EEPROM_u8
	__size_of_Read_EEPROM_u8	equ	__end_of_Read_EEPROM_u8-_Read_EEPROM_u8
	
_Read_EEPROM_u8:	
	opt	stack 5
; Regs used in _Read_EEPROM_u8: [wreg]
;Read_EEPROM_u8@EEAddress stored from wreg
	line	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_EEPROM_u8@EEAddress)
	
l7688:	
;MyEEProm.c: 63: unsigned char ReEepromData;
;MyEEProm.c: 65: EEADR = EEAddress;
	movf	(Read_EEPROM_u8@EEAddress),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	66
	
l7690:	
;MyEEProm.c: 66: RD = 1;
	bsf	(1248/8)^080h,(1248)&7
	line	67
;MyEEProm.c: 67: ReEepromData = EEDAT;
	movf	(154)^080h,w	;volatile
	movwf	(??_Read_EEPROM_u8+0)+0
	movf	(??_Read_EEPROM_u8+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Read_EEPROM_u8@ReEepromData)
	line	68
	
l7692:	
;MyEEProm.c: 68: RD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1248/8)^080h,(1248)&7
	line	69
;MyEEProm.c: 69: return ReEepromData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Read_EEPROM_u8@ReEepromData),w
	goto	l3280
	
l7694:	
	line	70
	
l3280:	
	return
	opt stack 0
GLOBAL	__end_of_Read_EEPROM_u8
	__end_of_Read_EEPROM_u8:
;; =============== function _Read_EEPROM_u8 ends ============

	signat	_Read_EEPROM_u8,4217
	global	_Write_EEPROM_u8
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function _Write_EEPROM_u8 *****************
;; Defined at:
;;		line 47 in file "MyEEProm.c"
;; Parameters:    Size  Location     Type
;;  EEAddress       1    wreg     unsigned char 
;;  EEDatas         1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddress       1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_Init
;;		_Write_EEPROM_u16
;; This function uses a non-reentrant model
;;
psect	text536
	file	"MyEEProm.c"
	line	47
	global	__size_of_Write_EEPROM_u8
	__size_of_Write_EEPROM_u8	equ	__end_of_Write_EEPROM_u8-_Write_EEPROM_u8
	
_Write_EEPROM_u8:	
	opt	stack 5
; Regs used in _Write_EEPROM_u8: [wreg]
;Write_EEPROM_u8@EEAddress stored from wreg
	movwf	(Write_EEPROM_u8@EEAddress)
	line	48
	
l7518:	
;MyEEProm.c: 48: GIE = 0;
	bcf	(95/8),(95)&7
	line	49
;MyEEProm.c: 49: while(GIE) asm("clrwdt");
	goto	l3271
	
l3272:	
# 49 "MyEEProm.c"
clrwdt ;#
psect	text536
	
l3271:	
	btfsc	(95/8),(95)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l3272
u2360:
	goto	l7520
	
l3273:	
	line	50
	
l7520:	
;MyEEProm.c: 50: EEADR = EEAddress;
	movf	(Write_EEPROM_u8@EEAddress),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	51
;MyEEProm.c: 51: EEDAT = EEDatas;
	movf	(Write_EEPROM_u8@EEDatas),w
	movwf	(154)^080h	;volatile
	line	52
	
l7522:	
;MyEEProm.c: 52: EEIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(103/8),(103)&7
	line	53
;MyEEProm.c: 53: EECON1 = 0x34;
	movlw	(034h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(156)^080h	;volatile
	line	54
	
l7524:	
;MyEEProm.c: 54: WR = 1;
	bsf	(1256/8)^080h,(1256)&7
	line	55
;MyEEProm.c: 55: while(WR) asm("clrwdt");
	goto	l3274
	
l3275:	
# 55 "MyEEProm.c"
clrwdt ;#
psect	text536
	
l3274:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1256/8)^080h,(1256)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l3275
u2370:
	
l3276:	
	line	57
;MyEEProm.c: 57: GIE = 1;
	bsf	(95/8),(95)&7
	line	58
	
l3277:	
	return
	opt stack 0
GLOBAL	__end_of_Write_EEPROM_u8
	__end_of_Write_EEPROM_u8:
;; =============== function _Write_EEPROM_u8 ends ============

	signat	_Write_EEPROM_u8,8312
	global	_isKeyPressed
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _isKeyPressed *****************
;; Defined at:
;;		line 18 in file "MyKey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text537
	file	"MyKey.c"
	line	18
	global	__size_of_isKeyPressed
	__size_of_isKeyPressed	equ	__end_of_isKeyPressed-_isKeyPressed
	
_isKeyPressed:	
	opt	stack 6
; Regs used in _isKeyPressed: [wreg+status,2+status,0]
	line	19
	
l7514:	
;MyKey.c: 19: return PC3 ? 0:1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	setc
	movlw	0
	skipnc
	movlw	1

	goto	l4345
	
l7516:	
	line	20
	
l4345:	
	return
	opt stack 0
GLOBAL	__end_of_isKeyPressed
	__end_of_isKeyPressed:
;; =============== function _isKeyPressed ends ============

	signat	_isKeyPressed,89
	global	_GetADCValue
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 48 in file "myadc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ADC_num         2    2[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         2       4       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text538
	file	"myadc.c"
	line	48
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 6
; Regs used in _GetADCValue: [wreg+status,2+status,0]
	line	49
	
l7676:	
;myadc.c: 49: unsigned short int ADC_num=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetADCValue@ADC_num)
	clrf	(GetADCValue@ADC_num+1)
	line	51
	
l7678:	
;myadc.c: 51: if(GO_DONE==0){
	btfsc	(249/8),(249)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l7684
u2480:
	line	52
	
l7680:	
;myadc.c: 52: ADC_num=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_GetADCValue+0)+0
	clrf	(??_GetADCValue+0)+0+1
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	53
;myadc.c: 53: ADC_num=ADC_num<<8;
	movf	(GetADCValue@ADC_num),w
	movwf	(??_GetADCValue+0)+0+1
	clrf	(??_GetADCValue+0)+0
	movf	0+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num)
	movf	1+(??_GetADCValue+0)+0,w
	movwf	(GetADCValue@ADC_num+1)
	line	54
;myadc.c: 54: ADC_num=ADC_num|ADRESL;
	movf	(GetADCValue@ADC_num),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GetADCValue@ADC_num)
	movf	(GetADCValue@ADC_num+1),w
	movwf	1+(GetADCValue@ADC_num)
	line	55
	
l7682:	
;myadc.c: 55: GO_DONE=1;
	bsf	(249/8),(249)&7
	goto	l7684
	line	56
	
l5417:	
	line	57
	
l7684:	
;myadc.c: 56: }
;myadc.c: 57: return ADC_num;
	movf	(GetADCValue@ADC_num+1),w
	clrf	(?_GetADCValue+1)
	addwf	(?_GetADCValue+1)
	movf	(GetADCValue@ADC_num),w
	clrf	(?_GetADCValue)
	addwf	(?_GetADCValue)

	goto	l5418
	
l7686:	
	line	58
	
l5418:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,90
	global	_GPIO_Init
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 22 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text539
	file	"myconfiguration.c"
	line	22
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:	
	opt	stack 6
; Regs used in _GPIO_Init: []
	line	24
	
l7500:	
;myconfiguration.c: 24: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1064/8)^080h,(1064)&7
	line	25
;myconfiguration.c: 25: TRISA1=0;
	bcf	(1065/8)^080h,(1065)&7
	line	26
;myconfiguration.c: 26: TRISA6=0;
	bcf	(1070/8)^080h,(1070)&7
	line	28
;myconfiguration.c: 28: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	29
;myconfiguration.c: 29: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	30
;myconfiguration.c: 30: TRISC3=1;
	bsf	(1083/8)^080h,(1083)&7
	line	32
;myconfiguration.c: 32: CM0=1;CM1=1;CM2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(200/8),(200)&7
	bsf	(201/8),(201)&7
	bsf	(202/8),(202)&7
	line	36
;myconfiguration.c: 36: ANSEL0=0;ANSEL1=0;ANSEL2=0;ANSEL3=0;ANSEL4=0;ANSEL5=0;ANSEL6=0;ANSEL7=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1160/8)^080h,(1160)&7
	bcf	(1161/8)^080h,(1161)&7
	bcf	(1162/8)^080h,(1162)&7
	bcf	(1163/8)^080h,(1163)&7
	bcf	(1164/8)^080h,(1164)&7
	bcf	(1165/8)^080h,(1165)&7
	bcf	(1166/8)^080h,(1166)&7
	bcf	(1167/8)^080h,(1167)&7
	line	38
;myconfiguration.c: 38: WPUA0=1;WPUA1=1;WPUA6=1;
	bsf	(1192/8)^080h,(1192)&7
	bsf	(1193/8)^080h,(1193)&7
	bsf	(1198/8)^080h,(1198)&7
	line	40
;myconfiguration.c: 40: WPUC1=1;WPUC2=1;WPUC3=1;
	bsf	(1089/8)^080h,(1089)&7
	bsf	(1090/8)^080h,(1090)&7
	bsf	(1091/8)^080h,(1091)&7
	line	42
;myconfiguration.c: 42: WPDA4=0;WPDC1=0;WPDC2=0;WPDC3=0;
	bcf	(1100/8)^080h,(1100)&7
	bcf	(1099/8)^080h,(1099)&7
	bcf	(1098/8)^080h,(1098)&7
	bcf	(1097/8)^080h,(1097)&7
	line	43
	
l2184:	
	return
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
;; =============== function _GPIO_Init ends ============

	signat	_GPIO_Init,88
	global	_System_init
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function _System_init *****************
;; Defined at:
;;		line 13 in file "myconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text540
	file	"myconfiguration.c"
	line	13
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2]
	line	15
	
l7494:	
;myconfiguration.c: 15: OPTION = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	16
	
l7496:	
;myconfiguration.c: 16: OSCCON = 0B01110000;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	17
	
l7498:	
;myconfiguration.c: 17: WDTCON = 0B00001001;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	18
	
l2181:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_ISR
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _ISR *****************
;; Defined at:
;;		line 84 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text541
	file	"main.c"
	line	84
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text541
	line	86
	
i1l1114:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
