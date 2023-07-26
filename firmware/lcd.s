/*
    Program for controling the LCD screen.
*/

#ifndef LCD_S
#define LCD_S

#include "io.s"

E  = %01000000
RW = %00100000
RS = %00010000

INS_INIT = %00000010
INS_4BIT = %00101000
INS_CLEAR = %00000001
INS_RETURN = %00000010
INS_CURSOR = %00001111

lcd_position = $06D4

lcd_wait:
    pha
    lda #%11110000  ; LCD data is input
    sta DDRB
lcdbusy:
    lda #RW
    sta PORTB
    lda #(RW | E)
    sta PORTB
    lda PORTB       ; Read high nibble
    pha             ; and put on stack since it has the busy flag
    lda #RW
    sta PORTB
    lda #(RW | E)
    sta PORTB
    lda PORTB       ; Read low nibble
    pla             ; Get high nibble off stack
    and #%00001000
    bne lcdbusy

    lda #RW
    sta PORTB
    lda #%11111111  ; LCD data is output
    sta DDRB
    pla
    rts

lcd_read_address:
    phx
    lda #%11110000  ; LCD data is input
    sta DDRB
lcd_read:
    lda #RW
    sta PORTB
    lda #(RW | E)
    sta PORTB
    lda PORTB       ; Read high nibble
    pha             ; and put on stack since it has the busy flag
    lda #RW
    sta PORTB
    lda #(RW | E)
    sta PORTB

    pla 
    asl
    asl
    asl
    asl
    ora PORTB
    tax
    
    and #%00001000
    bne lcd_read

    lda #RW
    sta PORTB
    lda #%11111111  ; LCD data is output
    sta DDRB
    txa
    plx
    rts

lcd_init:
    lda #%00000010 ; Set 4-bit mode
    sta PORTB
    ora #E
    sta PORTB
    and #%00001111
    sta PORTB
    jsr lcd_wait
    rts

lcd_instruction:
    jsr lcd_wait
    pha
    lsr
    lsr
    lsr
    lsr            ; Send high 4 bits
    sta PORTB
    ora #E         ; Set E bit to send instruction
    sta PORTB
    eor #E         ; Clear E bit
    sta PORTB
    pla
    and #%00001111 ; Send low 4 bits
    sta PORTB
    ora #E         ; Set E bit to send instruction
    sta PORTB
    eor #E         ; Clear E bit
    sta PORTB
    rts

lcd_print:
    jsr lcd_wait
    pha
    lsr
    lsr
    lsr
    lsr             ; Send high 4 bits
    ora #RS         ; Set RS
    sta PORTB
    ora #E          ; Set E bit to send instruction
    sta PORTB
    eor #E          ; Clear E bit
    sta PORTB
    pla
    and #%00001111  ; Send low 4 bits
    ora #RS         ; Set RS
    sta PORTB
    ora #E          ; Set E bit to send instruction
    sta PORTB
    eor #E          ; Clear E bit
    sta PORTB

    inc lcd_position
    lda lcd_position
    cmp #$14
    beq goto_line2
    rts
goto_line2:
    lda #%11000000
    jsr lcd_instruction
    rts

lcd_setup:
    lda #0
    sta lcd_position

    jsr lcd_init
    lda #INS_4BIT ;4-bit mode, 5x8 font, 2 line
    jsr lcd_instruction

    lda #INS_CLEAR  ;Clear display
    jsr lcd_instruction

    lda #INS_RETURN  ;Return home
    jsr lcd_instruction

    lda #INS_CURSOR  ;Display on, cursor on, blink on
    jsr lcd_instruction
    rts    

lcd_shift_left:
    lda #%00010000
    jsr lcd_instruction
    rts

lcd_shift_right:
    lda #%00010100
    jsr lcd_instruction
    rts

lcd_shift_display_left:
    lda #%00011000
    jsr lcd_instruction
    rts

lcd_shift_display_right:
    lda #%00011100
    jsr lcd_instruction
    rts

#endif