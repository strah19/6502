    .setcpu "65C02"
    .debuginfo
    .segment "BIOS"

ACIA_DATA   = $7F20
ACIA_STATUS = $7F21
ACIA_CMD    = $7F22
ACIA_CTRL   = $7F23

LOAD:
    rts

SAVE:
    rts

;   BIOS input through serial interface.

MONRDKEY:
CHRIN:
    lda ACIA_STATUS
    and #$08
    beq @nobyte
    lda ACIA_DATA
    jsr CHROUT
    sec
    rts

@nobyte:
    clc
    rts
 
;   BIOS output through serial interface.
MONCOUT:
CHROUT:
    pha
    sta ACIA_DATA
    lda #$FF
@tx_delay:
    dec
    bne @tx_delay
    pla
    rts

    .include "wozmon.s"

    .segment "RESETVEC"
                .word   $0F00          ; NMI vector
                .word   RESET          ; RESET vector
                .word   $0000          ; IRQ vector