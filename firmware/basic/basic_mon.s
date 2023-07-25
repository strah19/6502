#include "basic.s"
#include "lcd.s"
#include "keyboard.s"

; OSI Defines
CURPOS   = $0200        ; ROM BASIC cursor position
LOADFLAG = $0203        ; ROM BASIC LOAD flag
SAVEFLAG = $0205        ; ROM BASIC SAVE flag
KBD      = $DF00        ; OSI polled keyboard register

SAVE_X = $DE		; For saving registers
SAVE_Y = $DF

; put the IRQ and NMI code in RAM so that it can be changed

IRQ_vec	= VEC_SV+2	; IRQ code vector
NMI_vec	= IRQ_vec+$0A	; NMI code vector

; now the code. all this does is set up the vectors and interrupt code
; and wait for the user to select [C]old or [W]arm start. nothing else
; fits in less than 128 bytes

; reset vector points here

RES_vec
	CLD				; clear decimal mode
	LDX	#$FF			; empty stack
	TXS				; set the stack

	jsr init_via_ports
    jsr lcd_setup
    jsr kbinit

; set up vectors and interrupt code, copy them to page 2

	LDY	#END_CODE-LAB_vec	; set index/count
LAB_stlp
	LDA	LAB_vec-1,Y		; get byte from interrupt code
	STA	VEC_IN-1,Y		; save to RAM
	DEY				; decrement index/count
	BNE	LAB_stlp		; loop if more to do

	CLI

	JMP LAB_COLD

; byte out to screen
SCRNout
    STX     SAVE_X                  ; Preserve X register
    STY     SAVE_Y                  ; Preserve Y register
	
	jsr lcd_print

    LDX     SAVE_X                  ; Restore X
    LDY     SAVE_Y                  ; Restore Y
	RTS

; byte in from keyboard
KBDin    
	STX     SAVE_X                  ; Preserve X register
    STY     SAVE_Y                  ; Preserve Y register
	
    jsr kbinput

    LDX     SAVE_X                  ; Restore X
    LDY     SAVE_Y                  ; Restore Y
	RTS

OSIsave				        ; save vector for EhBASIC
	RTS

OSIload						; load vector for EhBASIC
	RTS

; vector tables

LAB_vec
	.word	KBDin               ; byte in from keyboard
	.word	SCRNout		        ; byte out to screen
	.word	OSIload		        ; load vector for EhBASIC
	.word	OSIsave		        ; save vector for EhBASIC
END_CODE
