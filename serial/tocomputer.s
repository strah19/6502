ACIA_DATA = $7F20
ACIA_STATUS = $7F21
ACIA_COMMAND = $7F22
ACIA_CONTROL = $7F23

    .org $8000
reset:
    lda #%00001011				;No parity, no echo, no interrupt
    sta ACIA_COMMAND
    lda #%00011111				;1 stop bit, 8 data bits, 19200 baud
    sta ACIA_CONTROL
write:           
    ldx #0
next_char:
wait_txd_empty:  
    lda ACIA_STATUS
    and #$10
    beq wait_txd_empty
    lda text,x
    beq read
    sta ACIA_DATA
    inx
    jmp next_char
read:
wait_rxd_full:	 
    lda ACIA_STATUS
    and #$08
    beq wait_rxd_full
    lda ACIA_DATA
    jmp write

text:            
    .byte "Hello World!", $0d, $0a, $00

    .org $fffc
    .word reset   
    .word $0000