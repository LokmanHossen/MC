
_main:

;twoDigitCode.c,3 :: 		void main() {
;twoDigitCode.c,5 :: 		int i=0, left=0, right=0, j=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_right_L0+0
	CLRF       main_right_L0+1
;twoDigitCode.c,7 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;twoDigitCode.c,8 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;twoDigitCode.c,9 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;twoDigitCode.c,11 :: 		portb = 0x00;
	CLRF       PORTB+0
;twoDigitCode.c,12 :: 		portc = 0x00;
	CLRF       PORTC+0
;twoDigitCode.c,14 :: 		while(1)
L_main0:
;twoDigitCode.c,16 :: 		left=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;twoDigitCode.c,17 :: 		right=i%10;
	MOVF       R0+0, 0
	MOVWF      main_right_L0+0
	MOVF       R0+1, 0
	MOVWF      main_right_L0+1
;twoDigitCode.c,20 :: 		portb=array[left];
	MOVF       FLOC__main+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;twoDigitCode.c,21 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;twoDigitCode.c,22 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;twoDigitCode.c,23 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;twoDigitCode.c,25 :: 		portb=array[right];
	MOVF       main_right_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;twoDigitCode.c,26 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;twoDigitCode.c,27 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;twoDigitCode.c,28 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;twoDigitCode.c,31 :: 		if(portd.f0==0)
	BTFSC      PORTD+0, 0
	GOTO       L_main4
;twoDigitCode.c,33 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;twoDigitCode.c,34 :: 		if(portd.f0==0)
	BTFSC      PORTD+0, 0
	GOTO       L_main6
;twoDigitCode.c,36 :: 		i=i+1;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;twoDigitCode.c,37 :: 		}
L_main6:
;twoDigitCode.c,38 :: 		}
L_main4:
;twoDigitCode.c,40 :: 		if(portd.f1==0)
	BTFSC      PORTD+0, 1
	GOTO       L_main7
;twoDigitCode.c,42 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
;twoDigitCode.c,43 :: 		if(portd.f1==0)
	BTFSC      PORTD+0, 1
	GOTO       L_main9
;twoDigitCode.c,45 :: 		i=i+1;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;twoDigitCode.c,46 :: 		}
L_main9:
;twoDigitCode.c,47 :: 		}
L_main7:
;twoDigitCode.c,49 :: 		}
	GOTO       L_main0
;twoDigitCode.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
