
_main:

;SevenSegFourDiit.c,4 :: 		void main() {
;SevenSegFourDiit.c,6 :: 		Trisb=0x00;
	CLRF       TRISB+0
;SevenSegFourDiit.c,7 :: 		Trisc=0x00;
	CLRF       TRISC+0
;SevenSegFourDiit.c,8 :: 		portb=0x00;
	CLRF       PORTB+0
;SevenSegFourDiit.c,9 :: 		portc=0x00;
	CLRF       PORTC+0
;SevenSegFourDiit.c,11 :: 		while(1)
L_main0:
;SevenSegFourDiit.c,13 :: 		for(i=0;i<=9999;i++) //counting 0-9999
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       main_i_L0+0, 0
	SUBLW      15
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;SevenSegFourDiit.c,15 :: 		d_zero=i/1000; // for first digit of display
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_d_zero_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d_zero_L0+1
;SevenSegFourDiit.c,16 :: 		d_one=((i/100)%10); // for second digit
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_d_one_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d_one_L0+1
;SevenSegFourDiit.c,17 :: 		d_two=((i/10)%10); // for third digit
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_d_two_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d_two_L0+1
;SevenSegFourDiit.c,18 :: 		d_three=i%10;
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
	MOVF       R0+0, 0
	MOVWF      main_d_three_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d_three_L0+1
;SevenSegFourDiit.c,20 :: 		for(j=0;j<=10;j++)
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main5:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_j_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_j_L0+0, 0
	SUBLW      10
L__main14:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;SevenSegFourDiit.c,22 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;SevenSegFourDiit.c,23 :: 		portb=arraycc[d_zero];//display
	MOVF       main_d_zero_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDiit.c,24 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;SevenSegFourDiit.c,25 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;SevenSegFourDiit.c,27 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;SevenSegFourDiit.c,28 :: 		portb=arraycc[d_one];//display
	MOVF       main_d_one_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDiit.c,29 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;SevenSegFourDiit.c,30 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;SevenSegFourDiit.c,32 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;SevenSegFourDiit.c,33 :: 		portb=arraycc[d_two];//display
	MOVF       main_d_two_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDiit.c,34 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;SevenSegFourDiit.c,35 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;SevenSegFourDiit.c,37 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;SevenSegFourDiit.c,38 :: 		portb=arraycc[d_three];//display
	MOVF       main_d_three_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDiit.c,39 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;SevenSegFourDiit.c,40 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;SevenSegFourDiit.c,20 :: 		for(j=0;j<=10;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;SevenSegFourDiit.c,42 :: 		}
	GOTO       L_main5
L_main6:
;SevenSegFourDiit.c,13 :: 		for(i=0;i<=9999;i++) //counting 0-9999
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;SevenSegFourDiit.c,43 :: 		}
	GOTO       L_main2
L_main3:
;SevenSegFourDiit.c,44 :: 		}
	GOTO       L_main0
;SevenSegFourDiit.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
