/*
    Here is defined IO addresses and important variables.
*/

#ifndef IO_S
#define IO_S

; VIA #1
PORTA = $7F01
PORTB = $7F00

; Direction registers
DDRA =  $7F03
DDRB =  $7F02

; Timer registers
T1CL = $7F04
T1CH = $7F05

; Status & Flag registers
ACR = $7F0B
IFR = $7F0D
IER = $7F0E

; Port directions (HIGH = OUTPUT, LOW = INPUT)
PORT_IO_MASK_OUTPUTS = %11111111
PORT_IO_MASK_INPUTS = %00000000

init_via_ports_output
    lda #PORT_IO_MASK_OUTPUTS
    sta DDRA
    sta DDRB

    rts
#endif