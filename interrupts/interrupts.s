PORTB = $8000
PORTA = $8001
DDRB  = $8002
DDRA  = $8003
PCR   = $800c
IFR   = $800d
IER   = $800e

E  = %01000000
RW = %00100000
RS = %00010000

INS_INIT   = %00000010
INS_4BIT   = %00101000
INS_CLEAR  = %00000001
INS_RETURN = %00000010
INS_CURSOR = %00001110

value = $0200
mod10 = $0202   ;Each is two bytes
message = $0204 ;Up to 6 bytes
counter = $020a ;2 bytes

PORTB_IO_MASK = %11111111

    .org $8000
    .word $0000    ;This will be here when the ROM will be from $9000-$FFFF
    .org $9000
reset:
    ldx #$ff    ;Small delay so LCD can initialize itself
    txs
    cli

    lda #$82 ;Set CA1 enable for interrupts
    sta IER

    lda #$00  ;Make CA1 be a active low edge
    sta PCR

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
    sta counter
    sta counter + 1
p_loop:
    lda #INS_RETURN  ;Clear display
    jsr lcd_instruction

    lda #0
    sta message ;Null terminating string

    ;Store the number (both bytes) in the a register
    sei
    lda counter
    sta value
    lda counter + 1
    sta value + 1
    cli
divide:
    ;Set the remainder to 0
    lda #0
    sta mod10
    sta mod10 + 1

    clc ;Clear carry
    ldx #16
divloop:
    ;Will rotate 1 bit to the left 
    rol value
    rol value + 1
    rol mod10
    rol mod10 + 1

    ;a and y have the answer
    sec
    lda mod10
    sbc #10
    tay ;Save low byte
    lda mod10 + 1
    sbc #0

    bcc ignore_result   ;Branch will dividend < divisor
    sty mod10
    sta mod10 + 1
ignore_result:
    dex
    bne divloop
    rol value   ;Get the carry bit
    rol value + 1

    lda mod10
    clc
    adc #"0"
    jsr push_char

    lda value
    ora value + 1
    bne divide

    ldx #0
print:
    lda message,x
    beq p_loop
    jsr lcd_print
    inx
    jmp print

number: .word 1729

push_char:
    pha ;Push new character to stack
    ldy #0
char_loop:
    lda message, y  ;Get character from message and load into x
    tax
    pla
    sta message, y  ;Put new character onto string
    iny
    txa
    pha
    bne char_loop

    pla
    sta message, y  ;Put null back at end
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

irq:
nmi:
    inc counter
    bne exit_irq
    inc counter + 1
exit_irq:
    bit PORTA
    rti

    .org $fffa
    .word nmi
    .word reset
    .word irq
