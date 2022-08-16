PORTB = $7F00
DDRB =  $7F02

E  = %01000000
RW = %00100000
RS = %00010000

INS_INIT = %00000010
INS_4BIT = %00101000
INS_CLEAR = %00000001
INS_RETURN = %00000010
INS_CURSOR = %00001111

value = $0200 ; 2 bytes
mod10 = $0202 ; 2 bytes
message = $0204 ; 6 bytes

PORTB_IO_MASK = %11111111

    .org $8000
reset:
    ldx #$ff    
    txs

    lda #PORTB_IO_MASK
    sta DDRB

    jsr lcd_init
    lda #INS_4BIT ;4-bit mode, 5x8 font, 2 line
    jsr lcd_instruction

    lda #INS_CLEAR  ;Clear display
    jsr lcd_instruction

    lda #INS_RETURN  ;Return home
    jsr lcd_instruction

    lda #INS_CURSOR  ;Display on, cursor on, blink on
    jsr lcd_instruction

    lda #0
    sta message

    ; Initialize value to be the number to convert
    lda number
    sta value
    lda number + 1
    sta value + 1

divide:
    ; Initialize the remainder to zero
    lda #0
    sta mod10
    sta mod10 + 1
    clc

    ldx #16

divloop:
    ; Rotate quotient and remainder
    rol value
    rol value + 1
    rol mod10
    rol mod10 + 1

    ; a,y = dividend - devisor
    sec
    lda mod10
    sbc #10
    tay ; save low byte in Y
    lda mod10+1
    sbc #0
    bcc ignore_result ; branch if dividend < devisor
    sty mod10
    sta mod10 + 1

ignore_result:
    dex
    bne divloop
    rol value ; shift in the last bit of the quotient
    rol value + 1

    lda mod10
    clc
    adc #"0"
    jsr  push_char

    ; if value != 0, then continue dividing
    lda value
    ora value + 1
    bne divide ; branch if value not equal to 0

    ldx #0
print:
    lda message,x
    beq loop
    jsr lcd_print
    inx
    jmp print

loop:
    jmp loop

number: .word 1729

push_char:
    pha ; Push new first char onto stack
    ldy #0

char_loop:
    lda message,y ; Get char on the string and put into X
    tax
    pla
    sta message,y ; Pull char off stack and add it to the string
    iny
    txa
    pha           ; Push char from string onto stack
    bne char_loop

    pla
    sta message,y ; Pull the null off the stack and add to the end of the string

    rts

lcd_wait:
    pha ;Save our instruction
    lda #%11110000  ;We want to read the lower nibble and make sure the busy flag is not high
    sta DDRB    ;Change directions
lcd_busy:
    lda #RW ;Set the r/w pin
    sta PORTB
    ora #E ;Also then set the enable
    sta PORTB
    lda PORTB ;This has the busy flag

    pha ;This has the higher nibble

    lda #RW ;Set the r/w pin
    sta PORTB
    ora #E ;Also then set the enable
    sta PORTB
    lda PORTB ;This is the lower nibble, we don't actually need this because it has the address counter but is necessary to finish getting all 8 bits
    pla ;Get back the busy flag
    and #%00001000  ;Get just the busy flag

    bne lcd_busy    ;If it is true, go back to the lcd_busy label

    lda #0
    sta PORTB
    lda #PORTB_IO_MASK  ;Sets them back to output
    sta DDRB
    pla ;Get back the initial instruction
    rts
lcd_instruction:
    jsr lcd_wait
    pha ;Save the accumulator to the stack
    lsr ;Shift over 4 bits because the LCD first needs the upper nibble of our instruction
    lsr
    lsr
    lsr
    sta PORTB   ;Send to VIA
    ora #E  ;Set enable pin
    sta PORTB
    eor #E  ;Clear enable
    sta PORTB
    pla ;Get back our initial instruction
    and #%00001111  ;Only care about the lowwer nibble now to send
    sta PORTB   ;Send to VIA
    ora #E  ;Set enable pin
    sta PORTB
    eor #E  ;Clear enable
    sta PORTB
    rts
lcd_init:
  lda #INS_INIT ; Set 4-bit mode
  sta PORTB
  ora #E
  sta PORTB
  and #%00001111
  sta PORTB
  rts
lcd_print:
    jsr lcd_wait
    pha ;Save data
    lsr ;Get high nibble first
    lsr
    lsr
    lsr
    ora #RS ;Set RS
    sta PORTB
    ora #E  ;Set enable
    sta PORTB
    eor #E  ;Clear enable
    sta PORTB
    pla ;Get lower nibble
    and #%00001111  ;Make sure its just the char
    ora #RS
    sta PORTB
    ora #E
    sta PORTB
    eor #E
    sta PORTB
    rts

    .org $fffc
    .word reset   
    .word $0000