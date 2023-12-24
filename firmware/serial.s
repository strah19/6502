#ifndef SERIAL_S
#define SERIAL_S

ACIA_DATA = $7F00
ACIA_STATUS = $7F01
ACIA_COMMAND = $7F02
ACIA_CONTROL = $7F03

send_char:
    sta ACIA_DATA
    pha
wait_txd_full:
    lda ACIA_STATUS
    and #$10
    beq wait_txd_full
    jsr tx_wait
    pla
    rts    

tx_wait:
    phx
    ldx #ff
tx_wait1:
    dex
    bne tx_wait1
    plx
    rts

#endif