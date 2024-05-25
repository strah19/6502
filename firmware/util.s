#ifndef UTIL_S
#define UTIL_S

#include "lcd.s"

value = $6004 ; 2 bytes
mod10 = $6006 ; 2 bytes
print_num_message = $6008 ; 6 bytes

print_num:
divide:
    lda #0
    sta print_num_message
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
    lda print_num_message,x
    beq end_print
    jsr lcd_print
    inx
    jmp print
end_print:
    rts

push_char:
    pha ; Push new first char onto stack
    ldy #0

char_loop:
    lda print_num_message,y ; Get char on the string and put into X
    tax
    pla
    sta print_num_message,y ; Pull char off stack and add it to the string
    iny
    txa
    pha           ; Push char from string onto stack
    bne char_loop

    pla
    sta print_num_message,y ; Pull the null off the stack and add to the end of the string

    rts

#endif