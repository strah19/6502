PORTB = $6000
PORTA = $6001
DDRB =  $6002
DDRA =  $6003

E  = %10000000
RW = %01000000
RS = %00100000

PORTB_IO = %11111111
PORTA_IO = %11100000

    .org $8000

reset:
    lda #PORTB_IO
    sta DDRB

    lda #PORTA_IO
    sta DDRA

    lda #%00000001
    jsr lcd_instruction

    lda #%00111000 
    jsr lcd_instruction

    lda #%00001111
    jsr lcd_instruction

    lda #"S"
    jsr print_char

    lda #"t"
    jsr print_char

    lda #"r"
    jsr print_char

    lda #"a"
    jsr print_char

    lda #"h"
    jsr print_char

    lda #"i"
    jsr print_char

    lda #"n"
    jsr print_char

    lda #"j"
    jsr print_char

    lda #"a"
    jsr print_char
loop:
    jmp loop

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
