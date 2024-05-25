BASIC_reset
	CLD                     ; clear decimal mode
	LDX   #$FF              ; empty stack
	TXS                     ; set the stack

; set up vectors and interrupt code, copy them to page 2

	LDY   #END_CODE-LAB_vec ; set index/count
LAB_stlp
	LDA   LAB_vec-1,Y       ; get byte from interrupt code
	STA   VEC_IN-1,Y        ; save to RAM
	DEY                     ; decrement index/count
	BNE   LAB_stlp          ; loop if more to do

; now do the signon message, Y = $00 here

LAB_signon
	LDA   LAB_mess,Y        ; get byte from sign on message
	BEQ   LAB_nokey         ; exit loop if done

	JSR   V_OUTP            ; output character
	INY                     ; increment index
	BNE   LAB_signon        ; loop, branch always

LAB_nokey
	JSR   V_INPT            ; call scan input device
	BCC   LAB_nokey         ; loop if no key

	AND   #$DF              ; mask xx0x xxxx, ensure upper case
	CMP   #'W'              ; compare with [W]arm start
	BEQ   LAB_dowarm        ; branch if [W]arm start

	CMP   #'C'              ; compare with [C]old start
	BNE   BASIC_reset       ; loop if not [C]old start

	JMP   LAB_COLD          ; do EhBASIC cold start

LAB_dowarm
	JMP   LAB_WARM          ; do EhBASIC warm start

LOAD                          ; empty load vector for EhBASIC
SAVE                          ; empty save vector for EhBASIC
      RTS

; vector tables

LAB_vec
      .word CHRIN            ; byte in from serial.
      .word CHROUT           ; byte out from serial.
      .word LOAD             ; null load vector for EhBASIC
      .word SAVE             ; null save vector for EhBASIC

END_CODE

LAB_mess
      .byte $0D,$0A,"6502 EhBASIC [C]old/[W]arm ?",$00
