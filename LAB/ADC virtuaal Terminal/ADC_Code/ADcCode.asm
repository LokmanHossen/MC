
_main:

;ADcCode.c,5 :: 		void main()
;ADcCode.c,8 :: 		UART1_Init(9600);//initialize ADC
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADcCode.c,9 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADcCode.c,11 :: 		while(1)
L_main0:
;ADcCode.c,14 :: 		valADC = ADC_Read(2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _valADC+0
	MOVF       R0+1, 0
	MOVWF      _valADC+1
;ADcCode.c,16 :: 		IntToStr(valADC,x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADcCode.c,18 :: 		UART1_Write_Text("Analog value = ");
	MOVLW      ?lstr1_ADcCode+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADcCode.c,19 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADcCode.c,21 :: 		strcpy(x,"");
	MOVLW      _x+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_ADcCode+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;ADcCode.c,22 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADcCode.c,23 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;ADcCode.c,24 :: 		}
	GOTO       L_main0
;ADcCode.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
