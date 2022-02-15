PORTB = $6000
PORTA = $6001
DDRB =  $6002
DDRA =  $6003

E  = %10000000
RW = %01000000
RS = %00100000

PORTB_IO_MASK = %11111111
PORTA_IO_MASK = %11100000

    .org $8000

reset:
    ldx #$ff
    txs

    lda #PORTB_IO_MASK
    sta DDRB

    lda #PORTA_IO_MASK
    sta DDRA

    lda #%00000001
    jsr lcd_instruction

    lda #%00111000 
    jsr lcd_instruction

    lda #%00001111
    jsr lcd_instruction

    ldx #0
print:
    lda message,x
    beq loop
    jsr print_char
    inx
    jmp print

loop:
    jmp loop

message: .asciiz "Hello, world!"

lcd_wait:
    pha
    lda #%00000000  ; Port B is input
    sta DDRB
lcdbusy:
    lda #RW
    sta PORTA
    lda #(RW | E)
    sta PORTA
    lda PORTB
    and #%10000000
    bne lcdbusy

    lda #RW
    sta PORTA
    lda #%11111111  ; Port B is output
    sta DDRB
    pla
    rts

lcd_instruction:
    sta PORTB
    lda #0         
    sta PORTA
    lda #E      
    sta PORTA
    lda #0        
    sta PORTA
    rts

print_char:
    sta PORTB
    lda #RS       
    sta PORTA
    lda #(RS | E)   
    sta PORTA
    lda #RS        
    sta PORTA
    rts

    .org $fffc
    .word reset
    .word $0000
