/*
    Here is defined IO addresses and important variables.
*/

#ifndef IO_S
#define IO_S

; VIA #1
PORTA = $7D01
PORTB = $7D00

; Direction registers
DDRA =  $7D03
DDRB =  $7D02

; Timer registers
T1CL = $7D04
T1CH = $7D05

; Status & Flag registers
ACR = $7D0B
IFR = $7D0D
IER = $7D0E

; VIA #2
PORTA2 = $7E01

; Direction registers
DDRA2  =  $7E03

; Port directions (HIGH = OUTPUT, LOW = INPUT)
PORTA_IO_MASK = %11111111
PORTB_IO_MASK = %11111111
PORTA2_IO_MASK = %11111111

init_via_ports:
    lda #PORTA_IO_MASK
    sta DDRA

    lda #PORTB_IO_MASK
    sta DDRB

    lda #PORTA2_IO_MASK
    sta DDRA2

    rts


#endif