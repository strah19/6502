ACIA_DATA = $7F00
ACIA_STATUS = $7F01
ACIA_COMMAND = $7F02
ACIA_CONTROL = $7F03

    .org $8000
reset:



send_char:
    lda ACIA_DATA
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
    ldx #100
tx_wait1:
    dex
    bne tx_wait1
    plx
    rts

recieve_char:
    pha
wait_rxd_full:
    lda ACIA_STATUS
    and #$08
    beq wait_rxd_full
    lda ACIA_DATA
    ; Do something here when recieving a char
    jmp wait_rxd_full
    pla
    rts

    .org $fffc
    .word reset   
    .word $0000