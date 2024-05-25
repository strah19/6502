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
ACR = $7F0B                 ; Auxillary Control Register
IFR = $7F0D                 ; Interrupt Flag Register
IER = $7F0E                 ; Interrupt Enable Register

; Shift Register
SR = $7F0A

; Port directions (HIGH = OUTPUT, LOW = INPUT)
PORT_IO_MASK_OUTPUTS = %11111111
PORT_IO_MASK_INPUTS = %00000000

ticks = $6000   ; 4 byte memory location for ticks

init_via_ports_output
  lda #PORT_IO_MASK_OUTPUTS
  sta DDRA
  sta DDRB
  rts

init_timer11_freerun:
    lda #0
    sta ticks
    sta ticks + 1
    sta ticks + 2
    sta ticks + 3

    lda #%01000000
    sta ACR

    lda #$0E
    sta T1CL
    lda #$27
    sta T1CH   

    lda #%11000000  ; Sets interrupt enable for timer 1
    sta IER

    cli
    rts

IRQ_VIAS
IRQ_timer1:
  bit T1CL
  inc ticks
  bne IRQ_timer_exit
  inc ticks + 1
  bne IRQ_timer_exit
  inc ticks + 2
  bne IRQ_timer_exit
  inc ticks + 3

IRQ_timer_exit:
  rts

shift_in:
  rts
shift_out:
  rts
  
#endif