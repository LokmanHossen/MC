
_MSDelay:

;DotMatrixCode.c,11 :: 		void MSDelay(unsigned char Time)
;DotMatrixCode.c,14 :: 		for(y=0;y<Time;y++)
	CLRF       R1+0
L_MSDelay0:
	MOVF       FARG_MSDelay_Time+0, 0
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay1
;DotMatrixCode.c,15 :: 		for(z=0;z<20;z++);
	CLRF       R2+0
L_MSDelay3:
	MOVLW      20
	SUBWF      R2+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay4
	INCF       R2+0, 1
	GOTO       L_MSDelay3
L_MSDelay4:
;DotMatrixCode.c,14 :: 		for(y=0;y<Time;y++)
	INCF       R1+0, 1
;DotMatrixCode.c,15 :: 		for(z=0;z<20;z++);
	GOTO       L_MSDelay0
L_MSDelay1:
;DotMatrixCode.c,16 :: 		}
L_end_MSDelay:
	RETURN
; end of _MSDelay

_main:

;DotMatrixCode.c,17 :: 		void main()
;DotMatrixCode.c,19 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;DotMatrixCode.c,20 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;DotMatrixCode.c,21 :: 		while(1)
L_main6:
;DotMatrixCode.c,23 :: 		PORTD = 0x80;
	MOVLW      128
	MOVWF      PORTD+0
;DotMatrixCode.c,24 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;DotMatrixCode.c,25 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,27 :: 		PORTD = 0x40;
	MOVLW      64
	MOVWF      PORTD+0
;DotMatrixCode.c,28 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;DotMatrixCode.c,29 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,31 :: 		PORTD = 0x20;
	MOVLW      32
	MOVWF      PORTD+0
;DotMatrixCode.c,32 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;DotMatrixCode.c,33 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,35 :: 		PORTD = 0x10;
	MOVLW      16
	MOVWF      PORTD+0
;DotMatrixCode.c,36 :: 		PORTC = 0xdb;
	MOVLW      219
	MOVWF      PORTC+0
;DotMatrixCode.c,37 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,39 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;DotMatrixCode.c,40 :: 		PORTC = 0xdb;
	MOVLW      219
	MOVWF      PORTC+0
;DotMatrixCode.c,41 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,43 :: 		PORTD = 0x04;
	MOVLW      4
	MOVWF      PORTD+0
;DotMatrixCode.c,44 :: 		PORTC = 0xdb;
	MOVLW      219
	MOVWF      PORTC+0
;DotMatrixCode.c,45 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,47 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;DotMatrixCode.c,48 :: 		PORTC = 0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;DotMatrixCode.c,49 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,51 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;DotMatrixCode.c,52 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;DotMatrixCode.c,53 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;DotMatrixCode.c,54 :: 		}
	GOTO       L_main6
;DotMatrixCode.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
