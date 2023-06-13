  .org $8000
  .org $ff00

IN    = $0200                          ; Input buffer

ACIA_DATA   = $7F00
ACIA_STATUS = $7F01
ACIA_CMD    = $7F02
ACIA_CTRL   = $7F03

RESET:
                LDA     #$1F           ; 8-N-1, 19200 baud.
                STA     ACIA_CTRL
                LDA     #$0B           ; No parity, no echo, no interrupts.
                STA     ACIA_CMD
                LDA     #$1B           ; Begin with escape.

NOTCR:
                CMP     #$08           ; Backspace key?
                BEQ     BACKSPACE      ; Yes.
                CMP     #$1B           ; ESC?
                BEQ     ESCAPE         ; Yes.
                INY                    ; Advance text index.
                BPL     NEXTCHAR       ; Auto ESC if line longer than 127.

NEXTCHAR:
                LDA     ACIA_STATUS    ; Check status.
                AND     #$08           ; Key ready?
                BEQ     NEXTCHAR       ; Loop until ready.
                LDA     ACIA_DATA      ; Load character. B7 will be '0'.
                STA     IN,Y           ; Add to text buffer.
                JSR     ECHO           ; Display character.
                CMP     #$0D           ; CR?
                BNE     NOTCR          ; No.

GETLINE:

ESCAPE:

BACKSPACE:
                DEY
                BMI GETLINE            ; If gone before start, reinitialize 

ECHO:
                PHA                    ; Save A.
                STA     ACIA_DATA      ; Output character.
                LDA     #$FF           ; Initialize delay loop.
TXDELAY:        DEC                    ; Decrement A.
                BNE     TXDELAY        ; Until A gets to 0.
                PLA                    ; Restore A.
                RTS                    ; Return.

  .org $FFFA

                .word   $0F00          ; NMI vector
                .word   RESET          ; RESET vector
                .word   $0000          ; IRQ vector