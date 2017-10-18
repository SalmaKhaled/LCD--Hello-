
_main:

;task2.c,18 :: 		void main() {
;task2.c,19 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;task2.c,20 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;task2.c,21 :: 		while(1){
L_main0:
;task2.c,23 :: 		for(i=1;i<=16;i++){
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L_main2:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main21
	MOVF        _i+0, 0 
	SUBLW       16
L__main21:
	BTFSS       STATUS+0, 0 
	GOTO        L_main3
;task2.c,25 :: 		Lcd_Out(1,i,"Hello");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVF        _i+0, 0 
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,26 :: 		Delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
;task2.c,27 :: 		Lcd_Out(1,i," ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVF        _i+0, 0 
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,29 :: 		if(i==12)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main22
	MOVLW       12
	XORWF       _i+0, 0 
L__main22:
	BTFSS       STATUS+0, 2 
	GOTO        L_main6
;task2.c,31 :: 		Lcd_Out(2,16,"o");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       16
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,32 :: 		}
L_main6:
;task2.c,33 :: 		if(i==13)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main23
	MOVLW       13
	XORWF       _i+0, 0 
L__main23:
	BTFSS       STATUS+0, 2 
	GOTO        L_main7
;task2.c,35 :: 		Lcd_Out(2,15,"l");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       15
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,36 :: 		}
L_main7:
;task2.c,37 :: 		if(i==14)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main24
	MOVLW       14
	XORWF       _i+0, 0 
L__main24:
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
;task2.c,39 :: 		Lcd_Out(2,14,"l");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       14
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,40 :: 		}
L_main8:
;task2.c,41 :: 		if(i==15)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main25
	MOVLW       15
	XORWF       _i+0, 0 
L__main25:
	BTFSS       STATUS+0, 2 
	GOTO        L_main9
;task2.c,43 :: 		Lcd_Out(2,13,"e");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,44 :: 		}
L_main9:
;task2.c,45 :: 		if(i==16)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main26
	MOVLW       16
	XORWF       _i+0, 0 
L__main26:
	BTFSS       STATUS+0, 2 
	GOTO        L_main10
;task2.c,47 :: 		Lcd_Out(2,12,"H");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       12
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,48 :: 		}
L_main10:
;task2.c,23 :: 		for(i=1;i<=16;i++){
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;task2.c,52 :: 		}
	GOTO        L_main2
L_main3:
;task2.c,53 :: 		Lcd_Out(2,13,"     ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       13
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,65 :: 		for(i=11;i>=-4;i--){
	MOVLW       11
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L_main11:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       127
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main27
	MOVLW       252
	SUBWF       _i+0, 0 
L__main27:
	BTFSS       STATUS+0, 0 
	GOTO        L_main12
;task2.c,66 :: 		Lcd_Out(2,i,"Hello");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVF        _i+0, 0 
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,70 :: 		if(i==0)
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main28
	MOVLW       0
	XORWF       _i+0, 0 
L__main28:
	BTFSS       STATUS+0, 2 
	GOTO        L_main14
;task2.c,72 :: 		Lcd_Out(1,1,"H");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,73 :: 		}
L_main14:
;task2.c,74 :: 		if(i==-1)
	MOVLW       255
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main29
	MOVLW       255
	XORWF       _i+0, 0 
L__main29:
	BTFSS       STATUS+0, 2 
	GOTO        L_main15
;task2.c,76 :: 		Lcd_Out(1,2,"e");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,77 :: 		}
L_main15:
;task2.c,78 :: 		if(i==-2)
	MOVLW       255
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main30
	MOVLW       254
	XORWF       _i+0, 0 
L__main30:
	BTFSS       STATUS+0, 2 
	GOTO        L_main16
;task2.c,80 :: 		Lcd_Out(1,3,"l");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,81 :: 		}
L_main16:
;task2.c,82 :: 		if(i==-3)
	MOVLW       255
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main31
	MOVLW       253
	XORWF       _i+0, 0 
L__main31:
	BTFSS       STATUS+0, 2 
	GOTO        L_main17
;task2.c,84 :: 		Lcd_Out(1,4,"l");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,85 :: 		}
L_main17:
;task2.c,86 :: 		if(i==-4)
	MOVLW       255
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main32
	MOVLW       252
	XORWF       _i+0, 0 
L__main32:
	BTFSS       STATUS+0, 2 
	GOTO        L_main18
;task2.c,88 :: 		Lcd_Out(1,5,"o");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,89 :: 		}
L_main18:
;task2.c,90 :: 		Delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main19:
	DECFSZ      R13, 1, 1
	BRA         L_main19
	DECFSZ      R12, 1, 1
	BRA         L_main19
	DECFSZ      R11, 1, 1
	BRA         L_main19
;task2.c,91 :: 		Lcd_Out(2,i+4,"  ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	ADDWF       _i+0, 0 
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,65 :: 		for(i=11;i>=-4;i--){
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
;task2.c,92 :: 		}
	GOTO        L_main11
L_main12:
;task2.c,93 :: 		Lcd_Out(2,1,"     ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_task2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_task2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;task2.c,96 :: 		}
	GOTO        L_main0
;task2.c,97 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
