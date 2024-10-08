
_main:

;SevenSegFourDIgButtonCode.c,3 :: 		void main() {
;SevenSegFourDIgButtonCode.c,5 :: 		int bt_zero=0,bt_one=0,bt_two=0,bt_three=0;
	CLRF       main_bt_zero_L0+0
	CLRF       main_bt_zero_L0+1
	CLRF       main_bt_one_L0+0
	CLRF       main_bt_one_L0+1
	CLRF       main_bt_two_L0+0
	CLRF       main_bt_two_L0+1
	CLRF       main_bt_three_L0+0
	CLRF       main_bt_three_L0+1
;SevenSegFourDIgButtonCode.c,6 :: 		Trisb=0x00;
	CLRF       TRISB+0
;SevenSegFourDIgButtonCode.c,7 :: 		Trisc=0x00;
	CLRF       TRISC+0
;SevenSegFourDIgButtonCode.c,9 :: 		Trisd=1;
	MOVLW      1
	MOVWF      TRISD+0
;SevenSegFourDIgButtonCode.c,11 :: 		portb=0x00;
	CLRF       PORTB+0
;SevenSegFourDIgButtonCode.c,12 :: 		portc=0x00;
	CLRF       PORTC+0
;SevenSegFourDIgButtonCode.c,14 :: 		while(1)
L_main0:
;SevenSegFourDIgButtonCode.c,16 :: 		if(portd.f0==0)
	BTFSC      PORTD+0, 0
	GOTO       L_main2
;SevenSegFourDIgButtonCode.c,18 :: 		delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;SevenSegFourDIgButtonCode.c,19 :: 		if(portd.f0==0)
	BTFSC      PORTD+0, 0
	GOTO       L_main4
;SevenSegFourDIgButtonCode.c,21 :: 		bt_zero++;
	INCF       main_bt_zero_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_zero_L0+1, 1
;SevenSegFourDIgButtonCode.c,22 :: 		if(bt_zero==10)
	MOVLW      0
	XORWF      main_bt_zero_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      10
	XORWF      main_bt_zero_L0+0, 0
L__main23:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;SevenSegFourDIgButtonCode.c,24 :: 		bt_zero=0;
	CLRF       main_bt_zero_L0+0
	CLRF       main_bt_zero_L0+1
;SevenSegFourDIgButtonCode.c,25 :: 		}
L_main5:
;SevenSegFourDIgButtonCode.c,26 :: 		}
L_main4:
;SevenSegFourDIgButtonCode.c,27 :: 		}
L_main2:
;SevenSegFourDIgButtonCode.c,28 :: 		if(portd.f1==0)
	BTFSC      PORTD+0, 1
	GOTO       L_main6
;SevenSegFourDIgButtonCode.c,30 :: 		delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;SevenSegFourDIgButtonCode.c,31 :: 		if(portd.f1==0)
	BTFSC      PORTD+0, 1
	GOTO       L_main8
;SevenSegFourDIgButtonCode.c,33 :: 		bt_one++;
	INCF       main_bt_one_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_one_L0+1, 1
;SevenSegFourDIgButtonCode.c,34 :: 		if(bt_one==10)
	MOVLW      0
	XORWF      main_bt_one_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      10
	XORWF      main_bt_one_L0+0, 0
L__main24:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;SevenSegFourDIgButtonCode.c,36 :: 		bt_one=0;
	CLRF       main_bt_one_L0+0
	CLRF       main_bt_one_L0+1
;SevenSegFourDIgButtonCode.c,37 :: 		}
L_main9:
;SevenSegFourDIgButtonCode.c,38 :: 		}
L_main8:
;SevenSegFourDIgButtonCode.c,39 :: 		}
L_main6:
;SevenSegFourDIgButtonCode.c,40 :: 		if(portd.f2==0)
	BTFSC      PORTD+0, 2
	GOTO       L_main10
;SevenSegFourDIgButtonCode.c,42 :: 		delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
;SevenSegFourDIgButtonCode.c,43 :: 		if(portd.f2==0)
	BTFSC      PORTD+0, 2
	GOTO       L_main12
;SevenSegFourDIgButtonCode.c,45 :: 		bt_two++;
	INCF       main_bt_two_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_two_L0+1, 1
;SevenSegFourDIgButtonCode.c,47 :: 		if(bt_two==10)
	MOVLW      0
	XORWF      main_bt_two_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      10
	XORWF      main_bt_two_L0+0, 0
L__main25:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;SevenSegFourDIgButtonCode.c,49 :: 		bt_two=0;
	CLRF       main_bt_two_L0+0
	CLRF       main_bt_two_L0+1
;SevenSegFourDIgButtonCode.c,50 :: 		}
L_main13:
;SevenSegFourDIgButtonCode.c,51 :: 		}
L_main12:
;SevenSegFourDIgButtonCode.c,52 :: 		}
L_main10:
;SevenSegFourDIgButtonCode.c,53 :: 		if(portd.f3==0)
	BTFSC      PORTD+0, 3
	GOTO       L_main14
;SevenSegFourDIgButtonCode.c,55 :: 		delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
;SevenSegFourDIgButtonCode.c,56 :: 		if(portd.f3==0)
	BTFSC      PORTD+0, 3
	GOTO       L_main16
;SevenSegFourDIgButtonCode.c,58 :: 		bt_three++;
	INCF       main_bt_three_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_three_L0+1, 1
;SevenSegFourDIgButtonCode.c,59 :: 		if(bt_three==10)
	MOVLW      0
	XORWF      main_bt_three_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      10
	XORWF      main_bt_three_L0+0, 0
L__main26:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;SevenSegFourDIgButtonCode.c,61 :: 		bt_three=0;
	CLRF       main_bt_three_L0+0
	CLRF       main_bt_three_L0+1
;SevenSegFourDIgButtonCode.c,62 :: 		}
L_main17:
;SevenSegFourDIgButtonCode.c,63 :: 		}
L_main16:
;SevenSegFourDIgButtonCode.c,64 :: 		}
L_main14:
;SevenSegFourDIgButtonCode.c,66 :: 		portb=arraycc[bt_zero];//display
	MOVF       main_bt_zero_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDIgButtonCode.c,67 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;SevenSegFourDIgButtonCode.c,68 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;SevenSegFourDIgButtonCode.c,69 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;SevenSegFourDIgButtonCode.c,72 :: 		portb=arraycc[bt_one];//display
	MOVF       main_bt_one_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDIgButtonCode.c,73 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;SevenSegFourDIgButtonCode.c,74 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
;SevenSegFourDIgButtonCode.c,75 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;SevenSegFourDIgButtonCode.c,78 :: 		portb=arraycc[bt_two];//display
	MOVF       main_bt_two_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDIgButtonCode.c,79 :: 		portc.f2= 0;
	BCF        PORTC+0, 2
;SevenSegFourDIgButtonCode.c,80 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	NOP
;SevenSegFourDIgButtonCode.c,81 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;SevenSegFourDIgButtonCode.c,84 :: 		portb=arraycc[bt_three];//display
	MOVF       main_bt_three_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegFourDIgButtonCode.c,85 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;SevenSegFourDIgButtonCode.c,86 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	NOP
;SevenSegFourDIgButtonCode.c,87 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;SevenSegFourDIgButtonCode.c,88 :: 		}
	GOTO       L_main0
;SevenSegFourDIgButtonCode.c,90 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
