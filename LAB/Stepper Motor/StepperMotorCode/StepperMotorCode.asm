
_main:

;StepperMotorCode.c,1 :: 		void main()
;StepperMotorCode.c,3 :: 		TRISD = 0b0000000;
	CLRF       TRISD+0
;StepperMotorCode.c,4 :: 		PORTD = 0b1111111;
	MOVLW      127
	MOVWF      PORTD+0
;StepperMotorCode.c,5 :: 		do
L_main0:
;StepperMotorCode.c,7 :: 		PORTD = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;StepperMotorCode.c,8 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;StepperMotorCode.c,9 :: 		PORTD = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;StepperMotorCode.c,10 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;StepperMotorCode.c,11 :: 		PORTD = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;StepperMotorCode.c,12 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;StepperMotorCode.c,13 :: 		PORTD = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;StepperMotorCode.c,14 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;StepperMotorCode.c,16 :: 		while(1);
	GOTO       L_main0
;StepperMotorCode.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
