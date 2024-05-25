#ifndef BIOS_S
#define BIOS_S

ACIA_DATA   = $7F20
ACIA_STATUS = $7F21
ACIA_CMD    = $7F22
ACIA_CTRL   = $7F23

;   Initialize input/output system.

INIT_IO:
	lda #$00
	sta ACIA_STATUS         ;Soft reset

	lda #$0b				;No parity, no echo, no interrupt
	sta ACIA_CMD

	lda #$1f				;1 stop bit, 8 data bits, 19200 baud
	sta ACIA_CTRL

;   BIOS input through serial interface.

CHRIN:
    lda ACIA_STATUS
    and #$08
    beq nobyte
    lda ACIA_DATA
    sec
    rts

nobyte:
    clc
    rts
 
;   BIOS output through serial interface.
CHROUT:
    pha
    sta ACIA_DATA
    lda #$FF
tx_delay:
    dec
    bne tx_delay
    pla
    rts

#endif