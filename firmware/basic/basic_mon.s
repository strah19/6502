    *=$8000
	
#include "basic.s"
#include "lcd.s"

ACIA_DATA = $7F00
ACIA_STATUS = $7F01
ACIA_COMMAND = $7F02
ACIA_CONTROL = $7F03

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

    lda #$00
    sta ACIA_STATUS             ;Soft reset

    lda #$0b				;No parity, no echo, no interrupt
    sta ACIA_COMMAND

    lda #$1f				;1 stop bit, 8 data bits, 19200 baud
    sta ACIA_CONTROL

; set up vectors and interrupt code, copy them to page 2

	LDY	#END_CODE-LAB_vec	; set index/count
LAB_stlp
	LDA	LAB_vec-1,Y		; get byte from interrupt code
	STA	VEC_IN-1,Y		; save to RAM
	DEY				; decrement index/count
	BNE	LAB_stlp		; loop if more to do

	CLI

	JMP LAB_COLD

ASCII_RETURN = $0A
ASCII_BACKSPACE = $0D

; byte out to screen
SCRNout
	SEI
    STX     SAVE_X                  ; Preserve X register
    STY     SAVE_Y                  ; Preserve Y register

	cmp #ASCII_RETURN
	beq EXITout
	cmp #ASCII_BACKSPACE
	beq EXITout

	jsr lcd_print

EXITout:
    LDX     SAVE_X                  ; Restore X
    LDY     SAVE_Y                  ; Restore Y
	CLI
	RTS

; byte in from keyboard
KBDin    
	STX     SAVE_X                  ; Preserve X register
    STY     SAVE_Y                  ; Preserve Y register
	
wait_rxd_full:	 
    lda ACIA_STATUS
    and #$08
    beq wait_rxd_full
    lda ACIA_DATA
	
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

; system vectors

    *=$FFFA
    .dsb (*-END_CODE), 0
    *=$FFFA

	.word	NMI_vec		; NMI vector
	.word	RES_vec		; RESET vector
	.word	IRQ_vec		; IRQ vector

