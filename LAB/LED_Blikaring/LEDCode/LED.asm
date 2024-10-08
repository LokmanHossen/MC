
_main:

;LED.c,2 :: 		void main() {
;LED.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;LED.c,5 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;LED.c,7 :: 		while(1){
L_main0:
;LED.c,8 :: 		PORTB.RB3 = 1;
	BSF        PORTB+0, 3
;LED.c,9 :: 		Delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;LED.c,10 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;LED.c,11 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;LED.c,12 :: 		Delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LED.c,13 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;LED.c,14 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;LED.c,15 :: 		Delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;LED.c,16 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;LED.c,17 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;LED.c,18 :: 		Delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;LED.c,19 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;LED.c,20 :: 		counter++;
	INCF       _counter+0, 1
	BTFSC      STATUS+0, 2
	INCF       _counter+1, 1
;LED.c,22 :: 		}
	GOTO       L_main0
;LED.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
