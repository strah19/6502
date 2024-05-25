; ---------------------------------------------------------------------------
; rs232_tx.s
; ---------------------------------------------------------------------------
;
; Write a string to the transmit UART FIFO

.export         _rs232_tx
.exportzp       _rs232_data: near

.zeropage

_rs232_data:    .res 2, $00      ;  Reserve a local zero page pointer

ACIA_DATA = $7F20

.segment  "CODE"

.proc _rs232_tx: near

; ---------------------------------------------------------------------------
; Store pointer to zero page memory and load first character

        sta     _rs232_data      ;  Set zero page pointer to string address
        stx     _rs232_data+1    ;    (pointer passed in via the A/X registers)
        ldy     #00              ;  Initialize Y to 0
        lda     (_rs232_data)    ;  Load first character

; ---------------------------------------------------------------------------
; Main loop:  read data and store to FIFO until \0 is encountered

loop:         
        pha
        sta ACIA_DATA
        lda #$FF
@tx_delay:
        dec
        bne @tx_delay
        pla

        iny                      ;         Increment Y index
        lda     (_rs232_data),y  ;         Get next character
        bne     loop             ;         If character == 0, exit loop

        rts                      ;  Return

.endproc