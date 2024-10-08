
_main:

;SevenSegmentOneDigit.c,3 :: 		void main() {
;SevenSegmentOneDigit.c,4 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;SevenSegmentOneDigit.c,5 :: 		trisb = 0x00;
	CLRF       TRISB+0
;SevenSegmentOneDigit.c,6 :: 		portb = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;SevenSegmentOneDigit.c,8 :: 		for(i=0; i<10; i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main0:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      10
	SUBWF      main_i_L0+0, 0
L__main5:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;SevenSegmentOneDigit.c,9 :: 		portb = arraycc[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegmentOneDigit.c,10 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;SevenSegmentOneDigit.c,8 :: 		for(i=0; i<10; i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;SevenSegmentOneDigit.c,11 :: 		}
	GOTO       L_main0
L_main1:
;SevenSegmentOneDigit.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
