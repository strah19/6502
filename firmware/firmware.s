/*
    This is the main "Entry point" into the 6502 computer. There are many "libraries"
    that can be included to make the programming experience easier and prewritten 
    functions for IO, keyboard, serial, sound, and LCD control.
*/

    *=$8000

#include "lcd.s"
#include "keyboard.s"

reset:
    ; initializes stack
    ldx #$ff    
    txs

    jsr init_via_ports
    jsr lcd_setup

    lda #"/"
    jsr lcd_print

    jsr kbinit

loop:
    jsr kbinput
    jsr lcd_print
    jmp loop

irq:
nmi:
    rti

program_end

    *=$FFFA
    .dsb (*-program_end), 0
    *=$FFFA

    .word nmi
    .word reset
    .word irq

