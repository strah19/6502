/*
    Code to control SD card using Bit Banging.
*/

    *=$8000

#include "lcd.s"
#include "keyboard.s"

reset:
    ; initializes stack
    ldx #$ff    
    txs

    jsr init_via_ports_output
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

